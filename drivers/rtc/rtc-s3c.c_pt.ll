; ModuleID = '/llk/IR/drivers/rtc/rtc-s3c.c_pt.bc'
source_filename = "../drivers/rtc/rtc-s3c.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.s3c_rtc_data = type { i8, ptr, ptr, ptr }
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
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.s3c_rtc = type { ptr, ptr, ptr, ptr, ptr, i8, ptr, i32, %struct.spinlock, i8 }
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
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@s3c_rtc_dt_match = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2410-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c2410_rtc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2416-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c2416_rtc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2443-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c2443_rtc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c6410-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c6410_rtc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos3250-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c6410_rtc_data }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description210 = internal constant [35 x i8] c"description=Samsung S3C RTC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author211 = internal constant [36 x i8] c"author=Ben Dooks <ben@simtec.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_license212 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias213 = internal constant [27 x i8] c"alias=platform:s3c2410-rtc\00", section ".modinfo", align 1
@s3c2410_rtc_data = internal constant %struct.s3c_rtc_data { i8 0, ptr @s3c24xx_rtc_irq, ptr @s3c24xx_rtc_enable, ptr @s3c24xx_rtc_disable }, align 4
@s3c2416_rtc_data = internal constant %struct.s3c_rtc_data { i8 0, ptr @s3c24xx_rtc_irq, ptr @s3c24xx_rtc_enable, ptr @s3c24xx_rtc_disable }, align 4
@s3c2443_rtc_data = internal constant %struct.s3c_rtc_data { i8 0, ptr @s3c24xx_rtc_irq, ptr @s3c24xx_rtc_enable, ptr @s3c24xx_rtc_disable }, align 4
@s3c6410_rtc_data = internal constant %struct.s3c_rtc_data { i8 1, ptr @s3c6410_rtc_irq, ptr @s3c24xx_rtc_enable, ptr @s3c6410_rtc_disable }, align 4
@.str = private unnamed_addr constant [27 x i8] c"rtc disabled, re-enabling\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"removing RTCCON_CNTSEL\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"removing RTCCON_CLKRST\0A\00", align 1
@s3c_rtc_driver = internal global %struct.platform_driver { ptr @s3c_rtc_probe, ptr @s3c_rtc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @s3c_rtc_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.3 = private unnamed_addr constant [8 x i8] c"s3c-rtc\00", align 1
@s3c_rtc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @s3c_rtc_suspend, ptr @s3c_rtc_resume, ptr @s3c_rtc_suspend, ptr @s3c_rtc_resume, ptr @s3c_rtc_suspend, ptr @s3c_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"failed getting s3c_rtc_data\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"rtc\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"failed to find rtc clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"rtc_src\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"failed to find rtc source clock\0A\00", align 1
@s3c_rtcops = internal constant %struct.rtc_class_ops { ptr null, ptr @s3c_rtc_gettime, ptr @s3c_rtc_settime, ptr @s3c_rtc_getalarm, ptr @s3c_rtc_setalarm, ptr null, ptr @s3c_rtc_setaie, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"s3c2410-rtc alarm\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"IRQ%d error %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"enable_irq_wake failed\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias213, ptr @__UNIQUE_ID_author211, ptr @__UNIQUE_ID_description210, ptr @__UNIQUE_ID_license212], section "llvm.metadata"

@__mod_of__s3c_rtc_dt_match_device_table = dso_local alias [6 x %struct.of_device_id], ptr @s3c_rtc_dt_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @s3c_rtc_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @s3c_rtc_driver) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s3c24xx_rtc_irq(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.s3c_rtc, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  tail call void @rtc_update_irq(ptr noundef %4, i32 noundef 1, i32 noundef 160) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s3c24xx_rtc_enable(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.s3c_rtc, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %4) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %6 = zext i16 %5 to i32
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str) #7
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr i8, ptr %11, i32 64
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %12) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  %14 = or i16 %13, 1
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr i8, ptr %15, i32 64
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %16, i16 %14) #6, !srcloc !12
  br label %17

17:                                               ; preds = %9, %1
  %18 = and i32 %6, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.1) #7
  %22 = load ptr, ptr %2, align 4
  %23 = getelementptr i8, ptr %22, i32 64
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %23) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  %25 = and i16 %24, -5
  %26 = load ptr, ptr %2, align 4
  %27 = getelementptr i8, ptr %26, i32 64
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %27, i16 %25) #6, !srcloc !12
  br label %28

28:                                               ; preds = %20, %17
  %29 = and i32 %6, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.2) #7
  %33 = load ptr, ptr %2, align 4
  %34 = getelementptr i8, ptr %33, i32 64
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %34) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  %36 = and i16 %35, -9
  %37 = load ptr, ptr %2, align 4
  %38 = getelementptr i8, ptr %37, i32 64
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %38, i16 %36) #6, !srcloc !12
  br label %39

