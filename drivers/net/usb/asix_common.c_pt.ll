; ModuleID = '/llk/IR/drivers/net/usb/asix_common.c_pt.bc'
source_filename = "../drivers/net/usb/asix_common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usbnet = type { ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, %struct.mutex, i8, i8, i8, i16, i16, i8, i32, i32, ptr, i32, %struct.timer_list, ptr, ptr, i32, [5 x i32], i32, i32, i32, %struct.mii_if_info, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, i32, %struct.mutex, %struct.usb_anchor, %struct.tasklet_struct, %struct.work_struct, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.109, i32, %struct.spinlock }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.111, i32 }
%union.anon.111 = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.asix_rx_fixup_info = type { ptr, i32, i16, i8 }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.91, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.108, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.91 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.108 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.asix_common_private = type { ptr, ptr, i16, i16, %struct.asix_rx_fixup_info, ptr, ptr, i16, [20 x i8], i8 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [37 x i8] c"Failed to read reg index 0x%04x: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to write reg index 0x%04x: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"asix_rx_fixup() Data Header synchronisation was lost, remaining %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"asix_rx_fixup() Bad Header Length 0x%x, offset %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"asix_rx_fixup() Bad SKB Length %d, %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Failed to enable software MII access\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Failed to enable hardware MII access\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Error reading PHY_ID register: %02x\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Failed to send software reset: %02x\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Error reading RX_CTL register: %02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"Failed to write RX_CTL mode to 0x%04x: %02x\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"Error reading Medium Status register: %02x\0A\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"Failed to write Medium Mode mode to 0x%04x: %02x\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"Failed to write GPIO value 0x%04x: %02x\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"Failed to read EEPROM at offset 0x%02x.\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"Failed to enable EEPROM write\0A\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"Failed to write EEPROM at offset 0x%02x.\0A\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"Failed to disable EEPROM write\0A\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"asix\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"22-Dec-2011\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @asix_read_cmd(ptr noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = icmp eq ptr %0, null
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 20, 0\0A.popsection", ""() #10, !srcloc !9
  unreachable

10:                                               ; preds = %7
  %11 = icmp eq i32 %6, 0
  %12 = select i1 %11, ptr @usbnet_read_cmd, ptr @usbnet_read_cmd_nopm
  %13 = tail call i32 %12(ptr noundef nonnull %0, i8 noundef zeroext %1, i8 noundef zeroext -64, i16 noundef zeroext %2, i16 noundef zeroext %3, ptr noundef %5, i16 noundef zeroext %4) #10, !callees !10
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %19, !prof !8

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %17 = load ptr, ptr %16, align 4
  %18 = zext i16 %3 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %17, ptr noundef nonnull @.str, i32 noundef %18, i32 noundef %13) #11
  br label %19

19:                                               ; preds = %15, %10
  ret i32 %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_read_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_read_cmd_nopm(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @asix_write_cmd(ptr noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = icmp eq ptr %0, null
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

10:                                               ; preds = %7
  %11 = icmp eq i32 %6, 0
  %12 = select i1 %11, ptr @usbnet_write_cmd, ptr @usbnet_write_cmd_nopm
  %13 = tail call i32 %12(ptr noundef nonnull %0, i8 noundef zeroext %1, i8 noundef zeroext 64, i16 noundef zeroext %2, i16 noundef zeroext %3, ptr noundef %5, i16 noundef zeroext %4) #10, !callees !12
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %19, !prof !8

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %17 = load ptr, ptr %16, align 4
  %18 = zext i16 %3 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %17, ptr noundef nonnull @.str.1, i32 noundef %18, i32 noundef %13) #11
  br label %19

19:                                               ; preds = %15, %10
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd_nopm(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @asix_write_cmd_async(ptr noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call i32 @usbnet_write_cmd_async(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext 64, i16 noundef zeroext %2, i16 noundef zeroext %3, ptr noundef %5, i16 noundef zeroext %4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd_async(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @asix_rx_fixup_internal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.asix_rx_fixup_info, ptr %2, i32 0, i32 2
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = icmp eq i16 %5, 0
  br i1 %7, label %34, label %8

8:                                                ; preds = %3
  %9 = add nuw nsw i32 %6, 4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %11 = load i32, ptr %10, align 8
  %12 = icmp ugt i32 %9, %11
  br i1 %12, label %34, label %13

13:                                               ; preds = %8
  %14 = add nuw nsw i32 %6, 1
  %15 = and i32 %14, 65534
  %16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 %15
  %19 = load i32, ptr %18, align 1
  %20 = getelementptr inbounds %struct.asix_rx_fixup_info, ptr %2, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  %21 = xor i32 %19, -1
  %22 = lshr i32 %21, 16
  %23 = xor i32 %22, %19
  %24 = and i32 %23, 2047
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %28 = load ptr, ptr %27, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %28, ptr noundef nonnull @.str.2, i32 noundef %6) #11
  %29 = load ptr, ptr %2, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  tail call void @kfree_skb_reason(ptr noundef nonnull %29, i32 noundef 0) #10
  store ptr null, ptr %2, align 4
  br label %32

32:                                               ; preds = %31, %26
  store i16 0, ptr %4, align 4
  %33 = getelementptr inbounds %struct.asix_rx_fixup_info, ptr %2, i32 0, i32 3
  store i8 0, ptr %33, align 2
  store i32 0, ptr %20, align 4
  br label %34

34:                                               ; preds = %32, %13, %8, %3
  %35 = phi i16 [ %5, %13 ], [ 0, %32 ], [ %5, %8 ], [ 0, %3 ]
  %36 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %37 = load i32, ptr %36, align 8
  %38 = icmp ult i32 %37, 2
  br i1 %38, label %147, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.asix_rx_fixup_info, ptr %2, i32 0, i32 3
  %41 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %42 = getelementptr inbounds %struct.asix_rx_fixup_info, ptr %2, i32 0, i32 1
  %43 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  br label %44

44:                                               ; preds = %145, %39
  %45 = phi i16 [ %35, %39 ], [ %146, %145 ]
  %46 = phi i32 [ %37, %39 ], [ %143, %145 ]
  %47 = phi i32 [ 2, %39 ], [ %142, %145 ]
  %48 = phi i32 [ 0, %39 ], [ %141, %145 ]
  %49 = icmp eq i16 %45, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = load ptr, ptr %2, align 4
  %52 = zext i16 %45 to i32
  br label %115

53:                                               ; preds = %44
  %54 = sub i32 %46, %48
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load ptr, ptr %41, align 4
  %58 = getelementptr i8, ptr %57, i32 %48
  %59 = load i16, ptr %58, align 1
  %60 = zext i16 %59 to i32
  store i32 %60, ptr %42, align 4
  store i8 1, ptr %40, align 2
  %61 = load i32, ptr %36, align 8
  br label %147

62:                                               ; preds = %53
  %63 = load i8, ptr %40, align 2, !range !13
  %64 = icmp eq i8 %63, 0
  %65 = load ptr, ptr %41, align 4
  %66 = getelementptr i8, ptr %65, i32 %48
  br i1 %64, label %73, label %67

67:                                               ; preds = %62
  %68 = load i16, ptr %66, align 1
  %69 = zext i16 %68 to i32
  %70 = shl nuw i32 %69, 16
  %71 = load i32, ptr %42, align 4
  %72 = or i32 %70, %71
  store i32 %72, ptr %42, align 4
  store i8 0, ptr %40, align 2
  br label %76

73:                                               ; preds = %62
  %74 = load i32, ptr %66, align 1
  store i32 %74, ptr %42, align 4
  %75 = add i32 %48, 4
  br label %76

76:                                               ; preds = %73, %67
  %77 = phi i32 [ %72, %67 ], [ %74, %73 ]
  %78 = phi i32 [ %47, %67 ], [ %75, %73 ]
  %79 = trunc i32 %77 to i16
  %80 = and i16 %79, 2047
  %81 = zext i16 %80 to i32
  %82 = xor i32 %77, -1
  %83 = lshr i32 %82, 16
  %84 = and i32 %83, 2047
  %85 = icmp eq i32 %84, %81
  %86 = load ptr, ptr %43, align 4
  br i1 %85, label %92, label %87

87:                                               ; preds = %76
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %86, ptr noundef nonnull @.str.3, i32 noundef %77, i32 noundef %78) #11
  %88 = load ptr, ptr %2, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  tail call void @kfree_skb_reason(ptr noundef nonnull %88, i32 noundef 0) #10
  store ptr null, ptr %2, align 4
  br label %91

91:                                               ; preds = %90, %87
  store i16 0, ptr %4, align 4
  store i8 0, ptr %40, align 2
  br label %160

92:                                               ; preds = %76
  %93 = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 20
  %94 = load i32, ptr %93, align 4
  %95 = add i32 %94, 18
  %96 = icmp ult i32 %95, %81
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load ptr, ptr %2, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  tail call void @kfree_skb_reason(ptr noundef nonnull %98, i32 noundef 0) #10
  store ptr null, ptr %2, align 4
  br label %101

101:                                              ; preds = %100, %97
  store i16 0, ptr %4, align 4
  store i8 0, ptr %40, align 2
  br label %160

102:                                              ; preds = %92
  %103 = add nuw nsw i32 %81, 2
  %104 = tail call ptr @__netdev_alloc_skb(ptr noundef %86, i32 noundef %103, i32 noundef 2592) #10
  %105 = icmp eq ptr %104, null
  br i1 %105, label %113, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.sk_buff, ptr %104, i32 0, i32 17
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr i8, ptr %108, i32 2
  store ptr %109, ptr %107, align 4
  %110 = getelementptr inbounds %struct.sk_buff, ptr %104, i32 0, i32 14
  %111 = load ptr, ptr %110, align 8
  %112 = getelementptr i8, ptr %111, i32 2
  store ptr %112, ptr %110, align 8
  br label %113

113:                                              ; preds = %106, %102
  store ptr %104, ptr %2, align 4
  store i16 %80, ptr %4, align 4
  %114 = load i32, ptr %36, align 8
  br label %115

115:                                              ; preds = %113, %50
  %116 = phi i32 [ %52, %50 ], [ %81, %113 ]
  %117 = phi ptr [ %51, %50 ], [ %104, %113 ]
  %118 = phi i32 [ %46, %50 ], [ %114, %113 ]
  %119 = phi i16 [ %45, %50 ], [ %80, %113 ]
  %120 = phi i32 [ %48, %50 ], [ %78, %113 ]
  %121 = sub i32 %118, %120
  %122 = icmp ult i32 %121, %116
  %123 = trunc i32 %121 to i16
  %124 = sub i16 %119, %123
  %125 = select i1 %122, i16 %124, i16 0
  %126 = select i1 %122, i16 %123, i16 %119
  store i16 %125, ptr %4, align 4
  %127 = icmp eq ptr %117, null
  br i1 %127, label %137, label %128

128:                                              ; preds = %115
  %129 = load ptr, ptr %41, align 4
  %130 = getelementptr i8, ptr %129, i32 %120
  %131 = zext i16 %126 to i32
  %132 = tail call ptr @skb_put(ptr noundef nonnull %117, i32 noundef %131) #10
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %132, ptr align 1 %130, i32 %131, i1 false) #10
  %133 = load i16, ptr %4, align 4
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %128
  %136 = load ptr, ptr %2, align 4
  tail call void @usbnet_skb_return(ptr noundef %0, ptr noundef %136) #10
  store ptr null, ptr %2, align 4
  br label %137

137:                                              ; preds = %135, %128, %115
  %138 = add i16 %126, 1
  %139 = and i16 %138, -2
  %140 = zext i16 %139 to i32
  %141 = add i32 %120, %140
  %142 = add i32 %141, 2
  %143 = load i32, ptr %36, align 8
  %144 = icmp ugt i32 %142, %143
  br i1 %144, label %147, label %145

145:                                              ; preds = %137
  %146 = load i16, ptr %4, align 4
  br label %44

147:                                              ; preds = %137, %56, %34
  %148 = phi i32 [ %61, %56 ], [ %37, %34 ], [ %143, %137 ]
  %149 = phi i32 [ %47, %56 ], [ 0, %34 ], [ %141, %137 ]
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %162, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %153 = load ptr, ptr %152, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %153, ptr noundef nonnull @.str.4, i32 noundef %148, i32 noundef %149) #11
  %154 = load ptr, ptr %2, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %157, label %156

156:                                              ; preds = %151
  tail call void @kfree_skb_reason(ptr noundef nonnull %154, i32 noundef 0) #10
  store ptr null, ptr %2, align 4
  br label %157

157:                                              ; preds = %156, %151
  store i16 0, ptr %4, align 4
  %158 = getelementptr inbounds %struct.asix_rx_fixup_info, ptr %2, i32 0, i32 3
  store i8 0, ptr %158, align 2
  %159 = getelementptr inbounds %struct.asix_rx_fixup_info, ptr %2, i32 0, i32 1
  br label %160

160:                                              ; preds = %157, %101, %91
  %161 = phi ptr [ %42, %101 ], [ %42, %91 ], [ %159, %157 ]
  store i32 0, ptr %161, align 4
  br label %162

162:                                              ; preds = %160, %147
  %163 = phi i32 [ 1, %147 ], [ 0, %160 ]
  ret i32 %163
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_skb_return(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @asix_rx_fixup_common(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.asix_common_private, ptr %4, i32 0, i32 4
  %6 = tail call i32 @asix_rx_fixup_internal(ptr noundef %0, ptr noundef %1, ptr noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @asix_rx_fixup_common_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.asix_common_private, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @kfree_skb_reason(ptr noundef nonnull %5, i32 noundef 0) #10
  store ptr null, ptr %4, align 4
  br label %8

8:                                                ; preds = %7, %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @asix_tx_fixup(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = ptrtoint ptr %5 to i32
  %9 = ptrtoint ptr %7 to i32
  %10 = sub i32 %8, %9
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %18 = load ptr, ptr %17, align 8
  %19 = ptrtoint ptr %16 to i32
  %20 = ptrtoint ptr %18 to i32
  %21 = sub i32 %19, %20
  br label %22

22:                                               ; preds = %14, %3
  %23 = phi i32 [ %21, %14 ], [ 0, %3 ]
  %24 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %25 = load i32, ptr %24, align 8
  %26 = add i32 %25, 4
  %27 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 16
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, -1
  %30 = and i32 %29, %26
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 4, i32 0
  %33 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %34 = load i8, ptr %33, align 2
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %22
  %38 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.skb_shared_info, ptr %39, i32 0, i32 10
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, 65535
  %43 = ashr i32 %41, 16
  %44 = sub nsw i32 %42, %43
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %64

46:                                               ; preds = %37
  br i1 %31, label %47, label %51

47:                                               ; preds = %46
  %48 = load volatile i32, ptr %40, align 4
  %49 = and i32 %48, 65535
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %64

51:                                               ; preds = %47, %46, %22
  %52 = add i32 %23, %10
  %53 = add nuw nsw i32 %32, 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %64, label %55

55:                                               ; preds = %51
  %56 = icmp slt i32 %10, 4
  %57 = icmp slt i32 %23, %32
  %58 = select i1 %56, i1 true, i1 %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = getelementptr i8, ptr %7, i32 4
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %60, ptr align 1 %5, i32 %25, i1 false)
  store ptr %60, ptr %4, align 4
  %61 = load i32, ptr %24, align 8
  %62 = getelementptr i8, ptr %60, i32 %61
  %63 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  store ptr %62, ptr %63, align 8
  br label %70

64:                                               ; preds = %51, %47, %37
  %65 = tail call ptr @skb_copy_expand(ptr noundef %1, i32 noundef 4, i32 noundef %32, i32 noundef %2) #10
  tail call void @__dev_kfree_skb_any(ptr noundef %1, i32 noundef 1) #10
  %66 = icmp eq ptr %65, null
  br i1 %66, label %84, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.sk_buff, ptr %65, i32 0, i32 5
  %69 = load i32, ptr %68, align 8
  br label %70

70:                                               ; preds = %67, %59, %55
  %71 = phi i32 [ %69, %67 ], [ %61, %59 ], [ %25, %55 ]
  %72 = phi ptr [ %65, %67 ], [ %1, %59 ], [ %1, %55 ]
  %73 = xor i32 %71, -1
  %74 = shl i32 %73, 16
  %75 = add i32 %74, %71
  %76 = tail call ptr @skb_push(ptr noundef %72, i32 noundef 4) #10
  store i32 %75, ptr %76, align 1
  br i1 %31, label %77, label %81

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.sk_buff, ptr %72, i32 0, i32 14
  %79 = load ptr, ptr %78, align 8
  store i32 -65536, ptr %79, align 1
  %80 = tail call ptr @skb_put(ptr noundef %72, i32 noundef 4) #10
  br label %81

81:                                               ; preds = %77, %70
  %82 = getelementptr inbounds %struct.sk_buff, ptr %72, i32 0, i32 3, i32 16
  store i32 1, ptr %82, align 4
  %83 = getelementptr inbounds %struct.sk_buff, ptr %72, i32 0, i32 3, i32 12
  store i32 0, ptr %83, align 4
  br label %84

84:                                               ; preds = %81, %64
  %85 = phi ptr [ %72, %81 ], [ null, %64 ]
  ret ptr %85
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy_expand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @asix_set_sw_mii(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !8

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

5:                                                ; preds = %2
  %6 = icmp eq i32 %1, 0
  %7 = select i1 %6, ptr @usbnet_write_cmd, ptr @usbnet_write_cmd_nopm
  %8 = tail call i32 %7(ptr noundef nonnull %0, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #10, !callees !12
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %14, !prof !8

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %12 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %12, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %8) #11
  %13 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str.5) #11
  br label %14

14:                                               ; preds = %10, %5
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @asix_set_hw_mii(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !8

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

5:                                                ; preds = %2
  %6 = icmp eq i32 %1, 0
  %7 = select i1 %6, ptr @usbnet_write_cmd, ptr @usbnet_write_cmd_nopm
  %8 = tail call i32 %7(ptr noundef nonnull %0, i8 noundef zeroext 10, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #10, !callees !12
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %14, !prof !8

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %12 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %12, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %8) #11
  %13 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str.6) #11
  br label %14

14:                                               ; preds = %10, %5
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @asix_read_phy_addr(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i16 0, ptr %3, align 2, !annotation !14
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 20, 0\0A.popsection", ""() #10, !srcloc !9
  unreachable

6:                                                ; preds = %2
  %7 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext 25, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %3, i16 noundef zeroext 2) #10, !callees !10
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %12, !prof !8

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %11 = load ptr, ptr %10, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %11, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %7) #11
  br label %19

12:                                               ; preds = %6
  %13 = icmp ult i32 %7, 2
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = zext i1 %1 to i32
  %16 = getelementptr [2 x i8], ptr %3, i32 0, i32 %15
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  br label %23

19:                                               ; preds = %12, %9
  %20 = phi i32 [ -5, %12 ], [ %7, %9 ]
  %21 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %22 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %22, ptr noundef nonnull @.str.7, i32 noundef %20) #11
  br label %23

23:                                               ; preds = %19, %14
  %24 = phi i32 [ %20, %19 ], [ %18, %14 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @asix_sw_reset(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

6:                                                ; preds = %3
  %7 = zext i8 %1 to i16
  %8 = icmp eq i32 %2, 0
  %9 = select i1 %8, ptr @usbnet_write_cmd, ptr @usbnet_write_cmd_nopm
  %10 = tail call i32 %9(ptr noundef nonnull %0, i8 noundef zeroext 32, i8 noundef zeroext 64, i16 noundef zeroext %7, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #10, !callees !12
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %16, !prof !8

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %14 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %14, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %10) #11
  %15 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.8, i32 noundef %10) #11
  br label %16

16:                                               ; preds = %12, %6
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @asix_read_rx_ctl(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i16 0, ptr %3, align 2, !annotation !14
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 20, 0\0A.popsection", ""() #10, !srcloc !9
  unreachable

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  %8 = select i1 %7, ptr @usbnet_read_cmd, ptr @usbnet_read_cmd_nopm
  %9 = call i32 %8(ptr noundef nonnull %0, i8 noundef zeroext 15, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %3, i16 noundef zeroext 2) #10, !callees !10
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %15, !prof !8

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %13 = load ptr, ptr %12, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %13, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %9) #11
  %14 = load ptr, ptr %12, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.9, i32 noundef %9) #11
  br label %18

15:                                               ; preds = %6
  %16 = load i16, ptr %3, align 2
  %17 = zext i16 %16 to i32
  br label %18

18:                                               ; preds = %15, %11
  %19 = phi i32 [ %9, %11 ], [ %17, %15 ]
  %20 = trunc i32 %19 to i16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  ret i16 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @asix_write_rx_ctl(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

6:                                                ; preds = %3
  %7 = icmp eq i32 %2, 0
  %8 = select i1 %7, ptr @usbnet_write_cmd, ptr @usbnet_write_cmd_nopm
  %9 = tail call i32 %8(ptr noundef nonnull %0, i8 noundef zeroext 16, i8 noundef zeroext 64, i16 noundef zeroext %1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #10, !callees !12
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %16, !prof !8

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %13, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %9) #11
  %14 = load ptr, ptr %12, align 4
  %15 = zext i16 %1 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.10, i32 noundef %15, i32 noundef %9) #11
  br label %16

16:                                               ; preds = %11, %6
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @asix_read_medium_status(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i16 0, ptr %3, align 2, !annotation !14
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 20, 0\0A.popsection", ""() #10, !srcloc !9
  unreachable

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  %8 = select i1 %7, ptr @usbnet_read_cmd, ptr @usbnet_read_cmd_nopm
  %9 = call i32 %8(ptr noundef nonnull %0, i8 noundef zeroext 26, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %3, i16 noundef zeroext 2) #10, !callees !10
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %16, !prof !8

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %13 = load ptr, ptr %12, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %13, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %9) #11
  %14 = load ptr, ptr %12, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.11, i32 noundef %9) #11
  %15 = trunc i32 %9 to i16
  br label %18

16:                                               ; preds = %6
  %17 = load i16, ptr %3, align 2
  br label %18

18:                                               ; preds = %16, %11
  %19 = phi i16 [ %15, %11 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  ret i16 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @asix_write_medium_mode(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

6:                                                ; preds = %3
  %7 = icmp eq i32 %2, 0
  %8 = select i1 %7, ptr @usbnet_write_cmd, ptr @usbnet_write_cmd_nopm
  %9 = tail call i32 %8(ptr noundef nonnull %0, i8 noundef zeroext 27, i8 noundef zeroext 64, i16 noundef zeroext %1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #10, !callees !12
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %16, !prof !8

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %13, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %9) #11
  %14 = load ptr, ptr %12, align 4
  %15 = zext i16 %1 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.12, i32 noundef %15, i32 noundef %9) #11
  br label %16

16:                                               ; preds = %11, %6
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @asix_adjust_link(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 4
  %6 = load i16, ptr %5, align 8
  %7 = and i16 %6, 8192
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i16 820, i16 822
  %14 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 8
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 100
  %17 = and i16 %13, 310
  %18 = select i1 %16, i16 %13, i16 %17
  br label %19

19:                                               ; preds = %9, %1
  %20 = phi i16 [ 0, %1 ], [ %18, %9 ]
  %21 = icmp eq ptr %4, null
  br i1 %21, label %22, label %23, !prof !8

22:                                               ; preds = %19
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

23:                                               ; preds = %19
  %24 = tail call i32 @usbnet_write_cmd(ptr noundef nonnull %4, i8 noundef zeroext 27, i8 noundef zeroext 64, i16 noundef zeroext %20, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #10, !callees !12
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %31, !prof !8

26:                                               ; preds = %23
  %27 = getelementptr i8, ptr %0, i32 1512
  %28 = load ptr, ptr %27, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %28, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %24) #11
  %29 = load ptr, ptr %27, align 4
  %30 = zext i16 %20 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %29, ptr noundef nonnull @.str.12, i32 noundef %30, i32 noundef %24) #11
  br label %31

31:                                               ; preds = %26, %23
  tail call void @phy_print_status(ptr noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @asix_write_gpio(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

7:                                                ; preds = %4
  %8 = icmp eq i32 %3, 0
  %9 = select i1 %8, ptr @usbnet_write_cmd, ptr @usbnet_write_cmd_nopm
  %10 = tail call i32 %9(ptr noundef nonnull %0, i8 noundef zeroext 31, i8 noundef zeroext 64, i16 noundef zeroext %1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #10, !callees !12
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %17, !prof !8

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %14 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %14, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %10) #11
  %15 = load ptr, ptr %13, align 4
  %16 = zext i16 %1 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.13, i32 noundef %16, i32 noundef %10) #11
  br label %17

17:                                               ; preds = %12, %7
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  tail call void @msleep(i32 noundef %2) #10
  br label %20

20:                                               ; preds = %19, %17
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @asix_set_multicast(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 1520
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 256
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %38

8:                                                ; preds = %1
  %9 = and i32 %5, 512
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61
  %13 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, 64
  br i1 %15, label %38, label %16

16:                                               ; preds = %11
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %16
  store i64 0, ptr %3, align 1
  %19 = load ptr, ptr %12, align 4
  %20 = icmp eq ptr %19, %12
  br i1 %20, label %36, label %21

21:                                               ; preds = %21, %18
  %22 = phi ptr [ %34, %21 ], [ %19, %18 ]
  %23 = getelementptr inbounds %struct.netdev_hw_addr, ptr %22, i32 0, i32 2
  %24 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %23, i32 noundef 6) #12
  %25 = tail call i32 asm "rbit $0, $1", "=r,r"(i32 %24) #13, !srcloc !15
  %26 = lshr i32 %25, 26
  %27 = and i32 %26, 7
  %28 = shl nuw nsw i32 1, %27
  %29 = lshr i32 %25, 29
  %30 = getelementptr [8 x i8], ptr %3, i32 0, i32 %29
  %31 = load i8, ptr %30, align 1
  %32 = trunc i32 %28 to i8
  %33 = or i8 %31, %32
  store i8 %33, ptr %30, align 1
  %34 = load ptr, ptr %22, align 4
  %35 = icmp eq ptr %34, %12
  br i1 %35, label %36, label %21

36:                                               ; preds = %21, %18
  %37 = tail call i32 @usbnet_write_cmd_async(ptr noundef %2, i8 noundef zeroext 22, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %3, i16 noundef zeroext 8) #10
  br label %38

38:                                               ; preds = %36, %16, %11, %8, %1
  %39 = phi i16 [ 136, %16 ], [ 152, %36 ], [ 137, %1 ], [ 138, %11 ], [ 138, %8 ]
  %40 = tail call i32 @usbnet_write_cmd_async(ptr noundef %2, i8 noundef zeroext 16, i8 noundef zeroext 64, i16 noundef zeroext %39, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #10
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @asix_mdio_read(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i16, align 2
  %6 = getelementptr i8, ptr %0, i32 1408
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i16 0, ptr %5, align 2, !annotation !14
  %7 = getelementptr i8, ptr %0, i32 1440
  tail call void @mutex_lock(ptr noundef %7) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1, !annotation !14
  %8 = icmp eq ptr %6, null
  %9 = getelementptr i8, ptr %0, i32 1512
  br i1 %8, label %14, label %10, !prof !8

10:                                               ; preds = %29, %3
  %11 = phi i32 [ %30, %29 ], [ 0, %3 ]
  %12 = call i32 @usbnet_write_cmd(ptr noundef nonnull %6, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #10, !callees !12
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %15, label %18, !prof !8

14:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

15:                                               ; preds = %10
  %16 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %12) #11
  %17 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %17, ptr noundef nonnull @.str.5) #11
  br label %18

18:                                               ; preds = %15, %10
  switch i32 %12, label %19 [
    i32 -19, label %32
    i32 -110, label %32
  ]

19:                                               ; preds = %18
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #10
  %20 = call i32 @usbnet_read_cmd(ptr noundef nonnull %6, i8 noundef zeroext 9, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %4, i16 noundef zeroext 1) #10, !callees !10
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24, !prof !8

22:                                               ; preds = %19
  %23 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %23, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %20) #11
  br label %24

24:                                               ; preds = %22, %19
  switch i32 %20, label %25 [
    i32 -19, label %32
    i32 0, label %29
  ]

25:                                               ; preds = %24
  %26 = load i8, ptr %4, align 1
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %24
  %30 = add nuw nsw i32 %11, 1
  %31 = icmp eq i32 %30, 30
  br i1 %31, label %35, label %10

32:                                               ; preds = %25, %24, %18, %18
  %33 = phi i32 [ %20, %24 ], [ %12, %18 ], [ %12, %18 ], [ %20, %25 ]
  %34 = icmp ugt i32 %11, 29
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %29
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  br label %37

36:                                               ; preds = %32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  switch i32 %33, label %39 [
    i32 -19, label %37
    i32 -110, label %37
  ]

37:                                               ; preds = %36, %36, %35
  %38 = phi i32 [ -110, %35 ], [ %33, %36 ], [ %33, %36 ]
  call void @mutex_unlock(ptr noundef %7) #10
  br label %59

39:                                               ; preds = %36
  %40 = trunc i32 %1 to i16
  %41 = trunc i32 %2 to i16
  %42 = call i32 @usbnet_read_cmd(ptr noundef nonnull %6, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext %40, i16 noundef zeroext %41, ptr noundef nonnull %5, i16 noundef zeroext 2) #10, !callees !10
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47, !prof !8

44:                                               ; preds = %39
  %45 = load ptr, ptr %9, align 4
  %46 = and i32 %2, 65535
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %45, ptr noundef nonnull @.str, i32 noundef %46, i32 noundef %42) #11
  br label %53

47:                                               ; preds = %39
  %48 = call i32 @usbnet_write_cmd(ptr noundef nonnull %6, i8 noundef zeroext 10, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #10, !callees !12
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53, !prof !8

50:                                               ; preds = %47
  %51 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %51, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %48) #11
  %52 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %52, ptr noundef nonnull @.str.6) #11
  br label %53

53:                                               ; preds = %50, %47, %44
  %54 = phi i32 [ %42, %44 ], [ %48, %47 ], [ %48, %50 ]
  call void @mutex_unlock(ptr noundef %7) #10
  %55 = icmp slt i32 %54, 0
  %56 = load i16, ptr %5, align 2
  %57 = zext i16 %56 to i32
  %58 = select i1 %55, i32 %54, i32 %57
  br label %59

59:                                               ; preds = %53, %37
  %60 = phi i32 [ %38, %37 ], [ %58, %53 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @asix_mdio_write(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc i32 @__asix_mdio_write(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__asix_mdio_write(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  %7 = getelementptr i8, ptr %0, i32 1408
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #10
  %8 = trunc i32 %3 to i16
  store i16 %8, ptr %6, align 2
  %9 = getelementptr i8, ptr %0, i32 1440
  tail call void @mutex_lock(ptr noundef %9) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1, !annotation !14
  %10 = icmp eq ptr %7, null
  %11 = getelementptr i8, ptr %0, i32 1512
  br i1 %10, label %16, label %12, !prof !8

12:                                               ; preds = %31, %4
  %13 = phi i32 [ %32, %31 ], [ 0, %4 ]
  %14 = call i32 @usbnet_write_cmd(ptr noundef nonnull %7, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #10, !callees !12
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %17, label %20, !prof !8

16:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

17:                                               ; preds = %12
  %18 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %14) #11
  %19 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %19, ptr noundef nonnull @.str.5) #11
  br label %20

20:                                               ; preds = %17, %12
  switch i32 %14, label %21 [
    i32 -19, label %34
    i32 -110, label %34
  ]

21:                                               ; preds = %20
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #10
  %22 = call i32 @usbnet_read_cmd(ptr noundef nonnull %7, i8 noundef zeroext 9, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %5, i16 noundef zeroext 1) #10, !callees !10
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26, !prof !8

24:                                               ; preds = %21
  %25 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %25, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %22) #11
  br label %26

26:                                               ; preds = %24, %21
  switch i32 %22, label %27 [
    i32 -19, label %37
    i32 0, label %31
  ]

27:                                               ; preds = %26
  %28 = load i8, ptr %5, align 1
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %26
  %32 = add nuw nsw i32 %13, 1
  %33 = icmp eq i32 %32, 30
  br i1 %33, label %40, label %12

34:                                               ; preds = %27, %20, %20
  %35 = phi i32 [ %14, %20 ], [ %14, %20 ], [ %22, %27 ]
  %36 = icmp ugt i32 %13, 29
  br i1 %36, label %40, label %41

37:                                               ; preds = %26
  %38 = icmp ugt i32 %13, 29
  br i1 %38, label %40, label %39

39:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  br label %57

40:                                               ; preds = %37, %34, %31
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  br label %43

41:                                               ; preds = %34
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  %42 = icmp eq i32 %35, -19
  br i1 %42, label %57, label %43

43:                                               ; preds = %41, %40
  %44 = trunc i32 %1 to i16
  %45 = trunc i32 %2 to i16
  %46 = call i32 @usbnet_write_cmd(ptr noundef nonnull %7, i8 noundef zeroext 8, i8 noundef zeroext 64, i16 noundef zeroext %44, i16 noundef zeroext %45, ptr noundef nonnull %6, i16 noundef zeroext 2) #10, !callees !12
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51, !prof !8

48:                                               ; preds = %43
  %49 = load ptr, ptr %11, align 4
  %50 = and i32 %2, 65535
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %49, ptr noundef nonnull @.str.1, i32 noundef %50, i32 noundef %46) #11
  br label %57

51:                                               ; preds = %43
  %52 = call i32 @usbnet_write_cmd(ptr noundef nonnull %7, i8 noundef zeroext 10, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #10, !callees !12
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57, !prof !8

54:                                               ; preds = %51
  %55 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %55, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %52) #11
  %56 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %56, ptr noundef nonnull @.str.6) #11
  br label %57

57:                                               ; preds = %54, %51, %48, %41, %39
  %58 = phi i32 [ -19, %41 ], [ %46, %48 ], [ %52, %51 ], [ %52, %54 ], [ -19, %39 ]
  call void @mutex_unlock(ptr noundef %9) #10
  %59 = call i32 @llvm.smin.i32(i32 %58, i32 0)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @asix_mdio_bus_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.usbnet, ptr %5, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @asix_mdio_read(ptr noundef %7, i32 noundef %1, i32 noundef %2)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @asix_mdio_bus_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.usbnet, ptr %6, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = zext i16 %3 to i32
  %10 = tail call fastcc i32 @__asix_mdio_write(ptr noundef %8, i32 noundef %1, i32 noundef %2, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @asix_mdio_read_nopm(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i16, align 2
  %6 = getelementptr i8, ptr %0, i32 1408
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i16 0, ptr %5, align 2, !annotation !14
  %7 = getelementptr i8, ptr %0, i32 1440
  tail call void @mutex_lock(ptr noundef %7) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1, !annotation !14
  %8 = icmp eq ptr %6, null
  %9 = getelementptr i8, ptr %0, i32 1512
  br i1 %8, label %14, label %10, !prof !8

10:                                               ; preds = %29, %3
  %11 = phi i32 [ %30, %29 ], [ 0, %3 ]
  %12 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %6, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #10, !callees !12
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %15, label %18, !prof !8

14:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

15:                                               ; preds = %10
  %16 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %12) #11
  %17 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %17, ptr noundef nonnull @.str.5) #11
  br label %18

18:                                               ; preds = %15, %10
  switch i32 %12, label %19 [
    i32 -19, label %32
    i32 -110, label %32
  ]

19:                                               ; preds = %18
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #10
  %20 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %6, i8 noundef zeroext 9, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %4, i16 noundef zeroext 1) #10, !callees !10
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24, !prof !8

22:                                               ; preds = %19
  %23 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %23, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %20) #11
  br label %24

