; ModuleID = '/llk/IR/drivers/net/phy/dp83867.c_pt.bc'
source_filename = "../drivers/net/phy/dp83867.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.dp83867_private = type { i32, i32, i32, i32, i32, i32, i8, i8, i32, i8 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.91, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.108, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.91 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.108 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.ethtool_tunable = type { i32, i32, i32, i32, [0 x ptr] }

@__initcall__kmod_dp83867__345_884_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@dp83867_driver = internal global [1 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 536912433, ptr @.str, i32 -16, ptr null, i32 0, ptr null, ptr @dp83867_phy_reset, ptr @dp83867_config_init, ptr @dp83867_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr @dp83867_read_status, ptr @dp83867_config_intr, ptr @dp83867_handle_interrupt, ptr null, ptr null, ptr @dp83867_set_wol, ptr @dp83867_get_wol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dp83867_get_tunable, ptr @dp83867_set_tunable, ptr null, ptr null, ptr null }], align 4
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description346 = internal constant [57 x i8] c"dp83867.description=Texas Instruments DP83867 PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author347 = internal constant [42 x i8] c"dp83867.author=Dan Murphy <dmurphy@ti.com\00", section ".modinfo", align 1
@__UNIQUE_ID_file348 = internal constant [37 x i8] c"dp83867.file=drivers/net/phy/dp83867\00", section ".modinfo", align 1
@__UNIQUE_ID_license349 = internal constant [23 x i8] c"dp83867.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"TI DP83867\00", align 1
@.str.1 = private unnamed_addr constant [122 x i8] c"PHY has delays via pin strapping, but phy-mode = 'rgmii'\0AShould be 'rgmii-id' to use internal delays txskew:%x rxskew:%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"ti,rx-internal-delay must be specified\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"ti,tx-internal-delay must be specified\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"ti,clk-output-sel\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"ti,clk-output-sel value %u out of range\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"ti,max-output-impedance\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"ti,min-output-impedance\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"ti,dp83867-rxctrl-strap-quirk\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"ti,sgmii-ref-clock-output-enable\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"ti,rx-internal-delay\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"ti,rx-internal-delay value of %u out of range\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"ti,tx-internal-delay\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"ti,tx-internal-delay value of %u out of range\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"enet-phy-lane-swap\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"enet-phy-lane-no-swap\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"ti,fifo-depth\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"tx-fifo-depth\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"tx-fifo-depth value %u out of range\0A\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"rx-fifo-depth\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"rx-fifo-depth value %u out of range\0A\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"Downshift count must be 1, 2, 4 or 8\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author347, ptr @__UNIQUE_ID_description346, ptr @__UNIQUE_ID_file348, ptr @__UNIQUE_ID_license349, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_dp83867__345_884_phy_module_init6, ptr @phy_module_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" {
  %1 = tail call i32 @phy_drivers_register(ptr noundef nonnull @dp83867_driver, i32 noundef 1, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" {
  tail call void @phy_drivers_unregister(ptr noundef nonnull @dp83867_driver, i32 noundef 1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp83867_phy_reset(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_write(ptr noundef %3, i32 noundef %5, i32 noundef 31, i16 noundef zeroext 16384) #5
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #5
  %9 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 1024, i16 noundef zeroext 0) #5
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi i32 [ %9, %8 ], [ %6, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp83867_config_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 20, i16 noundef zeroext 768, i16 noundef zeroext 768) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %189

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 9
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  %12 = tail call i32 @phy_read_mmd(ptr noundef %0, i32 noundef 31, i32 noundef 111) #5
  %13 = lshr i32 %12, 4
  %14 = and i32 %13, 7
  %15 = and i32 %12, 7
  %16 = icmp ne i32 %14, 4
  %17 = icmp ne i32 %15, 4
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %14, i32 noundef %15) #6
  br label %20

20:                                               ; preds = %19, %11
  %21 = load i32, ptr %8, align 4
  br label %22

22:                                               ; preds = %20, %6
  %23 = phi i32 [ %21, %20 ], [ %9, %6 ]
  %24 = and i32 %23, -2
  %25 = icmp eq i32 %24, 10
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, ptr %7, align 4
  %28 = icmp eq i32 %27, 16
  br i1 %28, label %34, label %29

29:                                               ; preds = %26, %22
  switch i32 %23, label %36 [
    i32 10, label %30
    i32 12, label %30
  ]

30:                                               ; preds = %29, %29
  %31 = getelementptr inbounds %struct.dp83867_private, ptr %7, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 16
  br i1 %33, label %34, label %36

34:                                               ; preds = %30, %26
  %35 = phi ptr [ @.str.2, %26 ], [ @.str.3, %30 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull %35) #6
  br label %189

36:                                               ; preds = %30, %29
  %37 = getelementptr inbounds %struct.dp83867_private, ptr %3, i32 0, i32 6
  %38 = load i8, ptr %37, align 4, !range !8
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = tail call i32 @phy_modify_mmd(ptr noundef %0, i32 noundef 31, i32 noundef 49, i16 noundef zeroext 128, i16 noundef zeroext 0) #5
  br label %42

42:                                               ; preds = %40, %36
  %43 = tail call i32 @phy_read_mmd(ptr noundef %0, i32 noundef 31, i32 noundef 111) #5
  %44 = and i32 %43, 1024
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = tail call i32 @phy_modify_mmd(ptr noundef %0, i32 noundef 31, i32 noundef 46, i16 noundef zeroext 7, i16 noundef zeroext 1) #5
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %189

49:                                               ; preds = %46, %42
  %50 = load i32, ptr %8, align 4
  switch i32 %50, label %81 [
    i32 12, label %51
    i32 11, label %51
    i32 10, label %51
    i32 9, label %51
    i32 4, label %51
  ]

51:                                               ; preds = %49, %49, %49, %49, %49
  %52 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %55 = load i32, ptr %54, align 8
  %56 = tail call i32 @mdiobus_read(ptr noundef %53, i32 noundef %55, i32 noundef 16) #5
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %189, label %58

58:                                               ; preds = %51
  %59 = and i32 %56, -49153
  %60 = getelementptr inbounds %struct.dp83867_private, ptr %3, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = shl i32 %61, 14
  %63 = or i32 %62, %59
  %64 = load i32, ptr %8, align 4
  %65 = icmp eq i32 %64, 4
  br i1 %65, label %66, label %72

66:                                               ; preds = %58
  %67 = and i32 %63, -12289
  %68 = getelementptr inbounds %struct.dp83867_private, ptr %3, i32 0, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = shl i32 %69, 12
  %71 = or i32 %70, %67
  br label %72

72:                                               ; preds = %66, %58
  %73 = phi i32 [ %71, %66 ], [ %63, %58 ]
  %74 = trunc i32 %73 to i16
  %75 = load ptr, ptr %52, align 8
  %76 = load i32, ptr %54, align 8
  %77 = tail call i32 @mdiobus_write(ptr noundef %75, i32 noundef %76, i32 noundef 16, i16 noundef zeroext %74) #5
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %189

79:                                               ; preds = %72
  %80 = load i32, ptr %8, align 4
  br label %81

81:                                               ; preds = %79, %49
  %82 = phi i32 [ %80, %79 ], [ %50, %49 ]
  %83 = add i32 %82, -9
  %84 = icmp ult i32 %83, 4
  br i1 %84, label %85, label %130

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %89 = load i32, ptr %88, align 8
  %90 = tail call i32 @mdiobus_read(ptr noundef %87, i32 noundef %89, i32 noundef 16) #5
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %189, label %92

92:                                               ; preds = %85
  %93 = tail call i32 @phy_read_mmd(ptr noundef %0, i32 noundef 31, i32 noundef 110) #5
  %94 = and i32 %93, 2048
  %95 = icmp eq i32 %94, 0
  %96 = and i32 %90, 63487
  %97 = select i1 %95, i32 %90, i32 %96
  %98 = trunc i32 %97 to i16
  %99 = load ptr, ptr %86, align 8
  %100 = load i32, ptr %88, align 8
  %101 = tail call i32 @mdiobus_write(ptr noundef %99, i32 noundef %100, i32 noundef 16, i16 noundef zeroext %98) #5
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %189

103:                                              ; preds = %92
  %104 = tail call i32 @phy_read_mmd(ptr noundef %0, i32 noundef 31, i32 noundef 50) #5
  %105 = and i32 %104, -4
  %106 = load i32, ptr %8, align 4
  %107 = icmp eq i32 %106, 10
  %108 = select i1 %107, i32 3, i32 0
  %109 = or i32 %108, %105
  %110 = icmp eq i32 %106, 12
  %111 = or i32 %109, 2
  %112 = select i1 %110, i32 %111, i32 %109
  %113 = icmp eq i32 %106, 11
  %114 = zext i1 %113 to i32
  %115 = or i32 %112, %114
  %116 = trunc i32 %115 to i16
  %117 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 31, i32 noundef 50, i16 noundef zeroext %116) #5
  %118 = load i32, ptr %3, align 4
  %119 = icmp eq i32 %118, 16
  %120 = trunc i32 %118 to i16
  %121 = select i1 %119, i16 0, i16 %120
  %122 = getelementptr inbounds %struct.dp83867_private, ptr %3, i32 0, i32 1
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %123, 16
  %125 = trunc i32 %123 to i16
  %126 = shl i16 %125, 4
  %127 = select i1 %124, i16 0, i16 %126
  %128 = or i16 %127, %121
  %129 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 31, i32 noundef 134, i16 noundef zeroext %128) #5
  br label %130

