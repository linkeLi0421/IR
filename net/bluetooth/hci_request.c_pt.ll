; ModuleID = '/llk/IR/net/bluetooth/hci_request.c_pt.bc'
source_filename = "../net/bluetooth/hci_request.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hci_request = type { ptr, %struct.sk_buff_head, i32 }
%struct.sk_buff_head = type { %union.anon.0, i32, %struct.spinlock }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.1, %union.anon.98, %union.anon.99, [48 x i8], %union.anon.100, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.102, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { ptr, ptr, %union.anon.3 }
%union.anon.3 = type { ptr }
%union.anon.98 = type { ptr }
%union.anon.99 = type { i64 }
%union.anon.100 = type { %struct.anon.101 }
%struct.anon.101 = type { i32, ptr }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.104, i32, i32, i32, i16, i16, %union.anon.106, %union.anon.107, %union.anon.108, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.104 = type { i32 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { i32 }
%union.anon.108 = type { i16 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.hci_command_hdr = type <{ i16, i8 }>
%struct.hci_cp_write_page_scan_activity = type { i16, i16 }
%struct.hci_cp_write_local_name = type { [248 x i8] }
%struct.hci_cp_write_eir = type { i8, [240 x i8] }
%struct.hci_cp_le_set_ext_scan_enable = type { i8, i8, i16, i16 }
%struct.hci_cp_le_set_scan_enable = type { i8, i8 }
%struct.hci_cp_le_del_from_accept_list = type { i8, %struct.bdaddr_t }
%struct.hci_cp_le_del_from_resolv_list = type { i8, %struct.bdaddr_t }
%struct.bdaddr_list = type { %struct.list_head, %struct.bdaddr_t, i8 }
%struct.hci_conn = type { %struct.list_head, %struct.atomic_t, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, i8, i16, i16, i8, i8, i8, i8, i8, [3 x i8], [3 x [8 x i8]], i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, [31 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i16, i32, i8, i8, i8, i32, %struct.sk_buff_head, %struct.list_head, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bt_codec, ptr, ptr, ptr }
%struct.bt_codec = type <{ i8, i16, i16, i8, i8 }>
%struct.hci_cp_le_set_scan_param = type <{ i8, i16, i16, i8, i8 }>
%struct.hci_cp_le_set_ext_scan_params = type { i8, i8, i8, [0 x i8] }
%struct.hci_cp_le_scan_phy_params = type <{ i8, i16, i16 }>
%struct.hci_cp_le_set_ext_adv_enable = type { i8, i8, [0 x i8] }
%struct.hci_cp_le_set_adv_param = type <{ i16, i16, i8, i8, i8, %struct.bdaddr_t, i8, i8 }>
%struct.adv_info = type { %struct.list_head, i8, i8, i8, i32, i16, i16, i16, i16, [251 x i8], i16, [251 x i8], i8, i32, i32, %struct.bdaddr_t, i8, %struct.delayed_work }
%struct.anon.137 = type { %struct.hci_cp_le_set_ext_scan_rsp_data, [251 x i8] }
%struct.hci_cp_le_set_ext_scan_rsp_data = type { i8, i8, i8, i8, [0 x i8] }
%struct.hci_cp_le_set_scan_rsp_data = type { i8, [31 x i8] }
%struct.anon.138 = type { %struct.hci_cp_le_set_ext_adv_data, [251 x i8] }
%struct.hci_cp_le_set_ext_adv_data = type { i8, i8, i8, i8, [0 x i8] }
%struct.hci_cp_le_set_adv_data = type { i8, [31 x i8] }
%struct.hci_cp_le_set_ext_adv_params = type <{ i8, i16, [3 x i8], [3 x i8], i8, i8, i8, %struct.bdaddr_t, i8, i8, i8, i8, i8, i8, i8 }>
%struct.hci_cp_le_set_adv_set_rand_addr = type { i8, %struct.bdaddr_t }
%struct.bt_uuid = type { %struct.list_head, [16 x i8], i8, i8 }
%struct.hci_cp_disconn_phy_link = type { i8, i8 }
%struct.hci_cp_disconnect = type <{ i16, i8 }>
%struct.hci_cp_reject_conn_req = type { %struct.bdaddr_t, i8 }
%struct.hci_cp_reject_sync_conn_req = type { %struct.bdaddr_t, i8 }
%struct.hci_cp_remote_name_req_cancel = type { %struct.bdaddr_t }
%struct.inquiry_entry = type { %struct.list_head, %struct.list_head, i32, i32, %struct.inquiry_data }
%struct.inquiry_data = type { %struct.bdaddr_t, i8, i8, i8, [3 x i8], i16, i8, i8 }
%struct.hci_op_configure_data_path = type { i8, i8, i8, [0 x i8] }
%struct.hci_cp_write_le_host_supported = type { i8, i8 }
%struct.hci_cp_le_add_to_accept_list = type { i8, %struct.bdaddr_t }
%struct.hci_cp_le_add_to_resolv_list = type { i8, %struct.bdaddr_t, [16 x i8], [16 x i8] }
%struct.hci_conn_params = type { %struct.list_head, %struct.list_head, %struct.bdaddr_t, i8, i16, i16, i16, i16, i32, ptr, i8, [1 x i32], i8 }
%struct.smp_irk = type { %struct.list_head, %struct.callback_head, %struct.bdaddr_t, %struct.bdaddr_t, i8, [16 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.hci_cp_inquiry = type { [3 x i8], i8, i8 }
%struct.hci_cp_write_current_iac_lap = type { i8, [6 x i8] }

@.str = private unnamed_addr constant [44 x i8] c"%s: no memory for command (opcode 0x%4.4x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"%s: failed to generate new RPA\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"%s: failed to run HCI request: err %d\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__const.bredr_inquiry.giac = private unnamed_addr constant [3 x i8] c"3\8B\9E", align 1
@__const.bredr_inquiry.liac = private unnamed_addr constant [3 x i8] c"\00\8B\9E", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"%s: failed to disable LE scan: status 0x%02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"%s: inquiry failed: status 0x%02x\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"%s: failed to restart LE scan: status %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"%s: unexpected error\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"unexpected error\0A\00", align 1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @hci_req_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.hci_request, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.hci_request, ptr %0, i32 0, i32 1, i32 2
  store i32 0, ptr %4, align 4
  store ptr %3, ptr %3, align 4
  %5 = getelementptr inbounds %struct.hci_request, ptr %0, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  %6 = getelementptr inbounds %struct.hci_request, ptr %0, i32 0, i32 1, i32 1
  store i32 0, ptr %6, align 4
  store ptr %1, ptr %0, align 4
  %7 = getelementptr inbounds %struct.hci_request, ptr %0, i32 0, i32 2
  store i32 0, ptr %7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_req_purge(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.hci_request, ptr %0, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @hci_req_status_pend(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 165
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 1
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_req_run(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = tail call fastcc i32 @req_run(ptr noundef %0, ptr noundef %1, ptr noundef null)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @req_run(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.hci_request, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.hci_request, ptr %0, i32 0, i32 1
  br i1 %7, label %11, label %9

9:                                                ; preds = %3
  tail call void @skb_queue_purge(ptr noundef %8) #11
  %10 = load i32, ptr %5, align 4
  br label %50

11:                                               ; preds = %3
  %12 = load ptr, ptr %8, align 4
  %13 = icmp eq ptr %12, %8
  br i1 %13, label %50, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.hci_request, ptr %0, i32 0, i32 1, i32 0, i32 0, i32 1
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %8
  %18 = select i1 %17, ptr null, ptr %16
  %19 = icmp eq ptr %1, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 16
  store ptr %1, ptr %21, align 8
  br label %29

22:                                               ; preds = %14
  %23 = icmp eq ptr %2, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 16
  store ptr %2, ptr %25, align 8
  %26 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 14
  %27 = load i8, ptr %26, align 2
  %28 = or i8 %27, 2
  store i8 %28, ptr %26, align 2
  br label %29

29:                                               ; preds = %24, %22, %20
  %30 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 161, i32 2
  %31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %30) #11
  %32 = load ptr, ptr %8, align 4
  %33 = icmp eq ptr %32, %8
  br i1 %33, label %45, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 161
  %36 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 161, i32 0, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %15, align 4
  %39 = getelementptr inbounds %struct.anon.2, ptr %32, i32 0, i32 1
  store volatile ptr %37, ptr %39, align 4
  store volatile ptr %32, ptr %37, align 8
  store volatile ptr %35, ptr %38, align 8
  store volatile ptr %38, ptr %36, align 4
  %40 = getelementptr inbounds %struct.hci_request, ptr %0, i32 0, i32 1, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 161, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, %41
  store i32 %44, ptr %42, align 4
  br label %45

45:                                               ; preds = %34, %29
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %30, i32 noundef %31) #11
  %46 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 138
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 153
  %49 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %47, ptr noundef %48) #11
  br label %50

50:                                               ; preds = %45, %11, %9
  %51 = phi i32 [ %10, %9 ], [ 0, %45 ], [ -61, %11 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_req_run_skb(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = tail call fastcc i32 @req_run(ptr noundef %0, ptr noundef null, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_req_sync_complete(ptr noundef %0, i8 noundef zeroext %1, i16 zeroext %2, ptr noundef %3) #1 {
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 165
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %27

8:                                                ; preds = %4
  %9 = zext i8 %1 to i32
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 166
  store i32 %9, ptr %10, align 8
  store i32 0, ptr %5, align 4
  %11 = icmp eq ptr %3, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #11, !srcloc !8
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #11, !srcloc !9
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17, !prof !10

17:                                               ; preds = %12
  %18 = add i32 %15, 1
  %19 = or i32 %18, %15
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %23, label %21, !prof !11

21:                                               ; preds = %17, %12
  %22 = phi i32 [ 2, %12 ], [ 1, %17 ]
  tail call void @refcount_warn_saturate(ptr noundef %13, i32 noundef %22) #11
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 167
  store ptr %3, ptr %24, align 4
  br label %25

25:                                               ; preds = %23, %8
  %26 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 164
  tail call void @__wake_up(ptr noundef %26, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  br label %27

27:                                               ; preds = %25, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__hci_req_sync(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef writeonly %4) local_unnamed_addr #1 {
  %6 = alloca %struct.hci_request, align 4
  %7 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #11
  %8 = getelementptr inbounds %struct.hci_request, ptr %6, i32 0, i32 1
  %9 = getelementptr inbounds i8, ptr %6, i32 16
  store i32 0, ptr %9, align 4
  store ptr %8, ptr %8, align 4
  %10 = getelementptr inbounds %struct.hci_request, ptr %6, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  %11 = getelementptr inbounds %struct.hci_request, ptr %6, i32 0, i32 1, i32 1
  store i32 0, ptr %11, align 4
  store ptr %0, ptr %6, align 4
  %12 = getelementptr inbounds %struct.hci_request, ptr %6, i32 0, i32 2
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 165
  store i32 1, ptr %13, align 4
  %14 = call i32 %1(ptr noundef nonnull %6, i32 noundef %2) #11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %5
  %17 = icmp eq ptr %4, null
  br i1 %17, label %95, label %18

18:                                               ; preds = %16
  store i8 31, ptr %4, align 1
  br label %95

19:                                               ; preds = %5
  %20 = call fastcc i32 @req_run(ptr noundef nonnull %6, ptr noundef null, ptr noundef nonnull @hci_req_sync_complete) #11
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  store i32 0, ptr %13, align 4
  %23 = icmp eq i32 %20, -61
  %24 = icmp eq ptr %4, null
  br i1 %23, label %25, label %27

25:                                               ; preds = %22
  br i1 %24, label %95, label %26

26:                                               ; preds = %25
  store i8 0, ptr %4, align 1
  br label %95

27:                                               ; preds = %22
  br i1 %24, label %95, label %28

28:                                               ; preds = %27
  store i8 31, ptr %4, align 1
  br label %95

29:                                               ; preds = %19
  %30 = load i32, ptr %13, align 4
  %31 = icmp ne i32 %30, 1
  %32 = icmp eq i32 %3, 0
  %33 = and i1 %32, %31
  %34 = select i1 %33, i32 1, i32 %3
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %31, i1 true, i1 %35
  br i1 %36, label %65, label %37

37:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i32 20, i1 false), !annotation !12
  call void @init_wait_entry(ptr noundef nonnull %7, i32 noundef 0) #11
  %38 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 164
  %39 = call i32 @prepare_to_wait_event(ptr noundef %38, ptr noundef nonnull %7, i32 noundef 1) #11
  %40 = load i32, ptr %13, align 4
  %41 = icmp ne i32 %40, 1
  %42 = and i1 %41, %32
  %43 = select i1 %42, i32 1, i32 %3
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %41, i1 true, i1 %44
  br i1 %45, label %61, label %46

46:                                               ; preds = %50, %37
  %47 = phi i32 [ %58, %50 ], [ %43, %37 ]
  %48 = phi i32 [ %52, %50 ], [ %39, %37 ]
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = call i32 @schedule_timeout(i32 noundef %47) #11
  %52 = call i32 @prepare_to_wait_event(ptr noundef %38, ptr noundef nonnull %7, i32 noundef 1) #11
  %53 = load i32, ptr %13, align 4
  %54 = icmp ne i32 %53, 1
  %55 = xor i1 %54, true
  %56 = icmp ne i32 %51, 0
  %57 = select i1 %55, i1 true, i1 %56
  %58 = select i1 %57, i32 %51, i32 1
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %54, i1 true, i1 %59
  br i1 %60, label %61, label %46

61:                                               ; preds = %50, %37
  %62 = phi i32 [ %43, %37 ], [ %58, %50 ]
  call void @finish_wait(ptr noundef %38, ptr noundef nonnull %7) #11
  br label %63

63:                                               ; preds = %61, %46
  %64 = phi i32 [ %62, %61 ], [ %48, %46 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #11
  br label %65

65:                                               ; preds = %63, %29
  %66 = phi i32 [ %34, %29 ], [ %64, %63 ]
  %67 = icmp eq i32 %66, -512
  br i1 %67, label %95, label %68

68:                                               ; preds = %65
  %69 = load i32, ptr %13, align 4
  switch i32 %69, label %85 [
    i32 0, label %70
    i32 2, label %80
  ]

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 166
  %72 = load i32, ptr %71, align 8
  %73 = trunc i32 %72 to i16
  %74 = call i32 @bt_to_errno(i16 noundef zeroext %73) #11
  %75 = sub i32 0, %74
  %76 = icmp eq ptr %4, null
  br i1 %76, label %90, label %77

77:                                               ; preds = %70
  %78 = load i32, ptr %71, align 8
  %79 = trunc i32 %78 to i8
  br label %87

80:                                               ; preds = %68
  %81 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 166
  %82 = load i32, ptr %81, align 8
  %83 = sub i32 0, %82
  %84 = icmp eq ptr %4, null
  br i1 %84, label %90, label %87

85:                                               ; preds = %68
  %86 = icmp eq ptr %4, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %85, %80, %77
  %88 = phi i8 [ %79, %77 ], [ 31, %80 ], [ 31, %85 ]
  %89 = phi i32 [ %75, %77 ], [ %83, %80 ], [ -110, %85 ]
  store i8 %88, ptr %4, align 1
  br label %90

90:                                               ; preds = %87, %85, %80, %70
  %91 = phi i32 [ -110, %85 ], [ %83, %80 ], [ %75, %70 ], [ %89, %87 ]
  %92 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 167
  %93 = load ptr, ptr %92, align 4
  call void @kfree_skb_reason(ptr noundef %93, i32 noundef 0) #11
  store ptr null, ptr %92, align 4
  %94 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 166
  store i32 0, ptr %94, align 8
  store i32 0, ptr %13, align 4
  br label %95

95:                                               ; preds = %90, %65, %28, %27, %26, %25, %18, %16
  %96 = phi i32 [ %91, %90 ], [ %14, %18 ], [ %14, %16 ], [ 0, %26 ], [ 0, %25 ], [ %20, %28 ], [ %20, %27 ], [ -4, %65 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #11
  ret i32 %96
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_to_errno(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_req_sync(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #1 {
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 163
  tail call void @mutex_lock(ptr noundef %6) #11
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = tail call i32 @__hci_req_sync(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi i32 [ %12, %11 ], [ -100, %5 ]
  tail call void @mutex_unlock(ptr noundef %6) #11
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @hci_prepare_cmd(ptr nocapture readnone %0, i16 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  %5 = add i32 %2, 11
  %6 = tail call ptr @__alloc_skb(i32 noundef %5, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 8
  store ptr %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 14
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr i8, ptr %13, i32 8
  store ptr %14, ptr %12, align 8
  %15 = tail call ptr @skb_put(ptr noundef nonnull %6, i32 noundef 3) #11
  store i16 %1, ptr %15, align 1
  %16 = trunc i32 %2 to i8
  %17 = getelementptr inbounds %struct.hci_command_hdr, ptr %15, i32 0, i32 1
  store i8 %16, ptr %17, align 1
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %8
  %20 = tail call ptr @skb_put(ptr noundef nonnull %6, i32 noundef %2) #11
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %20, ptr align 1 %3, i32 %2, i1 false) #11
  br label %21

21:                                               ; preds = %19, %8
  %22 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 3
  store i8 1, ptr %22, align 8
  %23 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 3, i32 12
  store i16 %1, ptr %23, align 4
  br label %24

24:                                               ; preds = %21, %4
  ret ptr %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4) local_unnamed_addr #1 {
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.hci_request, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %42

10:                                               ; preds = %5
  %11 = add i32 %2, 11
  %12 = tail call ptr @__alloc_skb(i32 noundef %11, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 8
  store ptr %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 14
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i8, ptr %19, i32 8
  store ptr %20, ptr %18, align 8
  %21 = tail call ptr @skb_put(ptr noundef nonnull %12, i32 noundef 3) #11
  store i16 %1, ptr %21, align 1
  %22 = trunc i32 %2 to i8
  %23 = getelementptr inbounds %struct.hci_command_hdr, ptr %21, i32 0, i32 1
  store i8 %22, ptr %23, align 1
  %24 = icmp eq i32 %2, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %14
  %26 = tail call ptr @skb_put(ptr noundef nonnull %12, i32 noundef %2) #11
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %26, ptr align 1 %3, i32 %2, i1 false) #11
  br label %30

27:                                               ; preds = %10
  %28 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 2
  %29 = zext i16 %1 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %28, i32 noundef %29) #11
  store i32 -12, ptr %7, align 4
  br label %42

30:                                               ; preds = %25, %14
  %31 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 3
  store i8 1, ptr %31, align 8
  %32 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 3, i32 12
  store i16 %1, ptr %32, align 4
  %33 = getelementptr inbounds %struct.hci_request, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %33
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 3, i32 14
  %38 = load i8, ptr %37, align 2
  %39 = or i8 %38, 1
  store i8 %39, ptr %37, align 2
  br label %40

40:                                               ; preds = %36, %30
  %41 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 3, i32 15
  store i8 %4, ptr %41, align 1
  tail call void @skb_queue_tail(ptr noundef %33, ptr noundef nonnull %12) #11
  br label %42

42:                                               ; preds = %40, %27, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_req_add(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  tail call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, ptr noundef %3, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__hci_req_write_fast_connectable(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = alloca %struct.hci_cp_write_page_scan_activity, align 4
  %4 = alloca i8, align 1
  %5 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  %6 = getelementptr %struct.hci_dev, ptr %5, i32 0, i32 206, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %40, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 28
  %12 = load i8, ptr %11, align 1
  %13 = icmp ult i8 %12, 2
  br i1 %13, label %40, label %14

14:                                               ; preds = %10
  br i1 %1, label %15, label %16

15:                                               ; preds = %14
  store i8 1, ptr %4, align 1
  br label %21

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 86
  %18 = load i8, ptr %17, align 2
  store i8 %18, ptr %4, align 1
  %19 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 87
  %20 = load i16, ptr %19, align 8
  br label %21

21:                                               ; preds = %16, %15
  %22 = phi i8 [ 1, %15 ], [ %18, %16 ]
  %23 = phi i16 [ 256, %15 ], [ %20, %16 ]
  store i16 %23, ptr %3, align 4
  %24 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 88
  %25 = load i16, ptr %24, align 2
  %26 = getelementptr inbounds %struct.hci_cp_write_page_scan_activity, ptr %3, i32 0, i32 1
  store i16 %25, ptr %26, align 2
  %27 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 40
  %28 = load i16, ptr %27, align 2
  %29 = icmp eq i16 %28, %23
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 41
  %32 = load i16, ptr %31, align 8
  %33 = icmp eq i16 %32, %25
  br i1 %33, label %35, label %34

34:                                               ; preds = %30, %21
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 3100, i32 noundef 4, ptr noundef nonnull %3, i8 noundef zeroext 0) #11
  br label %35

35:                                               ; preds = %34, %30
  %36 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 42
  %37 = load i8, ptr %36, align 2
  %38 = icmp eq i8 %37, %22
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 3143, i32 noundef 1, ptr noundef nonnull %4, i8 noundef zeroext 0) #11
  br label %40

40:                                               ; preds = %39, %35, %10, %2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__hci_req_update_name(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %struct.hci_cp_write_local_name, align 1
  %3 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 248, ptr nonnull %2) #11
  %4 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(248) %2, ptr noundef align 1 dereferenceable(248) %4, i32 248, i1 false)
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 3091, i32 noundef 248, ptr noundef nonnull %2, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 248, ptr nonnull %2) #11
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__hci_req_update_eir(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %struct.hci_cp_write_eir, align 1
  %3 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 241, ptr nonnull %2) #11
  %4 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 3
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %32, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 206
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %8
  %14 = getelementptr %struct.hci_dev, ptr %3, i32 0, i32 21, i32 0, i32 6
  %15 = load i8, ptr %14, align 2
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %13
  %19 = load volatile i32, ptr %9, align 4
  %20 = and i32 %19, 32768
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %18
  %23 = load volatile i32, ptr %9, align 4
  %24 = and i32 %23, 64
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(241) %2, i8 0, i32 241, i1 false)
  %27 = getelementptr inbounds %struct.hci_cp_write_eir, ptr %2, i32 0, i32 1
  call void @eir_create(ptr noundef %3, ptr noundef %27) #11
  %28 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 15
  %29 = call i32 @bcmp(ptr noundef dereferenceable(240) %27, ptr noundef dereferenceable(240) %28, i32 240)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(240) %28, ptr noundef align 1 dereferenceable(240) %27, i32 240, i1 false)
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 3154, i32 noundef 241, ptr noundef nonnull %2, i8 noundef zeroext 0) #11
  br label %32

32:                                               ; preds = %31, %26, %22, %18, %13, %8, %1
  call void @llvm.lifetime.end.p0(i64 241, ptr nonnull %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @eir_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_req_add_le_scan_disable(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = alloca %struct.hci_cp_le_set_ext_scan_enable, align 1
  %4 = alloca %struct.hci_cp_le_set_scan_enable, align 2
  %5 = alloca i8, align 1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 178
  %8 = load i8, ptr %7, align 4, !range !13
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = getelementptr %struct.hci_dev, ptr %6, i32 0, i32 27, i32 37
  %12 = load i8, ptr %11, align 1
  %13 = and i8 %12, 96
  %14 = icmp eq i8 %13, 96
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i64 6, i1 false)
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8258, i32 noundef 6, ptr noundef nonnull %3, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #11
  br label %17

16:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  store i16 0, ptr %4, align 2
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8204, i32 noundef 2, ptr noundef nonnull %4, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  br label %17

17:                                               ; preds = %16, %15
  %18 = getelementptr %struct.hci_dev, ptr %6, i32 0, i32 206, i32 1
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 256
  %21 = icmp eq i32 %20, 0
  %22 = or i1 %21, %1
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  store i8 0, ptr %5, align 1
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8237, i32 noundef 1, ptr noundef nonnull %5, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  br label %24

24:                                               ; preds = %23, %17, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_req_add_le_passive_scan(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %struct.hci_cp_le_del_from_accept_list, align 1
  %3 = alloca %struct.hci_cp_le_del_from_resolv_list, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  store i8 0, ptr %5, align 1, !annotation !12
  %7 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 178
  %8 = load i8, ptr %7, align 4, !range !13
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %225

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 206
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 262144
  %14 = icmp ne i32 %13, 0
  %15 = call i32 @hci_update_random_address(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext %14, ptr noundef nonnull %5)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %225

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 81
  %19 = load i8, ptr %18, align 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %57, label %21

21:                                               ; preds = %17
  %22 = tail call zeroext i1 @hci_is_adv_monitoring(ptr noundef %6) #11
  br i1 %22, label %23, label %31

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 195
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 196
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %31, label %35

31:                                               ; preds = %27, %21
  %32 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 224
  %33 = load i32, ptr %32, align 8
  %34 = icmp ne i32 %33, 0
  br label %43

35:                                               ; preds = %27, %23
  %36 = tail call i32 @hci_get_adv_monitor_offload_ext(ptr noundef %6) #11
  %37 = icmp eq i32 %36, 1
  %38 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 224
  %39 = load i32, ptr %38, align 8
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %37, true
  %42 = select i1 %41, i1 true, i1 %40
  br i1 %42, label %43, label %52

43:                                               ; preds = %35, %31
  %44 = phi i1 [ %34, %31 ], [ %40, %35 ]
  %45 = phi ptr [ %32, %31 ], [ %38, %35 ]
  %46 = phi i1 [ false, %31 ], [ %37, %35 ]
  %47 = xor i1 %44, true
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %57, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 225
  %51 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %50) #11
  store i32 0, ptr %45, align 8
  br label %57

52:                                               ; preds = %35
  store i32 1, ptr %38, align 8
  %53 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 139
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 225
  %56 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %54, ptr noundef %55, i32 noundef 0) #11
  br label %225

57:                                               ; preds = %49, %43, %17
  %58 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  %59 = getelementptr inbounds %struct.hci_dev, ptr %58, i32 0, i32 179
  %60 = load i8, ptr %59, align 1, !range !13
  %61 = getelementptr inbounds %struct.hci_dev, ptr %58, i32 0, i32 22
  %62 = load i8, ptr %61, align 2
  %63 = and i8 %62, 64
  %64 = icmp eq i8 %63, 0
  %65 = icmp ne i8 %60, 0
  br i1 %64, label %72, label %66

66:                                               ; preds = %57
  %67 = getelementptr %struct.hci_dev, ptr %58, i32 0, i32 206, i32 1
  %68 = load volatile i32, ptr %67, align 4
  %69 = and i32 %68, 512
  %70 = icmp ne i32 %69, 0
  %71 = select i1 %70, i1 true, i1 %65
  br label %72

72:                                               ; preds = %66, %57
  %73 = phi i1 [ %65, %57 ], [ %71, %66 ]
  %74 = getelementptr inbounds %struct.hci_dev, ptr %58, i32 0, i32 192
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, %74
  br i1 %76, label %127, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.hci_dev, ptr %58, i32 0, i32 195
  %79 = getelementptr inbounds %struct.hci_dev, ptr %58, i32 0, i32 196
  %80 = getelementptr %struct.hci_dev, ptr %58, i32 0, i32 206, i32 1
  %81 = getelementptr inbounds %struct.hci_cp_le_del_from_accept_list, ptr %2, i32 0, i32 1
  %82 = getelementptr inbounds %struct.hci_cp_le_del_from_resolv_list, ptr %3, i32 0, i32 1
  br label %83

83:                                               ; preds = %123, %77
  %84 = phi ptr [ %75, %77 ], [ %125, %123 ]
  %85 = phi i8 [ 0, %77 ], [ %124, %123 ]
  %86 = getelementptr inbounds %struct.bdaddr_list, ptr %84, i32 0, i32 1
  %87 = getelementptr inbounds %struct.bdaddr_list, ptr %84, i32 0, i32 2
  %88 = load i8, ptr %87, align 2
  %89 = tail call ptr @hci_pend_le_action_lookup(ptr noundef %78, ptr noundef %86, i8 noundef zeroext %88) #11
  %90 = icmp eq ptr %89, null
  %91 = load i8, ptr %87, align 2
  %92 = tail call ptr @hci_pend_le_action_lookup(ptr noundef %79, ptr noundef %86, i8 noundef zeroext %91) #11
  %93 = icmp eq ptr %92, null
  %94 = select i1 %90, i1 %93, i1 false
  br i1 %94, label %95, label %112

95:                                               ; preds = %83
  %96 = load i8, ptr %87, align 2
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %2) #11
  store i8 %96, ptr %2, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %81, ptr noundef align 1 dereferenceable(6) %86, i32 6, i1 false) #11
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8210, i32 noundef 7, ptr noundef nonnull %2, i8 noundef zeroext 0) #11
  %97 = load ptr, ptr %0, align 4
  %98 = getelementptr inbounds %struct.hci_dev, ptr %97, i32 0, i32 22
  %99 = load i8, ptr %98, align 2
  %100 = and i8 %99, 64
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %111, label %102

102:                                              ; preds = %95
  %103 = getelementptr %struct.hci_dev, ptr %97, i32 0, i32 206, i32 1
  %104 = load volatile i32, ptr %103, align 4
  %105 = and i32 %104, 512
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %102
  %108 = tail call ptr @hci_find_irk_by_addr(ptr noundef %97, ptr noundef %86, i8 noundef zeroext %96) #11
  %109 = icmp eq ptr %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #11
  store i8 %96, ptr %3, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %82, ptr noundef align 1 dereferenceable(6) %86, i32 6, i1 false) #11
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8232, i32 noundef 7, ptr noundef nonnull %3, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #11
  br label %111

111:                                              ; preds = %110, %107, %102, %95
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %2) #11
  br label %123

112:                                              ; preds = %83
  br i1 %73, label %121, label %113

113:                                              ; preds = %112
  %114 = load volatile i32, ptr %80, align 4
  %115 = and i32 %114, 512
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i8, ptr %87, align 2
  %119 = tail call ptr @hci_find_irk_by_addr(ptr noundef %58, ptr noundef %86, i8 noundef zeroext %118) #11
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %167

121:                                              ; preds = %117, %113, %112
  %122 = add i8 %85, 1
  br label %123

123:                                              ; preds = %121, %111
  %124 = phi i8 [ %122, %121 ], [ %85, %111 ]
  %125 = load ptr, ptr %84, align 4
  %126 = icmp eq ptr %125, %74
  br i1 %126, label %127, label %83

127:                                              ; preds = %123, %72
  %128 = phi i8 [ 0, %72 ], [ %124, %123 ]
  store i8 %128, ptr %4, align 1
  %129 = getelementptr inbounds %struct.hci_dev, ptr %58, i32 0, i32 195
  br label %130

130:                                              ; preds = %134, %127
  %131 = phi ptr [ %129, %127 ], [ %132, %134 ]
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, %129
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = getelementptr i8, ptr %132, i32 -8
  %136 = call fastcc i32 @add_to_accept_list(ptr noundef %0, ptr noundef %135, ptr noundef nonnull %4, i1 noundef zeroext %73) #11
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %130, label %167

138:                                              ; preds = %130
  %139 = getelementptr inbounds %struct.hci_dev, ptr %58, i32 0, i32 196
  br label %140

140:                                              ; preds = %144, %138
  %141 = phi ptr [ %139, %138 ], [ %142, %144 ]
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, %139
  br i1 %143, label %148, label %144

144:                                              ; preds = %140
  %145 = getelementptr i8, ptr %142, i32 -8
  %146 = call fastcc i32 @add_to_accept_list(ptr noundef %0, ptr noundef %145, ptr noundef nonnull %4, i1 noundef zeroext %73) #11
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %140, label %167

148:                                              ; preds = %140
  %149 = getelementptr inbounds %struct.hci_dev, ptr %58, i32 0, i32 218, i32 0, i32 2
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.hci_dev, ptr %58, i32 0, i32 218
  %154 = tail call i32 @radix_tree_tagged(ptr noundef %153, i32 noundef 0) #11
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %152, %148
  %157 = load i8, ptr %59, align 1, !range !13
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %156
  %160 = tail call i32 @hci_get_adv_monitor_offload_ext(ptr noundef %58) #11
  %161 = icmp eq i32 %160, 1
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.hci_dev, ptr %58, i32 0, i32 224
  %164 = load i32, ptr %163, align 8
  %165 = icmp eq i32 %164, 2
  br i1 %165, label %166, label %167

166:                                              ; preds = %162, %159, %156, %152
  br label %167

167:                                              ; preds = %166, %162, %144, %134, %117
  %168 = phi i8 [ 1, %166 ], [ 0, %162 ], [ 0, %144 ], [ 0, %134 ], [ 0, %117 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  %169 = load volatile i32, ptr %11, align 4
  %170 = and i32 %169, 262144
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %178, label %172

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 22
  %174 = load i8, ptr %173, align 2
  %175 = or i8 %168, 2
  %176 = icmp slt i8 %174, 0
  %177 = select i1 %176, i8 %175, i8 %168
  br label %178

178:                                              ; preds = %172, %167
  %179 = phi i8 [ %168, %167 ], [ %177, %172 ]
  %180 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 179
  %181 = load i8, ptr %180, align 1, !range !13
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %178
  %184 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 50
  %185 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 49
  br label %218

186:                                              ; preds = %178
  %187 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  %188 = load volatile ptr, ptr %187, align 4
  %189 = icmp eq ptr %188, %187
  br i1 %189, label %210, label %190

190:                                              ; preds = %204, %186
  %191 = phi ptr [ %205, %204 ], [ %188, %186 ]
  %192 = getelementptr inbounds %struct.hci_conn, ptr %191, i32 0, i32 14
  %193 = load i8, ptr %192, align 1
  %194 = icmp eq i8 %193, -128
  br i1 %194, label %195, label %204

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.hci_conn, ptr %191, i32 0, i32 12
  %197 = load i16, ptr %196, align 4
  %198 = icmp eq i16 %197, 5
  br i1 %198, label %199, label %204

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.hci_conn, ptr %191, i32 0, i32 47
  %201 = load volatile i32, ptr %200, align 4
  %202 = and i32 %201, 2097152
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %199, %195, %190
  %205 = load volatile ptr, ptr %191, align 4
  %206 = icmp eq ptr %205, %187
  br i1 %206, label %210, label %190

207:                                              ; preds = %199
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %208 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 56
  %209 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 55
  br label %218

210:                                              ; preds = %204, %186
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %211 = tail call zeroext i1 @hci_is_adv_monitoring(ptr noundef %6) #11
  br i1 %211, label %212, label %215

212:                                              ; preds = %210
  %213 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 54
  %214 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 53
  br label %218

215:                                              ; preds = %210
  %216 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 48
  %217 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 47
  br label %218

218:                                              ; preds = %215, %212, %207, %183
  %219 = phi ptr [ %185, %183 ], [ %209, %207 ], [ %214, %212 ], [ %217, %215 ]
  %220 = phi i1 [ true, %183 ], [ true, %207 ], [ false, %212 ], [ true, %215 ]
  %221 = phi ptr [ %184, %183 ], [ %208, %207 ], [ %213, %212 ], [ %216, %215 ]
  %222 = load i16, ptr %221, align 4
  %223 = load i16, ptr %219, align 2
  %224 = load i8, ptr %5, align 1
  tail call fastcc void @hci_req_start_scan(ptr noundef %0, i8 noundef zeroext 0, i16 noundef zeroext %223, i16 noundef zeroext %222, i8 noundef zeroext %224, i8 noundef zeroext %179, i1 noundef zeroext %220, i1 noundef zeroext true)
  br label %225

225:                                              ; preds = %218, %52, %10, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_update_random_address(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #1 {
  %5 = alloca %struct.bdaddr_t, align 1
  %6 = alloca %struct.bdaddr_t, align 1
  %7 = alloca %struct.bdaddr_t, align 1
  %8 = alloca %struct.bdaddr_t, align 1
  %9 = load ptr, ptr %0, align 4
  br i1 %2, label %10, label %69

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 22
  %12 = load i8, ptr %11, align 2
  %13 = and i8 %12, 64
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = getelementptr %struct.hci_dev, ptr %9, i32 0, i32 206, i32 1
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 512
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %10
  br label %21

21:                                               ; preds = %20, %15
  %22 = phi i8 [ 1, %20 ], [ 3, %15 ]
  store i8 %22, ptr %3, align 1
  %23 = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 223
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %5, i8 0, i64 6, i1 false)
  %24 = call i32 @bcmp(ptr noundef dereferenceable(6) %23, ptr noundef nonnull dereferenceable(6) %5, i32 6)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 206
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 1048576
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %135, label %31

31:                                               ; preds = %26, %21
  %32 = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 220
  %33 = tail call i32 @smp_generate_rpa(ptr noundef %9, ptr noundef %32, ptr noundef %23) #11
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.1, ptr noundef %36) #11
  br label %135

37:                                               ; preds = %31
  %38 = load ptr, ptr %0, align 4
  %39 = getelementptr inbounds %struct.hci_dev, ptr %38, i32 0, i32 206
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %40, 8192
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %67

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.hci_dev, ptr %38, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  %45 = load volatile ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %44
  br i1 %46, label %64, label %47

47:                                               ; preds = %61, %43
  %48 = phi ptr [ %62, %61 ], [ %45, %43 ]
  %49 = getelementptr inbounds %struct.hci_conn, ptr %48, i32 0, i32 14
  %50 = load i8, ptr %49, align 1
  %51 = icmp eq i8 %50, -128
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.hci_conn, ptr %48, i32 0, i32 12
  %54 = load i16, ptr %53, align 4
  %55 = icmp eq i16 %54, 5
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.hci_conn, ptr %48, i32 0, i32 47
  %58 = load volatile i32, ptr %57, align 4
  %59 = and i32 %58, 2097152
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %56, %52, %47
  %62 = load volatile ptr, ptr %48, align 4
  %63 = icmp eq ptr %62, %44
  br i1 %63, label %64, label %47

64:                                               ; preds = %61, %43
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  br label %68

65:                                               ; preds = %56
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %66 = icmp eq ptr %48, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %65, %37
  tail call void @_set_bit(i32 noundef 20, ptr noundef %39) #11
  br label %135

68:                                               ; preds = %65, %64
  tail call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8197, i32 noundef 6, ptr noundef %23, i8 noundef zeroext 0) #11
  br label %135

69:                                               ; preds = %4
  br i1 %1, label %70, label %111

70:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %6, i8 0, i32 6, i1 false), !annotation !12
  %71 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 5
  %72 = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 7
  br label %73

73:                                               ; preds = %73, %70
  call void @get_random_bytes(ptr noundef nonnull %6, i32 noundef 6) #11
  %74 = load i8, ptr %71, align 1
  %75 = and i8 %74, 63
  store i8 %75, ptr %71, align 1
  %76 = call i32 @bcmp(ptr noundef dereferenceable(6) %72, ptr noundef nonnull dereferenceable(6) %6, i32 6)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %73, label %78

78:                                               ; preds = %73
  store i8 1, ptr %3, align 1
  %79 = load ptr, ptr %0, align 4
  %80 = getelementptr inbounds %struct.hci_dev, ptr %79, i32 0, i32 206
  %81 = load volatile i32, ptr %80, align 4
  %82 = and i32 %81, 8192
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %108

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.hci_dev, ptr %79, i32 0, i32 183
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  %86 = load volatile ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, %85
  br i1 %87, label %105, label %88

88:                                               ; preds = %102, %84
  %89 = phi ptr [ %103, %102 ], [ %86, %84 ]
  %90 = getelementptr inbounds %struct.hci_conn, ptr %89, i32 0, i32 14
  %91 = load i8, ptr %90, align 1
  %92 = icmp eq i8 %91, -128
  br i1 %92, label %93, label %102

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.hci_conn, ptr %89, i32 0, i32 12
  %95 = load i16, ptr %94, align 4
  %96 = icmp eq i16 %95, 5
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.hci_conn, ptr %89, i32 0, i32 47
  %99 = load volatile i32, ptr %98, align 4
  %100 = and i32 %99, 2097152
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %97, %93, %88
  %103 = load volatile ptr, ptr %89, align 4
  %104 = icmp eq ptr %103, %85
  br i1 %104, label %105, label %88

105:                                              ; preds = %102, %84
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  br label %109

106:                                              ; preds = %97
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %107 = icmp eq ptr %89, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %106, %78
  call void @_set_bit(i32 noundef 20, ptr noundef %80) #11
  br label %110

109:                                              ; preds = %106, %105
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8197, i32 noundef 6, ptr noundef nonnull %6, i8 noundef zeroext 0) #11
  br label %110