39:                                               ; preds = %31, %28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s3c24xx_rtc_disable(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.s3c_rtc, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %4) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !17
  %6 = and i16 %5, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 64
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %8, i16 %6) #6, !srcloc !12
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr i8, ptr %9, i32 68
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %10) #6, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !20
  %12 = and i8 %11, 127
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !21
  tail call void @arm_heavy_mb() #6
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr i8, ptr %13, i32 68
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %14, i8 %12) #6, !srcloc !22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s3c6410_rtc_irq(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.s3c_rtc, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  tail call void @rtc_update_irq(ptr noundef %4, i32 noundef 1, i32 noundef 160) #6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.s3c_rtc, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 48
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 %5) #6, !srcloc !22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s3c6410_rtc_disable(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.s3c_rtc, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %4) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !24
  %6 = and i16 %5, -258
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !25
  tail call void @arm_heavy_mb() #6
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 64
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %8, i16 %6) #6, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c_rtc_probe(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 40, i32 noundef 3520) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %107, label %5

5:                                                ; preds = %1
  store ptr %2, ptr %3, align 4
  %6 = tail call ptr @of_device_get_match_data(ptr noundef %2) #6
  %7 = getelementptr inbounds %struct.s3c_rtc, ptr %3, i32 0, i32 6
  store ptr %6, ptr %7, align 4
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #7
  br label %107

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.s3c_rtc, ptr %3, i32 0, i32 8
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %12, align 8
  %13 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %14 = getelementptr inbounds %struct.s3c_rtc, ptr %3, i32 0, i32 7
  store i32 %13, ptr %14, align 4
  %15 = icmp slt i32 %13, 0
  br i1 %15, label %107, label %16

16:                                               ; preds = %10
  %17 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  %18 = getelementptr inbounds %struct.s3c_rtc, ptr %3, i32 0, i32 2
  store ptr %17, ptr %18, align 4
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = ptrtoint ptr %17 to i32
  br label %107

22:                                               ; preds = %16
  %23 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.5) #6
  %24 = getelementptr inbounds %struct.s3c_rtc, ptr %3, i32 0, i32 3
  store ptr %23, ptr %24, align 4
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = icmp eq ptr %23, inttoptr (i32 -517 to ptr)
  br i1 %27, label %107, label %28

28:                                               ; preds = %26
  %29 = ptrtoint ptr %23 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #7
  br label %107

30:                                               ; preds = %22
  %31 = tail call i32 @clk_prepare(ptr noundef %23) #6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %107

33:                                               ; preds = %30
  %34 = tail call i32 @clk_enable(ptr noundef %23) #6
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @clk_unprepare(ptr noundef %23) #6
  br label %107

37:                                               ; preds = %33
  %38 = load ptr, ptr %7, align 4
  %39 = load i8, ptr %38, align 4, !range !26
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %37
  %42 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.7) #6
  %43 = getelementptr inbounds %struct.s3c_rtc, ptr %3, i32 0, i32 4
  store ptr %42, ptr %43, align 4
  %44 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = ptrtoint ptr %42 to i32
  %47 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %46, ptr noundef nonnull @.str.8) #6
  br label %104

48:                                               ; preds = %41
  %49 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %42)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %104

51:                                               ; preds = %48
  %52 = load ptr, ptr %7, align 4
  br label %53

53:                                               ; preds = %51, %37
  %54 = phi ptr [ %52, %51 ], [ %38, %37 ]
  %55 = getelementptr inbounds %struct.s3c_rtc_data, ptr %54, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  tail call void %56(ptr noundef nonnull %3) #6
  %59 = load ptr, ptr %7, align 4
  br label %60

60:                                               ; preds = %58, %53
  %61 = phi ptr [ %59, %58 ], [ %54, %53 ]
  %62 = getelementptr inbounds %struct.s3c_rtc_data, ptr %61, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  tail call void %63(ptr noundef nonnull %3) #6
  br label %66

66:                                               ; preds = %65, %60
  %67 = tail call i32 @device_init_wakeup(ptr noundef %2, i1 noundef zeroext true) #6
  %68 = tail call ptr @devm_rtc_allocate_device(ptr noundef %2) #6
  %69 = getelementptr inbounds %struct.s3c_rtc, ptr %3, i32 0, i32 1
  store ptr %68, ptr %69, align 4
  %70 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = ptrtoint ptr %68 to i32
  br label %89

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.rtc_device, ptr %68, i32 0, i32 3
  store ptr @s3c_rtcops, ptr %74, align 8
  %75 = load ptr, ptr %69, align 4
  %76 = getelementptr inbounds %struct.rtc_device, ptr %75, i32 0, i32 22
  store i64 946684800, ptr %76, align 8
  %77 = load ptr, ptr %69, align 4
  %78 = getelementptr inbounds %struct.rtc_device, ptr %77, i32 0, i32 23
  store i64 4102444799, ptr %78, align 8
  %79 = load ptr, ptr %69, align 4
  %80 = tail call i32 @__devm_rtc_register_device(ptr noundef nonnull @__this_module, ptr noundef %79) #6
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %73
  %83 = load i32, ptr %14, align 4
  %84 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %83, ptr noundef nonnull @s3c_rtc_alarmirq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull %3) #6
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %87, i32 noundef %84) #7
  br label %89

