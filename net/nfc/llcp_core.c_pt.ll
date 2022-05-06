; ModuleID = '/llk/IR/net/nfc/llcp_core.c_pt.bc'
source_filename = "../net/nfc/llcp_core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.llcp_sock_list = type { %struct.hlist_head, %struct.rwlock_t }
%struct.hlist_head = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.123, [0 x i32], %union.anon.124, i16, i16, %union.anon.125, %struct.refcount_struct, [0 x i32], %union.anon.126 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.81 }
%union.anon.81 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.123 = type { i32 }
%union.anon.124 = type { %struct.hlist_node }
%union.anon.125 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.126 = type { i32 }
%struct.nfc_llcp_sock = type { %struct.sock, ptr, ptr, i32, i32, i8, i8, ptr, i32, i8, i16, i8, i16, i8, i8, i8, i8, i8, i8, %struct.sk_buff_head, %struct.sk_buff_head, %struct.list_head, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.127, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.128, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.129, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.127 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.128 = type { ptr }
%union.anon.129 = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.nfc_llcp_local = type { %struct.list_head, ptr, %struct.kref, %struct.mutex, %struct.timer_list, %struct.sk_buff_head, %struct.work_struct, %struct.work_struct, ptr, %struct.work_struct, i32, i8, i8, i8, i8, i16, i32, i32, i32, [16 x %struct.atomic_t], [48 x i8], i8, [48 x i8], i8, i8, i16, i16, i8, i16, %struct.mutex, %struct.hlist_head, %struct.timer_list, %struct.work_struct, i8, %struct.llcp_sock_list, %struct.llcp_sock_list, %struct.llcp_sock_list }
%struct.kref = type { %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.sk_buff = type { %union.anon.42, %union.anon.45, %union.anon.46, [48 x i8], %union.anon.47, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.49, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, ptr, %union.anon.44 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { ptr }
%union.anon.46 = type { i64 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { i32, ptr }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.51, i32, i32, i32, i16, i16, %union.anon.53, %union.anon.54, %union.anon.55, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.51 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i16 }
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
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
%struct.nfc_genl_data = type { i32, %struct.mutex }
%struct.nfc_llcp_sdp_tlv = type { ptr, i8, ptr, i8, i8, i32, %struct.hlist_node }

@llcp_devices = internal global %struct.list_head { ptr @llcp_devices, ptr @llcp_devices }, align 4
@.str = private unnamed_addr constant [28 x i8] c"\013llcp: %s: No LLCP device\0A\00", align 1
@__func__.nfc_llcp_set_remote_gb = private unnamed_addr constant [23 x i8] c"nfc_llcp_set_remote_gb\00", align 1
@llcp_magic = internal global [3 x i8] c"Ffm", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"\013llcp: %s: MAC does not support LLCP\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"\013llcp: %s: LLCP PDU receive err %d\0A\00", align 1
@__func__.nfc_llcp_recv = private unnamed_addr constant [14 x i8] c"nfc_llcp_recv\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@nfc_llcp_register_device.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"&local->sdp_lock\00", align 1
@nfc_llcp_register_device.__key.4 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"&local->sdreq_lock\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"include/net/sock.h\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"urn:nfc:sn:ip\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"urn:nfc:sn:obex\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"urn:nfc:sn:snep\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"\013llcp: %s: SYMM timeout\0A\00", align 1
@__func__.nfc_llcp_symm_timer = private unnamed_addr constant [20 x i8] c"nfc_llcp_symm_timer\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"\013llcp: %s: Receive queue is full\0A\00", align 1
@__func__.nfc_llcp_recv_ui = private unnamed_addr constant [17 x i8] c"nfc_llcp_recv_ui\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"\013llcp: %s: Invalid CC\0A\00", align 1
@__func__.nfc_llcp_recv_cc = private unnamed_addr constant [17 x i8] c"nfc_llcp_recv_cc\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"\013llcp: %s: Wrong SNL SAP\0A\00", align 1
@__func__.nfc_llcp_recv_snl = private unnamed_addr constant [18 x i8] c"nfc_llcp_recv_snl\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"urn:nfc:sn:sdp\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"\013llcp: %s: Invalid SNL tlv value 0x%x\0A\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"\013llcp: %s: Received out of sequence I PDU\0A\00", align 1
@__func__.nfc_llcp_recv_hdlc = private unnamed_addr constant [19 x i8] c"nfc_llcp_recv_hdlc\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"\013llcp: %s: Malformed AGF PDU\0A\00", align 1
@__func__.nfc_llcp_recv_agf = private unnamed_addr constant [18 x i8] c"nfc_llcp_recv_agf\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"\013llcp: %s: Could not allocate PDU\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfc_llcp_sock_link(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.llcp_sock_list, ptr %0, i32 0, i32 1
  tail call void @_raw_write_lock(ptr noundef %3) #13
  %4 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #13, !srcloc !8
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #13, !srcloc !9
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8, !prof !10

8:                                                ; preds = %2
  %9 = add i32 %6, 1
  %10 = or i32 %9, %6
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %14, label %12, !prof !11

12:                                               ; preds = %8, %2
  %13 = phi i32 [ 2, %2 ], [ 1, %8 ]
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef %13) #13
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15
  %16 = load ptr, ptr %0, align 4
  store volatile ptr %16, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hlist_node, ptr %16, i32 0, i32 1
  store volatile ptr %15, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %14
  store volatile ptr %15, ptr %0, align 4
  %21 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15, i32 0, i32 1
  store volatile ptr %0, ptr %21, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %3, i32 0) #13, !srcloc !13
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfc_llcp_sock_unlink(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.llcp_sock_list, ptr %0, i32 0, i32 1
  tail call void @_raw_write_lock(ptr noundef %3) #13
  %4 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  store volatile ptr %9, ptr %5, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.hlist_node, ptr %9, i32 0, i32 1
  store volatile ptr %5, ptr %12, align 4
  br label %13

13:                                               ; preds = %11, %7
  store ptr null, ptr %4, align 4
  %14 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %15 = load volatile i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %18, !prof !10

17:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 729, i32 noundef 9, ptr noundef null) #13
  br label %18

18:                                               ; preds = %17, %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #13, !srcloc !8
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #13, !srcloc !18
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %23, !prof !10

22:                                               ; preds = %18
  tail call void @refcount_warn_saturate(ptr noundef %14, i32 noundef 4) #13
  br label %23

23:                                               ; preds = %22, %18, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %3, i32 0) #13, !srcloc !13
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @nfc_llcp_socket_remote_param_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 11
  store i8 1, ptr %2, align 8
  %3 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 12
  store i16 2176, ptr %3, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfc_llcp_local_get(ptr noundef returned %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #13, !srcloc !8
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #13, !srcloc !9
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !10

6:                                                ; preds = %1
  %7 = add i32 %4, 1
  %8 = or i32 %7, %4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %12, label %10, !prof !11

10:                                               ; preds = %6, %1
  %11 = phi i32 [ 2, %1 ], [ 1, %6 ]
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef %11) #13
  br label %12

12:                                               ; preds = %10, %6
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_local_put(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %32, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #13, !srcloc !8
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #13, !srcloc !18
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %32, label %10, !prof !11

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #13
  br label %32

11:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  %12 = getelementptr %struct.nfc_llcp_local, ptr %0, i32 0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 4
  store volatile ptr %14, ptr %13, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %12, align 4
  tail call fastcc void @nfc_llcp_socket_release(ptr noundef nonnull %0, i1 noundef zeroext false, i32 noundef 6) #13
  %16 = getelementptr %struct.nfc_llcp_local, ptr %0, i32 0, i32 4
  %17 = tail call i32 @del_timer_sync(ptr noundef %16) #13
  %18 = getelementptr %struct.nfc_llcp_local, ptr %0, i32 0, i32 5
  tail call void @skb_queue_purge(ptr noundef %18) #13
  %19 = getelementptr %struct.nfc_llcp_local, ptr %0, i32 0, i32 6
  %20 = tail call zeroext i1 @cancel_work_sync(ptr noundef %19) #13
  %21 = getelementptr %struct.nfc_llcp_local, ptr %0, i32 0, i32 7
  %22 = tail call zeroext i1 @cancel_work_sync(ptr noundef %21) #13
  %23 = getelementptr %struct.nfc_llcp_local, ptr %0, i32 0, i32 9
  %24 = tail call zeroext i1 @cancel_work_sync(ptr noundef %23) #13
  %25 = getelementptr %struct.nfc_llcp_local, ptr %0, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  tail call void @kfree_skb_reason(ptr noundef %26, i32 noundef 0) #13
  %27 = getelementptr %struct.nfc_llcp_local, ptr %0, i32 0, i32 31
  %28 = tail call i32 @del_timer_sync(ptr noundef %27) #13
  %29 = getelementptr %struct.nfc_llcp_local, ptr %0, i32 0, i32 32
  %30 = tail call zeroext i1 @cancel_work_sync(ptr noundef %29) #13
  %31 = getelementptr %struct.nfc_llcp_local, ptr %0, i32 0, i32 30
  tail call void @nfc_llcp_free_sdp_tlv_list(ptr noundef %31) #13
  tail call void @kfree(ptr noundef nonnull %0) #13
  br label %32

32:                                               ; preds = %11, %10, %8, %1
  %33 = phi i32 [ 0, %1 ], [ 1, %11 ], [ 0, %8 ], [ 0, %10 ]
  ret i32 %33
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @nfc_llcp_find_local(ptr noundef readnone %0) local_unnamed_addr #3 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @llcp_devices, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @llcp_devices
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nfc_llcp_local, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %2

10:                                               ; preds = %6, %2
  %11 = phi ptr [ %4, %6 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @nfc_llcp_get_sdp_ssap(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %3) #13
  %4 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %34, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 8
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %34, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @strncmp(ptr noundef nonnull @.str.7, ptr noundef nonnull %5, i32 noundef %9) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @strncmp(ptr noundef nonnull @.str.8, ptr noundef nonnull %5, i32 noundef %9) #13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @strncmp(ptr noundef nonnull @.str.9, ptr noundef nonnull %5, i32 noundef %9) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %17, %14, %11
  %21 = phi i32 [ 3, %14 ], [ 2, %11 ], [ 4, %17 ]
  %22 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 16
  %23 = load i32, ptr %22, align 4
  %24 = shl nuw nsw i32 1, %21
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  tail call void @mutex_unlock(ptr noundef %3) #13
  br label %50

28:                                               ; preds = %20
  tail call void @_set_bit(i32 noundef %21, ptr noundef %22) #13
  tail call void @mutex_unlock(ptr noundef %3) #13
  %29 = trunc i32 %21 to i8
  br label %50

30:                                               ; preds = %17
  %31 = tail call fastcc ptr @nfc_llcp_sock_from_sn(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %9)
  %32 = icmp eq ptr %31, null
  tail call void @mutex_unlock(ptr noundef %3) #13
  %33 = select i1 %32, i8 65, i8 -1
  br label %50

34:                                               ; preds = %7, %2
  %35 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 5
  %36 = load i8, ptr %35, align 8
  %37 = zext i8 %36 to i32
  %38 = add i8 %36, -1
  %39 = icmp ult i8 %38, 15
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 16
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %37, 31
  %44 = shl nuw i32 1, %43
  %45 = and i32 %42, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  tail call void @_set_bit(i32 noundef %37, ptr noundef %41) #13
  tail call void @mutex_unlock(ptr noundef %3) #13
  %48 = load i8, ptr %35, align 8
  br label %50

49:                                               ; preds = %40, %34
  tail call void @mutex_unlock(ptr noundef %3) #13
  br label %50

50:                                               ; preds = %49, %47, %30, %28, %27
  %51 = phi i8 [ -1, %49 ], [ %48, %47 ], [ -1, %27 ], [ %29, %28 ], [ %33, %30 ]
  ret i8 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @nfc_llcp_sock_from_sn(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  %5 = icmp eq i32 %2, 0
  %6 = or i1 %4, %5
  br i1 %6, label %54, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 34
  %9 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 34, i32 1
  tail call void @_raw_read_lock(ptr noundef %9) #13
  %10 = load ptr, ptr %8, align 4
  %11 = icmp eq ptr %10, null
  %12 = getelementptr i8, ptr %10, i32 -84
  %13 = icmp eq ptr %12, null
  %14 = or i1 %11, %13
  br i1 %14, label %47, label %15

15:                                               ; preds = %40, %7
  %16 = phi ptr [ %44, %40 ], [ %12, %7 ]
  %17 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 45
  %18 = load i16, ptr %17, align 2
  switch i16 %18, label %27 [
    i16 1, label %19
    i16 2, label %23
  ]

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 4
  %21 = load volatile i8, ptr %20, align 2
  %22 = icmp eq i8 %21, 6
  br i1 %22, label %27, label %40

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 4
  %25 = load volatile i8, ptr %24, align 2
  %26 = icmp eq i8 %25, 5
  br i1 %26, label %27, label %40

27:                                               ; preds = %23, %19, %15
  %28 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %16, i32 0, i32 7
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %16, i32 0, i32 8
  %33 = load i32, ptr %32, align 8
  %34 = icmp ne i32 %33, 0
  %35 = icmp eq i32 %33, %2
  %36 = and i1 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = tail call i32 @bcmp(ptr %1, ptr nonnull %29, i32 %2)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %37, %31, %27, %23, %19
  %41 = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 15
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  %44 = getelementptr i8, ptr %42, i32 -84
  %45 = icmp eq ptr %44, null
  %46 = or i1 %43, %45
  br i1 %46, label %47, label %15

47:                                               ; preds = %40, %37, %7
  %48 = phi ptr [ null, %7 ], [ %16, %37 ], [ null, %40 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #13, !srcloc !8
  %49 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %9) #13, !srcloc !21
  %50 = extractvalue { i32, i32 } %49, 0
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !15
  br label %53

53:                                               ; preds = %52, %47
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !22
  br label %54

54:                                               ; preds = %53, %3
  %55 = phi ptr [ %48, %53 ], [ null, %3 ]
  ret ptr %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @nfc_llcp_get_local_ssap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %2) #13
  %3 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 18
  %4 = tail call i32 @_find_first_zero_bit_le(ptr noundef %3, i32 noundef 32) #13
  %5 = and i32 %4, 255
  %6 = icmp eq i32 %5, 32
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @mutex_unlock(ptr noundef %2) #13
  br label %11

8:                                                ; preds = %1
  tail call void @_set_bit(i32 noundef %5, ptr noundef %3) #13
  tail call void @mutex_unlock(ptr noundef %2) #13
  %9 = trunc i32 %4 to i8
  %10 = add i8 %9, 32
  br label %11

11:                                               ; preds = %8, %7
  %12 = phi i8 [ -1, %7 ], [ %10, %8 ]
  ret i8 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfc_llcp_put_ssap(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp ult i8 %1, 16
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 16
  br label %35

6:                                                ; preds = %2
  %7 = icmp ult i8 %1, 32
  br i1 %7, label %8, label %30

8:                                                ; preds = %6
  %9 = add nsw i8 %1, -16
  %10 = zext i8 %9 to i32
  %11 = getelementptr %struct.nfc_llcp_local, ptr %0, i32 0, i32 19, i32 %10
  %12 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %12) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #13, !srcloc !8
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #13, !srcloc !24
  %14 = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !25
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 17
  tail call void @_clear_bit(i32 noundef %10, ptr noundef %17) #13
  %18 = tail call fastcc ptr @nfc_llcp_sock_get(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext 1)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %18, i32 0, i32 5
  store i8 65, ptr %21, align 8
  %22 = getelementptr inbounds %struct.sock_common, ptr %18, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #13, !srcloc !8
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #13, !srcloc !18
  %24 = extractvalue { i32, i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = icmp sgt i32 %24, 0
  br i1 %27, label %40, label %28, !prof !11

28:                                               ; preds = %26
  tail call void @refcount_warn_saturate(ptr noundef %22, i32 noundef 3) #13
  br label %40

29:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  tail call void @sk_free(ptr noundef nonnull %18) #13
  br label %40

30:                                               ; preds = %6
  %31 = icmp ult i8 %1, 64
  br i1 %31, label %32, label %42

32:                                               ; preds = %30
  %33 = add nsw i8 %1, -32
  %34 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 18
  br label %35

35:                                               ; preds = %32, %4
  %36 = phi ptr [ %5, %4 ], [ %34, %32 ]
  %37 = phi i8 [ %1, %4 ], [ %33, %32 ]
  %38 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %38) #13
  %39 = zext i8 %37 to i32
  tail call void @_clear_bit(i32 noundef %39, ptr noundef %36) #13
  br label %40

40:                                               ; preds = %35, %29, %28, %26, %16, %8
  %41 = phi ptr [ %38, %35 ], [ %12, %29 ], [ %12, %28 ], [ %12, %26 ], [ %12, %16 ], [ %12, %8 ]
  tail call void @mutex_unlock(ptr noundef %41) #13
  br label %42

42:                                               ; preds = %40, %30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @nfc_llcp_sock_get(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = or i8 %2, %1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %49, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 34
  %8 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 34, i32 1
  tail call void @_raw_read_lock(ptr noundef %8) #13
  %9 = load ptr, ptr %7, align 4
  %10 = icmp eq ptr %9, null
  %11 = getelementptr i8, ptr %9, i32 -84
  %12 = icmp eq ptr %11, null
  %13 = or i1 %10, %12
  br i1 %13, label %30, label %14

14:                                               ; preds = %23, %6
  %15 = phi ptr [ %27, %23 ], [ %11, %6 ]
  %16 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %15, i32 0, i32 5
  %17 = load i8, ptr %16, align 8
  %18 = icmp eq i8 %17, %1
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %15, i32 0, i32 6
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, %2
  br i1 %22, label %30, label %23

23:                                               ; preds = %19, %14
  %24 = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 15
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  %27 = getelementptr i8, ptr %25, i32 -84
  %28 = icmp eq ptr %27, null
  %29 = or i1 %26, %28
  br i1 %29, label %30, label %14

30:                                               ; preds = %23, %19, %6
  %31 = phi ptr [ null, %6 ], [ %15, %19 ], [ null, %23 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #13, !srcloc !8
  %32 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %8) #13, !srcloc !21
  %33 = extractvalue { i32, i32 } %32, 0
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !15
  br label %36

36:                                               ; preds = %35, %30
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !22
  %37 = icmp eq ptr %31, null
  br i1 %37, label %49, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.sock_common, ptr %31, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %39) #13, !srcloc !8
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %39, ptr %39, i32 1, ptr elementtype(i32) %39) #13, !srcloc !9
  %41 = extractvalue { i32, i32, i32 } %40, 0
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43, !prof !10

43:                                               ; preds = %38
  %44 = add i32 %41, 1
  %45 = or i32 %44, %41
  %46 = icmp sgt i32 %45, -1
  br i1 %46, label %49, label %47, !prof !11

47:                                               ; preds = %43, %38
  %48 = phi i32 [ 2, %38 ], [ 1, %43 ]
  tail call void @refcount_warn_saturate(ptr noundef %39, i32 noundef %48) #13
  br label %49

49:                                               ; preds = %47, %43, %36, %3
  %50 = phi ptr [ null, %3 ], [ null, %36 ], [ %31, %43 ], [ %31, %47 ]
  ret ptr %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfc_llcp_general_bytes(ptr noundef readnone %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ @llcp_devices, %2 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @llcp_devices
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nfc_llcp_local, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %3

11:                                               ; preds = %7
  %12 = icmp eq ptr %5, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %11, %3
  store i32 0, ptr %1, align 4
  br label %19

14:                                               ; preds = %11
  tail call fastcc void @nfc_llcp_build_gb(ptr noundef nonnull %5)
  %15 = getelementptr inbounds %struct.nfc_llcp_local, ptr %5, i32 0, i32 21
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i32
  store i32 %17, ptr %1, align 4
  %18 = getelementptr inbounds %struct.nfc_llcp_local, ptr %5, i32 0, i32 20
  br label %19

19:                                               ; preds = %14, %13
  %20 = phi ptr [ null, %13 ], [ %18, %14 ]
  ret ptr %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nfc_llcp_build_gb(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  store i8 0, ptr %3, align 1, !annotation !26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #13
  store i8 0, ptr %4, align 1, !annotation !26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #13
  store i8 0, ptr %5, align 1, !annotation !26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #13
  store i8 0, ptr %6, align 1, !annotation !26
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #13
  %8 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 16
  %9 = load i32, ptr %8, align 4
  %10 = trunc i32 %9 to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  store i16 %11, ptr %7, align 2
  store i8 17, ptr %2, align 1
  %12 = call ptr @nfc_llcp_build_tlv(i8 noundef zeroext 1, ptr noundef nonnull %2, i8 noundef zeroext 1, ptr noundef nonnull %3) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %49, label %14

14:                                               ; preds = %1
  %15 = load i8, ptr %3, align 1
  %16 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 13
  %17 = call ptr @nfc_llcp_build_tlv(i8 noundef zeroext 4, ptr noundef %16, i8 noundef zeroext 1, ptr noundef nonnull %4) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %49, label %19

19:                                               ; preds = %14
  %20 = load i8, ptr %4, align 1
  %21 = call ptr @nfc_llcp_build_tlv(i8 noundef zeroext 3, ptr noundef nonnull %7, i8 noundef zeroext 2, ptr noundef nonnull %5) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %49, label %23

23:                                               ; preds = %19
  %24 = load i8, ptr %5, align 1
  %25 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 15
  %26 = call ptr @nfc_llcp_build_tlv(i8 noundef zeroext 2, ptr noundef %25, i8 noundef zeroext 0, ptr noundef nonnull %6) #13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %49, label %28

28:                                               ; preds = %23
  %29 = load i8, ptr %6, align 1
  %30 = add i8 %15, 3
  %31 = add i8 %30, %20
  %32 = add i8 %31, %24
  %33 = add i8 %32, %29
  %34 = icmp ugt i8 %33, 48
  br i1 %34, label %49, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 20
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %36, ptr noundef nonnull align 1 dereferenceable(3) @llcp_magic, i32 3, i1 false)
  %37 = getelementptr %struct.nfc_llcp_local, ptr %0, i32 0, i32 20, i32 3
  %38 = load i8, ptr %3, align 1
  %39 = zext i8 %38 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %37, ptr nonnull align 1 %12, i32 %39, i1 false)
  %40 = getelementptr i8, ptr %37, i32 %39
  %41 = load i8, ptr %4, align 1
  %42 = zext i8 %41 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %40, ptr nonnull align 1 %17, i32 %42, i1 false)
  %43 = getelementptr i8, ptr %40, i32 %42
  %44 = load i8, ptr %5, align 1
  %45 = zext i8 %44 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %43, ptr nonnull align 1 %21, i32 %45, i1 false)
  %46 = getelementptr i8, ptr %43, i32 %45
  %47 = zext i8 %29 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %46, ptr nonnull align 1 %26, i32 %47, i1 false)
  %48 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 21
  store i8 %33, ptr %48, align 4
  br label %49