110:                                              ; preds = %109, %108
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #11
  br label %135

111:                                              ; preds = %69
  %112 = getelementptr %struct.hci_dev, ptr %9, i32 0, i32 206, i32 1
  %113 = load volatile i32, ptr %112, align 4
  %114 = and i32 %113, 128
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %7, i8 0, i64 6, i1 false)
  %118 = call i32 @bcmp(ptr noundef dereferenceable(6) %117, ptr noundef nonnull dereferenceable(6) %7, i32 6)
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %128, label %120

120:                                              ; preds = %116
  %121 = load volatile i32, ptr %112, align 4
  %122 = and i32 %121, 1
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %8, i8 0, i64 6, i1 false)
  %126 = call i32 @bcmp(ptr noundef dereferenceable(6) %125, ptr noundef nonnull dereferenceable(6) %8, i32 6)
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %124, %116, %111
  store i8 1, ptr %3, align 1
  %129 = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 11
  %130 = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 10
  %131 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %129, ptr noundef dereferenceable(6) %130, i32 6)
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %128
  tail call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8197, i32 noundef 6, ptr noundef %129, i8 noundef zeroext 0) #11
  br label %135

134:                                              ; preds = %124, %120
  store i8 0, ptr %3, align 1
  br label %135

135:                                              ; preds = %134, %133, %128, %110, %68, %67, %35, %26
  %136 = phi i32 [ %33, %35 ], [ 0, %110 ], [ 0, %134 ], [ 0, %26 ], [ 0, %133 ], [ 0, %128 ], [ 0, %67 ], [ 0, %68 ]
  ret i32 %136
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hci_is_adv_monitoring(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hci_req_start_scan(ptr noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i1 noundef zeroext %6, i1 noundef zeroext %7) unnamed_addr #1 {
  %9 = alloca i8, align 1
  %10 = alloca %struct.hci_cp_le_set_ext_scan_enable, align 1
  %11 = alloca [13 x i8], align 1
  %12 = alloca %struct.hci_cp_le_set_scan_param, align 1
  %13 = alloca %struct.hci_cp_le_set_scan_enable, align 2
  %14 = zext i1 %6 to i8
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr inbounds %struct.hci_dev, ptr %15, i32 0, i32 178
  %17 = load i8, ptr %16, align 4, !range !13
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %88

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.hci_dev, ptr %15, i32 0, i32 22
  %21 = load i8, ptr %20, align 2
  %22 = and i8 %21, 64
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = getelementptr %struct.hci_dev, ptr %15, i32 0, i32 206, i32 1
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 512
  %28 = icmp ne i32 %27, 0
  %29 = and i1 %28, %7
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #11
  store i8 1, ptr %9, align 1
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8237, i32 noundef 1, ptr noundef nonnull %9, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #11
  br label %31

31:                                               ; preds = %30, %24, %19
  %32 = getelementptr %struct.hci_dev, ptr %15, i32 0, i32 27, i32 37
  %33 = load i8, ptr %32, align 1
  %34 = and i8 %33, 96
  %35 = icmp eq i8 %34, 96
  br i1 %35, label %36, label %82

36:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %11) #11
  %37 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_params, ptr %11, i32 0, i32 3
  %38 = getelementptr inbounds i8, ptr %11, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(11) %38, i8 0, i64 11, i1 false)
  store i8 %4, ptr %11, align 1
  %39 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_params, ptr %11, i32 0, i32 1
  store i8 %5, ptr %39, align 1
  %40 = getelementptr inbounds %struct.hci_dev, ptr %15, i32 0, i32 136
  %41 = load i8, ptr %40, align 8
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.hci_dev, ptr %15, i32 0, i32 137
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  %51 = and i32 %42, 2
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %50, i1 %52, i1 false
  %54 = and i32 %48, 2
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %53, i1 %55, i1 false
  br i1 %56, label %62, label %57