88:                                               ; preds = %82
  tail call fastcc void @s3c_rtc_disable_clk(ptr noundef nonnull %3)
  br label %107

89:                                               ; preds = %86, %73, %71
  %90 = phi i32 [ %72, %71 ], [ %80, %73 ], [ %84, %86 ]
  %91 = load ptr, ptr %7, align 4
  %92 = getelementptr inbounds %struct.s3c_rtc_data, ptr %91, i32 0, i32 3
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %89
  tail call void %93(ptr noundef nonnull %3) #6
  %96 = load ptr, ptr %7, align 4
  br label %97

97:                                               ; preds = %95, %89
  %98 = phi ptr [ %96, %95 ], [ %91, %89 ]
  %99 = load i8, ptr %98, align 4, !range !26
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.s3c_rtc, ptr %3, i32 0, i32 4
  %103 = load ptr, ptr %102, align 4
  tail call void @clk_disable(ptr noundef %103) #6
  tail call void @clk_unprepare(ptr noundef %103) #6
  br label %104

104:                                              ; preds = %101, %97, %48, %45
  %105 = phi i32 [ %47, %45 ], [ %49, %48 ], [ %90, %101 ], [ %90, %97 ]
  %106 = load ptr, ptr %24, align 4
  tail call void @clk_disable(ptr noundef %106) #6
  tail call void @clk_unprepare(ptr noundef %106) #6
  br label %107

107:                                              ; preds = %104, %88, %36, %30, %28, %26, %20, %10, %9, %1
  %108 = phi i32 [ %21, %20 ], [ %105, %104 ], [ 0, %88 ], [ -22, %9 ], [ -12, %1 ], [ %13, %10 ], [ -517, %26 ], [ %29, %28 ], [ %34, %36 ], [ %31, %30 ]
  ret i32 %108
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c_rtc_remove(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @s3c_rtc_setaie(ptr noundef %4, i32 noundef 0)
  %6 = getelementptr inbounds %struct.s3c_rtc, ptr %3, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = load i8, ptr %7, align 4, !range !26
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.s3c_rtc, ptr %3, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  tail call void @clk_unprepare(ptr noundef %12) #6
  br label %13

13:                                               ; preds = %10, %1
  %14 = getelementptr inbounds %struct.s3c_rtc, ptr %3, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  tail call void @clk_unprepare(ptr noundef %15) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #4 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #6
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c_rtc_alarmirq(i32 noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.s3c_rtc, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.s3c_rtc_data, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void %6(ptr noundef %1, i32 noundef 2) #6
  br label %9

9:                                                ; preds = %8, %2
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s3c_rtc_disable_clk(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.s3c_rtc, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = load i8, ptr %3, align 4, !range !26
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.s3c_rtc, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  tail call void @clk_disable(ptr noundef %8) #6
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct.s3c_rtc, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c_rtc_gettime(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #1 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.s3c_rtc, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_enable(ptr noundef %6) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %107

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.s3c_rtc, ptr %4, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 4, !range !26
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.s3c_rtc, ptr %4, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @clk_enable(ptr noundef %16) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %20) #6
  br label %107

21:                                               ; preds = %14, %9
  %22 = getelementptr inbounds %struct.s3c_rtc, ptr %4, i32 0, i32 2
  %23 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  %24 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  %25 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  %26 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  %27 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %28 = load ptr, ptr %22, align 4
  %29 = getelementptr i8, ptr %28, i32 116
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %29) #6, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !27
  %31 = zext i8 %30 to i32
  store i32 %31, ptr %23, align 4
  %32 = load ptr, ptr %22, align 4
  %33 = getelementptr i8, ptr %32, i32 120
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %33) #6, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !28
  %35 = zext i8 %34 to i32
  store i32 %35, ptr %24, align 4
  %36 = load ptr, ptr %22, align 4
  %37 = getelementptr i8, ptr %36, i32 124
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %37) #6, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !29
  %39 = zext i8 %38 to i32
  store i32 %39, ptr %25, align 4
  %40 = load ptr, ptr %22, align 4
  %41 = getelementptr i8, ptr %40, i32 132
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %41) #6, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !30
  %43 = zext i8 %42 to i32
  store i32 %43, ptr %26, align 4
  %44 = load ptr, ptr %22, align 4
  %45 = getelementptr i8, ptr %44, i32 136
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %45) #6, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !31
  %47 = zext i8 %46 to i32
  store i32 %47, ptr %27, align 4
  %48 = load ptr, ptr %22, align 4
  %49 = getelementptr i8, ptr %48, i32 112
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %49) #6, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !32
  %51 = zext i8 %50 to i32
  store i32 %51, ptr %1, align 4
  %52 = icmp eq i8 %50, 0
  br i1 %52, label %53, label %78