24:                                               ; preds = %22, %19
  switch i32 %20, label %25 [
    i32 -19, label %32
    i32 0, label %29
  ]

25:                                               ; preds = %24
  %26 = load i8, ptr %4, align 1
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %24
  %30 = add nuw nsw i32 %11, 1
  %31 = icmp eq i32 %30, 30
  br i1 %31, label %35, label %10

32:                                               ; preds = %25, %24, %18, %18
  %33 = phi i32 [ %20, %24 ], [ %12, %18 ], [ %12, %18 ], [ %20, %25 ]
  %34 = icmp ugt i32 %11, 29
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %29
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  br label %37

36:                                               ; preds = %32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  switch i32 %33, label %39 [
    i32 -19, label %37
    i32 -110, label %37
  ]

37:                                               ; preds = %36, %36, %35
  %38 = phi i32 [ -110, %35 ], [ %33, %36 ], [ %33, %36 ]
  call void @mutex_unlock(ptr noundef %7) #10
  br label %56

39:                                               ; preds = %36
  %40 = trunc i32 %1 to i16
  %41 = trunc i32 %2 to i16
  %42 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %6, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext %40, i16 noundef zeroext %41, ptr noundef nonnull %5, i16 noundef zeroext 2) #10, !callees !10
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47, !prof !8