57:                                               ; preds = %45, %36
  %58 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_params, ptr %11, i32 0, i32 2
  store i8 1, ptr %58, align 1
  store i8 %1, ptr %37, align 1
  %59 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_params, ptr %11, i32 1, i32 1
  store i16 %2, ptr %59, align 1
  %60 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_params, ptr %11, i32 2
  store i16 %3, ptr %60, align 1
  %61 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_params, ptr %11, i32 2, i32 2
  br label %62

62:                                               ; preds = %57, %45
  %63 = phi i8 [ 5, %57 ], [ 4, %45 ]
  %64 = phi ptr [ %61, %57 ], [ %37, %45 ]
  %65 = phi i32 [ 8, %57 ], [ 3, %45 ]
  %66 = and i8 %41, 4
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.hci_dev, ptr %15, i32 0, i32 137
  %70 = load i8, ptr %69, align 1
  %71 = and i8 %70, 4
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %68, %62
  %74 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_params, ptr %11, i32 0, i32 2
  store i8 %63, ptr %74, align 1
  store i8 %1, ptr %64, align 1
  %75 = getelementptr inbounds %struct.hci_cp_le_scan_phy_params, ptr %64, i32 0, i32 1
  store i16 %2, ptr %75, align 1
  %76 = getelementptr inbounds %struct.hci_cp_le_scan_phy_params, ptr %64, i32 0, i32 2
  store i16 %3, ptr %76, align 1
  %77 = add nuw nsw i32 %65, 5
  br label %78

78:                                               ; preds = %73, %68
  %79 = phi i32 [ %77, %73 ], [ %65, %68 ]
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8257, i32 noundef %79, ptr noundef nonnull %11, i8 noundef zeroext 0) #11
  %80 = getelementptr inbounds i8, ptr %10, i32 2
  store i32 0, ptr %80, align 1
  store i8 1, ptr %10, align 1
  %81 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_enable, ptr %10, i32 0, i32 1
  store i8 %14, ptr %81, align 1
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8258, i32 noundef 6, ptr noundef nonnull %10, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10) #11
  br label %88

82:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #11
  store i8 %1, ptr %12, align 1
  %83 = getelementptr inbounds %struct.hci_cp_le_set_scan_param, ptr %12, i32 0, i32 1
  store i16 %2, ptr %83, align 1
  %84 = getelementptr inbounds %struct.hci_cp_le_set_scan_param, ptr %12, i32 0, i32 2
  store i16 %3, ptr %84, align 1
  %85 = getelementptr inbounds %struct.hci_cp_le_set_scan_param, ptr %12, i32 0, i32 3
  store i8 %4, ptr %85, align 1
  %86 = getelementptr inbounds %struct.hci_cp_le_set_scan_param, ptr %12, i32 0, i32 4
  store i8 %5, ptr %86, align 1
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8203, i32 noundef 7, ptr noundef nonnull %12, i8 noundef zeroext 0) #11
  store i16 1, ptr %13, align 2
  %87 = getelementptr inbounds %struct.hci_cp_le_set_scan_enable, ptr %13, i32 0, i32 1
  store i8 %14, ptr %87, align 1
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8204, i32 noundef 2, ptr noundef nonnull %13, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %12) #11
  br label %88

88:                                               ; preds = %82, %78, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__hci_req_disable_advertising(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca i8, align 1
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr %struct.hci_dev, ptr %4, i32 0, i32 22, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = and i8 %6, 16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i64 6, i1 false)
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8249, i32 noundef 2, ptr noundef nonnull %2, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #11
  br label %11

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 0, ptr %3, align 1
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8202, i32 noundef 1, ptr noundef nonnull %3, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__hci_req_disable_ext_adv_instance(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = alloca [6 x i8], align 1
  %4 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #11
  %5 = icmp eq i8 %1, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @hci_find_adv_instance(ptr noundef %4, i8 noundef zeroext %1) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds i8, ptr %3, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %10, i8 0, i32 3, i1 false)
  %11 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_enable, ptr %3, i32 0, i32 2
  %12 = icmp ne i8 %1, 0
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_enable, ptr %3, i32 0, i32 1
  store i8 %13, ptr %14, align 1
  store i8 0, ptr %3, align 1
  store i8 %1, ptr %11, align 1
  %15 = select i1 %12, i32 6, i32 2
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8249, i32 noundef %15, ptr noundef nonnull %3, i8 noundef zeroext 0) #11
  br label %16

16:                                               ; preds = %9, %6
  %17 = phi i32 [ 0, %9 ], [ -22, %6 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #11
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__hci_req_enable_advertising(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca i8, align 1
  %4 = alloca %struct.hci_cp_le_set_adv_param, align 2
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  store i8 0, ptr %5, align 1, !annotation !12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  store i8 1, ptr %6, align 1
  %8 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 215
  %9 = load i8, ptr %8, align 8
  %10 = tail call i32 @hci_adv_instance_flags(ptr noundef %7, i8 noundef zeroext %9) #11
  %11 = load i8, ptr %8, align 8
  %12 = tail call ptr @hci_find_adv_instance(ptr noundef %7, i8 noundef zeroext %11) #11
  %13 = and i32 %10, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = tail call zeroext i1 @mgmt_get_connectable(ptr noundef %7) #11
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi i1 [ true, %1 ], [ %16, %15 ]
  %19 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 183, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %66, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 183, i32 5
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %46, label %26

26:                                               ; preds = %22
  br i1 %18, label %32, label %27

27:                                               ; preds = %26
  %28 = getelementptr %struct.hci_dev, ptr %7, i32 0, i32 26, i32 2
  %29 = load i8, ptr %28, align 1
  %30 = and i8 %29, 16
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %140, label %44

32:                                               ; preds = %26
  %33 = getelementptr %struct.hci_dev, ptr %7, i32 0, i32 26, i32 4
  %34 = load i8, ptr %33, align 1
  %35 = and i8 %34, 64
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %140, label %37

37:                                               ; preds = %32
  %38 = getelementptr %struct.hci_dev, ptr %7, i32 0, i32 26, i32 2
  %39 = load i8, ptr %38, align 1
  %40 = and i8 %39, 32
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %140, label %42

42:                                               ; preds = %37
  %43 = icmp eq i32 %20, %24
  br i1 %43, label %66, label %57

44:                                               ; preds = %27
  %45 = icmp eq i32 %20, %24
  br i1 %45, label %66, label %53

46:                                               ; preds = %22
  br i1 %18, label %47, label %50

47:                                               ; preds = %46
  %48 = getelementptr %struct.hci_dev, ptr %7, i32 0, i32 26, i32 4
  %49 = load i8, ptr %48, align 1
  br label %57

50:                                               ; preds = %46
  %51 = getelementptr %struct.hci_dev, ptr %7, i32 0, i32 26, i32 2
  %52 = load i8, ptr %51, align 1
  br label %53

53:                                               ; preds = %50, %44
  %54 = phi i8 [ %52, %50 ], [ %29, %44 ]
  %55 = and i8 %54, 2
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %140, label %66

57:                                               ; preds = %47, %42
  %58 = phi i8 [ %49, %47 ], [ %34, %42 ]
  %59 = and i8 %58, 8
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %140, label %61

61:                                               ; preds = %57
  %62 = getelementptr %struct.hci_dev, ptr %7, i32 0, i32 26, i32 2
  %63 = load i8, ptr %62, align 1
  %64 = and i8 %63, 8
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %140, label %66

66:                                               ; preds = %61, %53, %44, %42, %17
  %67 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 206
  %68 = load volatile i32, ptr %67, align 4
  %69 = and i32 %68, 8192
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %66
  %72 = load ptr, ptr %0, align 4
  %73 = getelementptr %struct.hci_dev, ptr %72, i32 0, i32 22, i32 1
  %74 = load i8, ptr %73, align 1
  %75 = and i8 %74, 16
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i64 6, i1 false) #11
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8249, i32 noundef 2, ptr noundef nonnull %2, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #11
  br label %79

78:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 0, ptr %3, align 1
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8202, i32 noundef 1, ptr noundef nonnull %3, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  br label %79

79:                                               ; preds = %78, %77, %66
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %67) #11
  %80 = xor i1 %18, true
  %81 = load volatile i32, ptr %67, align 4
  %82 = and i32 %81, 262144
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %79
  %85 = load volatile i32, ptr %67, align 4
  %86 = and i32 %85, 524288
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %84
  %89 = and i32 %10, 2
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %88
  %92 = load volatile i32, ptr %67, align 4
  %93 = and i32 %92, 32
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91, %88
  br label %96

96:                                               ; preds = %95, %91, %84, %79
  %97 = phi i1 [ true, %95 ], [ false, %79 ], [ true, %84 ], [ false, %91 ]
  %98 = call i32 @hci_update_random_address(ptr noundef %0, i1 noundef zeroext %80, i1 noundef zeroext %97, ptr noundef nonnull %5)
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %140, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(15) %101, i8 0, i32 11, i1 false)
  %102 = icmp eq ptr %12, null
  br i1 %102, label %110, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.adv_info, ptr %12, i32 0, i32 13
  %105 = load i32, ptr %104, align 4
  %106 = trunc i32 %105 to i16
  %107 = getelementptr inbounds %struct.adv_info, ptr %12, i32 0, i32 14
  %108 = load i32, ptr %107, align 4
  %109 = trunc i32 %108 to i16
  br label %115

110:                                              ; preds = %100
  %111 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 44
  %112 = load i16, ptr %111, align 4
  %113 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 45
  %114 = load i16, ptr %113, align 2
  br label %115

115:                                              ; preds = %110, %103
  %116 = phi i16 [ %106, %103 ], [ %112, %110 ]
  %117 = phi i16 [ %109, %103 ], [ %114, %110 ]
  br i1 %18, label %131, label %118

118:                                              ; preds = %115
  %119 = load i8, ptr %8, align 8
  %120 = tail call zeroext i1 @hci_adv_instance_is_scannable(ptr noundef %7, i8 noundef zeroext %119) #11
  %121 = select i1 %120, i8 2, i8 3
  %122 = getelementptr inbounds %struct.hci_cp_le_set_adv_param, ptr %4, i32 0, i32 2
  store i8 %121, ptr %122, align 2
  %123 = load volatile i32, ptr %67, align 4
  %124 = and i32 %123, 134217728
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %118
  %127 = load volatile i32, ptr %67, align 4
  %128 = and i32 %127, 268435456
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %126, %118
  br label %131

131:                                              ; preds = %130, %126, %115
  %132 = phi i16 [ 160, %130 ], [ %116, %126 ], [ %116, %115 ]
  %133 = phi i16 [ 240, %130 ], [ %117, %126 ], [ %117, %115 ]
  store i16 %132, ptr %4, align 2
  %134 = getelementptr inbounds %struct.hci_cp_le_set_adv_param, ptr %4, i32 0, i32 1
  store i16 %133, ptr %134, align 2
  %135 = load i8, ptr %5, align 1
  %136 = getelementptr inbounds %struct.hci_cp_le_set_adv_param, ptr %4, i32 0, i32 3
  store i8 %135, ptr %136, align 1
  %137 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 43
  %138 = load i8, ptr %137, align 1
  %139 = getelementptr inbounds %struct.hci_cp_le_set_adv_param, ptr %4, i32 0, i32 6
  store i8 %138, ptr %139, align 1
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8198, i32 noundef 15, ptr noundef nonnull %4, i8 noundef zeroext 0) #11
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8202, i32 noundef 1, ptr noundef nonnull %6, i8 noundef zeroext 0) #11
  br label %140

140:                                              ; preds = %131, %96, %61, %57, %53, %37, %32, %27
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %4) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_adv_instance_flags(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_find_adv_instance(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mgmt_get_connectable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__hci_req_update_scan_rsp_data(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = alloca %struct.anon.137, align 1
  %4 = alloca %struct.hci_cp_le_set_scan_rsp_data, align 1
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 206
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 8388608
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %47, label %10

10:                                               ; preds = %2
  %11 = getelementptr %struct.hci_dev, ptr %5, i32 0, i32 22, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = and i8 %12, 16
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %3) #11
  %16 = getelementptr inbounds %struct.anon.137, ptr %3, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(255) %3, i8 0, i64 255, i1 false)
  %17 = call zeroext i8 @eir_create_scan_rsp(ptr noundef %5, i8 noundef zeroext %1, ptr noundef %16) #11
  %18 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 212
  %19 = load i8, ptr %18, align 8
  %20 = zext i8 %17 to i32
  %21 = icmp eq i8 %19, %17
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 211
  %24 = call i32 @bcmp(ptr %16, ptr %23, i32 %20)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %22, %15
  %27 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 211
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %27, ptr align 1 %16, i32 %20, i1 false)
  store i8 %17, ptr %18, align 8
  store i8 %1, ptr %3, align 1
  %28 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_rsp_data, ptr %3, i32 0, i32 3
  store i8 %17, ptr %28, align 1
  %29 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_rsp_data, ptr %3, i32 0, i32 1
  store i8 3, ptr %29, align 1
  %30 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_rsp_data, ptr %3, i32 0, i32 2
  store i8 1, ptr %30, align 1
  %31 = add nuw nsw i32 %20, 4
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8248, i32 noundef %31, ptr noundef nonnull %3, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %3) #11
  br label %47

32:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %3) #11
  br label %47

33:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #11
  %34 = getelementptr inbounds %struct.hci_cp_le_set_scan_rsp_data, ptr %4, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %35 = call zeroext i8 @eir_create_scan_rsp(ptr noundef %5, i8 noundef zeroext %1, ptr noundef %34) #11
  %36 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 212
  %37 = load i8, ptr %36, align 8
  %38 = icmp eq i8 %37, %35
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = zext i8 %35 to i32
  %41 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 211
  %42 = call i32 @bcmp(ptr %34, ptr %41, i32 %40)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %39, %33
  %45 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 211
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(31) %45, ptr noundef align 1 dereferenceable(31) %34, i32 31, i1 false)
  store i8 %35, ptr %36, align 8
  store i8 %35, ptr %4, align 1
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8201, i32 noundef 32, ptr noundef nonnull %4, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #11
  br label %47

46:                                               ; preds = %39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #11
  br label %47

47:                                               ; preds = %46, %44, %32, %26, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @eir_create_scan_rsp(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__hci_req_update_adv_data(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = alloca %struct.anon.138, align 1
  %4 = alloca %struct.hci_cp_le_set_adv_data, align 1
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 206
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 8388608
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %47, label %10

10:                                               ; preds = %2
  %11 = getelementptr %struct.hci_dev, ptr %5, i32 0, i32 22, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = and i8 %12, 16
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %3) #11
  %16 = getelementptr inbounds %struct.anon.138, ptr %3, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(255) %3, i8 0, i64 255, i1 false)
  %17 = call zeroext i8 @eir_create_adv_data(ptr noundef %5, i8 noundef zeroext %1, ptr noundef %16) #11
  %18 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 210
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %17 to i32
  %21 = icmp eq i8 %19, %17
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 209
  %24 = call i32 @bcmp(ptr %16, ptr %23, i32 %20)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %22, %15
  %27 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 209
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %27, ptr align 1 %16, i32 %20, i1 false)
  store i8 %17, ptr %18, align 4
  %28 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_data, ptr %3, i32 0, i32 3
  store i8 %17, ptr %28, align 1
  store i8 %1, ptr %3, align 1
  %29 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_data, ptr %3, i32 0, i32 1
  store i8 3, ptr %29, align 1
  %30 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_data, ptr %3, i32 0, i32 2
  store i8 1, ptr %30, align 1
  %31 = add nuw nsw i32 %20, 4
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8247, i32 noundef %31, ptr noundef nonnull %3, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %3) #11
  br label %47

32:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %3) #11
  br label %47

33:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #11
  %34 = getelementptr inbounds %struct.hci_cp_le_set_adv_data, ptr %4, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %35 = call zeroext i8 @eir_create_adv_data(ptr noundef %5, i8 noundef zeroext %1, ptr noundef %34) #11
  %36 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 210
  %37 = load i8, ptr %36, align 4
  %38 = icmp eq i8 %37, %35
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = zext i8 %35 to i32
  %41 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 209
  %42 = call i32 @bcmp(ptr %34, ptr %41, i32 %40)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %39, %33
  %45 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 209
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(31) %45, ptr noundef align 1 dereferenceable(31) %34, i32 31, i1 false)
  store i8 %35, ptr %36, align 4
  store i8 %35, ptr %4, align 1
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8200, i32 noundef 32, ptr noundef nonnull %4, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #11
  br label %47

46:                                               ; preds = %39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #11
  br label %47

47:                                               ; preds = %46, %44, %32, %26, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @eir_create_adv_data(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_req_update_adv_data(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = alloca %struct.hci_request, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  %4 = getelementptr inbounds %struct.hci_request, ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds i8, ptr %3, i32 16
  store i32 0, ptr %5, align 4
  store ptr %4, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hci_request, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  %7 = getelementptr inbounds %struct.hci_request, ptr %3, i32 0, i32 1, i32 1
  store i32 0, ptr %7, align 4
  store ptr %0, ptr %3, align 4
  %8 = getelementptr inbounds %struct.hci_request, ptr %3, i32 0, i32 2
  store i32 0, ptr %8, align 4
  call void @__hci_req_update_adv_data(ptr noundef nonnull %3, i8 noundef zeroext %1)
  %9 = call fastcc i32 @req_run(ptr noundef nonnull %3, ptr noundef null, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_req_disable_address_resolution(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %struct.hci_request, align 4
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 0, ptr %3, align 1
  %4 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 256
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.hci_request, ptr %2, i32 0, i32 1
  %10 = getelementptr inbounds %struct.hci_request, ptr %2, i32 0, i32 1, i32 2
  store i32 0, ptr %10, align 4
  store ptr %9, ptr %9, align 4
  %11 = getelementptr inbounds %struct.hci_request, ptr %2, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  %12 = getelementptr inbounds %struct.hci_request, ptr %2, i32 0, i32 1, i32 1
  store i32 0, ptr %12, align 4
  store ptr %0, ptr %2, align 4
  %13 = getelementptr inbounds %struct.hci_request, ptr %2, i32 0, i32 2
  store i32 0, ptr %13, align 4
  call void @hci_req_add_ev(ptr noundef nonnull %2, i16 noundef zeroext 8237, i32 noundef 1, ptr noundef nonnull %3, i8 noundef zeroext 0) #11
  %14 = call fastcc i32 @req_run(ptr noundef nonnull %2, ptr noundef nonnull @enable_addr_resolution_complete, ptr noundef null) #11
  br label %15

15:                                               ; preds = %8, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @enable_addr_resolution_complete(ptr nocapture noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2) #7 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_req_reenable_advertising(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %struct.hci_request, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #11
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 16777216
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 213
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %32, label %11

11:                                               ; preds = %7, %1
  %12 = getelementptr inbounds %struct.hci_request, ptr %2, i32 0, i32 1
  %13 = getelementptr inbounds %struct.hci_request, ptr %2, i32 0, i32 1, i32 2
  store i32 0, ptr %13, align 4
  store ptr %12, ptr %12, align 4
  %14 = getelementptr inbounds %struct.hci_request, ptr %2, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  %15 = getelementptr inbounds %struct.hci_request, ptr %2, i32 0, i32 1, i32 1
  store i32 0, ptr %15, align 4
  store ptr %0, ptr %2, align 4
  %16 = getelementptr inbounds %struct.hci_request, ptr %2, i32 0, i32 2
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 215
  %18 = load i8, ptr %17, align 8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %11
  %21 = call i32 @__hci_req_schedule_adv_instance(ptr noundef nonnull %2, i8 noundef zeroext %18, i1 noundef zeroext true)
  br label %30

22:                                               ; preds = %11
  %23 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 22, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = and i8 %24, 16
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = call i32 @__hci_req_start_ext_adv(ptr noundef nonnull %2, i8 noundef zeroext 0)
  br label %30

29:                                               ; preds = %22
  call void @__hci_req_update_adv_data(ptr noundef nonnull %2, i8 noundef zeroext 0)
  call void @__hci_req_update_scan_rsp_data(ptr noundef nonnull %2, i8 noundef zeroext 0)
  call void @__hci_req_enable_advertising(ptr noundef nonnull %2)
  br label %30

30:                                               ; preds = %29, %27, %20
  %31 = call fastcc i32 @req_run(ptr noundef nonnull %2, ptr noundef nonnull @adv_enable_complete, ptr noundef null) #11
  br label %32

32:                                               ; preds = %30, %7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__hci_req_schedule_adv_instance(ptr noundef %0, i8 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 206
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 16777216
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %62

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 213
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %62, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 216
  %15 = load i16, ptr %14, align 2
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %62

17:                                               ; preds = %13
  %18 = tail call ptr @hci_find_adv_instance(ptr noundef %4, i8 noundef zeroext %1) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %62, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.adv_info, ptr %18, i32 0, i32 5
  %22 = load i16, ptr %21, align 4
  %23 = icmp eq i16 %22, 0
  %24 = getelementptr inbounds %struct.adv_info, ptr %18, i32 0, i32 7
  %25 = load i16, ptr %24, align 4
  br i1 %23, label %31, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.adv_info, ptr %18, i32 0, i32 6
  %28 = load i16, ptr %27, align 2
  %29 = call i16 @llvm.umin.i16(i16 %25, i16 %28)
  %30 = sub i16 %28, %29
  store i16 %30, ptr %27, align 2
  br label %31

31:                                               ; preds = %26, %20
  %32 = phi i16 [ %29, %26 ], [ %25, %20 ]
  %33 = getelementptr %struct.hci_dev, ptr %4, i32 0, i32 22, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = and i8 %34, 16
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  store i16 %32, ptr %14, align 2
  %38 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 139
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 217
  %41 = zext i16 %32 to i32
  %42 = mul nuw nsw i32 %41, 1000
  %43 = tail call i32 @__msecs_to_jiffies(i32 noundef %42) #11
  %44 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %39, ptr noundef %40, i32 noundef %43) #11
  br label %45

45:                                               ; preds = %37, %31
  br i1 %2, label %54, label %46

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 215
  %48 = load i8, ptr %47, align 8
  %49 = icmp eq i8 %48, %1
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load volatile i32, ptr %5, align 4
  %52 = and i32 %51, 8192
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %50, %46, %45
  %55 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 215
  store i8 %1, ptr %55, align 8
  %56 = load i8, ptr %33, align 1
  %57 = and i8 %56, 16
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = tail call i32 @__hci_req_start_ext_adv(ptr noundef %0, i8 noundef zeroext %1)
  br label %62

61:                                               ; preds = %54
  tail call void @__hci_req_update_adv_data(ptr noundef %0, i8 noundef zeroext %1)
  tail call void @__hci_req_update_scan_rsp_data(ptr noundef %0, i8 noundef zeroext %1)
  tail call void @__hci_req_enable_advertising(ptr noundef %0)
  br label %62

62:                                               ; preds = %61, %59, %50, %17, %13, %9, %3
  %63 = phi i32 [ -1, %9 ], [ -1, %3 ], [ -16, %13 ], [ -2, %17 ], [ 0, %50 ], [ 0, %61 ], [ 0, %59 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__hci_req_start_ext_adv(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = alloca [6 x i8], align 2
  %4 = alloca [6 x i8], align 1
  %5 = load ptr, ptr %0, align 4
  %6 = tail call ptr @hci_find_adv_instance(ptr noundef %5, i8 noundef zeroext %1) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.adv_info, ptr %6, i32 0, i32 2
  %10 = load i8, ptr %9, align 1, !range !13
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #11
  %14 = icmp eq i8 %1, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = tail call ptr @hci_find_adv_instance(ptr noundef %13, i8 noundef zeroext %1) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %15, %12
  %19 = getelementptr inbounds i8, ptr %4, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %19, i8 0, i32 3, i1 false) #11
  %20 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_enable, ptr %4, i32 0, i32 2
  %21 = icmp ne i8 %1, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_enable, ptr %4, i32 0, i32 1
  store i8 %22, ptr %23, align 1
  store i8 0, ptr %4, align 1
  store i8 %1, ptr %20, align 1
  %24 = select i1 %21, i32 6, i32 2
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8249, i32 noundef %24, ptr noundef nonnull %4, i8 noundef zeroext 0) #11
  br label %25

25:                                               ; preds = %18, %15
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #11
  br label %26

26:                                               ; preds = %25, %8, %2
  %27 = tail call i32 @__hci_req_setup_ext_adv_instance(ptr noundef %0, i8 noundef zeroext %1)
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %50, label %29

29:                                               ; preds = %26
  tail call void @__hci_req_update_scan_rsp_data(ptr noundef %0, i8 noundef zeroext %1)
  %30 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #11
  %31 = icmp eq i8 %1, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_enable, ptr %3, i32 0, i32 2
  store i16 257, ptr %3, align 2
  store i32 0, ptr %33, align 2
  br label %48

34:                                               ; preds = %29
  %35 = tail call ptr @hci_find_adv_instance(ptr noundef %30, i8 noundef zeroext %1) #11
  %36 = icmp eq ptr %35, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_enable, ptr %3, i32 0, i32 2
  store i16 257, ptr %3, align 2
  store i32 0, ptr %38, align 2
  store i8 %1, ptr %38, align 2
  %39 = getelementptr inbounds %struct.adv_info, ptr %35, i32 0, i32 7
  %40 = load i16, ptr %39, align 4
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.adv_info, ptr %35, i32 0, i32 5
  %44 = load i16, ptr %43, align 4
  %45 = mul i16 %44, 1000
  %46 = udiv i16 %45, 10
  %47 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_enable, ptr %3, i32 1, i32 1
  store i16 %46, ptr %47, align 1
  br label %48

48:                                               ; preds = %42, %37, %32
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8249, i32 noundef 6, ptr noundef nonnull %3, i8 noundef zeroext 0) #11
  br label %49

49:                                               ; preds = %48, %34
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #11
  br label %50

50:                                               ; preds = %49, %26
  %51 = phi i32 [ 0, %49 ], [ %27, %26 ]
  ret i32 %51
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @adv_enable_complete(ptr nocapture noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2) #7 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_get_random_address(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, ptr noundef readonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #1 {
  %7 = alloca %struct.bdaddr_t, align 1
  %8 = alloca %struct.bdaddr_t, align 1
  %9 = alloca %struct.bdaddr_t, align 1
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(6) %5, i8 0, i64 6, i1 false)
  br i1 %2, label %10, label %49

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 22
  %12 = load i8, ptr %11, align 2
  %13 = and i8 %12, 64
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 512
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %10
  br label %21

21:                                               ; preds = %20, %15
  %22 = phi i8 [ 1, %20 ], [ 3, %15 ]
  store i8 %22, ptr %4, align 1
  %23 = icmp eq ptr %3, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.adv_info, ptr %3, i32 0, i32 15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %7, i8 0, i64 6, i1 false)
  %26 = call i32 @bcmp(ptr noundef dereferenceable(6) %25, ptr noundef nonnull dereferenceable(6) %7, i32 6)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.adv_info, ptr %3, i32 0, i32 16
  %30 = load i8, ptr %29, align 2, !range !13
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %60, label %41

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 223
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %8, i8 0, i64 6, i1 false)
  %34 = call i32 @bcmp(ptr noundef dereferenceable(6) %33, ptr noundef nonnull dereferenceable(6) %8, i32 6)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, 1048576
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %60, label %41

41:                                               ; preds = %36, %32, %28, %24
  %42 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 220
  %43 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 223
  %44 = tail call i32 @smp_generate_rpa(ptr noundef %0, ptr noundef %42, ptr noundef %43) #11
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.1, ptr noundef %47) #11
  br label %60

48:                                               ; preds = %41
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %5, ptr noundef align 1 dereferenceable(6) %43, i32 6, i1 false) #11
  br label %60

49:                                               ; preds = %6
  br i1 %1, label %50, label %59

50:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %9) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %9, i8 0, i32 6, i1 false), !annotation !12
  %51 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 5
  %52 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 7
  br label %53

53:                                               ; preds = %53, %50
  call void @get_random_bytes(ptr noundef nonnull %9, i32 noundef 6) #11
  %54 = load i8, ptr %51, align 1
  %55 = and i8 %54, 63
  store i8 %55, ptr %51, align 1
  %56 = call i32 @bcmp(ptr noundef dereferenceable(6) %52, ptr noundef nonnull dereferenceable(6) %9, i32 6)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %53, label %58

58:                                               ; preds = %53
  store i8 1, ptr %4, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %5, ptr noundef nonnull align 1 dereferenceable(6) %9, i32 6, i1 false) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #11
  br label %60

59:                                               ; preds = %49
  store i8 0, ptr %4, align 1
  br label %60

60:                                               ; preds = %59, %58, %48, %46, %36, %28
  %61 = phi i32 [ %44, %46 ], [ 0, %48 ], [ 0, %58 ], [ 0, %59 ], [ 0, %28 ], [ 0, %36 ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_generate_rpa(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__hci_req_clear_ext_adv_sets(ptr noundef %0) local_unnamed_addr #1 {
  tail call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8253, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__hci_req_setup_ext_adv_instance(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = alloca %struct.hci_cp_le_set_ext_adv_params, align 1
  %4 = alloca %struct.bdaddr_t, align 1
  %5 = alloca i8, align 1
  %6 = alloca %struct.bdaddr_t, align 1
  %7 = alloca %struct.hci_cp_le_set_adv_set_rand_addr, align 1
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(25) %3, i8 0, i32 25, i1 false), !annotation !12
  %8 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i32 6, i1 false), !annotation !12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  store i8 0, ptr %5, align 1, !annotation !12
  %9 = icmp eq i8 %1, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = tail call ptr @hci_find_adv_instance(ptr noundef %8, i8 noundef zeroext %1) #11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %193, label %13

13:                                               ; preds = %10, %2
  %14 = phi ptr [ %11, %10 ], [ null, %2 ]
  %15 = tail call i32 @hci_adv_instance_flags(ptr noundef %8, i8 noundef zeroext %1) #11
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = tail call zeroext i1 @mgmt_get_connectable(ptr noundef %8) #11
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i1 [ true, %13 ], [ %19, %18 ]
  %22 = getelementptr inbounds %struct.hci_dev, ptr %8, i32 0, i32 183, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %69, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.hci_dev, ptr %8, i32 0, i32 183, i32 5
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %49, label %29

29:                                               ; preds = %25
  br i1 %21, label %35, label %30

30:                                               ; preds = %29
  %31 = getelementptr %struct.hci_dev, ptr %8, i32 0, i32 26, i32 2
  %32 = load i8, ptr %31, align 1
  %33 = and i8 %32, 16
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %193, label %47

35:                                               ; preds = %29
  %36 = getelementptr %struct.hci_dev, ptr %8, i32 0, i32 26, i32 4
  %37 = load i8, ptr %36, align 1
  %38 = and i8 %37, 64
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %193, label %40

40:                                               ; preds = %35
  %41 = getelementptr %struct.hci_dev, ptr %8, i32 0, i32 26, i32 2
  %42 = load i8, ptr %41, align 1
  %43 = and i8 %42, 32
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %193, label %45

45:                                               ; preds = %40
  %46 = icmp eq i32 %23, %27
  br i1 %46, label %69, label %60

47:                                               ; preds = %30
  %48 = icmp eq i32 %23, %27
  br i1 %48, label %69, label %56

49:                                               ; preds = %25
  br i1 %21, label %50, label %53

50:                                               ; preds = %49
  %51 = getelementptr %struct.hci_dev, ptr %8, i32 0, i32 26, i32 4
  %52 = load i8, ptr %51, align 1
  br label %60

53:                                               ; preds = %49
  %54 = getelementptr %struct.hci_dev, ptr %8, i32 0, i32 26, i32 2
  %55 = load i8, ptr %54, align 1
  br label %56

56:                                               ; preds = %53, %47
  %57 = phi i8 [ %55, %53 ], [ %32, %47 ]
  %58 = and i8 %57, 2
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %193, label %69

60:                                               ; preds = %50, %45
  %61 = phi i8 [ %52, %50 ], [ %37, %45 ]
  %62 = and i8 %61, 8
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %193, label %64

64:                                               ; preds = %60
  %65 = getelementptr %struct.hci_dev, ptr %8, i32 0, i32 26, i32 2
  %66 = load i8, ptr %65, align 1
  %67 = and i8 %66, 8
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %193, label %69

69:                                               ; preds = %64, %56, %47, %45, %20
  %70 = xor i1 %21, true
  %71 = getelementptr inbounds %struct.hci_dev, ptr %8, i32 0, i32 206
  %72 = load volatile i32, ptr %71, align 4
  %73 = and i32 %72, 262144
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %87, label %75

75:                                               ; preds = %69
  %76 = load volatile i32, ptr %71, align 4
  %77 = and i32 %76, 524288
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %75
  %80 = and i32 %15, 2
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = load volatile i32, ptr %71, align 4
  %84 = and i32 %83, 32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82, %79
  br label %87

87:                                               ; preds = %86, %82, %75, %69
  %88 = phi i1 [ true, %86 ], [ false, %69 ], [ true, %75 ], [ false, %82 ]
  %89 = call i32 @hci_get_random_address(ptr noundef %8, i1 noundef zeroext %70, i1 noundef zeroext %88, ptr noundef %14, ptr noundef nonnull %5, ptr noundef nonnull %4)
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %193, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds i8, ptr %3, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(25) %92, i8 0, i32 24, i1 false)
  %93 = icmp eq ptr %14, null
  br i1 %93, label %111, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.adv_info, ptr %14, i32 0, i32 13
  %96 = load i32, ptr %95, align 4
  %97 = trunc i32 %96 to i8
  %98 = lshr i32 %96, 8
  %99 = trunc i32 %98 to i8
  %100 = lshr i32 %96, 16
  %101 = trunc i32 %100 to i8
  %102 = getelementptr inbounds %struct.adv_info, ptr %14, i32 0, i32 14
  %103 = load i32, ptr %102, align 4
  %104 = trunc i32 %103 to i8
  %105 = lshr i32 %103, 8
  %106 = trunc i32 %105 to i8
  %107 = lshr i32 %103, 16
  %108 = trunc i32 %107 to i8
  %109 = getelementptr inbounds %struct.adv_info, ptr %14, i32 0, i32 12
  %110 = load i8, ptr %109, align 1
  br label %122

111:                                              ; preds = %91
  %112 = getelementptr inbounds %struct.hci_dev, ptr %8, i32 0, i32 44
  %113 = load i16, ptr %112, align 4
  %114 = trunc i16 %113 to i8
  %115 = lshr i16 %113, 8
  %116 = trunc i16 %115 to i8
  %117 = getelementptr inbounds %struct.hci_dev, ptr %8, i32 0, i32 45
  %118 = load i16, ptr %117, align 2
  %119 = trunc i16 %118 to i8
  %120 = lshr i16 %118, 8
  %121 = trunc i16 %120 to i8
  br label %122

