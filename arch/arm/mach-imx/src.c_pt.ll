; ModuleID = '/llk/IR/arch/arm/mach-imx/src.c_pt.bc'
source_filename = "../arch/arm/mach-imx/src.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }

@gpc_base = internal unnamed_addr global ptr null, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = private unnamed_addr constant [37 x i8] c"\013i.MX7D: CORE1_A7 power up timeout\0A\00", align 1
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@scr_lock = internal global %struct.spinlock zeroinitializer, align 4
@gpr_v2 = internal unnamed_addr global i1 false, align 1
@src_base = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"fsl,imx51-src\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"arch/arm/mach-imx/src.c\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"fsl,imx7d-src\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"fsl,imx7d-gpc\00", align 1
@__initcall__kmod_src__162_238_imx_src_driver_init6 = internal global ptr @imx_src_driver_init, section ".initcall6.init", align 4
@imx_src_driver = internal global %struct.platform_driver { ptr @imx_src_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.5, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_src_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"imx-src\00", align 1
@imx_src_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx51-src\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@imx_src_ops = internal constant %struct.reset_control_ops { ptr @imx_src_reset_module, ptr null, ptr null, ptr null }, align 4
@sw_reset_bits = internal unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 4, i32 12], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_src__162_238_imx_src_driver_init6], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @imx_gpcv2_set_core1_pdn_pup_by_software(i1 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = select i1 %0, i32 252, i32 240
  %3 = load ptr, ptr @gpc_base, align 4
  %4 = getelementptr i8, ptr %3, i32 2112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 1) #4, !srcloc !8
  %5 = load ptr, ptr @gpc_base, align 4
  %6 = getelementptr i8, ptr %5, i32 %2
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4, !srcloc !9
  %8 = or i32 %7, 2
  %9 = load ptr, ptr @gpc_base, align 4
  %10 = getelementptr i8, ptr %9, i32 %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #4, !srcloc !8
  %11 = tail call i64 @ktime_get() #4
  %12 = add i64 %11, 1000000000
  %13 = load ptr, ptr @gpc_base, align 4
  %14 = getelementptr i8, ptr %13, i32 %2
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #4, !srcloc !9
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %39, label %18

18:                                               ; preds = %21, %1
  %19 = tail call i64 @ktime_get() #4
  %20 = icmp sgt i64 %19, %12
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 1073740) #4
  %23 = load ptr, ptr @gpc_base, align 4
  %24 = getelementptr i8, ptr %23, i32 %2
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #4, !srcloc !9
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %39, label %18

28:                                               ; preds = %18
  %29 = load ptr, ptr @gpc_base, align 4
  %30 = getelementptr i8, ptr %29, i32 %2
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #4, !srcloc !9
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #5
  %36 = and i32 %7, -3
  %37 = load ptr, ptr @gpc_base, align 4
  %38 = getelementptr i8, ptr %37, i32 %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #4, !srcloc !8
  br label %39

39:                                               ; preds = %34, %28, %21, %1
  %40 = load ptr, ptr @gpc_base, align 4
  %41 = getelementptr i8, ptr %40, i32 2112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 0) #4, !srcloc !8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @imx_enable_cpu(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %4 = load i32, ptr %3, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @scr_lock) #4
  %5 = load i1, ptr @gpr_v2, align 1
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  br i1 %1, label %7, label %8

7:                                                ; preds = %6
  tail call void @imx_gpcv2_set_core1_pdn_pup_by_software(i1 noundef zeroext false)
  br label %8

8:                                                ; preds = %7, %6
  %9 = shl nuw i32 1, %4
  %10 = load ptr, ptr @src_base, align 4
  %11 = getelementptr i8, ptr %10, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #4, !srcloc !9
  %13 = or i32 %12, %9
  %14 = xor i32 %9, -1
  %15 = and i32 %12, %14
  %16 = select i1 %1, i32 %13, i32 %15
  %17 = load ptr, ptr @src_base, align 4
  %18 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #4, !srcloc !8
  br label %32

19:                                               ; preds = %2
  %20 = add i32 %4, 21
  %21 = shl nuw i32 1, %20
  %22 = load ptr, ptr @src_base, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #4, !srcloc !9
  %24 = or i32 %23, %21
  %25 = xor i32 %21, -1
  %26 = and i32 %23, %25
  %27 = select i1 %1, i32 %24, i32 %26
  %28 = add i32 %4, 13
  %29 = shl nuw i32 1, %28
  %30 = or i32 %27, %29
  %31 = load ptr, ptr @src_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %30) #4, !srcloc !8
  br label %32

