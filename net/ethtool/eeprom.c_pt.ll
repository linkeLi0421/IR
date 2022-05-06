; ModuleID = '/llk/IR/net/ethtool/eeprom.c_pt.bc'
source_filename = "../net/ethtool/eeprom.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethnl_request_ops = type { i8, i8, i16, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.48 }
%union.anon.48 = type { i32 }
%struct.anon.49 = type { i16, i16 }
%struct.eeprom_req_info = type { %struct.ethnl_req_info, i32, i32, i8, i8, i8 }
%struct.ethnl_req_info = type { ptr, %struct.netdevice_tracker, i32 }
%struct.netdevice_tracker = type {}
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.ethtool_modinfo = type { i32, i32, i32, [8 x i32] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_module_eeprom = type { i32, i32, i8, i8, i8, ptr }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type {}
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.133, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%union.anon.133 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.eeprom_reply_data = type { %struct.ethnl_reply_data, i32, ptr }
%struct.ethnl_reply_data = type { ptr }

@ethnl_module_eeprom_request_ops = dso_local local_unnamed_addr constant %struct.ethnl_request_ops { i8 31, i8 32, i16 1, i32 20, i32 12, i8 0, ptr @eeprom_parse_request, ptr @eeprom_prepare_data, ptr @eeprom_reply_size, ptr @eeprom_fill_reply, ptr @eeprom_cleanup_data }, align 4
@ethnl_header_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_module_eeprom_get_policy = dso_local local_unnamed_addr constant <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, { i8, i8, i16, { %struct.anon.49 } }, { i8, i8, i16, { %struct.anon.49 } }, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon.49 } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } }, { i8, i8, i16, { %struct.anon.49 } } { i8 3, i8 4, i16 0, { %struct.anon.49 } { %struct.anon.49 { i16 0, i16 255 } } }, { i8, i8, i16, { %struct.anon.49 } } { i8 3, i8 1, i16 0, { %struct.anon.49 } { %struct.anon.49 { i16 1, i16 128 } } }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, { i8, i8, i16, { %struct.anon.49 } } { i8 1, i8 1, i16 0, { %struct.anon.49 } { %struct.anon.49 { i16 0, i16 127 } } } }>, align 4
@eeprom_parse_request.__msg = internal constant [56 x i8] c"reading from lower half page is allowed for page 0 only\00", align 1
@eeprom_parse_request.__msg.1 = internal constant [44 x i8] c"reading cross half page boundary is illegal\00", align 1
@eeprom_parse_request.__msg.2 = internal constant [39 x i8] c"reading cross page boundary is illegal\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @eeprom_parse_request(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) #0 {
  %4 = getelementptr ptr, ptr %1, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %73, label %7

7:                                                ; preds = %3
  %8 = getelementptr ptr, ptr %1, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %73, label %11

11:                                               ; preds = %7
  %12 = getelementptr ptr, ptr %1, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %73, label %15

15:                                               ; preds = %11
  %16 = getelementptr ptr, ptr %1, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %73, label %19

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %17, i32 4
  %21 = load i8, ptr %20, align 1
  %22 = getelementptr inbounds %struct.eeprom_req_info, ptr %0, i32 0, i32 5
  store i8 %21, ptr %22, align 2
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr i8, ptr %23, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.eeprom_req_info, ptr %0, i32 0, i32 1
  store i32 %25, ptr %26, align 4
  %27 = load ptr, ptr %8, align 4
  %28 = getelementptr i8, ptr %27, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.eeprom_req_info, ptr %0, i32 0, i32 2
  store i32 %29, ptr %30, align 4
  %31 = load ptr, ptr %12, align 4
  %32 = getelementptr i8, ptr %31, i32 4
  %33 = load i8, ptr %32, align 1
  %34 = getelementptr inbounds %struct.eeprom_req_info, ptr %0, i32 0, i32 3
  store i8 %33, ptr %34, align 4
  %35 = icmp eq i8 %33, 0
  %36 = icmp ult i32 %25, 128
  br i1 %35, label %46, label %37

37:                                               ; preds = %19
  br i1 %36, label %40, label %38

38:                                               ; preds = %37
  %39 = add i32 %29, %25
  br label %56

40:                                               ; preds = %37
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @eeprom_parse_request.__msg) #6
  %41 = icmp eq ptr %2, null
  br i1 %41, label %73, label %42

