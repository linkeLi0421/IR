; ModuleID = '/llk/IR/drivers/pwm/pwm-bcm-kona.c_pt.bc'
source_filename = "../drivers/pwm/pwm-bcm-kona.c"
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
%struct.kona_pwmc = type { %struct.pwm_chip, ptr, ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@__initcall__kmod_pwm_bcm_kona__166_319_kona_pwmc_driver_init6 = internal global ptr @kona_pwmc_driver_init, section ".initcall6.init", align 4
@kona_pwmc_driver = internal global %struct.platform_driver { ptr @kona_pwmc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm_kona_pwmc_dt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_kona_pwmc_driver_exit = internal global ptr @kona_pwmc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author167 = internal constant [81 x i8] c"pwm_bcm_kona.author=Broadcom Corporation <bcm-kernel-feedback-list@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author168 = internal constant [54 x i8] c"pwm_bcm_kona.author=Tim Kryger <tkryger@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description169 = internal constant [50 x i8] c"pwm_bcm_kona.description=Broadcom Kona PWM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file170 = internal constant [43 x i8] c"pwm_bcm_kona.file=drivers/pwm/pwm-bcm-kona\00", section ".modinfo", align 1
@__UNIQUE_ID_license171 = internal constant [28 x i8] c"pwm_bcm_kona.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"bcm-kona-pwm\00", align 1
@bcm_kona_pwmc_dt = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,kona-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@kona_pwm_ops = internal constant %struct.pwm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kona_pwmc_config, ptr @kona_pwmc_set_polarity, ptr @kona_pwmc_enable, ptr @kona_pwmc_disable }, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to get clock: %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to enable clock: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to add PWM chip: %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author167, ptr @__UNIQUE_ID_author168, ptr @__UNIQUE_ID_description169, ptr @__UNIQUE_ID_file170, ptr @__UNIQUE_ID_license171, ptr @__exitcall_kona_pwmc_driver_exit, ptr @__initcall__kmod_pwm_bcm_kona__166_319_kona_pwmc_driver_init6, ptr @kona_pwmc_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @kona_pwmc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @kona_pwmc_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @kona_pwmc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @kona_pwmc_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kona_pwmc_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 44, i32 noundef 3520) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %34, label %5

5:                                                ; preds = %1
  store ptr %2, ptr %3, align 4
  %6 = getelementptr inbounds %struct.pwm_chip, ptr %3, i32 0, i32 1
  store ptr @kona_pwm_ops, ptr %6, align 4
  %7 = getelementptr inbounds %struct.pwm_chip, ptr %3, i32 0, i32 3
  store i32 6, ptr %7, align 4
  %8 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #4
  %9 = getelementptr inbounds %struct.kona_pwmc, ptr %3, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  %10 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = ptrtoint ptr %8 to i32
  br label %34

13:                                               ; preds = %5
  %14 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #4
  %15 = getelementptr inbounds %struct.kona_pwmc, ptr %3, i32 0, i32 2
  store ptr %14, ptr %15, align 4
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = ptrtoint ptr %14 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %18) #5
  br label %34

19:                                               ; preds = %13
  %20 = tail call i32 @clk_prepare(ptr noundef %14) #4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = tail call i32 @clk_enable(ptr noundef %14) #4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  tail call void @clk_unprepare(ptr noundef %14) #4
  br label %26

26:                                               ; preds = %25, %19
  %27 = phi i32 [ %20, %19 ], [ %23, %25 ]
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %27) #5
  br label %34

30:                                               ; preds = %26, %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 4128768) #4, !srcloc !9
  tail call void @clk_disable(ptr noundef %14) #4
  tail call void @clk_unprepare(ptr noundef %14) #4
  %31 = tail call i32 @devm_pwmchip_add(ptr noundef %2, ptr noundef nonnull %3) #4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %31) #5
  br label %34

