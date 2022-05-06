; ModuleID = '/llk/IR/drivers/net/ethernet/realtek/r8169_phy_config.c_pt.bc'
source_filename = "../drivers/net/ethernet/realtek/r8169_phy_config.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phy_reg = type { i16, i16 }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
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
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }

@r8169_hw_phy_config.phy_configs = internal unnamed_addr constant [53 x ptr] [ptr @rtl8169s_hw_phy_config, ptr @rtl8169s_hw_phy_config, ptr @rtl8169sb_hw_phy_config, ptr @rtl8169scd_hw_phy_config, ptr @rtl8169sce_hw_phy_config, ptr @rtl8102e_hw_phy_config, ptr @rtl8102e_hw_phy_config, ptr @rtl8102e_hw_phy_config, ptr null, ptr @rtl8168bb_hw_phy_config, ptr @rtl8168bef_hw_phy_config, ptr null, ptr @rtl8401_hw_phy_config, ptr null, ptr @rtl8168bef_hw_phy_config, ptr @rtl8168cp_1_hw_phy_config, ptr @rtl8168c_1_hw_phy_config, ptr @rtl8168c_2_hw_phy_config, ptr @rtl8168c_3_hw_phy_config, ptr @rtl8168c_3_hw_phy_config, ptr @rtl8168cp_2_hw_phy_config, ptr @rtl8168cp_2_hw_phy_config, ptr @rtl8168d_1_hw_phy_config, ptr @rtl8168d_2_hw_phy_config, ptr @rtl8168d_4_hw_phy_config, ptr @rtl8105e_hw_phy_config, ptr @rtl8105e_hw_phy_config, ptr null, ptr @rtl8168e_1_hw_phy_config, ptr @rtl8168e_1_hw_phy_config, ptr @rtl8168e_2_hw_phy_config, ptr @rtl8168f_1_hw_phy_config, ptr @rtl8168f_2_hw_phy_config, ptr @rtl8402_hw_phy_config, ptr @rtl8411_hw_phy_config, ptr @rtl8106e_hw_phy_config, ptr @rtl8168g_1_hw_phy_config, ptr null, ptr @rtl8168g_2_hw_phy_config, ptr @rtl8168g_2_hw_phy_config, ptr @rtl8168g_2_hw_phy_config, ptr @rtl8168h_1_hw_phy_config, ptr @rtl8168h_2_hw_phy_config, ptr @rtl8168h_1_hw_phy_config, ptr @rtl8168h_2_hw_phy_config, ptr @rtl8168ep_1_hw_phy_config, ptr @rtl8168ep_2_hw_phy_config, ptr @rtl8168ep_2_hw_phy_config, ptr @rtl8117_hw_phy_config, ptr @rtl8117_hw_phy_config, ptr @rtl8125a_1_hw_phy_config, ptr @rtl8125a_2_hw_phy_config, ptr @rtl8125b_hw_phy_config], align 4
@rtl8169s_hw_phy_config.phy_reg_init = internal unnamed_addr constant [51 x %struct.phy_reg] [%struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 6, i16 110 }, %struct.phy_reg { i16 8, i16 1800 }, %struct.phy_reg { i16 21, i16 16384 }, %struct.phy_reg { i16 24, i16 26055 }, %struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 3, i16 161 }, %struct.phy_reg { i16 2, i16 8 }, %struct.phy_reg { i16 1, i16 288 }, %struct.phy_reg { i16 0, i16 4096 }, %struct.phy_reg { i16 4, i16 2048 }, %struct.phy_reg { i16 4, i16 0 }, %struct.phy_reg { i16 3, i16 -191 }, %struct.phy_reg { i16 2, i16 -8352 }, %struct.phy_reg { i16 1, i16 320 }, %struct.phy_reg { i16 0, i16 119 }, %struct.phy_reg { i16 4, i16 30720 }, %struct.phy_reg { i16 4, i16 28672 }, %struct.phy_reg { i16 3, i16 -32721 }, %struct.phy_reg { i16 2, i16 20226 }, %struct.phy_reg { i16 1, i16 1033 }, %struct.phy_reg { i16 0, i16 -3847 }, %struct.phy_reg { i16 4, i16 -26624 }, %struct.phy_reg { i16 4, i16 -28672 }, %struct.phy_reg { i16 3, i16 -8447 }, %struct.phy_reg { i16 2, i16 -8416 }, %struct.phy_reg { i16 1, i16 -107 }, %struct.phy_reg { i16 0, i16 -17920 }, %struct.phy_reg { i16 4, i16 -22528 }, %struct.phy_reg { i16 4, i16 -24576 }, %struct.phy_reg { i16 3, i16 -191 }, %struct.phy_reg { i16 2, i16 -8416 }, %struct.phy_reg { i16 1, i16 320 }, %struct.phy_reg { i16 0, i16 187 }, %struct.phy_reg { i16 4, i16 -18432 }, %struct.phy_reg { i16 4, i16 -20480 }, %struct.phy_reg { i16 3, i16 -8383 }, %struct.phy_reg { i16 2, i16 -9120 }, %struct.phy_reg { i16 1, i16 25408 }, %struct.phy_reg { i16 0, i16 125 }, %struct.phy_reg { i16 4, i16 -10240 }, %struct.phy_reg { i16 4, i16 -12288 }, %struct.phy_reg { i16 3, i16 -8447 }, %struct.phy_reg { i16 2, i16 -8416 }, %struct.phy_reg { i16 1, i16 4106 }, %struct.phy_reg { i16 0, i16 -24321 }, %struct.phy_reg { i16 4, i16 -2048 }, %struct.phy_reg { i16 4, i16 -4096 }, %struct.phy_reg { i16 31, i16 0 }, %struct.phy_reg { i16 11, i16 0 }, %struct.phy_reg { i16 0, i16 -28160 }], align 2
@rtl8169scd_hw_phy_config.phy_reg_init = internal unnamed_addr constant [35 x %struct.phy_reg] [%struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 4, i16 0 }, %struct.phy_reg { i16 3, i16 161 }, %struct.phy_reg { i16 2, i16 8 }, %struct.phy_reg { i16 1, i16 288 }, %struct.phy_reg { i16 0, i16 4096 }, %struct.phy_reg { i16 4, i16 2048 }, %struct.phy_reg { i16 4, i16 -28672 }, %struct.phy_reg { i16 3, i16 -32721 }, %struct.phy_reg { i16 2, i16 20226 }, %struct.phy_reg { i16 1, i16 1033 }, %struct.phy_reg { i16 0, i16 -3943 }, %struct.phy_reg { i16 4, i16 -26624 }, %struct.phy_reg { i16 4, i16 -24576 }, %struct.phy_reg { i16 3, i16 -8447 }, %struct.phy_reg { i16 2, i16 -8416 }, %struct.phy_reg { i16 1, i16 -107 }, %struct.phy_reg { i16 0, i16 -17920 }, %struct.phy_reg { i16 4, i16 -22528 }, %struct.phy_reg { i16 4, i16 -4096 }, %struct.phy_reg { i16 3, i16 -8447 }, %struct.phy_reg { i16 2, i16 -8416 }, %struct.phy_reg { i16 1, i16 4122 }, %struct.phy_reg { i16 0, i16 -24321 }, %struct.phy_reg { i16 4, i16 -2048 }, %struct.phy_reg { i16 4, i16 0 }, %struct.phy_reg { i16 31, i16 0 }, %struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 16, i16 -3045 }, %struct.phy_reg { i16 20, i16 -1196 }, %struct.phy_reg { i16 24, i16 -2617 }, %struct.phy_reg { i16 31, i16 0 }, %struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 23, i16 3264 }, %struct.phy_reg { i16 31, i16 0 }], align 2
@rtl8169sce_hw_phy_config.phy_reg_init = internal unnamed_addr constant [42 x %struct.phy_reg] [%struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 4, i16 0 }, %struct.phy_reg { i16 3, i16 161 }, %struct.phy_reg { i16 2, i16 8 }, %struct.phy_reg { i16 1, i16 288 }, %struct.phy_reg { i16 0, i16 4096 }, %struct.phy_reg { i16 4, i16 2048 }, %struct.phy_reg { i16 4, i16 -28672 }, %struct.phy_reg { i16 3, i16 -32721 }, %struct.phy_reg { i16 2, i16 20226 }, %struct.phy_reg { i16 1, i16 1033 }, %struct.phy_reg { i16 0, i16 -3943 }, %struct.phy_reg { i16 4, i16 -26624 }, %struct.phy_reg { i16 4, i16 -24576 }, %struct.phy_reg { i16 3, i16 -8447 }, %struct.phy_reg { i16 2, i16 -8416 }, %struct.phy_reg { i16 1, i16 -107 }, %struct.phy_reg { i16 0, i16 -17920 }, %struct.phy_reg { i16 4, i16 -22528 }, %struct.phy_reg { i16 4, i16 -4096 }, %struct.phy_reg { i16 3, i16 -8447 }, %struct.phy_reg { i16 2, i16 -8416 }, %struct.phy_reg { i16 1, i16 4122 }, %struct.phy_reg { i16 0, i16 -24321 }, %struct.phy_reg { i16 4, i16 -2048 }, %struct.phy_reg { i16 4, i16 0 }, %struct.phy_reg { i16 31, i16 0 }, %struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 11, i16 -31616 }, %struct.phy_reg { i16 31, i16 0 }, %struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 24, i16 26567 }, %struct.phy_reg { i16 4, i16 8192 }, %struct.phy_reg { i16 3, i16 47 }, %struct.phy_reg { i16 2, i16 17248 }, %struct.phy_reg { i16 1, i16 265 }, %struct.phy_reg { i16 0, i16 12322 }, %struct.phy_reg { i16 4, i16 10240 }, %struct.phy_reg { i16 31, i16 0 }, %struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 23, i16 3264 }, %struct.phy_reg { i16 31, i16 0 }], align 2
@rtl8168c_1_hw_phy_config.phy_reg_init = internal unnamed_addr constant [17 x %struct.phy_reg] [%struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 18, i16 8960 }, %struct.phy_reg { i16 31, i16 2 }, %struct.phy_reg { i16 0, i16 -30508 }, %struct.phy_reg { i16 1, i16 -32079 }, %struct.phy_reg { i16 3, i16 28674 }, %struct.phy_reg { i16 8, i16 -25040 }, %struct.phy_reg { i16 9, i16 496 }, %struct.phy_reg { i16 10, i16 21760 }, %struct.phy_reg { i16 12, i16 200 }, %struct.phy_reg { i16 31, i16 3 }, %struct.phy_reg { i16 18, i16 -16234 }, %struct.phy_reg { i16 22, i16 10 }, %struct.phy_reg { i16 31, i16 0 }, %struct.phy_reg { i16 31, i16 0 }, %struct.phy_reg { i16 9, i16 8192 }, %struct.phy_reg { i16 9, i16 0 }], align 2
@rtl8168c_2_hw_phy_config.phy_reg_init = internal unnamed_addr constant [15 x %struct.phy_reg] [%struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 18, i16 8960 }, %struct.phy_reg { i16 3, i16 -32721 }, %struct.phy_reg { i16 2, i16 20226 }, %struct.phy_reg { i16 1, i16 1033 }, %struct.phy_reg { i16 0, i16 -3943 }, %struct.phy_reg { i16 4, i16 -26624 }, %struct.phy_reg { i16 4, i16 -28672 }, %struct.phy_reg { i16 29, i16 15768 }, %struct.phy_reg { i16 31, i16 2 }, %struct.phy_reg { i16 12, i16 32440 }, %struct.phy_reg { i16 6, i16 1889 }, %struct.phy_reg { i16 31, i16 3 }, %struct.phy_reg { i16 22, i16 3850 }, %struct.phy_reg { i16 31, i16 0 }], align 2
@rtl8168d_1_phy_reg_init_0 = internal unnamed_addr constant [26 x %struct.phy_reg] [%struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 6, i16 16484 }, %struct.phy_reg { i16 7, i16 10339 }, %struct.phy_reg { i16 8, i16 1436 }, %struct.phy_reg { i16 9, i16 9908 }, %struct.phy_reg { i16 10, i16 27161 }, %struct.phy_reg { i16 11, i16 -9016 }, %struct.phy_reg { i16 16, i16 -3987 }, %struct.phy_reg { i16 20, i16 32616 }, %struct.phy_reg { i16 24, i16 32729 }, %struct.phy_reg { i16 28, i16 -3841 }, %struct.phy_reg { i16 29, i16 15772 }, %struct.phy_reg { i16 31, i16 3 }, %struct.phy_reg { i16 18, i16 -2913 }, %struct.phy_reg { i16 19, i16 1803 }, %struct.phy_reg { i16 26, i16 1453 }, %struct.phy_reg { i16 20, i16 -27456 }, %struct.phy_reg { i16 31, i16 2 }, %struct.phy_reg { i16 6, i16 21857 }, %struct.phy_reg { i16 31, i16 5 }, %struct.phy_reg { i16 5, i16 -31950 }, %struct.phy_reg { i16 6, i16 21857 }, %struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 23, i16 3264 }, %struct.phy_reg { i16 31, i16 0 }, %struct.phy_reg { i16 13, i16 -1920 }], align 2
@.str = private unnamed_addr constant [32 x i8] c"chipset not ready for firmware\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @r8169_hw_phy_config(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr [53 x ptr], ptr @r8169_hw_phy_config.phy_configs, i32 0, i32 %2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void %5(ptr noundef %0, ptr noundef %1) #3
  br label %8

8:                                                ; preds = %7, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8169s_hw_phy_config(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mii_bus, ptr %4, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %5) #3
  %6 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  br label %7

7:                                                ; preds = %7, %2
  %8 = phi i32 [ 51, %2 ], [ %10, %7 ]
  %9 = phi ptr [ @rtl8169s_hw_phy_config.phy_reg_init, %2 ], [ %18, %7 ]
  %10 = add nsw i32 %8, -1
  %11 = load i16, ptr %9, align 2
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.phy_reg, ptr %9, i32 0, i32 1
  %14 = load i16, ptr %13, align 2
  %15 = load ptr, ptr %3, align 8
  %16 = load i32, ptr %6, align 8
  %17 = tail call i32 @__mdiobus_write(ptr noundef %15, i32 noundef %16, i32 noundef %12, i16 noundef zeroext %14) #3
  %18 = getelementptr %struct.phy_reg, ptr %9, i32 1
  %19 = icmp ugt i32 %8, 1
  br i1 %19, label %7, label %20

20:                                               ; preds = %7
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.mii_bus, ptr %21, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %22) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8169sb_hw_phy_config(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @phy_write_paged(ptr noundef %1, i32 noundef 2, i32 noundef 1, i16 noundef zeroext -28464) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8169scd_hw_phy_config(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mii_bus, ptr %4, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %5) #3
  %6 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  br label %7

7:                                                ; preds = %7, %2
  %8 = phi i32 [ 35, %2 ], [ %10, %7 ]
  %9 = phi ptr [ @rtl8169scd_hw_phy_config.phy_reg_init, %2 ], [ %18, %7 ]
  %10 = add nsw i32 %8, -1
  %11 = load i16, ptr %9, align 2
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.phy_reg, ptr %9, i32 0, i32 1
  %14 = load i16, ptr %13, align 2
  %15 = load ptr, ptr %3, align 8
  %16 = load i32, ptr %6, align 8
  %17 = tail call i32 @__mdiobus_write(ptr noundef %15, i32 noundef %16, i32 noundef %12, i16 noundef zeroext %14) #3
  %18 = getelementptr %struct.phy_reg, ptr %9, i32 1
  %19 = icmp ugt i32 %8, 1
  br i1 %19, label %7, label %20

20:                                               ; preds = %7
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.mii_bus, ptr %21, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %22) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8169sce_hw_phy_config(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mii_bus, ptr %4, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %5) #3
  %6 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  br label %7

7:                                                ; preds = %7, %2
  %8 = phi i32 [ 42, %2 ], [ %10, %7 ]
  %9 = phi ptr [ @rtl8169sce_hw_phy_config.phy_reg_init, %2 ], [ %18, %7 ]
  %10 = add nsw i32 %8, -1
  %11 = load i16, ptr %9, align 2
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.phy_reg, ptr %9, i32 0, i32 1
  %14 = load i16, ptr %13, align 2
  %15 = load ptr, ptr %3, align 8
  %16 = load i32, ptr %6, align 8
  %17 = tail call i32 @__mdiobus_write(ptr noundef %15, i32 noundef %16, i32 noundef %12, i16 noundef zeroext %14) #3
  %18 = getelementptr %struct.phy_reg, ptr %9, i32 1
  %19 = icmp ugt i32 %8, 1
  br i1 %19, label %7, label %20