49:                                               ; preds = %35, %28, %23, %19, %14, %1
  %50 = phi ptr [ %17, %35 ], [ null, %1 ], [ null, %14 ], [ %17, %19 ], [ %17, %23 ], [ %17, %28 ]
  %51 = phi ptr [ %21, %35 ], [ null, %1 ], [ null, %14 ], [ null, %19 ], [ %21, %23 ], [ %21, %28 ]
  %52 = phi ptr [ %26, %35 ], [ null, %1 ], [ null, %14 ], [ null, %19 ], [ null, %23 ], [ %26, %28 ]
  call void @kfree(ptr noundef %12) #13
  call void @kfree(ptr noundef %50) #13
  call void @kfree(ptr noundef %51) #13
  call void @kfree(ptr noundef %52) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_set_remote_gb(ptr noundef readnone %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = zext i8 %2 to i32
  %5 = add i8 %2, -49
  %6 = icmp ult i8 %5, -46
  br i1 %6, label %31, label %7

7:                                                ; preds = %11, %3
  %8 = phi ptr [ %9, %11 ], [ @llcp_devices, %3 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, @llcp_devices
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.nfc_llcp_local, ptr %9, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %7

15:                                               ; preds = %11
  %16 = icmp eq ptr %9, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %15, %7
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nfc_llcp_set_remote_gb) #14
  br label %31

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.nfc_llcp_local, ptr %9, i32 0, i32 22
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(48) %20, i8 0, i32 48, i1 false)
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %20, ptr align 1 %1, i32 %4, i1 false)
  %21 = getelementptr inbounds %struct.nfc_llcp_local, ptr %9, i32 0, i32 23
  store i8 %2, ptr %21, align 1
  %22 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %20, ptr noundef nonnull dereferenceable(3) @llcp_magic, i32 3)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nfc_llcp_set_remote_gb) #14
  br label %31

26:                                               ; preds = %19
  %27 = getelementptr %struct.nfc_llcp_local, ptr %9, i32 0, i32 22, i32 3
  %28 = zext i8 %2 to i16
  %29 = add nsw i16 %28, -3
  %30 = tail call i32 @nfc_llcp_parse_gb_tlv(ptr noundef nonnull %9, ptr noundef %27, i16 noundef zeroext %29) #13
  br label %31

