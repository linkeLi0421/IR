; ModuleID = '/llk/IR/drivers/nvmem/rockchip-efuse.c_pt.bc'
source_filename = "../drivers/nvmem/rockchip-efuse.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
%struct.rockchip_efuse_chip = type { ptr, ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@rockchip_efuse_match = internal constant [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rockchip-efuse\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rockchip_rk3288_efuse_read }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3066a-efuse\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rockchip_rk3288_efuse_read }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3188-efuse\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rockchip_rk3288_efuse_read }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3228-efuse\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rockchip_rk3288_efuse_read }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-efuse\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rockchip_rk3288_efuse_read }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3368-efuse\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rockchip_rk3288_efuse_read }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3328-efuse\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rockchip_rk3328_efuse_read }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-efuse\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rockchip_rk3399_efuse_read }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description166 = internal constant [34 x i8] c"description=rockchip_efuse driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license167 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [36 x i8] c"failed to prepare/enable efuse clk\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rockchip_efuse_driver = internal global %struct.platform_driver { ptr @rockchip_efuse_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rockchip_efuse_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.1 = private unnamed_addr constant [15 x i8] c"rockchip-efuse\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to get match data\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"pclk_efuse\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"rockchip,efuse-size\00", align 1
@econfig = internal global %struct.nvmem_config { ptr null, ptr @.str.1, i32 0, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0, i32 0, i8 1, i8 0, i8 0, ptr null, i8 0, ptr null, ptr null, ptr null, i32 0, i32 1, i32 1, ptr null, i8 0, ptr null }, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID_description166, ptr @__UNIQUE_ID_license167], section "llvm.metadata"

@__mod_of__rockchip_efuse_match_device_table = dso_local alias [9 x %struct.of_device_id], ptr @rockchip_efuse_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rockchip_efuse_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rockchip_efuse_driver) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_rk3288_efuse_read(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #1 {
  %5 = getelementptr inbounds %struct.rockchip_efuse_chip, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_prepare(ptr noundef %6) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = tail call i32 @clk_enable(ptr noundef %6) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  tail call void @clk_unprepare(ptr noundef %6) #7
  br label %13

13:                                               ; preds = %12, %4
  %14 = phi i32 [ %7, %4 ], [ %10, %12 ]
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str) #8
  br label %58

18:                                               ; preds = %13, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  %19 = getelementptr inbounds %struct.rockchip_efuse_chip, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 12) #7, !srcloc !9
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #7
  %22 = icmp eq i32 %3, 0
  br i1 %22, label %55, label %23

23:                                               ; preds = %23, %18
  %24 = phi i32 [ %34, %23 ], [ %1, %18 ]
  %25 = phi i32 [ %27, %23 ], [ %3, %18 ]
  %26 = phi ptr [ %48, %23 ], [ %2, %18 ]
  %27 = add i32 %25, -1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %28 = load ptr, ptr %19, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %30 = and i32 %29, -65473
  %31 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %30) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %32 = load ptr, ptr %19, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %34 = add i32 %24, 1
  %35 = shl i32 %24, 6
  %36 = and i32 %35, 65472
  %37 = or i32 %33, %36
  %38 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %37) #7, !srcloc !9
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !15
  tail call void @arm_heavy_mb() #7
  %40 = load ptr, ptr %19, align 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  %42 = or i32 %41, 2
  %43 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %42) #7, !srcloc !9
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748) #7
  %45 = load ptr, ptr %19, align 4
  %46 = getelementptr i8, ptr %45, i32 4
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %46) #7, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %48 = getelementptr i8, ptr %26, i32 1
  store i8 %47, ptr %26, align 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %49 = load ptr, ptr %19, align 4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !20
  %51 = and i32 %50, -3
  %52 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %51) #7, !srcloc !9
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748) #7
  %54 = icmp eq i32 %27, 0
  br i1 %54, label %55, label %23

55:                                               ; preds = %23, %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %56 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 9) #7, !srcloc !9
  %57 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %57) #7
  tail call void @clk_unprepare(ptr noundef %57) #7
  br label %58

