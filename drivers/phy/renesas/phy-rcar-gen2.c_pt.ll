; ModuleID = '/llk/IR/drivers/phy/renesas/phy-rcar-gen2.c_pt.bc'
source_filename = "../drivers/phy/renesas/phy-rcar-gen2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rcar_gen2_phy_data = type { ptr, ptr, i32 }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.rcar_gen2_phy = type { ptr, ptr, i32, i32 }
%struct.rcar_gen2_channel = type { ptr, ptr, [2 x %struct.rcar_gen2_phy], i32, i32 }
%struct.rcar_gen2_phy_driver = type { ptr, ptr, %struct.spinlock, i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@rcar_gen2_phy_match_table = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,usb-phy-r8a77470\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rz_g1c_usb_phy_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,usb-phy-r8a7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen2_usb_phy_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,usb-phy-r8a7791\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen2_usb_phy_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,usb-phy-r8a7794\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen2_usb_phy_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen2_usb_phy_data }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_license248 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [35 x i8] c"description=Renesas R-Car Gen2 PHY\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [60 x i8] c"author=Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>\00", section ".modinfo", align 1
@rz_g1c_usb_phy_data = internal constant %struct.rcar_gen2_phy_data { ptr @rz_g1c_phy_ops, ptr @usb20_select_value, i32 1 }, align 4
@rcar_gen2_usb_phy_data = internal constant %struct.rcar_gen2_phy_data { ptr @rcar_gen2_phy_ops, ptr @pci_select_value, i32 3 }, align 4
@rz_g1c_phy_ops = internal constant %struct.phy_ops { ptr @rcar_gen2_phy_init, ptr @rcar_gen2_phy_exit, ptr @rz_g1c_phy_power_on, ptr @rz_g1c_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @__this_module }, align 4
@usb20_select_value = internal constant [1 x [2 x i32]] [[2 x i32] [i32 16, i32 32]], align 4
@__this_module = external dso_local global %struct.module, align 64
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rcar_gen2_phy_ops = internal constant %struct.phy_ops { ptr @rcar_gen2_phy_init, ptr @rcar_gen2_phy_exit, ptr @rcar_gen2_phy_power_on, ptr @rcar_gen2_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @__this_module }, align 4
@pci_select_value = internal constant [3 x [2 x i32]] [[2 x i32] [i32 16, i32 48], [2 x i32] zeroinitializer, [2 x i32] [i32 0, i32 -2147483648]], align 4
@rcar_gen2_phy_driver = internal global %struct.platform_driver { ptr @rcar_gen2_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rcar_gen2_phy_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [14 x i8] c"phy_rcar_gen2\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"This driver is required to be instantiated from device tree\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"usbhs\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Can't get USBHS clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Invalid \22reg\22 property\0A\00", align 1
@select_mask = internal unnamed_addr constant [3 x i32] [i32 48, i32 0, i32 -2147483648], align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"Failed to create PHY\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Failed to register PHY provider\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_license248], section "llvm.metadata"

@__mod_of__rcar_gen2_phy_match_table_device_table = dso_local alias [6 x %struct.of_device_id], ptr @rcar_gen2_phy_match_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rcar_gen2_phy_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rcar_gen2_phy_driver) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_gen2_phy_init(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rcar_gen2_phy, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rcar_gen2_channel, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rcar_gen2_channel, ptr %5, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !8
  %9 = getelementptr inbounds %struct.rcar_gen2_phy, ptr %3, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #7, !srcloc !9
  br label %11

11:                                               ; preds = %11, %1
  %12 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %8, i32 -1, i32 %10) #7, !srcloc !10
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %11

15:                                               ; preds = %11
  %16 = extractvalue { i32, i32 } %12, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %42

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.rcar_gen2_phy_driver, ptr %7, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @clk_prepare(ptr noundef %20) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = tail call i32 @clk_enable(ptr noundef %20) #7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @clk_unprepare(ptr noundef %20) #7
  br label %27

