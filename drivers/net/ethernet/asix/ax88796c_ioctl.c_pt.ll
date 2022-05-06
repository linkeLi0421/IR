; ModuleID = '/llk/IR/drivers/net/ethernet/asix/ax88796c_ioctl.c_pt.bc'
source_filename = "../drivers/net/ethernet/asix/ax88796c_ioctl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ax88796c_device = type { ptr, ptr, ptr, %struct.work_struct, %struct.mutex, %struct.sk_buff_head, %struct.axspi_data, ptr, ptr, i32, i16, [8 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.113, i32, %struct.spinlock }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type { ptr, ptr }
%struct.axspi_data = type { ptr, %struct.spi_message, [2 x %struct.spi_transfer], [6 x i8], [6 x i8], i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.95, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.112, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.95 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.112 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}

@ax88796c_ethtool_ops = dso_local local_unnamed_addr constant %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @ax88796c_get_drvinfo, ptr @ax88796c_get_regs_len, ptr @ax88796c_get_regs, ptr null, ptr null, ptr @ax88796c_get_msglevel, ptr @ax88796c_set_msglevel, ptr @phy_ethtool_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ax88796c_get_pauseparam, ptr @ax88796c_set_pauseparam, ptr null, ptr @ax88796c_get_strings, ptr null, ptr null, ptr null, ptr null, ptr @ax88796c_get_priv_flags, ptr @ax88796c_set_priv_flags, ptr @ax88796c_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ax88796c_no_regs_mask = external dso_local global [0 x i32], align 4
@ax88796c_priv_flag_names = internal unnamed_addr constant [1 x [32 x i8]] [[32 x i8] c"SPICompression\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 1
@str = private unnamed_addr constant [33 x i8] c"ax88796c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ax88796c_mdio_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ax88796c_device, ptr %5, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %6) #10
  %7 = getelementptr inbounds %struct.ax88796c_device, ptr %5, i32 0, i32 6
  %8 = and i32 %2, 31
  %9 = shl i32 %1, 8
  %10 = and i32 %9, 7936
  %11 = or i32 %8, %10
  %12 = trunc i32 %11 to i16
  %13 = or i16 %12, 16384
  %14 = tail call i32 @axspi_write_reg(ptr noundef %7, i8 noundef zeroext 74, i16 noundef zeroext %13) #10
  %15 = tail call i32 @jiffies_to_usecs(i32 noundef 1) #10
  %16 = zext i32 %15 to i64
  %17 = tail call i64 @ktime_get() #10
  %18 = mul nuw nsw i64 %16, 1000
  %19 = add i64 %18, %17
  %20 = tail call zeroext i16 @axspi_read_reg(ptr noundef %7, i8 noundef zeroext 74) #10
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %3
  %23 = icmp eq i32 %15, 0
  br label %24

24:                                               ; preds = %28, %22
  br i1 %23, label %28, label %25

25:                                               ; preds = %24
  %26 = tail call i64 @ktime_get() #10
  %27 = icmp sgt i64 %26, %19
  br i1 %27, label %31, label %28

28:                                               ; preds = %25, %24
  %29 = tail call zeroext i16 @axspi_read_reg(ptr noundef %7, i8 noundef zeroext 74) #10
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %24, label %34

31:                                               ; preds = %25
  %32 = tail call zeroext i16 @axspi_read_reg(ptr noundef %7, i8 noundef zeroext 74) #10
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31, %28, %3
  %35 = tail call zeroext i16 @axspi_read_reg(ptr noundef %7, i8 noundef zeroext 72) #10
  %36 = zext i16 %35 to i32
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi i32 [ -110, %31 ], [ %36, %34 ]
  tail call void @mutex_unlock(ptr noundef %6) #10
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ax88796c_mdio_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ax88796c_device, ptr %6, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.ax88796c_device, ptr %6, i32 0, i32 6
  %9 = tail call i32 @axspi_write_reg(ptr noundef %8, i8 noundef zeroext 72, i16 noundef zeroext %3) #10
  %10 = and i32 %2, 31
  %11 = shl i32 %1, 8
  %12 = and i32 %11, 7936
  %13 = or i32 %10, %12
  %14 = trunc i32 %13 to i16
  %15 = or i16 %14, -32768
  %16 = tail call i32 @axspi_write_reg(ptr noundef %8, i8 noundef zeroext 74, i16 noundef zeroext %15) #10
  %17 = tail call i32 @jiffies_to_usecs(i32 noundef 1) #10
  %18 = zext i32 %17 to i64
  %19 = tail call i64 @ktime_get() #10
  %20 = mul nuw nsw i64 %18, 1000
  %21 = add i64 %20, %19
  %22 = tail call zeroext i16 @axspi_read_reg(ptr noundef %8, i8 noundef zeroext 74) #10
  %23 = and i16 %22, 8192
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %4
  %26 = icmp eq i32 %17, 0
  br label %27

27:                                               ; preds = %31, %25
  br i1 %26, label %31, label %28

28:                                               ; preds = %27
  %29 = tail call i64 @ktime_get() #10
  %30 = icmp sgt i64 %29, %21
  br i1 %30, label %35, label %31

31:                                               ; preds = %28, %27
  %32 = tail call zeroext i16 @axspi_read_reg(ptr noundef %8, i8 noundef zeroext 74) #10
  %33 = and i16 %32, 8192
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %27, label %40

35:                                               ; preds = %28
  %36 = tail call zeroext i16 @axspi_read_reg(ptr noundef %8, i8 noundef zeroext 74) #10
  %37 = and i16 %36, 8192
  %38 = icmp eq i16 %37, 0
  %39 = select i1 %38, i32 -110, i32 0
  br label %40

40:                                               ; preds = %35, %31, %4
  %41 = phi i32 [ 0, %4 ], [ %39, %35 ], [ 0, %31 ]
  tail call void @mutex_unlock(ptr noundef %7) #10
  ret i32 %41
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @ax88796c_get_drvinfo(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(32) @str, i32 noundef 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ax88796c_get_regs_len(ptr nocapture noundef readnone %0) #3 {
  ret i32 270
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ax88796c_get_regs(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(270) %2, i8 0, i32 270, i1 false)
  %4 = getelementptr i8, ptr %0, i32 1436
  tail call void @mutex_lock(ptr noundef %4) #10
  %5 = getelementptr i8, ptr %0, i32 1472
  br label %6

6:                                                ; preds = %20, %3
  %7 = phi ptr [ %2, %3 ], [ %21, %20 ]
  %8 = phi i32 [ 0, %3 ], [ %22, %20 ]
  %9 = lshr exact i32 %8, 1
  %10 = lshr i32 %8, 6
  %11 = getelementptr i32, ptr @ax88796c_no_regs_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %9, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %12, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %6
  %18 = trunc i32 %8 to i8
  %19 = tail call zeroext i16 @axspi_read_reg(ptr noundef %5, i8 noundef zeroext %18) #10
  store i16 %19, ptr %7, align 2
  br label %20

20:                                               ; preds = %17, %6
  %21 = getelementptr i16, ptr %7, i32 1
  %22 = add nuw nsw i32 %8, 2
  %23 = icmp ult i32 %8, 254
  br i1 %23, label %6, label %24

24:                                               ; preds = %20
  tail call void @mutex_unlock(ptr noundef %4) #10
  %25 = getelementptr i8, ptr %0, i32 1744
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.mdio_device, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.mdio_device, ptr %26, i32 0, i32 6
  %30 = load i32, ptr %29, align 8
  %31 = tail call i32 @mdiobus_read(ptr noundef %28, i32 noundef %30, i32 noundef 0) #10
  %32 = trunc i32 %31 to i16
  store i16 %32, ptr %21, align 2
  %33 = getelementptr i16, ptr %7, i32 2
  %34 = load ptr, ptr %25, align 4
  %35 = getelementptr inbounds %struct.mdio_device, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.mdio_device, ptr %34, i32 0, i32 6
  %38 = load i32, ptr %37, align 8
  %39 = tail call i32 @mdiobus_read(ptr noundef %36, i32 noundef %38, i32 noundef 1) #10
  %40 = trunc i32 %39 to i16
  store i16 %40, ptr %33, align 2
  %41 = getelementptr i16, ptr %7, i32 3
  %42 = load ptr, ptr %25, align 4
  %43 = getelementptr inbounds %struct.mdio_device, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.mdio_device, ptr %42, i32 0, i32 6
  %46 = load i32, ptr %45, align 8
  %47 = tail call i32 @mdiobus_read(ptr noundef %44, i32 noundef %46, i32 noundef 2) #10
  %48 = trunc i32 %47 to i16
  store i16 %48, ptr %41, align 2
  %49 = getelementptr i16, ptr %7, i32 4
  %50 = load ptr, ptr %25, align 4
  %51 = getelementptr inbounds %struct.mdio_device, ptr %50, i32 0, i32 1
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.mdio_device, ptr %50, i32 0, i32 6
  %54 = load i32, ptr %53, align 8
  %55 = tail call i32 @mdiobus_read(ptr noundef %52, i32 noundef %54, i32 noundef 3) #10
  %56 = trunc i32 %55 to i16
  store i16 %56, ptr %49, align 2
  %57 = getelementptr i16, ptr %7, i32 5
  %58 = load ptr, ptr %25, align 4
  %59 = getelementptr inbounds %struct.mdio_device, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.mdio_device, ptr %58, i32 0, i32 6
  %62 = load i32, ptr %61, align 8
  %63 = tail call i32 @mdiobus_read(ptr noundef %60, i32 noundef %62, i32 noundef 4) #10
  %64 = trunc i32 %63 to i16
  store i16 %64, ptr %57, align 2
  %65 = getelementptr i16, ptr %7, i32 6
  %66 = load ptr, ptr %25, align 4
  %67 = getelementptr inbounds %struct.mdio_device, ptr %66, i32 0, i32 1
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.mdio_device, ptr %66, i32 0, i32 6
  %70 = load i32, ptr %69, align 8
  %71 = tail call i32 @mdiobus_read(ptr noundef %68, i32 noundef %70, i32 noundef 5) #10
  %72 = trunc i32 %71 to i16
  store i16 %72, ptr %65, align 2
  %73 = getelementptr i16, ptr %7, i32 7
  %74 = load ptr, ptr %25, align 4
  %75 = getelementptr inbounds %struct.mdio_device, ptr %74, i32 0, i32 1
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds %struct.mdio_device, ptr %74, i32 0, i32 6
  %78 = load i32, ptr %77, align 8
  %79 = tail call i32 @mdiobus_read(ptr noundef %76, i32 noundef %78, i32 noundef 6) #10
  %80 = trunc i32 %79 to i16
  store i16 %80, ptr %73, align 2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ax88796c_get_msglevel(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 1748
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @ax88796c_set_msglevel(ptr nocapture noundef writeonly %0, i32 noundef %1) #5 {
  %3 = getelementptr i8, ptr %0, i32 1748
  store i32 %1, ptr %3, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_nway_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @ax88796c_get_pauseparam(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr i8, ptr %0, i32 1784
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 1
  %6 = and i32 %5, 1
  %7 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 3
  store i32 %6, ptr %7, align 4
  %8 = load i32, ptr %3, align 4
  %9 = and i32 %8, 1
  %10 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 2
  store i32 %9, ptr %10, align 4
  %11 = load i32, ptr %3, align 4
  %12 = lshr i32 %11, 2
  %13 = and i32 %12, 1
  %14 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88796c_set_pauseparam(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = or i32 %6, %10
  %12 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 0, i32 4
  %16 = or i32 %11, %15
  %17 = getelementptr i8, ptr %0, i32 1784
  store i32 %16, ptr %17, align 4
  %18 = load i32, ptr %12, align 4
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr i8, ptr %0, i32 1744
  %21 = load ptr, ptr %20, align 4
  br i1 %19, label %27, label %22

22:                                               ; preds = %2
  %23 = load i32, ptr %3, align 4
  %24 = icmp ne i32 %23, 0
  %25 = load i32, ptr %7, align 4
  %26 = icmp ne i32 %25, 0
  tail call void @phy_set_asym_pause(ptr noundef %21, i1 noundef zeroext %24, i1 noundef zeroext %26) #10
  br label %38

27:                                               ; preds = %2
  tail call void @phy_set_asym_pause(ptr noundef %21, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %28 = load i32, ptr %17, align 4
  %29 = getelementptr i8, ptr %0, i32 1436
  tail call void @mutex_lock(ptr noundef %29) #10
  %30 = getelementptr i8, ptr %0, i32 1472
  %31 = tail call zeroext i16 @axspi_read_reg(ptr noundef %30, i8 noundef zeroext 14) #10
  %32 = and i16 %31, -25
  %33 = trunc i32 %28 to i16
  %34 = shl i16 %33, 3
  %35 = and i16 %34, 24
  %36 = or i16 %32, %35
  %37 = tail call i32 @axspi_write_reg(ptr noundef %30, i8 noundef zeroext 14, i16 noundef zeroext %36) #10
  tail call void @mutex_unlock(ptr noundef %29) #10
  br label %38

38:                                               ; preds = %27, %22
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @ax88796c_get_strings(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = icmp eq i32 %1, 2
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(32) @ax88796c_priv_flag_names, i32 32, i1 false)
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ax88796c_get_priv_flags(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 1788
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @ax88796c_set_priv_flags(ptr noundef %0, i32 noundef %1) #7 {
  %3 = icmp ult i32 %1, 2
  br i1 %3, label %4, label %16

4:                                                ; preds = %2
  %5 = getelementptr i8, ptr %0, i32 1788
  %6 = load i32, ptr %5, align 4
  %7 = xor i32 %6, %1
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %4
  store i32 %1, ptr %5, align 4
  br label %16

16:                                               ; preds = %15, %10, %2
  %17 = phi i32 [ 0, %15 ], [ -95, %2 ], [ -16, %10 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ax88796c_get_sset_count(ptr nocapture noundef readnone %0, i32 noundef %1) #3 {
  %3 = icmp eq i32 %1, 2
  %4 = select i1 %3, i32 1, i32 -95
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ax88796c_ioctl(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @phy_mii_ioctl(ptr noundef %5, ptr noundef %1, i32 noundef %2) #10
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @axspi_write_reg(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @axspi_read_reg(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_set_asym_pause(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nounwind }

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