20:                                               ; preds = %7
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.mii_bus, ptr %21, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %22) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8102e_hw_phy_config(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @phy_modify(ptr noundef %1, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 4096) #3
  %4 = tail call i32 @phy_modify(ptr noundef %1, i32 noundef 25, i16 noundef zeroext 0, i16 noundef zeroext 8192) #3
  %5 = tail call i32 @phy_modify(ptr noundef %1, i32 noundef 16, i16 noundef zeroext 0, i16 noundef zeroext -32768) #3
  %6 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.mii_bus, ptr %7, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %8) #3
  %9 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  %10 = load ptr, ptr %6, align 8
  %11 = load i32, ptr %9, align 8
  %12 = tail call i32 @__mdiobus_write(ptr noundef %10, i32 noundef %11, i32 noundef 31, i16 noundef zeroext 3) #3
  %13 = load ptr, ptr %6, align 8
  %14 = load i32, ptr %9, align 8
  %15 = tail call i32 @__mdiobus_write(ptr noundef %13, i32 noundef %14, i32 noundef 8, i16 noundef zeroext 17437) #3
  %16 = load ptr, ptr %6, align 8
  %17 = load i32, ptr %9, align 8
  %18 = tail call i32 @__mdiobus_write(ptr noundef %16, i32 noundef %17, i32 noundef 1, i16 noundef zeroext -28416) #3
  %19 = load ptr, ptr %6, align 8
  %20 = load i32, ptr %9, align 8
  %21 = tail call i32 @__mdiobus_write(ptr noundef %19, i32 noundef %20, i32 noundef 31, i16 noundef zeroext 0) #3
  %22 = load ptr, ptr %6, align 8
  %23 = getelementptr inbounds %struct.mii_bus, ptr %22, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %23) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8168bb_hw_phy_config(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  %6 = load i32, ptr %5, align 8
  %7 = tail call i32 @mdiobus_write(ptr noundef %4, i32 noundef %6, i32 noundef 31, i16 noundef zeroext 1) #3
  %8 = tail call i32 @phy_modify(ptr noundef %1, i32 noundef 22, i16 noundef zeroext 0, i16 noundef zeroext 1) #3
  %9 = load ptr, ptr %3, align 8
  %10 = load i32, ptr %5, align 8
  %11 = tail call i32 @mdiobus_write(ptr noundef %9, i32 noundef %10, i32 noundef 16, i16 noundef zeroext -3045) #3
  %12 = load ptr, ptr %3, align 8
  %13 = load i32, ptr %5, align 8
  %14 = tail call i32 @mdiobus_write(ptr noundef %12, i32 noundef %13, i32 noundef 31, i16 noundef zeroext 0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8168bef_hw_phy_config(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @phy_write_paged(ptr noundef %1, i32 noundef 1, i32 noundef 16, i16 noundef zeroext -3045) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8401_hw_phy_config(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @phy_modify(ptr noundef %1, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 4096) #3
  %4 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2, i32 noundef 15, i16 noundef zeroext 0, i16 noundef zeroext 3) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8168cp_1_hw_phy_config(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  %6 = load i32, ptr %5, align 8
  %7 = tail call i32 @mdiobus_write(ptr noundef %4, i32 noundef %6, i32 noundef 29, i16 noundef zeroext 3840) #3
  %8 = tail call i32 @phy_write_paged(ptr noundef %1, i32 noundef 2, i32 noundef 12, i16 noundef zeroext 7880) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8168c_1_hw_phy_config(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mii_bus, ptr %4, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %5) #3
  %6 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  br label %7

7:                                                ; preds = %7, %2
  %8 = phi i32 [ 17, %2 ], [ %10, %7 ]
  %9 = phi ptr [ @rtl8168c_1_hw_phy_config.phy_reg_init, %2 ], [ %18, %7 ]
  %10 = add nsw i32 %8, -1
  %11 = load i16, ptr %9, align 2
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.phy_reg, ptr %9, i32 0, i32 1
  %14 = load i16, ptr %13, align 2
  %15 = load ptr, ptr %3, align 8
  %16 = load i32, ptr %6, align 8
  %17 = tail call i32 @__mdiobus_write(ptr noundef %15, i32 noundef %16, i32 noundef %12, i16 noundef zeroext %14) #3
  %18 = getelementptr %struct.phy_reg, ptr %9, i32 1
  %19 = icmp ugt i32 %8, 1
  br i1 %19, label %7, label %20

20:                                               ; preds = %7
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.mii_bus, ptr %21, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %22) #3
  %23 = tail call i32 @phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext 32) #3
  %24 = tail call i32 @phy_modify(ptr noundef %1, i32 noundef 13, i16 noundef zeroext 0, i16 noundef zeroext 32) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8168c_2_hw_phy_config(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mii_bus, ptr %4, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %5) #3
  %6 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  br label %7

7:                                                ; preds = %7, %2
  %8 = phi i32 [ 15, %2 ], [ %10, %7 ]
  %9 = phi ptr [ @rtl8168c_2_hw_phy_config.phy_reg_init, %2 ], [ %18, %7 ]
  %10 = add nsw i32 %8, -1
  %11 = load i16, ptr %9, align 2
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.phy_reg, ptr %9, i32 0, i32 1
  %14 = load i16, ptr %13, align 2
  %15 = load ptr, ptr %3, align 8
  %16 = load i32, ptr %6, align 8
  %17 = tail call i32 @__mdiobus_write(ptr noundef %15, i32 noundef %16, i32 noundef %12, i16 noundef zeroext %14) #3
  %18 = getelementptr %struct.phy_reg, ptr %9, i32 1
  %19 = icmp ugt i32 %8, 1
  br i1 %19, label %7, label %20

20:                                               ; preds = %7
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.mii_bus, ptr %21, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %22) #3
  %23 = tail call i32 @phy_modify(ptr noundef %1, i32 noundef 22, i16 noundef zeroext 0, i16 noundef zeroext 1) #3
  %24 = tail call i32 @phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext 32) #3
  %25 = tail call i32 @phy_modify(ptr noundef %1, i32 noundef 13, i16 noundef zeroext 0, i16 noundef zeroext 32) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8168c_3_hw_phy_config(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mii_bus, ptr %4, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %5) #3
  %6 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  %7 = load ptr, ptr %3, align 8
  %8 = load i32, ptr %6, align 8
  %9 = tail call i32 @__mdiobus_write(ptr noundef %7, i32 noundef %8, i32 noundef 31, i16 noundef zeroext 1) #3
  %10 = load ptr, ptr %3, align 8
  %11 = load i32, ptr %6, align 8
  %12 = tail call i32 @__mdiobus_write(ptr noundef %10, i32 noundef %11, i32 noundef 18, i16 noundef zeroext 8960) #3
  %13 = load ptr, ptr %3, align 8
  %14 = load i32, ptr %6, align 8
  %15 = tail call i32 @__mdiobus_write(ptr noundef %13, i32 noundef %14, i32 noundef 29, i16 noundef zeroext 15768) #3
  %16 = load ptr, ptr %3, align 8
  %17 = load i32, ptr %6, align 8
  %18 = tail call i32 @__mdiobus_write(ptr noundef %16, i32 noundef %17, i32 noundef 31, i16 noundef zeroext 2) #3
  %19 = load ptr, ptr %3, align 8
  %20 = load i32, ptr %6, align 8
  %21 = tail call i32 @__mdiobus_write(ptr noundef %19, i32 noundef %20, i32 noundef 12, i16 noundef zeroext 32440) #3
  %22 = load ptr, ptr %3, align 8
  %23 = load i32, ptr %6, align 8
  %24 = tail call i32 @__mdiobus_write(ptr noundef %22, i32 noundef %23, i32 noundef 6, i16 noundef zeroext 21601) #3
  %25 = load ptr, ptr %3, align 8
  %26 = load i32, ptr %6, align 8
  %27 = tail call i32 @__mdiobus_write(ptr noundef %25, i32 noundef %26, i32 noundef 31, i16 noundef zeroext 3) #3
  %28 = load ptr, ptr %3, align 8
  %29 = load i32, ptr %6, align 8
  %30 = tail call i32 @__mdiobus_write(ptr noundef %28, i32 noundef %29, i32 noundef 22, i16 noundef zeroext 3850) #3
  %31 = load ptr, ptr %3, align 8
  %32 = load i32, ptr %6, align 8
  %33 = tail call i32 @__mdiobus_write(ptr noundef %31, i32 noundef %32, i32 noundef 31, i16 noundef zeroext 0) #3
  %34 = load ptr, ptr %3, align 8
  %35 = getelementptr inbounds %struct.mii_bus, ptr %34, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %35) #3
  %36 = tail call i32 @phy_modify(ptr noundef %1, i32 noundef 22, i16 noundef zeroext 0, i16 noundef zeroext 1) #3
  %37 = tail call i32 @phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext 32) #3
  %38 = tail call i32 @phy_modify(ptr noundef %1, i32 noundef 13, i16 noundef zeroext 0, i16 noundef zeroext 32) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8168cp_2_hw_phy_config(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext 32) #3
  %4 = tail call i32 @phy_modify(ptr noundef %1, i32 noundef 13, i16 noundef zeroext 0, i16 noundef zeroext 32) #3
  %5 = tail call i32 @phy_write_paged(ptr noundef %1, i32 noundef 1, i32 noundef 29, i16 noundef zeroext 15768) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8168d_1_hw_phy_config(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mii_bus, ptr %4, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %5) #3
  %6 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  br label %7

7:                                                ; preds = %7, %2
  %8 = phi i32 [ 26, %2 ], [ %10, %7 ]
  %9 = phi ptr [ @rtl8168d_1_phy_reg_init_0, %2 ], [ %18, %7 ]
  %10 = add nsw i32 %8, -1
  %11 = load i16, ptr %9, align 2
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.phy_reg, ptr %9, i32 0, i32 1
  %14 = load i16, ptr %13, align 2
  %15 = load ptr, ptr %3, align 8
  %16 = load i32, ptr %6, align 8
  %17 = tail call i32 @__mdiobus_write(ptr noundef %15, i32 noundef %16, i32 noundef %12, i16 noundef zeroext %14) #3
  %18 = getelementptr %struct.phy_reg, ptr %9, i32 1
  %19 = icmp ugt i32 %8, 1
  br i1 %19, label %7, label %20

20:                                               ; preds = %7
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.mii_bus, ptr %21, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %22) #3
  %23 = load ptr, ptr %3, align 8
  %24 = load i32, ptr %6, align 8
  %25 = tail call i32 @mdiobus_write(ptr noundef %23, i32 noundef %24, i32 noundef 31, i16 noundef zeroext 2) #3
  %26 = tail call i32 @phy_modify(ptr noundef %1, i32 noundef 11, i16 noundef zeroext 239, i16 noundef zeroext 16) #3
  %27 = tail call i32 @phy_modify(ptr noundef %1, i32 noundef 12, i16 noundef zeroext 23808, i16 noundef zeroext -24064) #3
  %28 = tail call zeroext i8 @rtl8168d_efuse_read(ptr noundef %0, i32 noundef 1) #3
  %29 = icmp eq i8 %28, -79
  br i1 %29, label %30, label %103

30:                                               ; preds = %20
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr inbounds %struct.mii_bus, ptr %31, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %32) #3
  %33 = load ptr, ptr %3, align 8
  %34 = load i32, ptr %6, align 8
  %35 = tail call i32 @__mdiobus_write(ptr noundef %33, i32 noundef %34, i32 noundef 31, i16 noundef zeroext 2) #3
  %36 = load ptr, ptr %3, align 8
  %37 = load i32, ptr %6, align 8
  %38 = tail call i32 @__mdiobus_write(ptr noundef %36, i32 noundef %37, i32 noundef 5, i16 noundef zeroext 26266) #3
  %39 = load ptr, ptr %3, align 8
  %40 = load i32, ptr %6, align 8
  %41 = tail call i32 @__mdiobus_write(ptr noundef %39, i32 noundef %40, i32 noundef 31, i16 noundef zeroext 5) #3
  %42 = load ptr, ptr %3, align 8
  %43 = load i32, ptr %6, align 8
  %44 = tail call i32 @__mdiobus_write(ptr noundef %42, i32 noundef %43, i32 noundef 5, i16 noundef zeroext -31952) #3
  %45 = load ptr, ptr %3, align 8
  %46 = load i32, ptr %6, align 8
  %47 = tail call i32 @__mdiobus_write(ptr noundef %45, i32 noundef %46, i32 noundef 6, i16 noundef zeroext 26266) #3
  %48 = load ptr, ptr %3, align 8
  %49 = load i32, ptr %6, align 8
  %50 = tail call i32 @__mdiobus_write(ptr noundef %48, i32 noundef %49, i32 noundef 31, i16 noundef zeroext 2) #3
  %51 = load ptr, ptr %3, align 8
  %52 = getelementptr inbounds %struct.mii_bus, ptr %51, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %52) #3
  %53 = load ptr, ptr %3, align 8
  %54 = load i32, ptr %6, align 8
  %55 = tail call i32 @mdiobus_read(ptr noundef %53, i32 noundef %54, i32 noundef 13) #3
  %56 = and i32 %55, 255
  %57 = icmp eq i32 %56, 108
  br i1 %57, label %111, label %58

58:                                               ; preds = %30
  %59 = load ptr, ptr %3, align 8
  %60 = load i32, ptr %6, align 8
  %61 = tail call i32 @mdiobus_write(ptr noundef %59, i32 noundef %60, i32 noundef 31, i16 noundef zeroext 2) #3
  %62 = and i32 %55, 65280
  %63 = trunc i32 %62 to i16
  %64 = or i16 %63, 101
  %65 = load ptr, ptr %3, align 8
  %66 = load i32, ptr %6, align 8
  %67 = tail call i32 @mdiobus_write(ptr noundef %65, i32 noundef %66, i32 noundef 13, i16 noundef zeroext %64) #3
  %68 = trunc i32 %62 to i16
  %69 = or i16 %68, 102
  %70 = load ptr, ptr %3, align 8
  %71 = load i32, ptr %6, align 8
  %72 = tail call i32 @mdiobus_write(ptr noundef %70, i32 noundef %71, i32 noundef 13, i16 noundef zeroext %69) #3
  %73 = trunc i32 %62 to i16
  %74 = or i16 %73, 103
  %75 = load ptr, ptr %3, align 8
  %76 = load i32, ptr %6, align 8
  %77 = tail call i32 @mdiobus_write(ptr noundef %75, i32 noundef %76, i32 noundef 13, i16 noundef zeroext %74) #3
  %78 = trunc i32 %62 to i16
  %79 = or i16 %78, 104
  %80 = load ptr, ptr %3, align 8
  %81 = load i32, ptr %6, align 8
  %82 = tail call i32 @mdiobus_write(ptr noundef %80, i32 noundef %81, i32 noundef 13, i16 noundef zeroext %79) #3
  %83 = trunc i32 %62 to i16
  %84 = or i16 %83, 105
  %85 = load ptr, ptr %3, align 8
  %86 = load i32, ptr %6, align 8
  %87 = tail call i32 @mdiobus_write(ptr noundef %85, i32 noundef %86, i32 noundef 13, i16 noundef zeroext %84) #3
  %88 = trunc i32 %62 to i16
  %89 = or i16 %88, 106
  %90 = load ptr, ptr %3, align 8
  %91 = load i32, ptr %6, align 8
  %92 = tail call i32 @mdiobus_write(ptr noundef %90, i32 noundef %91, i32 noundef 13, i16 noundef zeroext %89) #3
  %93 = trunc i32 %62 to i16
  %94 = or i16 %93, 107
  %95 = load ptr, ptr %3, align 8
  %96 = load i32, ptr %6, align 8
  %97 = tail call i32 @mdiobus_write(ptr noundef %95, i32 noundef %96, i32 noundef 13, i16 noundef zeroext %94) #3
  %98 = trunc i32 %62 to i16
  %99 = or i16 %98, 108
  %100 = load ptr, ptr %3, align 8
  %101 = load i32, ptr %6, align 8
  %102 = tail call i32 @mdiobus_write(ptr noundef %100, i32 noundef %101, i32 noundef 13, i16 noundef zeroext %99) #3
  br label %111

103:                                              ; preds = %20
  %104 = tail call i32 @phy_write_paged(ptr noundef %1, i32 noundef 2, i32 noundef 5, i16 noundef zeroext 26210) #3
  %105 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 5) #3
  %106 = load ptr, ptr %3, align 8
  %107 = load i32, ptr %6, align 8
  %108 = tail call i32 @__mdiobus_write(ptr noundef %106, i32 noundef %107, i32 noundef 5, i16 noundef zeroext -31952) #3
  %109 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 6, i16 noundef zeroext -1, i16 noundef zeroext 26210) #3
  %110 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %105, i32 noundef 0) #3
  br label %111