27:                                               ; preds = %26, %23, %18
  %28 = getelementptr inbounds %struct.rcar_gen2_phy_driver, ptr %7, i32 0, i32 2
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #7
  %30 = load ptr, ptr %7, align 4
  %31 = getelementptr i8, ptr %30, i32 132
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %33 = getelementptr inbounds %struct.rcar_gen2_channel, ptr %5, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %32, %35
  %37 = getelementptr inbounds %struct.rcar_gen2_phy, ptr %3, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = or i32 %36, %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %40 = load ptr, ptr %7, align 4
  %41 = getelementptr i8, ptr %40, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #7, !srcloc !15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %29) #7
  br label %42

42:                                               ; preds = %27, %15
  %43 = phi i32 [ 0, %27 ], [ -16, %15 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_gen2_phy_exit(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rcar_gen2_phy, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rcar_gen2_channel, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rcar_gen2_phy_driver, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #7
  tail call void @clk_unprepare(ptr noundef %9) #7
  %10 = getelementptr inbounds %struct.rcar_gen2_channel, ptr %5, i32 0, i32 3
  store i32 -1, ptr %10, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rz_g1c_phy_power_on(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rcar_gen2_phy, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rcar_gen2_channel, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rcar_gen2_phy_driver, ptr %7, i32 0, i32 2
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #7
  %11 = getelementptr i8, ptr %8, i32 128
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  %13 = and i32 %12, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %13) #7, !srcloc !15
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 73014320) #7
  %15 = getelementptr inbounds %struct.rcar_gen2_phy, ptr %3, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 32
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = getelementptr i8, ptr %8, i32 2
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %19) #7, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !19
  %21 = or i16 %20, 16384
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %19, i16 %21) #7, !srcloc !21
  br label %22

22:                                               ; preds = %18, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rz_g1c_phy_power_off(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rcar_gen2_phy, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rcar_gen2_channel, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rcar_gen2_phy_driver, ptr %7, i32 0, i32 2
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #7
  %11 = getelementptr inbounds %struct.rcar_gen2_phy, ptr %3, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 32
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = getelementptr i8, ptr %8, i32 2
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %15) #7, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  %17 = and i16 %16, -16385
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %15, i16 %17) #7, !srcloc !21
  br label %18

18:                                               ; preds = %14, %1
  %19 = getelementptr i8, ptr %8, i32 128
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !24
  %21 = or i32 %20, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %21) #7, !srcloc !15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_gen2_phy_power_on(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rcar_gen2_phy, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 48
  br i1 %6, label %7, label %36

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rcar_gen2_phy, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rcar_gen2_channel, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.rcar_gen2_phy_driver, ptr %11, i32 0, i32 2
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #7
  %15 = getelementptr i8, ptr %12, i32 128
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !26
  %17 = and i32 %16, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %17) #7, !srcloc !15
  %18 = getelementptr i8, ptr %12, i32 2
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %18) #7, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !28
  %20 = or i16 %19, 16384
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !29
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %18, i16 %20) #7, !srcloc !21
  %21 = getelementptr i8, ptr %12, i32 136
  br label %22

22:                                               ; preds = %30, %7
  %23 = phi i32 [ 0, %7 ], [ %32, %30 ]
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !30
  %25 = and i32 %24, 256
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !31
  %29 = or i32 %28, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !32
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %29) #7, !srcloc !15
  br label %34

30:                                               ; preds = %22
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748) #7
  %32 = add nuw nsw i32 %23, 1
  %33 = icmp eq i32 %32, 20
  br i1 %33, label %34, label %22

34:                                               ; preds = %30, %27
  %35 = phi i32 [ 0, %27 ], [ -110, %30 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %14) #7
  br label %36

36:                                               ; preds = %34, %1
  %37 = phi i32 [ %35, %34 ], [ 0, %1 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_gen2_phy_power_off(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rcar_gen2_phy, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 48
  br i1 %6, label %7, label %23

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rcar_gen2_phy, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rcar_gen2_channel, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.rcar_gen2_phy_driver, ptr %11, i32 0, i32 2
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #7
  %15 = getelementptr i8, ptr %12, i32 128
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !33
  %17 = and i32 %16, -5
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %17) #7, !srcloc !15
  %18 = getelementptr i8, ptr %12, i32 2
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %18) #7, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !35
  %20 = and i16 %19, -16385
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !36
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %18, i16 %20) #7, !srcloc !21
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !37
  %22 = or i32 %21, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !38
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %22) #7, !srcloc !15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %14) #7
  br label %23