122:                                              ; preds = %111, %94
  %123 = phi i8 [ %114, %111 ], [ %97, %94 ]
  %124 = phi i8 [ %116, %111 ], [ %99, %94 ]
  %125 = phi i8 [ 0, %111 ], [ %101, %94 ]
  %126 = phi i8 [ %119, %111 ], [ %104, %94 ]
  %127 = phi i8 [ %121, %111 ], [ %106, %94 ]
  %128 = phi i8 [ 0, %111 ], [ %108, %94 ]
  %129 = phi i8 [ 127, %111 ], [ %110, %94 ]
  %130 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %3, i32 0, i32 2
  store i8 %123, ptr %130, align 1
  %131 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %3, i32 0, i32 2, i32 1
  store i8 %124, ptr %131, align 1
  %132 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %3, i32 0, i32 2, i32 2
  store i8 %125, ptr %132, align 1
  %133 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %3, i32 0, i32 3
  store i8 %126, ptr %133, align 1
  %134 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %3, i32 0, i32 3, i32 1
  store i8 %127, ptr %134, align 1
  %135 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %3, i32 0, i32 3, i32 2
  store i8 %128, ptr %135, align 1
  %136 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %3, i32 0, i32 9
  store i8 %129, ptr %136, align 1
  %137 = and i32 %15, 896
  %138 = icmp eq i32 %137, 0
  br i1 %21, label %139, label %143

139:                                              ; preds = %122
  %140 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %3, i32 0, i32 1
  br i1 %138, label %142, label %141

141:                                              ; preds = %139
  store i16 1, ptr %140, align 1
  br label %156

142:                                              ; preds = %139
  store i16 19, ptr %140, align 1
  br label %156

143:                                              ; preds = %122
  %144 = tail call zeroext i1 @hci_adv_instance_is_scannable(ptr noundef %8, i8 noundef zeroext %1) #11
  %145 = xor i1 %144, true
  %146 = and i32 %15, 65536
  %147 = icmp eq i32 %146, 0
  %148 = select i1 %145, i1 %147, i1 false
  %149 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %3, i32 0, i32 1
  br i1 %148, label %153, label %150

150:                                              ; preds = %143
  br i1 %138, label %152, label %151

151:                                              ; preds = %150
  store i16 2, ptr %149, align 1
  br label %156

152:                                              ; preds = %150
  store i16 18, ptr %149, align 1
  br label %156

153:                                              ; preds = %143
  br i1 %138, label %155, label %154

154:                                              ; preds = %153
  store i16 0, ptr %149, align 1
  br label %156

155:                                              ; preds = %153
  store i16 16, ptr %149, align 1
  br label %156

156:                                              ; preds = %155, %154, %152, %151, %142, %141
  %157 = load i8, ptr %5, align 1
  %158 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %3, i32 0, i32 5
  store i8 %157, ptr %158, align 1
  %159 = getelementptr inbounds %struct.hci_dev, ptr %8, i32 0, i32 43
  %160 = load i8, ptr %159, align 1
  %161 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %3, i32 0, i32 4
  store i8 %160, ptr %161, align 1
  store i8 %1, ptr %3, align 1
  %162 = and i32 %15, 256
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %156
  %165 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %3, i32 0, i32 10
  store i8 1, ptr %165, align 1
  br label %172

166:                                              ; preds = %156
  %167 = and i32 %15, 512
  %168 = icmp eq i32 %167, 0
  %169 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %3, i32 0, i32 10
  br i1 %168, label %171, label %170

170:                                              ; preds = %166
  store i8 3, ptr %169, align 1
  br label %172

171:                                              ; preds = %166
  store i8 1, ptr %169, align 1
  br label %172

172:                                              ; preds = %171, %170, %164
  %173 = phi i8 [ 3, %170 ], [ 1, %171 ], [ 2, %164 ]
  %174 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %3, i32 0, i32 12
  store i8 %173, ptr %174, align 1
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8246, i32 noundef 25, ptr noundef nonnull %3, i8 noundef zeroext 0) #11
  %175 = and i8 %157, -3
  %176 = icmp eq i8 %175, 1
  br i1 %176, label %177, label %193

177:                                              ; preds = %172
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %6, i8 0, i64 6, i1 false)
  %178 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %4, ptr noundef nonnull dereferenceable(6) %6, i32 6)
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %193, label %180

180:                                              ; preds = %177
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %7) #11
  br i1 %93, label %185, label %181

181:                                              ; preds = %180
  %182 = getelementptr inbounds %struct.adv_info, ptr %14, i32 0, i32 15
  %183 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %4, ptr noundef dereferenceable(6) %182, i32 6)
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %192, label %190

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.hci_dev, ptr %8, i32 0, i32 10
  %187 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %4, ptr noundef dereferenceable(6) %186, i32 6)
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %185
  call fastcc void @set_random_addr(ptr noundef %0, ptr noundef nonnull %4)
  br label %190

190:                                              ; preds = %189, %181
  store i8 %1, ptr %7, align 1
  %191 = getelementptr inbounds %struct.hci_cp_le_set_adv_set_rand_addr, ptr %7, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %191, ptr noundef nonnull align 1 dereferenceable(6) %4, i32 6, i1 false) #11
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8245, i32 noundef 7, ptr noundef nonnull %7, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %7) #11
  br label %193

192:                                              ; preds = %185, %181
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %7) #11
  br label %193

193:                                              ; preds = %192, %190, %177, %172, %87, %64, %60, %56, %40, %35, %30, %10
  %194 = phi i32 [ 0, %192 ], [ -22, %10 ], [ %89, %87 ], [ 0, %190 ], [ 0, %172 ], [ 0, %177 ], [ -1, %30 ], [ -1, %40 ], [ -1, %35 ], [ -1, %56 ], [ -1, %64 ], [ -1, %60 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %3) #11
  ret i32 %194
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hci_adv_instance_is_scannable(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @set_random_addr(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 206
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 8192
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %32

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %29, label %12

12:                                               ; preds = %26, %8
  %13 = phi ptr [ %27, %26 ], [ %10, %8 ]
  %14 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 14
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, -128
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 12
  %19 = load i16, ptr %18, align 4
  %20 = icmp eq i16 %19, 5
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 47
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 2097152
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21, %17, %12
  %27 = load volatile ptr, ptr %13, align 4
  %28 = icmp eq ptr %27, %9
  br i1 %28, label %29, label %12

29:                                               ; preds = %26, %8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  br label %33

30:                                               ; preds = %21
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %31 = icmp eq ptr %13, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %30, %2
  tail call void @_set_bit(i32 noundef 20, ptr noundef %4) #11
  br label %34

33:                                               ; preds = %30, %29
  tail call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8197, i32 noundef 6, ptr noundef %1, i8 noundef zeroext 0) #11
  br label %34

34:                                               ; preds = %33, %32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__hci_req_enable_ext_advertising(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = alloca [6 x i8], align 2
  %4 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #11
  %5 = icmp eq i8 %1, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @hci_find_adv_instance(ptr noundef %4, i8 noundef zeroext %1) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %6, %2
  %10 = phi ptr [ %7, %6 ], [ null, %2 ]
  %11 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_enable, ptr %3, i32 0, i32 2
  store i16 257, ptr %3, align 2
  store i32 0, ptr %11, align 2
  store i8 %1, ptr %11, align 2
  %12 = icmp eq ptr %10, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.adv_info, ptr %10, i32 0, i32 7
  %15 = load i16, ptr %14, align 4
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.adv_info, ptr %10, i32 0, i32 5
  %19 = load i16, ptr %18, align 4
  %20 = mul i16 %19, 1000
  %21 = udiv i16 %20, 10
  %22 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_enable, ptr %3, i32 1, i32 1
  store i16 %21, ptr %22, align 1
  br label %23

23:                                               ; preds = %17, %13, %9
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8249, i32 noundef 6, ptr noundef nonnull %3, i8 noundef zeroext 0) #11
  br label %24

24:                                               ; preds = %23, %6
  %25 = phi i32 [ 0, %23 ], [ -22, %6 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #11
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__hci_req_remove_ext_adv_instance(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = alloca i8, align 1
  store i8 %1, ptr %3, align 1
  %4 = icmp eq i8 %1, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 4
  %7 = tail call ptr @hci_find_adv_instance(ptr noundef %6, i8 noundef zeroext %1) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5, %2
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8252, i32 noundef 1, ptr noundef nonnull %3, i8 noundef zeroext 0) #11
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi i32 [ 0, %9 ], [ -22, %5 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_req_clear_adv_instance(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #1 {
  %6 = icmp eq i8 %3, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 215
  %9 = load i8, ptr %8, align 8
  %10 = icmp eq i8 %9, %3
  br i1 %10, label %11, label %22

11:                                               ; preds = %7, %5
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 216
  %13 = load i16, ptr %12, align 2
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  store i16 0, ptr %12, align 2
  %16 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 217
  %17 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %16) #11
  br label %18

18:                                               ; preds = %15, %11
  br i1 %6, label %27, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 215
  %21 = load i8, ptr %20, align 8
  br label %22

22:                                               ; preds = %19, %7
  %23 = phi i8 [ %21, %19 ], [ %9, %7 ]
  %24 = icmp eq i8 %23, %3
  br i1 %24, label %25, label %46

25:                                               ; preds = %22
  %26 = tail call ptr @hci_get_next_instance(ptr noundef %0, i8 noundef zeroext %3) #11
  br label %46

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 213
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %71, label %31

31:                                               ; preds = %44, %27
  %32 = phi ptr [ %33, %44 ], [ %29, %27 ]
  %33 = load ptr, ptr %32, align 4
  br i1 %4, label %38, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.adv_info, ptr %32, i32 0, i32 5
  %36 = load i16, ptr %35, align 4
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %34, %31
  %39 = getelementptr inbounds %struct.adv_info, ptr %32, i32 0, i32 3
  %40 = load i8, ptr %39, align 2
  %41 = tail call i32 @hci_remove_adv_instance(ptr noundef %0, i8 noundef zeroext %40) #11
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  tail call void @mgmt_advertising_removed(ptr noundef %1, ptr noundef %0, i8 noundef zeroext %40) #11
  br label %44

44:                                               ; preds = %43, %38, %34
  %45 = icmp eq ptr %33, %28
  br i1 %45, label %71, label %31

46:                                               ; preds = %25, %22
  %47 = phi ptr [ null, %22 ], [ %26, %25 ]
  %48 = tail call ptr @hci_find_adv_instance(ptr noundef %0, i8 noundef zeroext %3) #11
  br i1 %4, label %59, label %49

49:                                               ; preds = %46
  %50 = icmp eq ptr %48, null
  br i1 %50, label %71, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.adv_info, ptr %48, i32 0, i32 5
  %53 = load i16, ptr %52, align 4
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %71, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.adv_info, ptr %48, i32 0, i32 6
  %57 = load i16, ptr %56, align 2
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %55, %46
  %60 = icmp eq ptr %47, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.adv_info, ptr %47, i32 0, i32 3
  %63 = load i8, ptr %62, align 2
  %64 = icmp eq i8 %63, %3
  %65 = select i1 %64, ptr null, ptr %47
  br label %66

66:                                               ; preds = %61, %59
  %67 = phi ptr [ %65, %61 ], [ null, %59 ]
  %68 = tail call i32 @hci_remove_adv_instance(ptr noundef %0, i8 noundef zeroext %3) #11
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  tail call void @mgmt_advertising_removed(ptr noundef %1, ptr noundef %0, i8 noundef zeroext %3) #11
  br label %71

71:                                               ; preds = %70, %66, %55, %51, %49, %44, %27
  %72 = phi ptr [ %67, %66 ], [ %67, %70 ], [ %47, %55 ], [ %47, %51 ], [ %47, %49 ], [ null, %27 ], [ null, %44 ]
  %73 = icmp eq ptr %2, null
  br i1 %73, label %99, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %76 = load volatile i32, ptr %75, align 4
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %99, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %81 = load volatile i32, ptr %80, align 4
  %82 = and i32 %81, 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %79
  %85 = load volatile i32, ptr %80, align 4
  %86 = and i32 %85, 16777216
  %87 = icmp ne i32 %86, 0
  %88 = icmp eq ptr %72, null
  %89 = select i1 %87, i1 true, i1 %88
  br i1 %89, label %99, label %90

90:                                               ; preds = %84
  %91 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 22, i32 1
  %92 = load i8, ptr %91, align 1
  %93 = and i8 %92, 16
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.adv_info, ptr %72, i32 0, i32 3
  %97 = load i8, ptr %96, align 2
  %98 = tail call i32 @__hci_req_schedule_adv_instance(ptr noundef nonnull %2, i8 noundef zeroext %97, i1 noundef zeroext false)
  br label %99

99:                                               ; preds = %95, %90, %84, %79, %74, %71
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_get_next_instance(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_remove_adv_instance(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_advertising_removed(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__hci_req_update_scan(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca i8, align 1
  %3 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #11
  %4 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 206
  %5 = getelementptr %struct.hci_dev, ptr %3, i32 0, i32 206, i32 1
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %55, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 3
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %55, label %14

14:                                               ; preds = %9
  %15 = load volatile i32, ptr %4, align 4
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %55

18:                                               ; preds = %14
  %19 = tail call zeroext i1 @mgmt_powering_down(ptr noundef %3) #11
  br i1 %19, label %55, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 178
  %22 = load i8, ptr %21, align 4, !range !13
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %20
  %25 = load volatile i32, ptr %4, align 4
  %26 = and i32 %25, 67108864
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = tail call fastcc zeroext i1 @disconnected_accept_list_entries(ptr noundef %3)
  %30 = select i1 %29, i8 2, i8 0
  br label %31

31:                                               ; preds = %28, %24
  %32 = phi i8 [ 2, %24 ], [ %30, %28 ]
  store i8 %32, ptr %2, align 1
  %33 = load volatile i32, ptr %4, align 4
  %34 = and i32 %33, 134217728
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = or i8 %32, 1
  store i8 %37, ptr %2, align 1
  br label %38

38:                                               ; preds = %36, %31
  %39 = phi i8 [ %37, %36 ], [ %32, %31 ]
  %40 = load volatile i32, ptr %10, align 4
  %41 = lshr i32 %40, 3
  %42 = and i32 %41, 1
  %43 = lshr i8 %39, 1
  %44 = and i8 %43, 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %38
  %48 = load volatile i32, ptr %10, align 4
  %49 = lshr i32 %48, 4
  %50 = and i32 %49, 1
  %51 = and i8 %39, 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %55, label %54

54:                                               ; preds = %47, %38
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 3098, i32 noundef 1, ptr noundef nonnull %2, i8 noundef zeroext 0) #11
  br label %55

55:                                               ; preds = %54, %47, %20, %18, %14, %9, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mgmt_powering_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @disconnected_accept_list_entries(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 186
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %33, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  br label %7

7:                                                ; preds = %30, %5
  %8 = phi ptr [ %3, %5 ], [ %31, %30 ]
  %9 = getelementptr inbounds %struct.bdaddr_list, ptr %8, i32 0, i32 1
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  %10 = load volatile ptr, ptr %6, align 4
  %11 = icmp eq ptr %10, %6
  br i1 %11, label %24, label %12

12:                                               ; preds = %21, %7
  %13 = phi ptr [ %22, %21 ], [ %10, %7 ]
  %14 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 14
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 2
  %19 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %18, ptr noundef dereferenceable(6) %9, i32 6) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17, %12
  %22 = load volatile ptr, ptr %13, align 4
  %23 = icmp eq ptr %22, %6
  br i1 %23, label %24, label %12

24:                                               ; preds = %21, %7
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  br label %33

25:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %26 = icmp eq ptr %13, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 12
  %29 = load i16, ptr %28, align 4
  switch i16 %29, label %33 [
    i16 1, label %30
    i16 7, label %30
  ]

30:                                               ; preds = %27, %27
  %31 = load ptr, ptr %8, align 4
  %32 = icmp eq ptr %31, %2
  br i1 %32, label %33, label %7

33:                                               ; preds = %30, %27, %25, %24, %1
  %34 = phi i1 [ true, %24 ], [ false, %1 ], [ true, %27 ], [ true, %25 ], [ false, %30 ]
  ret i1 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__hci_req_update_class(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca [3 x i8], align 1
  %3 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #11
  %4 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 3
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %52, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 206
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %52

13:                                               ; preds = %8
  %14 = getelementptr %struct.hci_dev, ptr %3, i32 0, i32 206, i32 1
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %52, label %18

18:                                               ; preds = %13
  %19 = load volatile i32, ptr %9, align 4
  %20 = and i32 %19, 64
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %52

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 19
  %24 = load i8, ptr %23, align 4
  store i8 %24, ptr %2, align 1
  %25 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 18
  %26 = load i8, ptr %25, align 1
  %27 = getelementptr inbounds [3 x i8], ptr %2, i32 0, i32 1
  store i8 %26, ptr %27, align 1
  %28 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 187
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %39, label %31

31:                                               ; preds = %31, %22
  %32 = phi ptr [ %37, %31 ], [ %29, %22 ]
  %33 = phi i8 [ %36, %31 ], [ 0, %22 ]
  %34 = getelementptr inbounds %struct.bt_uuid, ptr %32, i32 0, i32 3
  %35 = load i8, ptr %34, align 1
  %36 = or i8 %35, %33
  %37 = load ptr, ptr %32, align 4
  %38 = icmp eq ptr %37, %28
  br i1 %38, label %39, label %31

39:                                               ; preds = %31, %22
  %40 = phi i8 [ 0, %22 ], [ %36, %31 ]
  %41 = getelementptr inbounds [3 x i8], ptr %2, i32 0, i32 2
  store i8 %40, ptr %41, align 1
  %42 = load volatile i32, ptr %9, align 4
  %43 = and i32 %42, 268435456
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %39
  %46 = or i8 %26, 32
  store i8 %46, ptr %27, align 1
  br label %47

47:                                               ; preds = %45, %39
  %48 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 17
  %49 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %2, ptr noundef dereferenceable(3) %48, i32 3)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 3108, i32 noundef 3, ptr noundef nonnull %2, i8 noundef zeroext 0) #11
  br label %52

52:                                               ; preds = %51, %47, %18, %13, %8, %1
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__hci_abort_conn(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = alloca %struct.hci_cp_disconn_phy_link, align 2
  %5 = alloca %struct.hci_cp_disconnect, align 2
  %6 = alloca %struct.hci_cp_reject_conn_req, align 1
  %7 = alloca %struct.hci_cp_reject_sync_conn_req, align 1
  %8 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 12
  %9 = load i16, ptr %8, align 4
  switch i16 %9, label %49 [
    i16 1, label %10
    i16 7, label %10
    i16 5, label %24
    i16 6, label %40
  ]

10:                                               ; preds = %3, %3
  %11 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 14
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, -127
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  %15 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 11
  %16 = load i16, ptr %15, align 2
  %17 = trunc i16 %16 to i8
  store i8 %17, ptr %4, align 2
  %18 = getelementptr inbounds %struct.hci_cp_disconn_phy_link, ptr %4, i32 0, i32 1
  store i8 %2, ptr %18, align 1
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 1079, i32 noundef 2, ptr noundef nonnull %4, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  br label %23

19:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #11
  %20 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 11
  %21 = load i16, ptr %20, align 2
  store i16 %21, ptr %5, align 2
  %22 = getelementptr inbounds %struct.hci_cp_disconnect, ptr %5, i32 0, i32 1
  store i8 %2, ptr %22, align 2
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 1030, i32 noundef 3, ptr noundef nonnull %5, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #11
  br label %23

23:                                               ; preds = %19, %14
  store i16 8, ptr %8, align 4
  br label %50

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 14
  %26 = load i8, ptr %25, align 1
  switch i8 %26, label %50 [
    i8 -128, label %27
    i8 1, label %33
  ]

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 47
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 2097152
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %27
  tail call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8206, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0) #11
  br label %50

33:                                               ; preds = %24
  %34 = load ptr, ptr %0, align 4
  %35 = getelementptr inbounds %struct.hci_dev, ptr %34, i32 0, i32 28
  %36 = load i8, ptr %35, align 1
  %37 = icmp ult i8 %36, 2
  br i1 %37, label %50, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 2
  tail call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 1032, i32 noundef 6, ptr noundef %39, i8 noundef zeroext 0) #11
  br label %50

40:                                               ; preds = %3
  %41 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 14
  %42 = load i8, ptr %41, align 1
  switch i8 %42, label %50 [
    i8 1, label %43
    i8 0, label %46
    i8 2, label %46
  ]

43:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %6) #11
  %44 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %6, ptr noundef align 1 dereferenceable(6) %44, i32 6, i1 false) #11
  %45 = getelementptr inbounds %struct.hci_cp_reject_conn_req, ptr %6, i32 0, i32 1
  store i8 %2, ptr %45, align 1
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 1034, i32 noundef 7, ptr noundef nonnull %6, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %6) #11
  br label %50

46:                                               ; preds = %40, %40
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %7) #11
  %47 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %7, ptr noundef align 1 dereferenceable(6) %47, i32 6, i1 false) #11
  %48 = getelementptr inbounds %struct.hci_cp_reject_sync_conn_req, ptr %7, i32 0, i32 1
  store i8 13, ptr %48, align 1
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 1066, i32 noundef 7, ptr noundef nonnull %7, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %7) #11
  br label %50