31:                                               ; preds = %26, %24, %17, %3
  %32 = phi i32 [ -19, %17 ], [ -22, %24 ], [ %30, %26 ], [ -22, %3 ]
  ret i32 %32
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llcp_parse_gb_tlv(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfc_llcp_send_to_raw_sock(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 36
  %5 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 36, i32 1
  tail call void @_raw_read_lock(ptr noundef %5) #13
  %6 = load ptr, ptr %4, align 4
  %7 = icmp eq ptr %6, null
  %8 = getelementptr i8, ptr %6, i32 -84
  %9 = icmp eq ptr %8, null
  %10 = or i1 %7, %9
  br i1 %10, label %51, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 1
  %13 = and i8 %2, 1
  br label %14

14:                                               ; preds = %43, %11
  %15 = phi ptr [ null, %11 ], [ %44, %43 ]
  %16 = phi ptr [ %8, %11 ], [ %48, %43 ]
  %17 = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 4
  %18 = load volatile i8, ptr %17, align 2
  %19 = icmp eq i8 %18, 5
  br i1 %19, label %20, label %43

20:                                               ; preds = %14
  %21 = icmp eq ptr %15, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %20
  %23 = tail call ptr @__pskb_copy_fclone(ptr noundef %1, i32 noundef 2, i32 noundef 2592, i1 noundef zeroext true) #13
  %24 = icmp eq ptr %23, null
  br i1 %24, label %43, label %25

25:                                               ; preds = %22
  %26 = tail call ptr @skb_push(ptr noundef nonnull %23, i32 noundef 2) #13
  %27 = load ptr, ptr %12, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr %27, align 8
  br label %31

31:                                               ; preds = %29, %25
  %32 = phi i32 [ %30, %29 ], [ 255, %25 ]
  %33 = trunc i32 %32 to i8
  store i8 %33, ptr %26, align 1
  %34 = getelementptr i8, ptr %26, i32 1
  store i8 %13, ptr %34, align 1
  br label %35

35:                                               ; preds = %31, %20
  %36 = phi ptr [ %23, %31 ], [ %15, %20 ]
  %37 = tail call ptr @skb_clone(ptr noundef nonnull %36, i32 noundef 2592) #13
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = tail call i32 @sock_queue_rcv_skb(ptr noundef nonnull %16, ptr noundef nonnull %37) #13
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  tail call void @kfree_skb_reason(ptr noundef nonnull %37, i32 noundef 0) #13
  br label %43

43:                                               ; preds = %42, %39, %35, %22, %14
  %44 = phi ptr [ %15, %14 ], [ null, %22 ], [ %36, %42 ], [ %36, %39 ], [ %36, %35 ]
  %45 = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 15
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  %48 = getelementptr i8, ptr %46, i32 -84
  %49 = icmp eq ptr %48, null
  %50 = or i1 %47, %49
  br i1 %50, label %51, label %14

51:                                               ; preds = %43, %3
  %52 = phi ptr [ null, %3 ], [ %44, %43 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #13, !srcloc !8
  %53 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %5) #13, !srcloc !21
  %54 = extractvalue { i32, i32 } %53, 0
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !15
  br label %57

57:                                               ; preds = %56, %51
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !22
  tail call void @kfree_skb_reason(ptr noundef %52, i32 noundef 0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_copy_fclone(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_queue_i_frames(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 20, i32 1
  %3 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 19
  %4 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 17
  %5 = load i8, ptr %4, align 8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %43, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 11
  %11 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 13
  %12 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 15
  %13 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 16
  %14 = getelementptr inbounds %struct.nfc_llcp_local, ptr %9, i32 0, i32 5
  br label %15

15:                                               ; preds = %24, %7
  %16 = phi i32 [ 0, %7 ], [ %40, %24 ]
  %17 = load i32, ptr %2, align 4
  %18 = load i8, ptr %10, align 8
  %19 = zext i8 %18 to i32
  %20 = icmp ult i32 %17, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %15
  %22 = tail call ptr @skb_dequeue(ptr noundef %3) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %43, label %24

24:                                               ; preds = %21
  %25 = load i8, ptr %11, align 4
  %26 = shl i8 %25, 4
  %27 = load i8, ptr %12, align 2
  %28 = or i8 %26, %27
  %29 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 17
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 2
  store i8 %28, ptr %31, align 1
  %32 = load i8, ptr %11, align 4
  %33 = add i8 %32, 1
  %34 = and i8 %33, 15
  store i8 %34, ptr %11, align 4
  %35 = load i8, ptr %12, align 2
  %36 = zext i8 %35 to i16
  %37 = add nsw i16 %36, -1
  %38 = srem i16 %37, 16
  %39 = trunc i16 %38 to i8
  store i8 %39, ptr %13, align 1
  tail call void @skb_queue_tail(ptr noundef %14, ptr noundef nonnull %22) #13
  %40 = add i32 %16, 1
  %41 = load i8, ptr %4, align 8
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %15

43:                                               ; preds = %24, %21, %15, %1
  %44 = phi i32 [ 0, %1 ], [ %16, %21 ], [ %40, %24 ], [ %16, %15 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfc_llcp_recv(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 %2, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.nfc_llcp_recv, i32 noundef %2) #14
  br label %14

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 8
  store ptr %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 4
  %10 = tail call i32 @del_timer(ptr noundef %9) #13
  %11 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 7
  %12 = load ptr, ptr @system_wq, align 4
  %13 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %12, ptr noundef %11) #13
  br label %14

14:                                               ; preds = %7, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_data_received(ptr noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ @llcp_devices, %2 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @llcp_devices
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nfc_llcp_local, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %3

11:                                               ; preds = %7
  %12 = icmp eq ptr %5, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %11, %3
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #13
  br label %21

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.nfc_llcp_local, ptr %5, i32 0, i32 8
  store ptr %1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.nfc_llcp_local, ptr %5, i32 0, i32 4
  %17 = tail call i32 @del_timer(ptr noundef %16) #13
  %18 = getelementptr inbounds %struct.nfc_llcp_local, ptr %5, i32 0, i32 7
  %19 = load ptr, ptr @system_wq, align 4
  %20 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %19, ptr noundef %18) #13
  br label %21

21:                                               ; preds = %14, %13
  %22 = phi i32 [ -19, %13 ], [ 0, %14 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfc_llcp_mac_is_down(ptr noundef readnone %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @llcp_devices, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @llcp_devices
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nfc_llcp_local, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %2

10:                                               ; preds = %6
  %11 = icmp eq ptr %4, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.nfc_llcp_local, ptr %4, i32 0, i32 25
  store i16 128, ptr %13, align 4
  %14 = getelementptr inbounds %struct.nfc_llcp_local, ptr %4, i32 0, i32 26
  store i16 100, ptr %14, align 2
  tail call fastcc void @nfc_llcp_socket_release(ptr noundef nonnull %4, i1 noundef zeroext true, i32 noundef 0)
  br label %15

15:                                               ; preds = %12, %10, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nfc_llcp_socket_release(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 5
  tail call void @skb_queue_purge(ptr noundef %4) #13
  %5 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 34
  %6 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 34, i32 1
  tail call void @_raw_write_lock(ptr noundef %6) #13
  %7 = load ptr, ptr %5, align 4
  %8 = icmp eq ptr %7, null
  %9 = getelementptr i8, ptr %7, i32 -84
  %10 = icmp eq ptr %9, null
  %11 = or i1 %8, %10
  br i1 %11, label %99, label %12

12:                                               ; preds = %3
  %13 = icmp eq i32 %2, 0
  br label %14

14:                                               ; preds = %94, %12
  %15 = phi ptr [ %9, %12 ], [ %96, %94 ]
  %16 = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %18) #13
  %19 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %15, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %15, i32 0, i32 19
  tail call void @skb_queue_purge(ptr noundef %21) #13
  %22 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %15, i32 0, i32 20
  tail call void @skb_queue_purge(ptr noundef %22) #13
  %23 = icmp eq ptr %20, null
  br i1 %23, label %37, label %24

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.nfc_llcp_local, ptr %20, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %37, label %28

28:                                               ; preds = %35, %24
  %29 = phi ptr [ %30, %35 ], [ %26, %24 ]
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %15
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  tail call void @skb_unlink(ptr noundef %29, ptr noundef %25) #13
  tail call void @kfree_skb_reason(ptr noundef %29, i32 noundef 0) #13
  br label %35

35:                                               ; preds = %34, %28
  %36 = icmp eq ptr %30, %25
  br i1 %36, label %37, label %28

37:                                               ; preds = %35, %24, %14
  %38 = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 4
  %39 = load volatile i8, ptr %38, align 2
  %40 = icmp eq i8 %39, 1
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %15, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.nfc_dev, ptr %43, i32 0, i32 5
  tail call void @put_device(ptr noundef %44) #13
  br label %45

45:                                               ; preds = %41, %37
  %46 = load volatile i8, ptr %38, align 2
  %47 = icmp eq i8 %46, 6
  br i1 %47, label %48, label %68

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %15, i32 0, i32 21
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 -596
  %52 = icmp eq ptr %51, %15
  br i1 %52, label %68, label %53

53:                                               ; preds = %60, %48
  %54 = phi ptr [ %66, %60 ], [ %51, %48 ]
  %55 = phi ptr [ %56, %60 ], [ %50, %48 ]
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr i8, ptr %55, i32 -472
  tail call void @_raw_spin_lock(ptr noundef %57) #13
  tail call void @nfc_llcp_accept_unlink(ptr noundef %54) #13
  br i1 %13, label %60, label %58

58:                                               ; preds = %53
  %59 = getelementptr i8, ptr %55, i32 -200
  store i32 %2, ptr %59, align 4
  br label %60

60:                                               ; preds = %58, %53
  %61 = getelementptr i8, ptr %55, i32 -578
  store volatile i8 4, ptr %61, align 2
  %62 = getelementptr i8, ptr %55, i32 -112
  %63 = load ptr, ptr %62, align 4
  tail call void %63(ptr noundef nonnull %15) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !27
  %64 = load i16, ptr %57, align 4
  %65 = add i16 %64, 1
  store i16 %65, ptr %57, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !28
  %66 = getelementptr i8, ptr %56, i32 -596
  %67 = icmp eq ptr %66, %15
  br i1 %67, label %68, label %53

68:                                               ; preds = %60, %48, %45
  br i1 %13, label %71, label %69

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 51
  store i32 %2, ptr %70, align 4
  br label %71

71:                                               ; preds = %69, %68
  store volatile i8 4, ptr %38, align 2
  %72 = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 75
  %73 = load ptr, ptr %72, align 4
  tail call void %73(ptr noundef nonnull %15) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !27
  %74 = load i16, ptr %18, align 4
  %75 = add i16 %74, 1
  store i16 %75, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !28
  %76 = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 15, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %94, label %79

79:                                               ; preds = %71
  %80 = load ptr, ptr %16, align 4
  store volatile ptr %80, ptr %77, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.hlist_node, ptr %80, i32 0, i32 1
  store volatile ptr %77, ptr %83, align 4
  br label %84

84:                                               ; preds = %82, %79
  store ptr null, ptr %76, align 4
  %85 = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 19
  %86 = load volatile i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %89, !prof !10

88:                                               ; preds = %84
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 729, i32 noundef 9, ptr noundef null) #13
  br label %89

89:                                               ; preds = %88, %84
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %85) #13, !srcloc !8
  %90 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %85, ptr %85, i32 1, ptr elementtype(i32) %85) #13, !srcloc !18
  %91 = extractvalue { i32, i32, i32 } %90, 0
  %92 = icmp slt i32 %91, 2
  br i1 %92, label %93, label %94, !prof !10

93:                                               ; preds = %89
  tail call void @refcount_warn_saturate(ptr noundef %85, i32 noundef 4) #13
  br label %94

94:                                               ; preds = %93, %89, %71
  %95 = icmp eq ptr %17, null
  %96 = getelementptr i8, ptr %17, i32 -84
  %97 = icmp eq ptr %96, null
  %98 = or i1 %95, %97
  br i1 %98, label %99, label %14

99:                                               ; preds = %94, %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %6, i32 0) #13, !srcloc !13
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !16
  br i1 %1, label %166, label %100

100:                                              ; preds = %99
  %101 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 36
  %102 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 36, i32 1
  tail call void @_raw_write_lock(ptr noundef %102) #13
  %103 = load ptr, ptr %101, align 4
  %104 = icmp eq ptr %103, null
  %105 = getelementptr i8, ptr %103, i32 -84
  %106 = icmp eq ptr %105, null
  %107 = or i1 %104, %106
  br i1 %107, label %165, label %108

108:                                              ; preds = %100
  %109 = icmp eq i32 %2, 0
  br label %110

110:                                              ; preds = %160, %108
  %111 = phi ptr [ %105, %108 ], [ %162, %160 ]
  %112 = getelementptr inbounds %struct.sock_common, ptr %111, i32 0, i32 15
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.sock, ptr %111, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %114) #13
  %115 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %111, i32 0, i32 2
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %111, i32 0, i32 19
  tail call void @skb_queue_purge(ptr noundef %117) #13
  %118 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %111, i32 0, i32 20
  tail call void @skb_queue_purge(ptr noundef %118) #13
  %119 = icmp eq ptr %116, null
  br i1 %119, label %133, label %120

120:                                              ; preds = %110
  %121 = getelementptr inbounds %struct.nfc_llcp_local, ptr %116, i32 0, i32 5
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, %121
  br i1 %123, label %133, label %124

124:                                              ; preds = %131, %120
  %125 = phi ptr [ %126, %131 ], [ %122, %120 ]
  %126 = load ptr, ptr %125, align 8
  %127 = getelementptr inbounds %struct.sk_buff, ptr %125, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, %111
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  tail call void @skb_unlink(ptr noundef %125, ptr noundef %121) #13
  tail call void @kfree_skb_reason(ptr noundef %125, i32 noundef 0) #13
  br label %131

131:                                              ; preds = %130, %124
  %132 = icmp eq ptr %126, %121
  br i1 %132, label %133, label %124

133:                                              ; preds = %131, %120, %110
  br i1 %109, label %136, label %134

134:                                              ; preds = %133
  %135 = getelementptr inbounds %struct.sock, ptr %111, i32 0, i32 51
  store i32 %2, ptr %135, align 4
  br label %136

136:                                              ; preds = %134, %133
  %137 = getelementptr inbounds %struct.sock_common, ptr %111, i32 0, i32 4
  store volatile i8 4, ptr %137, align 2
  %138 = getelementptr inbounds %struct.sock, ptr %111, i32 0, i32 75
  %139 = load ptr, ptr %138, align 4
  tail call void %139(ptr noundef nonnull %111) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !27
  %140 = load i16, ptr %114, align 4
  %141 = add i16 %140, 1
  store i16 %141, ptr %114, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !28
  %142 = getelementptr inbounds %struct.sock_common, ptr %111, i32 0, i32 15, i32 0, i32 1
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %160, label %145

145:                                              ; preds = %136
  %146 = load ptr, ptr %112, align 4
  store volatile ptr %146, ptr %143, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %150, label %148

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.hlist_node, ptr %146, i32 0, i32 1
  store volatile ptr %143, ptr %149, align 4
  br label %150

150:                                              ; preds = %148, %145
  store ptr null, ptr %142, align 4
  %151 = getelementptr inbounds %struct.sock_common, ptr %111, i32 0, i32 19
  %152 = load volatile i32, ptr %151, align 4
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %155, !prof !10

154:                                              ; preds = %150
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 729, i32 noundef 9, ptr noundef null) #13
  br label %155

155:                                              ; preds = %154, %150
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %151) #13, !srcloc !8
  %156 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %151, ptr %151, i32 1, ptr elementtype(i32) %151) #13, !srcloc !18
  %157 = extractvalue { i32, i32, i32 } %156, 0
  %158 = icmp slt i32 %157, 2
  br i1 %158, label %159, label %160, !prof !10

159:                                              ; preds = %155
  tail call void @refcount_warn_saturate(ptr noundef %151, i32 noundef 4) #13
  br label %160

160:                                              ; preds = %159, %155, %136
  %161 = icmp eq ptr %113, null
  %162 = getelementptr i8, ptr %113, i32 -84
  %163 = icmp eq ptr %162, null
  %164 = or i1 %161, %163
  br i1 %164, label %165, label %110

165:                                              ; preds = %160, %100
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %102, i32 0) #13, !srcloc !13
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !16
  br label %166