44:                                               ; preds = %39
  %45 = load ptr, ptr %9, align 4
  %46 = and i32 %2, 65535
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %45, ptr noundef nonnull @.str, i32 noundef %46, i32 noundef %42) #11
  br label %47

47:                                               ; preds = %44, %39
  %48 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %6, i8 noundef zeroext 10, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #10, !callees !12
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53, !prof !8

50:                                               ; preds = %47
  %51 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %51, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %48) #11
  %52 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %52, ptr noundef nonnull @.str.6) #11
  br label %53

53:                                               ; preds = %50, %47
  call void @mutex_unlock(ptr noundef %7) #10
  %54 = load i16, ptr %5, align 2
  %55 = zext i16 %54 to i32
  br label %56

56:                                               ; preds = %53, %37
  %57 = phi i32 [ %38, %37 ], [ %55, %53 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @asix_mdio_write_nopm(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  %7 = getelementptr i8, ptr %0, i32 1408
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #10
  %8 = trunc i32 %3 to i16
  store i16 %8, ptr %6, align 2
  %9 = getelementptr i8, ptr %0, i32 1440
  tail call void @mutex_lock(ptr noundef %9) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1, !annotation !14
  %10 = icmp eq ptr %7, null
  %11 = getelementptr i8, ptr %0, i32 1512
  br i1 %10, label %16, label %12, !prof !8

12:                                               ; preds = %31, %4
  %13 = phi i32 [ %32, %31 ], [ 0, %4 ]
  %14 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %7, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #10, !callees !12
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %17, label %20, !prof !8

16:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

17:                                               ; preds = %12
  %18 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %14) #11
  %19 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %19, ptr noundef nonnull @.str.5) #11
  br label %20