130:                                              ; preds = %103, %81
  %131 = getelementptr inbounds %struct.dp83867_private, ptr %3, i32 0, i32 4
  %132 = load i32, ptr %131, align 4
  %133 = icmp sgt i32 %132, -1
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = trunc i32 %132 to i16
  %136 = tail call i32 @phy_modify_mmd(ptr noundef %0, i32 noundef 31, i32 noundef 368, i16 noundef zeroext 31, i16 noundef zeroext %135) #5
  br label %137

137:                                              ; preds = %134, %130
  %138 = load i32, ptr %8, align 4
  %139 = icmp eq i32 %138, 4
  br i1 %139, label %140, label %156

140:                                              ; preds = %137
  %141 = tail call i32 @phy_modify_mmd(ptr noundef %0, i32 noundef 31, i32 noundef 367, i16 noundef zeroext 128, i16 noundef zeroext 0) #5
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %189

143:                                              ; preds = %140
  %144 = tail call i32 @phy_modify_mmd(ptr noundef %0, i32 noundef 31, i32 noundef 49, i16 noundef zeroext 96, i16 noundef zeroext 0) #5
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %189

146:                                              ; preds = %143
  %147 = tail call i32 @phy_read_mmd(ptr noundef %0, i32 noundef 31, i32 noundef 211) #5
  %148 = getelementptr inbounds %struct.dp83867_private, ptr %3, i32 0, i32 9
  %149 = load i8, ptr %148, align 4, !range !8
  %150 = icmp eq i8 %149, 0
  %151 = and i32 %147, 49151
  %152 = select i1 %150, i32 0, i32 16384
  %153 = or i32 %152, %151
  %154 = trunc i32 %153 to i16
  %155 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 31, i32 noundef 211, i16 noundef zeroext %154) #5
  br label %156

