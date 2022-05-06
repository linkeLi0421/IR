; ModuleID = '/llk/IR/drivers/net/mii.c_pt.bc'
source_filename = "../drivers/net/mii.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mii_link_ok:\09\09\09\09\09"
module asm "\09.asciz \09\22mii_link_ok\22\09\09\09\09\09"
module asm "__kstrtabns_mii_link_ok:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mii_nway_restart:\09\09\09\09\09"
module asm "\09.asciz \09\22mii_nway_restart\22\09\09\09\09\09"
module asm "__kstrtabns_mii_nway_restart:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mii_ethtool_gset:\09\09\09\09\09"
module asm "\09.asciz \09\22mii_ethtool_gset\22\09\09\09\09\09"
module asm "__kstrtabns_mii_ethtool_gset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mii_ethtool_get_link_ksettings:\09\09\09\09\09"
module asm "\09.asciz \09\22mii_ethtool_get_link_ksettings\22\09\09\09\09\09"
module asm "__kstrtabns_mii_ethtool_get_link_ksettings:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mii_ethtool_sset:\09\09\09\09\09"
module asm "\09.asciz \09\22mii_ethtool_sset\22\09\09\09\09\09"
module asm "__kstrtabns_mii_ethtool_sset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mii_ethtool_set_link_ksettings:\09\09\09\09\09"
module asm "\09.asciz \09\22mii_ethtool_set_link_ksettings\22\09\09\09\09\09"
module asm "__kstrtabns_mii_ethtool_set_link_ksettings:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mii_check_link:\09\09\09\09\09"
module asm "\09.asciz \09\22mii_check_link\22\09\09\09\09\09"
module asm "__kstrtabns_mii_check_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mii_check_media:\09\09\09\09\09"
module asm "\09.asciz \09\22mii_check_media\22\09\09\09\09\09"
module asm "__kstrtabns_mii_check_media:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mii_check_gmii_support:\09\09\09\09\09"
module asm "\09.asciz \09\22mii_check_gmii_support\22\09\09\09\09\09"
module asm "__kstrtabns_mii_check_gmii_support:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_mii_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_mii_ioctl\22\09\09\09\09\09"
module asm "__kstrtabns_generic_mii_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.ethtool_cmd = type { i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i32, i32, i16, i8, i8, i32, [2 x i32] }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.107, i32 }
%struct.anon.107 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.108, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.22 }
%union.anon.22 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.23 }
%union.anon.23 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.108 = type { ptr }
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
%struct.netdevice_tracker = type {}
%struct.mii_ioctl_data = type { i16, i16, i16, i16 }