20:                                               ; preds = %17, %12
  switch i32 %14, label %21 [
    i32 -19, label %34
    i32 -110, label %34
  ]

21:                                               ; preds = %20
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #10
  %22 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %7, i8 noundef zeroext 9, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %5, i16 noundef zeroext 1) #10, !callees !10
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26, !prof !8

24:                                               ; preds = %21
  %25 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %25, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %22) #11
  br label %26

26:                                               ; preds = %24, %21
  switch i32 %22, label %27 [
    i32 -19, label %37
    i32 0, label %31
  ]

27:                                               ; preds = %26
  %28 = load i8, ptr %5, align 1
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %26
  %32 = add nuw nsw i32 %13, 1
  %33 = icmp eq i32 %32, 30
  br i1 %33, label %40, label %12

34:                                               ; preds = %27, %20, %20
  %35 = phi i32 [ %14, %20 ], [ %14, %20 ], [ %22, %27 ]
  %36 = icmp ugt i32 %13, 29
  br i1 %36, label %40, label %41

37:                                               ; preds = %26
  %38 = icmp ugt i32 %13, 29
  br i1 %38, label %40, label %39

39:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  br label %57

40:                                               ; preds = %37, %34, %31
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  br label %43

41:                                               ; preds = %34
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  %42 = icmp eq i32 %35, -19
  br i1 %42, label %57, label %43