23:                                               ; preds = %7, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_gen2_phy_probe(ptr noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #8
  br label %126

8:                                                ; preds = %1
  %9 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.2) #7
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #8
  %12 = ptrtoint ptr %9 to i32
  br label %126

13:                                               ; preds = %8
  %14 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #7
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = ptrtoint ptr %14 to i32
  br label %126

18:                                               ; preds = %13
  %19 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 20, i32 noundef 3520) #7
  %20 = icmp eq ptr %19, null
  br i1 %20, label %126, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.rcar_gen2_phy_driver, ptr %19, i32 0, i32 2
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.rcar_gen2_phy_driver, ptr %19, i32 0, i32 1
  store ptr %9, ptr %23, align 4
  store ptr %14, ptr %19, align 4
  %24 = tail call ptr @of_device_get_match_data(ptr noundef %3) #7
  %25 = icmp eq ptr %24, null
  br i1 %25, label %126, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %4, align 8
  %28 = tail call ptr @of_get_next_child(ptr noundef %27, ptr noundef null) #7
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %30, %26
  %31 = phi i32 [ %33, %30 ], [ 0, %26 ]
  %32 = phi ptr [ %34, %30 ], [ %28, %26 ]
  %33 = add i32 %31, 1
  %34 = tail call ptr @of_get_next_child(ptr noundef %27, ptr noundef nonnull %32) #7
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %30

36:                                               ; preds = %30, %26
  %37 = phi i32 [ 0, %26 ], [ %33, %30 ]
  %38 = getelementptr inbounds %struct.rcar_gen2_phy_driver, ptr %19, i32 0, i32 3
  store i32 %37, ptr %38, align 4
  %39 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %37, i32 48) #7
  %40 = extractvalue { i32, i1 } %39, 1
  br i1 %40, label %41, label %43, !prof !39

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.rcar_gen2_phy_driver, ptr %19, i32 0, i32 4
  store ptr null, ptr %42, align 4
  br label %126

43:                                               ; preds = %36
  %44 = extractvalue { i32, i1 } %39, 0
  %45 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %44, i32 noundef 3520) #7
  %46 = getelementptr inbounds %struct.rcar_gen2_phy_driver, ptr %19, i32 0, i32 4
  store ptr %45, ptr %46, align 4
  %47 = icmp eq ptr %45, null
  br i1 %47, label %126, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr %4, align 8
  %50 = tail call ptr @of_get_next_child(ptr noundef %49, ptr noundef null) #7
  %51 = icmp eq ptr %50, null
  br i1 %51, label %119, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.rcar_gen2_phy_data, ptr %24, i32 0, i32 2
  %54 = getelementptr inbounds %struct.rcar_gen2_phy_data, ptr %24, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !40
  store ptr %50, ptr %45, align 4
  %55 = getelementptr %struct.rcar_gen2_channel, ptr %45, i32 0, i32 1
  store ptr %19, ptr %55, align 4
  %56 = getelementptr %struct.rcar_gen2_channel, ptr %45, i32 0, i32 3
  store i32 -1, ptr %56, align 4
  %57 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %50, ptr noundef nonnull @.str.4, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #7
  %58 = icmp sgt i32 %57, -1
  br i1 %58, label %59, label %68