166:                                              ; preds = %165, %99
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfc_llcp_mac_is_up(ptr noundef readnone %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  br label %5

5:                                                ; preds = %9, %4
  %6 = phi ptr [ @llcp_devices, %4 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @llcp_devices
  br i1 %8, label %33, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nfc_llcp_local, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %13, label %5

13:                                               ; preds = %9
  %14 = icmp eq ptr %7, null
  br i1 %14, label %33, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.nfc_llcp_local, ptr %7, i32 0, i32 10
  store i32 %1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.nfc_llcp_local, ptr %7, i32 0, i32 12
  store i8 %2, ptr %17, align 1
  %18 = getelementptr inbounds %struct.nfc_llcp_local, ptr %7, i32 0, i32 11
  store i8 %3, ptr %18, align 4
  %19 = icmp eq i8 %3, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.nfc_llcp_local, ptr %7, i32 0, i32 6
  %22 = load ptr, ptr @system_wq, align 4
  %23 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %22, ptr noundef %21) #13
  br label %33

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.nfc_llcp_local, ptr %7, i32 0, i32 4
  %26 = load volatile i32, ptr @jiffies, align 64
  %27 = getelementptr inbounds %struct.nfc_llcp_local, ptr %7, i32 0, i32 26
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  %30 = tail call i32 @__msecs_to_jiffies(i32 noundef %29) #13
  %31 = add i32 %30, %26
  %32 = tail call i32 @mod_timer(ptr noundef %25, i32 noundef %31) #13
  br label %33

33:                                               ; preds = %24, %20, %13, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_register_device(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 408) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %46, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 1
  store ptr %0, ptr %6, align 8
  store volatile ptr %3, ptr %3, align 8
  %7 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 2
  store volatile i32 1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @nfc_llcp_register_device.__key) #13
  %10 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 4
  tail call void @init_timer_key(ptr noundef %10, ptr noundef nonnull @nfc_llcp_symm_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #13
  %11 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 5
  %12 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 5, i32 2
  store i32 0, ptr %12, align 4
  store ptr %11, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 5, i32 0, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  %14 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 5, i32 1
  store i32 0, ptr %14, align 8
  %15 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 6
  store i32 -32, ptr %15, align 8
  %16 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 6, i32 1
  store volatile ptr %16, ptr %16, align 4
  %17 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 6, i32 1, i32 1
  store ptr %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 6, i32 2
  store ptr @nfc_llcp_tx_work, ptr %18, align 4
  %19 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 8
  store ptr null, ptr %19, align 8
  %20 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 7
  store i32 -32, ptr %20, align 8
  %21 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 7, i32 1
  store volatile ptr %21, ptr %21, align 4
  %22 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 7, i32 1, i32 1
  store ptr %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 7, i32 2
  store ptr @nfc_llcp_rx_work, ptr %23, align 4
  %24 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 9
  store i32 -32, ptr %24, align 4
  %25 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 9, i32 1
  store volatile ptr %25, ptr %25, align 8
  %26 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 9, i32 1, i32 1
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 9, i32 2
  store ptr @nfc_llcp_timeout_work, ptr %27, align 8
  %28 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 34, i32 1
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 35, i32 1
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 36, i32 1
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 13
  store i8 -106, ptr %31, align 2
  %32 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 14
  store i8 15, ptr %32, align 1
  %33 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 15
  store i16 -249, ptr %33, align 4
  %34 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 16
  store i32 1, ptr %34, align 8
  tail call fastcc void @nfc_llcp_build_gb(ptr noundef nonnull %3)
  %35 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 25
  store i16 128, ptr %35, align 8
  %36 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 26
  store i16 100, ptr %36, align 2
  %37 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 29
  tail call void @__mutex_init(ptr noundef %37, ptr noundef nonnull @.str.5, ptr noundef nonnull @nfc_llcp_register_device.__key.4) #13
  %38 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 30
  store ptr null, ptr %38, align 4
  %39 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 31
  tail call void @init_timer_key(ptr noundef %39, ptr noundef nonnull @nfc_llcp_sdreq_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #13
  %40 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 32
  store i32 -32, ptr %40, align 4
  %41 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 32, i32 1
  store volatile ptr %41, ptr %41, align 8
  %42 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 32, i32 1, i32 1
  store ptr %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 32, i32 2
  store ptr @nfc_llcp_sdreq_timeout_work, ptr %43, align 8
  %44 = load ptr, ptr @llcp_devices, align 4
  %45 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  store ptr %3, ptr %45, align 4
  store ptr %44, ptr %3, align 8
  store ptr @llcp_devices, ptr %7, align 4
  store volatile ptr %3, ptr @llcp_devices, align 4
  br label %46

46:                                               ; preds = %5, %1
  %47 = phi i32 [ 0, %5 ], [ -12, %1 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfc_llcp_symm_timer(ptr noundef %0) #0 {
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nfc_llcp_symm_timer) #14
  %3 = getelementptr i8, ptr %0, i32 72
  %4 = load ptr, ptr @system_wq, align 4
  %5 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %4, ptr noundef %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfc_llcp_tx_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -72
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = tail call ptr @skb_dequeue(ptr noundef %3) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %90, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  %13 = load i8, ptr %12, align 1
  %14 = shl i8 %13, 2
  %15 = and i8 %14, 12
  %16 = getelementptr i8, ptr %12, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = lshr i8 %17, 6
  %19 = or i8 %15, %18
  %20 = icmp eq i8 %19, 12
  br i1 %20, label %23, label %21

21:                                               ; preds = %10
  %22 = or i8 %15, %18
  br label %68

23:                                               ; preds = %10
  tail call void @kfree_skb_reason(ptr noundef nonnull %4, i32 noundef 0) #13
  %24 = getelementptr i8, ptr %0, i32 -64
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @nfc_llcp_send_symm(ptr noundef %25) #13
  br label %94

27:                                               ; preds = %6
  %28 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %8, i32 0, i32 17
  %29 = load i8, ptr %28, align 8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  tail call void @skb_queue_head(ptr noundef %3, ptr noundef nonnull %4) #13
  %32 = getelementptr i8, ptr %0, i32 -64
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @nfc_llcp_send_symm(ptr noundef %33) #13
  br label %94

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 17
  %37 = load ptr, ptr %36, align 4
  %38 = load i8, ptr %37, align 1
  %39 = getelementptr i8, ptr %37, i32 1
  %40 = load i8, ptr %39, align 1
  %41 = shl i8 %38, 2
  %42 = and i8 %41, 12
  %43 = lshr i8 %40, 6
  %44 = xor i1 %9, true
  %45 = or i8 %42, %43
  %46 = icmp eq i8 %45, 5
  %47 = select i1 %46, i1 %44, i1 false
  br i1 %47, label %48, label %68

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 4
  %50 = load volatile i8, ptr %49, align 2
  %51 = icmp eq i8 %50, 3
  br i1 %51, label %52, label %73

52:                                               ; preds = %48
  %53 = getelementptr i8, ptr %0, i32 312
  tail call void @nfc_llcp_sock_unlink(ptr noundef %53, ptr noundef nonnull %8)
  %54 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %54) #13
  %55 = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 13
  %56 = load i32, ptr %55, align 4
  %57 = or i32 %56, 1
  store i32 %57, ptr %55, align 4
  %58 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 71
  store ptr null, ptr %58, align 8
  %59 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 17
  store ptr null, ptr %59, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %54) #13
  %60 = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %60) #13, !srcloc !8
  %61 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %60, ptr %60, i32 1, ptr elementtype(i32) %60) #13, !srcloc !18
  %62 = extractvalue { i32, i32, i32 } %61, 0
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %67, label %64

64:                                               ; preds = %52
  %65 = icmp sgt i32 %62, 0
  br i1 %65, label %73, label %66, !prof !11

66:                                               ; preds = %64
  tail call void @refcount_warn_saturate(ptr noundef %60, i32 noundef 3) #13
  br label %73

67:                                               ; preds = %52
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  tail call void @sk_free(ptr noundef nonnull %8) #13
  br label %73

68:                                               ; preds = %35, %21
  %69 = phi i8 [ %22, %21 ], [ %45, %35 ]
  %70 = icmp eq i8 %69, 12
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = tail call ptr @skb_copy(ptr noundef nonnull %4, i32 noundef 2592) #13
  br label %73

73:                                               ; preds = %71, %68, %67, %66, %64, %48
  %74 = phi i1 [ true, %71 ], [ false, %68 ], [ false, %67 ], [ false, %66 ], [ false, %64 ], [ false, %48 ]
  %75 = phi ptr [ %72, %71 ], [ null, %68 ], [ null, %67 ], [ null, %66 ], [ null, %64 ], [ null, %48 ]
  %76 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #13
  %77 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 2
  store i64 %76, ptr %77, align 8
  tail call void @nfc_llcp_send_to_raw_sock(ptr noundef %2, ptr noundef nonnull %4, i8 noundef zeroext 1)
  %78 = getelementptr i8, ptr %0, i32 -64
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr i8, ptr %0, i32 52
  %81 = load i32, ptr %80, align 4
  %82 = tail call i32 @nfc_data_exchange(ptr noundef %79, i32 noundef %81, ptr noundef nonnull %4, ptr noundef nonnull @nfc_llcp_recv, ptr noundef %2) #13
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %73
  tail call void @kfree_skb_reason(ptr noundef %75, i32 noundef 0) #13
  br label %94

85:                                               ; preds = %73
  %86 = icmp ne ptr %75, null
  %87 = select i1 %74, i1 %86, i1 false
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %8, i32 0, i32 20
  tail call void @skb_queue_tail(ptr noundef %89, ptr noundef nonnull %75) #13
  br label %94

90:                                               ; preds = %1
  %91 = getelementptr i8, ptr %0, i32 -64
  %92 = load ptr, ptr %91, align 4
  %93 = tail call i32 @nfc_llcp_send_symm(ptr noundef %92) #13
  br label %94

94:                                               ; preds = %90, %88, %85, %84, %31, %23
  %95 = load volatile i32, ptr @jiffies, align 64
  %96 = getelementptr i8, ptr %0, i32 242
  %97 = load i16, ptr %96, align 2
  %98 = zext i16 %97 to i32
  %99 = shl nuw nsw i32 %98, 1
  %100 = tail call i32 @__msecs_to_jiffies(i32 noundef %99) #13
  %101 = getelementptr i8, ptr %0, i32 -36
  %102 = add i32 %100, %95
  %103 = tail call i32 @mod_timer(ptr noundef %101, i32 noundef %102) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfc_llcp_rx_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -88
  %7 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #13
  %8 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 2
  store i64 %7, ptr %8, align 8
  tail call void @nfc_llcp_send_to_raw_sock(ptr noundef %6, ptr noundef nonnull %3, i8 noundef zeroext 0)
  tail call fastcc void @nfc_llcp_rx_skb(ptr noundef %6, ptr noundef nonnull %3)
  %9 = getelementptr i8, ptr %0, i32 -16
  %10 = load ptr, ptr @system_wq, align 4
  %11 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %10, ptr noundef %9) #13
  %12 = load ptr, ptr %2, align 4
  tail call void @kfree_skb_reason(ptr noundef %12, i32 noundef 0) #13
  store ptr null, ptr %2, align 4
  br label %13

13:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfc_llcp_timeout_work(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -100
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @nfc_dep_link_down(ptr noundef %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfc_llcp_sdreq_timer(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 20
  %3 = load ptr, ptr @system_wq, align 4
  %4 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %3, ptr noundef %2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfc_llcp_sdreq_timeout_work(ptr noundef %0) #0 {
  %2 = alloca %struct.hlist_head, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store i32 0, ptr %2, align 4
  %3 = getelementptr i8, ptr %0, i32 -44
  tail call void @mutex_lock(ptr noundef %3) #13
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = getelementptr i8, ptr %0, i32 -50
  %6 = load i16, ptr %5, align 2
  %7 = zext i16 %6 to i32
  %8 = mul nuw nsw i32 %7, 3
  %9 = tail call i32 @__msecs_to_jiffies(i32 noundef %8) #13
  %10 = getelementptr i8, ptr %0, i32 -24
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  %13 = getelementptr i8, ptr %11, i32 -20
  %14 = icmp eq ptr %13, null
  %15 = or i1 %12, %14
  br i1 %15, label %43, label %16

16:                                               ; preds = %38, %1
  %17 = phi ptr [ %40, %38 ], [ %13, %1 ]
  %18 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %17, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %17, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %9, %21
  %23 = sub i32 %4, %22
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %17, i32 0, i32 4
  store i8 65, ptr %26, align 1
  %27 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %17, i32 0, i32 6, i32 1
  %28 = load ptr, ptr %27, align 4
  store volatile ptr %19, ptr %28, align 4
  %29 = icmp eq ptr %19, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.hlist_node, ptr %19, i32 0, i32 1
  store volatile ptr %28, ptr %31, align 4
  br label %32

32:                                               ; preds = %30, %25
  %33 = load ptr, ptr %2, align 4
  store volatile ptr %33, ptr %18, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.hlist_node, ptr %33, i32 0, i32 1
  store volatile ptr %18, ptr %36, align 4
  br label %37

37:                                               ; preds = %35, %32
  store volatile ptr %18, ptr %2, align 4
  store volatile ptr %2, ptr %27, align 4
  br label %38

38:                                               ; preds = %37, %16
  %39 = icmp eq ptr %19, null
  %40 = getelementptr i8, ptr %19, i32 -20
  %41 = icmp eq ptr %40, null
  %42 = or i1 %39, %41
  br i1 %42, label %43, label %16

43:                                               ; preds = %38, %1
  %44 = load volatile ptr, ptr %10, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %43
  %47 = getelementptr i8, ptr %0, i32 -20
  %48 = load volatile i32, ptr @jiffies, align 64
  %49 = load i16, ptr %5, align 2
  %50 = zext i16 %49 to i32
  %51 = mul nuw nsw i32 %50, 3
  %52 = call i32 @__msecs_to_jiffies(i32 noundef %51) #13
  %53 = add i32 %52, %48
  %54 = call i32 @mod_timer(ptr noundef %47, i32 noundef %53) #13
  br label %55

55:                                               ; preds = %46, %43
  call void @mutex_unlock(ptr noundef %3) #13
  %56 = load volatile ptr, ptr %2, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = getelementptr i8, ptr %0, i32 -356
  %60 = load ptr, ptr %59, align 4
  %61 = call i32 @nfc_genl_llc_send_sdres(ptr noundef %60, ptr noundef nonnull %2) #13
  br label %62

62:                                               ; preds = %58, %55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfc_llcp_unregister_device(ptr noundef readnone %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @llcp_devices, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @llcp_devices
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nfc_llcp_local, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %2

10:                                               ; preds = %6
  %11 = icmp eq ptr %4, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %10
  tail call fastcc void @nfc_llcp_socket_release(ptr noundef nonnull %4, i1 noundef zeroext false, i32 noundef 6) #13
  %13 = getelementptr inbounds %struct.nfc_llcp_local, ptr %4, i32 0, i32 4
  %14 = tail call i32 @del_timer_sync(ptr noundef %13) #13
  %15 = getelementptr inbounds %struct.nfc_llcp_local, ptr %4, i32 0, i32 5
  tail call void @skb_queue_purge(ptr noundef %15) #13
  %16 = getelementptr inbounds %struct.nfc_llcp_local, ptr %4, i32 0, i32 6
  %17 = tail call zeroext i1 @cancel_work_sync(ptr noundef %16) #13
  %18 = getelementptr inbounds %struct.nfc_llcp_local, ptr %4, i32 0, i32 7
  %19 = tail call zeroext i1 @cancel_work_sync(ptr noundef %18) #13
  %20 = getelementptr inbounds %struct.nfc_llcp_local, ptr %4, i32 0, i32 9
  %21 = tail call zeroext i1 @cancel_work_sync(ptr noundef %20) #13
  %22 = getelementptr inbounds %struct.nfc_llcp_local, ptr %4, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  tail call void @kfree_skb_reason(ptr noundef %23, i32 noundef 0) #13
  %24 = getelementptr inbounds %struct.nfc_llcp_local, ptr %4, i32 0, i32 31
  %25 = tail call i32 @del_timer_sync(ptr noundef %24) #13
  %26 = getelementptr inbounds %struct.nfc_llcp_local, ptr %4, i32 0, i32 32
  %27 = tail call zeroext i1 @cancel_work_sync(ptr noundef %26) #13
  %28 = getelementptr inbounds %struct.nfc_llcp_local, ptr %4, i32 0, i32 30
  tail call void @nfc_llcp_free_sdp_tlv_list(ptr noundef %28) #13
  %29 = tail call i32 @nfc_llcp_local_put(ptr noundef nonnull %4)
  br label %30

30:                                               ; preds = %12, %10, %2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_init() local_unnamed_addr #8 section ".init.text" {
  %1 = tail call i32 @nfc_llcp_sock_init() #14
  ret i32 %1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @nfc_llcp_sock_init() local_unnamed_addr #5 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfc_llcp_exit() local_unnamed_addr #0 {
  tail call void @nfc_llcp_sock_exit() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_llcp_sock_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_llcp_build_tlv(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_llcp_accept_unlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_unlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llcp_send_symm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_data_exchange(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nfc_llcp_rx_skb(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.hlist_head, align 4
  %4 = alloca %struct.hlist_head, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = load i8, ptr %6, align 1
  %8 = shl i8 %7, 2
  %9 = and i8 %8, 12
  %10 = getelementptr i8, ptr %6, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = lshr i8 %11, 6
  %13 = or i8 %9, %12
  %14 = trunc i8 %13 to i4
  switch i4 %14, label %788 [
    i4 -2, label %598
    i4 2, label %742
    i4 3, label %15
    i4 4, label %52
    i4 5, label %245
    i4 6, label %311
    i4 7, label %394
    i4 -7, label %457
    i4 -4, label %598
    i4 -3, label %598
  ]

15:                                               ; preds = %2
  %16 = lshr i8 %7, 2
  %17 = and i8 %11, 63
  %18 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  store i8 %16, ptr %18, align 1
  %19 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 1
  store i8 %17, ptr %19, align 1
  %20 = tail call fastcc ptr @nfc_llcp_sock_get(ptr noundef %0, i8 noundef zeroext %16, i8 noundef zeroext 1) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %788, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.sock, ptr %20, i32 0, i32 45
  %24 = load i16, ptr %23, align 2
  %25 = icmp eq i16 %24, 2
  br i1 %25, label %26, label %788

26:                                               ; preds = %22
  %27 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef 2) #13
  %28 = tail call i32 @sock_queue_rcv_skb(ptr noundef nonnull %20, ptr noundef %1) #13
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #13, !srcloc !8
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 1, ptr elementtype(i32) %31) #13, !srcloc !9
  %33 = extractvalue { i32, i32, i32 } %32, 0
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35, !prof !10

35:                                               ; preds = %30
  %36 = add i32 %33, 1
  %37 = or i32 %36, %33
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %43, label %39, !prof !11

39:                                               ; preds = %35, %30
  %40 = phi i32 [ 2, %30 ], [ 1, %35 ]
  tail call void @refcount_warn_saturate(ptr noundef %31, i32 noundef %40) #13
  br label %43

41:                                               ; preds = %26
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.nfc_llcp_recv_ui) #14
  br label %43

43:                                               ; preds = %41, %39, %35
  %44 = getelementptr inbounds %struct.sock_common, ptr %20, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #13, !srcloc !8
  %45 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #13, !srcloc !18
  %46 = extractvalue { i32, i32, i32 } %45, 0
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = icmp sgt i32 %46, 0
  br i1 %49, label %788, label %50, !prof !11

50:                                               ; preds = %48
  tail call void @refcount_warn_saturate(ptr noundef %44, i32 noundef 3) #13
  br label %788

51:                                               ; preds = %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  tail call void @sk_free(ptr noundef nonnull %20) #13
  br label %788

52:                                               ; preds = %2
  %53 = lshr i8 %7, 2
  %54 = and i8 %11, 63
  %55 = icmp eq i8 %53, 1
  br i1 %55, label %63, label %56

56:                                               ; preds = %52
  %57 = tail call fastcc ptr @nfc_llcp_sock_get(ptr noundef %0, i8 noundef zeroext %53, i8 noundef zeroext 1) #13
  %58 = icmp eq ptr %57, null
  br i1 %58, label %242, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.sock_common, ptr %57, i32 0, i32 4
  %61 = load volatile i8, ptr %60, align 2
  %62 = icmp eq i8 %61, 6
  br i1 %62, label %101, label %242

63:                                               ; preds = %52
  %64 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %65 = load i32, ptr %64, align 8
  %66 = add i32 %65, -2
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %242, label %68

68:                                               ; preds = %63
  %69 = getelementptr i8, ptr %6, i32 2
  br label %70

70:                                               ; preds = %77, %68
  %71 = phi i32 [ %80, %77 ], [ 0, %68 ]
  %72 = phi ptr [ %81, %77 ], [ %69, %68 ]
  %73 = load i8, ptr %72, align 1
  %74 = getelementptr i8, ptr %72, i32 1
  %75 = load i8, ptr %74, align 1
  %76 = icmp eq i8 %73, 6
  br i1 %76, label %83, label %77

77:                                               ; preds = %70
  %78 = zext i8 %75 to i32
  %79 = add nuw nsw i32 %78, 2
  %80 = add i32 %79, %71
  %81 = getelementptr i8, ptr %72, i32 %79
  %82 = icmp ult i32 %80, %66
  br i1 %82, label %70, label %242

83:                                               ; preds = %70
  %84 = getelementptr i8, ptr %72, i32 2
  %85 = icmp eq ptr %84, null
  br i1 %85, label %242, label %86

86:                                               ; preds = %83
  %87 = zext i8 %75 to i32
  %88 = tail call fastcc ptr @nfc_llcp_sock_from_sn(ptr noundef %0, ptr noundef nonnull %84, i32 noundef %87) #13
  %89 = icmp eq ptr %88, null
  br i1 %89, label %242, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.sock_common, ptr %88, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %91) #13, !srcloc !8
  %92 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %91, ptr %91, i32 1, ptr elementtype(i32) %91) #13, !srcloc !9
  %93 = extractvalue { i32, i32, i32 } %92, 0
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %99, label %95, !prof !10

95:                                               ; preds = %90
  %96 = add i32 %93, 1
  %97 = or i32 %96, %93
  %98 = icmp sgt i32 %97, -1
  br i1 %98, label %101, label %99, !prof !11

99:                                               ; preds = %95, %90
  %100 = phi i32 [ 2, %90 ], [ 1, %95 ]
  tail call void @refcount_warn_saturate(ptr noundef %91, i32 noundef %100) #13
  br label %101

101:                                              ; preds = %99, %95, %59
  %102 = phi ptr [ %57, %59 ], [ %88, %95 ], [ %88, %99 ]
  tail call void @lock_sock_nested(ptr noundef nonnull %102, i32 noundef 0) #13
  %103 = getelementptr inbounds %struct.sock, ptr %102, i32 0, i32 53
  %104 = load volatile i32, ptr %103, align 4
  %105 = getelementptr inbounds %struct.sock, ptr %102, i32 0, i32 54
  %106 = load volatile i32, ptr %105, align 8
  %107 = icmp ugt i32 %104, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %101
  tail call void @release_sock(ptr noundef nonnull %102) #13
  %109 = getelementptr inbounds %struct.sock_common, ptr %102, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %109) #13, !srcloc !8
  %110 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %109, ptr %109, i32 1, ptr elementtype(i32) %109) #13, !srcloc !18
  %111 = extractvalue { i32, i32, i32 } %110, 0
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %116, label %113

113:                                              ; preds = %108
  %114 = icmp sgt i32 %111, 0
  br i1 %114, label %242, label %115, !prof !11

115:                                              ; preds = %113
  tail call void @refcount_warn_saturate(ptr noundef %109, i32 noundef 3) #13
  br label %242

116:                                              ; preds = %108
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  tail call void @sk_free(ptr noundef nonnull %102) #13
  br label %242

117:                                              ; preds = %101
  %118 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %102, i32 0, i32 5
  %119 = load i8, ptr %118, align 8
  %120 = icmp eq i8 %119, 65
  br i1 %120, label %121, label %142

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %122) #13
  %123 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 17
  %124 = tail call i32 @_find_first_zero_bit_le(ptr noundef %123, i32 noundef 16) #13
  %125 = and i32 %124, 255
  %126 = icmp eq i32 %125, 16
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  tail call void @mutex_unlock(ptr noundef %122) #13
  br label %132

128:                                              ; preds = %121
  tail call void @_set_bit(i32 noundef %125, ptr noundef %123) #13
  tail call void @mutex_unlock(ptr noundef %122) #13
  %129 = trunc i32 %124 to i8
  %130 = add i8 %129, 16
  %131 = icmp eq i8 %130, -1
  br i1 %131, label %132, label %141

132:                                              ; preds = %128, %127
  tail call void @release_sock(ptr noundef nonnull %102) #13
  %133 = getelementptr inbounds %struct.sock_common, ptr %102, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %133) #13, !srcloc !8
  %134 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %133, ptr %133, i32 1, ptr elementtype(i32) %133) #13, !srcloc !18
  %135 = extractvalue { i32, i32, i32 } %134, 0
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %140, label %137

137:                                              ; preds = %132
  %138 = icmp sgt i32 %135, 0
  br i1 %138, label %242, label %139, !prof !11

139:                                              ; preds = %137
  tail call void @refcount_warn_saturate(ptr noundef %133, i32 noundef 3) #13
  br label %242

140:                                              ; preds = %132
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  tail call void @sk_free(ptr noundef nonnull %102) #13
  br label %242

141:                                              ; preds = %128
  store i8 %130, ptr %118, align 8
  br label %142

142:                                              ; preds = %141, %117
  %143 = getelementptr inbounds %struct.sock, ptr %102, i32 0, i32 45
  %144 = load i16, ptr %143, align 2
  %145 = zext i16 %144 to i32
  %146 = tail call ptr @nfc_llcp_sock_alloc(ptr noundef null, i32 noundef %145, i32 noundef 2592, i32 noundef 0) #13
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %157

148:                                              ; preds = %142
  tail call void @release_sock(ptr noundef nonnull %102) #13
  %149 = getelementptr inbounds %struct.sock_common, ptr %102, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %149) #13, !srcloc !8
  %150 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %149, ptr %149, i32 1, ptr elementtype(i32) %149) #13, !srcloc !18
  %151 = extractvalue { i32, i32, i32 } %150, 0
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %156, label %153

153:                                              ; preds = %148
  %154 = icmp sgt i32 %151, 0
  br i1 %154, label %242, label %155, !prof !11

155:                                              ; preds = %153
  tail call void @refcount_warn_saturate(ptr noundef %149, i32 noundef 3) #13
  br label %242

156:                                              ; preds = %148
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  tail call void @sk_free(ptr noundef nonnull %102) #13
  br label %242

157:                                              ; preds = %142
  %158 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 1
  %159 = load ptr, ptr %158, align 4
  %160 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %146, i32 0, i32 1
  store ptr %159, ptr %160, align 8
  %161 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %161) #13, !srcloc !8
  %162 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %161, ptr %161, i32 1, ptr elementtype(i32) %161) #13, !srcloc !9
  %163 = extractvalue { i32, i32, i32 } %162, 0
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %169, label %165, !prof !10

165:                                              ; preds = %157
  %166 = add i32 %163, 1
  %167 = or i32 %166, %163
  %168 = icmp sgt i32 %167, -1
  br i1 %168, label %171, label %169, !prof !11

169:                                              ; preds = %165, %157
  %170 = phi i32 [ 2, %157 ], [ 1, %165 ]
  tail call void @refcount_warn_saturate(ptr noundef %161, i32 noundef %170) #13
  br label %171

171:                                              ; preds = %169, %165
  %172 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %146, i32 0, i32 2
  store ptr %0, ptr %172, align 4
  %173 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %102, i32 0, i32 9
  %174 = load i8, ptr %173, align 4
  %175 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %146, i32 0, i32 9
  store i8 %174, ptr %175, align 4
  %176 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %102, i32 0, i32 10
  %177 = load i16, ptr %176, align 2
  %178 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %146, i32 0, i32 10
  store i16 %177, ptr %178, align 2
  %179 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %102, i32 0, i32 4
  %180 = load i32, ptr %179, align 4
  %181 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %146, i32 0, i32 4
  store i32 %180, ptr %181, align 4
  %182 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %146, i32 0, i32 6
  store i8 %54, ptr %182, align 1
  %183 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 10
  %184 = load i32, ptr %183, align 4
  %185 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %146, i32 0, i32 3
  store i32 %184, ptr %185, align 8
  %186 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %146, i32 0, i32 22
  store ptr %102, ptr %186, align 4
  %187 = load i8, ptr %118, align 8
  %188 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %146, i32 0, i32 5
  store i8 %187, ptr %188, align 8
  %189 = load i8, ptr %118, align 8
  %190 = and i8 %189, -16
  %191 = icmp eq i8 %190, 16
  br i1 %191, label %192, label %199

192:                                              ; preds = %171
  %193 = zext i8 %189 to i32
  %194 = add nsw i32 %193, -16
  %195 = getelementptr %struct.nfc_llcp_local, ptr %0, i32 0, i32 19, i32 %194
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %195) #13, !srcloc !8
  %196 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %195, ptr %195, i32 1, ptr elementtype(i32) %195) #13, !srcloc !29
  %197 = load i8, ptr %118, align 8
  %198 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %146, i32 0, i32 18
  store i8 %197, ptr %198, align 1
  br label %199

199:                                              ; preds = %192, %171
  %200 = load ptr, ptr %5, align 4
  %201 = getelementptr i8, ptr %200, i32 2
  %202 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %203 = load i32, ptr %202, align 8
  %204 = trunc i32 %203 to i16
  %205 = add i16 %204, -2
  %206 = tail call i32 @nfc_llcp_parse_connection_tlv(ptr noundef nonnull %146, ptr noundef %201, i16 noundef zeroext %205) #13
  %207 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 34
  %208 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 34, i32 1
  tail call void @_raw_write_lock(ptr noundef %208) #13
  %209 = getelementptr inbounds %struct.sock_common, ptr %146, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %209) #13, !srcloc !8
  %210 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %209, ptr %209, i32 1, ptr elementtype(i32) %209) #13, !srcloc !9
  %211 = extractvalue { i32, i32, i32 } %210, 0
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %217, label %213, !prof !10