58:                                               ; preds = %55, %16
  %59 = phi i32 [ %14, %16 ], [ 0, %55 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_rk3328_efuse_read(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #1 {
  %5 = getelementptr inbounds %struct.rockchip_efuse_chip, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_prepare(ptr noundef %6) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = tail call i32 @clk_enable(ptr noundef %6) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  tail call void @clk_unprepare(ptr noundef %6) #7
  br label %13

13:                                               ; preds = %12, %4
  %14 = phi i32 [ %7, %4 ], [ %10, %12 ]
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str) #8
  br label %70

18:                                               ; preds = %13, %9
  %19 = phi i32 [ %14, %13 ], [ 0, %9 ]
  %20 = add i32 %1, 96
  %21 = and i32 %1, 3
  %22 = lshr i32 %20, 2
  %23 = add i32 %1, 99
  %24 = add i32 %23, %3
  %25 = lshr i32 %24, 2
  %26 = sub nsw i32 %25, %22
  %27 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %26, i32 4) #7
  %28 = extractvalue { i32, i1 } %27, 1
  %29 = extractvalue { i32, i1 } %27, 0
  %30 = select i1 %28, i32 -1, i32 %29
  %31 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %30, i32 noundef 3520) #9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %67, label %33

33:                                               ; preds = %18
  %34 = icmp eq i32 %25, %22
  br i1 %34, label %63, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.rockchip_efuse_chip, ptr %0, i32 0, i32 1
  br label %37

37:                                               ; preds = %52, %35
  %38 = phi i32 [ %26, %35 ], [ %53, %52 ]
  %39 = phi i32 [ %22, %35 ], [ %54, %52 ]
  %40 = phi i32 [ 0, %35 ], [ %61, %52 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !22
  tail call void @arm_heavy_mb() #7
  %41 = shl i32 %39, 16
  %42 = and i32 %41, 67043328
  %43 = or i32 %42, 3
  %44 = load ptr, ptr %36, align 4
  %45 = getelementptr i8, ptr %44, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #7, !srcloc !9
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 858992) #7
  %47 = load ptr, ptr %36, align 4
  %48 = getelementptr i8, ptr %47, i32 24
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !23
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %65, label %52

52:                                               ; preds = %37
  %53 = add i32 %38, -1
  %54 = add i32 %39, 1
  %55 = load ptr, ptr %36, align 4
  %56 = getelementptr i8, ptr %55, i32 32
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !24
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %58 = load ptr, ptr %36, align 4
  %59 = getelementptr i8, ptr %58, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 1) #7, !srcloc !9
  %60 = getelementptr i8, ptr %31, i32 %40
  store i32 %57, ptr %60, align 4
  %61 = add i32 %40, 4
  %62 = icmp eq i32 %53, 0
  br i1 %62, label %63, label %37

63:                                               ; preds = %52, %33
  %64 = getelementptr i8, ptr %31, i32 %21
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %2, ptr align 1 %64, i32 %3, i1 false)
  br label %65

65:                                               ; preds = %63, %37
  %66 = phi i32 [ %19, %63 ], [ -5, %37 ]
  tail call void @kfree(ptr noundef nonnull %31) #7
  br label %67

67:                                               ; preds = %65, %18
  %68 = phi i32 [ %66, %65 ], [ -12, %18 ]
  %69 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %69) #7
  tail call void @clk_unprepare(ptr noundef %69) #7
  br label %70

70:                                               ; preds = %67, %16
  %71 = phi i32 [ %14, %16 ], [ %68, %67 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_rk3399_efuse_read(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #1 {
  %5 = getelementptr inbounds %struct.rockchip_efuse_chip, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_prepare(ptr noundef %6) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = tail call i32 @clk_enable(ptr noundef %6) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  tail call void @clk_unprepare(ptr noundef %6) #7
  br label %13

13:                                               ; preds = %12, %4
  %14 = phi i32 [ %7, %4 ], [ %10, %12 ]
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str) #8
  br label %67

18:                                               ; preds = %13, %9
  %19 = and i32 %1, 3
  %20 = lshr i32 %1, 2
  %21 = add i32 %1, 3
  %22 = add i32 %21, %3
  %23 = lshr i32 %22, 2
  %24 = sub nsw i32 %23, %20
  %25 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %24, i32 4) #7
  %26 = extractvalue { i32, i1 } %25, 1
  %27 = extractvalue { i32, i1 } %25, 0
  %28 = select i1 %26, i32 -1, i32 %27
  %29 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %28, i32 noundef 3520) #9
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %32) #7
  tail call void @clk_unprepare(ptr noundef %32) #7
  br label %67

33:                                               ; preds = %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !26
  tail call void @arm_heavy_mb() #7
  %34 = getelementptr inbounds %struct.rockchip_efuse_chip, ptr %0, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 652) #7, !srcloc !9
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #7
  %37 = icmp eq i32 %24, 0
  br i1 %37, label %63, label %38