@.str = private unnamed_addr constant [11 x i8] c"link down\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"link up\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"link up, %uMbps, %s-duplex, lpa 0x%04X\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@__UNIQUE_ID_author318 = internal constant [43 x i8] c"mii.author=Jeff Garzik <jgarzik@pobox.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description319 = internal constant [45 x i8] c"mii.description=MII hardware support library\00", section ".modinfo", align 1
@__UNIQUE_ID_file320 = internal constant [25 x i8] c"mii.file=drivers/net/mii\00", section ".modinfo", align 1
@__UNIQUE_ID_license321 = internal constant [16 x i8] c"mii.license=GPL\00", section ".modinfo", align 1
@__kstrtab_mii_link_ok = external dso_local constant [0 x i8], align 1
@__kstrtabns_mii_link_ok = external dso_local constant [0 x i8], align 1
@__ksymtab_mii_link_ok = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mii_link_ok to i32), ptr @__kstrtab_mii_link_ok, ptr @__kstrtabns_mii_link_ok }, section "___ksymtab+mii_link_ok", align 4
@__kstrtab_mii_nway_restart = external dso_local constant [0 x i8], align 1
@__kstrtabns_mii_nway_restart = external dso_local constant [0 x i8], align 1
@__ksymtab_mii_nway_restart = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mii_nway_restart to i32), ptr @__kstrtab_mii_nway_restart, ptr @__kstrtabns_mii_nway_restart }, section "___ksymtab+mii_nway_restart", align 4
@__kstrtab_mii_ethtool_gset = external dso_local constant [0 x i8], align 1
@__kstrtabns_mii_ethtool_gset = external dso_local constant [0 x i8], align 1
@__ksymtab_mii_ethtool_gset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mii_ethtool_gset to i32), ptr @__kstrtab_mii_ethtool_gset, ptr @__kstrtabns_mii_ethtool_gset }, section "___ksymtab+mii_ethtool_gset", align 4
@__kstrtab_mii_ethtool_get_link_ksettings = external dso_local constant [0 x i8], align 1
@__kstrtabns_mii_ethtool_get_link_ksettings = external dso_local constant [0 x i8], align 1
@__ksymtab_mii_ethtool_get_link_ksettings = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mii_ethtool_get_link_ksettings to i32), ptr @__kstrtab_mii_ethtool_get_link_ksettings, ptr @__kstrtabns_mii_ethtool_get_link_ksettings }, section "___ksymtab+mii_ethtool_get_link_ksettings", align 4
@__kstrtab_mii_ethtool_sset = external dso_local constant [0 x i8], align 1
@__kstrtabns_mii_ethtool_sset = external dso_local constant [0 x i8], align 1
@__ksymtab_mii_ethtool_sset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mii_ethtool_sset to i32), ptr @__kstrtab_mii_ethtool_sset, ptr @__kstrtabns_mii_ethtool_sset }, section "___ksymtab+mii_ethtool_sset", align 4
@__kstrtab_mii_ethtool_set_link_ksettings = external dso_local constant [0 x i8], align 1
@__kstrtabns_mii_ethtool_set_link_ksettings = external dso_local constant [0 x i8], align 1
@__ksymtab_mii_ethtool_set_link_ksettings = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mii_ethtool_set_link_ksettings to i32), ptr @__kstrtab_mii_ethtool_set_link_ksettings, ptr @__kstrtabns_mii_ethtool_set_link_ksettings }, section "___ksymtab+mii_ethtool_set_link_ksettings", align 4
@__kstrtab_mii_check_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_mii_check_link = external dso_local constant [0 x i8], align 1
@__ksymtab_mii_check_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mii_check_link to i32), ptr @__kstrtab_mii_check_link, ptr @__kstrtabns_mii_check_link }, section "___ksymtab+mii_check_link", align 4
@__kstrtab_mii_check_media = external dso_local constant [0 x i8], align 1
@__kstrtabns_mii_check_media = external dso_local constant [0 x i8], align 1
@__ksymtab_mii_check_media = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mii_check_media to i32), ptr @__kstrtab_mii_check_media, ptr @__kstrtabns_mii_check_media }, section "___ksymtab+mii_check_media", align 4
@__kstrtab_mii_check_gmii_support = external dso_local constant [0 x i8], align 1
@__kstrtabns_mii_check_gmii_support = external dso_local constant [0 x i8], align 1
@__ksymtab_mii_check_gmii_support = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mii_check_gmii_support to i32), ptr @__kstrtab_mii_check_gmii_support, ptr @__kstrtabns_mii_check_gmii_support }, section "___ksymtab+mii_check_gmii_support", align 4
@__kstrtab_generic_mii_ioctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_mii_ioctl = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_mii_ioctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_mii_ioctl to i32), ptr @__kstrtab_generic_mii_ioctl, ptr @__kstrtabns_generic_mii_ioctl }, section "___ksymtab+generic_mii_ioctl", align 4
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author318, ptr @__UNIQUE_ID_description319, ptr @__UNIQUE_ID_file320, ptr @__UNIQUE_ID_license321, ptr @__ksymtab_generic_mii_ioctl, ptr @__ksymtab_mii_check_gmii_support, ptr @__ksymtab_mii_check_link, ptr @__ksymtab_mii_check_media, ptr @__ksymtab_mii_ethtool_get_link_ksettings, ptr @__ksymtab_mii_ethtool_gset, ptr @__ksymtab_mii_ethtool_set_link_ksettings, ptr @__ksymtab_mii_ethtool_sset, ptr @__ksymtab_mii_link_ok, ptr @__ksymtab_mii_nway_restart], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mii_ethtool_gset(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 1
  store i32 719, ptr %5, align 4
  %6 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 4
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 4
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, i32 719, i32 767
  store i32 %10, ptr %5, align 4
  %11 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 5
  store i8 2, ptr %11, align 1
  %12 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 7
  store i8 0, ptr %12, align 1
  %13 = load i32, ptr %0, align 4
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 6
  store i8 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 9
  store i8 1, ptr %16, align 1
  %17 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 2
  store i32 640, ptr %17, align 4
  %18 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %0, align 4
  %21 = tail call i32 %19(ptr noundef %4, i32 noundef %20, i32 noundef 0) #4
  %22 = load ptr, ptr %18, align 4
  %23 = load i32, ptr %0, align 4
  %24 = tail call i32 %22(ptr noundef %4, i32 noundef %23, i32 noundef 1) #4
  %25 = load i8, ptr %6, align 4
  %26 = and i8 %25, 4
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %2
  %29 = load ptr, ptr %18, align 4
  %30 = load i32, ptr %0, align 4
  %31 = tail call i32 %29(ptr noundef %4, i32 noundef %30, i32 noundef 9) #4
  %32 = load ptr, ptr %18, align 4
  %33 = load i32, ptr %0, align 4
  %34 = tail call i32 %32(ptr noundef %4, i32 noundef %33, i32 noundef 10) #4
  %35 = lshr i32 %31, 4
  %36 = and i32 %35, 48
  %37 = lshr i32 %34, 6
  %38 = and i32 %37, 48
  br label %39

39:                                               ; preds = %28, %2
  %40 = phi i32 [ %36, %28 ], [ 0, %2 ]
  %41 = phi i32 [ %38, %28 ], [ 0, %2 ]
  %42 = load ptr, ptr %18, align 4
  %43 = load ptr, ptr %3, align 4
  %44 = load i32, ptr %0, align 4
  %45 = tail call i32 %42(ptr noundef %43, i32 noundef %44, i32 noundef 4) #4
  %46 = lshr i32 %45, 8
  %47 = and i32 %46, 64
  %48 = lshr i32 %45, 5
  %49 = and i32 %48, 15
  %50 = shl i32 %45, 3
  %51 = and i32 %50, 8192
  %52 = and i32 %50, 16384
  %53 = load i32, ptr %17, align 4
  %54 = or i32 %51, %53
  %55 = or i32 %54, %49
  %56 = or i32 %55, %52
  %57 = or i32 %56, %47
  store i32 %57, ptr %17, align 4
  %58 = load i8, ptr %6, align 4
  %59 = and i8 %58, 4
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %39
  %62 = or i32 %57, %40
  store i32 %62, ptr %17, align 4
  br label %63

63:                                               ; preds = %61, %39
  %64 = phi i32 [ %62, %61 ], [ %57, %39 ]
  %65 = and i32 %21, 4096
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %113, label %67

67:                                               ; preds = %63
  %68 = or i32 %64, 64
  store i32 %68, ptr %17, align 4
  %69 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 8
  store i8 1, ptr %69, align 2
  %70 = and i32 %24, 32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %89, label %72

72:                                               ; preds = %67
  %73 = load ptr, ptr %18, align 4
  %74 = load ptr, ptr %3, align 4
  %75 = load i32, ptr %0, align 4
  %76 = tail call i32 %73(ptr noundef %74, i32 noundef %75, i32 noundef 5) #4
  %77 = lshr i32 %76, 8
  %78 = and i32 %77, 64
  %79 = lshr i32 %76, 5
  %80 = and i32 %79, 15
  %81 = shl i32 %76, 3
  %82 = and i32 %81, 8192
  %83 = and i32 %81, 16384
  %84 = or i32 %82, %41
  %85 = or i32 %84, %80
  %86 = or i32 %85, %83
  %87 = or i32 %86, %78
  %88 = load i32, ptr %17, align 4
  br label %89

89:                                               ; preds = %72, %67
  %90 = phi i32 [ %88, %72 ], [ %68, %67 ]
  %91 = phi i32 [ %87, %72 ], [ 0, %67 ]
  %92 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 15
  store i32 %91, ptr %92, align 4
  %93 = and i32 %91, %90
  %94 = and i32 %93, 48
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 3
  store i16 1000, ptr %97, align 4
  %98 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 12
  store i16 0, ptr %98, align 4
  %99 = trunc i32 %93 to i8
  %100 = lshr i8 %99, 5
  br label %125

101:                                              ; preds = %89
  %102 = and i32 %93, 12
  %103 = icmp eq i32 %102, 0
  %104 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 3
  br i1 %103, label %109, label %105

105:                                              ; preds = %101
  store i16 100, ptr %104, align 4
  %106 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 12
  store i16 0, ptr %106, align 4
  %107 = trunc i32 %93 to i8
  %108 = lshr i8 %107, 3
  br label %125

109:                                              ; preds = %101
  store i16 10, ptr %104, align 4
  %110 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 12
  store i16 0, ptr %110, align 4
  %111 = trunc i32 %93 to i8
  %112 = lshr i8 %111, 1
  br label %125

113:                                              ; preds = %63
  %114 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 8
  store i8 0, ptr %114, align 2
  %115 = and i32 %21, 8192
  %116 = icmp eq i32 %115, 0
  %117 = and i32 %21, 8256
  %118 = icmp eq i32 %117, 64
  %119 = select i1 %116, i16 10, i16 100
  %120 = select i1 %118, i16 1000, i16 %119
  %121 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 3
  store i16 %120, ptr %121, align 4
  %122 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 12
  store i16 0, ptr %122, align 4
  %123 = lshr i32 %21, 8
  %124 = trunc i32 %123 to i8
  br label %125

125:                                              ; preds = %113, %109, %105, %96
  %126 = phi i8 [ %100, %96 ], [ %112, %109 ], [ %108, %105 ], [ %124, %113 ]
  %127 = and i8 %126, 1
  %128 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 4
  store i8 %127, ptr %128, align 2
  %129 = load i8, ptr %6, align 4
  %130 = and i8 %129, -2
  %131 = or i8 %130, %127
  store i8 %131, ptr %6, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mii_ethtool_get_link_ksettings(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 4
  %6 = load i8, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 3
  store i8 2, ptr %7, align 1
  %8 = load i32, ptr %0, align 4
  %9 = trunc i32 %8 to i8
  %10 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 4
  store i8 %9, ptr %10, align 2
  %11 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 6
  store i8 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %0, align 4
  %15 = tail call i32 %13(ptr noundef %4, i32 noundef %14, i32 noundef 0) #4
  %16 = load ptr, ptr %12, align 4
  %17 = load i32, ptr %0, align 4
  %18 = tail call i32 %16(ptr noundef %4, i32 noundef %17, i32 noundef 1) #4
  %19 = load i8, ptr %5, align 4
  %20 = and i8 %19, 4
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %2
  %23 = load ptr, ptr %12, align 4
  %24 = load i32, ptr %0, align 4
  %25 = tail call i32 %23(ptr noundef %4, i32 noundef %24, i32 noundef 9) #4
  %26 = load ptr, ptr %12, align 4
  %27 = load i32, ptr %0, align 4
  %28 = tail call i32 %26(ptr noundef %4, i32 noundef %27, i32 noundef 10) #4
  %29 = lshr i32 %25, 4
  %30 = and i32 %29, 48
  %31 = lshr i32 %28, 6
  %32 = and i32 %31, 48
  br label %33

33:                                               ; preds = %22, %2
  %34 = phi i32 [ %30, %22 ], [ 0, %2 ]
  %35 = phi i32 [ %32, %22 ], [ 0, %2 ]
  %36 = load ptr, ptr %12, align 4
  %37 = load ptr, ptr %3, align 4
  %38 = load i32, ptr %0, align 4
  %39 = tail call i32 %36(ptr noundef %37, i32 noundef %38, i32 noundef 4) #4
  %40 = lshr i32 %39, 8
  %41 = and i32 %40, 64
  %42 = lshr i32 %39, 5
  %43 = and i32 %42, 15
  %44 = shl i32 %39, 3
  %45 = and i32 %44, 8192
  %46 = or i32 %43, %45
  %47 = and i32 %44, 16384
  %48 = or i32 %46, %47
  %49 = or i32 %48, %41
  %50 = load i8, ptr %5, align 4
  %51 = and i8 %50, 4
  %52 = icmp eq i8 %51, 0
  %53 = select i1 %52, i32 0, i32 %34
  %54 = or i32 %49, %53
  %55 = and i32 %15, 4096
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %97, label %57

57:                                               ; preds = %33
  %58 = or i32 %54, 704
  %59 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 5
  store i8 1, ptr %59, align 1
  %60 = and i32 %18, 32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %78, label %62

62:                                               ; preds = %57
  %63 = load ptr, ptr %12, align 4
  %64 = load ptr, ptr %3, align 4
  %65 = load i32, ptr %0, align 4
  %66 = tail call i32 %63(ptr noundef %64, i32 noundef %65, i32 noundef 5) #4
  %67 = lshr i32 %66, 8
  %68 = and i32 %67, 64
  %69 = lshr i32 %66, 5
  %70 = and i32 %69, 15
  %71 = shl i32 %66, 3
  %72 = and i32 %71, 8192
  %73 = and i32 %71, 16384
  %74 = or i32 %72, %35
  %75 = or i32 %74, %70
  %76 = or i32 %75, %73
  %77 = or i32 %76, %68
  br label %78

78:                                               ; preds = %62, %57
  %79 = phi i32 [ %77, %62 ], [ 0, %57 ]
  %80 = and i32 %79, %58
  %81 = and i32 %80, 48
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 1
  store i32 1000, ptr %84, align 4
  %85 = trunc i32 %80 to i8
  %86 = lshr i8 %85, 5
  br label %109

87:                                               ; preds = %78
  %88 = and i32 %80, 12
  %89 = icmp eq i32 %88, 0
  %90 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 1
  br i1 %89, label %94, label %91

91:                                               ; preds = %87
  store i32 100, ptr %90, align 4
  %92 = trunc i32 %80 to i8
  %93 = lshr i8 %92, 3
  br label %109

94:                                               ; preds = %87
  store i32 10, ptr %90, align 4
  %95 = trunc i32 %80 to i8
  %96 = lshr i8 %95, 1
  br label %109

97:                                               ; preds = %33
  %98 = or i32 %54, 640
  %99 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 5
  store i8 0, ptr %99, align 1
  %100 = and i32 %15, 8192
  %101 = icmp eq i32 %100, 0
  %102 = and i32 %15, 8256
  %103 = icmp eq i32 %102, 64
  %104 = select i1 %101, i32 10, i32 100
  %105 = select i1 %103, i32 1000, i32 %104
  %106 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 1
  store i32 %105, ptr %106, align 4
  %107 = lshr i32 %15, 8
  %108 = trunc i32 %107 to i8
  br label %109

109:                                              ; preds = %97, %94, %91, %83
  %110 = phi i8 [ %86, %83 ], [ %96, %94 ], [ %93, %91 ], [ %108, %97 ]
  %111 = phi i32 [ %58, %83 ], [ %58, %94 ], [ %58, %91 ], [ %98, %97 ]
  %112 = phi i32 [ %79, %83 ], [ %79, %94 ], [ %79, %91 ], [ 0, %97 ]
  %113 = and i8 %110, 1
  %114 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 2
  store i8 %113, ptr %114, align 4
  %115 = and i8 %6, 4
  %116 = icmp eq i8 %115, 0
  %117 = select i1 %116, i32 719, i32 767
  %118 = load i8, ptr %5, align 4
  %119 = and i8 %118, -2
  %120 = or i8 %119, %113
  store i8 %120, ptr %5, align 4
  %121 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %1, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %121, i32 noundef %117) #4
  %122 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %1, i32 0, i32 1, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %122, i32 noundef %111) #4
  %123 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %1, i32 0, i32 1, i32 2
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %123, i32 noundef %112) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mii_ethtool_sset(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 12
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = shl nuw i32 %7, 16
  %9 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 3
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = or i32 %8, %11
  switch i32 %12, label %145 [
    i32 1000, label %13
    i32 100, label %13
    i32 10, label %13
  ]

13:                                               ; preds = %2, %2, %2
  %14 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 4
  %15 = load i8, ptr %14, align 2
  %16 = icmp ult i8 %15, 2
  br i1 %16, label %17, label %145

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 5
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 2
  br i1 %20, label %21, label %145

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 7
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %145

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 6
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i32
  %29 = load i32, ptr %0, align 4
  %30 = icmp eq i32 %29, %28
  br i1 %30, label %31, label %145

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 8
  %33 = load i8, ptr %32, align 2
  %34 = icmp ult i8 %33, 2
  br i1 %34, label %35, label %145

35:                                               ; preds = %31
  %36 = icmp eq i32 %12, 1000
  br i1 %36, label %37, label %42

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 4
  %39 = load i8, ptr %38, align 4
  %40 = and i8 %39, 4
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %145, label %42

42:                                               ; preds = %37, %35
  %43 = icmp eq i8 %33, 1
  br i1 %43, label %44, label %110

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.ethtool_cmd, ptr %1, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 63
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %145, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 6
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 %51(ptr noundef %4, i32 noundef %28, i32 noundef 4) #4
  %53 = and i32 %52, -993
  %54 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 4
  %55 = load i8, ptr %54, align 4
  %56 = and i8 %55, 4
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %49
  %59 = load ptr, ptr %50, align 4
  %60 = load i32, ptr %0, align 4
  %61 = tail call i32 %59(ptr noundef %4, i32 noundef %60, i32 noundef 9) #4
  %62 = and i32 %61, -769
  %63 = load i8, ptr %54, align 4
  %64 = and i8 %63, 4
  br label %65

65:                                               ; preds = %58, %49
  %66 = phi i8 [ %64, %58 ], [ 0, %49 ]
  %67 = phi i32 [ %61, %58 ], [ 0, %49 ]
  %68 = phi i32 [ %62, %58 ], [ 0, %49 ]
  %69 = load i32, ptr %45, align 4
  %70 = shl i32 %69, 5
  %71 = and i32 %70, 480
  %72 = lshr i32 %69, 3
  %73 = and i32 %72, 1024
  %74 = and i32 %72, 2048
  %75 = or i32 %73, %53
  %76 = or i32 %75, %71
  %77 = or i32 %76, %74
  %78 = icmp eq i8 %66, 0
  %79 = shl i32 %69, 4
  %80 = and i32 %79, 768
  %81 = select i1 %78, i32 0, i32 %80
  %82 = or i32 %81, %68
  %83 = icmp eq i32 %52, %77
  br i1 %83, label %91, label %84

84:                                               ; preds = %65
  %85 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 7
  %86 = load ptr, ptr %85, align 4
  %87 = load i32, ptr %0, align 4
  tail call void %86(ptr noundef %4, i32 noundef %87, i32 noundef 4, i32 noundef %77) #4
  %88 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 1
  store i32 %77, ptr %88, align 4
  %89 = load i8, ptr %54, align 4
  %90 = and i8 %89, 4
  br label %91

91:                                               ; preds = %84, %65
  %92 = phi i8 [ %90, %84 ], [ %66, %65 ]
  %93 = icmp eq i8 %92, 0
  %94 = icmp eq i32 %67, %82
  %95 = select i1 %93, i1 true, i1 %94
  br i1 %95, label %100, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 7
  %98 = load ptr, ptr %97, align 4
  %99 = load i32, ptr %0, align 4
  tail call void %98(ptr noundef %4, i32 noundef %99, i32 noundef 9, i32 noundef %82) #4
  br label %100

100:                                              ; preds = %96, %91
  %101 = load ptr, ptr %50, align 4
  %102 = load i32, ptr %0, align 4
  %103 = tail call i32 %101(ptr noundef %4, i32 noundef %102, i32 noundef 0) #4
  %104 = or i32 %103, 4608
  %105 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 7
  %106 = load ptr, ptr %105, align 4
  %107 = load i32, ptr %0, align 4
  tail call void %106(ptr noundef %4, i32 noundef %107, i32 noundef 0, i32 noundef %104) #4
  %108 = load i8, ptr %54, align 4
  %109 = and i8 %108, -3
  store i8 %109, ptr %54, align 4
  br label %145

110:                                              ; preds = %42
  %111 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 6
  %112 = load ptr, ptr %111, align 4
  %113 = tail call i32 %112(ptr noundef %4, i32 noundef %28, i32 noundef 0) #4
  %114 = and i32 %113, -12609
  %115 = or i32 %114, 64
  %116 = icmp eq i32 %12, 100
  %117 = or i32 %114, 8192
  %118 = select i1 %116, i32 %117, i32 %114
  %119 = select i1 %36, i32 %115, i32 %118
  %120 = load i8, ptr %14, align 2
  %121 = icmp eq i8 %120, 1
  br i1 %121, label %122, label %127

122:                                              ; preds = %110
  %123 = or i32 %119, 256
  %124 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 4
  %125 = load i8, ptr %124, align 4
  %126 = or i8 %125, 1
  store i8 %126, ptr %124, align 4
  br label %131

127:                                              ; preds = %110
  %128 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 4
  %129 = load i8, ptr %128, align 4
  %130 = and i8 %129, -2
  store i8 %130, ptr %128, align 4
  br label %131

131:                                              ; preds = %127, %122
  %132 = phi i8 [ %126, %122 ], [ %130, %127 ]
  %133 = phi i32 [ %123, %122 ], [ %119, %127 ]
  %134 = icmp eq i32 %113, %133
  br i1 %134, label %141, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 7
  %137 = load ptr, ptr %136, align 4
  %138 = load i32, ptr %0, align 4
  tail call void %137(ptr noundef %4, i32 noundef %138, i32 noundef 0, i32 noundef %133) #4
  %139 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 4
  %140 = load i8, ptr %139, align 4
  br label %141

141:                                              ; preds = %135, %131
  %142 = phi i8 [ %140, %135 ], [ %132, %131 ]
  %143 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 4
  %144 = or i8 %142, 2
  store i8 %144, ptr %143, align 4
  br label %145

145:                                              ; preds = %141, %100, %44, %37, %31, %25, %21, %17, %13, %2
  %146 = phi i32 [ -22, %2 ], [ -22, %13 ], [ -22, %17 ], [ -22, %21 ], [ -22, %25 ], [ -22, %31 ], [ -22, %37 ], [ -22, %44 ], [ 0, %100 ], [ 0, %141 ]
  ret i32 %146
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mii_ethtool_set_link_ksettings(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %139 [
    i32 1000, label %8
    i32 100, label %8
    i32 10, label %8
  ]

8:                                                ; preds = %2, %2, %2
  %9 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 2
  %10 = load i8, ptr %9, align 4
  %11 = icmp ult i8 %10, 2
  br i1 %11, label %12, label %139

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 3
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 2
  br i1 %15, label %16, label %139

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 4
  %18 = load i8, ptr %17, align 2
  %19 = zext i8 %18 to i32
  %20 = load i32, ptr %0, align 4
  %21 = icmp eq i32 %20, %19
  br i1 %21, label %22, label %139

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 5
  %24 = load i8, ptr %23, align 1
  %25 = icmp ult i8 %24, 2
  br i1 %25, label %26, label %139

26:                                               ; preds = %22
  %27 = icmp eq i32 %7, 1000
  br i1 %27, label %28, label %33

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 4
  %30 = load i8, ptr %29, align 4
  %31 = and i8 %30, 4
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %139, label %33

33:                                               ; preds = %28, %26
  %34 = icmp eq i8 %24, 1
  br i1 %34, label %35, label %103

35:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  store i32 0, ptr %3, align 4, !annotation !8
  %36 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %1, i32 0, i32 1, i32 1
  %37 = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %3, ptr noundef %36) #4
  %38 = load i32, ptr %3, align 4
  %39 = and i32 %38, 63
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %138, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 6
  %43 = load ptr, ptr %42, align 4
  %44 = load i32, ptr %0, align 4
  %45 = call i32 %43(ptr noundef %5, i32 noundef %44, i32 noundef 4) #4
  %46 = and i32 %45, -993
  %47 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 4
  %48 = load i8, ptr %47, align 4
  %49 = and i8 %48, 4
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %41
  %52 = load ptr, ptr %42, align 4
  %53 = load i32, ptr %0, align 4
  %54 = call i32 %52(ptr noundef %5, i32 noundef %53, i32 noundef 9) #4
  %55 = and i32 %54, -769
  %56 = load i8, ptr %47, align 4
  %57 = and i8 %56, 4
  br label %58

58:                                               ; preds = %51, %41
  %59 = phi i8 [ %57, %51 ], [ 0, %41 ]
  %60 = phi i32 [ %54, %51 ], [ 0, %41 ]
  %61 = phi i32 [ %55, %51 ], [ 0, %41 ]
  %62 = load i32, ptr %3, align 4
  %63 = shl i32 %62, 5
  %64 = and i32 %63, 480
  %65 = lshr i32 %62, 3
  %66 = and i32 %65, 1024
  %67 = and i32 %65, 2048
  %68 = or i32 %66, %46
  %69 = or i32 %68, %64
  %70 = or i32 %69, %67
  %71 = icmp eq i8 %59, 0
  %72 = shl i32 %62, 4
  %73 = and i32 %72, 768
  %74 = select i1 %71, i32 0, i32 %73
  %75 = or i32 %74, %61
  %76 = icmp eq i32 %45, %70
  br i1 %76, label %84, label %77

77:                                               ; preds = %58
  %78 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 7
  %79 = load ptr, ptr %78, align 4
  %80 = load i32, ptr %0, align 4
  call void %79(ptr noundef %5, i32 noundef %80, i32 noundef 4, i32 noundef %70) #4
  %81 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 1
  store i32 %70, ptr %81, align 4
  %82 = load i8, ptr %47, align 4
  %83 = and i8 %82, 4
  br label %84

84:                                               ; preds = %77, %58
  %85 = phi i8 [ %83, %77 ], [ %59, %58 ]
  %86 = icmp eq i8 %85, 0
  %87 = icmp eq i32 %60, %75
  %88 = select i1 %86, i1 true, i1 %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 7
  %91 = load ptr, ptr %90, align 4
  %92 = load i32, ptr %0, align 4
  call void %91(ptr noundef %5, i32 noundef %92, i32 noundef 9, i32 noundef %75) #4
  br label %93

93:                                               ; preds = %89, %84
  %94 = load ptr, ptr %42, align 4
  %95 = load i32, ptr %0, align 4
  %96 = call i32 %94(ptr noundef %5, i32 noundef %95, i32 noundef 0) #4
  %97 = or i32 %96, 4608
  %98 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 7
  %99 = load ptr, ptr %98, align 4
  %100 = load i32, ptr %0, align 4
  call void %99(ptr noundef %5, i32 noundef %100, i32 noundef 0, i32 noundef %97) #4
  %101 = load i8, ptr %47, align 4
  %102 = and i8 %101, -3
  store i8 %102, ptr %47, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  br label %139

103:                                              ; preds = %33
  %104 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 6
  %105 = load ptr, ptr %104, align 4
  %106 = tail call i32 %105(ptr noundef %5, i32 noundef %19, i32 noundef 0) #4
  %107 = and i32 %106, -12609
  %108 = or i32 %107, 64
  %109 = icmp eq i32 %7, 100
  %110 = or i32 %107, 8192
  %111 = select i1 %109, i32 %110, i32 %107
  %112 = select i1 %27, i32 %108, i32 %111
  %113 = load i8, ptr %9, align 4
  %114 = icmp eq i8 %113, 1
  br i1 %114, label %115, label %120

115:                                              ; preds = %103
  %116 = or i32 %112, 256
  %117 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 4
  %118 = load i8, ptr %117, align 4
  %119 = or i8 %118, 1
  store i8 %119, ptr %117, align 4
  br label %124

120:                                              ; preds = %103
  %121 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 4
  %122 = load i8, ptr %121, align 4
  %123 = and i8 %122, -2
  store i8 %123, ptr %121, align 4
  br label %124

124:                                              ; preds = %120, %115
  %125 = phi i8 [ %119, %115 ], [ %123, %120 ]
  %126 = phi i32 [ %116, %115 ], [ %112, %120 ]
  %127 = icmp eq i32 %106, %126
  br i1 %127, label %134, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 7
  %130 = load ptr, ptr %129, align 4
  %131 = load i32, ptr %0, align 4
  tail call void %130(ptr noundef %5, i32 noundef %131, i32 noundef 0, i32 noundef %126) #4
  %132 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 4
  %133 = load i8, ptr %132, align 4
  br label %134

134:                                              ; preds = %128, %124
  %135 = phi i8 [ %133, %128 ], [ %125, %124 ]
  %136 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 4
  %137 = or i8 %135, 2
  store i8 %137, ptr %136, align 4
  br label %139

138:                                              ; preds = %35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  br label %139

139:                                              ; preds = %138, %134, %93, %28, %22, %16, %12, %8, %2
  %140 = phi i32 [ -22, %2 ], [ -22, %8 ], [ -22, %12 ], [ -22, %16 ], [ -22, %22 ], [ -22, %28 ], [ -22, %138 ], [ 0, %93 ], [ 0, %134 ]
  ret i32 %140
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mii_check_gmii_support(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %0, align 4
  %7 = tail call i32 %3(ptr noundef %5, i32 noundef %6, i32 noundef 1) #4
  %8 = and i32 %7, 256
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 4
  %12 = load ptr, ptr %4, align 4
  %13 = load i32, ptr %0, align 4
  %14 = tail call i32 %11(ptr noundef %12, i32 noundef %13, i32 noundef 15) #4
  %15 = and i32 %14, 12288
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10, %1
  br label %18

18:                                               ; preds = %17, %10
  %19 = phi i32 [ 0, %17 ], [ 1, %10 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mii_link_ok(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %0, align 4
  %7 = tail call i32 %3(ptr noundef %5, i32 noundef %6, i32 noundef 1) #4
  %8 = load ptr, ptr %2, align 4
  %9 = load ptr, ptr %4, align 4
  %10 = load i32, ptr %0, align 4
  %11 = tail call i32 %8(ptr noundef %9, i32 noundef %10, i32 noundef 1) #4
  %12 = lshr i32 %11, 2
  %13 = and i32 %12, 1
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mii_nway_restart(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %0, align 4
  %7 = tail call i32 %3(ptr noundef %5, i32 noundef %6, i32 noundef 0) #4
  %8 = and i32 %7, 4096
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = or i32 %7, 512
  %12 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %4, align 4
  %15 = load i32, ptr %0, align 4
  tail call void %13(ptr noundef %14, i32 noundef %15, i32 noundef 0, i32 noundef %11) #4
  br label %16

16:                                               ; preds = %10, %1
  %17 = phi i32 [ 0, %10 ], [ -22, %1 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mii_check_link(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %0, align 4
  %7 = tail call i32 %3(ptr noundef %5, i32 noundef %6, i32 noundef 1) #4
  %8 = load ptr, ptr %2, align 4
  %9 = load ptr, ptr %4, align 4
  %10 = load i32, ptr %0, align 4
  %11 = tail call i32 %8(ptr noundef %9, i32 noundef %10, i32 noundef 1) #4
  %12 = lshr i32 %11, 2
  %13 = and i32 %12, 1
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 6
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 4
  %18 = icmp eq i32 %17, 0
  %19 = icmp eq i32 %13, 0
  %20 = select i1 %19, i1 true, i1 %18
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  tail call void @netif_carrier_on(ptr noundef %14) #4
  br label %27

22:                                               ; preds = %1
  %23 = xor i1 %18, true
  %24 = icmp ne i32 %13, 0
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @netif_carrier_off(ptr noundef %14) #4
  br label %27

27:                                               ; preds = %26, %22, %21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mii_check_media(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %7 = load volatile i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %0, align 4
  %11 = tail call i32 %9(ptr noundef %5, i32 noundef %10, i32 noundef 1) #4
  %12 = load ptr, ptr %8, align 4
  %13 = load ptr, ptr %4, align 4
  %14 = load i32, ptr %0, align 4
  %15 = tail call i32 %12(ptr noundef %13, i32 noundef %14, i32 noundef 1) #4
  %16 = lshr i32 %15, 2
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %2, 0
  %19 = lshr i32 %7, 2
  %20 = and i32 %19, 1
  %21 = xor i32 %20, 1
  %22 = icmp eq i32 %17, %21
  %23 = select i1 %18, i1 %22, i1 false
  br i1 %23, label %107, label %24

24:                                               ; preds = %3
  %25 = icmp eq i32 %17, 0
  %26 = load ptr, ptr %4, align 4
  br i1 %25, label %27, label %31

27:                                               ; preds = %24
  tail call void @netif_carrier_off(ptr noundef %26) #4
  %28 = icmp eq i32 %1, 0
  br i1 %28, label %107, label %29

29:                                               ; preds = %27
  %30 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %30, ptr noundef nonnull @.str) #5
  br label %107

31:                                               ; preds = %24
  tail call void @netif_carrier_on(ptr noundef %26) #4
  %32 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 4
  %33 = load i8, ptr %32, align 4
  %34 = and i8 %33, 2
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = icmp eq i32 %1, 0
  br i1 %37, label %107, label %38

38:                                               ; preds = %36
  %39 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %39, ptr noundef nonnull @.str.1) #5
  br label %107

40:                                               ; preds = %31
  br i1 %18, label %41, label %45

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41, %40
  %46 = load ptr, ptr %8, align 4
  %47 = load ptr, ptr %4, align 4
  %48 = load i32, ptr %0, align 4
  %49 = tail call i32 %46(ptr noundef %47, i32 noundef %48, i32 noundef 4) #4
  %50 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 1
  store i32 %49, ptr %50, align 4
  br label %51

51:                                               ; preds = %45, %41
  %52 = phi i32 [ %49, %45 ], [ %43, %41 ]
  %53 = load ptr, ptr %8, align 4
  %54 = load ptr, ptr %4, align 4
  %55 = load i32, ptr %0, align 4
  %56 = tail call i32 %53(ptr noundef %54, i32 noundef %55, i32 noundef 5) #4
  %57 = load i8, ptr %32, align 4
  %58 = and i8 %57, 4
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %51
  %61 = load ptr, ptr %8, align 4
  %62 = load ptr, ptr %4, align 4
  %63 = load i32, ptr %0, align 4
  %64 = tail call i32 %61(ptr noundef %62, i32 noundef %63, i32 noundef 10) #4
  br label %65

65:                                               ; preds = %60, %51
  %66 = phi i32 [ %64, %60 ], [ 0, %51 ]
  %67 = and i32 %56, %52
  %68 = and i32 %67, 256
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = and i32 %67, 512
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = and i32 %67, 128
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = and i32 %67, 64
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %78, i32 32, i32 64
  br label %80

80:                                               ; preds = %76, %73, %70, %65
  %81 = phi i32 [ 256, %65 ], [ 512, %70 ], [ 128, %73 ], [ %79, %76 ]
  %82 = and i32 %81, 320
  %83 = icmp ne i32 %82, 0
  %84 = and i32 %66, 2048
  %85 = icmp ne i32 %84, 0
  %86 = select i1 %85, i1 true, i1 %83
  %87 = icmp eq i32 %1, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %80
  %89 = load ptr, ptr %4, align 4
  %90 = and i32 %66, 3072
  %91 = icmp eq i32 %90, 0
  %92 = and i32 %81, 384
  %93 = icmp eq i32 %92, 0
  %94 = select i1 %93, i32 10, i32 100
  %95 = select i1 %91, i32 %94, i32 1000
  %96 = select i1 %86, ptr @.str.3, ptr @.str.4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %89, ptr noundef nonnull @.str.2, i32 noundef %95, ptr noundef nonnull %96, i32 noundef %56) #5
  br label %97

97:                                               ; preds = %88, %80
  %98 = load i8, ptr %32, align 4
  br i1 %18, label %99, label %103

99:                                               ; preds = %97
  %100 = and i8 %98, 1
  %101 = icmp eq i8 %100, 0
  %102 = xor i1 %86, %101
  br i1 %102, label %107, label %103

103:                                              ; preds = %99, %97
  %104 = zext i1 %86 to i8
  %105 = and i8 %98, -2
  %106 = or i8 %105, %104
  store i8 %106, ptr %32, align 4
  br label %107

107:                                              ; preds = %103, %99, %38, %36, %29, %27, %3
  %108 = phi i32 [ 1, %103 ], [ 0, %3 ], [ 0, %29 ], [ 0, %27 ], [ 0, %38 ], [ 0, %36 ], [ 0, %99 ]
  ret i32 %108
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @generic_mii_ioctl(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr noundef writeonly %3) #0 {
  %5 = icmp ne ptr %3, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  store i32 0, ptr %3, align 4
  br label %7

7:                                                ; preds = %6, %4
  %8 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = load i16, ptr %1, align 2
  %11 = trunc i32 %9 to i16
  %12 = and i16 %10, %11
  store i16 %12, ptr %1, align 2
  %13 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.mii_ioctl_data, ptr %1, i32 0, i32 1
  %16 = load i16, ptr %15, align 2
  %17 = trunc i32 %14 to i16
  %18 = and i16 %16, %17
  store i16 %18, ptr %15, align 2
  switch i32 %2, label %75 [
    i32 35143, label %19
    i32 35144, label %22
    i32 35145, label %33
  ]

19:                                               ; preds = %7
  %20 = load i32, ptr %0, align 4
  %21 = trunc i32 %20 to i16
  store i16 %21, ptr %1, align 2
  br label %22

22:                                               ; preds = %19, %7
  %23 = phi i16 [ %12, %7 ], [ %21, %19 ]
  %24 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 6
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = zext i16 %23 to i32
  %29 = zext i16 %18 to i32
  %30 = tail call i32 %25(ptr noundef %27, i32 noundef %28, i32 noundef %29) #4
  %31 = trunc i32 %30 to i16
  %32 = getelementptr inbounds %struct.mii_ioctl_data, ptr %1, i32 0, i32 3
  store i16 %31, ptr %32, align 2
  br label %75

33:                                               ; preds = %7
  %34 = getelementptr inbounds %struct.mii_ioctl_data, ptr %1, i32 0, i32 2
  %35 = load i16, ptr %34, align 2
  %36 = zext i16 %12 to i32
  %37 = load i32, ptr %0, align 4
  %38 = icmp eq i32 %37, %36
  br i1 %38, label %39, label %62

39:                                               ; preds = %33
  switch i16 %18, label %62 [
    i16 0, label %40
    i16 4, label %59
  ]

40:                                               ; preds = %39
  %41 = zext i16 %35 to i32
  %42 = and i32 %41, 36864
  %43 = icmp eq i32 %42, 0
  %44 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 4
  %45 = load i8, ptr %44, align 4
  %46 = and i8 %45, -3
  %47 = select i1 %43, i8 2, i8 0
  %48 = or i8 %46, %47
  store i8 %48, ptr %44, align 4
  %49 = and i32 %41, 37120
  %50 = icmp eq i32 %49, 256
  %51 = and i8 %45, 1
  %52 = icmp eq i8 %51, 0
  %53 = xor i1 %52, %50
  br i1 %53, label %62, label %54

54:                                               ; preds = %40
  %55 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 4
  %56 = zext i1 %50 to i8
  %57 = and i8 %48, -2
  %58 = or i8 %57, %56
  store i8 %58, ptr %55, align 4
  br label %62

59:                                               ; preds = %39
  %60 = zext i16 %35 to i32
  %61 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 1
  store i32 %60, ptr %61, align 4
  br label %62

62:                                               ; preds = %59, %54, %40, %39, %33
  %63 = phi i1 [ false, %33 ], [ false, %39 ], [ false, %59 ], [ true, %54 ], [ false, %40 ]
  %64 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 7
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.mii_if_info, ptr %0, i32 0, i32 5
  %67 = load ptr, ptr %66, align 4
  %68 = load i16, ptr %1, align 2
  %69 = zext i16 %68 to i32
  %70 = load i16, ptr %15, align 2
  %71 = zext i16 %70 to i32
  %72 = zext i16 %35 to i32
  tail call void %65(ptr noundef %67, i32 noundef %69, i32 noundef %71, i32 noundef %72) #4
  %73 = and i1 %5, %63
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  store i32 1, ptr %3, align 4
  br label %75

75:                                               ; preds = %74, %62, %22, %7
  %76 = phi i32 [ 0, %74 ], [ 0, %62 ], [ -95, %7 ], [ 0, %22 ]
  ret i32 %76
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"auto-init"}