32:                                               ; preds = %19, %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !10
  %33 = load i16, ptr @scr_lock, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr @scr_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @imx_set_cpu_jump(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %4 = load i32, ptr %3, align 4
  %5 = ptrtoint ptr %1 to i32
  %6 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %5, i32 -2130706432, i32 8454144) #6, !srcloc !14
  %7 = load ptr, ptr @src_base, align 4
  %8 = load i1, ptr @gpr_v2, align 1
  %9 = select i1 %8, i32 116, i32 32
  %10 = getelementptr i8, ptr %7, i32 %9
  %11 = shl i32 %4, 3
  %12 = getelementptr i8, ptr %10, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %6) #4, !srcloc !8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @imx_get_cpu_arg(i32 noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = load ptr, ptr @src_base, align 4
  %5 = load i1, ptr @gpr_v2, align 1
  %6 = select i1 %5, i32 116, i32 32
  %7 = getelementptr i8, ptr %4, i32 %6
  %8 = shl i32 %3, 3
  %9 = getelementptr i8, ptr %7, i32 %8
  %10 = getelementptr i8, ptr %9, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #4, !srcloc !9
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @imx_set_cpu_arg(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %4 = load i32, ptr %3, align 4
  %5 = load ptr, ptr @src_base, align 4
  %6 = load i1, ptr @gpr_v2, align 1
  %7 = select i1 %6, i32 116, i32 32
  %8 = getelementptr i8, ptr %5, i32 %7
  %9 = shl i32 %4, 3
  %10 = getelementptr i8, ptr %8, i32 %9
  %11 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %1) #4, !srcloc !8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @imx_src_init() local_unnamed_addr #3 section ".init.text" {
  %1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1) #4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @of_iomap(ptr noundef nonnull %1, i32 noundef 0) #4
  store ptr %4, ptr @src_base, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !15

6:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 174, i32 noundef 9, ptr noundef null) #4
  br label %7

7:                                                ; preds = %6, %3
  tail call void @_raw_spin_lock(ptr noundef nonnull @scr_lock) #4
  %8 = load ptr, ptr @src_base, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #4, !srcloc !9
  %10 = and i32 %9, -2
  %11 = load ptr, ptr @src_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #4, !srcloc !8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !10
  %12 = load i16, ptr @scr_lock, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr @scr_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !13
  br label %14

14:                                               ; preds = %7, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @imx7_src_init() local_unnamed_addr #3 section ".init.text" {
  store i1 true, ptr @gpr_v2, align 1
  %1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.3) #4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @of_iomap(ptr noundef nonnull %1, i32 noundef 0) #4
  store ptr %4, ptr @src_base, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.4) #4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @of_iomap(ptr noundef nonnull %7, i32 noundef 0) #4
  store ptr %10, ptr @gpc_base, align 4
  br label %11

11:                                               ; preds = %9, %6, %3, %0
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @imx_src_driver_init() #3 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_src_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_src_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 44, i32 noundef 3520) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  store ptr @imx_src_ops, ptr %3, align 4
  %6 = getelementptr inbounds %struct.reset_controller_dev, ptr %3, i32 0, i32 4
  store ptr %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.reset_controller_dev, ptr %3, i32 0, i32 5
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.reset_controller_dev, ptr %3, i32 0, i32 8
  store i32 5, ptr %10, align 4
  %11 = tail call i32 @devm_reset_controller_register(ptr noundef %2, ptr noundef nonnull %3) #4
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi i32 [ %11, %5 ], [ -12, %1 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_src_reset_module(ptr nocapture noundef readnone %0, i32 noundef %1) #0 {
  %3 = icmp ugt i32 %1, 4
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = getelementptr [5 x i32], ptr @sw_reset_bits, i32 0, i32 %1
  %6 = load i32, ptr %5, align 4
  %7 = shl nuw i32 1, %6
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @scr_lock) #4
  %9 = load ptr, ptr @src_base, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #4, !srcloc !9
  %11 = or i32 %10, %7
  %12 = load ptr, ptr @src_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %11) #4, !srcloc !8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @scr_lock, i32 noundef %8) #4
  %13 = load volatile i32, ptr @jiffies, align 64
  %14 = add i32 %13, 100
  %15 = load ptr, ptr @src_base, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !16
  %17 = and i32 %16, %7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %23, %4
  %20 = load volatile i32, ptr @jiffies, align 64
  %21 = sub i32 %14, %20
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #4, !srcloc !18
  %24 = load ptr, ptr @src_base, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !16
  %26 = and i32 %25, %7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %19

28:                                               ; preds = %23, %19, %4, %2
  %29 = phi i32 [ -22, %2 ], [ 0, %4 ], [ -62, %19 ], [ 0, %23 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 364962}
!9 = !{i64 365380}
!10 = !{i64 2148901588}
!11 = !{i64 2148897412}
!12 = !{i64 2148897487, i64 2148897514, i64 2148897561, i64 2148897583, i64 2148897611, i64 2148897631}
!13 = !{i64 2148924591}
!14 = !{i64 2147908624, i64 2147908647, i64 2147908679, i64 2147908711, i64 2147908749, i64 2147908779}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2151398548}
!17 = !{i64 2151399143}
!18 = !{i64 2151398985}