38:                                               ; preds = %38, %33
  %39 = phi i32 [ %45, %38 ], [ %20, %33 ]
  %40 = phi i32 [ %42, %38 ], [ %24, %33 ]
  %41 = phi i32 [ %61, %38 ], [ 0, %33 ]
  %42 = add i32 %40, -1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %43 = load ptr, ptr %34, align 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !28
  %45 = add i32 %39, 1
  %46 = shl i32 %39, 16
  %47 = and i32 %46, 67043328
  %48 = or i32 %47, %44
  %49 = or i32 %48, 2
  %50 = load ptr, ptr %34, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %49) #7, !srcloc !9
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748) #7
  %52 = load ptr, ptr %34, align 4
  %53 = getelementptr i8, ptr %52, i32 4
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !29
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %55 = load ptr, ptr %34, align 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !31
  %57 = and i32 %56, -3
  %58 = load ptr, ptr %34, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %57) #7, !srcloc !9
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748) #7
  %60 = getelementptr i8, ptr %29, i32 %41
  store i32 %54, ptr %60, align 4
  %61 = add i32 %41, 4
  %62 = icmp eq i32 %42, 0
  br i1 %62, label %63, label %38

63:                                               ; preds = %38, %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !32
  tail call void @arm_heavy_mb() #7
  %64 = load ptr, ptr %34, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 33) #7, !srcloc !9
  %65 = getelementptr i8, ptr %29, i32 %19
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %2, ptr align 1 %65, i32 %3, i1 false)
  tail call void @kfree(ptr noundef nonnull %29) #7
  %66 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %66) #7
  tail call void @clk_unprepare(ptr noundef %66) #7
  br label %67

67:                                               ; preds = %63, %31, %16
  %68 = phi i32 [ %14, %16 ], [ 0, %63 ], [ -12, %31 ]
  ret i32 %68
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_efuse_probe(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_device_get_match_data(ptr noundef %2) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #8
  br label %38

6:                                                ; preds = %1
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 12, i32 noundef 3520) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %38, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %11 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %10) #7
  %12 = getelementptr inbounds %struct.rockchip_efuse_chip, ptr %7, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = ptrtoint ptr %11 to i32
  br label %38

16:                                               ; preds = %9
  %17 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.3) #7
  %18 = getelementptr inbounds %struct.rockchip_efuse_chip, ptr %7, i32 0, i32 2
  store ptr %17, ptr %18, align 4
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = ptrtoint ptr %17 to i32
  br label %38

22:                                               ; preds = %16
  store ptr %2, ptr %7, align 4
  %23 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %24 = load ptr, ptr %23, align 8
  %25 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %24, ptr noundef nonnull @.str.4, ptr noundef getelementptr inbounds (%struct.nvmem_config, ptr @econfig, i32 0, i32 18), i32 noundef 1, i32 noundef 0) #7
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = load i32, ptr %10, align 4
  %31 = add i32 %29, 1
  %32 = sub i32 %31, %30
  store i32 %32, ptr getelementptr inbounds (%struct.nvmem_config, ptr @econfig, i32 0, i32 18), align 4
  br label %33

33:                                               ; preds = %27, %22
  store ptr %3, ptr getelementptr inbounds (%struct.nvmem_config, ptr @econfig, i32 0, i32 15), align 4
  store ptr %7, ptr getelementptr inbounds (%struct.nvmem_config, ptr @econfig, i32 0, i32 21), align 4
  store ptr %2, ptr @econfig, align 4
  %34 = tail call ptr @devm_nvmem_register(ptr noundef %2, ptr noundef nonnull @econfig) #7
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  %36 = ptrtoint ptr %34 to i32
  %37 = select i1 %35, i32 %36, i32 0
  br label %38

38:                                               ; preds = %33, %20, %14, %6, %5
  %39 = phi i32 [ %15, %14 ], [ %21, %20 ], [ %37, %33 ], [ -22, %5 ], [ -12, %6 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(0) }

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
!8 = !{i64 2151522167}
!9 = !{i64 3650898}
!10 = !{i64 2151523699}
!11 = !{i64 3651316}
!12 = !{i64 2151524207}
!13 = !{i64 2151525003}
!14 = !{i64 2151525521}
!15 = !{i64 2151526929}
!16 = !{i64 2151527439}
!17 = !{i64 3651096}
!18 = !{i64 2151528223}
!19 = !{i64 2151529069}
!20 = !{i64 2151529593}
!21 = !{i64 2151530588}
!22 = !{i64 2151532321}
!23 = !{i64 2151533535}
!24 = !{i64 2151533969}
!25 = !{i64 2151534270}
!26 = !{i64 2151536115}
!27 = !{i64 2151537896}
!28 = !{i64 2151538450}
!29 = !{i64 2151539412}
!30 = !{i64 2151540249}
!31 = !{i64 2151540764}
!32 = !{i64 2151541754}