43:                                               ; preds = %41, %40
  %44 = trunc i32 %1 to i16
  %45 = trunc i32 %2 to i16
  %46 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %7, i8 noundef zeroext 8, i8 noundef zeroext 64, i16 noundef zeroext %44, i16 noundef zeroext %45, ptr noundef nonnull %6, i16 noundef zeroext 2) #10, !callees !12
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51, !prof !8

48:                                               ; preds = %43
  %49 = load ptr, ptr %11, align 4
  %50 = and i32 %2, 65535
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %49, ptr noundef nonnull @.str.1, i32 noundef %50, i32 noundef %46) #11
  br label %51

51:                                               ; preds = %48, %43
  %52 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %7, i8 noundef zeroext 10, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #10, !callees !12
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57, !prof !8

54:                                               ; preds = %51
  %55 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %55, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %52) #11
  %56 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %56, ptr noundef nonnull @.str.6) #11
  br label %57

57:                                               ; preds = %54, %51, %41, %39
  call void @mutex_unlock(ptr noundef %9) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @asix_get_wol(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = getelementptr i8, ptr %0, i32 1408
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1, !annotation !14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 20, 0\0A.popsection", ""() #10, !srcloc !9
  unreachable

7:                                                ; preds = %2
  %8 = call i32 @usbnet_read_cmd(ptr noundef nonnull %4, i8 noundef zeroext 28, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %3, i16 noundef zeroext 1) #10, !callees !10
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %15, !prof !8

10:                                               ; preds = %7
  %11 = getelementptr i8, ptr %0, i32 1512
  %12 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %12, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %8) #11
  %13 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 1
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  store i32 0, ptr %14, align 4
  br label %26

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 1
  store i32 33, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  %18 = load i8, ptr %3, align 1
  %19 = lshr i8 %18, 1
  %20 = and i8 %19, 1
  %21 = zext i8 %20 to i32
  store i32 %21, ptr %17, align 4
  %22 = and i8 %18, 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %15
  %25 = or i32 %21, 32
  store i32 %25, ptr %17, align 4
  br label %26