156:                                              ; preds = %146, %137
  %157 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %158 = load ptr, ptr %157, align 8
  %159 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %160 = load i32, ptr %159, align 8
  %161 = tail call i32 @mdiobus_read(ptr noundef %158, i32 noundef %160, i32 noundef 30) #5
  %162 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 21
  %163 = load i32, ptr %162, align 4
  %164 = icmp ult i32 %163, -2
  %165 = or i32 %161, 128
  %166 = select i1 %164, i32 %165, i32 %161
  %167 = trunc i32 %166 to i16
  %168 = or i16 %167, 512
  %169 = load ptr, ptr %157, align 8
  %170 = load i32, ptr %159, align 8
  %171 = tail call i32 @mdiobus_write(ptr noundef %169, i32 noundef %170, i32 noundef 30, i16 noundef zeroext %168) #5
  %172 = getelementptr inbounds %struct.dp83867_private, ptr %3, i32 0, i32 5
  %173 = load i32, ptr %172, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %156
  tail call fastcc void @dp83867_config_port_mirroring(ptr noundef %0)
  br label %176

176:                                              ; preds = %175, %156
  %177 = getelementptr inbounds %struct.dp83867_private, ptr %3, i32 0, i32 7
  %178 = load i8, ptr %177, align 1, !range !8
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %189, label %180

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.dp83867_private, ptr %3, i32 0, i32 8
  %182 = load i32, ptr %181, align 4
  %183 = icmp eq i32 %182, -1
  %184 = trunc i32 %182 to i16
  %185 = shl i16 %184, 8
  %186 = select i1 %183, i16 64, i16 %185
  %187 = select i1 %183, i16 64, i16 8000
  %188 = tail call i32 @phy_modify_mmd(ptr noundef %0, i32 noundef 31, i32 noundef 368, i16 noundef zeroext %187, i16 noundef zeroext %186) #5
  br label %189