49:                                               ; preds = %3
  store i16 9, ptr %8, align 4
  br label %50

50:                                               ; preds = %49, %46, %43, %40, %38, %33, %32, %27, %24, %23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_abort_conn(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = alloca %struct.hci_request, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  %4 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 65
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hci_request, ptr %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.hci_request, ptr %3, i32 0, i32 1, i32 2
  store i32 0, ptr %7, align 4
  store ptr %6, ptr %6, align 4
  %8 = getelementptr inbounds %struct.hci_request, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  %9 = getelementptr inbounds %struct.hci_request, ptr %3, i32 0, i32 1, i32 1
  store i32 0, ptr %9, align 4
  store ptr %5, ptr %3, align 4
  %10 = getelementptr inbounds %struct.hci_request, ptr %3, i32 0, i32 2
  store i32 0, ptr %10, align 4
  call void @__hci_abort_conn(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext %1)
  %11 = call fastcc i32 @req_run(ptr noundef nonnull %3, ptr noundef nonnull @abort_conn_complete, ptr noundef null) #11
  switch i32 %11, label %12 [
    i32 -61, label %15
    i32 0, label %15
  ]

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr inbounds %struct.hci_dev, ptr %13, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.2, ptr noundef %14, i32 noundef %11) #11
  br label %15

15:                                               ; preds = %12, %2, %2
  %16 = phi i32 [ %11, %12 ], [ 0, %2 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @abort_conn_complete(ptr nocapture noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2) #7 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @hci_req_stop_discovery(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %struct.hci_cp_le_set_ext_scan_enable, align 1
  %3 = alloca %struct.hci_cp_le_set_scan_enable, align 2
  %4 = alloca i8, align 1
  %5 = alloca %struct.hci_cp_le_set_ext_scan_enable, align 1
  %6 = alloca %struct.hci_cp_le_set_scan_enable, align 2
  %7 = alloca i8, align 1
  %8 = alloca %struct.hci_cp_remote_name_req_cancel, align 1
  %9 = alloca %struct.bdaddr_t, align 1
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.hci_dev, ptr %10, i32 0, i32 170
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8) #11
  %12 = getelementptr inbounds %struct.hci_dev, ptr %10, i32 0, i32 170, i32 1
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %47 [
    i32 2, label %14
    i32 4, label %14
  ]

14:                                               ; preds = %1, %1
  %15 = getelementptr inbounds %struct.hci_dev, ptr %10, i32 0, i32 3
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 128
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  tail call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 1026, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0) #11
  br label %20

20:                                               ; preds = %19, %14
  %21 = getelementptr inbounds %struct.hci_dev, ptr %10, i32 0, i32 206
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 16384
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %69, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.hci_dev, ptr %10, i32 0, i32 157
  %27 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %26) #11
  %28 = getelementptr inbounds %struct.hci_dev, ptr %10, i32 0, i32 158
  %29 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %28) #11
  %30 = load ptr, ptr %0, align 4
  %31 = getelementptr inbounds %struct.hci_dev, ptr %30, i32 0, i32 178
  %32 = load i8, ptr %31, align 4, !range !13
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %69

34:                                               ; preds = %25
  %35 = getelementptr %struct.hci_dev, ptr %30, i32 0, i32 27, i32 37
  %36 = load i8, ptr %35, align 1
  %37 = and i8 %36, 96
  %38 = icmp eq i8 %37, 96
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %5, i8 0, i64 6, i1 false) #11
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8258, i32 noundef 6, ptr noundef nonnull %5, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #11
  br label %41

40:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #11
  store i16 0, ptr %6, align 2
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8204, i32 noundef 2, ptr noundef nonnull %6, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #11
  br label %41

41:                                               ; preds = %40, %39
  %42 = getelementptr %struct.hci_dev, ptr %30, i32 0, i32 206, i32 1
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %43, 256
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %69, label %46

46:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #11
  store i8 0, ptr %7, align 1
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8237, i32 noundef 1, ptr noundef nonnull %7, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  br label %69

47:                                               ; preds = %1
  %48 = getelementptr inbounds %struct.hci_dev, ptr %10, i32 0, i32 206
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %49, 16384
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %69, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.hci_dev, ptr %10, i32 0, i32 178
  %54 = load i8, ptr %53, align 4, !range !13
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = getelementptr %struct.hci_dev, ptr %10, i32 0, i32 27, i32 37
  %58 = load i8, ptr %57, align 1
  %59 = and i8 %58, 96
  %60 = icmp eq i8 %59, 96
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i64 6, i1 false) #11
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8258, i32 noundef 6, ptr noundef nonnull %2, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #11
  br label %63

62:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #11
  store i16 0, ptr %3, align 2
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8204, i32 noundef 2, ptr noundef nonnull %3, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  br label %63

63:                                               ; preds = %62, %61
  %64 = getelementptr %struct.hci_dev, ptr %10, i32 0, i32 206, i32 1
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %65, 256
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 0, ptr %4, align 1
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8237, i32 noundef 1, ptr noundef nonnull %4, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  br label %69

69:                                               ; preds = %68, %63, %52, %47, %46, %41, %25, %20
  %70 = phi i1 [ false, %47 ], [ true, %20 ], [ true, %25 ], [ true, %41 ], [ true, %46 ], [ true, %52 ], [ true, %63 ], [ true, %68 ]
  %71 = load i32, ptr %11, align 4
  %72 = icmp eq i32 %71, 6
  br i1 %72, label %82, label %73

73:                                               ; preds = %69
  %74 = load i32, ptr %12, align 4
  %75 = add i32 %74, -3
  %76 = icmp ult i32 %75, 2
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %9, i8 0, i64 6, i1 false)
  %78 = call ptr @hci_inquiry_cache_lookup_resolve(ptr noundef %10, ptr noundef nonnull %9, i32 noundef 2) #11
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.inquiry_entry, ptr %78, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %8, ptr noundef align 1 dereferenceable(6) %81, i32 6, i1 false) #11
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 1050, i32 noundef 6, ptr noundef nonnull %8, i8 noundef zeroext 0) #11
  br label %82

82:                                               ; preds = %80, %77, %73, %69
  %83 = phi i1 [ %70, %69 ], [ %70, %77 ], [ true, %80 ], [ %70, %73 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8) #11
  ret i1 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_inquiry_cache_lookup_resolve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_req_configure_datapath(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.hci_request, align 4
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 0, ptr %4, align 1, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store ptr null, ptr %5, align 4
  %6 = getelementptr inbounds %struct.hci_request, ptr %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.hci_request, ptr %3, i32 0, i32 1, i32 2
  store i32 0, ptr %7, align 4
  store ptr %6, ptr %6, align 4
  %8 = getelementptr inbounds %struct.hci_request, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  %9 = getelementptr inbounds %struct.hci_request, ptr %3, i32 0, i32 1, i32 1
  store i32 0, ptr %9, align 4
  store ptr %0, ptr %3, align 4
  %10 = getelementptr inbounds %struct.hci_request, ptr %3, i32 0, i32 2
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 241
  %12 = load ptr, ptr %11, align 4
  %13 = call i32 %12(ptr noundef %0, i8 noundef zeroext 2, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %38, label %15

15:                                               ; preds = %2
  %16 = load i8, ptr %4, align 1
  %17 = zext i8 %16 to i32
  %18 = add nuw nsw i32 %17, 3
  %19 = call noalias align 64 ptr @__kmalloc(i32 noundef %18, i32 noundef 3520) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %38, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 240
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.hci_op_configure_data_path, ptr %19, i32 0, i32 1
  %25 = call i32 %23(ptr noundef %0, ptr noundef %24) #11
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %21
  %28 = load i8, ptr %4, align 1
  %29 = getelementptr inbounds %struct.hci_op_configure_data_path, ptr %19, i32 0, i32 2
  store i8 %28, ptr %29, align 2
  %30 = getelementptr inbounds %struct.hci_op_configure_data_path, ptr %19, i32 0, i32 3
  %31 = load ptr, ptr %5, align 4
  %32 = zext i8 %28 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %30, ptr align 1 %31, i32 %32, i1 false)
  store i8 0, ptr %19, align 64
  %33 = add nuw nsw i32 %32, 3
  call void @hci_req_add_ev(ptr noundef nonnull %3, i16 noundef zeroext 3203, i32 noundef %33, ptr noundef nonnull %19, i8 noundef zeroext 0) #11
  store i8 1, ptr %19, align 64
  %34 = load i8, ptr %4, align 1
  %35 = zext i8 %34 to i32
  %36 = add nuw nsw i32 %35, 3
  call void @hci_req_add_ev(ptr noundef nonnull %3, i16 noundef zeroext 3203, i32 noundef %36, ptr noundef nonnull %19, i8 noundef zeroext 0) #11
  %37 = call fastcc i32 @req_run(ptr noundef nonnull %3, ptr noundef nonnull @config_data_path_complete, ptr noundef null) #11
  br label %38

38:                                               ; preds = %27, %21, %15, %2
  %39 = phi i32 [ %13, %2 ], [ %25, %21 ], [ %37, %27 ], [ -12, %15 ]
  %40 = phi ptr [ null, %2 ], [ %19, %21 ], [ %19, %27 ], [ null, %15 ]
  call void @kfree(ptr noundef %40) #11
  %41 = load ptr, ptr %5, align 4
  call void @kfree(ptr noundef %41) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret i32 %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @config_data_path_complete(ptr nocapture noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2) #7 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__hci_req_hci_power_on(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call i32 @smp_register(ptr noundef %0) #11
  %3 = tail call i32 @__hci_req_sync(ptr noundef %0, ptr noundef nonnull @powered_update_hci, i32 noundef 0, i32 noundef 200, ptr noundef null)
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @powered_update_hci(ptr noundef %0, i32 noundef %1) #1 {
  %3 = alloca %struct.hci_cp_write_local_name, align 1
  %4 = alloca %struct.hci_cp_write_page_scan_activity, align 4
  %5 = alloca i8, align 1
  %6 = alloca %struct.hci_cp_write_page_scan_activity, align 4
  %7 = alloca i8, align 1
  %8 = alloca [6 x i8], align 2
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca %struct.hci_cp_write_le_host_supported, align 2
  %13 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #11
  store i8 0, ptr %9, align 1, !annotation !12
  %14 = getelementptr inbounds %struct.hci_dev, ptr %13, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %14) #11
  %15 = getelementptr inbounds %struct.hci_dev, ptr %13, i32 0, i32 206
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 32768
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %2
  %20 = getelementptr %struct.hci_dev, ptr %13, i32 0, i32 21, i32 1
  %21 = load i8, ptr %20, align 2
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #11
  store i8 1, ptr %10, align 1
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 3158, i32 noundef 1, ptr noundef nonnull %10, i8 noundef zeroext 0) #11
  %25 = getelementptr %struct.hci_dev, ptr %13, i32 0, i32 21, i32 2, i32 1
  %26 = load i8, ptr %25, align 1
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %24
  %30 = load volatile i32, ptr %15, align 4
  %31 = and i32 %30, 65536
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = load i8, ptr %20, align 2
  %35 = and i8 %34, 8
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #11
  store i8 1, ptr %11, align 1
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 3194, i32 noundef 1, ptr noundef nonnull %11, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #11
  br label %38

38:                                               ; preds = %37, %33, %29, %24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #11
  br label %39

39:                                               ; preds = %38, %19, %2
  %40 = load volatile i32, ptr %15, align 4
  %41 = and i32 %40, 8388608
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %39
  %44 = getelementptr %struct.hci_dev, ptr %13, i32 0, i32 21, i32 0, i32 4
  %45 = load i8, ptr %44, align 2
  %46 = and i8 %45, 32
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #11
  store i16 1, ptr %12, align 2, !annotation !12
  %49 = getelementptr %struct.hci_dev, ptr %13, i32 0, i32 21, i32 1
  %50 = load i8, ptr %49, align 2
  %51 = and i8 %50, 6
  %52 = icmp eq i8 %51, 2
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 3181, i32 noundef 2, ptr noundef nonnull %12, i8 noundef zeroext 0) #11
  br label %54

54:                                               ; preds = %53, %48
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #11
  br label %55

55:                                               ; preds = %54, %43, %39
  %56 = load volatile i32, ptr %15, align 4
  %57 = and i32 %56, 8388608
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %98, label %59

59:                                               ; preds = %55
  %60 = load volatile i32, ptr %15, align 4
  %61 = and i32 %60, 16777216
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.hci_dev, ptr %13, i32 0, i32 213
  %65 = load volatile ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, %64
  br i1 %66, label %67, label %91

67:                                               ; preds = %63, %59
  %68 = getelementptr %struct.hci_dev, ptr %13, i32 0, i32 22, i32 1
  %69 = load i8, ptr %68, align 1
  %70 = and i8 %69, 16
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = tail call i32 @__hci_req_setup_ext_adv_instance(ptr noundef %0, i8 noundef zeroext 0)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %76, label %77

75:                                               ; preds = %67
  tail call void @__hci_req_update_adv_data(ptr noundef %0, i8 noundef zeroext 0)
  br label %76

76:                                               ; preds = %75, %72
  tail call void @__hci_req_update_scan_rsp_data(ptr noundef %0, i8 noundef zeroext 0)
  br label %77

77:                                               ; preds = %76, %72
  %78 = phi i32 [ %73, %72 ], [ 0, %76 ]
  %79 = load volatile i32, ptr %15, align 4
  %80 = and i32 %79, 16777216
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %98, label %82

82:                                               ; preds = %77
  %83 = load i8, ptr %68, align 1
  %84 = and i8 %83, 16
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  tail call void @__hci_req_enable_advertising(ptr noundef %0)
  br label %98

87:                                               ; preds = %82
  %88 = icmp eq i32 %78, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8) #11
  %90 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_enable, ptr %8, i32 0, i32 2
  store i16 257, ptr %8, align 2
  store i32 0, ptr %90, align 2
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8249, i32 noundef 6, ptr noundef nonnull %8, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8) #11
  br label %98

91:                                               ; preds = %63
  %92 = load volatile ptr, ptr %64, align 4
  %93 = icmp eq ptr %92, %64
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.adv_info, ptr %92, i32 0, i32 3
  %96 = load i8, ptr %95, align 2
  %97 = tail call i32 @__hci_req_schedule_adv_instance(ptr noundef %0, i8 noundef zeroext %96, i1 noundef zeroext true)
  br label %98

98:                                               ; preds = %94, %91, %89, %87, %86, %77, %55
  %99 = load volatile i32, ptr %15, align 4
  %100 = lshr i32 %99, 29
  %101 = and i32 %100, 1
  %102 = trunc i32 %101 to i8
  store i8 %102, ptr %9, align 1
  %103 = getelementptr inbounds %struct.hci_dev, ptr %13, i32 0, i32 3
  %104 = load volatile i32, ptr %103, align 4
  %105 = lshr i32 %104, 5
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %101, %106
  br i1 %107, label %109, label %108

108:                                              ; preds = %98
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 3104, i32 noundef 1, ptr noundef nonnull %9, i8 noundef zeroext 0) #11
  br label %109

109:                                              ; preds = %108, %98
  %110 = getelementptr %struct.hci_dev, ptr %13, i32 0, i32 21, i32 0, i32 4
  %111 = load i8, ptr %110, align 2
  %112 = and i8 %111, 32
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %179

114:                                              ; preds = %109
  %115 = load volatile i32, ptr %15, align 4
  %116 = icmp sgt i32 %115, -1
  %117 = load ptr, ptr %0, align 4
  br i1 %116, label %145, label %118

118:                                              ; preds = %114
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #11
  %119 = getelementptr %struct.hci_dev, ptr %117, i32 0, i32 206, i32 1
  %120 = load volatile i32, ptr %119, align 4
  %121 = and i32 %120, 1
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %144, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.hci_dev, ptr %117, i32 0, i32 28
  %125 = load i8, ptr %124, align 1
  %126 = icmp ult i8 %125, 2
  br i1 %126, label %144, label %127

127:                                              ; preds = %123
  store i8 1, ptr %7, align 1
  store i16 256, ptr %6, align 4
  %128 = getelementptr inbounds %struct.hci_dev, ptr %117, i32 0, i32 88
  %129 = load i16, ptr %128, align 2
  %130 = getelementptr inbounds %struct.hci_cp_write_page_scan_activity, ptr %6, i32 0, i32 1
  store i16 %129, ptr %130, align 2
  %131 = getelementptr inbounds %struct.hci_dev, ptr %117, i32 0, i32 40
  %132 = load i16, ptr %131, align 2
  %133 = icmp eq i16 %132, 256
  br i1 %133, label %134, label %138

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.hci_dev, ptr %117, i32 0, i32 41
  %136 = load i16, ptr %135, align 8
  %137 = icmp eq i16 %136, %129
  br i1 %137, label %139, label %138

138:                                              ; preds = %134, %127
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 3100, i32 noundef 4, ptr noundef nonnull %6, i8 noundef zeroext 0) #11
  br label %139

139:                                              ; preds = %138, %134
  %140 = getelementptr inbounds %struct.hci_dev, ptr %117, i32 0, i32 42
  %141 = load i8, ptr %140, align 2
  %142 = icmp eq i8 %141, 1
  br i1 %142, label %144, label %143

143:                                              ; preds = %139
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 3143, i32 noundef 1, ptr noundef nonnull %7, i8 noundef zeroext 0) #11
  br label %144

144:                                              ; preds = %143, %139, %123, %118
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  br label %176

145:                                              ; preds = %114
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  %146 = getelementptr %struct.hci_dev, ptr %117, i32 0, i32 206, i32 1
  %147 = load volatile i32, ptr %146, align 4
  %148 = and i32 %147, 1
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %175, label %150

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.hci_dev, ptr %117, i32 0, i32 28
  %152 = load i8, ptr %151, align 1
  %153 = icmp ult i8 %152, 2
  br i1 %153, label %175, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.hci_dev, ptr %117, i32 0, i32 86
  %156 = load i8, ptr %155, align 2
  store i8 %156, ptr %5, align 1
  %157 = getelementptr inbounds %struct.hci_dev, ptr %117, i32 0, i32 87
  %158 = load i16, ptr %157, align 8
  store i16 %158, ptr %4, align 4
  %159 = getelementptr inbounds %struct.hci_dev, ptr %117, i32 0, i32 88
  %160 = load i16, ptr %159, align 2
  %161 = getelementptr inbounds %struct.hci_cp_write_page_scan_activity, ptr %4, i32 0, i32 1
  store i16 %160, ptr %161, align 2
  %162 = getelementptr inbounds %struct.hci_dev, ptr %117, i32 0, i32 40
  %163 = load i16, ptr %162, align 2
  %164 = icmp eq i16 %163, %158
  br i1 %164, label %165, label %169