26:                                               ; preds = %24, %15, %10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @asix_set_wol(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, -34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = icmp eq ptr %3, null
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %8
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

11:                                               ; preds = %8
  %12 = trunc i32 %5 to i8
  %13 = lshr i8 %12, 3
  %14 = and i8 %13, 4
  %15 = shl nuw nsw i8 %12, 1
  %16 = and i8 %15, 2
  %17 = or i8 %14, %16
  %18 = zext i8 %17 to i16
  %19 = tail call i32 @usbnet_write_cmd(ptr noundef nonnull %3, i8 noundef zeroext 29, i8 noundef zeroext 64, i16 noundef zeroext %18, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #10, !callees !12
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24, !prof !8

21:                                               ; preds = %11
  %22 = getelementptr i8, ptr %0, i32 1512
  %23 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %23, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %19) #11
  br label %24

24:                                               ; preds = %21, %11, %2
  %25 = phi i32 [ -22, %2 ], [ 0, %11 ], [ -22, %21 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @asix_get_eeprom_len(ptr nocapture noundef readnone %0) local_unnamed_addr #6 {
  ret i32 512
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @asix_get_eeprom(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %49, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 1
  store i32 -559038737, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 1
  %13 = add i32 %6, -1
  %14 = add i32 %13, %11
  %15 = lshr i32 %14, 1
  %16 = sub nsw i32 %15, %12
  %17 = add i32 %16, 1
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 2) #10
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %49, label %20, !prof !8

20:                                               ; preds = %8
  %21 = extractvalue { i32, i1 } %18, 0
  %22 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %21, i32 noundef 3264) #14
  %23 = icmp eq ptr %22, null
  br i1 %23, label %49, label %24

24:                                               ; preds = %20
  %25 = icmp ult i32 %15, %12
  br i1 %25, label %42, label %26

26:                                               ; preds = %24
  %27 = icmp eq ptr %4, null
  br i1 %27, label %38, label %31, !prof !8

28:                                               ; preds = %31
  %29 = add i32 %32, 1
  %30 = icmp sgt i32 %29, %15
  br i1 %30, label %42, label %31

31:                                               ; preds = %28, %26
  %32 = phi i32 [ %29, %28 ], [ %12, %26 ]
  %33 = sub i32 %32, %12
  %34 = getelementptr i16, ptr %22, i32 %33
  %35 = trunc i32 %32 to i16
  %36 = tail call i32 @usbnet_read_cmd(ptr noundef nonnull %4, i8 noundef zeroext 11, i8 noundef zeroext -64, i16 noundef zeroext %35, i16 noundef zeroext 0, ptr noundef %34, i16 noundef zeroext 2) #10, !callees !10
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %39, label %28, !prof !8

38:                                               ; preds = %26
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 20, 0\0A.popsection", ""() #10, !srcloc !9
  unreachable

39:                                               ; preds = %31
  %40 = getelementptr i8, ptr %0, i32 1512
  %41 = load ptr, ptr %40, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %41, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %36) #11
  br label %47