189:                                              ; preds = %180, %176, %143, %140, %92, %85, %72, %51, %46, %34, %1
  %190 = phi i32 [ %4, %1 ], [ -22, %34 ], [ %47, %46 ], [ %56, %51 ], [ %77, %72 ], [ %90, %85 ], [ %101, %92 ], [ %141, %140 ], [ %144, %143 ], [ 0, %180 ], [ 0, %176 ]
  ret i32 %190
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp83867_probe(ptr noundef %0) #2 {
  %2 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 36, i32 noundef 3520) #5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %84, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  store ptr %2, ptr %5, align 8
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %84, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.dp83867_private, ptr %2, i32 0, i32 8
  %11 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %7, ptr noundef nonnull @.str.4, ptr noundef %10, i32 noundef 1, i32 noundef 0) #5
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.dp83867_private, ptr %2, i32 0, i32 7
  store i8 1, ptr %14, align 1
  %15 = load i32, ptr %10, align 4
  %16 = add i32 %15, 1
  %17 = icmp ult i32 %16, 14
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %15) #6
  br label %84

19:                                               ; preds = %13, %9
  %20 = tail call ptr @of_find_property(ptr noundef nonnull %7, ptr noundef nonnull @.str.6, ptr noundef null) #5
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.dp83867_private, ptr %2, i32 0, i32 4
  store i32 0, ptr %23, align 4
  br label %30

24:                                               ; preds = %19
  %25 = tail call ptr @of_find_property(ptr noundef nonnull %7, ptr noundef nonnull @.str.7, ptr noundef null) #5
  %26 = icmp eq ptr %25, null
  %27 = getelementptr inbounds %struct.dp83867_private, ptr %2, i32 0, i32 4
  br i1 %26, label %29, label %28

28:                                               ; preds = %24
  store i32 31, ptr %27, align 4
  br label %30

29:                                               ; preds = %24
  store i32 -1, ptr %27, align 4
  br label %30

30:                                               ; preds = %29, %28, %22
  %31 = tail call ptr @of_find_property(ptr noundef nonnull %7, ptr noundef nonnull @.str.8, ptr noundef null) #5
  %32 = icmp ne ptr %31, null
  %33 = getelementptr inbounds %struct.dp83867_private, ptr %2, i32 0, i32 6
  %34 = zext i1 %32 to i8
  store i8 %34, ptr %33, align 4
  %35 = tail call ptr @of_find_property(ptr noundef nonnull %7, ptr noundef nonnull @.str.9, ptr noundef null) #5
  %36 = icmp ne ptr %35, null
  %37 = getelementptr inbounds %struct.dp83867_private, ptr %2, i32 0, i32 9
  %38 = zext i1 %36 to i8
  store i8 %38, ptr %37, align 4
  store i32 16, ptr %2, align 4
  %39 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %7, ptr noundef nonnull @.str.10, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #5
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %41, label %45

41:                                               ; preds = %30
  %42 = load i32, ptr %2, align 4
  %43 = icmp ugt i32 %42, 15
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %42) #6
  br label %84