165:                                              ; preds = %154
  %166 = getelementptr inbounds %struct.hci_dev, ptr %117, i32 0, i32 41
  %167 = load i16, ptr %166, align 8
  %168 = icmp eq i16 %167, %160
  br i1 %168, label %170, label %169

169:                                              ; preds = %165, %154
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 3100, i32 noundef 4, ptr noundef nonnull %4, i8 noundef zeroext 0) #11
  br label %170

170:                                              ; preds = %169, %165
  %171 = getelementptr inbounds %struct.hci_dev, ptr %117, i32 0, i32 42
  %172 = load i8, ptr %171, align 2
  %173 = icmp eq i8 %172, %156
  br i1 %173, label %175, label %174

174:                                              ; preds = %170
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 3143, i32 noundef 1, ptr noundef nonnull %5, i8 noundef zeroext 0) #11
  br label %175

175:                                              ; preds = %174, %170, %150, %145
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %176

176:                                              ; preds = %175, %144
  tail call void @__hci_req_update_scan(ptr noundef %0)
  tail call void @__hci_req_update_class(ptr noundef %0)
  %177 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 248, ptr nonnull %3) #11
  %178 = getelementptr inbounds %struct.hci_dev, ptr %177, i32 0, i32 13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(248) %3, ptr noundef align 1 dereferenceable(248) %178, i32 248, i1 false) #11
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 3091, i32 noundef 248, ptr noundef nonnull %3, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 248, ptr nonnull %3) #11
  tail call void @__hci_req_update_eir(ptr noundef %0)
  br label %179

179:                                              ; preds = %176, %109
  tail call void @mutex_unlock(ptr noundef %14) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_request_setup(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 155
  store i32 -32, ptr %2, align 8
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 155, i32 1
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 155, i32 1, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 155, i32 2
  store ptr @discov_update, ptr %5, align 4
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 156
  store i32 -32, ptr %6, align 8
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 156, i32 1
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 156, i32 1, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 156, i32 2
  store ptr @scan_update_work, ptr %9, align 4
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 148
  store i32 -32, ptr %10, align 8
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 148, i32 0, i32 1
  store volatile ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 148, i32 0, i32 1, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 148, i32 0, i32 2
  store ptr @discov_off, ptr %13, align 4
  %14 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 148, i32 1
  tail call void @init_timer_key(ptr noundef %14, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #11
  %15 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 157
  store i32 -32, ptr %15, align 8
  %16 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 157, i32 0, i32 1
  store volatile ptr %16, ptr %16, align 4
  %17 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 157, i32 0, i32 1, i32 1
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 157, i32 0, i32 2
  store ptr @le_scan_disable_work, ptr %18, align 4
  %19 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 157, i32 1
  tail call void @init_timer_key(ptr noundef %19, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #11
  %20 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 158
  store i32 -32, ptr %20, align 4
  %21 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 158, i32 0, i32 1
  store volatile ptr %21, ptr %21, align 4
  %22 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 158, i32 0, i32 1, i32 1
  store ptr %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 158, i32 0, i32 2
  store ptr @le_scan_restart_work, ptr %23, align 4
  %24 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 158, i32 1
  tail call void @init_timer_key(ptr noundef %24, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #11
  %25 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 217
  store i32 -32, ptr %25, align 4
  %26 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 217, i32 0, i32 1
  store volatile ptr %26, ptr %26, align 4
  %27 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 217, i32 0, i32 1, i32 1
  store ptr %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 217, i32 0, i32 2
  store ptr @adv_timeout_expire, ptr %28, align 4
  %29 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 217, i32 1
  tail call void @init_timer_key(ptr noundef %29, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #11
  %30 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 225
  store i32 -32, ptr %30, align 4
  %31 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 225, i32 0, i32 1
  store volatile ptr %31, ptr %31, align 4
  %32 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 225, i32 0, i32 1, i32 1
  store ptr %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 225, i32 0, i32 2
  store ptr @interleave_scan_work, ptr %33, align 4
  %34 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 225, i32 1
  tail call void @init_timer_key(ptr noundef %34, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @discov_update(ptr noundef %0) #1 {
  %2 = alloca i8, align 1
  %3 = getelementptr i8, ptr %0, i32 -2000
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #11
  store i8 0, ptr %2, align 1
  %4 = getelementptr i8, ptr %0, i32 228
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %109 [
    i32 1, label %6
    i32 4, label %95
  ]

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 224
  %8 = load i32, ptr %7, align 8
  switch i32 %8, label %66 [
    i32 1, label %9
    i32 7, label %23
    i32 6, label %55
  ]

9:                                                ; preds = %6
  %10 = getelementptr i8, ptr %0, i32 1060
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 128
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %90

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %0, i32 172
  tail call void @mutex_lock(ptr noundef %15) #11
  %16 = getelementptr i8, ptr %0, i32 -1964
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = call i32 @__hci_req_sync(ptr noundef %3, ptr noundef nonnull @bredr_inquiry, i32 noundef 8, i32 noundef 200, ptr noundef nonnull %2) #11
  br label %22

22:                                               ; preds = %20, %14
  call void @mutex_unlock(ptr noundef %15) #11
  br label %90

23:                                               ; preds = %6
  %24 = getelementptr i8, ptr %0, i32 -440
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 1024
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %23
  %29 = getelementptr i8, ptr %0, i32 -1270
  %30 = load i16, ptr %29, align 2
  %31 = getelementptr i8, ptr %0, i32 172
  tail call void @mutex_lock(ptr noundef %31) #11
  %32 = getelementptr i8, ptr %0, i32 -1964
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %67, label %36

36:                                               ; preds = %28
  %37 = zext i16 %30 to i32
  %38 = shl nuw nsw i32 %37, 1
  %39 = call i32 @__hci_req_sync(ptr noundef %3, ptr noundef nonnull @interleaved_discov, i32 noundef %38, i32 noundef 200, ptr noundef nonnull %2) #11
  br label %67

40:                                               ; preds = %23
  %41 = getelementptr i8, ptr %0, i32 -1236
  %42 = load i16, ptr %41, align 4
  %43 = zext i16 %42 to i32
  %44 = tail call i32 @__msecs_to_jiffies(i32 noundef %43) #11
  %45 = getelementptr i8, ptr %0, i32 -1270
  %46 = load i16, ptr %45, align 2
  %47 = getelementptr i8, ptr %0, i32 172
  tail call void @mutex_lock(ptr noundef %47) #11
  %48 = getelementptr i8, ptr %0, i32 -1964
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %40
  %53 = zext i16 %46 to i32
  %54 = call i32 @__hci_req_sync(ptr noundef %3, ptr noundef nonnull @active_scan, i32 noundef %53, i32 noundef 200, ptr noundef nonnull %2) #11
  br label %67

55:                                               ; preds = %6
  %56 = getelementptr i8, ptr %0, i32 -1270
  %57 = load i16, ptr %56, align 2
  %58 = getelementptr i8, ptr %0, i32 172
  tail call void @mutex_lock(ptr noundef %58) #11
  %59 = getelementptr i8, ptr %0, i32 -1964
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %55
  %64 = zext i16 %57 to i32
  %65 = call i32 @__hci_req_sync(ptr noundef %3, ptr noundef nonnull @active_scan, i32 noundef %64, i32 noundef 200, ptr noundef nonnull %2) #11
  br label %67

66:                                               ; preds = %6
  store i8 31, ptr %2, align 1
  br label %90

67:                                               ; preds = %63, %55, %52, %40, %36, %28
  %68 = phi ptr [ %31, %28 ], [ %31, %36 ], [ %47, %40 ], [ %47, %52 ], [ %58, %55 ], [ %58, %63 ]
  %69 = phi i32 [ 1024, %28 ], [ 1024, %36 ], [ %44, %40 ], [ %44, %52 ], [ 1024, %55 ], [ 1024, %63 ]
  call void @mutex_unlock(ptr noundef %68) #11
  %70 = load i8, ptr %2, align 1
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %67
  %73 = getelementptr i8, ptr %0, i32 -440
  %74 = load volatile i32, ptr %73, align 4
  %75 = and i32 %74, 512
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %72
  %78 = getelementptr i8, ptr %0, i32 305
  %79 = load i8, ptr %78, align 1, !range !13
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load volatile i32, ptr @jiffies, align 64
  %83 = getelementptr i8, ptr %0, i32 316
  store i32 %82, ptr %83, align 4
  %84 = getelementptr i8, ptr %0, i32 320
  store i32 %69, ptr %84, align 8
  br label %85

85:                                               ; preds = %81, %77, %72
  %86 = getelementptr i8, ptr %0, i32 -368
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr i8, ptr %0, i32 32
  %89 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %87, ptr noundef %88, i32 noundef %69) #11
  br label %90

90:                                               ; preds = %85, %67, %66, %22, %9
  %91 = load i8, ptr %2, align 1
  call void @mgmt_start_discovery_complete(ptr noundef %3, i8 noundef zeroext %91) #11
  %92 = load i8, ptr %2, align 1
  %93 = icmp eq i8 %92, 0
  %94 = select i1 %93, i32 2, i32 0
  br label %107

95:                                               ; preds = %1
  %96 = getelementptr i8, ptr %0, i32 172
  tail call void @mutex_lock(ptr noundef %96) #11
  %97 = getelementptr i8, ptr %0, i32 -1964
  %98 = load volatile i32, ptr %97, align 4
  %99 = and i32 %98, 1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %95
  %102 = call i32 @__hci_req_sync(ptr noundef %3, ptr noundef nonnull @stop_discovery, i32 noundef 0, i32 noundef 200, ptr noundef nonnull %2) #11
  br label %103

103:                                              ; preds = %101, %95
  call void @mutex_unlock(ptr noundef %96) #11
  %104 = load i8, ptr %2, align 1
  call void @mgmt_stop_discovery_complete(ptr noundef %3, i8 noundef zeroext %104) #11
  %105 = load i8, ptr %2, align 1
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %103, %90
  %108 = phi i32 [ %94, %90 ], [ 0, %103 ]
  call void @hci_discovery_set_state(ptr noundef %3, i32 noundef %108) #11
  br label %109

109:                                              ; preds = %107, %103, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scan_update_work(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 156
  tail call void @mutex_lock(ptr noundef %2) #11
  %3 = getelementptr i8, ptr %0, i32 -1980
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -2016
  %9 = tail call i32 @__hci_req_sync(ptr noundef %8, ptr noundef nonnull @update_scan, i32 noundef 0, i32 noundef 200, ptr noundef null) #11
  br label %10

10:                                               ; preds = %7, %1
  tail call void @mutex_unlock(ptr noundef %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @discov_off(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -1776
  %3 = getelementptr i8, ptr %0, i32 -1768
  tail call void @mutex_lock(ptr noundef %3) #11
  %4 = getelementptr i8, ptr %0, i32 1284
  tail call void @_clear_bit(i32 noundef 28, ptr noundef %4) #11
  tail call void @_clear_bit(i32 noundef 27, ptr noundef %4) #11
  %5 = getelementptr i8, ptr %0, i32 -4
  store i16 0, ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef %3) #11
  %6 = getelementptr i8, ptr %0, i32 396
  tail call void @mutex_lock(ptr noundef %6) #11
  %7 = getelementptr i8, ptr %0, i32 -1740
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = tail call i32 @__hci_req_sync(ptr noundef %2, ptr noundef nonnull @discoverable_update, i32 noundef 0, i32 noundef 200, ptr noundef null) #11
  br label %13

13:                                               ; preds = %11, %1
  tail call void @mutex_unlock(ptr noundef %6) #11
  %14 = tail call i32 @mgmt_new_settings(ptr noundef %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @le_scan_disable_work(ptr noundef %0) #1 {
  %2 = alloca i8, align 1
  %3 = getelementptr i8, ptr %0, i32 -2032
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #11
  store i8 0, ptr %2, align 1, !annotation !12
  %4 = getelementptr i8, ptr %0, i32 1028
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 16384
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %55, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 44
  %10 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %9) #11
  %11 = getelementptr i8, ptr %0, i32 140
  tail call void @mutex_lock(ptr noundef %11) #11
  %12 = getelementptr i8, ptr %0, i32 -1996
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %8
  %17 = call i32 @__hci_req_sync(ptr noundef %3, ptr noundef nonnull @le_scan_disable, i32 noundef 0, i32 noundef 200, ptr noundef nonnull %2) #11
  br label %18

18:                                               ; preds = %16, %8
  call void @mutex_unlock(ptr noundef %11) #11
  %19 = load i8, ptr %2, align 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = getelementptr i8, ptr %0, i32 -2004
  %23 = zext i8 %19 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.3, ptr noundef %22, i32 noundef %23) #11
  br label %55

24:                                               ; preds = %18
  %25 = getelementptr i8, ptr %0, i32 192
  %26 = getelementptr i8, ptr %0, i32 284
  store i32 0, ptr %26, align 4
  %27 = load i32, ptr %25, align 8
  switch i32 %27, label %55 [
    i32 6, label %53
    i32 7, label %28
  ]

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %0, i32 -472
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 1024
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = load volatile i32, ptr %12, align 4
  %35 = and i32 %34, 128
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %33
  %38 = getelementptr i8, ptr %0, i32 196
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 3
  br i1 %40, label %55, label %53

41:                                               ; preds = %28
  call void @mutex_lock(ptr noundef %11) #11
  %42 = load volatile i32, ptr %12, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = call i32 @__hci_req_sync(ptr noundef %3, ptr noundef nonnull @bredr_inquiry, i32 noundef 4, i32 noundef 200, ptr noundef nonnull %2) #11
  br label %47

47:                                               ; preds = %45, %41
  call void @mutex_unlock(ptr noundef %11) #11
  %48 = load i8, ptr %2, align 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = getelementptr i8, ptr %0, i32 -2004
  %52 = zext i8 %48 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.4, ptr noundef %51, i32 noundef %52) #11
  br label %53

53:                                               ; preds = %50, %37, %24
  %54 = getelementptr i8, ptr %0, i32 -2024
  call void @mutex_lock(ptr noundef %54) #11
  call void @hci_discovery_set_state(ptr noundef %3, i32 noundef 0) #11
  call void @mutex_unlock(ptr noundef %54) #11
  br label %55

55:                                               ; preds = %53, %47, %37, %33, %24, %21, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @le_scan_restart_work(ptr noundef %0) #1 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #11
  store i8 0, ptr %2, align 1, !annotation !12
  %3 = getelementptr i8, ptr %0, i32 96
  tail call void @mutex_lock(ptr noundef %3) #11
  %4 = getelementptr i8, ptr %0, i32 -2040
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 -2076
  %10 = call i32 @__hci_req_sync(ptr noundef %9, ptr noundef nonnull @le_scan_restart, i32 noundef 0, i32 noundef 200, ptr noundef nonnull %2) #11
  br label %11

11:                                               ; preds = %8, %1
  call void @mutex_unlock(ptr noundef %3) #11
  %12 = load i8, ptr %2, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr i8, ptr %0, i32 -2048
  %16 = zext i8 %12 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.5, ptr noundef %15, i32 noundef %16) #11
  br label %46

17:                                               ; preds = %11
  %18 = getelementptr i8, ptr %0, i32 -2068
  call void @mutex_lock(ptr noundef %18) #11
  %19 = getelementptr i8, ptr %0, i32 -516
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 512
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %45, label %23

23:                                               ; preds = %17
  %24 = getelementptr i8, ptr %0, i32 240
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %0, i32 244
  %29 = load i32, ptr %28, align 8
  %30 = load volatile i32, ptr @jiffies, align 64
  %31 = sub i32 %30, %25
  %32 = icmp ugt i32 %31, %29
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = icmp ult i32 %30, %25
  %35 = xor i32 %25, -1
  %36 = add i32 %30, %35
  %37 = select i1 %34, i32 %36, i32 %31
  %38 = sub i32 %29, %37
  br label %39

39:                                               ; preds = %33, %27
  %40 = phi i32 [ %38, %33 ], [ 0, %27 ]
  %41 = getelementptr i8, ptr %0, i32 -444
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr i8, ptr %0, i32 -44
  %44 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %42, ptr noundef %43, i32 noundef %40) #11
  br label %45

45:                                               ; preds = %39, %23, %17
  call void @mutex_unlock(ptr noundef %18) #11
  br label %46

46:                                               ; preds = %45, %14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @adv_timeout_expire(ptr noundef %0) #1 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca i8, align 1
  %4 = alloca %struct.hci_request, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !12
  %5 = getelementptr i8, ptr %0, i32 -3588
  tail call void @mutex_lock(ptr noundef %5) #11
  %6 = getelementptr i8, ptr %0, i32 -2
  store i16 0, ptr %6, align 2
  %7 = getelementptr i8, ptr %0, i32 -4
  %8 = load i8, ptr %7, align 8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 -3596
  %12 = getelementptr inbounds %struct.hci_request, ptr %4, i32 0, i32 1
  %13 = getelementptr inbounds %struct.hci_request, ptr %4, i32 0, i32 1, i32 2
  store i32 0, ptr %13, align 4
  store ptr %12, ptr %12, align 4
  %14 = getelementptr inbounds %struct.hci_request, ptr %4, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  %15 = getelementptr inbounds %struct.hci_request, ptr %4, i32 0, i32 1, i32 1
  store i32 0, ptr %15, align 4
  store ptr %11, ptr %4, align 4
  %16 = getelementptr inbounds %struct.hci_request, ptr %4, i32 0, i32 2
  store i32 0, ptr %16, align 4
  call void @hci_req_clear_adv_instance(ptr noundef %11, ptr noundef null, ptr noundef nonnull %4, i8 noundef zeroext %8, i1 noundef zeroext false)
  %17 = getelementptr i8, ptr %0, i32 -16
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %20, label %28

20:                                               ; preds = %10
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr %struct.hci_dev, ptr %21, i32 0, i32 22, i32 1
  %23 = load i8, ptr %22, align 1
  %24 = and i8 %23, 16
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i64 6, i1 false) #11
  call void @hci_req_add_ev(ptr noundef nonnull %4, i16 noundef zeroext 8249, i32 noundef 2, ptr noundef nonnull %2, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #11
  br label %28

27:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 0, ptr %3, align 1
  call void @hci_req_add_ev(ptr noundef nonnull %4, i16 noundef zeroext 8202, i32 noundef 1, ptr noundef nonnull %3, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  br label %28

28:                                               ; preds = %27, %26, %10
  %29 = call fastcc i32 @req_run(ptr noundef nonnull %4, ptr noundef null, ptr noundef null) #11
  br label %30

30:                                               ; preds = %28, %1
  call void @mutex_unlock(ptr noundef %5) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @interleave_scan_work(ptr noundef %0) #1 {
  %2 = alloca i8, align 1
  %3 = getelementptr i8, ptr %0, i32 -3740
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #11
  store i8 0, ptr %2, align 1, !annotation !12
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load i32, ptr %4, align 8
  switch i32 %5, label %10 [
    i32 2, label %6
    i32 1, label %8
  ]

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -2956
  br label %12

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 -2954
  br label %12

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 -3712
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.6, ptr noundef %11) #11
  br label %31

12:                                               ; preds = %8, %6
  %13 = phi ptr [ %9, %8 ], [ %7, %6 ]
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = tail call i32 @__msecs_to_jiffies(i32 noundef %15) #11
  %17 = getelementptr i8, ptr %0, i32 -1568
  tail call void @mutex_lock(ptr noundef %17) #11
  %18 = getelementptr i8, ptr %0, i32 -3704
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %12
  %23 = call i32 @__hci_req_sync(ptr noundef %3, ptr noundef nonnull @hci_req_add_le_interleaved_scan, i32 noundef 0, i32 noundef 200, ptr noundef nonnull %2) #11
  br label %24

24:                                               ; preds = %22, %12
  call void @mutex_unlock(ptr noundef %17) #11
  %25 = load i32, ptr %4, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = getelementptr i8, ptr %0, i32 -2108
  %29 = load ptr, ptr %28, align 8
  %30 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %29, ptr noundef %0, i32 noundef %16) #11
  br label %31

31:                                               ; preds = %27, %24, %10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_request_cancel_all(ptr noundef %0) local_unnamed_addr #1 {
  tail call void @__hci_cmd_sync_cancel(ptr noundef %0, i32 noundef 19) #11
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 155
  %3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %2) #11
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 156
  %5 = tail call zeroext i1 @cancel_work_sync(ptr noundef %4) #11
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 148
  %7 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %6) #11
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 157
  %9 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %8) #11
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 158
  %11 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %10) #11
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 216
  %13 = load i16, ptr %12, align 2
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 217
  %17 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %16) #11
  store i16 0, ptr %12, align 2
  br label %18