42:                                               ; preds = %28, %24
  %43 = load i32, ptr %10, align 4
  %44 = and i32 %43, 1
  %45 = getelementptr i8, ptr %22, i32 %44
  %46 = load i32, ptr %5, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %2, ptr align 1 %45, i32 %46, i1 false)
  br label %47

47:                                               ; preds = %42, %39
  %48 = phi i32 [ 0, %42 ], [ -5, %39 ]
  tail call void @kfree(ptr noundef nonnull %22) #10
  br label %49

49:                                               ; preds = %47, %20, %8, %3
  %50 = phi i32 [ -22, %3 ], [ -12, %20 ], [ -12, %8 ], [ %48, %47 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @asix_set_eeprom(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %101, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, -559038737
  br i1 %11, label %12, label %101

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = lshr i32 %14, 1
  %16 = add i32 %6, -1
  %17 = add i32 %16, %14
  %18 = lshr i32 %17, 1
  %19 = sub nsw i32 %18, %15
  %20 = add i32 %19, 1
  %21 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %20, i32 2) #10
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %101, label %23, !prof !8

23:                                               ; preds = %12
  %24 = extractvalue { i32, i1 } %21, 0
  %25 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %24, i32 noundef 3264) #14
  %26 = icmp eq ptr %25, null
  br i1 %26, label %101, label %27

27:                                               ; preds = %23
  %28 = load i32, ptr %13, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %27
  %32 = icmp eq ptr %4, null
  br i1 %32, label %33, label %34, !prof !8

33:                                               ; preds = %31
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 20, 0\0A.popsection", ""() #10, !srcloc !9
  unreachable

34:                                               ; preds = %31
  %35 = trunc i32 %15 to i16
  %36 = tail call i32 @usbnet_read_cmd(ptr noundef nonnull %4, i8 noundef zeroext 11, i8 noundef zeroext -64, i16 noundef zeroext %35, i16 noundef zeroext 0, ptr noundef nonnull %25, i16 noundef zeroext 2) #10, !callees !10
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %40, label %38, !prof !8