59:                                               ; preds = %109, %52
  %60 = phi i32 [ %115, %109 ], [ %57, %52 ]
  %61 = phi ptr [ %112, %109 ], [ %45, %52 ]
  %62 = phi ptr [ %107, %109 ], [ %50, %52 ]
  %63 = phi i32 [ %110, %109 ], [ 0, %52 ]
  %64 = phi ptr [ %111, %109 ], [ %45, %52 ]
  %65 = load i32, ptr %2, align 4
  %66 = load i32, ptr %53, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %109, %59, %52
  %69 = phi ptr [ %50, %52 ], [ %62, %59 ], [ %107, %109 ]
  %70 = phi i32 [ %57, %52 ], [ %60, %59 ], [ %115, %109 ]
  %71 = call i32 @llvm.smin.i32(i32 %70, i32 0) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #8
  call void @of_node_put(ptr noundef nonnull %69) #7
  br label %117

72:                                               ; preds = %59
  %73 = getelementptr [3 x i32], ptr @select_mask, i32 0, i32 %65
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr %struct.rcar_gen2_channel, ptr %64, i32 %63, i32 4
  store i32 %74, ptr %75, align 4
  %76 = getelementptr %struct.rcar_gen2_channel, ptr %64, i32 %63, i32 2, i32 0
  %77 = getelementptr %struct.rcar_gen2_channel, ptr %64, i32 %63, i32 2, i32 0, i32 1
  store ptr %61, ptr %77, align 4
  %78 = getelementptr %struct.rcar_gen2_channel, ptr %64, i32 %63, i32 2, i32 0, i32 2
  store i32 0, ptr %78, align 4
  %79 = load ptr, ptr %54, align 4
  %80 = load i32, ptr %2, align 4
  %81 = getelementptr [2 x i32], ptr %79, i32 %80, i32 0
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr %struct.rcar_gen2_channel, ptr %64, i32 %63, i32 2, i32 0, i32 3
  store i32 %82, ptr %83, align 4
  %84 = load ptr, ptr %24, align 4
  %85 = call ptr @devm_phy_create(ptr noundef %3, ptr noundef null, ptr noundef %84) #7
  store ptr %85, ptr %76, align 4
  %86 = icmp ugt ptr %85, inttoptr (i32 -4096 to ptr)
  br i1 %86, label %87, label %91