45:                                               ; preds = %41, %30
  %46 = getelementptr inbounds %struct.dp83867_private, ptr %2, i32 0, i32 1
  store i32 16, ptr %46, align 4
  %47 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %7, ptr noundef nonnull @.str.12, ptr noundef %46, i32 noundef 1, i32 noundef 0) #5
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, ptr %46, align 4
  %51 = icmp ugt i32 %50, 15
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %50) #6
  br label %84

53:                                               ; preds = %49, %45
  %54 = tail call ptr @of_find_property(ptr noundef nonnull %7, ptr noundef nonnull @.str.14, ptr noundef null) #5
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.dp83867_private, ptr %2, i32 0, i32 5
  store i32 1, ptr %57, align 4
  br label %58

58:                                               ; preds = %56, %53
  %59 = tail call ptr @of_find_property(ptr noundef nonnull %7, ptr noundef nonnull @.str.15, ptr noundef null) #5
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.dp83867_private, ptr %2, i32 0, i32 5
  store i32 2, ptr %62, align 4
  br label %63

63:                                               ; preds = %61, %58
  %64 = getelementptr inbounds %struct.dp83867_private, ptr %2, i32 0, i32 2
  %65 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %7, ptr noundef nonnull @.str.16, ptr noundef %64, i32 noundef 1, i32 noundef 0) #5
  %66 = icmp sgt i32 %65, -1
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %7, ptr noundef nonnull @.str.17, ptr noundef %64, i32 noundef 1, i32 noundef 0) #5
  %69 = icmp sgt i32 %68, -1
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  store i32 1, ptr %64, align 4
  br label %75

71:                                               ; preds = %67, %63
  %72 = load i32, ptr %64, align 4
  %73 = icmp ugt i32 %72, 3
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %72) #6
  br label %84

75:                                               ; preds = %71, %70
  %76 = getelementptr inbounds %struct.dp83867_private, ptr %2, i32 0, i32 3
  %77 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %7, ptr noundef nonnull @.str.19, ptr noundef %76, i32 noundef 1, i32 noundef 0) #5
  %78 = icmp sgt i32 %77, -1
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  store i32 1, ptr %76, align 4
  br label %84

80:                                               ; preds = %75
  %81 = load i32, ptr %76, align 4
  %82 = icmp ugt i32 %81, 3
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %81) #6
  br label %84