34:                                               ; preds = %33, %30, %29, %17, %11, %1
  %35 = phi i32 [ %12, %11 ], [ %18, %17 ], [ %27, %29 ], [ -12, %1 ], [ %31, %33 ], [ %31, %30 ]
  ret i32 %35
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
declare dso_local i32 @devm_pwmchip_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kona_pwmc_config(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.kona_pwmc, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @clk_get_rate(ptr noundef %8) #4
  %10 = zext i32 %9 to i64
  %11 = sext i32 %3 to i64
  %12 = mul nsw i64 %10, %11
  %13 = sext i32 %2 to i64
  %14 = mul nsw i64 %10, %13
  %15 = tail call i64 @div64_u64(i64 noundef %12, i64 noundef 1000000000) #4
  %16 = trunc i64 %15 to i32
  %17 = tail call i64 @div64_u64(i64 noundef %14, i64 noundef 1000000000) #4
  %18 = icmp ult i32 %16, 2
  br i1 %18, label %154, label %19

19:                                               ; preds = %4
  %20 = icmp ult i32 %16, 16777216
  %21 = and i64 %17, 4278190080
  %22 = icmp eq i64 %21, 0
  %23 = select i1 %20, i1 %22, i1 false
  %24 = trunc i64 %15 to i32
  %25 = trunc i64 %17 to i32
  br i1 %23, label %110, label %26

26:                                               ; preds = %19
  %27 = tail call i64 @div64_u64(i64 noundef %12, i64 noundef 2000000000) #4
  %28 = trunc i64 %27 to i32
  %29 = tail call i64 @div64_u64(i64 noundef %14, i64 noundef 2000000000) #4
  %30 = icmp ult i32 %28, 2
  br i1 %30, label %154, label %31

31:                                               ; preds = %26
  %32 = icmp ult i32 %28, 16777216
  %33 = and i64 %29, 4278190080
  %34 = icmp eq i64 %33, 0
  %35 = select i1 %32, i1 %34, i1 false
  %36 = trunc i64 %27 to i32
  %37 = trunc i64 %29 to i32
  br i1 %35, label %110, label %38

38:                                               ; preds = %31
  %39 = tail call i64 @div64_u64(i64 noundef %12, i64 noundef 3000000000) #4
  %40 = trunc i64 %39 to i32
  %41 = tail call i64 @div64_u64(i64 noundef %14, i64 noundef 3000000000) #4
  %42 = icmp ult i32 %40, 2
  br i1 %42, label %154, label %43

43:                                               ; preds = %38
  %44 = icmp ult i32 %40, 16777216
  %45 = and i64 %41, 4278190080
  %46 = icmp eq i64 %45, 0
  %47 = select i1 %44, i1 %46, i1 false
  %48 = trunc i64 %39 to i32
  %49 = trunc i64 %41 to i32
  br i1 %47, label %110, label %50

50:                                               ; preds = %43
  %51 = tail call i64 @div64_u64(i64 noundef %12, i64 noundef 4000000000) #4
  %52 = trunc i64 %51 to i32
  %53 = tail call i64 @div64_u64(i64 noundef %14, i64 noundef 4000000000) #4
  %54 = icmp ult i32 %52, 2
  br i1 %54, label %154, label %55

55:                                               ; preds = %50
  %56 = icmp ult i32 %52, 16777216
  %57 = and i64 %53, 4278190080
  %58 = icmp eq i64 %57, 0
  %59 = select i1 %56, i1 %58, i1 false
  %60 = trunc i64 %51 to i32
  %61 = trunc i64 %53 to i32
  br i1 %59, label %110, label %62

62:                                               ; preds = %55
  %63 = tail call i64 @div64_u64(i64 noundef %12, i64 noundef 5000000000) #4
  %64 = trunc i64 %63 to i32
  %65 = tail call i64 @div64_u64(i64 noundef %14, i64 noundef 5000000000) #4
  %66 = icmp ult i32 %64, 2
  br i1 %66, label %154, label %67

67:                                               ; preds = %62
  %68 = icmp ult i32 %64, 16777216
  %69 = and i64 %65, 4278190080
  %70 = icmp eq i64 %69, 0
  %71 = select i1 %68, i1 %70, i1 false
  %72 = trunc i64 %63 to i32
  %73 = trunc i64 %65 to i32
  br i1 %71, label %110, label %74

74:                                               ; preds = %67
  %75 = tail call i64 @div64_u64(i64 noundef %12, i64 noundef 6000000000) #4
  %76 = trunc i64 %75 to i32
  %77 = tail call i64 @div64_u64(i64 noundef %14, i64 noundef 6000000000) #4
  %78 = icmp ult i32 %76, 2
  br i1 %78, label %154, label %79

79:                                               ; preds = %74
  %80 = icmp ult i32 %76, 16777216
  %81 = and i64 %77, 4278190080
  %82 = icmp eq i64 %81, 0
  %83 = select i1 %80, i1 %82, i1 false
  %84 = trunc i64 %75 to i32
  %85 = trunc i64 %77 to i32
  br i1 %83, label %110, label %86

86:                                               ; preds = %79
  %87 = tail call i64 @div64_u64(i64 noundef %12, i64 noundef 7000000000) #4
  %88 = trunc i64 %87 to i32
  %89 = tail call i64 @div64_u64(i64 noundef %14, i64 noundef 7000000000) #4
  %90 = icmp ult i32 %88, 2
  br i1 %90, label %154, label %91

91:                                               ; preds = %86
  %92 = icmp ult i32 %88, 16777216
  %93 = and i64 %89, 4278190080
  %94 = icmp eq i64 %93, 0
  %95 = select i1 %92, i1 %94, i1 false
  %96 = trunc i64 %87 to i32
  %97 = trunc i64 %89 to i32
  br i1 %95, label %110, label %98

98:                                               ; preds = %91
  %99 = tail call i64 @div64_u64(i64 noundef %12, i64 noundef 8000000000) #4
  %100 = trunc i64 %99 to i32
  %101 = tail call i64 @div64_u64(i64 noundef %14, i64 noundef 8000000000) #4
  %102 = icmp ult i32 %100, 2
  br i1 %102, label %154, label %103

103:                                              ; preds = %98
  %104 = icmp ult i32 %100, 16777216
  %105 = and i64 %101, 4278190080
  %106 = icmp eq i64 %105, 0
  %107 = select i1 %104, i1 %106, i1 false
  %108 = trunc i64 %99 to i32
  %109 = trunc i64 %101 to i32
  br i1 %107, label %110, label %154

110:                                              ; preds = %103, %91, %79, %67, %55, %43, %31, %19
  %111 = phi i32 [ 0, %19 ], [ 1, %31 ], [ 2, %43 ], [ 3, %55 ], [ 4, %67 ], [ 5, %79 ], [ 6, %91 ], [ 7, %103 ]
  %112 = phi i32 [ %24, %19 ], [ %36, %31 ], [ %48, %43 ], [ %60, %55 ], [ %72, %67 ], [ %84, %79 ], [ %96, %91 ], [ %108, %103 ]
  %113 = phi i32 [ %25, %19 ], [ %37, %31 ], [ %49, %43 ], [ %61, %55 ], [ %73, %67 ], [ %85, %79 ], [ %97, %91 ], [ %109, %103 ]
  %114 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 7, i32 3
  %115 = load i8, ptr %114, align 4
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %154, label %117

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.kona_pwmc, ptr %0, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  %121 = add i32 %6, 24
  %122 = shl nuw i32 1, %121
  %123 = or i32 %120, %122
  %124 = shl nuw i32 1, %6
  %125 = xor i32 %124, -1
  %126 = and i32 %123, %125
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %127 = load ptr, ptr %118, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 %126) #4, !srcloc !9
  %128 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %128(i32 noundef 214748) #4
  %129 = load ptr, ptr %118, align 4
  %130 = getelementptr i8, ptr %129, i32 4
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !13
  %132 = shl i32 %6, 2
  %133 = shl i32 7, %132
  %134 = xor i32 %133, -1
  %135 = and i32 %131, %134
  %136 = shl i32 %111, %132
  %137 = or i32 %135, %136
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %138 = load ptr, ptr %118, align 4
  %139 = getelementptr i8, ptr %138, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %137) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %140 = load ptr, ptr %118, align 4
  %141 = shl i32 %6, 3
  %142 = add i32 %141, 8
  %143 = getelementptr i8, ptr %140, i32 %142
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %112) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %144 = load ptr, ptr %118, align 4
  %145 = add i32 %141, 12
  %146 = getelementptr i8, ptr %144, i32 %145
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 %113) #4, !srcloc !9
  %147 = load ptr, ptr %118, align 4
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %147) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !17
  %149 = xor i32 %122, -1
  %150 = and i32 %148, %149
  %151 = or i32 %150, %124
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %152 = load ptr, ptr %118, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 %151) #4, !srcloc !9
  %153 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %153(i32 noundef 214748) #4
  br label %154