87:                                               ; preds = %91, %72
  %88 = phi ptr [ %76, %72 ], [ %93, %91 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #8
  call void @of_node_put(ptr noundef nonnull %62) #7
  %89 = load ptr, ptr %88, align 4
  %90 = ptrtoint ptr %89 to i32
  br label %117

91:                                               ; preds = %72
  %92 = getelementptr inbounds %struct.device, ptr %85, i32 0, i32 8
  store ptr %76, ptr %92, align 8
  %93 = getelementptr %struct.rcar_gen2_channel, ptr %64, i32 %63, i32 2, i32 1
  %94 = getelementptr %struct.rcar_gen2_channel, ptr %64, i32 %63, i32 2, i32 1, i32 1
  store ptr %61, ptr %94, align 4
  %95 = getelementptr %struct.rcar_gen2_channel, ptr %64, i32 %63, i32 2, i32 1, i32 2
  store i32 1, ptr %95, align 4
  %96 = load ptr, ptr %54, align 4
  %97 = load i32, ptr %2, align 4
  %98 = getelementptr [2 x i32], ptr %96, i32 %97, i32 1
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr %struct.rcar_gen2_channel, ptr %64, i32 %63, i32 2, i32 1, i32 3
  store i32 %99, ptr %100, align 4
  %101 = load ptr, ptr %24, align 4
  %102 = call ptr @devm_phy_create(ptr noundef %3, ptr noundef null, ptr noundef %101) #7
  store ptr %102, ptr %93, align 4
  %103 = icmp ugt ptr %102, inttoptr (i32 -4096 to ptr)
  br i1 %103, label %87, label %104

104:                                              ; preds = %91
  %105 = getelementptr inbounds %struct.device, ptr %102, i32 0, i32 8
  store ptr %93, ptr %105, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %106 = load ptr, ptr %4, align 8
  %107 = call ptr @of_get_next_child(ptr noundef %106, ptr noundef nonnull %62) #7
  %108 = icmp eq ptr %107, null
  br i1 %108, label %119, label %109

109:                                              ; preds = %104
  %110 = add i32 %63, 1
  %111 = load ptr, ptr %46, align 4
  %112 = getelementptr %struct.rcar_gen2_channel, ptr %111, i32 %110
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !40
  store ptr %107, ptr %112, align 4
  %113 = getelementptr %struct.rcar_gen2_channel, ptr %111, i32 %110, i32 1
  store ptr %19, ptr %113, align 4
  %114 = getelementptr %struct.rcar_gen2_channel, ptr %111, i32 %110, i32 3
  store i32 -1, ptr %114, align 4
  %115 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %107, ptr noundef nonnull @.str.4, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #7
  %116 = icmp sgt i32 %115, -1
  br i1 %116, label %59, label %68

117:                                              ; preds = %87, %68
  %118 = phi i32 [ %90, %87 ], [ %71, %68 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %126

119:                                              ; preds = %104, %48
  %120 = call ptr @__devm_of_phy_provider_register(ptr noundef %3, ptr noundef null, ptr noundef nonnull @__this_module, ptr noundef nonnull @rcar_gen2_phy_xlate) #7
  %121 = icmp ugt ptr %120, inttoptr (i32 -4096 to ptr)
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #8
  %123 = ptrtoint ptr %120 to i32
  br label %126

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %19, ptr %125, align 8
  br label %126

126:                                              ; preds = %124, %122, %117, %43, %41, %21, %18, %16, %11, %7
  %127 = phi i32 [ %12, %11 ], [ %17, %16 ], [ %123, %122 ], [ 0, %124 ], [ -22, %7 ], [ -12, %18 ], [ -22, %21 ], [ -12, %43 ], [ -12, %41 ], [ %118, %117 ]
  ret i32 %127
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal ptr @rcar_gen2_phy_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rcar_gen2_phy_driver, ptr %5, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rcar_gen2_phy_driver, ptr %5, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %19, %11
  %15 = phi i32 [ 0, %11 ], [ %20, %19 ]
  %16 = getelementptr %struct.rcar_gen2_channel, ptr %13, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %3, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = add nuw nsw i32 %15, 1
  %21 = icmp eq i32 %20, %9
  br i1 %21, label %29, label %14

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = icmp ugt i32 %24, 1
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = getelementptr %struct.rcar_gen2_channel, ptr %13, i32 %15, i32 2, i32 %24
  %28 = load ptr, ptr %27, align 4
  br label %29

29:                                               ; preds = %26, %22, %19, %7, %2
  %30 = phi ptr [ %28, %26 ], [ inttoptr (i32 -22 to ptr), %2 ], [ inttoptr (i32 -19 to ptr), %22 ], [ inttoptr (i32 -19 to ptr), %7 ], [ inttoptr (i32 -19 to ptr), %19 ]
  ret ptr %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!8 = !{i64 2153622067}
!9 = !{i64 449685, i64 2147939656, i64 2147939682, i64 2147939729, i64 2147939751, i64 2147939779, i64 2147939799}
!10 = !{i64 461856, i64 461877, i64 461900, i64 461919, i64 461938}
!11 = !{i64 2153622453}
!12 = !{i64 2485634}
!13 = !{i64 2153623147}
!14 = !{i64 2153623340}
!15 = !{i64 2485216}
!16 = !{i64 2153629620}
!17 = !{i64 2153629817}
!18 = !{i64 2484796}
!19 = !{i64 2153630824}
!20 = !{i64 2153631017}
!21 = !{i64 2484596}
!22 = !{i64 2153631828}
!23 = !{i64 2153632021}
!24 = !{i64 2153632469}
!25 = !{i64 2153632666}
!26 = !{i64 2153624160}
!27 = !{i64 2153624357}
!28 = !{i64 2153624805}
!29 = !{i64 2153624998}
!30 = !{i64 2153625446}
!31 = !{i64 2153625789}
!32 = !{i64 2153625986}
!33 = !{i64 2153627337}
!34 = !{i64 2153627534}
!35 = !{i64 2153627982}
!36 = !{i64 2153628175}
!37 = !{i64 2153628623}
!38 = !{i64 2153628820}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{!"auto-init"}