111:                                              ; preds = %103, %58, %30
  %112 = load ptr, ptr %3, align 8
  %113 = load i32, ptr %6, align 8
  %114 = tail call i32 @mdiobus_write(ptr noundef %112, i32 noundef %113, i32 noundef 31, i16 noundef zeroext 2) #3
  %115 = tail call i32 @phy_modify(ptr noundef %1, i32 noundef 13, i16 noundef zeroext 0, i16 noundef zeroext 768) #3
  %116 = tail call i32 @phy_modify(ptr noundef %1, i32 noundef 15, i16 noundef zeroext 0, i16 noundef zeroext 16) #3
  %117 = load ptr, ptr %3, align 8
  %118 = load i32, ptr %6, align 8
  %119 = tail call i32 @mdiobus_write(ptr noundef %117, i32 noundef %118, i32 noundef 31, i16 noundef zeroext 2) #3
  %120 = tail call i32 @phy_modify(ptr noundef %1, i32 noundef 2, i16 noundef zeroext 1536, i16 noundef zeroext 256) #3
  %121 = tail call i32 @phy_modify(ptr noundef %1, i32 noundef 3, i16 noundef zeroext -8192, i16 noundef zeroext 0) #3
  %122 = load ptr, ptr %3, align 8
  %123 = load i32, ptr %6, align 8
  %124 = tail call i32 @mdiobus_write(ptr noundef %122, i32 noundef %123, i32 noundef 31, i16 noundef zeroext 0) #3
  tail call fastcc void @rtl8168d_apply_firmware_cond(ptr noundef %0, ptr noundef %1, i16 noundef zeroext -16640)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8168d_2_hw_phy_config(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mii_bus, ptr %4, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %5) #3
  %6 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  br label %7

7:                                                ; preds = %7, %2
  %8 = phi i32 [ 26, %2 ], [ %10, %7 ]
  %9 = phi ptr [ @rtl8168d_1_phy_reg_init_0, %2 ], [ %18, %7 ]
  %10 = add nsw i32 %8, -1
  %11 = load i16, ptr %9, align 2
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.phy_reg, ptr %9, i32 0, i32 1
  %14 = load i16, ptr %13, align 2
  %15 = load ptr, ptr %3, align 8
  %16 = load i32, ptr %6, align 8
  %17 = tail call i32 @__mdiobus_write(ptr noundef %15, i32 noundef %16, i32 noundef %12, i16 noundef zeroext %14) #3
  %18 = getelementptr %struct.phy_reg, ptr %9, i32 1
  %19 = icmp ugt i32 %8, 1
  br i1 %19, label %7, label %20

20:                                               ; preds = %7
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.mii_bus, ptr %21, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %22) #3
  %23 = tail call zeroext i8 @rtl8168d_efuse_read(ptr noundef %0, i32 noundef 1) #3
  %24 = icmp eq i8 %23, -79
  br i1 %24, label %25, label %98

25:                                               ; preds = %20
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr inbounds %struct.mii_bus, ptr %26, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %27) #3
  %28 = load ptr, ptr %3, align 8
  %29 = load i32, ptr %6, align 8
  %30 = tail call i32 @__mdiobus_write(ptr noundef %28, i32 noundef %29, i32 noundef 31, i16 noundef zeroext 2) #3
  %31 = load ptr, ptr %3, align 8
  %32 = load i32, ptr %6, align 8
  %33 = tail call i32 @__mdiobus_write(ptr noundef %31, i32 noundef %32, i32 noundef 5, i16 noundef zeroext 26266) #3
  %34 = load ptr, ptr %3, align 8
  %35 = load i32, ptr %6, align 8
  %36 = tail call i32 @__mdiobus_write(ptr noundef %34, i32 noundef %35, i32 noundef 31, i16 noundef zeroext 5) #3
  %37 = load ptr, ptr %3, align 8
  %38 = load i32, ptr %6, align 8
  %39 = tail call i32 @__mdiobus_write(ptr noundef %37, i32 noundef %38, i32 noundef 5, i16 noundef zeroext -31952) #3
  %40 = load ptr, ptr %3, align 8
  %41 = load i32, ptr %6, align 8
  %42 = tail call i32 @__mdiobus_write(ptr noundef %40, i32 noundef %41, i32 noundef 6, i16 noundef zeroext 26266) #3
  %43 = load ptr, ptr %3, align 8
  %44 = load i32, ptr %6, align 8
  %45 = tail call i32 @__mdiobus_write(ptr noundef %43, i32 noundef %44, i32 noundef 31, i16 noundef zeroext 2) #3
  %46 = load ptr, ptr %3, align 8
  %47 = getelementptr inbounds %struct.mii_bus, ptr %46, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %47) #3
  %48 = load ptr, ptr %3, align 8
  %49 = load i32, ptr %6, align 8
  %50 = tail call i32 @mdiobus_read(ptr noundef %48, i32 noundef %49, i32 noundef 13) #3
  %51 = and i32 %50, 255
  %52 = icmp eq i32 %51, 108
  br i1 %52, label %106, label %53

53:                                               ; preds = %25
  %54 = load ptr, ptr %3, align 8
  %55 = load i32, ptr %6, align 8
  %56 = tail call i32 @mdiobus_write(ptr noundef %54, i32 noundef %55, i32 noundef 31, i16 noundef zeroext 2) #3
  %57 = and i32 %50, 65280
  %58 = trunc i32 %57 to i16
  %59 = or i16 %58, 101
  %60 = load ptr, ptr %3, align 8
  %61 = load i32, ptr %6, align 8
  %62 = tail call i32 @mdiobus_write(ptr noundef %60, i32 noundef %61, i32 noundef 13, i16 noundef zeroext %59) #3
  %63 = trunc i32 %57 to i16
  %64 = or i16 %63, 102
  %65 = load ptr, ptr %3, align 8
  %66 = load i32, ptr %6, align 8
  %67 = tail call i32 @mdiobus_write(ptr noundef %65, i32 noundef %66, i32 noundef 13, i16 noundef zeroext %64) #3
  %68 = trunc i32 %57 to i16
  %69 = or i16 %68, 103
  %70 = load ptr, ptr %3, align 8
  %71 = load i32, ptr %6, align 8
  %72 = tail call i32 @mdiobus_write(ptr noundef %70, i32 noundef %71, i32 noundef 13, i16 noundef zeroext %69) #3
  %73 = trunc i32 %57 to i16
  %74 = or i16 %73, 104
  %75 = load ptr, ptr %3, align 8
  %76 = load i32, ptr %6, align 8
  %77 = tail call i32 @mdiobus_write(ptr noundef %75, i32 noundef %76, i32 noundef 13, i16 noundef zeroext %74) #3
  %78 = trunc i32 %57 to i16
  %79 = or i16 %78, 105
  %80 = load ptr, ptr %3, align 8
  %81 = load i32, ptr %6, align 8
  %82 = tail call i32 @mdiobus_write(ptr noundef %80, i32 noundef %81, i32 noundef 13, i16 noundef zeroext %79) #3
  %83 = trunc i32 %57 to i16
  %84 = or i16 %83, 106
  %85 = load ptr, ptr %3, align 8
  %86 = load i32, ptr %6, align 8
  %87 = tail call i32 @mdiobus_write(ptr noundef %85, i32 noundef %86, i32 noundef 13, i16 noundef zeroext %84) #3
  %88 = trunc i32 %57 to i16
  %89 = or i16 %88, 107
  %90 = load ptr, ptr %3, align 8
  %91 = load i32, ptr %6, align 8
  %92 = tail call i32 @mdiobus_write(ptr noundef %90, i32 noundef %91, i32 noundef 13, i16 noundef zeroext %89) #3
  %93 = trunc i32 %57 to i16
  %94 = or i16 %93, 108
  %95 = load ptr, ptr %3, align 8
  %96 = load i32, ptr %6, align 8
  %97 = tail call i32 @mdiobus_write(ptr noundef %95, i32 noundef %96, i32 noundef 13, i16 noundef zeroext %94) #3
  br label %106

98:                                               ; preds = %20
  %99 = tail call i32 @phy_write_paged(ptr noundef %1, i32 noundef 2, i32 noundef 5, i16 noundef zeroext 9794) #3
  %100 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 5) #3
  %101 = load ptr, ptr %3, align 8
  %102 = load i32, ptr %6, align 8
  %103 = tail call i32 @__mdiobus_write(ptr noundef %101, i32 noundef %102, i32 noundef 5, i16 noundef zeroext -31952) #3
  %104 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 6, i16 noundef zeroext -1, i16 noundef zeroext 9794) #3
  %105 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %100, i32 noundef 0) #3
  br label %106