53:                                               ; preds = %21
  %54 = load ptr, ptr %22, align 4
  %55 = getelementptr i8, ptr %54, i32 116
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %55) #6, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !27
  %57 = zext i8 %56 to i32
  store i32 %57, ptr %23, align 4
  %58 = load ptr, ptr %22, align 4
  %59 = getelementptr i8, ptr %58, i32 120
  %60 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %59) #6, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !28
  %61 = zext i8 %60 to i32
  store i32 %61, ptr %24, align 4
  %62 = load ptr, ptr %22, align 4
  %63 = getelementptr i8, ptr %62, i32 124
  %64 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %63) #6, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !29
  %65 = zext i8 %64 to i32
  store i32 %65, ptr %25, align 4
  %66 = load ptr, ptr %22, align 4
  %67 = getelementptr i8, ptr %66, i32 132
  %68 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %67) #6, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !30
  %69 = zext i8 %68 to i32
  store i32 %69, ptr %26, align 4
  %70 = load ptr, ptr %22, align 4
  %71 = getelementptr i8, ptr %70, i32 136
  %72 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %71) #6, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !31
  %73 = zext i8 %72 to i32
  store i32 %73, ptr %27, align 4
  %74 = load ptr, ptr %22, align 4
  %75 = getelementptr i8, ptr %74, i32 112
  %76 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %75) #6, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !32
  %77 = zext i8 %76 to i32
  store i32 %77, ptr %1, align 4
  br label %78

78:                                               ; preds = %53, %21
  %79 = load ptr, ptr %10, align 4
  %80 = load i8, ptr %79, align 4, !range !26
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.s3c_rtc, ptr %4, i32 0, i32 4
  %84 = load ptr, ptr %83, align 4
  tail call void @clk_disable(ptr noundef %84) #6
  br label %85

85:                                               ; preds = %82, %78
  %86 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %86) #6
  %87 = load i32, ptr %1, align 4
  %88 = trunc i32 %87 to i8
  %89 = tail call i32 @_bcd2bin(i8 noundef zeroext %88) #8
  store i32 %89, ptr %1, align 4
  %90 = load i32, ptr %23, align 4
  %91 = trunc i32 %90 to i8
  %92 = tail call i32 @_bcd2bin(i8 noundef zeroext %91) #8
  store i32 %92, ptr %23, align 4
  %93 = load i32, ptr %24, align 4
  %94 = trunc i32 %93 to i8
  %95 = tail call i32 @_bcd2bin(i8 noundef zeroext %94) #8
  store i32 %95, ptr %24, align 4
  %96 = load i32, ptr %25, align 4
  %97 = trunc i32 %96 to i8
  %98 = tail call i32 @_bcd2bin(i8 noundef zeroext %97) #8
  store i32 %98, ptr %25, align 4
  %99 = load i32, ptr %26, align 4
  %100 = trunc i32 %99 to i8
  %101 = tail call i32 @_bcd2bin(i8 noundef zeroext %100) #8
  %102 = load i32, ptr %27, align 4
  %103 = trunc i32 %102 to i8
  %104 = tail call i32 @_bcd2bin(i8 noundef zeroext %103) #8
  %105 = add i32 %104, 100
  store i32 %105, ptr %27, align 4
  %106 = add i32 %101, -1
  store i32 %106, ptr %26, align 4
  br label %107