213:                                              ; preds = %199
  %214 = add i32 %211, 1
  %215 = or i32 %214, %211
  %216 = icmp sgt i32 %215, -1
  br i1 %216, label %219, label %217, !prof !11

217:                                              ; preds = %213, %199
  %218 = phi i32 [ 2, %199 ], [ 1, %213 ]
  tail call void @refcount_warn_saturate(ptr noundef %209, i32 noundef %218) #13
  br label %219

219:                                              ; preds = %217, %213
  %220 = getelementptr inbounds %struct.sock_common, ptr %146, i32 0, i32 15
  %221 = load ptr, ptr %207, align 4
  store volatile ptr %221, ptr %220, align 4
  %222 = icmp eq ptr %221, null
  br i1 %222, label %225, label %223

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.hlist_node, ptr %221, i32 0, i32 1
  store volatile ptr %220, ptr %224, align 4
  br label %225

225:                                              ; preds = %223, %219
  store volatile ptr %220, ptr %207, align 4
  %226 = getelementptr inbounds %struct.sock_common, ptr %146, i32 0, i32 15, i32 0, i32 1
  store volatile ptr %207, ptr %226, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %208, i32 0) #13, !srcloc !13
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !16
  tail call void @nfc_llcp_accept_enqueue(ptr noundef nonnull %102, ptr noundef nonnull %146) #13
  %227 = load ptr, ptr %158, align 4
  %228 = load i32, ptr %227, align 8
  %229 = tail call ptr @nfc_get_device(i32 noundef %228) #13
  %230 = getelementptr inbounds %struct.sock_common, ptr %146, i32 0, i32 4
  store volatile i8 1, ptr %230, align 2
  %231 = getelementptr inbounds %struct.sock, ptr %102, i32 0, i32 76
  %232 = load ptr, ptr %231, align 8
  tail call void %232(ptr noundef nonnull %102) #13
  %233 = tail call i32 @nfc_llcp_send_cc(ptr noundef nonnull %146) #13
  tail call void @release_sock(ptr noundef nonnull %102) #13
  %234 = getelementptr inbounds %struct.sock_common, ptr %102, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %234) #13, !srcloc !8
  %235 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %234, ptr %234, i32 1, ptr elementtype(i32) %234) #13, !srcloc !18
  %236 = extractvalue { i32, i32, i32 } %235, 0
  %237 = icmp eq i32 %236, 1
  br i1 %237, label %241, label %238

238:                                              ; preds = %225
  %239 = icmp sgt i32 %236, 0
  br i1 %239, label %788, label %240, !prof !11

240:                                              ; preds = %238
  tail call void @refcount_warn_saturate(ptr noundef %234, i32 noundef 3) #13
  br label %788

241:                                              ; preds = %225
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  tail call void @sk_free(ptr noundef nonnull %102) #13
  br label %788

242:                                              ; preds = %156, %155, %153, %140, %139, %137, %116, %115, %113, %86, %83, %77, %63, %59, %56
  %243 = phi i8 [ 2, %59 ], [ 2, %56 ], [ 3, %113 ], [ 3, %115 ], [ 3, %116 ], [ 3, %153 ], [ 3, %155 ], [ 3, %156 ], [ 2, %83 ], [ 2, %63 ], [ 3, %137 ], [ 3, %139 ], [ 3, %140 ], [ 2, %86 ], [ 2, %77 ]
  %244 = tail call i32 @nfc_llcp_send_dm(ptr noundef %0, i8 noundef zeroext %53, i8 noundef zeroext %54, i8 noundef zeroext %243) #13
  br label %788

245:                                              ; preds = %2
  %246 = lshr i8 %7, 2
  %247 = and i8 %11, 63
  %248 = icmp ult i8 %7, 4
  %249 = icmp eq i8 %247, 0
  %250 = select i1 %248, i1 %249, i1 false
  br i1 %250, label %251, label %255

251:                                              ; preds = %245
  %252 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 1
  %253 = load ptr, ptr %252, align 4
  %254 = tail call i32 @nfc_dep_link_down(ptr noundef %253) #13
  br label %788

255:                                              ; preds = %245
  %256 = tail call fastcc ptr @nfc_llcp_sock_get(ptr noundef %0, i8 noundef zeroext %246, i8 noundef zeroext %247) #13
  %257 = icmp eq ptr %256, null
  br i1 %257, label %258, label %260

258:                                              ; preds = %255
  %259 = tail call i32 @nfc_llcp_send_dm(ptr noundef %0, i8 noundef zeroext %246, i8 noundef zeroext %247, i8 noundef zeroext 1) #13
  br label %788

260:                                              ; preds = %255
  tail call void @lock_sock_nested(ptr noundef nonnull %256, i32 noundef 0) #13
  %261 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %256, i32 0, i32 2
  %262 = load ptr, ptr %261, align 4
  %263 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %256, i32 0, i32 19
  tail call void @skb_queue_purge(ptr noundef %263) #13
  %264 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %256, i32 0, i32 20
  tail call void @skb_queue_purge(ptr noundef %264) #13
  %265 = icmp eq ptr %262, null
  br i1 %265, label %279, label %266

266:                                              ; preds = %260
  %267 = getelementptr inbounds %struct.nfc_llcp_local, ptr %262, i32 0, i32 5
  %268 = load ptr, ptr %267, align 4
  %269 = icmp eq ptr %268, %267
  br i1 %269, label %279, label %270

270:                                              ; preds = %277, %266
  %271 = phi ptr [ %272, %277 ], [ %268, %266 ]
  %272 = load ptr, ptr %271, align 8
  %273 = getelementptr inbounds %struct.sk_buff, ptr %271, i32 0, i32 1
  %274 = load ptr, ptr %273, align 4
  %275 = icmp eq ptr %274, %256
  br i1 %275, label %276, label %277

276:                                              ; preds = %270
  tail call void @skb_unlink(ptr noundef %271, ptr noundef %267) #13
  tail call void @kfree_skb_reason(ptr noundef %271, i32 noundef 0) #13
  br label %277

277:                                              ; preds = %276, %270
  %278 = icmp eq ptr %272, %267
  br i1 %278, label %279, label %270

279:                                              ; preds = %277, %266, %260
  %280 = getelementptr inbounds %struct.sock_common, ptr %256, i32 0, i32 4
  %281 = load volatile i8, ptr %280, align 2
  %282 = icmp eq i8 %281, 4
  br i1 %282, label %283, label %292

283:                                              ; preds = %279
  tail call void @release_sock(ptr noundef nonnull %256) #13
  %284 = getelementptr inbounds %struct.sock_common, ptr %256, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %284) #13, !srcloc !8
  %285 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %284, ptr %284, i32 1, ptr elementtype(i32) %284) #13, !srcloc !18
  %286 = extractvalue { i32, i32, i32 } %285, 0
  %287 = icmp eq i32 %286, 1
  br i1 %287, label %291, label %288

288:                                              ; preds = %283
  %289 = icmp sgt i32 %286, 0
  br i1 %289, label %292, label %290, !prof !11

290:                                              ; preds = %288
  tail call void @refcount_warn_saturate(ptr noundef %284, i32 noundef 3) #13
  br label %292

291:                                              ; preds = %283
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  tail call void @sk_free(ptr noundef nonnull %256) #13
  br label %292

292:                                              ; preds = %291, %290, %288, %279
  %293 = load volatile i8, ptr %280, align 2
  %294 = icmp eq i8 %293, 1
  br i1 %294, label %295, label %301

295:                                              ; preds = %292
  %296 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 1
  %297 = load ptr, ptr %296, align 4
  %298 = getelementptr inbounds %struct.nfc_dev, ptr %297, i32 0, i32 5
  tail call void @put_device(ptr noundef %298) #13
  store volatile i8 4, ptr %280, align 2
  %299 = getelementptr inbounds %struct.sock, ptr %256, i32 0, i32 75
  %300 = load ptr, ptr %299, align 4
  tail call void %300(ptr noundef nonnull %256) #13
  br label %301

301:                                              ; preds = %295, %292
  %302 = tail call i32 @nfc_llcp_send_dm(ptr noundef %0, i8 noundef zeroext %246, i8 noundef zeroext %247, i8 noundef zeroext 0) #13
  tail call void @release_sock(ptr noundef nonnull %256) #13
  %303 = getelementptr inbounds %struct.sock_common, ptr %256, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %303) #13, !srcloc !8
  %304 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %303, ptr %303, i32 1, ptr elementtype(i32) %303) #13, !srcloc !18
  %305 = extractvalue { i32, i32, i32 } %304, 0
  %306 = icmp eq i32 %305, 1
  br i1 %306, label %310, label %307

307:                                              ; preds = %301
  %308 = icmp sgt i32 %305, 0
  br i1 %308, label %788, label %309, !prof !11

309:                                              ; preds = %307
  tail call void @refcount_warn_saturate(ptr noundef %303, i32 noundef 3) #13
  br label %788

310:                                              ; preds = %301
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  tail call void @sk_free(ptr noundef nonnull %256) #13
  br label %788

311:                                              ; preds = %2
  %312 = lshr i8 %7, 2
  %313 = and i8 %11, 63
  %314 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 35
  %315 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 35, i32 1
  tail call void @_raw_read_lock(ptr noundef %315) #13
  %316 = load ptr, ptr %314, align 4
  %317 = icmp eq ptr %316, null
  %318 = getelementptr i8, ptr %316, i32 -84
  %319 = icmp eq ptr %318, null
  %320 = or i1 %317, %319
  br i1 %320, label %344, label %321

321:                                              ; preds = %337, %311
  %322 = phi ptr [ %341, %337 ], [ %318, %311 ]
  %323 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %322, i32 0, i32 5
  %324 = load i8, ptr %323, align 8
  %325 = icmp eq i8 %324, %312
  br i1 %325, label %326, label %337

326:                                              ; preds = %321
  %327 = getelementptr inbounds %struct.sock_common, ptr %322, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %327) #13, !srcloc !8
  %328 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %327, ptr %327, i32 1, ptr elementtype(i32) %327) #13, !srcloc !9
  %329 = extractvalue { i32, i32, i32 } %328, 0
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %335, label %331, !prof !10

331:                                              ; preds = %326
  %332 = add i32 %329, 1
  %333 = or i32 %332, %329
  %334 = icmp sgt i32 %333, -1
  br i1 %334, label %344, label %335, !prof !11

335:                                              ; preds = %331, %326
  %336 = phi i32 [ 2, %326 ], [ 1, %331 ]
  tail call void @refcount_warn_saturate(ptr noundef %327, i32 noundef %336) #13
  br label %344

337:                                              ; preds = %321
  %338 = getelementptr inbounds %struct.sock_common, ptr %322, i32 0, i32 15
  %339 = load ptr, ptr %338, align 4
  %340 = icmp eq ptr %339, null
  %341 = getelementptr i8, ptr %339, i32 -84
  %342 = icmp eq ptr %341, null
  %343 = or i1 %340, %342
  br i1 %343, label %344, label %321

344:                                              ; preds = %337, %335, %331, %311
  %345 = phi ptr [ %322, %335 ], [ %322, %331 ], [ null, %311 ], [ null, %337 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %315) #13, !srcloc !8
  %346 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %315) #13, !srcloc !21
  %347 = extractvalue { i32, i32 } %346, 0
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %344
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !15
  br label %350

350:                                              ; preds = %349, %344
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !22
  %351 = icmp eq ptr %345, null
  br i1 %351, label %352, label %355

352:                                              ; preds = %350
  %353 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.nfc_llcp_recv_cc) #14
  %354 = tail call i32 @nfc_llcp_send_dm(ptr noundef %0, i8 noundef zeroext %312, i8 noundef zeroext %313, i8 noundef zeroext 1) #13
  br label %788

355:                                              ; preds = %350
  tail call void @nfc_llcp_sock_unlink(ptr noundef %314, ptr noundef nonnull %345) #13
  %356 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 34
  %357 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 34, i32 1
  tail call void @_raw_write_lock(ptr noundef %357) #13
  %358 = getelementptr inbounds %struct.sock_common, ptr %345, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %358) #13, !srcloc !8
  %359 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %358, ptr %358, i32 1, ptr elementtype(i32) %358) #13, !srcloc !9
  %360 = extractvalue { i32, i32, i32 } %359, 0
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %366, label %362, !prof !10

362:                                              ; preds = %355
  %363 = add i32 %360, 1
  %364 = or i32 %363, %360
  %365 = icmp sgt i32 %364, -1
  br i1 %365, label %368, label %366, !prof !11

366:                                              ; preds = %362, %355
  %367 = phi i32 [ 2, %355 ], [ 1, %362 ]
  tail call void @refcount_warn_saturate(ptr noundef %358, i32 noundef %367) #13
  br label %368

368:                                              ; preds = %366, %362
  %369 = getelementptr inbounds %struct.sock_common, ptr %345, i32 0, i32 15
  %370 = load ptr, ptr %356, align 4
  store volatile ptr %370, ptr %369, align 4
  %371 = icmp eq ptr %370, null
  br i1 %371, label %374, label %372

372:                                              ; preds = %368
  %373 = getelementptr inbounds %struct.hlist_node, ptr %370, i32 0, i32 1
  store volatile ptr %369, ptr %373, align 4
  br label %374

374:                                              ; preds = %372, %368
  store volatile ptr %369, ptr %356, align 4
  %375 = getelementptr inbounds %struct.sock_common, ptr %345, i32 0, i32 15, i32 0, i32 1
  store volatile ptr %356, ptr %375, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %357, i32 0) #13, !srcloc !13
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !16
  %376 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %345, i32 0, i32 6
  store i8 %313, ptr %376, align 1
  %377 = load ptr, ptr %5, align 4
  %378 = getelementptr i8, ptr %377, i32 2
  %379 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %380 = load i32, ptr %379, align 8
  %381 = trunc i32 %380 to i16
  %382 = add i16 %381, -2
  %383 = tail call i32 @nfc_llcp_parse_connection_tlv(ptr noundef nonnull %345, ptr noundef %378, i16 noundef zeroext %382) #13
  %384 = getelementptr inbounds %struct.sock_common, ptr %345, i32 0, i32 4
  store volatile i8 1, ptr %384, align 2
  %385 = getelementptr inbounds %struct.sock, ptr %345, i32 0, i32 75
  %386 = load ptr, ptr %385, align 4
  tail call void %386(ptr noundef nonnull %345) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %358) #13, !srcloc !8
  %387 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %358, ptr %358, i32 1, ptr elementtype(i32) %358) #13, !srcloc !18
  %388 = extractvalue { i32, i32, i32 } %387, 0
  %389 = icmp eq i32 %388, 1
  br i1 %389, label %393, label %390