106:                                              ; preds = %98, %53, %25
  %107 = load ptr, ptr %3, align 8
  %108 = load i32, ptr %6, align 8
  %109 = tail call i32 @mdiobus_write(ptr noundef %107, i32 noundef %108, i32 noundef 31, i16 noundef zeroext 2) #3
  %110 = tail call i32 @phy_modify(ptr noundef %1, i32 noundef 2, i16 noundef zeroext 1536, i16 noundef zeroext 256) #3
  %111 = tail call i32 @phy_modify(ptr noundef %1, i32 noundef 3, i16 noundef zeroext -8192, i16 noundef zeroext 0) #3
  %112 = load ptr, ptr %3, align 8
  %113 = load i32, ptr %6, align 8
  %114 = tail call i32 @mdiobus_write(ptr noundef %112, i32 noundef %113, i32 noundef 31, i16 noundef zeroext 0) #3
  %115 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2, i32 noundef 15, i16 noundef zeroext 0, i16 noundef zeroext 23) #3
  tail call fastcc void @rtl8168d_apply_firmware_cond(ptr noundef %0, ptr noundef %1, i16 noundef zeroext -19712)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8168d_4_hw_phy_config(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @phy_write_paged(ptr noundef %1, i32 noundef 1, i32 noundef 23, i16 noundef zeroext 3264) #3
  %4 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 7) #3
  %5 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  %9 = tail call i32 @__mdiobus_write(ptr noundef %6, i32 noundef %8, i32 noundef 30, i16 noundef zeroext 45) #3
  %10 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 24, i16 noundef zeroext -1, i16 noundef zeroext 64) #3
  %11 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %4, i32 noundef 0) #3
  %12 = tail call i32 @phy_modify(ptr noundef %1, i32 noundef 13, i16 noundef zeroext 0, i16 noundef zeroext 32) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8105e_hw_phy_config(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  %6 = load i32, ptr %5, align 8
  %7 = tail call i32 @mdiobus_write(ptr noundef %4, i32 noundef %6, i32 noundef 24, i16 noundef zeroext 784) #3
  tail call void @msleep(i32 noundef 100) #3
  tail call void @r8169_apply_firmware(ptr noundef %0) #3
  %8 = tail call i32 @phy_write_paged(ptr noundef %1, i32 noundef 5, i32 noundef 26, i16 noundef zeroext 0) #3
  %9 = tail call i32 @phy_write_paged(ptr noundef %1, i32 noundef 4, i32 noundef 28, i16 noundef zeroext 0) #3
  %10 = tail call i32 @phy_write_paged(ptr noundef %1, i32 noundef 1, i32 noundef 21, i16 noundef zeroext 30465) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8168e_1_hw_phy_config(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @r8169_apply_firmware(ptr noundef %0) #3
  %3 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 5) #3
  %4 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 5, i16 noundef zeroext -29824) #3
  %9 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 6, i16 noundef zeroext -1, i16 noundef zeroext -14186) #3
  %10 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %3, i32 noundef 0) #3
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds %struct.mii_bus, ptr %11, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %12) #3
  %13 = load ptr, ptr %4, align 8
  %14 = load i32, ptr %6, align 8
  %15 = tail call i32 @__mdiobus_write(ptr noundef %13, i32 noundef %14, i32 noundef 31, i16 noundef zeroext 1) #3
  %16 = load ptr, ptr %4, align 8
  %17 = load i32, ptr %6, align 8
  %18 = tail call i32 @__mdiobus_write(ptr noundef %16, i32 noundef %17, i32 noundef 11, i16 noundef zeroext 27680) #3
  %19 = load ptr, ptr %4, align 8
  %20 = load i32, ptr %6, align 8
  %21 = tail call i32 @__mdiobus_write(ptr noundef %19, i32 noundef %20, i32 noundef 7, i16 noundef zeroext 10354) #3
  %22 = load ptr, ptr %4, align 8
  %23 = load i32, ptr %6, align 8
  %24 = tail call i32 @__mdiobus_write(ptr noundef %22, i32 noundef %23, i32 noundef 28, i16 noundef zeroext -4097) #3
  %25 = load ptr, ptr %4, align 8
  %26 = load i32, ptr %6, align 8
  %27 = tail call i32 @__mdiobus_write(ptr noundef %25, i32 noundef %26, i32 noundef 31, i16 noundef zeroext 3) #3
  %28 = load ptr, ptr %4, align 8
  %29 = load i32, ptr %6, align 8
  %30 = tail call i32 @__mdiobus_write(ptr noundef %28, i32 noundef %29, i32 noundef 20, i16 noundef zeroext 25632) #3
  %31 = load ptr, ptr %4, align 8
  %32 = load i32, ptr %6, align 8
  %33 = tail call i32 @__mdiobus_write(ptr noundef %31, i32 noundef %32, i32 noundef 31, i16 noundef zeroext 0) #3
  %34 = load ptr, ptr %4, align 8
  %35 = getelementptr inbounds %struct.mii_bus, ptr %34, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %35) #3
  %36 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 7) #3
  %37 = load ptr, ptr %4, align 8
  %38 = load i32, ptr %6, align 8
  %39 = tail call i32 @__mdiobus_write(ptr noundef %37, i32 noundef %38, i32 noundef 30, i16 noundef zeroext 47) #3
  %40 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 21, i16 noundef zeroext -1, i16 noundef zeroext 6425) #3
  %41 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %36, i32 noundef 0) #3
  %42 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 7) #3
  %43 = load ptr, ptr %4, align 8
  %44 = load i32, ptr %6, align 8
  %45 = tail call i32 @__mdiobus_write(ptr noundef %43, i32 noundef %44, i32 noundef 30, i16 noundef zeroext 172) #3
  %46 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 24, i16 noundef zeroext -1, i16 noundef zeroext 6) #3
  %47 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %42, i32 noundef 0) #3
  %48 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 7) #3
  %49 = load ptr, ptr %4, align 8
  %50 = load i32, ptr %6, align 8
  %51 = tail call i32 @__mdiobus_write(ptr noundef %49, i32 noundef %50, i32 noundef 30, i16 noundef zeroext 35) #3
  %52 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 23, i16 noundef zeroext 0, i16 noundef zeroext 6) #3
  %53 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %48, i32 noundef 0) #3
  %54 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2, i32 noundef 8, i16 noundef zeroext 32512, i16 noundef zeroext -32768) #3
  %55 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 7) #3
  %56 = load ptr, ptr %4, align 8
  %57 = load i32, ptr %6, align 8
  %58 = tail call i32 @__mdiobus_write(ptr noundef %56, i32 noundef %57, i32 noundef 30, i16 noundef zeroext 45) #3
  %59 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 24, i16 noundef zeroext 0, i16 noundef zeroext 80) #3
  %60 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %55, i32 noundef 0) #3
  %61 = tail call i32 @phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext -32768) #3
  %62 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 5) #3
  %63 = load ptr, ptr %4, align 8
  %64 = load i32, ptr %6, align 8
  %65 = tail call i32 @__mdiobus_write(ptr noundef %63, i32 noundef %64, i32 noundef 5, i16 noundef zeroext -29818) #3
  %66 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 6, i16 noundef zeroext 0, i16 noundef zeroext 1) #3
  %67 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %62, i32 noundef 0) #3
  %68 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 5) #3
  %69 = load ptr, ptr %4, align 8
  %70 = load i32, ptr %6, align 8
  %71 = tail call i32 @__mdiobus_write(ptr noundef %69, i32 noundef %70, i32 noundef 5, i16 noundef zeroext -29819) #3
  %72 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 6, i16 noundef zeroext 8192, i16 noundef zeroext 0) #3
  %73 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %68, i32 noundef 0) #3
  %74 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 7) #3
  %75 = load ptr, ptr %4, align 8
  %76 = load i32, ptr %6, align 8
  %77 = tail call i32 @__mdiobus_write(ptr noundef %75, i32 noundef %76, i32 noundef 30, i16 noundef zeroext 32) #3
  %78 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 21, i16 noundef zeroext 4352, i16 noundef zeroext 0) #3
  %79 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %74, i32 noundef 0) #3
  %80 = tail call i32 @phy_write_paged(ptr noundef %1, i32 noundef 6, i32 noundef 0, i16 noundef zeroext 23040) #3
  %81 = tail call i32 @phy_write_mmd(ptr noundef %1, i32 noundef 7, i32 noundef 60, i16 noundef zeroext 0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8168e_2_hw_phy_config(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @r8169_apply_firmware(ptr noundef %0) #3
  %3 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 7) #3
  %4 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 30, i16 noundef zeroext 172) #3
  %9 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 24, i16 noundef zeroext -1, i16 noundef zeroext 6) #3
  %10 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %3, i32 noundef 0) #3
  %11 = tail call i32 @phy_write_paged(ptr noundef %1, i32 noundef 3, i32 noundef 9, i16 noundef zeroext -24049) #3
  %12 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 5) #3
  %13 = load ptr, ptr %4, align 8
  %14 = load i32, ptr %6, align 8
  %15 = tail call i32 @__mdiobus_write(ptr noundef %13, i32 noundef %14, i32 noundef 5, i16 noundef zeroext -29861) #3
  %16 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 6, i16 noundef zeroext -1, i16 noundef zeroext -28126) #3
  %17 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %12, i32 noundef 0) #3
  %18 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 5) #3
  %19 = load ptr, ptr %4, align 8
  %20 = load i32, ptr %6, align 8
  %21 = tail call i32 @__mdiobus_write(ptr noundef %19, i32 noundef %20, i32 noundef 5, i16 noundef zeroext -29843) #3
  %22 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 6, i16 noundef zeroext -1, i16 noundef zeroext -32768) #3
  %23 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %18, i32 noundef 0) #3
  %24 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 5) #3
  %25 = load ptr, ptr %4, align 8
  %26 = load i32, ptr %6, align 8
  %27 = tail call i32 @__mdiobus_write(ptr noundef %25, i32 noundef %26, i32 noundef 5, i16 noundef zeroext -29834) #3
  %28 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 6, i16 noundef zeroext -1, i16 noundef zeroext -32768) #3
  %29 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %24, i32 noundef 0) #3
  %30 = load ptr, ptr %4, align 8
  %31 = load i32, ptr %6, align 8
  %32 = tail call i32 @mdiobus_write(ptr noundef %30, i32 noundef %31, i32 noundef 31, i16 noundef zeroext 5) #3
  %33 = load ptr, ptr %4, align 8
  %34 = load i32, ptr %6, align 8
  %35 = tail call i32 @mdiobus_write(ptr noundef %33, i32 noundef %34, i32 noundef 5, i16 noundef zeroext -29824) #3
  %36 = tail call i32 @phy_modify(ptr noundef %1, i32 noundef 23, i16 noundef zeroext 0, i16 noundef zeroext 6) #3
  %37 = load ptr, ptr %4, align 8
  %38 = load i32, ptr %6, align 8
  %39 = tail call i32 @mdiobus_write(ptr noundef %37, i32 noundef %38, i32 noundef 31, i16 noundef zeroext 0) #3
  %40 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 7) #3
  %41 = load ptr, ptr %4, align 8
  %42 = load i32, ptr %6, align 8
  %43 = tail call i32 @__mdiobus_write(ptr noundef %41, i32 noundef %42, i32 noundef 30, i16 noundef zeroext 45) #3
  %44 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 24, i16 noundef zeroext 0, i16 noundef zeroext 16) #3
  %45 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %40, i32 noundef 0) #3
  %46 = tail call i32 @phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext -32768) #3
  %47 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 5) #3
  %48 = load ptr, ptr %4, align 8
  %49 = load i32, ptr %6, align 8
  %50 = tail call i32 @__mdiobus_write(ptr noundef %48, i32 noundef %49, i32 noundef 5, i16 noundef zeroext -29818) #3
  %51 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 6, i16 noundef zeroext 0, i16 noundef zeroext 1) #3
  %52 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %47, i32 noundef 0) #3
  %53 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 5) #3
  %54 = load ptr, ptr %4, align 8
  %55 = load i32, ptr %6, align 8
  %56 = tail call i32 @__mdiobus_write(ptr noundef %54, i32 noundef %55, i32 noundef 5, i16 noundef zeroext -29819) #3
  %57 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 6, i16 noundef zeroext 0, i16 noundef zeroext 16384) #3
  %58 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %53, i32 noundef 0) #3
  tail call fastcc void @rtl8168f_config_eee_phy(ptr noundef %1)
  %59 = load ptr, ptr %4, align 8
  %60 = load i32, ptr %6, align 8
  %61 = tail call i32 @mdiobus_write(ptr noundef %59, i32 noundef %60, i32 noundef 31, i16 noundef zeroext 3) #3
  %62 = tail call i32 @phy_modify(ptr noundef %1, i32 noundef 25, i16 noundef zeroext 0, i16 noundef zeroext 1) #3
  %63 = tail call i32 @phy_modify(ptr noundef %1, i32 noundef 16, i16 noundef zeroext 0, i16 noundef zeroext 1024) #3
  %64 = load ptr, ptr %4, align 8
  %65 = load i32, ptr %6, align 8
  %66 = tail call i32 @mdiobus_write(ptr noundef %64, i32 noundef %65, i32 noundef 31, i16 noundef zeroext 0) #3
  %67 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 5, i32 noundef 1, i16 noundef zeroext 0, i16 noundef zeroext 256) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8168f_1_hw_phy_config(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @r8169_apply_firmware(ptr noundef %0) #3
  %3 = tail call i32 @phy_write_paged(ptr noundef %1, i32 noundef 3, i32 noundef 9, i16 noundef zeroext -24049) #3
  %4 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 5) #3
  %5 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  %9 = tail call i32 @__mdiobus_write(ptr noundef %6, i32 noundef %8, i32 noundef 5, i16 noundef zeroext -29867) #3
  %10 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 6, i16 noundef zeroext -1, i16 noundef zeroext 0) #3
  %11 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %4, i32 noundef 0) #3
  %12 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 5) #3
  %13 = load ptr, ptr %5, align 8
  %14 = load i32, ptr %7, align 8
  %15 = tail call i32 @__mdiobus_write(ptr noundef %13, i32 noundef %14, i32 noundef 5, i16 noundef zeroext -29858) #3
  %16 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 6, i16 noundef zeroext -1, i16 noundef zeroext 0) #3
  %17 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %12, i32 noundef 0) #3
  %18 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 5) #3
  %19 = load ptr, ptr %5, align 8
  %20 = load i32, ptr %7, align 8
  %21 = tail call i32 @__mdiobus_write(ptr noundef %19, i32 noundef %20, i32 noundef 5, i16 noundef zeroext -29849) #3
  %22 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 6, i16 noundef zeroext -1, i16 noundef zeroext 0) #3
  %23 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %18, i32 noundef 0) #3
  %24 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 5) #3
  %25 = load ptr, ptr %5, align 8
  %26 = load i32, ptr %7, align 8
  %27 = tail call i32 @__mdiobus_write(ptr noundef %25, i32 noundef %26, i32 noundef 5, i16 noundef zeroext -29840) #3
  %28 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 6, i16 noundef zeroext -1, i16 noundef zeroext 0) #3
  %29 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %24, i32 noundef 0) #3
  %30 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 7) #3
  %31 = load ptr, ptr %5, align 8
  %32 = load i32, ptr %7, align 8
  %33 = tail call i32 @__mdiobus_write(ptr noundef %31, i32 noundef %32, i32 noundef 30, i16 noundef zeroext 120) #3
  %34 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 23, i16 noundef zeroext -1, i16 noundef zeroext 0) #3
  %35 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %30, i32 noundef 0) #3
  %36 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 7) #3
  %37 = load ptr, ptr %5, align 8
  %38 = load i32, ptr %7, align 8
  %39 = tail call i32 @__mdiobus_write(ptr noundef %37, i32 noundef %38, i32 noundef 30, i16 noundef zeroext 120) #3
  %40 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 25, i16 noundef zeroext -1, i16 noundef zeroext 251) #3
  %41 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %36, i32 noundef 0) #3
  %42 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 5) #3
  %43 = load ptr, ptr %5, align 8
  %44 = load i32, ptr %7, align 8
  %45 = tail call i32 @__mdiobus_write(ptr noundef %43, i32 noundef %44, i32 noundef 5, i16 noundef zeroext -29831) #3
  %46 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 6, i16 noundef zeroext -1, i16 noundef zeroext -22016) #3
  %47 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %42, i32 noundef 0) #3
  %48 = tail call i32 @phy_write_paged(ptr noundef %1, i32 noundef 3, i32 noundef 1, i16 noundef zeroext 12938) #3
  tail call fastcc void @rtl8168f_hw_phy_config(ptr noundef %1)
  %49 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 5) #3
  %50 = load ptr, ptr %5, align 8
  %51 = load i32, ptr %7, align 8
  %52 = tail call i32 @__mdiobus_write(ptr noundef %50, i32 noundef %51, i32 noundef 5, i16 noundef zeroext -29819) #3
  %53 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 6, i16 noundef zeroext 0, i16 noundef zeroext 16384) #3
  %54 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %49, i32 noundef 0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8168f_2_hw_phy_config(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @r8169_apply_firmware(ptr noundef %0) #3
  tail call fastcc void @rtl8168f_hw_phy_config(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8402_hw_phy_config(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  %6 = load i32, ptr %5, align 8
  %7 = tail call i32 @mdiobus_write(ptr noundef %4, i32 noundef %6, i32 noundef 24, i16 noundef zeroext 784) #3
  tail call void @msleep(i32 noundef 20) #3
  tail call void @r8169_apply_firmware(ptr noundef %0) #3
  %8 = load ptr, ptr %3, align 8
  %9 = load i32, ptr %5, align 8
  %10 = tail call i32 @mdiobus_write(ptr noundef %8, i32 noundef %9, i32 noundef 31, i16 noundef zeroext 4) #3
  %11 = load ptr, ptr %3, align 8
  %12 = load i32, ptr %5, align 8
  %13 = tail call i32 @mdiobus_write(ptr noundef %11, i32 noundef %12, i32 noundef 16, i16 noundef zeroext 16415) #3
  %14 = load ptr, ptr %3, align 8
  %15 = load i32, ptr %5, align 8
  %16 = tail call i32 @mdiobus_write(ptr noundef %14, i32 noundef %15, i32 noundef 25, i16 noundef zeroext 28720) #3
  %17 = load ptr, ptr %3, align 8
  %18 = load i32, ptr %5, align 8
  %19 = tail call i32 @mdiobus_write(ptr noundef %17, i32 noundef %18, i32 noundef 31, i16 noundef zeroext 0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8411_hw_phy_config(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @r8169_apply_firmware(ptr noundef %0) #3
  tail call fastcc void @rtl8168f_hw_phy_config(ptr noundef %1)
  %3 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 5) #3
  %4 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 5, i16 noundef zeroext -29819) #3
  %9 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 6, i16 noundef zeroext 0, i16 noundef zeroext 16384) #3
  %10 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %3, i32 noundef 0) #3
  %11 = tail call i32 @phy_write_paged(ptr noundef %1, i32 noundef 3, i32 noundef 9, i16 noundef zeroext -24049) #3
  %12 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 5) #3
  %13 = load ptr, ptr %4, align 8
  %14 = load i32, ptr %6, align 8
  %15 = tail call i32 @__mdiobus_write(ptr noundef %13, i32 noundef %14, i32 noundef 5, i16 noundef zeroext -29867) #3
  %16 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 6, i16 noundef zeroext -1, i16 noundef zeroext 0) #3
  %17 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %12, i32 noundef 0) #3
  %18 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 5) #3
  %19 = load ptr, ptr %4, align 8
  %20 = load i32, ptr %6, align 8
  %21 = tail call i32 @__mdiobus_write(ptr noundef %19, i32 noundef %20, i32 noundef 5, i16 noundef zeroext -29858) #3
  %22 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 6, i16 noundef zeroext -1, i16 noundef zeroext 0) #3
  %23 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %18, i32 noundef 0) #3
  %24 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 5) #3
  %25 = load ptr, ptr %4, align 8
  %26 = load i32, ptr %6, align 8
  %27 = tail call i32 @__mdiobus_write(ptr noundef %25, i32 noundef %26, i32 noundef 5, i16 noundef zeroext -29849) #3
  %28 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 6, i16 noundef zeroext -1, i16 noundef zeroext 0) #3
  %29 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %24, i32 noundef 0) #3
  %30 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 5) #3
  %31 = load ptr, ptr %4, align 8
  %32 = load i32, ptr %6, align 8
  %33 = tail call i32 @__mdiobus_write(ptr noundef %31, i32 noundef %32, i32 noundef 5, i16 noundef zeroext -29840) #3
  %34 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 6, i16 noundef zeroext -1, i16 noundef zeroext 0) #3
  %35 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %30, i32 noundef 0) #3
  %36 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 7) #3
  %37 = load ptr, ptr %4, align 8
  %38 = load i32, ptr %6, align 8
  %39 = tail call i32 @__mdiobus_write(ptr noundef %37, i32 noundef %38, i32 noundef 30, i16 noundef zeroext 120) #3
  %40 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 23, i16 noundef zeroext -1, i16 noundef zeroext 0) #3
  %41 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %36, i32 noundef 0) #3
  %42 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 7) #3
  %43 = load ptr, ptr %4, align 8
  %44 = load i32, ptr %6, align 8
  %45 = tail call i32 @__mdiobus_write(ptr noundef %43, i32 noundef %44, i32 noundef 30, i16 noundef zeroext 120) #3
  %46 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 25, i16 noundef zeroext -1, i16 noundef zeroext 170) #3
  %47 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %42, i32 noundef 0) #3
  %48 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 5) #3
  %49 = load ptr, ptr %4, align 8
  %50 = load i32, ptr %6, align 8
  %51 = tail call i32 @__mdiobus_write(ptr noundef %49, i32 noundef %50, i32 noundef 5, i16 noundef zeroext -29831) #3
  %52 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 6, i16 noundef zeroext -1, i16 noundef zeroext -22016) #3
  %53 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %48, i32 noundef 0) #3
  %54 = tail call i32 @phy_write_paged(ptr noundef %1, i32 noundef 3, i32 noundef 1, i16 noundef zeroext 12938) #3
  %55 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 5) #3
  %56 = load ptr, ptr %4, align 8
  %57 = load i32, ptr %6, align 8
  %58 = tail call i32 @__mdiobus_write(ptr noundef %56, i32 noundef %57, i32 noundef 5, i16 noundef zeroext -29868) #3
  %59 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 6, i16 noundef zeroext 2048, i16 noundef zeroext 0) #3
  %60 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %55, i32 noundef 0) #3
  %61 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 5) #3
  %62 = load ptr, ptr %4, align 8
  %63 = load i32, ptr %6, align 8
  %64 = tail call i32 @__mdiobus_write(ptr noundef %62, i32 noundef %63, i32 noundef 5, i16 noundef zeroext -29859) #3
  %65 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 6, i16 noundef zeroext 2048, i16 noundef zeroext 0) #3
  %66 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %61, i32 noundef 0) #3
  %67 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 5) #3
  %68 = load ptr, ptr %4, align 8
  %69 = load i32, ptr %6, align 8
  %70 = tail call i32 @__mdiobus_write(ptr noundef %68, i32 noundef %69, i32 noundef 5, i16 noundef zeroext -30084) #3
  %71 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 6, i16 noundef zeroext 256, i16 noundef zeroext 0) #3
  %72 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %67, i32 noundef 0) #3
  %73 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 5) #3
  %74 = load ptr, ptr %4, align 8
  %75 = load i32, ptr %6, align 8
  %76 = tail call i32 @__mdiobus_write(ptr noundef %74, i32 noundef %75, i32 noundef 5, i16 noundef zeroext -30081) #3
  %77 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 6, i16 noundef zeroext 0, i16 noundef zeroext 256) #3
  %78 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %73, i32 noundef 0) #3
  %79 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 5) #3
  %80 = load ptr, ptr %4, align 8
  %81 = load i32, ptr %6, align 8
  %82 = tail call i32 @__mdiobus_write(ptr noundef %80, i32 noundef %81, i32 noundef 5, i16 noundef zeroext -30078) #3
  %83 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 6, i16 noundef zeroext 256, i16 noundef zeroext 0) #3
  %84 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %79, i32 noundef 0) #3
  %85 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 5) #3
  %86 = load ptr, ptr %4, align 8
  %87 = load i32, ptr %6, align 8
  %88 = tail call i32 @__mdiobus_write(ptr noundef %86, i32 noundef %87, i32 noundef 5, i16 noundef zeroext -30075) #3
  %89 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 6, i16 noundef zeroext 256, i16 noundef zeroext 0) #3
  %90 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %85, i32 noundef 0) #3
  %91 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 5) #3
  %92 = load ptr, ptr %4, align 8
  %93 = load i32, ptr %6, align 8
  %94 = tail call i32 @__mdiobus_write(ptr noundef %92, i32 noundef %93, i32 noundef 5, i16 noundef zeroext -30072) #3
  %95 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 6, i16 noundef zeroext 256, i16 noundef zeroext 0) #3
  %96 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %91, i32 noundef 0) #3
  %97 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 5) #3
  %98 = load ptr, ptr %4, align 8
  %99 = load i32, ptr %6, align 8
  %100 = tail call i32 @__mdiobus_write(ptr noundef %98, i32 noundef %99, i32 noundef 5, i16 noundef zeroext -29819) #3
  %101 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 6, i16 noundef zeroext 0, i16 noundef zeroext -32768) #3
  %102 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %97, i32 noundef 0) #3
  %103 = load ptr, ptr %4, align 8
  %104 = load i32, ptr %6, align 8
  %105 = tail call i32 @mdiobus_write(ptr noundef %103, i32 noundef %104, i32 noundef 31, i16 noundef zeroext 3) #3
  %106 = tail call i32 @phy_modify(ptr noundef %1, i32 noundef 25, i16 noundef zeroext 1, i16 noundef zeroext 0) #3
  %107 = tail call i32 @phy_modify(ptr noundef %1, i32 noundef 16, i16 noundef zeroext 1024, i16 noundef zeroext 0) #3
  %108 = load ptr, ptr %4, align 8
  %109 = load i32, ptr %6, align 8
  %110 = tail call i32 @mdiobus_write(ptr noundef %108, i32 noundef %109, i32 noundef 31, i16 noundef zeroext 0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8106e_hw_phy_config(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  %6 = load i32, ptr %5, align 8
  %7 = tail call i32 @mdiobus_write(ptr noundef %4, i32 noundef %6, i32 noundef 24, i16 noundef zeroext 784) #3
  tail call void @msleep(i32 noundef 100) #3
  tail call void @r8169_apply_firmware(ptr noundef %0) #3
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.mii_bus, ptr %8, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %9) #3
  %10 = load ptr, ptr %3, align 8
  %11 = load i32, ptr %5, align 8
  %12 = tail call i32 @__mdiobus_write(ptr noundef %10, i32 noundef %11, i32 noundef 31, i16 noundef zeroext 4) #3
  %13 = load ptr, ptr %3, align 8
  %14 = load i32, ptr %5, align 8
  %15 = tail call i32 @__mdiobus_write(ptr noundef %13, i32 noundef %14, i32 noundef 16, i16 noundef zeroext -16257) #3
  %16 = load ptr, ptr %3, align 8
  %17 = load i32, ptr %5, align 8
  %18 = tail call i32 @__mdiobus_write(ptr noundef %16, i32 noundef %17, i32 noundef 25, i16 noundef zeroext 28720) #3
  %19 = load ptr, ptr %3, align 8
  %20 = load i32, ptr %5, align 8
  %21 = tail call i32 @__mdiobus_write(ptr noundef %19, i32 noundef %20, i32 noundef 31, i16 noundef zeroext 0) #3
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds %struct.mii_bus, ptr %22, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %23) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8168g_1_hw_phy_config(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @r8169_apply_firmware(ptr noundef %0) #3
  %3 = tail call i32 @phy_read_paged(ptr noundef %1, i32 noundef 2630, i32 noundef 16) #3
  %4 = and i32 %3, 256
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 3020, i32 noundef 18, i16 noundef zeroext -32768, i16 noundef zeroext 0) #3
  br label %10