107:                                              ; preds = %85, %19, %2
  %108 = phi i32 [ 0, %85 ], [ %17, %19 ], [ %7, %2 ]
  ret i32 %108
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c_rtc_settime(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load i32, ptr %1, align 4
  %6 = getelementptr inbounds i8, ptr %1, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds i8, ptr %1, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds i8, ptr %1, i32 12
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds i8, ptr %1, i32 16
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds i8, ptr %1, i32 20
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, -100
  %17 = add i32 %13, 1
  %18 = getelementptr inbounds %struct.s3c_rtc, ptr %4, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @clk_enable(ptr noundef %19) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.s3c_rtc, ptr %4, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = load i8, ptr %24, align 4, !range !26
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.s3c_rtc, ptr %4, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @clk_enable(ptr noundef %29) #6
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %27, %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !33
  tail call void @arm_heavy_mb() #6
  %33 = tail call zeroext i8 @_bin2bcd(i32 noundef %5) #8
  %34 = getelementptr inbounds %struct.s3c_rtc, ptr %4, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 112
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %36, i8 %33) #6, !srcloc !22
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %37 = tail call zeroext i8 @_bin2bcd(i32 noundef %7) #8
  %38 = load ptr, ptr %34, align 4
  %39 = getelementptr i8, ptr %38, i32 116
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %39, i8 %37) #6, !srcloc !22
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !35
  tail call void @arm_heavy_mb() #6
  %40 = tail call zeroext i8 @_bin2bcd(i32 noundef %9) #8
  %41 = load ptr, ptr %34, align 4
  %42 = getelementptr i8, ptr %41, i32 120
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %42, i8 %40) #6, !srcloc !22
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !36
  tail call void @arm_heavy_mb() #6
  %43 = tail call zeroext i8 @_bin2bcd(i32 noundef %11) #8
  %44 = load ptr, ptr %34, align 4
  %45 = getelementptr i8, ptr %44, i32 124
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %45, i8 %43) #6, !srcloc !22
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !37
  tail call void @arm_heavy_mb() #6
  %46 = tail call zeroext i8 @_bin2bcd(i32 noundef %17) #8
  %47 = load ptr, ptr %34, align 4
  %48 = getelementptr i8, ptr %47, i32 132
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %48, i8 %46) #6, !srcloc !22
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %49 = tail call zeroext i8 @_bin2bcd(i32 noundef %16) #8
  %50 = load ptr, ptr %34, align 4
  %51 = getelementptr i8, ptr %50, i32 136
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %51, i8 %49) #6, !srcloc !22
  %52 = load ptr, ptr %23, align 4
  %53 = load i8, ptr %52, align 4, !range !26
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %32
  %56 = getelementptr inbounds %struct.s3c_rtc, ptr %4, i32 0, i32 4
  %57 = load ptr, ptr %56, align 4
  tail call void @clk_disable(ptr noundef %57) #6
  br label %58

58:                                               ; preds = %55, %32, %27
  %59 = phi i32 [ %30, %27 ], [ 0, %32 ], [ 0, %55 ]
  %60 = load ptr, ptr %18, align 4
  tail call void @clk_disable(ptr noundef %60) #6
  br label %61

61:                                               ; preds = %58, %2
  %62 = phi i32 [ %20, %2 ], [ %59, %58 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c_rtc_getalarm(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #1 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %6 = getelementptr inbounds %struct.s3c_rtc, ptr %4, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_enable(ptr noundef %7) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %109

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.s3c_rtc, ptr %4, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = load i8, ptr %12, align 4, !range !26
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.s3c_rtc, ptr %4, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @clk_enable(ptr noundef %17) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %21) #6
  br label %109

22:                                               ; preds = %15, %10
  %23 = getelementptr inbounds %struct.s3c_rtc, ptr %4, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 84
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %25) #6, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !39
  %27 = zext i8 %26 to i32
  store i32 %27, ptr %5, align 4
  %28 = load ptr, ptr %23, align 4
  %29 = getelementptr i8, ptr %28, i32 88
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %29) #6, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !40
  %31 = zext i8 %30 to i32
  %32 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  store i32 %31, ptr %32, align 4
  %33 = load ptr, ptr %23, align 4
  %34 = getelementptr i8, ptr %33, i32 92
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %34) #6, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !41
  %36 = zext i8 %35 to i32
  %37 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  store i32 %36, ptr %37, align 4
  %38 = load ptr, ptr %23, align 4
  %39 = getelementptr i8, ptr %38, i32 100
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %39) #6, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !42
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  store i32 %41, ptr %42, align 4
  %43 = load ptr, ptr %23, align 4
  %44 = getelementptr i8, ptr %43, i32 96
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %44) #6, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !43
  %46 = zext i8 %45 to i32
  %47 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  store i32 %46, ptr %47, align 4
  %48 = load ptr, ptr %23, align 4
  %49 = getelementptr i8, ptr %48, i32 104
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %49) #6, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !44
  %51 = zext i8 %50 to i32
  %52 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  store i32 %51, ptr %52, align 4
  %53 = load ptr, ptr %23, align 4
  %54 = getelementptr i8, ptr %53, i32 80
  %55 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %54) #6, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !45
  %56 = zext i8 %55 to i32
  %57 = load ptr, ptr %11, align 4
  %58 = load i8, ptr %57, align 4, !range !26
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %22
  %61 = getelementptr inbounds %struct.s3c_rtc, ptr %4, i32 0, i32 4
  %62 = load ptr, ptr %61, align 4
  tail call void @clk_disable(ptr noundef %62) #6
  br label %63