84:                                               ; preds = %83, %80, %79, %74, %52, %44, %18, %4, %1
  %85 = phi i32 [ -12, %1 ], [ -22, %74 ], [ -22, %83 ], [ -22, %52 ], [ -22, %44 ], [ -22, %18 ], [ -19, %4 ], [ 0, %80 ], [ 0, %79 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp83867_read_status(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 17) #5
  %7 = tail call i32 @genphy_read_status(ptr noundef %0) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = icmp slt i32 %6, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %9
  %12 = lshr i32 %6, 13
  %13 = and i32 %12, 1
  %14 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 9
  store i32 %13, ptr %14, align 4
  %15 = and i32 %6, 32768
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 8
  store i32 1000, ptr %18, align 8
  br label %25

19:                                               ; preds = %11
  %20 = and i32 %6, 16384
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 8
  br i1 %21, label %24, label %23

23:                                               ; preds = %19
  store i32 100, ptr %22, align 8
  br label %25

24:                                               ; preds = %19
  store i32 10, ptr %22, align 8
  br label %25

25:                                               ; preds = %24, %23, %17, %9, %1
  %26 = phi i32 [ %7, %1 ], [ %6, %9 ], [ 0, %23 ], [ 0, %24 ], [ 0, %17 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp83867_config_intr(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = icmp slt i16 %3, 0
  %5 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  br i1 %4, label %9, label %24

9:                                                ; preds = %1
  %10 = tail call i32 @mdiobus_read(ptr noundef %6, i32 noundef %8, i32 noundef 19) #5
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 0) #5
  %12 = icmp sgt i32 %10, -1
  br i1 %12, label %13, label %32

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 8
  %15 = load i32, ptr %7, align 8
  %16 = tail call i32 @mdiobus_read(ptr noundef %14, i32 noundef %15, i32 noundef 18) #5
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %13
  %19 = trunc i32 %16 to i16
  %20 = or i16 %19, -5104
  %21 = load ptr, ptr %5, align 8
  %22 = load i32, ptr %7, align 8
  %23 = tail call i32 @mdiobus_write(ptr noundef %21, i32 noundef %22, i32 noundef 18, i16 noundef zeroext %20) #5
  br label %32

24:                                               ; preds = %1
  %25 = tail call i32 @mdiobus_write(ptr noundef %6, i32 noundef %8, i32 noundef 18, i16 noundef zeroext 0) #5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load ptr, ptr %5, align 8
  %29 = load i32, ptr %7, align 8
  %30 = tail call i32 @mdiobus_read(ptr noundef %28, i32 noundef %29, i32 noundef 19) #5
  %31 = tail call i32 @llvm.smin.i32(i32 %30, i32 0) #5
  br label %32

32:                                               ; preds = %27, %24, %18, %13, %9
  %33 = phi i32 [ %11, %9 ], [ %16, %13 ], [ %25, %24 ], [ %23, %18 ], [ %31, %27 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp83867_handle_interrupt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 19) #5
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @phy_error(ptr noundef %0) #5
  br label %19

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8
  %11 = load i32, ptr %4, align 8
  %12 = tail call i32 @mdiobus_read(ptr noundef %10, i32 noundef %11, i32 noundef 18) #5
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  tail call void @phy_error(ptr noundef %0) #5
  br label %19

15:                                               ; preds = %9
  %16 = and i32 %12, %6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @phy_trigger_machine(ptr noundef %0) #5
  br label %19

19:                                               ; preds = %18, %15, %14, %8
  %20 = phi i32 [ 0, %8 ], [ 0, %14 ], [ 1, %18 ], [ 0, %15 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp83867_set_wol(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 32
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @phy_read_mmd(ptr noundef %0, i32 noundef 31, i32 noundef 308) #5
  %6 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = tail call i32 @mdiobus_read(ptr noundef %7, i32 noundef %9, i32 noundef 18) #5
  %11 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 106
  %14 = icmp eq i32 %13, 0
  %15 = trunc i32 %5 to i16
  br i1 %14, label %113, label %16

16:                                               ; preds = %2
  %17 = trunc i32 %10 to i16
  %18 = or i16 %17, 8
  %19 = and i32 %12, 32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %59, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 72
  %23 = load ptr, ptr %22, align 32
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %124

27:                                               ; preds = %21
  %28 = getelementptr i8, ptr %23, i32 4
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i32
  %31 = or i32 %24, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %124, label %33

33:                                               ; preds = %27
  %34 = trunc i32 %24 to i16
  %35 = and i16 %34, -256
  %36 = trunc i32 %24 to i16
  %37 = and i16 %36, 255
  %38 = or i16 %35, %37
  %39 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 31, i32 noundef 310, i16 noundef zeroext %38) #5
  %40 = getelementptr i8, ptr %23, i32 3
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i16
  %43 = shl nuw i16 %42, 8
  %44 = getelementptr i8, ptr %23, i32 2
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i16
  %47 = or i16 %43, %46
  %48 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 31, i32 noundef 311, i16 noundef zeroext %47) #5
  %49 = getelementptr i8, ptr %23, i32 5
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i16
  %52 = shl nuw i16 %51, 8
  %53 = load i8, ptr %28, align 1
  %54 = zext i8 %53 to i16
  %55 = or i16 %52, %54
  %56 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 31, i32 noundef 312, i16 noundef zeroext %55) #5
  %57 = or i16 %15, 129
  %58 = load i32, ptr %11, align 4
  br label %62

59:                                               ; preds = %16
  %60 = and i16 %15, -130
  %61 = or i16 %60, 128
  br label %62

62:                                               ; preds = %59, %33
  %63 = phi i32 [ %58, %33 ], [ %12, %59 ]
  %64 = phi i16 [ %57, %33 ], [ %61, %59 ]
  %65 = and i32 %63, 64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %97, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 3
  %69 = getelementptr %struct.ethtool_wolinfo, ptr %1, i32 0, i32 3, i32 1
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i16
  %72 = shl nuw i16 %71, 8
  %73 = load i8, ptr %68, align 4
  %74 = zext i8 %73 to i16
  %75 = or i16 %72, %74
  %76 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 31, i32 noundef 313, i16 noundef zeroext %75) #5
  %77 = getelementptr %struct.ethtool_wolinfo, ptr %1, i32 0, i32 3, i32 3
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i16
  %80 = shl nuw i16 %79, 8
  %81 = getelementptr %struct.ethtool_wolinfo, ptr %1, i32 0, i32 3, i32 2
  %82 = load i8, ptr %81, align 2
  %83 = zext i8 %82 to i16
  %84 = or i16 %80, %83
  %85 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 31, i32 noundef 314, i16 noundef zeroext %84) #5
  %86 = getelementptr %struct.ethtool_wolinfo, ptr %1, i32 0, i32 3, i32 5
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i16
  %89 = shl nuw i16 %88, 8
  %90 = getelementptr %struct.ethtool_wolinfo, ptr %1, i32 0, i32 3, i32 4
  %91 = load i8, ptr %90, align 4
  %92 = zext i8 %91 to i16
  %93 = or i16 %89, %92
  %94 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 31, i32 noundef 315, i16 noundef zeroext %93) #5
  %95 = or i16 %64, 32
  %96 = load i32, ptr %11, align 4
  br label %99