8:                                                ; preds = %2
  %9 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 3020, i32 noundef 18, i16 noundef zeroext 0, i16 noundef zeroext -32768) #3
  br label %10

10:                                               ; preds = %8, %6
  %11 = tail call i32 @phy_read_paged(ptr noundef %1, i32 noundef 2630, i32 noundef 19) #3
  %12 = and i32 %11, 256
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 3137, i32 noundef 21, i16 noundef zeroext 0, i16 noundef zeroext 2) #3
  br label %18

16:                                               ; preds = %10
  %17 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 3137, i32 noundef 21, i16 noundef zeroext 2, i16 noundef zeroext 0) #3
  br label %18

18:                                               ; preds = %16, %14
  %19 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2628, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 12) #3
  %20 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 3020, i32 noundef 20, i16 noundef zeroext 256, i16 noundef zeroext 0) #3
  %21 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2628, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 192) #3
  %22 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %23 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  %26 = load i32, ptr %25, align 8
  %27 = tail call i32 @__mdiobus_write(ptr noundef %24, i32 noundef %26, i32 noundef 19, i16 noundef zeroext -32636) #3
  %28 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext 24576, i16 noundef zeroext 0) #3
  %29 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %22, i32 noundef 0) #3
  %30 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2627, i32 noundef 16, i16 noundef zeroext 0, i16 noundef zeroext 4099) #3
  %31 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2635, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 4) #3
  %32 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %33 = load ptr, ptr %23, align 8
  %34 = load i32, ptr %25, align 8
  %35 = tail call i32 @__mdiobus_write(ptr noundef %33, i32 noundef %34, i32 noundef 19, i16 noundef zeroext -32750) #3
  %36 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext -32768) #3
  %37 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %32, i32 noundef 0) #3
  %38 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 3138, i32 noundef 17, i16 noundef zeroext 8192, i16 noundef zeroext 16384) #3
  %39 = load ptr, ptr %23, align 8
  %40 = load i32, ptr %25, align 8
  %41 = tail call i32 @mdiobus_write(ptr noundef %39, i32 noundef %40, i32 noundef 31, i16 noundef zeroext 3021) #3
  %42 = load ptr, ptr %23, align 8
  %43 = load i32, ptr %25, align 8
  %44 = tail call i32 @mdiobus_write(ptr noundef %42, i32 noundef %43, i32 noundef 20, i16 noundef zeroext 20581) #3
  %45 = load ptr, ptr %23, align 8
  %46 = load i32, ptr %25, align 8
  %47 = tail call i32 @mdiobus_write(ptr noundef %45, i32 noundef %46, i32 noundef 20, i16 noundef zeroext -12187) #3
  %48 = load ptr, ptr %23, align 8
  %49 = load i32, ptr %25, align 8
  %50 = tail call i32 @mdiobus_write(ptr noundef %48, i32 noundef %49, i32 noundef 31, i16 noundef zeroext 3016) #3
  %51 = load ptr, ptr %23, align 8
  %52 = load i32, ptr %25, align 8
  %53 = tail call i32 @mdiobus_write(ptr noundef %51, i32 noundef %52, i32 noundef 17, i16 noundef zeroext 22101) #3
  %54 = load ptr, ptr %23, align 8
  %55 = load i32, ptr %25, align 8
  %56 = tail call i32 @mdiobus_write(ptr noundef %54, i32 noundef %55, i32 noundef 31, i16 noundef zeroext 3021) #3
  %57 = load ptr, ptr %23, align 8
  %58 = load i32, ptr %25, align 8
  %59 = tail call i32 @mdiobus_write(ptr noundef %57, i32 noundef %58, i32 noundef 20, i16 noundef zeroext 4197) #3
  %60 = load ptr, ptr %23, align 8
  %61 = load i32, ptr %25, align 8
  %62 = tail call i32 @mdiobus_write(ptr noundef %60, i32 noundef %61, i32 noundef 20, i16 noundef zeroext -28571) #3
  %63 = load ptr, ptr %23, align 8
  %64 = load i32, ptr %25, align 8
  %65 = tail call i32 @mdiobus_write(ptr noundef %63, i32 noundef %64, i32 noundef 20, i16 noundef zeroext 4197) #3
  %66 = load ptr, ptr %23, align 8
  %67 = load i32, ptr %25, align 8
  %68 = tail call i32 @mdiobus_write(ptr noundef %66, i32 noundef %67, i32 noundef 31, i16 noundef zeroext 0) #3
  %69 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2627, i32 noundef 16, i16 noundef zeroext 4, i16 noundef zeroext 0) #3
  %70 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2627, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 16) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8168g_2_hw_phy_config(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @r8169_apply_firmware(ptr noundef %0) #3
  %3 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2627, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 16) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8168h_1_hw_phy_config(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @r8169_apply_firmware(ptr noundef %0) #3
  %3 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %4 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 19, i16 noundef zeroext -32613) #3
  %9 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -2048, i16 noundef zeroext -32768) #3
  %10 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %3, i32 noundef 0) #3
  %11 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %12 = load ptr, ptr %4, align 8
  %13 = load i32, ptr %6, align 8
  %14 = tail call i32 @__mdiobus_write(ptr noundef %12, i32 noundef %13, i32 noundef 19, i16 noundef zeroext -32606) #3
  %15 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -32768) #3
  %16 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %11, i32 noundef 0) #3
  %17 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %18 = load ptr, ptr %4, align 8
  %19 = load i32, ptr %6, align 8
  %20 = tail call i32 @__mdiobus_write(ptr noundef %18, i32 noundef %19, i32 noundef 19, i16 noundef zeroext -32604) #3
  %21 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -31488) #3
  %22 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %17, i32 noundef 0) #3
  %23 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %24 = load ptr, ptr %4, align 8
  %25 = load i32, ptr %6, align 8
  %26 = tail call i32 @__mdiobus_write(ptr noundef %24, i32 noundef %25, i32 noundef 19, i16 noundef zeroext -32612) #3
  %27 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -17152) #3
  %28 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %23, i32 noundef 0) #3
  %29 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %30 = load ptr, ptr %4, align 8
  %31 = load i32, ptr %6, align 8
  %32 = tail call i32 @__mdiobus_write(ptr noundef %30, i32 noundef %31, i32 noundef 19, i16 noundef zeroext -32595) #3
  %33 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -2048, i16 noundef zeroext 28672) #3
  %34 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %29, i32 noundef 0) #3
  %35 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %36 = load ptr, ptr %4, align 8
  %37 = load i32, ptr %6, align 8
  %38 = tail call i32 @__mdiobus_write(ptr noundef %36, i32 noundef %37, i32 noundef 19, i16 noundef zeroext -32588) #3
  %39 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 20480) #3
  %40 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %35, i32 noundef 0) #3
  %41 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %42 = load ptr, ptr %4, align 8
  %43 = load i32, ptr %6, align 8
  %44 = tail call i32 @__mdiobus_write(ptr noundef %42, i32 noundef %43, i32 noundef 19, i16 noundef zeroext -32596) #3
  %45 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 16384) #3
  %46 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %41, i32 noundef 0) #3
  %47 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %48 = load ptr, ptr %4, align 8
  %49 = load i32, ptr %6, align 8
  %50 = tail call i32 @__mdiobus_write(ptr noundef %48, i32 noundef %49, i32 noundef 19, i16 noundef zeroext -32626) #3
  %51 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 4608) #3
  %52 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %47, i32 noundef 0) #3
  %53 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %54 = load ptr, ptr %4, align 8
  %55 = load i32, ptr %6, align 8
  %56 = tail call i32 @__mdiobus_write(ptr noundef %54, i32 noundef %55, i32 noundef 19, i16 noundef zeroext -32624) #3
  %57 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -6912) #3
  %58 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %53, i32 noundef 0) #3
  %59 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %60 = load ptr, ptr %4, align 8
  %61 = load i32, ptr %6, align 8
  %62 = tail call i32 @__mdiobus_write(ptr noundef %60, i32 noundef %61, i32 noundef 19, i16 noundef zeroext -32622) #3
  %63 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -24832) #3
  %64 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %59, i32 noundef 0) #3
  %65 = tail call i32 @phy_read_paged(ptr noundef %1, i32 noundef 2630, i32 noundef 19) #3
  %66 = tail call i32 @phy_read_paged(ptr noundef %1, i32 noundef 2630, i32 noundef 18) #3
  %67 = shl i32 %65, 14
  %68 = lshr i32 %66, 2
  %69 = and i32 %68, 12288
  %70 = or i32 %69, %67
  %71 = trunc i32 %70 to i16
  %72 = xor i16 %71, 28672
  %73 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %74 = load ptr, ptr %4, align 8
  %75 = load i32, ptr %6, align 8
  %76 = tail call i32 @__mdiobus_write(ptr noundef %74, i32 noundef %75, i32 noundef 19, i16 noundef zeroext -32134) #3
  %77 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -4096, i16 noundef zeroext %72) #3
  %78 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %73, i32 noundef 0) #3
  %79 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %80 = load ptr, ptr %4, align 8
  %81 = load i32, ptr %6, align 8
  %82 = tail call i32 @__mdiobus_write(ptr noundef %80, i32 noundef %81, i32 noundef 19, i16 noundef zeroext -32133) #3
  %83 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -4096, i16 noundef zeroext %72) #3
  %84 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %79, i32 noundef 0) #3
  %85 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %86 = load ptr, ptr %4, align 8
  %87 = load i32, ptr %6, align 8
  %88 = tail call i32 @__mdiobus_write(ptr noundef %86, i32 noundef %87, i32 noundef 19, i16 noundef zeroext -32132) #3
  %89 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -4096, i16 noundef zeroext %72) #3
  %90 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %85, i32 noundef 0) #3
  %91 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %92 = load ptr, ptr %4, align 8
  %93 = load i32, ptr %6, align 8
  %94 = tail call i32 @__mdiobus_write(ptr noundef %92, i32 noundef %93, i32 noundef 19, i16 noundef zeroext -32131) #3
  %95 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -4096, i16 noundef zeroext %72) #3
  %96 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %91, i32 noundef 0) #3
  %97 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %98 = load ptr, ptr %4, align 8
  %99 = load i32, ptr %6, align 8
  %100 = tail call i32 @__mdiobus_write(ptr noundef %98, i32 noundef %99, i32 noundef 19, i16 noundef zeroext 2065) #3
  %101 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext 2048) #3
  %102 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %97, i32 noundef 0) #3
  %103 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2626, i32 noundef 22, i16 noundef zeroext 0, i16 noundef zeroext 2) #3
  %104 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2628, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 2048) #3
  %105 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 3018, i32 noundef 23, i16 noundef zeroext 12288, i16 noundef zeroext 16384) #3
  %106 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %107 = load ptr, ptr %4, align 8
  %108 = load i32, ptr %6, align 8
  %109 = tail call i32 @__mdiobus_write(ptr noundef %107, i32 noundef %108, i32 noundef 19, i16 noundef zeroext -32705) #3
  %110 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext 12288, i16 noundef zeroext 0) #3
  %111 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %106, i32 noundef 0) #3
  %112 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %113 = load ptr, ptr %4, align 8
  %114 = load i32, ptr %6, align 8
  %115 = tail call i32 @__mdiobus_write(ptr noundef %113, i32 noundef %114, i32 noundef 19, i16 noundef zeroext -32697) #3
  %116 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext 12288, i16 noundef zeroext 0) #3
  %117 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %112, i32 noundef 0) #3
  %118 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %119 = load ptr, ptr %4, align 8
  %120 = load i32, ptr %6, align 8
  %121 = tail call i32 @__mdiobus_write(ptr noundef %119, i32 noundef %120, i32 noundef 19, i16 noundef zeroext -32689) #3
  %122 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext 12288, i16 noundef zeroext 0) #3
  %123 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %118, i32 noundef 0) #3
  %124 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %125 = load ptr, ptr %4, align 8
  %126 = load i32, ptr %6, align 8
  %127 = tail call i32 @__mdiobus_write(ptr noundef %125, i32 noundef %126, i32 noundef 19, i16 noundef zeroext -32681) #3
  %128 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext 12288, i16 noundef zeroext 0) #3
  %129 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %124, i32 noundef 0) #3
  %130 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %131 = load ptr, ptr %4, align 8
  %132 = load i32, ptr %6, align 8
  %133 = tail call i32 @__mdiobus_write(ptr noundef %131, i32 noundef %132, i32 noundef 19, i16 noundef zeroext -32673) #3
  %134 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext 12288, i16 noundef zeroext 0) #3
  %135 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %130, i32 noundef 0) #3
  %136 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %137 = load ptr, ptr %4, align 8
  %138 = load i32, ptr %6, align 8
  %139 = tail call i32 @__mdiobus_write(ptr noundef %137, i32 noundef %138, i32 noundef 19, i16 noundef zeroext -32665) #3
  %140 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext 12288, i16 noundef zeroext 0) #3
  %141 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %136, i32 noundef 0) #3
  %142 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %143 = load ptr, ptr %4, align 8
  %144 = load i32, ptr %6, align 8
  %145 = tail call i32 @__mdiobus_write(ptr noundef %143, i32 noundef %144, i32 noundef 19, i16 noundef zeroext -32657) #3
  %146 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext 12288, i16 noundef zeroext 0) #3
  %147 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %142, i32 noundef 0) #3
  %148 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2628, i32 noundef 17, i16 noundef zeroext 128, i16 noundef zeroext 0) #3
  %149 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2627, i32 noundef 16, i16 noundef zeroext 4, i16 noundef zeroext 0) #3
  %150 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2627, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 16) #3
  %151 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2634, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 512) #3
  %152 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2626, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext 128) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8168h_2_hw_phy_config(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @r8169_apply_firmware(ptr noundef %0) #3
  %3 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %4 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 19, i16 noundef zeroext -32630) #3
  %9 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext 63, i16 noundef zeroext 10) #3
  %10 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %3, i32 noundef 0) #3
  %11 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %12 = load ptr, ptr %4, align 8
  %13 = load i32, ptr %6, align 8
  %14 = tail call i32 @__mdiobus_write(ptr noundef %12, i32 noundef %13, i32 noundef 19, i16 noundef zeroext 2065) #3
  %15 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext 2048) #3
  %16 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %11, i32 noundef 0) #3
  %17 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2626, i32 noundef 22, i16 noundef zeroext 0, i16 noundef zeroext 2) #3
  %18 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2628, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 2048) #3
  %19 = tail call zeroext i16 @rtl8168h_2_get_adc_bias_ioffset(ptr noundef %0) #3
  %20 = icmp eq i16 %19, -1
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = tail call i32 @phy_write_paged(ptr noundef %1, i32 noundef 3023, i32 noundef 22, i16 noundef zeroext %19) #3
  br label %23