63:                                               ; preds = %60, %22
  %64 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %64) #6
  %65 = lshr i8 %55, 6
  %66 = and i8 %65, 1
  store i8 %66, ptr %1, align 4
  %67 = and i32 %56, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %63
  %70 = load i32, ptr %5, align 4
  %71 = trunc i32 %70 to i8
  %72 = tail call i32 @_bcd2bin(i8 noundef zeroext %71) #8
  store i32 %72, ptr %5, align 4
  br label %73

73:                                               ; preds = %69, %63
  %74 = and i32 %56, 2
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load i32, ptr %32, align 4
  %78 = trunc i32 %77 to i8
  %79 = tail call i32 @_bcd2bin(i8 noundef zeroext %78) #8
  store i32 %79, ptr %32, align 4
  br label %80

80:                                               ; preds = %76, %73
  %81 = and i32 %56, 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %80
  %84 = load i32, ptr %37, align 4
  %85 = trunc i32 %84 to i8
  %86 = tail call i32 @_bcd2bin(i8 noundef zeroext %85) #8
  store i32 %86, ptr %37, align 4
  br label %87

87:                                               ; preds = %83, %80
  %88 = and i32 %56, 8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = load i32, ptr %47, align 4
  %92 = trunc i32 %91 to i8
  %93 = tail call i32 @_bcd2bin(i8 noundef zeroext %92) #8
  store i32 %93, ptr %47, align 4
  br label %94

94:                                               ; preds = %90, %87
  %95 = and i32 %56, 16
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %94
  %98 = load i32, ptr %42, align 4
  %99 = trunc i32 %98 to i8
  %100 = tail call i32 @_bcd2bin(i8 noundef zeroext %99) #8
  %101 = add i32 %100, -1
  store i32 %101, ptr %42, align 4
  br label %102

102:                                              ; preds = %97, %94
  %103 = and i32 %56, 32
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %102
  %106 = load i32, ptr %52, align 4
  %107 = trunc i32 %106 to i8
  %108 = tail call i32 @_bcd2bin(i8 noundef zeroext %107) #8
  store i32 %108, ptr %52, align 4
  br label %109

109:                                              ; preds = %105, %102, %20, %2
  %110 = phi i32 [ 0, %105 ], [ 0, %102 ], [ %18, %20 ], [ %8, %2 ]
  ret i32 %110
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c_rtc_setalarm(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %6 = getelementptr inbounds %struct.s3c_rtc, ptr %4, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_enable(ptr noundef %7) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %100

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.s3c_rtc, ptr %4, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = load i8, ptr %12, align 4, !range !26
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.s3c_rtc, ptr %4, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @clk_enable(ptr noundef %17) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %97

20:                                               ; preds = %15, %10
  %21 = getelementptr inbounds %struct.s3c_rtc, ptr %4, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 80
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %23) #6, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !46
  %25 = and i8 %24, 64
  %26 = zext i8 %25 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %27 = load ptr, ptr %21, align 4
  %28 = getelementptr i8, ptr %27, i32 80
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %28, i8 0) #6, !srcloc !22
  %29 = load i32, ptr %5, align 4
  %30 = icmp ult i32 %29, 60
  br i1 %30, label %31, label %37

31:                                               ; preds = %20
  %32 = or i32 %26, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %33 = load i32, ptr %5, align 4
  %34 = tail call zeroext i8 @_bin2bcd(i32 noundef %33) #8
  %35 = load ptr, ptr %21, align 4
  %36 = getelementptr i8, ptr %35, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %36, i8 %34) #6, !srcloc !22
  br label %37

37:                                               ; preds = %31, %20
  %38 = phi i32 [ %32, %31 ], [ %26, %20 ]
  %39 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp ult i32 %40, 60
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = or i32 %38, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %44 = load i32, ptr %39, align 4
  %45 = tail call zeroext i8 @_bin2bcd(i32 noundef %44) #8
  %46 = load ptr, ptr %21, align 4
  %47 = getelementptr i8, ptr %46, i32 88
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %47, i8 %45) #6, !srcloc !22
  br label %48

48:                                               ; preds = %42, %37
  %49 = phi i32 [ %43, %42 ], [ %38, %37 ]
  %50 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = icmp ult i32 %51, 24
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = or i32 %49, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !50
  tail call void @arm_heavy_mb() #6
  %55 = load i32, ptr %50, align 4
  %56 = tail call zeroext i8 @_bin2bcd(i32 noundef %55) #8
  %57 = load ptr, ptr %21, align 4
  %58 = getelementptr i8, ptr %57, i32 92
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %58, i8 %56) #6, !srcloc !22
  br label %59