154:                                              ; preds = %117, %110, %103, %98, %86, %74, %62, %50, %38, %26, %4
  %155 = phi i32 [ 0, %117 ], [ 0, %110 ], [ -22, %103 ], [ -22, %98 ], [ -22, %86 ], [ -22, %74 ], [ -22, %62 ], [ -22, %50 ], [ -22, %38 ], [ -22, %26 ], [ -22, %4 ]
  ret i32 %155
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kona_pwmc_set_polarity(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.kona_pwmc, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_prepare(ptr noundef %7) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = tail call i32 @clk_enable(ptr noundef %7) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef %7) #4
  br label %14

14:                                               ; preds = %13, %3
  %15 = phi i32 [ %8, %3 ], [ %11, %13 ]
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.2, i32 noundef %15) #5
  br label %49

19:                                               ; preds = %14, %10
  %20 = getelementptr inbounds %struct.kona_pwmc, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  %23 = add i32 %5, 24
  %24 = shl nuw i32 1, %23
  %25 = or i32 %22, %24
  %26 = shl nuw i32 1, %5
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %29 = load ptr, ptr %20, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %28) #4, !srcloc !9
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #4
  %31 = load ptr, ptr %20, align 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !19
  %33 = icmp eq i32 %2, 0
  %34 = add i32 %5, 8
  %35 = shl nuw i32 1, %34
  %36 = or i32 %32, %35
  %37 = xor i32 %35, -1
  %38 = and i32 %32, %37
  %39 = select i1 %33, i32 %36, i32 %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %40 = load ptr, ptr %20, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %39) #4, !srcloc !9
  %41 = load ptr, ptr %20, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !17
  %43 = xor i32 %24, -1
  %44 = and i32 %42, %43
  %45 = or i32 %44, %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %46 = load ptr, ptr %20, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %45) #4, !srcloc !9
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748) #4
  %48 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %48) #4
  tail call void @clk_unprepare(ptr noundef %48) #4
  br label %49