390:                                              ; preds = %374
  %391 = icmp sgt i32 %388, 0
  br i1 %391, label %788, label %392, !prof !11

392:                                              ; preds = %390
  tail call void @refcount_warn_saturate(ptr noundef %358, i32 noundef 3) #13
  br label %788

393:                                              ; preds = %374
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  tail call void @sk_free(ptr noundef nonnull %345) #13
  br label %788

394:                                              ; preds = %2
  %395 = lshr i8 %7, 2
  %396 = getelementptr i8, ptr %6, i32 2
  %397 = load i8, ptr %396, align 1
  %398 = and i8 %397, -2
  %399 = icmp eq i8 %398, 2
  br i1 %399, label %400, label %438

400:                                              ; preds = %394
  %401 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 35
  %402 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 35, i32 1
  tail call void @_raw_read_lock(ptr noundef %402) #13
  %403 = load ptr, ptr %401, align 4
  %404 = icmp eq ptr %403, null
  %405 = getelementptr i8, ptr %403, i32 -84
  %406 = icmp eq ptr %405, null
  %407 = or i1 %404, %406
  br i1 %407, label %431, label %408

408:                                              ; preds = %424, %400
  %409 = phi ptr [ %428, %424 ], [ %405, %400 ]
  %410 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %409, i32 0, i32 5
  %411 = load i8, ptr %410, align 8
  %412 = icmp eq i8 %411, %395
  br i1 %412, label %413, label %424

413:                                              ; preds = %408
  %414 = getelementptr inbounds %struct.sock_common, ptr %409, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %414) #13, !srcloc !8
  %415 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %414, ptr %414, i32 1, ptr elementtype(i32) %414) #13, !srcloc !9
  %416 = extractvalue { i32, i32, i32 } %415, 0
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %422, label %418, !prof !10

418:                                              ; preds = %413
  %419 = add i32 %416, 1
  %420 = or i32 %419, %416
  %421 = icmp sgt i32 %420, -1
  br i1 %421, label %431, label %422, !prof !11

422:                                              ; preds = %418, %413
  %423 = phi i32 [ 2, %413 ], [ 1, %418 ]
  tail call void @refcount_warn_saturate(ptr noundef %414, i32 noundef %423) #13
  br label %431

424:                                              ; preds = %408
  %425 = getelementptr inbounds %struct.sock_common, ptr %409, i32 0, i32 15
  %426 = load ptr, ptr %425, align 4
  %427 = icmp eq ptr %426, null
  %428 = getelementptr i8, ptr %426, i32 -84
  %429 = icmp eq ptr %428, null
  %430 = or i1 %427, %429
  br i1 %430, label %431, label %408

431:                                              ; preds = %424, %422, %418, %400
  %432 = phi ptr [ %409, %422 ], [ %409, %418 ], [ null, %400 ], [ null, %424 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %402) #13, !srcloc !8
  %433 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %402) #13, !srcloc !21
  %434 = extractvalue { i32, i32 } %433, 0
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %436, label %437

436:                                              ; preds = %431
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !15
  br label %437

437:                                              ; preds = %436, %431
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !22
  br label %441

438:                                              ; preds = %394
  %439 = and i8 %11, 63
  %440 = tail call fastcc ptr @nfc_llcp_sock_get(ptr noundef %0, i8 noundef zeroext %395, i8 noundef zeroext %439) #13
  br label %441

441:                                              ; preds = %438, %437
  %442 = phi ptr [ %440, %438 ], [ %432, %437 ]
  %443 = icmp eq ptr %442, null
  br i1 %443, label %788, label %444

444:                                              ; preds = %441
  %445 = getelementptr inbounds %struct.sock, ptr %442, i32 0, i32 51
  store i32 6, ptr %445, align 4
  %446 = getelementptr inbounds %struct.sock_common, ptr %442, i32 0, i32 4
  store volatile i8 4, ptr %446, align 2
  %447 = getelementptr inbounds %struct.sock, ptr %442, i32 0, i32 75
  %448 = load ptr, ptr %447, align 4
  tail call void %448(ptr noundef nonnull %442) #13
  %449 = getelementptr inbounds %struct.sock_common, ptr %442, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %449) #13, !srcloc !8
  %450 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %449, ptr %449, i32 1, ptr elementtype(i32) %449) #13, !srcloc !18
  %451 = extractvalue { i32, i32, i32 } %450, 0
  %452 = icmp eq i32 %451, 1
  br i1 %452, label %456, label %453

453:                                              ; preds = %444
  %454 = icmp sgt i32 %451, 0
  br i1 %454, label %788, label %455, !prof !11

455:                                              ; preds = %453
  tail call void @refcount_warn_saturate(ptr noundef %449, i32 noundef 3) #13
  br label %788

456:                                              ; preds = %444
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  tail call void @sk_free(ptr noundef nonnull %442) #13
  br label %788

457:                                              ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4
  %458 = load i8, ptr %6, align 1
  %459 = load i8, ptr %10, align 1
  %460 = and i8 %459, 63
  %461 = and i8 %458, -4
  %462 = icmp ne i8 %461, 4
  %463 = icmp ne i8 %460, 1
  %464 = select i1 %462, i1 true, i1 %463
  br i1 %464, label %465, label %467

465:                                              ; preds = %457
  %466 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.nfc_llcp_recv_snl) #14
  br label %597

467:                                              ; preds = %457
  %468 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %469 = load i32, ptr %468, align 8
  %470 = add i32 %469, 65534
  %471 = and i32 %470, 65535
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %584, label %473

473:                                              ; preds = %467
  %474 = getelementptr i8, ptr %6, i32 2
  %475 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 29
  %476 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 30
  %477 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 3
  %478 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 17
  br label %479

479:                                              ; preds = %576, %473
  %480 = phi i32 [ 0, %473 ], [ %582, %576 ]
  %481 = phi ptr [ %474, %473 ], [ %581, %576 ]
  %482 = phi i32 [ 0, %473 ], [ %577, %576 ]
  %483 = load i8, ptr %481, align 1
  %484 = getelementptr i8, ptr %481, i32 1
  %485 = load i8, ptr %484, align 1
  switch i8 %483, label %573 [
    i8 8, label %486
    i8 9, label %534
  ]

486:                                              ; preds = %479
  %487 = getelementptr i8, ptr %481, i32 2
  %488 = load i8, ptr %487, align 1
  %489 = getelementptr i8, ptr %481, i32 3
  %490 = zext i8 %485 to i32
  %491 = add nsw i32 %490, -1
  %492 = icmp eq i32 %491, 14
  br i1 %492, label %493, label %496

493:                                              ; preds = %486
  %494 = call i32 @strncmp(ptr noundef %489, ptr noundef nonnull dereferenceable(15) @.str.16, i32 noundef 14) #13
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %518, label %496

496:                                              ; preds = %493, %486
  %497 = call fastcc ptr @nfc_llcp_sock_from_sn(ptr noundef %0, ptr noundef %489, i32 noundef %491) #13
  %498 = icmp eq ptr %497, null
  br i1 %498, label %518, label %499

499:                                              ; preds = %496
  %500 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %497, i32 0, i32 5
  %501 = load i8, ptr %500, align 8
  %502 = icmp eq i8 %501, 65
  br i1 %502, label %503, label %518

503:                                              ; preds = %499
  call void @mutex_lock(ptr noundef %477) #13
  %504 = call i32 @_find_first_zero_bit_le(ptr noundef %478, i32 noundef 16) #13
  %505 = and i32 %504, 255
  %506 = icmp eq i32 %505, 16
  br i1 %506, label %507, label %508

507:                                              ; preds = %503
  call void @mutex_unlock(ptr noundef %477) #13
  br label %518

508:                                              ; preds = %503
  call void @_set_bit(i32 noundef %505, ptr noundef %478) #13
  call void @mutex_unlock(ptr noundef %477) #13
  %509 = trunc i32 %504 to i8
  %510 = add i8 %509, 16
  %511 = icmp eq i8 %510, -1
  br i1 %511, label %518, label %512

512:                                              ; preds = %508
  %513 = zext i8 %510 to i32
  %514 = add nsw i32 %513, -16
  %515 = getelementptr %struct.nfc_llcp_local, ptr %0, i32 0, i32 19, i32 %514
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %515) #13, !srcloc !8
  %516 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %515, ptr %515, i32 1, ptr elementtype(i32) %515) #13, !srcloc !29
  store i8 %510, ptr %500, align 8
  %517 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %497, i32 0, i32 18
  store i8 %510, ptr %517, align 1
  br label %518

518:                                              ; preds = %512, %508, %507, %499, %496, %493
  %519 = phi i8 [ 1, %493 ], [ 0, %496 ], [ %501, %499 ], [ %510, %512 ], [ 0, %508 ], [ 0, %507 ]
  %520 = call ptr @nfc_llcp_build_sdres_tlv(i8 noundef zeroext %488, i8 noundef zeroext %519) #13
  %521 = icmp eq ptr %520, null
  br i1 %521, label %584, label %522

522:                                              ; preds = %518
  %523 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %520, i32 0, i32 1
  %524 = load i8, ptr %523, align 4
  %525 = zext i8 %524 to i32
  %526 = add i32 %482, %525
  %527 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %520, i32 0, i32 6
  %528 = load ptr, ptr %3, align 4
  store volatile ptr %528, ptr %527, align 4
  %529 = icmp eq ptr %528, null
  br i1 %529, label %532, label %530

530:                                              ; preds = %522
  %531 = getelementptr inbounds %struct.hlist_node, ptr %528, i32 0, i32 1
  store volatile ptr %527, ptr %531, align 4
  br label %532

532:                                              ; preds = %530, %522
  store volatile ptr %527, ptr %3, align 4
  %533 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %520, i32 0, i32 6, i32 1
  store volatile ptr %3, ptr %533, align 4
  br label %576

534:                                              ; preds = %479
  call void @mutex_lock(ptr noundef %475) #13
  %535 = load ptr, ptr %476, align 4
  %536 = icmp eq ptr %535, null
  %537 = getelementptr i8, ptr %535, i32 -20
  %538 = icmp eq ptr %537, null
  %539 = or i1 %536, %538
  br i1 %539, label %572, label %540

540:                                              ; preds = %534
  %541 = getelementptr i8, ptr %481, i32 2
  %542 = load i8, ptr %541, align 1
  br label %543

543:                                              ; preds = %565, %540
  %544 = phi ptr [ %537, %540 ], [ %569, %565 ]
  %545 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %544, i32 0, i32 3
  %546 = load i8, ptr %545, align 4
  %547 = icmp eq i8 %546, %542
  br i1 %547, label %548, label %565

548:                                              ; preds = %543
  %549 = getelementptr i8, ptr %481, i32 3
  %550 = load i8, ptr %549, align 1
  %551 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %544, i32 0, i32 4
  store i8 %550, ptr %551, align 1
  %552 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %544, i32 0, i32 6
  %553 = load ptr, ptr %552, align 4
  %554 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %544, i32 0, i32 6, i32 1
  %555 = load ptr, ptr %554, align 4
  store volatile ptr %553, ptr %555, align 4
  %556 = icmp eq ptr %553, null
  br i1 %556, label %559, label %557

557:                                              ; preds = %548
  %558 = getelementptr inbounds %struct.hlist_node, ptr %553, i32 0, i32 1
  store volatile ptr %555, ptr %558, align 4
  br label %559

559:                                              ; preds = %557, %548
  %560 = load ptr, ptr %4, align 4
  store volatile ptr %560, ptr %552, align 4
  %561 = icmp eq ptr %560, null
  br i1 %561, label %564, label %562

562:                                              ; preds = %559
  %563 = getelementptr inbounds %struct.hlist_node, ptr %560, i32 0, i32 1
  store volatile ptr %552, ptr %563, align 4
  br label %564

564:                                              ; preds = %562, %559
  store volatile ptr %552, ptr %4, align 4
  store volatile ptr %4, ptr %554, align 4
  br label %572

565:                                              ; preds = %543
  %566 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %544, i32 0, i32 6
  %567 = load ptr, ptr %566, align 4
  %568 = icmp eq ptr %567, null
  %569 = getelementptr i8, ptr %567, i32 -20
  %570 = icmp eq ptr %569, null
  %571 = or i1 %568, %570
  br i1 %571, label %572, label %543

572:                                              ; preds = %565, %564, %534
  call void @mutex_unlock(ptr noundef %475) #13
  br label %576

573:                                              ; preds = %479
  %574 = zext i8 %483 to i32
  %575 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.nfc_llcp_recv_snl, i32 noundef %574) #14
  br label %576

576:                                              ; preds = %573, %572, %532
  %577 = phi i32 [ %482, %573 ], [ %482, %572 ], [ %526, %532 ]
  %578 = zext i8 %485 to i32
  %579 = add nuw nsw i32 %578, 2
  %580 = add nuw nsw i32 %579, %480
  %581 = getelementptr i8, ptr %481, i32 %579
  %582 = and i32 %580, 65535
  %583 = icmp ult i32 %582, %471
  br i1 %583, label %479, label %584

584:                                              ; preds = %576, %518, %467
  %585 = phi i32 [ 0, %467 ], [ %577, %576 ], [ %482, %518 ]
  %586 = load volatile ptr, ptr %4, align 4
  %587 = icmp eq ptr %586, null
  br i1 %587, label %592, label %588

588:                                              ; preds = %584
  %589 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 1
  %590 = load ptr, ptr %589, align 4
  %591 = call i32 @nfc_genl_llc_send_sdres(ptr noundef %590, ptr noundef nonnull %4) #13
  br label %592

592:                                              ; preds = %588, %584
  %593 = load volatile ptr, ptr %3, align 4
  %594 = icmp eq ptr %593, null
  br i1 %594, label %597, label %595

595:                                              ; preds = %592
  %596 = call i32 @nfc_llcp_send_snl_sdres(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %585) #13
  br label %597

597:                                              ; preds = %595, %592, %465
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %788

598:                                              ; preds = %2, %2, %2
  %599 = lshr i8 %7, 2
  %600 = and i8 %11, 63
  %601 = getelementptr i8, ptr %6, i32 2
  %602 = load i8, ptr %601, align 1
  %603 = lshr i8 %602, 4
  %604 = and i8 %602, 15
  %605 = tail call fastcc ptr @nfc_llcp_sock_get(ptr noundef %0, i8 noundef zeroext %599, i8 noundef zeroext %600) #13
  %606 = icmp eq ptr %605, null
  br i1 %606, label %607, label %609