18:                                               ; preds = %15, %1
  %19 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 225
  %20 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %19) #11
  %21 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 224
  store i32 0, ptr %21, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__hci_cmd_sync_cancel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_get_adv_monitor_offload_ext(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_pend_le_action_lookup(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_find_irk_by_addr(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @add_to_accept_list(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i1 noundef zeroext %3) unnamed_addr #1 {
  %5 = alloca %struct.hci_cp_le_add_to_accept_list, align 1
  %6 = alloca %struct.hci_cp_le_add_to_resolv_list, align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %5) #11
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 192
  %9 = getelementptr inbounds %struct.hci_conn_params, ptr %1, i32 0, i32 2
  %10 = getelementptr inbounds %struct.hci_conn_params, ptr %1, i32 0, i32 3
  %11 = load i8, ptr %10, align 2
  %12 = tail call ptr @hci_bdaddr_list_lookup(ptr noundef %8, ptr noundef %9, i8 noundef zeroext %11) #11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %71

14:                                               ; preds = %4
  %15 = load i8, ptr %2, align 1
  %16 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 23
  %17 = load i8, ptr %16, align 2
  %18 = icmp ult i8 %15, %17
  br i1 %18, label %19, label %71

19:                                               ; preds = %14
  br i1 %3, label %29, label %20

20:                                               ; preds = %19
  %21 = getelementptr %struct.hci_dev, ptr %7, i32 0, i32 206, i32 1
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 512
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i8, ptr %10, align 2
  %27 = tail call ptr @hci_find_irk_by_addr(ptr noundef %7, ptr noundef %9, i8 noundef zeroext %26) #11
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %71

29:                                               ; preds = %25, %20, %19
  %30 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 179
  %31 = load i8, ptr %30, align 1, !range !13
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.hci_conn_params, ptr %1, i32 0, i32 11
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %71, label %38

38:                                               ; preds = %33, %29
  %39 = load i8, ptr %2, align 1
  %40 = add i8 %39, 1
  store i8 %40, ptr %2, align 1
  %41 = load i8, ptr %10, align 2
  store i8 %41, ptr %5, align 1
  %42 = getelementptr inbounds %struct.hci_cp_le_add_to_accept_list, ptr %5, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %42, ptr noundef align 1 dereferenceable(6) %9, i32 6, i1 false) #11
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8209, i32 noundef 7, ptr noundef nonnull %5, i8 noundef zeroext 0) #11
  %43 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 22
  %44 = load i8, ptr %43, align 2
  %45 = and i8 %44, 64
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %71, label %47

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 206
  %49 = getelementptr %struct.hci_dev, ptr %7, i32 0, i32 206, i32 1
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %50, 512
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %71, label %53

53:                                               ; preds = %47
  %54 = load i8, ptr %10, align 2
  %55 = tail call ptr @hci_find_irk_by_addr(ptr noundef %7, ptr noundef %9, i8 noundef zeroext %54) #11
  %56 = icmp eq ptr %55, null
  br i1 %56, label %71, label %57

57:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 39, ptr nonnull %6) #11
  %58 = getelementptr inbounds i8, ptr %6, i32 23
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(39) %58, i8 0, i32 16, i1 false), !annotation !12
  %59 = load i8, ptr %10, align 2
  store i8 %59, ptr %6, align 1
  %60 = getelementptr inbounds %struct.hci_cp_le_add_to_resolv_list, ptr %6, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %60, ptr noundef align 1 dereferenceable(6) %9, i32 6, i1 false) #11
  %61 = getelementptr inbounds %struct.hci_cp_le_add_to_resolv_list, ptr %6, i32 0, i32 2
  %62 = getelementptr inbounds %struct.smp_irk, ptr %55, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %61, ptr noundef align 1 dereferenceable(16) %62, i32 16, i1 false)
  %63 = load volatile i32, ptr %48, align 4
  %64 = and i32 %63, 262144
  %65 = icmp eq i32 %64, 0
  %66 = getelementptr inbounds %struct.hci_cp_le_add_to_resolv_list, ptr %6, i32 0, i32 3
  br i1 %65, label %69, label %67

67:                                               ; preds = %57
  %68 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 220
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %66, ptr noundef align 8 dereferenceable(16) %68, i32 16, i1 false)
  br label %70

69:                                               ; preds = %57
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(16) %66, i8 0, i32 16, i1 false)
  br label %70

70:                                               ; preds = %69, %67
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8231, i32 noundef 39, ptr noundef nonnull %6, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 39, ptr nonnull %6) #11
  br label %71

71:                                               ; preds = %70, %53, %47, %38, %33, %25, %14, %4
  %72 = phi i32 [ 0, %4 ], [ -1, %14 ], [ -1, %25 ], [ 0, %33 ], [ 0, %53 ], [ 0, %70 ], [ 0, %47 ], [ 0, %38 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %5) #11
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_bdaddr_list_lookup(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_tagged(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_start_discovery_complete(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_discovery_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stop_discovery(ptr noundef %0, i32 noundef %1) #1 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %4) #11
  %5 = tail call zeroext i1 @hci_req_stop_discovery(ptr noundef %0)
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %7) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_stop_discovery_complete(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bredr_inquiry(ptr noundef %0, i32 noundef %1) #1 {
  %3 = alloca %struct.hci_cp_inquiry, align 1
  %4 = trunc i32 %1 to i8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %3) #11
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 3
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 128
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %11) #11
  %12 = load ptr, ptr %0, align 4
  tail call void @hci_inquiry_cache_flush(ptr noundef %12) #11
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr inbounds %struct.hci_dev, ptr %13, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %14) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %3, i8 0, i32 5, i1 false)
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr inbounds %struct.hci_dev, ptr %15, i32 0, i32 170, i32 14
  %17 = load i8, ptr %16, align 2, !range !13
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 1 dereferenceable(3) @__const.bredr_inquiry.liac, i32 3, i1 false)
  br label %21

20:                                               ; preds = %10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 1 dereferenceable(3) @__const.bredr_inquiry.giac, i32 3, i1 false)
  br label %21

21:                                               ; preds = %20, %19
  %22 = getelementptr inbounds %struct.hci_cp_inquiry, ptr %3, i32 0, i32 1
  store i8 %4, ptr %22, align 1
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 1025, i32 noundef 5, ptr noundef nonnull %3, i8 noundef zeroext 0) #11
  br label %23

23:                                               ; preds = %21, %2
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %3) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @interleaved_discov(ptr noundef %0, i32 noundef %1) #1 {
  %3 = alloca %struct.hci_cp_inquiry, align 1
  %4 = tail call i32 @active_scan(ptr noundef %0, i32 noundef %1)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %3) #11
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 3
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 128
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %11) #11
  %12 = load ptr, ptr %0, align 4
  tail call void @hci_inquiry_cache_flush(ptr noundef %12) #11
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr inbounds %struct.hci_dev, ptr %13, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %14) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %3, i8 0, i32 5, i1 false) #11
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr inbounds %struct.hci_dev, ptr %15, i32 0, i32 170, i32 14
  %17 = load i8, ptr %16, align 2, !range !13
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 1 dereferenceable(3) @__const.bredr_inquiry.liac, i32 3, i1 false) #11
  br label %21

20:                                               ; preds = %10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 1 dereferenceable(3) @__const.bredr_inquiry.giac, i32 3, i1 false) #11
  br label %21

21:                                               ; preds = %20, %19
  %22 = getelementptr inbounds %struct.hci_cp_inquiry, ptr %3, i32 0, i32 1
  store i8 8, ptr %22, align 1
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 1025, i32 noundef 5, ptr noundef nonnull %3, i8 noundef zeroext 0) #11
  br label %23

23:                                               ; preds = %21, %2
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %3) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @active_scan(ptr noundef %0, i32 noundef %1) #1 {
  %3 = alloca %struct.hci_cp_le_set_ext_scan_enable, align 1
  %4 = alloca %struct.hci_cp_le_set_scan_enable, align 2
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  store i8 0, ptr %6, align 1, !annotation !12
  %8 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 206
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 16384
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 178
  %14 = load i8, ptr %13, align 4, !range !13
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = getelementptr %struct.hci_dev, ptr %7, i32 0, i32 27, i32 37
  %18 = load i8, ptr %17, align 1
  %19 = and i8 %18, 96
  %20 = icmp eq i8 %19, 96
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i64 6, i1 false) #11
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8258, i32 noundef 6, ptr noundef nonnull %3, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #11
  br label %23

22:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  store i16 0, ptr %4, align 2
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8204, i32 noundef 2, ptr noundef nonnull %4, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  br label %23

23:                                               ; preds = %22, %21
  %24 = getelementptr %struct.hci_dev, ptr %7, i32 0, i32 206, i32 1
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 256
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  store i8 0, ptr %5, align 1
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8237, i32 noundef 1, ptr noundef nonnull %5, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  br label %29

29:                                               ; preds = %28, %23, %12
  %30 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 225
  %31 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %30) #11
  %32 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 224
  store i32 0, ptr %32, align 8
  br label %33

33:                                               ; preds = %29, %2
  %34 = load volatile i32, ptr %8, align 4
  %35 = and i32 %34, 262144
  %36 = icmp ne i32 %35, 0
  %37 = call i32 @hci_update_random_address(ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext %36, ptr noundef nonnull %6)
  %38 = icmp slt i32 %37, 0
  %39 = load i8, ptr %6, align 1
  %40 = select i1 %38, i8 0, i8 %39
  %41 = tail call zeroext i1 @hci_is_adv_monitoring(ptr noundef %7) #11
  %42 = xor i1 %41, true
  %43 = trunc i32 %1 to i16
  %44 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 52
  %45 = load i16, ptr %44, align 4
  tail call fastcc void @hci_req_start_scan(ptr noundef %0, i8 noundef zeroext 1, i16 noundef zeroext %43, i16 noundef zeroext %45, i8 noundef zeroext %40, i8 noundef zeroext 0, i1 noundef zeroext %42, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_inquiry_cache_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @update_scan(ptr noundef %0, i32 noundef %1) #1 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %4) #11
  tail call void @__hci_req_update_scan(ptr noundef %0)
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %6) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @discoverable_update(ptr noundef %0, i32 noundef %1) #1 {
  %3 = alloca %struct.hci_cp_write_current_iac_lap, align 1
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 206
  %7 = getelementptr %struct.hci_dev, ptr %4, i32 0, i32 206, i32 1
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %39, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %3, i8 0, i32 7, i1 false) #11, !annotation !12
  %13 = getelementptr inbounds %struct.hci_dev, ptr %12, i32 0, i32 206
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 134217728
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %38, label %17

17:                                               ; preds = %11
  %18 = load volatile i32, ptr %13, align 4
  %19 = and i32 %18, 268435456
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hci_dev, ptr %12, i32 0, i32 34
  %23 = load i8, ptr %22, align 4
  %24 = tail call i8 @llvm.umin.i8(i8 %23, i8 2) #11
  store i8 %24, ptr %3, align 1
  %25 = getelementptr inbounds %struct.hci_cp_write_current_iac_lap, ptr %3, i32 0, i32 1, i32 3
  store i8 51, ptr %25, align 1
  %26 = getelementptr inbounds %struct.hci_cp_write_current_iac_lap, ptr %3, i32 0, i32 1, i32 4
  store i8 -117, ptr %26, align 1
  %27 = getelementptr inbounds %struct.hci_cp_write_current_iac_lap, ptr %3, i32 0, i32 1, i32 5
  store i8 -98, ptr %27, align 1
  %28 = mul nuw nsw i8 %24, 3
  %29 = add nuw nsw i8 %28, 1
  %30 = zext i8 %29 to i32
  br label %32

31:                                               ; preds = %17
  store i8 1, ptr %3, align 1
  br label %32

32:                                               ; preds = %31, %21
  %33 = phi i32 [ 4, %31 ], [ %30, %21 ]
  %34 = phi i8 [ 51, %31 ], [ 0, %21 ]
  %35 = getelementptr inbounds %struct.hci_cp_write_current_iac_lap, ptr %3, i32 0, i32 1
  store i8 %34, ptr %35, align 1
  %36 = getelementptr inbounds %struct.hci_cp_write_current_iac_lap, ptr %3, i32 0, i32 1, i32 1
  store i8 -117, ptr %36, align 1
  %37 = getelementptr inbounds %struct.hci_cp_write_current_iac_lap, ptr %3, i32 0, i32 1, i32 2
  store i8 -98, ptr %37, align 1
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 3130, i32 noundef %33, ptr noundef nonnull %3, i8 noundef zeroext 0) #11
  br label %38

38:                                               ; preds = %32, %11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #11
  tail call void @__hci_req_update_scan(ptr noundef %0)
  tail call void @__hci_req_update_class(ptr noundef %0)
  br label %39

39:                                               ; preds = %38, %2
  %40 = load volatile i32, ptr %6, align 4
  %41 = and i32 %40, 16777216
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %39
  tail call void @__hci_req_update_adv_data(ptr noundef %0, i8 noundef zeroext 0)
  %44 = load volatile i32, ptr %6, align 4
  %45 = and i32 %44, 524288
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %43
  %48 = getelementptr %struct.hci_dev, ptr %4, i32 0, i32 22, i32 1
  %49 = load i8, ptr %48, align 1
  %50 = and i8 %49, 16
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = tail call i32 @__hci_req_start_ext_adv(ptr noundef %0, i8 noundef zeroext 0)
  br label %55

54:                                               ; preds = %47
  tail call void @__hci_req_enable_advertising(ptr noundef %0)
  br label %55

55:                                               ; preds = %54, %52, %43, %39
  tail call void @mutex_unlock(ptr noundef %5) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgmt_new_settings(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @le_scan_disable(ptr noundef %0, i32 noundef %1) #1 {
  %3 = alloca %struct.hci_cp_le_set_ext_scan_enable, align 1
  %4 = alloca %struct.hci_cp_le_set_scan_enable, align 2
  %5 = alloca i8, align 1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 178
  %8 = load i8, ptr %7, align 4, !range !13
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = getelementptr %struct.hci_dev, ptr %6, i32 0, i32 27, i32 37
  %12 = load i8, ptr %11, align 1
  %13 = and i8 %12, 96
  %14 = icmp eq i8 %13, 96
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i64 6, i1 false) #11
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8258, i32 noundef 6, ptr noundef nonnull %3, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #11
  br label %17

16:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  store i16 0, ptr %4, align 2
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8204, i32 noundef 2, ptr noundef nonnull %4, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  br label %17

17:                                               ; preds = %16, %15
  %18 = getelementptr %struct.hci_dev, ptr %6, i32 0, i32 206, i32 1
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 256
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  store i8 0, ptr %5, align 1
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8237, i32 noundef 1, ptr noundef nonnull %5, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  br label %23

23:                                               ; preds = %22, %17, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @le_scan_restart(ptr noundef %0, i32 noundef %1) #1 {
  %3 = alloca %struct.hci_cp_le_set_ext_scan_enable, align 1
  %4 = alloca %struct.hci_cp_le_set_scan_enable, align 2
  %5 = alloca i8, align 1
  %6 = alloca %struct.hci_cp_le_set_ext_scan_enable, align 1
  %7 = alloca %struct.hci_cp_le_set_scan_enable, align 2
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.hci_dev, ptr %8, i32 0, i32 206
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 16384
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.hci_dev, ptr %8, i32 0, i32 178
  %15 = load i8, ptr %14, align 4, !range !13
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %13
  %18 = getelementptr %struct.hci_dev, ptr %8, i32 0, i32 27, i32 37
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 96
  %21 = icmp eq i8 %20, 96
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i64 6, i1 false) #11
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8258, i32 noundef 6, ptr noundef nonnull %3, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #11
  br label %24

23:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  store i16 0, ptr %4, align 2
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8204, i32 noundef 2, ptr noundef nonnull %4, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  br label %24

24:                                               ; preds = %23, %22
  %25 = getelementptr %struct.hci_dev, ptr %8, i32 0, i32 206, i32 1
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 256
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  store i8 0, ptr %5, align 1
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8237, i32 noundef 1, ptr noundef nonnull %5, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  br label %30

30:                                               ; preds = %29, %24
  %31 = load i8, ptr %18, align 1
  %32 = and i8 %31, 96
  %33 = icmp eq i8 %32, 96
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #11
  %35 = getelementptr inbounds i8, ptr %6, i32 2
  store i32 0, ptr %35, align 1
  store i8 1, ptr %6, align 1
  %36 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_enable, ptr %6, i32 0, i32 1
  store i8 1, ptr %36, align 1
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8258, i32 noundef 6, ptr noundef nonnull %6, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #11
  br label %38

37:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #11
  store i16 257, ptr %7, align 2
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8204, i32 noundef 2, ptr noundef nonnull %7, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #11
  br label %38

38:                                               ; preds = %37, %34, %13, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_req_add_le_interleaved_scan(ptr noundef %0, i32 noundef %1) #1 {
  %3 = alloca %struct.hci_cp_le_set_ext_scan_enable, align 1
  %4 = alloca %struct.hci_cp_le_set_scan_enable, align 2
  %5 = alloca i8, align 1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #11
  %8 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 206
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 16384
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr inbounds %struct.hci_dev, ptr %13, i32 0, i32 178
  %15 = load i8, ptr %14, align 4, !range !13
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = getelementptr %struct.hci_dev, ptr %13, i32 0, i32 27, i32 37
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 96
  %21 = icmp eq i8 %20, 96
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i64 6, i1 false) #11
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8258, i32 noundef 6, ptr noundef nonnull %3, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #11
  br label %24

23:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  store i16 0, ptr %4, align 2
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8204, i32 noundef 2, ptr noundef nonnull %4, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  br label %24

24:                                               ; preds = %23, %22
  %25 = getelementptr %struct.hci_dev, ptr %13, i32 0, i32 206, i32 1
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 256
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  store i8 0, ptr %5, align 1
  call void @hci_req_add_ev(ptr noundef %0, i16 noundef zeroext 8237, i32 noundef 1, ptr noundef nonnull %5, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  br label %30

30:                                               ; preds = %29, %24, %12, %2
  tail call void @hci_req_add_le_passive_scan(ptr noundef %0)
  %31 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 224
  %32 = load i32, ptr %31, align 8
  switch i32 %32, label %36 [
    i32 2, label %33
    i32 1, label %34
    i32 0, label %35
  ]

33:                                               ; preds = %30
  store i32 1, ptr %31, align 8
  br label %36

34:                                               ; preds = %30
  store i32 2, ptr %31, align 8
  br label %36

35:                                               ; preds = %30
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.7) #11
  br label %36

36:                                               ; preds = %35, %34, %33, %30
  %37 = phi i32 [ 0, %30 ], [ -1, %35 ], [ 0, %34 ], [ 0, %33 ]
  tail call void @mutex_unlock(ptr noundef %7) #11
  ret i32 %37
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #10

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }

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
!8 = !{i64 524354, i64 2148025920, i64 2148025946, i64 2148025993, i64 2148026015, i64 2148026043, i64 2148026063}
!9 = !{i64 2148090640, i64 2148090672, i64 2148090701, i64 2148090735, i64 2148090766, i64 2148090789}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{!"auto-init"}
!13 = !{i8 0, i8 2}
!14 = !{i64 2148948292}
!15 = !{i64 2148948509}