49:                                               ; preds = %19, %17
  %50 = phi i32 [ %15, %17 ], [ 0, %19 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kona_pwmc_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.kona_pwmc, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @clk_prepare(ptr noundef %4) #4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = tail call i32 @clk_enable(ptr noundef %4) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  tail call void @clk_unprepare(ptr noundef %4) #4
  br label %11

11:                                               ; preds = %10, %2
  %12 = phi i32 [ %5, %2 ], [ %8, %10 ]
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.2, i32 noundef %12) #5
  br label %27

16:                                               ; preds = %11, %7
  %17 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 7, i32 1
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 7
  %21 = load i64, ptr %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = tail call i32 @kona_pwmc_config(ptr noundef %0, ptr noundef %1, i32 noundef %19, i32 noundef %22)
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %26) #4
  tail call void @clk_unprepare(ptr noundef %26) #4
  br label %27

27:                                               ; preds = %25, %16, %14
  %28 = phi i32 [ %12, %14 ], [ %23, %25 ], [ 0, %16 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @kona_pwmc_disable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.kona_pwmc, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  %8 = add i32 %4, 24
  %9 = shl nuw i32 1, %8
  %10 = or i32 %7, %9
  %11 = shl nuw i32 1, %4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %14 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %13) #4, !srcloc !9
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %16 = load ptr, ptr %5, align 4
  %17 = shl i32 %4, 3
  %18 = add i32 %17, 12
  %19 = getelementptr i8, ptr %16, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %20 = load ptr, ptr %5, align 4
  %21 = add i32 %17, 8
  %22 = getelementptr i8, ptr %20, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 0) #4, !srcloc !9
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr i8, ptr %23, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !23
  %26 = shl i32 %4, 2
  %27 = shl i32 7, %26
  %28 = xor i32 %27, -1
  %29 = and i32 %25, %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %30 = load ptr, ptr %5, align 4
  %31 = getelementptr i8, ptr %30, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #4, !srcloc !9
  %32 = load ptr, ptr %5, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !17
  %34 = xor i32 %9, -1
  %35 = and i32 %33, %34
  %36 = or i32 %35, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %37 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %36) #4, !srcloc !9
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748) #4
  %39 = getelementptr inbounds %struct.kona_pwmc, ptr %0, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  tail call void @clk_disable(ptr noundef %40) #4
  tail call void @clk_unprepare(ptr noundef %40) #4
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
!8 = !{i64 2151483809}
!9 = !{i64 2483728}
!10 = !{i64 2484146}
!11 = !{i64 2151476026}
!12 = !{i64 2151476259}
!13 = !{i64 2151477569}
!14 = !{i64 2151477844}
!15 = !{i64 2151478223}
!16 = !{i64 2151478616}
!17 = !{i64 2151476767}
!18 = !{i64 2151477000}
!19 = !{i64 2151479702}
!20 = !{i64 2151479940}
!21 = !{i64 2151480896}
!22 = !{i64 2151481286}
!23 = !{i64 2151481792}
!24 = !{i64 2151482048}