42:                                               ; preds = %40
  store ptr @eeprom_parse_request.__msg, ptr %2, align 4
  %43 = load ptr, ptr %12, align 4
  %44 = getelementptr inbounds %struct.netlink_ext_ack, ptr %2, i32 0, i32 1
  store ptr %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.netlink_ext_ack, ptr %2, i32 0, i32 2
  store ptr null, ptr %45, align 4
  br label %73

46:                                               ; preds = %19
  %47 = add i32 %29, %25
  %48 = icmp ugt i32 %47, 128
  %49 = select i1 %36, i1 %48, i1 false
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @eeprom_parse_request.__msg.1) #6
  %51 = icmp eq ptr %2, null
  br i1 %51, label %73, label %52

52:                                               ; preds = %50
  store ptr @eeprom_parse_request.__msg.1, ptr %2, align 4
  %53 = load ptr, ptr %8, align 4
  %54 = getelementptr inbounds %struct.netlink_ext_ack, ptr %2, i32 0, i32 1
  store ptr %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.netlink_ext_ack, ptr %2, i32 0, i32 2
  store ptr null, ptr %55, align 4
  br label %73

56:                                               ; preds = %46, %38
  %57 = phi i32 [ %39, %38 ], [ %47, %46 ]
  %58 = icmp ugt i32 %57, 256
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @eeprom_parse_request.__msg.2) #6
  %60 = icmp eq ptr %2, null
  br i1 %60, label %73, label %61

61:                                               ; preds = %59
  store ptr @eeprom_parse_request.__msg.2, ptr %2, align 4
  %62 = load ptr, ptr %8, align 4
  %63 = getelementptr inbounds %struct.netlink_ext_ack, ptr %2, i32 0, i32 1
  store ptr %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.netlink_ext_ack, ptr %2, i32 0, i32 2
  store ptr null, ptr %64, align 4
  br label %73

65:                                               ; preds = %56
  %66 = getelementptr ptr, ptr %1, i32 5
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = getelementptr i8, ptr %67, i32 4
  %71 = load i8, ptr %70, align 1
  %72 = getelementptr inbounds %struct.eeprom_req_info, ptr %0, i32 0, i32 4
  store i8 %71, ptr %72, align 1
  br label %73

73:                                               ; preds = %69, %65, %61, %59, %52, %50, %42, %40, %15, %11, %7, %3
  %74 = phi i32 [ -22, %15 ], [ -22, %11 ], [ -22, %7 ], [ -22, %3 ], [ -22, %42 ], [ -22, %40 ], [ -22, %52 ], [ -22, %50 ], [ -22, %61 ], [ -22, %59 ], [ 0, %69 ], [ 0, %65 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @eeprom_prepare_data(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.ethtool_modinfo, align 4
  %5 = alloca %struct.ethtool_eeprom, align 4
  %6 = alloca %struct.ethtool_module_eeprom, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  %7 = getelementptr inbounds i8, ptr %6, i32 8
  store i64 0, ptr %7, align 4
  %8 = load ptr, ptr %1, align 4
  %9 = getelementptr inbounds %struct.eeprom_req_info, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %6, align 4
  %11 = getelementptr inbounds %struct.eeprom_req_info, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ethtool_module_eeprom, ptr %6, i32 0, i32 1
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.eeprom_req_info, ptr %0, i32 0, i32 5
  %15 = load i8, ptr %14, align 2
  %16 = getelementptr inbounds %struct.ethtool_module_eeprom, ptr %6, i32 0, i32 4
  store i8 %15, ptr %16, align 2
  %17 = getelementptr inbounds %struct.eeprom_req_info, ptr %0, i32 0, i32 3
  %18 = load i8, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ethtool_module_eeprom, ptr %6, i32 0, i32 2
  store i8 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.eeprom_req_info, ptr %0, i32 0, i32 4
  %21 = load i8, ptr %20, align 1
  %22 = getelementptr inbounds %struct.ethtool_module_eeprom, ptr %6, i32 0, i32 3
  store i8 %21, ptr %22, align 1
  %23 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %12, i32 noundef 3264) #7
  %24 = getelementptr inbounds %struct.ethtool_module_eeprom, ptr %6, i32 0, i32 5
  store ptr %23, ptr %24, align 4
  %25 = icmp eq ptr %23, null
  br i1 %25, label %96, label %26

26:                                               ; preds = %3
  %27 = tail call i32 @ethnl_ops_begin(ptr noundef %8) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.genl_info, ptr %2, i32 0, i32 8
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 121
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 42
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.ethtool_ops, ptr %37, i32 0, i32 64
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %35
  %42 = call i32 %39(ptr noundef %8, ptr noundef nonnull %6, ptr noundef %31) #6
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.eeprom_reply_data, ptr %1, i32 0, i32 1
  store i32 %42, ptr %45, align 4
  %46 = load ptr, ptr %24, align 4
  %47 = getelementptr inbounds %struct.eeprom_reply_data, ptr %1, i32 0, i32 2
  store ptr %46, ptr %47, align 4
  call void @ethnl_ops_complete(ptr noundef %8) #6
  br label %96

48:                                               ; preds = %41, %35, %29
  %49 = phi i32 [ %42, %41 ], [ -95, %35 ], [ -95, %29 ]
  call void @ethnl_ops_complete(ptr noundef %8) #6
  br label %50

50:                                               ; preds = %48, %26
  %51 = phi i32 [ %27, %26 ], [ %49, %48 ]
  %52 = load ptr, ptr %24, align 4
  call void @kfree(ptr noundef %52) #6
  %53 = icmp eq i32 %51, -95
  br i1 %53, label %54, label %96

54:                                               ; preds = %50
  %55 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #6
  %56 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %56, i8 0, i32 40, i1 false) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  %57 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %57, align 4
  store i32 66, ptr %4, align 4
  %58 = call i32 @ethtool_get_module_info_call(ptr noundef %55, ptr noundef nonnull %4) #6
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %94, label %60