97:                                               ; preds = %62
  %98 = and i16 %64, -33
  br label %99

99:                                               ; preds = %97, %67
  %100 = phi i32 [ %96, %67 ], [ %63, %97 ]
  %101 = phi i16 [ %95, %67 ], [ %98, %97 ]
  %102 = and i16 %101, -17
  %103 = trunc i32 %100 to i16
  %104 = shl i16 %103, 3
  %105 = and i16 %104, 16
  %106 = or i16 %105, %102
  %107 = and i32 %100, 8
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %99
  %110 = or i16 %106, 4
  br label %117

111:                                              ; preds = %99
  %112 = and i16 %106, -5
  br label %117

113:                                              ; preds = %2
  %114 = and i16 %15, -129
  %115 = trunc i32 %10 to i16
  %116 = and i16 %115, -9
  br label %117

117:                                              ; preds = %113, %111, %109
  %118 = phi i16 [ %110, %109 ], [ %112, %111 ], [ %114, %113 ]
  %119 = phi i16 [ %18, %109 ], [ %18, %111 ], [ %116, %113 ]
  %120 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 31, i32 noundef 308, i16 noundef zeroext %118) #5
  %121 = load ptr, ptr %6, align 8
  %122 = load i32, ptr %8, align 8
  %123 = tail call i32 @mdiobus_write(ptr noundef %121, i32 noundef %122, i32 noundef 18, i16 noundef zeroext %119) #5
  br label %124