607:                                              ; preds = %598
  %608 = tail call i32 @nfc_llcp_send_dm(ptr noundef %0, i8 noundef zeroext %599, i8 noundef zeroext %600, i8 noundef zeroext 1) #13
  br label %788

609:                                              ; preds = %598
  tail call void @lock_sock_nested(ptr noundef nonnull %605, i32 noundef 0) #13
  %610 = getelementptr inbounds %struct.sock_common, ptr %605, i32 0, i32 4
  %611 = load volatile i8, ptr %610, align 2
  %612 = icmp eq i8 %611, 4
  br i1 %612, label %613, label %622

613:                                              ; preds = %609
  tail call void @release_sock(ptr noundef nonnull %605) #13
  %614 = getelementptr inbounds %struct.sock_common, ptr %605, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %614) #13, !srcloc !8
  %615 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %614, ptr %614, i32 1, ptr elementtype(i32) %614) #13, !srcloc !18
  %616 = extractvalue { i32, i32, i32 } %615, 0
  %617 = icmp eq i32 %616, 1
  br i1 %617, label %621, label %618

618:                                              ; preds = %613
  %619 = icmp sgt i32 %616, 0
  br i1 %619, label %622, label %620, !prof !11

620:                                              ; preds = %618
  tail call void @refcount_warn_saturate(ptr noundef %614, i32 noundef 3) #13
  br label %622

621:                                              ; preds = %613
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  tail call void @sk_free(ptr noundef nonnull %605) #13
  br label %622

622:                                              ; preds = %621, %620, %618, %609
  %623 = icmp eq i8 %13, 12
  br i1 %623, label %624, label %650

624:                                              ; preds = %622
  %625 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %605, i32 0, i32 15
  %626 = load i8, ptr %625, align 2
  %627 = icmp eq i8 %603, %626
  br i1 %627, label %628, label %631

628:                                              ; preds = %624
  %629 = add nuw nsw i8 %603, 1
  %630 = and i8 %629, 15
  store i8 %630, ptr %625, align 2
  br label %633

631:                                              ; preds = %624
  %632 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.nfc_llcp_recv_hdlc) #14
  br label %633

633:                                              ; preds = %631, %628
  %634 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef 3) #13
  %635 = tail call i32 @sock_queue_rcv_skb(ptr noundef nonnull %605, ptr noundef %1) #13
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %637, label %648

637:                                              ; preds = %633
  %638 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %638) #13, !srcloc !8
  %639 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %638, ptr %638, i32 1, ptr elementtype(i32) %638) #13, !srcloc !9
  %640 = extractvalue { i32, i32, i32 } %639, 0
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %646, label %642, !prof !10

642:                                              ; preds = %637
  %643 = add i32 %640, 1
  %644 = or i32 %643, %640
  %645 = icmp sgt i32 %644, -1
  br i1 %645, label %650, label %646, !prof !11

646:                                              ; preds = %642, %637
  %647 = phi i32 [ 2, %637 ], [ 1, %642 ]
  tail call void @refcount_warn_saturate(ptr noundef %638, i32 noundef %647) #13
  br label %650

648:                                              ; preds = %633
  %649 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.nfc_llcp_recv_hdlc) #14
  br label %650

650:                                              ; preds = %648, %646, %642, %622
  %651 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %605, i32 0, i32 14
  %652 = load i8, ptr %651, align 1
  %653 = icmp eq i8 %652, %604
  br i1 %653, label %679, label %654

654:                                              ; preds = %650
  store i8 %604, ptr %651, align 1
  %655 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %605, i32 0, i32 20
  %656 = load ptr, ptr %655, align 4
  br label %657

657:                                              ; preds = %660, %654
  %658 = phi ptr [ %656, %654 ], [ %661, %660 ]
  %659 = icmp eq ptr %658, %655
  br i1 %659, label %668, label %660

660:                                              ; preds = %657
  %661 = load ptr, ptr %658, align 8
  %662 = getelementptr inbounds %struct.sk_buff, ptr %658, i32 0, i32 17
  %663 = load ptr, ptr %662, align 4
  %664 = getelementptr i8, ptr %663, i32 2
  %665 = load i8, ptr %664, align 1
  %666 = lshr i8 %665, 4
  tail call void @skb_unlink(ptr noundef %658, ptr noundef %655) #13
  tail call void @kfree_skb_reason(ptr noundef %658, i32 noundef 0) #13
  %667 = icmp eq i8 %666, %604
  br i1 %667, label %668, label %657

668:                                              ; preds = %660, %657
  %669 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %605, i32 0, i32 20, i32 0, i32 0, i32 1
  %670 = load ptr, ptr %669, align 4
  %671 = icmp eq ptr %670, %655
  br i1 %671, label %679, label %672

672:                                              ; preds = %668
  %673 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 5
  br label %674

674:                                              ; preds = %674, %672
  %675 = phi ptr [ %670, %672 ], [ %677, %674 ]
  %676 = getelementptr inbounds %struct.anon.43, ptr %675, i32 0, i32 1
  %677 = load ptr, ptr %676, align 4
  tail call void @skb_unlink(ptr noundef %675, ptr noundef %655) #13
  tail call void @skb_queue_head(ptr noundef %673, ptr noundef %675) #13
  %678 = icmp eq ptr %677, %655
  br i1 %678, label %679, label %674

679:                                              ; preds = %674, %668, %650
  switch i4 %14, label %684 [
    i4 -3, label %680
    i4 -2, label %682
  ]

680:                                              ; preds = %679
  %681 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %605, i32 0, i32 17
  store i8 1, ptr %681, align 8
  br label %688

682:                                              ; preds = %679
  %683 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %605, i32 0, i32 17
  store i8 0, ptr %683, align 8
  br label %727

684:                                              ; preds = %679
  %685 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %605, i32 0, i32 17
  %686 = load i8, ptr %685, align 8
  %687 = icmp eq i8 %686, 0
  br i1 %687, label %727, label %688

688:                                              ; preds = %684, %680
  %689 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %605, i32 0, i32 20, i32 1
  %690 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %605, i32 0, i32 19
  %691 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %605, i32 0, i32 17
  %692 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %605, i32 0, i32 2
  %693 = load ptr, ptr %692, align 4
  %694 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %605, i32 0, i32 11
  %695 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %605, i32 0, i32 13
  %696 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %605, i32 0, i32 15
  %697 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %605, i32 0, i32 16
  %698 = getelementptr inbounds %struct.nfc_llcp_local, ptr %693, i32 0, i32 5
  br label %699

699:                                              ; preds = %708, %688
  %700 = phi i32 [ 0, %688 ], [ %724, %708 ]
  %701 = load i32, ptr %689, align 4
  %702 = load i8, ptr %694, align 8
  %703 = zext i8 %702 to i32
  %704 = icmp ult i32 %701, %703
  br i1 %704, label %705, label %727

705:                                              ; preds = %699
  %706 = tail call ptr @skb_dequeue(ptr noundef %690) #13
  %707 = icmp eq ptr %706, null
  br i1 %707, label %727, label %708

708:                                              ; preds = %705
  %709 = load i8, ptr %695, align 4
  %710 = shl i8 %709, 4
  %711 = load i8, ptr %696, align 2
  %712 = or i8 %710, %711
  %713 = getelementptr inbounds %struct.sk_buff, ptr %706, i32 0, i32 17
  %714 = load ptr, ptr %713, align 4
  %715 = getelementptr i8, ptr %714, i32 2
  store i8 %712, ptr %715, align 1
  %716 = load i8, ptr %695, align 4
  %717 = add i8 %716, 1
  %718 = and i8 %717, 15
  store i8 %718, ptr %695, align 4
  %719 = load i8, ptr %696, align 2
  %720 = zext i8 %719 to i16
  %721 = add nsw i16 %720, -1
  %722 = srem i16 %721, 16
  %723 = trunc i16 %722 to i8
  store i8 %723, ptr %697, align 1
  tail call void @skb_queue_tail(ptr noundef %698, ptr noundef nonnull %706) #13
  %724 = add i32 %700, 1
  %725 = load i8, ptr %691, align 8
  %726 = icmp eq i8 %725, 0
  br i1 %726, label %727, label %699

727:                                              ; preds = %708, %705, %699, %684, %682
  %728 = phi i32 [ 0, %684 ], [ 0, %682 ], [ %700, %699 ], [ %724, %708 ], [ %700, %705 ]
  %729 = icmp eq i32 %728, 0
  %730 = select i1 %729, i1 %623, i1 false
  br i1 %730, label %731, label %733

731:                                              ; preds = %727
  %732 = tail call i32 @nfc_llcp_send_rr(ptr noundef nonnull %605) #13
  br label %733

733:                                              ; preds = %731, %727
  tail call void @release_sock(ptr noundef nonnull %605) #13
  %734 = getelementptr inbounds %struct.sock_common, ptr %605, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %734) #13, !srcloc !8
  %735 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %734, ptr %734, i32 1, ptr elementtype(i32) %734) #13, !srcloc !18
  %736 = extractvalue { i32, i32, i32 } %735, 0
  %737 = icmp eq i32 %736, 1
  br i1 %737, label %741, label %738

738:                                              ; preds = %733
  %739 = icmp sgt i32 %736, 0
  br i1 %739, label %788, label %740, !prof !11

740:                                              ; preds = %738
  tail call void @refcount_warn_saturate(ptr noundef %734, i32 noundef 3) #13
  br label %788

741:                                              ; preds = %733
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  tail call void @sk_free(ptr noundef %605) #13
  br label %788

742:                                              ; preds = %2
  %743 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %744 = load i32, ptr %743, align 8
  %745 = icmp ult i32 %744, 3
  br i1 %745, label %746, label %748

746:                                              ; preds = %742
  %747 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.nfc_llcp_recv_agf) #14
  br label %788

748:                                              ; preds = %742
  %749 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef 2) #13
  %750 = load i32, ptr %743, align 8
  %751 = icmp ugt i32 %750, 2
  br i1 %751, label %752, label %788

752:                                              ; preds = %784, %748
  %753 = load ptr, ptr %5, align 4
  %754 = load i8, ptr %753, align 1
  %755 = zext i8 %754 to i32
  %756 = shl nuw nsw i32 %755, 8
  %757 = getelementptr i8, ptr %753, i32 1
  %758 = load i8, ptr %757, align 1
  %759 = zext i8 %758 to i32
  %760 = or i32 %756, %759
  %761 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef 2) #13
  %762 = icmp ult i32 %760, 2
  br i1 %762, label %766, label %763

763:                                              ; preds = %752
  %764 = load i32, ptr %743, align 8
  %765 = icmp ugt i32 %760, %764
  br i1 %765, label %766, label %768

766:                                              ; preds = %763, %752
  %767 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.nfc_llcp_recv_agf) #14
  br label %788

768:                                              ; preds = %763
  %769 = load ptr, ptr %5, align 4
  %770 = load i8, ptr %769, align 1
  %771 = getelementptr i8, ptr %769, i32 1
  %772 = load i8, ptr %771, align 1
  %773 = tail call i8 @llvm.fshl.i8(i8 %770, i8 %772, i8 2)
  %774 = and i8 %773, 13
  %775 = icmp eq i8 %774, 0
  br i1 %775, label %784, label %776

776:                                              ; preds = %768
  %777 = tail call ptr @nfc_alloc_recv_skb(i32 noundef %760, i32 noundef 3264) #13
  %778 = icmp eq ptr %777, null
  br i1 %778, label %779, label %781

779:                                              ; preds = %776
  %780 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.nfc_llcp_recv_agf) #14
  br label %788

781:                                              ; preds = %776
  %782 = load ptr, ptr %5, align 4
  %783 = tail call ptr @skb_put(ptr noundef nonnull %777, i32 noundef %760) #13
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %783, ptr align 1 %782, i32 %760, i1 false) #13
  tail call fastcc void @nfc_llcp_rx_skb(ptr noundef %0, ptr noundef nonnull %777) #13
  tail call void @kfree_skb_reason(ptr noundef nonnull %777, i32 noundef 0) #13
  br label %784

784:                                              ; preds = %781, %768
  %785 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef %760) #13
  %786 = load i32, ptr %743, align 8
  %787 = icmp ugt i32 %786, 2
  br i1 %787, label %752, label %788

788:                                              ; preds = %784, %779, %766, %748, %746, %741, %740, %738, %607, %597, %456, %455, %453, %441, %393, %392, %390, %352, %310, %309, %307, %258, %251, %242, %241, %240, %238, %51, %50, %48, %22, %15, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_llcp_sock_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llcp_parse_connection_tlv(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_llcp_accept_enqueue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_get_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llcp_send_cc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llcp_send_dm(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_dep_link_down(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_llcp_build_sdres_tlv(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_genl_llc_send_sdres(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llcp_send_snl_sdres(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llcp_send_rr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_alloc_recv_skb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_llcp_free_sdp_tlv_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

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
!8 = !{i64 455394, i64 2147945365, i64 2147945391, i64 2147945438, i64 2147945460, i64 2147945488, i64 2147945508}
!9 = !{i64 2147959035, i64 2147959067, i64 2147959096, i64 2147959130, i64 2147959161, i64 2147959184}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148943107}
!13 = !{i64 1446321}
!14 = !{i64 2148931854}
!15 = !{i64 2148931929, i64 2148931956, i64 2148932003, i64 2148932025, i64 2148932053, i64 2148932073}
!16 = !{i64 2148981076}
!17 = !{i64 2148059233}
!18 = !{i64 2147961392, i64 2147961424, i64 2147961453, i64 2147961487, i64 2147961518, i64 2147961541}
!19 = !{i64 2149004018}
!20 = !{i64 2148943912}
!21 = !{i64 1447336, i64 1447359, i64 1447379, i64 1447403, i64 1447419}
!22 = !{i64 2148981515}
!23 = !{i64 2148058232}
!24 = !{i64 2147960618, i64 2147960650, i64 2147960679, i64 2147960713, i64 2147960744, i64 2147960767}
!25 = !{i64 2148058435}
!26 = !{!"auto-init"}
!27 = !{i64 2148936030}
!28 = !{i64 2148959033}
!29 = !{i64 2147957577, i64 2147957603, i64 2147957632, i64 2147957666, i64 2147957697, i64 2147957720}