60:                                               ; preds = %54
  %61 = load i32, ptr %9, align 4
  %62 = load i32, ptr %11, align 4
  %63 = load i8, ptr %17, align 4
  %64 = icmp eq i8 %63, 0
  %65 = zext i8 %63 to i32
  %66 = shl nuw nsw i32 %65, 7
  %67 = select i1 %64, i32 0, i32 %66
  %68 = add i32 %67, %61
  %69 = load i32, ptr %56, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %76

71:                                               ; preds = %60
  %72 = load i8, ptr %14, align 2
  %73 = icmp eq i8 %72, 81
  %74 = add i32 %68, 256
  %75 = select i1 %73, i32 %74, i32 %68
  br label %76

76:                                               ; preds = %71, %60
  %77 = phi i32 [ %68, %60 ], [ %75, %71 ]
  %78 = getelementptr inbounds %struct.ethtool_modinfo, ptr %4, i32 0, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = icmp ult i32 %77, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %76
  store i32 67, ptr %5, align 4
  %82 = getelementptr inbounds %struct.ethtool_eeprom, ptr %5, i32 0, i32 3
  store i32 %62, ptr %82, align 4
  %83 = getelementptr inbounds %struct.ethtool_eeprom, ptr %5, i32 0, i32 2
  store i32 %77, ptr %83, align 4
  %84 = call noalias align 64 ptr @__kmalloc(i32 noundef %62, i32 noundef 3264) #7
  %85 = icmp eq ptr %84, null
  br i1 %85, label %94, label %86

86:                                               ; preds = %81
  %87 = call i32 @ethtool_get_module_eeprom_call(ptr noundef %55, ptr noundef nonnull %5, ptr noundef nonnull %84) #6
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.eeprom_reply_data, ptr %1, i32 0, i32 2
  store ptr %84, ptr %90, align 4
  %91 = load i32, ptr %82, align 4
  %92 = getelementptr inbounds %struct.eeprom_reply_data, ptr %1, i32 0, i32 1
  store i32 %91, ptr %92, align 4
  br label %94

93:                                               ; preds = %86
  call void @kfree(ptr noundef nonnull %84) #6
  br label %94

94:                                               ; preds = %93, %89, %81, %76, %54
  %95 = phi i32 [ %87, %93 ], [ 0, %89 ], [ %58, %54 ], [ -12, %81 ], [ -22, %76 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #6
  br label %96

96:                                               ; preds = %94, %50, %44, %3
  %97 = phi i32 [ %95, %94 ], [ 0, %44 ], [ -12, %3 ], [ %51, %50 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  ret i32 %97
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @eeprom_reply_size(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #1 {
  %3 = getelementptr inbounds %struct.eeprom_req_info, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 7
  %6 = and i32 %5, -4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @eeprom_fill_reply(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.eeprom_reply_data, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.eeprom_reply_data, ptr %2, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 7, i32 noundef %5, ptr noundef %7) #6
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @eeprom_cleanup_data(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.eeprom_reply_data, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_ops_begin(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethnl_ops_complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_get_module_info_call(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_get_module_eeprom_call(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

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