38:                                               ; preds = %34
  %39 = load i32, ptr %13, align 4
  br label %43

40:                                               ; preds = %34
  %41 = getelementptr i8, ptr %0, i32 1512
  %42 = load ptr, ptr %41, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %42, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %36) #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %15) #11
  br label %99

43:                                               ; preds = %38, %27
  %44 = phi i32 [ %39, %38 ], [ %28, %27 ]
  %45 = load i32, ptr %5, align 4
  %46 = add i32 %45, %44
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %65, label %49

49:                                               ; preds = %43
  %50 = icmp eq ptr %4, null
  br i1 %50, label %51, label %52, !prof !8

51:                                               ; preds = %49
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 20, 0\0A.popsection", ""() #10, !srcloc !9
  unreachable

52:                                               ; preds = %49
  %53 = getelementptr i16, ptr %25, i32 %19
  %54 = trunc i32 %18 to i16
  %55 = tail call i32 @usbnet_read_cmd(ptr noundef nonnull %4, i8 noundef zeroext 11, i8 noundef zeroext -64, i16 noundef zeroext %54, i16 noundef zeroext 0, ptr noundef %53, i16 noundef zeroext 2) #10, !callees !10
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %62, label %57, !prof !8

57:                                               ; preds = %52
  %58 = load i32, ptr %13, align 4
  %59 = and i32 %58, 1
  %60 = getelementptr i8, ptr %25, i32 %59
  %61 = load i32, ptr %5, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %60, ptr align 1 %2, i32 %61, i1 false)
  br label %70

62:                                               ; preds = %52
  %63 = getelementptr i8, ptr %0, i32 1512
  %64 = load ptr, ptr %63, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %64, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %55) #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %18) #11
  br label %99

65:                                               ; preds = %43
  %66 = and i32 %44, 1
  %67 = getelementptr i8, ptr %25, i32 %66
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %67, ptr align 1 %2, i32 %45, i1 false)
  %68 = icmp eq ptr %4, null
  br i1 %68, label %69, label %70, !prof !8

69:                                               ; preds = %65
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

70:                                               ; preds = %65, %57
  %71 = tail call i32 @usbnet_write_cmd(ptr noundef nonnull %4, i8 noundef zeroext 13, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #10, !callees !12
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76, !prof !8

73:                                               ; preds = %70
  %74 = getelementptr i8, ptr %0, i32 1512
  %75 = load ptr, ptr %74, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %75, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %71) #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.15) #11
  br label %99

76:                                               ; preds = %70
  tail call void @msleep(i32 noundef 20) #10
  %77 = icmp ult i32 %18, %15
  br i1 %77, label %93, label %78

78:                                               ; preds = %90, %76
  %79 = phi i32 [ %91, %90 ], [ %15, %76 ]
  %80 = trunc i32 %79 to i16
  %81 = sub i32 %79, %15
  %82 = getelementptr i16, ptr %25, i32 %81
  %83 = load i16, ptr %82, align 2
  %84 = tail call i32 @usbnet_write_cmd(ptr noundef nonnull %4, i8 noundef zeroext 12, i8 noundef zeroext 64, i16 noundef zeroext %80, i16 noundef zeroext %83, ptr noundef null, i16 noundef zeroext 0) #10, !callees !12
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %90, !prof !8

86:                                               ; preds = %78
  %87 = getelementptr i8, ptr %0, i32 1512
  %88 = load ptr, ptr %87, align 4
  %89 = zext i16 %83 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %88, ptr noundef nonnull @.str.1, i32 noundef %89, i32 noundef %84) #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %79) #11
  br label %99

90:                                               ; preds = %78
  tail call void @msleep(i32 noundef 20) #10
  %91 = add i32 %79, 1
  %92 = icmp sgt i32 %91, %18
  br i1 %92, label %93, label %78

93:                                               ; preds = %90, %76
  %94 = tail call i32 @usbnet_write_cmd(ptr noundef nonnull %4, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #10, !callees !12
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %99, !prof !8

96:                                               ; preds = %93
  %97 = getelementptr i8, ptr %0, i32 1512
  %98 = load ptr, ptr %97, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %98, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %94) #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.17) #11
  br label %99

99:                                               ; preds = %96, %93, %86, %73, %62, %40
  %100 = phi i32 [ %36, %40 ], [ %55, %62 ], [ %71, %73 ], [ %84, %86 ], [ %94, %96 ], [ 0, %93 ]
  tail call void @kfree(ptr noundef nonnull %25) #10
  br label %101

101:                                              ; preds = %99, %23, %12, %8, %3
  %102 = phi i32 [ %100, %99 ], [ -22, %3 ], [ -22, %8 ], [ -12, %23 ], [ -12, %12 ]
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @asix_get_drvinfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @usbnet_get_drvinfo(ptr noundef %0, ptr noundef %1) #10
  %3 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 1
  %4 = tail call i32 @strlcpy(ptr noundef %3, ptr noundef nonnull @.str.18, i32 noundef 32) #10
  %5 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 2
  %6 = tail call i32 @strlcpy(ptr noundef %5, ptr noundef nonnull @.str.19, i32 noundef 32) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_get_drvinfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @asix_set_mac_address(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sockaddr, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = getelementptr %struct.sockaddr, ptr %1, i32 0, i32 1, i32 4
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = or i32 %10, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  tail call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef %9, i32 noundef 6) #10
  %20 = getelementptr i8, ptr %0, i32 1528
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %20, ptr noundef align 2 dereferenceable(6) %9, i32 6, i1 false)
  %21 = tail call i32 @usbnet_write_cmd_async(ptr noundef %3, i8 noundef zeroext 20, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %20, i16 noundef zeroext 6) #10
  br label %22

22:                                               ; preds = %19, %13, %8, %2
  %23 = phi i32 [ 0, %19 ], [ -16, %2 ], [ -99, %13 ], [ -99, %8 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readonly willreturn }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(0) }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2155372187, i64 2155372680, i64 2155372224, i64 2155372280, i64 2155372314, i64 2155372338, i64 2155372379, i64 2155372400, i64 2155372428, i64 2155372462}
!10 = !{ptr @usbnet_read_cmd, ptr @usbnet_read_cmd_nopm}
!11 = !{i64 2155373271, i64 2155373764, i64 2155373308, i64 2155373364, i64 2155373398, i64 2155373422, i64 2155373463, i64 2155373484, i64 2155373512, i64 2155373546}
!12 = !{ptr @usbnet_write_cmd, ptr @usbnet_write_cmd_nopm}
!13 = !{i8 0, i8 2}
!14 = !{!"auto-init"}
!15 = !{i64 7107833}