59:                                               ; preds = %53, %48
  %60 = phi i32 [ %54, %53 ], [ %49, %48 ]
  %61 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = icmp ult i32 %62, 12
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = or i32 %60, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %66 = load i32, ptr %61, align 4
  %67 = add i32 %66, 1
  %68 = tail call zeroext i8 @_bin2bcd(i32 noundef %67) #8
  %69 = load ptr, ptr %21, align 4
  %70 = getelementptr i8, ptr %69, i32 100
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %70, i8 %68) #6, !srcloc !22
  br label %71

71:                                               ; preds = %64, %59
  %72 = phi i32 [ %65, %64 ], [ %60, %59 ]
  %73 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, -1
  %76 = icmp ult i32 %75, 31
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = or i32 %72, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %79 = load i32, ptr %73, align 4
  %80 = tail call zeroext i8 @_bin2bcd(i32 noundef %79) #8
  %81 = load ptr, ptr %21, align 4
  %82 = getelementptr i8, ptr %81, i32 96
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %82, i8 %80) #6, !srcloc !22
  br label %83

83:                                               ; preds = %77, %71
  %84 = phi i32 [ %78, %77 ], [ %72, %71 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %85 = trunc i32 %84 to i8
  %86 = load ptr, ptr %21, align 4
  %87 = getelementptr i8, ptr %86, i32 80
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %87, i8 %85) #6, !srcloc !22
  %88 = load i8, ptr %1, align 4
  %89 = zext i8 %88 to i32
  %90 = tail call i32 @s3c_rtc_setaie(ptr noundef %0, i32 noundef %89)
  %91 = load ptr, ptr %11, align 4
  %92 = load i8, ptr %91, align 4, !range !26
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %83
  %95 = getelementptr inbounds %struct.s3c_rtc, ptr %4, i32 0, i32 4
  %96 = load ptr, ptr %95, align 4
  tail call void @clk_disable(ptr noundef %96) #6
  br label %97

97:                                               ; preds = %94, %83, %15
  %98 = phi i32 [ %18, %15 ], [ 0, %83 ], [ 0, %94 ]
  %99 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %99) #6
  br label %100

100:                                              ; preds = %97, %2
  %101 = phi i32 [ %8, %2 ], [ %98, %97 ]
  ret i32 %101
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c_rtc_setaie(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.s3c_rtc, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_enable(ptr noundef %6) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %73

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.s3c_rtc, ptr %4, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 4, !range !26
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.s3c_rtc, ptr %4, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @clk_enable(ptr noundef %16) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %70

19:                                               ; preds = %14, %9
  %20 = getelementptr inbounds %struct.s3c_rtc, ptr %4, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 80
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %22) #6, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !54
  %24 = and i8 %23, -65
  %25 = icmp ne i32 %1, 0
  %26 = select i1 %25, i8 64, i8 0
  %27 = or i8 %24, %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %28 = load ptr, ptr %20, align 4
  %29 = getelementptr i8, ptr %28, i32 80
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %29, i8 %27) #6, !srcloc !22
  %30 = getelementptr inbounds %struct.s3c_rtc, ptr %4, i32 0, i32 8
  %31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %30) #6
  %32 = getelementptr inbounds %struct.s3c_rtc, ptr %4, i32 0, i32 5
  %33 = load i8, ptr %32, align 4, !range !26
  %34 = icmp eq i8 %33, 0
  %35 = or i1 %25, %34
  br i1 %35, label %43, label %36

36:                                               ; preds = %19
  %37 = load ptr, ptr %10, align 4
  %38 = load i8, ptr %37, align 4, !range !26
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %58, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.s3c_rtc, ptr %4, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  tail call void @clk_disable(ptr noundef %42) #6
  br label %58

43:                                               ; preds = %19
  %44 = and i1 %25, %34
  br i1 %44, label %45, label %61

45:                                               ; preds = %43
  %46 = load ptr, ptr %5, align 4
  %47 = tail call i32 @clk_enable(ptr noundef %46) #6
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = load ptr, ptr %10, align 4
  %51 = load i8, ptr %50, align 4, !range !26
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.s3c_rtc, ptr %4, i32 0, i32 4
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 @clk_enable(ptr noundef %55) #6
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53, %40, %36
  %59 = phi i32 [ 0, %36 ], [ 0, %40 ], [ %56, %53 ]
  %60 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %60) #6
  br label %61

61:                                               ; preds = %58, %53, %49, %45, %43
  %62 = phi i32 [ 0, %43 ], [ %47, %45 ], [ 0, %53 ], [ 0, %49 ], [ %59, %58 ]
  %63 = zext i1 %25 to i8
  store i8 %63, ptr %32, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %30, i32 noundef %31) #6
  %64 = load ptr, ptr %10, align 4
  %65 = load i8, ptr %64, align 4, !range !26
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.s3c_rtc, ptr %4, i32 0, i32 4
  %69 = load ptr, ptr %68, align 4
  tail call void @clk_disable(ptr noundef %69) #6
  br label %70