124:                                              ; preds = %117, %27, %21
  %125 = phi i32 [ 0, %117 ], [ -22, %27 ], [ -22, %21 ]
  ret i32 %125
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dp83867_get_wol(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 1
  store i32 106, ptr %3, align 4
  %4 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  store i32 0, ptr %4, align 4
  %5 = tail call i32 @phy_read_mmd(ptr noundef %0, i32 noundef 31, i32 noundef 308) #5
  %6 = and i32 %5, 16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, ptr %4, align 4
  %10 = or i32 %9, 2
  store i32 %10, ptr %4, align 4
  br label %11

11:                                               ; preds = %8, %2
  %12 = and i32 %5, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32, ptr %4, align 4
  %16 = or i32 %15, 8
  store i32 %16, ptr %4, align 4
  br label %17

17:                                               ; preds = %14, %11
  %18 = and i32 %5, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, ptr %4, align 4
  %22 = or i32 %21, 32
  store i32 %22, ptr %4, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = and i32 %5, 32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %47, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @phy_read_mmd(ptr noundef %0, i32 noundef 31, i32 noundef 313) #5
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 3
  store i8 %28, ptr %29, align 4
  %30 = lshr i32 %27, 8
  %31 = trunc i32 %30 to i8
  %32 = getelementptr %struct.ethtool_wolinfo, ptr %1, i32 0, i32 3, i32 1
  store i8 %31, ptr %32, align 1
  %33 = tail call i32 @phy_read_mmd(ptr noundef %0, i32 noundef 31, i32 noundef 314) #5
  %34 = trunc i32 %33 to i8
  %35 = getelementptr %struct.ethtool_wolinfo, ptr %1, i32 0, i32 3, i32 2
  store i8 %34, ptr %35, align 2
  %36 = lshr i32 %33, 8
  %37 = trunc i32 %36 to i8
  %38 = getelementptr %struct.ethtool_wolinfo, ptr %1, i32 0, i32 3, i32 3
  store i8 %37, ptr %38, align 1
  %39 = tail call i32 @phy_read_mmd(ptr noundef %0, i32 noundef 31, i32 noundef 315) #5
  %40 = trunc i32 %39 to i8
  %41 = getelementptr %struct.ethtool_wolinfo, ptr %1, i32 0, i32 3, i32 4
  store i8 %40, ptr %41, align 4
  %42 = lshr i32 %39, 8
  %43 = trunc i32 %42 to i8
  %44 = getelementptr %struct.ethtool_wolinfo, ptr %1, i32 0, i32 3, i32 5
  store i8 %43, ptr %44, align 1
  %45 = load i32, ptr %4, align 4
  %46 = or i32 %45, 64
  store i32 %46, ptr %4, align 4
  br label %47

47:                                               ; preds = %26, %23
  %48 = and i32 %5, 128
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 0, ptr %4, align 4
  br label %51

51:                                               ; preds = %50, %47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp83867_get_tunable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.ethtool_tunable, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 8
  %12 = tail call i32 @mdiobus_read(ptr noundef %9, i32 noundef %11, i32 noundef 20) #5
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %7
  %15 = lshr i32 %12, 7
  %16 = and i32 %15, 24
  %17 = lshr i32 134480385, %16
  %18 = trunc i32 %17 to i8
  %19 = and i32 %12, 768
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i8 0, i8 %18
  store i8 %21, ptr %2, align 1
  br label %22

22:                                               ; preds = %14, %7, %3
  %23 = phi i32 [ -95, %3 ], [ 0, %14 ], [ %12, %7 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp83867_set_tunable(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.ethtool_tunable, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %20

7:                                                ; preds = %3
  %8 = load i8, ptr %2, align 1
  %9 = icmp ugt i8 %8, 8
  br i1 %9, label %20, label %10

10:                                               ; preds = %7
  switch i8 %8, label %16 [
    i8 0, label %11
    i8 1, label %17
    i8 2, label %13
    i8 4, label %14
    i8 8, label %15
  ]

11:                                               ; preds = %10
  %12 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 20, i16 noundef zeroext 768, i16 noundef zeroext 0) #5
  br label %20

13:                                               ; preds = %10
  br label %17

14:                                               ; preds = %10
  br label %17

15:                                               ; preds = %10
  br label %17

16:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.21) #6
  br label %20

17:                                               ; preds = %15, %14, %13, %10
  %18 = phi i16 [ 3840, %15 ], [ 2816, %14 ], [ 1792, %13 ], [ 768, %10 ]
  %19 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 20, i16 noundef zeroext 3840, i16 noundef zeroext %18) #5
  br label %20

20:                                               ; preds = %17, %16, %11, %7, %3
  %21 = phi i32 [ -95, %3 ], [ -22, %16 ], [ %19, %17 ], [ %12, %11 ], [ -7, %7 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_read_mmd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_write_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dp83867_config_port_mirroring(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dp83867_private, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i32 @phy_modify_mmd(ptr noundef %0, i32 noundef 31, i32 noundef 49, i16 noundef zeroext 0, i16 noundef zeroext 1) #5
  br label %11

9:                                                ; preds = %1
  %10 = tail call i32 @phy_modify_mmd(ptr noundef %0, i32 noundef 31, i32 noundef 49, i16 noundef zeroext 1, i16 noundef zeroext 0) #5
  br label %11

11:                                               ; preds = %9, %7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_trigger_machine(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