23:                                               ; preds = %21, %2
  %24 = tail call i32 @phy_read_paged(ptr noundef %1, i32 noundef 3021, i32 noundef 22) #3
  %25 = and i32 %24, 15
  %26 = icmp ugt i32 %25, 3
  %27 = add nuw nsw i32 %25, 65533
  %28 = and i32 %27, 65535
  %29 = select i1 %26, i32 %28, i32 0
  %30 = shl nuw nsw i32 %29, 4
  %31 = or i32 %30, %29
  %32 = shl nuw nsw i32 %29, 8
  %33 = or i32 %31, %32
  %34 = shl nuw nsw i32 %29, 12
  %35 = or i32 %33, %34
  %36 = trunc i32 %35 to i16
  %37 = tail call i32 @phy_write_paged(ptr noundef %1, i32 noundef 3021, i32 noundef 23, i16 noundef zeroext %36) #3
  %38 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2628, i32 noundef 17, i16 noundef zeroext 128, i16 noundef zeroext 0) #3
  %39 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2627, i32 noundef 16, i16 noundef zeroext 4, i16 noundef zeroext 0) #3
  %40 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2627, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 16) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8168ep_1_hw_phy_config(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2628, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 12) #3
  %4 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 3020, i32 noundef 20, i16 noundef zeroext 256, i16 noundef zeroext 0) #3
  %5 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2628, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 192) #3
  %6 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %7 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  %10 = load i32, ptr %9, align 8
  %11 = tail call i32 @__mdiobus_write(ptr noundef %8, i32 noundef %10, i32 noundef 19, i16 noundef zeroext -32636) #3
  %12 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext 24576, i16 noundef zeroext 0) #3
  %13 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %6, i32 noundef 0) #3
  %14 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2627, i32 noundef 16, i16 noundef zeroext 0, i16 noundef zeroext 4099) #3
  %15 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2635, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 4) #3
  %16 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %17 = load ptr, ptr %7, align 8
  %18 = load i32, ptr %9, align 8
  %19 = tail call i32 @__mdiobus_write(ptr noundef %17, i32 noundef %18, i32 noundef 19, i16 noundef zeroext -32750) #3
  %20 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext -32768) #3
  %21 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %16, i32 noundef 0) #3
  %22 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 3138, i32 noundef 17, i16 noundef zeroext 8192, i16 noundef zeroext 16384) #3
  %23 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2627, i32 noundef 16, i16 noundef zeroext 4, i16 noundef zeroext 0) #3
  %24 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2627, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 16) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8168ep_2_hw_phy_config(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 3020, i32 noundef 20, i16 noundef zeroext 256, i16 noundef zeroext 0) #3
  %4 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2628, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 192) #3
  %5 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %6 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = tail call i32 @__mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef 19, i16 noundef zeroext -32636) #3
  %11 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext 24576, i16 noundef zeroext 0) #3
  %12 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %5, i32 noundef 0) #3
  %13 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2627, i32 noundef 16, i16 noundef zeroext 0, i16 noundef zeroext 4099) #3
  %14 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %15 = load ptr, ptr %6, align 8
  %16 = load i32, ptr %8, align 8
  %17 = tail call i32 @__mdiobus_write(ptr noundef %15, i32 noundef %16, i32 noundef 19, i16 noundef zeroext -32750) #3
  %18 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext -32768) #3
  %19 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %14, i32 noundef 0) #3
  %20 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 3138, i32 noundef 17, i16 noundef zeroext 8192, i16 noundef zeroext 16384) #3
  %21 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %22 = load ptr, ptr %6, align 8
  %23 = load i32, ptr %8, align 8
  %24 = tail call i32 @__mdiobus_write(ptr noundef %22, i32 noundef %23, i32 noundef 19, i16 noundef zeroext -32525) #3
  %25 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -29952) #3
  %26 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %21, i32 noundef 0) #3
  %27 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %28 = load ptr, ptr %6, align 8
  %29 = load i32, ptr %8, align 8
  %30 = tail call i32 @__mdiobus_write(ptr noundef %28, i32 noundef %29, i32 noundef 19, i16 noundef zeroext -32528) #3
  %31 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 14848) #3
  %32 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %27, i32 noundef 0) #3
  %33 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %34 = load ptr, ptr %6, align 8
  %35 = load i32, ptr %8, align 8
  %36 = tail call i32 @__mdiobus_write(ptr noundef %34, i32 noundef %35, i32 noundef 19, i16 noundef zeroext -32529) #3
  %37 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 1280) #3
  %38 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %33, i32 noundef 0) #3
  %39 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %40 = load ptr, ptr %6, align 8
  %41 = load i32, ptr %8, align 8
  %42 = tail call i32 @__mdiobus_write(ptr noundef %40, i32 noundef %41, i32 noundef 19, i16 noundef zeroext -32522) #3
  %43 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 28160) #3
  %44 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %39, i32 noundef 0) #3
  %45 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %46 = load ptr, ptr %6, align 8
  %47 = load i32, ptr %8, align 8
  %48 = tail call i32 @__mdiobus_write(ptr noundef %46, i32 noundef %47, i32 noundef 19, i16 noundef zeroext -32532) #3
  %49 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 26624) #3
  %50 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %45, i32 noundef 0) #3
  %51 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %52 = load ptr, ptr %6, align 8
  %53 = load i32, ptr %8, align 8
  %54 = tail call i32 @__mdiobus_write(ptr noundef %52, i32 noundef %53, i32 noundef 19, i16 noundef zeroext -32531) #3
  %55 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 31744) #3
  %56 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %51, i32 noundef 0) #3
  %57 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %58 = load ptr, ptr %6, align 8
  %59 = load i32, ptr %8, align 8
  %60 = tail call i32 @__mdiobus_write(ptr noundef %58, i32 noundef %59, i32 noundef 19, i16 noundef zeroext -32526) #3
  %61 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -3072) #3
  %62 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %57, i32 noundef 0) #3
  %63 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %64 = load ptr, ptr %6, align 8
  %65 = load i32, ptr %8, align 8
  %66 = tail call i32 @__mdiobus_write(ptr noundef %64, i32 noundef %65, i32 noundef 19, i16 noundef zeroext -32524) #3
  %67 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -31488) #3
  %68 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %63, i32 noundef 0) #3
  %69 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %70 = load ptr, ptr %6, align 8
  %71 = load i32, ptr %8, align 8
  %72 = tail call i32 @__mdiobus_write(ptr noundef %70, i32 noundef %71, i32 noundef 19, i16 noundef zeroext -32496) #3
  %73 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -22528) #3
  %74 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %69, i32 noundef 0) #3
  %75 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %76 = load ptr, ptr %6, align 8
  %77 = load i32, ptr %8, align 8
  %78 = tail call i32 @__mdiobus_write(ptr noundef %76, i32 noundef %77, i32 noundef 19, i16 noundef zeroext -32497) #3
  %79 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 7424) #3
  %80 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %75, i32 noundef 0) #3
  %81 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %82 = load ptr, ptr %6, align 8
  %83 = load i32, ptr %8, align 8
  %84 = tail call i32 @__mdiobus_write(ptr noundef %82, i32 noundef %83, i32 noundef 19, i16 noundef zeroext -32495) #3
  %85 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -2816) #3
  %86 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %81, i32 noundef 0) #3
  %87 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %88 = load ptr, ptr %6, align 8
  %89 = load i32, ptr %8, align 8
  %90 = tail call i32 @__mdiobus_write(ptr noundef %88, i32 noundef %89, i32 noundef 19, i16 noundef zeroext -32493) #3
  %91 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 24832) #3
  %92 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %87, i32 noundef 0) #3
  %93 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %94 = load ptr, ptr %6, align 8
  %95 = load i32, ptr %8, align 8
  %96 = tail call i32 @__mdiobus_write(ptr noundef %94, i32 noundef %95, i32 noundef 19, i16 noundef zeroext -32491) #3
  %97 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -28160) #3
  %98 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %93, i32 noundef 0) #3
  %99 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %100 = load ptr, ptr %6, align 8
  %101 = load i32, ptr %8, align 8
  %102 = tail call i32 @__mdiobus_write(ptr noundef %100, i32 noundef %101, i32 noundef 19, i16 noundef zeroext -32498) #3
  %103 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 1024) #3
  %104 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %99, i32 noundef 0) #3
  %105 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %106 = load ptr, ptr %6, align 8
  %107 = load i32, ptr %8, align 8
  %108 = tail call i32 @__mdiobus_write(ptr noundef %106, i32 noundef %107, i32 noundef 19, i16 noundef zeroext -32500) #3
  %109 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 31744) #3
  %110 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %105, i32 noundef 0) #3
  %111 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %112 = load ptr, ptr %6, align 8
  %113 = load i32, ptr %8, align 8
  %114 = tail call i32 @__mdiobus_write(ptr noundef %112, i32 noundef %113, i32 noundef 19, i16 noundef zeroext -32501) #3
  %115 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 23040) #3
  %116 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %111, i32 noundef 0) #3
  %117 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %118 = load ptr, ptr %6, align 8
  %119 = load i32, ptr %8, align 8
  %120 = tail call i32 @__mdiobus_write(ptr noundef %118, i32 noundef %119, i32 noundef 19, i16 noundef zeroext -32559) #3
  %121 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -256) #3
  %122 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %117, i32 noundef 0) #3
  %123 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %124 = load ptr, ptr %6, align 8
  %125 = load i32, ptr %8, align 8
  %126 = tail call i32 @__mdiobus_write(ptr noundef %124, i32 noundef %125, i32 noundef 19, i16 noundef zeroext -32563) #3
  %127 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -25088) #3
  %128 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %123, i32 noundef 0) #3
  %129 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %130 = load ptr, ptr %6, align 8
  %131 = load i32, ptr %8, align 8
  %132 = tail call i32 @__mdiobus_write(ptr noundef %130, i32 noundef %131, i32 noundef 19, i16 noundef zeroext -32557) #3
  %133 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 3584) #3
  %134 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %129, i32 noundef 0) #3
  %135 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %136 = load ptr, ptr %6, align 8
  %137 = load i32, ptr %8, align 8
  %138 = tail call i32 @__mdiobus_write(ptr noundef %136, i32 noundef %137, i32 noundef 19, i16 noundef zeroext -32555) #3
  %139 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -13824) #3
  %140 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %135, i32 noundef 0) #3
  %141 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %142 = load ptr, ptr %6, align 8
  %143 = load i32, ptr %8, align 8
  %144 = tail call i32 @__mdiobus_write(ptr noundef %142, i32 noundef %143, i32 noundef 19, i16 noundef zeroext -32553) #3
  %145 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -31744) #3
  %146 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %141, i32 noundef 0) #3
  %147 = load ptr, ptr %6, align 8
  %148 = load i32, ptr %8, align 8
  %149 = tail call i32 @mdiobus_write(ptr noundef %147, i32 noundef %148, i32 noundef 31, i16 noundef zeroext 3021) #3
  %150 = load ptr, ptr %6, align 8
  %151 = load i32, ptr %8, align 8
  %152 = tail call i32 @mdiobus_write(ptr noundef %150, i32 noundef %151, i32 noundef 20, i16 noundef zeroext 20581) #3
  %153 = load ptr, ptr %6, align 8
  %154 = load i32, ptr %8, align 8
  %155 = tail call i32 @mdiobus_write(ptr noundef %153, i32 noundef %154, i32 noundef 20, i16 noundef zeroext -12187) #3
  %156 = load ptr, ptr %6, align 8
  %157 = load i32, ptr %8, align 8
  %158 = tail call i32 @mdiobus_write(ptr noundef %156, i32 noundef %157, i32 noundef 31, i16 noundef zeroext 3016) #3
  %159 = load ptr, ptr %6, align 8
  %160 = load i32, ptr %8, align 8
  %161 = tail call i32 @mdiobus_write(ptr noundef %159, i32 noundef %160, i32 noundef 18, i16 noundef zeroext 237) #3
  %162 = load ptr, ptr %6, align 8
  %163 = load i32, ptr %8, align 8
  %164 = tail call i32 @mdiobus_write(ptr noundef %162, i32 noundef %163, i32 noundef 31, i16 noundef zeroext 3021) #3
  %165 = load ptr, ptr %6, align 8
  %166 = load i32, ptr %8, align 8
  %167 = tail call i32 @mdiobus_write(ptr noundef %165, i32 noundef %166, i32 noundef 20, i16 noundef zeroext 4197) #3
  %168 = load ptr, ptr %6, align 8
  %169 = load i32, ptr %8, align 8
  %170 = tail call i32 @mdiobus_write(ptr noundef %168, i32 noundef %169, i32 noundef 20, i16 noundef zeroext -28571) #3
  %171 = load ptr, ptr %6, align 8
  %172 = load i32, ptr %8, align 8
  %173 = tail call i32 @mdiobus_write(ptr noundef %171, i32 noundef %172, i32 noundef 20, i16 noundef zeroext 4197) #3
  %174 = load ptr, ptr %6, align 8
  %175 = load i32, ptr %8, align 8
  %176 = tail call i32 @mdiobus_write(ptr noundef %174, i32 noundef %175, i32 noundef 31, i16 noundef zeroext 0) #3
  %177 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2627, i32 noundef 16, i16 noundef zeroext 4, i16 noundef zeroext 0) #3
  %178 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2627, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 16) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8117_hw_phy_config(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %4 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 19, i16 noundef zeroext -32626) #3
  %9 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 18432) #3
  %10 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %3, i32 noundef 0) #3
  %11 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %12 = load ptr, ptr %4, align 8
  %13 = load i32, ptr %6, align 8
  %14 = tail call i32 @__mdiobus_write(ptr noundef %12, i32 noundef %13, i32 noundef 19, i16 noundef zeroext -32624) #3
  %15 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -13312) #3
  %16 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %11, i32 noundef 0) #3
  %17 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %18 = load ptr, ptr %4, align 8
  %19 = load i32, ptr %6, align 8
  %20 = tail call i32 @__mdiobus_write(ptr noundef %18, i32 noundef %19, i32 noundef 19, i16 noundef zeroext -32622) #3
  %21 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -20480) #3
  %22 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %17, i32 noundef 0) #3
  %23 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %24 = load ptr, ptr %4, align 8
  %25 = load i32, ptr %6, align 8
  %26 = tail call i32 @__mdiobus_write(ptr noundef %24, i32 noundef %25, i32 noundef 19, i16 noundef zeroext -32632) #3
  %27 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 24576) #3
  %28 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %23, i32 noundef 0) #3
  %29 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %30 = load ptr, ptr %4, align 8
  %31 = load i32, ptr %6, align 8
  %32 = tail call i32 @__mdiobus_write(ptr noundef %30, i32 noundef %31, i32 noundef 19, i16 noundef zeroext -32629) #3
  %33 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext 16128, i16 noundef zeroext 2816) #3
  %34 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %29, i32 noundef 0) #3
  %35 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %36 = load ptr, ptr %4, align 8
  %37 = load i32, ptr %6, align 8
  %38 = tail call i32 @__mdiobus_write(ptr noundef %36, i32 noundef %37, i32 noundef 19, i16 noundef zeroext -32627) #3
  %39 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext 7936, i16 noundef zeroext 1536) #3
  %40 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %35, i32 noundef 0) #3
  %41 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %42 = load ptr, ptr %4, align 8
  %43 = load i32, ptr %6, align 8
  %44 = tail call i32 @__mdiobus_write(ptr noundef %42, i32 noundef %43, i32 noundef 19, i16 noundef zeroext -32628) #3
  %45 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -20480) #3
  %46 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %41, i32 noundef 0) #3
  %47 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %48 = load ptr, ptr %4, align 8
  %49 = load i32, ptr %6, align 8
  %50 = tail call i32 @__mdiobus_write(ptr noundef %48, i32 noundef %49, i32 noundef 19, i16 noundef zeroext -32608) #3
  %51 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 10240) #3
  %52 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %47, i32 noundef 0) #3
  %53 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %54 = load ptr, ptr %4, align 8
  %55 = load i32, ptr %6, align 8
  %56 = tail call i32 @__mdiobus_write(ptr noundef %54, i32 noundef %55, i32 noundef 19, i16 noundef zeroext -32606) #3
  %57 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 20480) #3
  %58 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %53, i32 noundef 0) #3
  %59 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %60 = load ptr, ptr %4, align 8
  %61 = load i32, ptr %6, align 8
  %62 = tail call i32 @__mdiobus_write(ptr noundef %60, i32 noundef %61, i32 noundef 19, i16 noundef zeroext -32613) #3
  %63 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -2048, i16 noundef zeroext -20480) #3
  %64 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %59, i32 noundef 0) #3
  %65 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %66 = load ptr, ptr %4, align 8
  %67 = load i32, ptr %6, align 8
  %68 = tail call i32 @__mdiobus_write(ptr noundef %66, i32 noundef %67, i32 noundef 19, i16 noundef zeroext -32614) #3
  %69 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 19200) #3
  %70 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %65, i32 noundef 0) #3
  %71 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %72 = load ptr, ptr %4, align 8
  %73 = load i32, ptr %6, align 8
  %74 = tail call i32 @__mdiobus_write(ptr noundef %72, i32 noundef %73, i32 noundef 19, i16 noundef zeroext -32611) #3
  %75 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext 16128, i16 noundef zeroext 2048) #3
  %76 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %71, i32 noundef 0) #3
  %77 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %78 = load ptr, ptr %4, align 8
  %79 = load i32, ptr %6, align 8
  %80 = tail call i32 @__mdiobus_write(ptr noundef %78, i32 noundef %79, i32 noundef 19, i16 noundef zeroext -32607) #3
  %81 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 28672) #3
  %82 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %77, i32 noundef 0) #3
  %83 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %84 = load ptr, ptr %4, align 8
  %85 = load i32, ptr %6, align 8
  %86 = tail call i32 @__mdiobus_write(ptr noundef %84, i32 noundef %85, i32 noundef 19, i16 noundef zeroext -32609) #3
  %87 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext 7936, i16 noundef zeroext 768) #3
  %88 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %83, i32 noundef 0) #3
  %89 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %90 = load ptr, ptr %4, align 8
  %91 = load i32, ptr %6, align 8
  %92 = tail call i32 @__mdiobus_write(ptr noundef %90, i32 noundef %91, i32 noundef 19, i16 noundef zeroext -32610) #3
  %93 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -30720) #3
  %94 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %89, i32 noundef 0) #3
  %95 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %96 = load ptr, ptr %4, align 8
  %97 = load i32, ptr %6, align 8
  %98 = tail call i32 @__mdiobus_write(ptr noundef %96, i32 noundef %97, i32 noundef 19, i16 noundef zeroext -32590) #3
  %99 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 8704) #3
  %100 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %95, i32 noundef 0) #3
  %101 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %102 = load ptr, ptr %4, align 8
  %103 = load i32, ptr %6, align 8
  %104 = tail call i32 @__mdiobus_write(ptr noundef %102, i32 noundef %103, i32 noundef 19, i16 noundef zeroext -32595) #3
  %105 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -2048, i16 noundef zeroext -26624) #3
  %106 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %101, i32 noundef 0) #3
  %107 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %108 = load ptr, ptr %4, align 8
  %109 = load i32, ptr %6, align 8
  %110 = tail call i32 @__mdiobus_write(ptr noundef %108, i32 noundef %109, i32 noundef 19, i16 noundef zeroext -32593) #3
  %111 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext 16128, i16 noundef zeroext 2048) #3
  %112 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %107, i32 noundef 0) #3
  %113 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %114 = load ptr, ptr %4, align 8
  %115 = load i32, ptr %6, align 8
  %116 = tail call i32 @__mdiobus_write(ptr noundef %114, i32 noundef %115, i32 noundef 19, i16 noundef zeroext -32589) #3
  %117 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 28416) #3
  %118 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %113, i32 noundef 0) #3
  %119 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %120 = load ptr, ptr %4, align 8
  %121 = load i32, ptr %6, align 8
  %122 = tail call i32 @__mdiobus_write(ptr noundef %120, i32 noundef %121, i32 noundef 19, i16 noundef zeroext -32591) #3
  %123 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext 7936, i16 noundef zeroext 768) #3
  %124 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %119, i32 noundef 0) #3
  %125 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %126 = load ptr, ptr %4, align 8
  %127 = load i32, ptr %6, align 8
  %128 = tail call i32 @__mdiobus_write(ptr noundef %126, i32 noundef %127, i32 noundef 19, i16 noundef zeroext -32592) #3
  %129 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -27904) #3
  %130 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %125, i32 noundef 0) #3
  %131 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %132 = load ptr, ptr %4, align 8
  %133 = load i32, ptr %6, align 8
  %134 = tail call i32 @__mdiobus_write(ptr noundef %132, i32 noundef %133, i32 noundef 19, i16 noundef zeroext -32751) #3
  %135 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext 2048) #3
  %136 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %131, i32 noundef 0) #3
  %137 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2628, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 2048) #3
  %138 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %139 = load ptr, ptr %4, align 8
  %140 = load i32, ptr %6, align 8
  %141 = tail call i32 @__mdiobus_write(ptr noundef %139, i32 noundef %140, i32 noundef 19, i16 noundef zeroext -32746) #3
  %142 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext 1024) #3
  %143 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %138, i32 noundef 0) #3
  %144 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2627, i32 noundef 16, i16 noundef zeroext 4, i16 noundef zeroext 0) #3
  %145 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2627, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 16) #3
  %146 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2634, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 512) #3
  %147 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2626, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext 128) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8125a_1_hw_phy_config(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2772, i32 noundef 16, i16 noundef zeroext 1023, i16 noundef zeroext 132) #3
  %4 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2772, i32 noundef 23, i16 noundef zeroext 0, i16 noundef zeroext 16) #3
  %5 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2769, i32 noundef 19, i16 noundef zeroext 1023, i16 noundef zeroext 6) #3
  %6 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2771, i32 noundef 17, i16 noundef zeroext 63, i16 noundef zeroext 6) #3
  %7 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2752, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext 4352) #3
  %8 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2760, i32 noundef 21, i16 noundef zeroext -4096, i16 noundef zeroext 28672) #3
  %9 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2769, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext 1024) #3
  %10 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2769, i32 noundef 21, i16 noundef zeroext 0, i16 noundef zeroext 1023) #3
  %11 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2769, i32 noundef 22, i16 noundef zeroext 0, i16 noundef zeroext 1023) #3
  %12 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %13 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  %16 = load i32, ptr %15, align 8
  %17 = tail call i32 @__mdiobus_write(ptr noundef %14, i32 noundef %16, i32 noundef 19, i16 noundef zeroext -32534) #3
  %18 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -15360) #3
  %19 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %12, i32 noundef 0) #3
  %20 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %21 = load ptr, ptr %13, align 8
  %22 = load i32, ptr %15, align 8
  %23 = tail call i32 @__mdiobus_write(ptr noundef %21, i32 noundef %22, i32 noundef 19, i16 noundef zeroext -32533) #3
  %24 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext 1792, i16 noundef zeroext 768) #3
  %25 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %20, i32 noundef 0) #3
  %26 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %27 = load ptr, ptr %13, align 8
  %28 = load i32, ptr %15, align 8
  %29 = tail call i32 @__mdiobus_write(ptr noundef %27, i32 noundef %28, i32 noundef 19, i16 noundef zeroext -32520) #3
  %30 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 7168) #3
  %31 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %26, i32 noundef 0) #3
  %32 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %33 = load ptr, ptr %13, align 8
  %34 = load i32, ptr %15, align 8
  %35 = tail call i32 @__mdiobus_write(ptr noundef %33, i32 noundef %34, i32 noundef 19, i16 noundef zeroext -32527) #3
  %36 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 12288) #3
  %37 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %32, i32 noundef 0) #3
  %38 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %39 = load ptr, ptr %13, align 8
  %40 = load i32, ptr %15, align 8
  %41 = tail call i32 @__mdiobus_write(ptr noundef %39, i32 noundef %40, i32 noundef 19, i16 noundef zeroext -32514) #3
  %42 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -23296) #3
  %43 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %38, i32 noundef 0) #3
  %44 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %45 = load ptr, ptr %13, align 8
  %46 = load i32, ptr %15, align 8
  %47 = tail call i32 @__mdiobus_write(ptr noundef %45, i32 noundef %46, i32 noundef 19, i16 noundef zeroext -32510) #3
  %48 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 20480) #3
  %49 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %44, i32 noundef 0) #3
  %50 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %51 = load ptr, ptr %13, align 8
  %52 = load i32, ptr %15, align 8
  %53 = tail call i32 @__mdiobus_write(ptr noundef %51, i32 noundef %52, i32 noundef 19, i16 noundef zeroext -32507) #3
  %54 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 13056) #3
  %55 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %50, i32 noundef 0) #3
  %56 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %57 = load ptr, ptr %13, align 8
  %58 = load i32, ptr %15, align 8
  %59 = tail call i32 @__mdiobus_write(ptr noundef %57, i32 noundef %58, i32 noundef 19, i16 noundef zeroext -32512) #3
  %60 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 28672) #3
  %61 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %56, i32 noundef 0) #3
  %62 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %63 = load ptr, ptr %13, align 8
  %64 = load i32, ptr %15, align 8
  %65 = tail call i32 @__mdiobus_write(ptr noundef %63, i32 noundef %64, i32 noundef 19, i16 noundef zeroext -32508) #3
  %66 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -4096) #3
  %67 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %62, i32 noundef 0) #3
  %68 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %69 = load ptr, ptr %13, align 8
  %70 = load i32, ptr %15, align 8
  %71 = tail call i32 @__mdiobus_write(ptr noundef %69, i32 noundef %70, i32 noundef 19, i16 noundef zeroext -32506) #3
  %72 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 25856) #3
  %73 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %68, i32 noundef 0) #3
  %74 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %75 = load ptr, ptr %13, align 8
  %76 = load i32, ptr %15, align 8
  %77 = tail call i32 @__mdiobus_write(ptr noundef %75, i32 noundef %76, i32 noundef 19, i16 noundef zeroext -32548) #3
  %78 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -4864) #3
  %79 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %74, i32 noundef 0) #3
  %80 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %81 = load ptr, ptr %13, align 8
  %82 = load i32, ptr %15, align 8
  %83 = tail call i32 @__mdiobus_write(ptr noundef %81, i32 noundef %82, i32 noundef 19, i16 noundef zeroext -32545) #3
  %84 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext 256) #3
  %85 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %80, i32 noundef 0) #3
  %86 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %87 = load ptr, ptr %13, align 8
  %88 = load i32, ptr %15, align 8
  %89 = tail call i32 @__mdiobus_write(ptr noundef %87, i32 noundef %88, i32 noundef 19, i16 noundef zeroext -32543) #3
  %90 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext 256, i16 noundef zeroext 0) #3
  %91 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %86, i32 noundef 0) #3
  %92 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 3056, i32 noundef 19, i16 noundef zeroext 63, i16 noundef zeroext 56) #3
  %93 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %94 = load ptr, ptr %13, align 8
  %95 = load i32, ptr %15, align 8
  %96 = tail call i32 @__mdiobus_write(ptr noundef %94, i32 noundef %95, i32 noundef 19, i16 noundef zeroext -32353) #3
  %97 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -1, i16 noundef zeroext -12106) #3
  %98 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %93, i32 noundef 0) #3
  %99 = tail call i32 @phy_write_paged(ptr noundef %1, i32 noundef 3011, i32 noundef 18, i16 noundef zeroext 21845) #3
  %100 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 3056, i32 noundef 21, i16 noundef zeroext 3584, i16 noundef zeroext 2560) #3
  %101 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2652, i32 noundef 16, i16 noundef zeroext 1024, i16 noundef zeroext 0) #3
  %102 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2628, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 2048) #3
  %103 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2627, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 16) #3
  %104 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2634, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 512) #3
  %105 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2626, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext 128) #3
  %106 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2669, i32 noundef 18, i16 noundef zeroext 1, i16 noundef zeroext 0) #3
  %107 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2669, i32 noundef 20, i16 noundef zeroext 16, i16 noundef zeroext 0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8125a_2_hw_phy_config(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2772, i32 noundef 23, i16 noundef zeroext 0, i16 noundef zeroext 16) #3
  %4 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2769, i32 noundef 19, i16 noundef zeroext 1023, i16 noundef zeroext 1023) #3
  %5 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2771, i32 noundef 17, i16 noundef zeroext 63, i16 noundef zeroext 6) #3
  %6 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2752, i32 noundef 20, i16 noundef zeroext 4352, i16 noundef zeroext 0) #3
  %7 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2764, i32 noundef 16, i16 noundef zeroext 3, i16 noundef zeroext 2) #3
  %8 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2772, i32 noundef 16, i16 noundef zeroext 231, i16 noundef zeroext 68) #3
  %9 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2753, i32 noundef 18, i16 noundef zeroext 128, i16 noundef zeroext 0) #3
  %10 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2760, i32 noundef 16, i16 noundef zeroext 768, i16 noundef zeroext 0) #3
  %11 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2757, i32 noundef 23, i16 noundef zeroext 7, i16 noundef zeroext 2) #3
  %12 = tail call i32 @phy_write_paged(ptr noundef %1, i32 noundef 2772, i32 noundef 22, i16 noundef zeroext 168) #3
  %13 = tail call i32 @phy_write_paged(ptr noundef %1, i32 noundef 2757, i32 noundef 22, i16 noundef zeroext 511) #3
  %14 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2760, i32 noundef 21, i16 noundef zeroext 240, i16 noundef zeroext 48) #3
  %15 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  %18 = load i32, ptr %17, align 8
  %19 = tail call i32 @mdiobus_write(ptr noundef %16, i32 noundef %18, i32 noundef 31, i16 noundef zeroext 2951) #3
  %20 = load ptr, ptr %15, align 8
  %21 = load i32, ptr %17, align 8
  %22 = tail call i32 @mdiobus_write(ptr noundef %20, i32 noundef %21, i32 noundef 22, i16 noundef zeroext -32606) #3
  %23 = load ptr, ptr %15, align 8
  %24 = load i32, ptr %17, align 8
  %25 = tail call i32 @mdiobus_write(ptr noundef %23, i32 noundef %24, i32 noundef 23, i16 noundef zeroext 339) #3
  %26 = load ptr, ptr %15, align 8
  %27 = load i32, ptr %17, align 8
  %28 = tail call i32 @mdiobus_write(ptr noundef %26, i32 noundef %27, i32 noundef 22, i16 noundef zeroext -32612) #3
  %29 = load ptr, ptr %15, align 8
  %30 = load i32, ptr %17, align 8
  %31 = tail call i32 @mdiobus_write(ptr noundef %29, i32 noundef %30, i32 noundef 23, i16 noundef zeroext 339) #3
  %32 = load ptr, ptr %15, align 8
  %33 = load i32, ptr %17, align 8
  %34 = tail call i32 @mdiobus_write(ptr noundef %32, i32 noundef %33, i32 noundef 31, i16 noundef zeroext 0) #3
  %35 = load ptr, ptr %15, align 8
  %36 = load i32, ptr %17, align 8
  %37 = tail call i32 @mdiobus_write(ptr noundef %35, i32 noundef %36, i32 noundef 31, i16 noundef zeroext 2627) #3
  %38 = load ptr, ptr %15, align 8
  %39 = load i32, ptr %17, align 8
  %40 = tail call i32 @mdiobus_write(ptr noundef %38, i32 noundef %39, i32 noundef 19, i16 noundef zeroext -32333) #3
  %41 = load ptr, ptr %15, align 8
  %42 = load i32, ptr %17, align 8
  %43 = tail call i32 @mdiobus_write(ptr noundef %41, i32 noundef %42, i32 noundef 20, i16 noundef zeroext 67) #3
  %44 = load ptr, ptr %15, align 8
  %45 = load i32, ptr %17, align 8
  %46 = tail call i32 @mdiobus_write(ptr noundef %44, i32 noundef %45, i32 noundef 20, i16 noundef zeroext 167) #3
  %47 = load ptr, ptr %15, align 8
  %48 = load i32, ptr %17, align 8
  %49 = tail call i32 @mdiobus_write(ptr noundef %47, i32 noundef %48, i32 noundef 20, i16 noundef zeroext 214) #3
  %50 = load ptr, ptr %15, align 8
  %51 = load i32, ptr %17, align 8
  %52 = tail call i32 @mdiobus_write(ptr noundef %50, i32 noundef %51, i32 noundef 20, i16 noundef zeroext 236) #3
  %53 = load ptr, ptr %15, align 8
  %54 = load i32, ptr %17, align 8
  %55 = tail call i32 @mdiobus_write(ptr noundef %53, i32 noundef %54, i32 noundef 20, i16 noundef zeroext 246) #3
  %56 = load ptr, ptr %15, align 8
  %57 = load i32, ptr %17, align 8
  %58 = tail call i32 @mdiobus_write(ptr noundef %56, i32 noundef %57, i32 noundef 20, i16 noundef zeroext 251) #3
  %59 = load ptr, ptr %15, align 8
  %60 = load i32, ptr %17, align 8
  %61 = tail call i32 @mdiobus_write(ptr noundef %59, i32 noundef %60, i32 noundef 20, i16 noundef zeroext 253) #3
  %62 = load ptr, ptr %15, align 8
  %63 = load i32, ptr %17, align 8
  %64 = tail call i32 @mdiobus_write(ptr noundef %62, i32 noundef %63, i32 noundef 20, i16 noundef zeroext 255) #3
  %65 = load ptr, ptr %15, align 8
  %66 = load i32, ptr %17, align 8
  %67 = tail call i32 @mdiobus_write(ptr noundef %65, i32 noundef %66, i32 noundef 20, i16 noundef zeroext 187) #3
  %68 = load ptr, ptr %15, align 8
  %69 = load i32, ptr %17, align 8
  %70 = tail call i32 @mdiobus_write(ptr noundef %68, i32 noundef %69, i32 noundef 20, i16 noundef zeroext 88) #3
  %71 = load ptr, ptr %15, align 8
  %72 = load i32, ptr %17, align 8
  %73 = tail call i32 @mdiobus_write(ptr noundef %71, i32 noundef %72, i32 noundef 20, i16 noundef zeroext 41) #3
  %74 = load ptr, ptr %15, align 8
  %75 = load i32, ptr %17, align 8
  %76 = tail call i32 @mdiobus_write(ptr noundef %74, i32 noundef %75, i32 noundef 20, i16 noundef zeroext 19) #3
  %77 = load ptr, ptr %15, align 8
  %78 = load i32, ptr %17, align 8
  %79 = tail call i32 @mdiobus_write(ptr noundef %77, i32 noundef %78, i32 noundef 20, i16 noundef zeroext 9) #3
  %80 = load ptr, ptr %15, align 8
  %81 = load i32, ptr %17, align 8
  %82 = tail call i32 @mdiobus_write(ptr noundef %80, i32 noundef %81, i32 noundef 20, i16 noundef zeroext 4) #3
  %83 = load ptr, ptr %15, align 8
  %84 = load i32, ptr %17, align 8
  %85 = tail call i32 @mdiobus_write(ptr noundef %83, i32 noundef %84, i32 noundef 20, i16 noundef zeroext 2) #3
  br label %86