70:                                               ; preds = %67, %61, %14
  %71 = phi i32 [ %17, %14 ], [ %62, %61 ], [ %62, %67 ]
  %72 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %72) #6
  br label %73

73:                                               ; preds = %70, %2
  %74 = phi i32 [ %7, %2 ], [ %71, %70 ]
  ret i32 %74
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c_rtc_suspend(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.s3c_rtc, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_enable(ptr noundef %5) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %48

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.s3c_rtc, ptr %3, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 4, !range !26
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.s3c_rtc, ptr %3, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @clk_enable(ptr noundef %15) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load ptr, ptr %9, align 4
  br label %22

20:                                               ; preds = %13
  %21 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %21) #6
  br label %48

22:                                               ; preds = %18, %8
  %23 = phi ptr [ %19, %18 ], [ %10, %8 ]
  %24 = getelementptr inbounds %struct.s3c_rtc_data, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  tail call void %25(ptr noundef %3) #6
  br label %28

28:                                               ; preds = %27, %22
  %29 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %30 = load i16, ptr %29, align 4
  %31 = and i16 %30, 1
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %48, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.s3c_rtc, ptr %3, i32 0, i32 9
  %39 = load i8, ptr %38, align 4, !range !26
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.s3c_rtc, ptr %3, i32 0, i32 7
  %43 = load i32, ptr %42, align 4
  %44 = tail call i32 @irq_set_irq_wake(i32 noundef %43, i32 noundef 1) #6
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i8 1, ptr %38, align 4
  br label %48

47:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.11) #7
  br label %48

48:                                               ; preds = %47, %46, %37, %33, %28, %20, %1
  %49 = phi i32 [ 0, %46 ], [ 0, %47 ], [ 0, %37 ], [ 0, %33 ], [ %16, %20 ], [ %6, %1 ], [ 0, %28 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c_rtc_resume(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.s3c_rtc, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.s3c_rtc_data, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  tail call void %7(ptr noundef %3) #6
  %10 = load ptr, ptr %4, align 4
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi ptr [ %10, %9 ], [ %5, %1 ]
  %13 = load i8, ptr %12, align 4, !range !26
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.s3c_rtc, ptr %3, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  tail call void @clk_disable(ptr noundef %17) #6
  br label %18

18:                                               ; preds = %15, %11
  %19 = getelementptr inbounds %struct.s3c_rtc, ptr %3, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  tail call void @clk_disable(ptr noundef %20) #6
  %21 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %22 = load i16, ptr %21, align 4
  %23 = and i16 %22, 1
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.s3c_rtc, ptr %3, i32 0, i32 9
  %31 = load i8, ptr %30, align 4, !range !26
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.s3c_rtc, ptr %3, i32 0, i32 7
  %35 = load i32, ptr %34, align 4
  %36 = tail call i32 @irq_set_irq_wake(i32 noundef %35, i32 noundef 0) #6
  store i8 0, ptr %30, align 4
  br label %37

37:                                               ; preds = %33, %29, %25, %18
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind readnone willreturn }

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
!8 = !{i64 4421488}
!9 = !{i64 2152517388}
!10 = !{i64 2152518340}
!11 = !{i64 2152518579}
!12 = !{i64 4421288}
!13 = !{i64 2152519668}
!14 = !{i64 2152519909}
!15 = !{i64 2152521002}
!16 = !{i64 2152521243}
!17 = !{i64 2152521778}
!18 = !{i64 2152522006}
!19 = !{i64 4422106}
!20 = !{i64 2152522380}
!21 = !{i64 2152522608}
!22 = !{i64 4421711}
!23 = !{i64 2152533471}
!24 = !{i64 2152523043}
!25 = !{i64 2152523280}
!26 = !{i8 0, i8 2}
!27 = !{i64 2152500468}
!28 = !{i64 2152500709}
!29 = !{i64 2152500950}
!30 = !{i64 2152501191}
!31 = !{i64 2152501432}
!32 = !{i64 2152501673}
!33 = !{i64 2152503179}
!34 = !{i64 2152503871}
!35 = !{i64 2152504572}
!36 = !{i64 2152505277}
!37 = !{i64 2152505973}
!38 = !{i64 2152506674}
!39 = !{i64 2152508148}
!40 = !{i64 2152508389}
!41 = !{i64 2152508630}
!42 = !{i64 2152508871}
!43 = !{i64 2152509112}
!44 = !{i64 2152509353}
!45 = !{i64 2152509594}
!46 = !{i64 2152512223}
!47 = !{i64 2152512452}
!48 = !{i64 2152513028}
!49 = !{i64 2152513729}
!50 = !{i64 2152514439}
!51 = !{i64 2152515180}
!52 = !{i64 2152515906}
!53 = !{i64 2152516949}
!54 = !{i64 2152499565}
!55 = !{i64 2152499802}