86:                                               ; preds = %86, %2
  %87 = phi i32 [ 0, %2 ], [ %91, %86 ]
  %88 = load ptr, ptr %15, align 8
  %89 = load i32, ptr %17, align 8
  %90 = tail call i32 @mdiobus_write(ptr noundef %88, i32 noundef %89, i32 noundef 20, i16 noundef zeroext 0) #3
  %91 = add nuw nsw i32 %87, 1
  %92 = icmp eq i32 %91, 25
  br i1 %92, label %93, label %86

93:                                               ; preds = %86
  %94 = load ptr, ptr %15, align 8
  %95 = load i32, ptr %17, align 8
  %96 = tail call i32 @mdiobus_write(ptr noundef %94, i32 noundef %95, i32 noundef 31, i16 noundef zeroext 0) #3
  %97 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %98 = load ptr, ptr %15, align 8
  %99 = load i32, ptr %17, align 8
  %100 = tail call i32 @__mdiobus_write(ptr noundef %98, i32 noundef %99, i32 noundef 19, i16 noundef zeroext -32169) #3
  %101 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -1, i16 noundef zeroext 527) #3
  %102 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %97, i32 noundef 0) #3
  %103 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %104 = load ptr, ptr %15, align 8
  %105 = load i32, ptr %17, align 8
  %106 = tail call i32 @__mdiobus_write(ptr noundef %104, i32 noundef %105, i32 noundef 19, i16 noundef zeroext -32534) #3
  %107 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -1, i16 noundef zeroext 30787) #3
  %108 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %103, i32 noundef 0) #3
  tail call void @r8169_apply_firmware(ptr noundef %0) #3
  %109 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 3334, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext 8192) #3
  %110 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %111 = load ptr, ptr %15, align 8
  %112 = load i32, ptr %17, align 8
  %113 = tail call i32 @__mdiobus_write(ptr noundef %111, i32 noundef %112, i32 noundef 19, i16 noundef zeroext -32350) #3
  %114 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext 256) #3
  %115 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %110, i32 noundef 0) #3
  %116 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2900, i32 noundef 22, i16 noundef zeroext -256, i16 noundef zeroext -9472) #3
  %117 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2629, i32 noundef 18, i16 noundef zeroext 1, i16 noundef zeroext 0) #3
  %118 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2653, i32 noundef 18, i16 noundef zeroext 0, i16 noundef zeroext 32) #3
  %119 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2772, i32 noundef 23, i16 noundef zeroext 16, i16 noundef zeroext 0) #3
  %120 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2694, i32 noundef 21, i16 noundef zeroext 1, i16 noundef zeroext 0) #3
  %121 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2628, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 2048) #3
  %122 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2627, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 16) #3
  %123 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2634, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 512) #3
  %124 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2626, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext 128) #3
  %125 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2669, i32 noundef 18, i16 noundef zeroext 1, i16 noundef zeroext 0) #3
  %126 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2669, i32 noundef 20, i16 noundef zeroext 16, i16 noundef zeroext 0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl8125b_hw_phy_config(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @r8169_apply_firmware(ptr noundef %0) #3
  %3 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2628, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 2048) #3
  %4 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2756, i32 noundef 19, i16 noundef zeroext 240, i16 noundef zeroext 144) #3
  %5 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2771, i32 noundef 16, i16 noundef zeroext 3, i16 noundef zeroext 1) #3
  %6 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = tail call i32 @mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef 31, i16 noundef zeroext 2951) #3
  %11 = load ptr, ptr %6, align 8
  %12 = load i32, ptr %8, align 8
  %13 = tail call i32 @mdiobus_write(ptr noundef %11, i32 noundef %12, i32 noundef 22, i16 noundef zeroext -32523) #3
  %14 = load ptr, ptr %6, align 8
  %15 = load i32, ptr %8, align 8
  %16 = tail call i32 @mdiobus_write(ptr noundef %14, i32 noundef %15, i32 noundef 23, i16 noundef zeroext 30222) #3
  %17 = load ptr, ptr %6, align 8
  %18 = load i32, ptr %8, align 8
  %19 = tail call i32 @mdiobus_write(ptr noundef %17, i32 noundef %18, i32 noundef 22, i16 noundef zeroext -32505) #3
  %20 = load ptr, ptr %6, align 8
  %21 = load i32, ptr %8, align 8
  %22 = tail call i32 @mdiobus_write(ptr noundef %20, i32 noundef %21, i32 noundef 23, i16 noundef zeroext 13838) #3
  %23 = load ptr, ptr %6, align 8
  %24 = load i32, ptr %8, align 8
  %25 = tail call i32 @mdiobus_write(ptr noundef %23, i32 noundef %24, i32 noundef 22, i16 noundef zeroext -31407) #3
  %26 = tail call i32 @phy_modify(ptr noundef %1, i32 noundef 23, i16 noundef zeroext -256, i16 noundef zeroext 2048) #3
  %27 = load ptr, ptr %6, align 8
  %28 = load i32, ptr %8, align 8
  %29 = tail call i32 @mdiobus_write(ptr noundef %27, i32 noundef %28, i32 noundef 31, i16 noundef zeroext 0) #3
  %30 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 3056, i32 noundef 16, i16 noundef zeroext -8192, i16 noundef zeroext -24576) #3
  %31 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 3060, i32 noundef 19, i16 noundef zeroext 3840, i16 noundef zeroext 768) #3
  %32 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %33 = load ptr, ptr %6, align 8
  %34 = load i32, ptr %8, align 8
  %35 = tail call i32 @__mdiobus_write(ptr noundef %33, i32 noundef %34, i32 noundef 19, i16 noundef zeroext -32700) #3
  %36 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -1, i16 noundef zeroext 9239) #3
  %37 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %32, i32 noundef 0) #3
  %38 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %39 = load ptr, ptr %6, align 8
  %40 = load i32, ptr %8, align 8
  %41 = tail call i32 @__mdiobus_write(ptr noundef %39, i32 noundef %40, i32 noundef 19, i16 noundef zeroext -32694) #3
  %42 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -1, i16 noundef zeroext 9239) #3
  %43 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %38, i32 noundef 0) #3
  %44 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %45 = load ptr, ptr %6, align 8
  %46 = load i32, ptr %8, align 8
  %47 = tail call i32 @__mdiobus_write(ptr noundef %45, i32 noundef %46, i32 noundef 19, i16 noundef zeroext -32688) #3
  %48 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -1, i16 noundef zeroext 9239) #3
  %49 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %44, i32 noundef 0) #3
  %50 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %51 = load ptr, ptr %6, align 8
  %52 = load i32, ptr %8, align 8
  %53 = tail call i32 @__mdiobus_write(ptr noundef %51, i32 noundef %52, i32 noundef 19, i16 noundef zeroext -32682) #3
  %54 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -1, i16 noundef zeroext 9239) #3
  %55 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %50, i32 noundef 0) #3
  %56 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %57 = load ptr, ptr %6, align 8
  %58 = load i32, ptr %8, align 8
  %59 = tail call i32 @__mdiobus_write(ptr noundef %57, i32 noundef %58, i32 noundef 19, i16 noundef zeroext -32676) #3
  %60 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -1, i16 noundef zeroext 9239) #3
  %61 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %56, i32 noundef 0) #3
  %62 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %63 = load ptr, ptr %6, align 8
  %64 = load i32, ptr %8, align 8
  %65 = tail call i32 @__mdiobus_write(ptr noundef %63, i32 noundef %64, i32 noundef 19, i16 noundef zeroext -32670) #3
  %66 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -1, i16 noundef zeroext 9239) #3
  %67 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %62, i32 noundef 0) #3
  %68 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %69 = load ptr, ptr %6, align 8
  %70 = load i32, ptr %8, align 8
  %71 = tail call i32 @__mdiobus_write(ptr noundef %69, i32 noundef %70, i32 noundef 19, i16 noundef zeroext -32664) #3
  %72 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -1, i16 noundef zeroext 9239) #3
  %73 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %68, i32 noundef 0) #3
  %74 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %75 = load ptr, ptr %6, align 8
  %76 = load i32, ptr %8, align 8
  %77 = tail call i32 @__mdiobus_write(ptr noundef %75, i32 noundef %76, i32 noundef 19, i16 noundef zeroext -32658) #3
  %78 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -1, i16 noundef zeroext 9239) #3
  %79 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %74, i32 noundef 0) #3
  %80 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %81 = load ptr, ptr %6, align 8
  %82 = load i32, ptr %8, align 8
  %83 = tail call i32 @__mdiobus_write(ptr noundef %81, i32 noundef %82, i32 noundef 19, i16 noundef zeroext -32652) #3
  %84 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -1, i16 noundef zeroext 9239) #3
  %85 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %80, i32 noundef 0) #3
  %86 = tail call i32 @phy_select_page(ptr noundef %1, i32 noundef 2627) #3
  %87 = load ptr, ptr %6, align 8
  %88 = load i32, ptr %8, align 8
  %89 = tail call i32 @__mdiobus_write(ptr noundef %87, i32 noundef %88, i32 noundef 19, i16 noundef zeroext -32646) #3
  %90 = tail call i32 @__phy_modify(ptr noundef %1, i32 noundef 20, i16 noundef zeroext -1, i16 noundef zeroext 9239) #3
  %91 = tail call i32 @phy_restore_page(ptr noundef %1, i32 noundef %86, i32 noundef 0) #3
  %92 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2636, i32 noundef 21, i16 noundef zeroext 0, i16 noundef zeroext 64) #3
  %93 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 3064, i32 noundef 18, i16 noundef zeroext -8192, i16 noundef zeroext -24576) #3
  %94 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2651, i32 noundef 18, i16 noundef zeroext -32768, i16 noundef zeroext 0) #3
  %95 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2669, i32 noundef 18, i16 noundef zeroext 1, i16 noundef zeroext 0) #3
  %96 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2669, i32 noundef 20, i16 noundef zeroext 16, i16 noundef zeroext 0) #3
  %97 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2626, i32 noundef 20, i16 noundef zeroext 128, i16 noundef zeroext 0) #3
  %98 = tail call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2634, i32 noundef 17, i16 noundef zeroext 512, i16 noundef zeroext 0) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_write_paged(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_paged(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl8168d_efuse_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rtl8168d_apply_firmware_cond(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 @mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 31, i16 noundef zeroext 5) #3
  %9 = load ptr, ptr %4, align 8
  %10 = load i32, ptr %6, align 8
  %11 = tail call i32 @mdiobus_write(ptr noundef %9, i32 noundef %10, i32 noundef 5, i16 noundef zeroext 27) #3
  %12 = load ptr, ptr %4, align 8
  %13 = load i32, ptr %6, align 8
  %14 = tail call i32 @mdiobus_read(ptr noundef %12, i32 noundef %13, i32 noundef 6) #3
  %15 = load ptr, ptr %4, align 8
  %16 = load i32, ptr %6, align 8
  %17 = tail call i32 @mdiobus_write(ptr noundef %15, i32 noundef %16, i32 noundef 31, i16 noundef zeroext 0) #3
  %18 = trunc i32 %14 to i16
  %19 = icmp eq i16 %18, %2
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str) #4
  br label %22

21:                                               ; preds = %3
  tail call void @r8169_apply_firmware(ptr noundef %0) #3
  br label %22

22:                                               ; preds = %21, %20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_select_page(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_restore_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8169_apply_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_write_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rtl8168f_config_eee_phy(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @phy_select_page(ptr noundef %0, i32 noundef 7) #3
  %3 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 8
  %7 = tail call i32 @__mdiobus_write(ptr noundef %4, i32 noundef %6, i32 noundef 30, i16 noundef zeroext 32) #3
  %8 = tail call i32 @__phy_modify(ptr noundef %0, i32 noundef 21, i16 noundef zeroext 0, i16 noundef zeroext 256) #3
  %9 = tail call i32 @phy_restore_page(ptr noundef %0, i32 noundef %2, i32 noundef 0) #3
  %10 = tail call i32 @phy_select_page(ptr noundef %0, i32 noundef 5) #3
  %11 = load ptr, ptr %3, align 8
  %12 = load i32, ptr %5, align 8
  %13 = tail call i32 @__mdiobus_write(ptr noundef %11, i32 noundef %12, i32 noundef 5, i16 noundef zeroext -29819) #3
  %14 = tail call i32 @__phy_modify(ptr noundef %0, i32 noundef 6, i16 noundef zeroext 0, i16 noundef zeroext 8192) #3
  %15 = tail call i32 @phy_restore_page(ptr noundef %0, i32 noundef %10, i32 noundef 0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rtl8168f_hw_phy_config(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @phy_select_page(ptr noundef %0, i32 noundef 5) #3
  %3 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 8
  %7 = tail call i32 @__mdiobus_write(ptr noundef %4, i32 noundef %6, i32 noundef 5, i16 noundef zeroext -29824) #3
  %8 = tail call i32 @__phy_modify(ptr noundef %0, i32 noundef 6, i16 noundef zeroext 0, i16 noundef zeroext 6) #3
  %9 = tail call i32 @phy_restore_page(ptr noundef %0, i32 noundef %2, i32 noundef 0) #3
  %10 = tail call i32 @phy_select_page(ptr noundef %0, i32 noundef 7) #3
  %11 = load ptr, ptr %3, align 8
  %12 = load i32, ptr %5, align 8
  %13 = tail call i32 @__mdiobus_write(ptr noundef %11, i32 noundef %12, i32 noundef 30, i16 noundef zeroext 45) #3
  %14 = tail call i32 @__phy_modify(ptr noundef %0, i32 noundef 24, i16 noundef zeroext 0, i16 noundef zeroext 16) #3
  %15 = tail call i32 @phy_restore_page(ptr noundef %0, i32 noundef %10, i32 noundef 0) #3
  %16 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext -32768) #3
  %17 = tail call i32 @phy_select_page(ptr noundef %0, i32 noundef 5) #3
  %18 = load ptr, ptr %3, align 8
  %19 = load i32, ptr %5, align 8
  %20 = tail call i32 @__mdiobus_write(ptr noundef %18, i32 noundef %19, i32 noundef 5, i16 noundef zeroext -29818) #3
  %21 = tail call i32 @__phy_modify(ptr noundef %0, i32 noundef 6, i16 noundef zeroext 0, i16 noundef zeroext 1) #3
  %22 = tail call i32 @phy_restore_page(ptr noundef %0, i32 noundef %17, i32 noundef 0) #3
  tail call fastcc void @rtl8168f_config_eee_phy(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_read_paged(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @rtl8168h_2_get_adc_bias_ioffset(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
