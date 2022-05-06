; ModuleID = '/llk/IR/net/bluetooth/smp.c_pt.bc'
source_filename = "../net/bluetooth/smp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.l2cap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.sk_buff_head = type { %union.anon.0, i32, %struct.spinlock }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
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
%struct.l2cap_chan = type { ptr, ptr, ptr, %struct.kref, %struct.atomic_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, [64 x i8], i8, i8, i8, i8, i16, i16, i16, i8, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i8, i16, ptr, ptr, i16, i8, i16, i8, i8, i16, i32, i32, i32, i8, i8, i16, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.l2cap_seq_list, %struct.l2cap_seq_list, %struct.list_head, %struct.list_head, ptr, ptr, %struct.mutex }
%struct.l2cap_seq_list = type { i16, i16, i16, ptr }
%struct.smp_dev = type { i8, [64 x i8], [16 x i8], i8, ptr, ptr }
%struct.hci_conn = type { %struct.list_head, %struct.atomic_t, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, i8, i16, i16, i8, i8, i8, i8, i8, [3 x i8], [3 x [8 x i8]], i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, [31 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i16, i32, i8, i8, i8, i32, %struct.sk_buff_head, %struct.list_head, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bt_codec, ptr, ptr, ptr }
%struct.bt_codec = type <{ i8, i16, i16, i8, i8 }>
%struct.l2cap_conn = type { ptr, ptr, i32, i32, i8, i8, i8, i8, %struct.delayed_work, ptr, i32, i8, %struct.mutex, %struct.sk_buff_head, %struct.work_struct, %struct.work_struct, i8, ptr, %struct.list_head, %struct.mutex, %struct.kref, %struct.list_head }
%struct.smp_chan = type { ptr, %struct.delayed_work, i32, [7 x i8], [7 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], i8, i8, %struct.bdaddr_t, i8, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, [64 x i8], [64 x i8], [32 x i8], [16 x i8], ptr, ptr }
%struct.kvec = type { ptr, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.121, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.78, %union.anon.79 }
%union.anon.78 = type { ptr }
%union.anon.79 = type { i64 }
%union.anon.121 = type { ptr }
%struct.smp_cmd_pairing_confirm = type { [16 x i8] }
%struct.smp_cmd_pairing = type { i8, i8, i8, i8, i8, i8 }
%struct.smp_cmd_security_req = type { i8 }
%struct.smp_ltk = type { %struct.list_head, %struct.callback_head, %struct.bdaddr_t, i8, i8, i8, i8, i16, i64, [16 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.crypto_shash = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.oob_data = type { %struct.list_head, %struct.bdaddr_t, i8, i8, [16 x i8], [16 x i8], [16 x i8], [16 x i8] }
%struct.crypto_aes_ctx = type { [60 x i32], [60 x i32], i32 }
%struct.smp_cmd_dhkey_check = type { [16 x i8] }
%struct.smp_irk = type { %struct.list_head, %struct.callback_head, %struct.bdaddr_t, %struct.bdaddr_t, i8, [16 x i8] }
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
%struct.smp_cmd_initiator_ident = type <{ i16, i64 }>
%struct.smp_cmd_ident_addr_info = type { i8, %struct.bdaddr_t }
%struct.smp_csrk = type { %struct.bdaddr_t, i8, i8, [16 x i8] }
%struct.smp_cmd_encrypt_info = type { [16 x i8] }
%struct.smp_cmd_ident_info = type { [16 x i8] }
%struct.smp_cmd_sign_info = type { [16 x i8] }
%struct.link_key = type { %struct.list_head, %struct.callback_head, %struct.bdaddr_t, i8, [16 x i8], i8 }

@debug_sk = internal constant [32 x i8] c"\BD\1A<\CD\A6\B8\99X\99\B7@\EB{`\FFJP?\10\D2\E3\B3\C9t8_\C5\A3\D4\F6I?", align 1
@debug_pk = internal constant [64 x i8] c"\E6\9D5\0EH\01\03\CC\DB\FD\F4\AC\11\91\F4\EF\B9\A5\F9\E9\A7\83,^,\BE\97\F2\D2\03\B0 \8B\D2\89\15\D0\8E\1Ct$0\ED\8F\C2Ecv\\\15RZ\BF\9A2cm\EB*eI\9C\80\DC", align 1
@.str = private unnamed_addr constant [42 x i8] c"%s: security requested but not available\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"net/bluetooth/smp.c\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Encrypt error\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"cipher setkey failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"tfm %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Hash computation error %d\0A\00", align 1
@__const.smp_f5.salt = private unnamed_addr constant [16 x i8] c"\BE\83`Z\DB\0B7`8\A5\F5\AA\91\83\88l", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Encrypt data error\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"cmac(aes)\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"%s: Unable to create CMAC crypto context\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"ecdh-nist-p256\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"%s: Unable to create ECDH crypto context\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@smp_root_chan_ops = internal constant %struct.l2cap_ops { ptr @.str.11, ptr @smp_new_conn_cb, ptr @l2cap_chan_no_recv, ptr @l2cap_chan_no_teardown, ptr @l2cap_chan_no_close, ptr @l2cap_chan_no_state_change, ptr @l2cap_chan_no_ready, ptr @l2cap_chan_no_defer, ptr @l2cap_chan_no_resume, ptr @l2cap_chan_no_suspend, ptr @l2cap_chan_no_set_shutdown, ptr @l2cap_chan_no_get_sndtimeo, ptr null, ptr @l2cap_chan_no_alloc_skb, ptr null }, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"Security Manager Root\00", align 1
@smp_chan_ops = internal constant %struct.l2cap_ops { ptr @.str.12, ptr @l2cap_chan_no_new_connection, ptr @smp_recv_cb, ptr @smp_teardown_cb, ptr @l2cap_chan_no_close, ptr @l2cap_chan_no_state_change, ptr @smp_ready_cb, ptr @l2cap_chan_no_defer, ptr @smp_resume_cb, ptr @l2cap_chan_no_suspend, ptr @l2cap_chan_no_set_shutdown, ptr @l2cap_chan_no_get_sndtimeo, ptr null, ptr @smp_alloc_skb_cb, ptr null }, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"Security Manager\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"%s: unexpected SMP command 0x%02x from %pMR\0A\00", align 1
@__const.sc_generate_link_key.salt = private unnamed_addr constant <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 49, i8 112, i8 109, i8 116, [12 x i8] zeroinitializer }>, align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"%s: no Link Key found to generate LTK\0A\00", align 1
@__const.sc_generate_ltk.salt = private unnamed_addr constant <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 50, i8 112, i8 109, i8 116, [12 x i8] zeroinitializer }>, align 1
@sc_method = internal unnamed_addr constant [5 x [5 x i8]] [[5 x i8] c"\00\01\02\00\02", [5 x i8] c"\00\03\02\00\03", [5 x i8] c"\05\05\02\00\05", [5 x i8] c"\00\01\00\00\01", [5 x i8] c"\05\03\02\00\03"], align 1
@gen_method = internal unnamed_addr constant [5 x [5 x i8]] [[5 x i8] c"\00\01\02\00\02", [5 x i8] c"\00\01\02\00\02", [5 x i8] c"\03\03\02\00\03", [5 x i8] c"\00\01\00\00\01", [5 x i8] c"\03\03\02\00\FF"], align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"%s: Unexpected SMP Pairing Confirm\0A\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"%s: refusing legacy fallback in SC-only mode\0A\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"%s: trying to fall back to legacy SMP\0A\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"%s: failed to fall back to legacy SMP\0A\00", align 1
@.str.19 = private unnamed_addr constant [51 x i8] c"%s: pairing failed (confirmation values mismatch)\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"%s: LTK blocked for %pMR\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"%s: Identity key blocked for %pMR\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"%s: ignoring IRK with no identity address\0A\00", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"%s: ignoring IRK with invalid identity address\0A\00", align 1
@.str.24 = private unnamed_addr constant [48 x i8] c"%s: Remote and local public keys are identical\0A\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"%s: unable to create SMP context for BR/EDR\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @smp_irk_matches(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [16 x i8], align 1
  %5 = alloca [3 x i8], align 1
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 168
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.l2cap_chan, ptr %7, i32 0, i32 84
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = getelementptr [6 x i8], ptr %2, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %4, ptr noundef align 1 dereferenceable(3) %14, i32 3, i1 false) #11
  %15 = getelementptr inbounds i8, ptr %4, i32 3
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(13) %15, i8 0, i32 13, i1 false) #11
  %16 = call fastcc i32 @smp_e(ptr noundef %1, ptr noundef nonnull %4) #11
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.2) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %22

19:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %5, ptr noundef nonnull align 1 dereferenceable(3) %4, i32 3, i1 false) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  %20 = call i32 @__crypto_memneq(ptr noundef %2, ptr noundef nonnull %5, i32 noundef 3) #11
  %21 = icmp eq i32 %20, 0
  br label %22

22:                                               ; preds = %19, %18, %9, %3
  %23 = phi i1 [ %21, %19 ], [ false, %9 ], [ false, %3 ], [ false, %18 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #11
  ret i1 %23
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @smp_generate_rpa(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [16 x i8], align 1
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 168
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.l2cap_chan, ptr %6, i32 0, i32 84
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %8
  %13 = getelementptr [6 x i8], ptr %2, i32 0, i32 3
  tail call void @get_random_bytes(ptr noundef %13, i32 noundef 3) #11
  %14 = getelementptr [6 x i8], ptr %2, i32 0, i32 5
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 63
  %17 = or i8 %16, 64
  store i8 %17, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %4, ptr noundef align 1 dereferenceable(3) %13, i32 3, i1 false) #11
  %18 = getelementptr inbounds i8, ptr %4, i32 3
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(13) %18, i8 0, i32 13, i1 false) #11
  %19 = call fastcc i32 @smp_e(ptr noundef %1, ptr noundef nonnull %4) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.2) #11
  br label %23

22:                                               ; preds = %12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %2, ptr noundef nonnull align 1 dereferenceable(3) %4, i32 3, i1 false) #11
  br label %23

23:                                               ; preds = %22, %21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  %24 = tail call i32 @llvm.smin.i32(i32 %19, i32 0)
  br label %25

25:                                               ; preds = %23, %8, %3
  %26 = phi i32 [ -95, %8 ], [ -95, %3 ], [ %24, %23 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @smp_generate_oob(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca [65 x i8], align 1
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 168
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %45, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.l2cap_chan, ptr %6, i32 0, i32 84
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %45, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 256
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.smp_dev, ptr %10, i32 0, i32 5
  br i1 %16, label %18, label %20

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.smp_dev, ptr %10, i32 0, i32 1
  br label %26

20:                                               ; preds = %12
  %21 = load ptr, ptr %17, align 4
  %22 = tail call i32 @set_ecdh_privkey(ptr noundef %21, ptr noundef nonnull @debug_sk) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.smp_dev, ptr %10, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(64) %25, ptr noundef nonnull align 1 dereferenceable(64) @debug_pk, i32 64, i1 false)
  br label %33

26:                                               ; preds = %30, %18
  %27 = load ptr, ptr %17, align 4
  %28 = tail call i32 @generate_ecdh_keys(ptr noundef %27, ptr noundef %19) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = tail call i32 @__crypto_memneq(ptr noundef %19, ptr noundef nonnull @debug_pk, i32 noundef 64) #11
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %26, label %33

33:                                               ; preds = %30, %24
  %34 = phi i8 [ 1, %24 ], [ 0, %30 ]
  %35 = getelementptr inbounds %struct.smp_dev, ptr %10, i32 0, i32 3
  store i8 %34, ptr %35, align 1
  %36 = getelementptr inbounds %struct.smp_dev, ptr %10, i32 0, i32 2
  tail call void @get_random_bytes(ptr noundef %36, i32 noundef 16) #11
  %37 = getelementptr inbounds %struct.smp_dev, ptr %10, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.smp_dev, ptr %10, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %4) #11
  store i8 0, ptr %4, align 1
  %40 = getelementptr inbounds i8, ptr %4, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %40, ptr noundef align 1 dereferenceable(32) %39, i32 32, i1 false) #11
  %41 = getelementptr inbounds i8, ptr %4, i32 33
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %41, ptr noundef align 1 dereferenceable(32) %39, i32 32, i1 false) #11
  %42 = call fastcc i32 @aes_cmac(ptr noundef %38, ptr noundef %36, ptr noundef nonnull %4, i32 noundef 65, ptr noundef %1) #11
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %4) #11
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %33
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2, ptr noundef align 1 dereferenceable(16) %36, i32 16, i1 false)
  store i8 1, ptr %10, align 4
  br label %45

45:                                               ; preds = %44, %33, %26, %20, %8, %3
  %46 = phi i32 [ 0, %44 ], [ -95, %8 ], [ -95, %3 ], [ %22, %20 ], [ %42, %33 ], [ %28, %26 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_ecdh_privkey(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generate_ecdh_keys(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @smp_user_confirm_reply(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 66
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %83, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.l2cap_conn, ptr %5, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %83, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.l2cap_chan, ptr %9, i32 0, i32 86
  tail call void @mutex_lock(ptr noundef %12) #11
  %13 = getelementptr inbounds %struct.l2cap_chan, ptr %9, i32 0, i32 84
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %81, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.smp_chan, ptr %14, i32 0, i32 22
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %67, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %14, align 4
  %23 = load ptr, ptr %22, align 4
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %17) #11
  switch i16 %1, label %37 [
    i16 31, label %24
    i16 29, label %26
    i16 30, label %28
  ]

24:                                               ; preds = %21
  %25 = load ptr, ptr %14, align 4
  tail call fastcc void @smp_failure(ptr noundef %25, i8 noundef zeroext 1) #11
  br label %81

26:                                               ; preds = %21
  %27 = load ptr, ptr %14, align 4
  tail call fastcc void @smp_failure(ptr noundef %27, i8 noundef zeroext 12) #11
  br label %81

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.hci_conn, ptr %23, i32 0, i32 29
  store i32 %2, ptr %29, align 4
  %30 = getelementptr inbounds %struct.smp_chan, ptr %14, i32 0, i32 24
  store i8 0, ptr %30, align 1
  %31 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %17) #11
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i8 0, i8 3
  %34 = tail call fastcc zeroext i8 @sc_passkey_round(ptr noundef nonnull %14, i8 noundef zeroext %33) #11
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %35, i32 0, i32 -5
  br label %81

37:                                               ; preds = %21
  %38 = getelementptr inbounds %struct.hci_conn, ptr %23, i32 0, i32 16
  %39 = load i8, ptr %38, align 1, !range !8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  tail call fastcc void @sc_dhkey_check(ptr noundef nonnull %14) #11
  %42 = getelementptr inbounds %struct.smp_chan, ptr %14, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 13, ptr noundef %42) #11
  br label %81

43:                                               ; preds = %37
  %44 = tail call i32 @_test_and_clear_bit(i32 noundef 9, ptr noundef %17) #11
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %81, label %46

46:                                               ; preds = %43
  tail call fastcc void @sc_dhkey_check(ptr noundef nonnull %14) #11
  %47 = load ptr, ptr %14, align 4
  %48 = load ptr, ptr %47, align 4
  %49 = load volatile i32, ptr %17, align 4
  %50 = and i32 %49, 128
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %51, i8 3, i8 4
  %53 = getelementptr inbounds %struct.hci_conn, ptr %48, i32 0, i32 25
  %54 = load i8, ptr %53, align 1
  %55 = icmp eq i8 %54, 4
  %56 = zext i1 %55 to i8
  %57 = getelementptr inbounds %struct.hci_conn, ptr %48, i32 0, i32 65
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.hci_conn, ptr %48, i32 0, i32 2
  %60 = getelementptr inbounds %struct.hci_conn, ptr %48, i32 0, i32 3
  %61 = load i8, ptr %60, align 2
  %62 = getelementptr inbounds %struct.smp_chan, ptr %14, i32 0, i32 8
  %63 = getelementptr inbounds %struct.smp_chan, ptr %14, i32 0, i32 11
  %64 = load i8, ptr %63, align 2
  %65 = tail call ptr @hci_add_ltk(ptr noundef %58, ptr noundef %59, i8 noundef zeroext %61, i8 noundef zeroext %52, i8 noundef zeroext %56, ptr noundef %62, i8 noundef zeroext %64, i16 noundef zeroext 0, i64 noundef 0) #11
  %66 = getelementptr inbounds %struct.smp_chan, ptr %14, i32 0, i32 18
  store ptr %65, ptr %66, align 4
  br label %81

67:                                               ; preds = %16
  switch i16 %1, label %76 [
    i16 30, label %68
    i16 28, label %71
    i16 31, label %75
    i16 29, label %75
  ]

68:                                               ; preds = %67
  %69 = getelementptr inbounds %struct.smp_chan, ptr %14, i32 0, i32 8
  %70 = getelementptr inbounds %struct.smp_chan, ptr %14, i32 0, i32 8, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(16) %70, i8 0, i32 12, i1 false)
  store i32 %2, ptr %69, align 1
  br label %71

71:                                               ; preds = %68, %67
  tail call void @_set_bit(i32 noundef 0, ptr noundef %17) #11
  %72 = load volatile i32, ptr %17, align 4
  %73 = and i32 %72, 2
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %81, label %77

75:                                               ; preds = %67, %67
  tail call fastcc void @smp_failure(ptr noundef nonnull %5, i8 noundef zeroext 1)
  br label %81

76:                                               ; preds = %67
  tail call fastcc void @smp_failure(ptr noundef nonnull %5, i8 noundef zeroext 1)
  br label %81

77:                                               ; preds = %71
  %78 = tail call fastcc zeroext i8 @smp_confirm(ptr noundef nonnull %14)
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  tail call fastcc void @smp_failure(ptr noundef nonnull %5, i8 noundef zeroext %78)
  br label %81

81:                                               ; preds = %80, %77, %76, %75, %71, %46, %43, %41, %28, %26, %24, %11
  %82 = phi i32 [ -95, %76 ], [ 0, %75 ], [ 0, %71 ], [ -107, %11 ], [ 0, %80 ], [ 0, %77 ], [ 0, %26 ], [ 0, %24 ], [ 0, %43 ], [ 0, %46 ], [ 0, %41 ], [ %36, %28 ]
  tail call void @mutex_unlock(ptr noundef %12) #11
  br label %83

83:                                               ; preds = %81, %7, %3
  %84 = phi i32 [ %82, %81 ], [ -107, %3 ], [ -107, %7 ]
  ret i32 %84
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @smp_failure(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.kvec], align 4
  %5 = alloca %struct.msghdr, align 8
  %6 = alloca i8, align 1
  store i8 %1, ptr %6, align 1
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.l2cap_conn, ptr %0, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq i8 %1, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 5, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #11
  %12 = icmp eq ptr %9, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %11
  store ptr %3, ptr %4, align 4
  %14 = getelementptr inbounds %struct.kvec, ptr %4, i32 0, i32 1
  store i32 1, ptr %14, align 4
  %15 = getelementptr inbounds [2 x %struct.kvec], ptr %4, i32 0, i32 1
  store ptr %6, ptr %15, align 4
  %16 = getelementptr inbounds [2 x %struct.kvec], ptr %4, i32 0, i32 1, i32 1
  store i32 1, ptr %16, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i32 56, i1 false) #11
  %17 = getelementptr inbounds %struct.msghdr, ptr %5, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %17, i32 noundef 1, ptr noundef nonnull %4, i32 noundef 2, i32 noundef 2) #11
  %18 = call i32 @l2cap_chan_send(ptr noundef nonnull %9, ptr noundef nonnull %5, i32 noundef 2) #11
  %19 = getelementptr inbounds %struct.l2cap_chan, ptr %9, i32 0, i32 84
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.smp_chan, ptr %20, i32 0, i32 1
  %24 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %23) #11
  %25 = load ptr, ptr @system_wq, align 4
  %26 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %25, ptr noundef %23, i32 noundef 3000) #11
  br label %27

27:                                               ; preds = %22, %13, %11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %28

28:                                               ; preds = %27, %2
  call void @mgmt_auth_failed(ptr noundef %7, i8 noundef zeroext 5) #11
  %29 = getelementptr inbounds %struct.l2cap_chan, ptr %9, i32 0, i32 84
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  call fastcc void @smp_chan_destroy(ptr noundef %0)
  br label %33

33:                                               ; preds = %32, %28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i8 @smp_confirm(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca [2 x %struct.kvec], align 4
  %4 = alloca %struct.msghdr, align 8
  %5 = alloca %struct.smp_cmd_pairing_confirm, align 1
  %6 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !9
  %7 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 8
  %8 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 5
  %9 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 3
  %10 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 7
  %13 = load i8, ptr %12, align 8
  %14 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 6
  %15 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 9
  %16 = load i8, ptr %15, align 1
  %17 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 8
  %18 = call fastcc i32 @smp_c1(ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, i8 noundef zeroext %13, ptr noundef %14, i8 noundef zeroext %16, ptr noundef %17, ptr noundef nonnull %5)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 22
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %21) #11
  %22 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  store i8 3, ptr %2, align 1
  %23 = getelementptr inbounds %struct.l2cap_conn, ptr %22, i32 0, i32 17
  %24 = load ptr, ptr %23, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #11
  %25 = icmp eq ptr %24, null
  br i1 %25, label %40, label %26

26:                                               ; preds = %20
  store ptr %2, ptr %3, align 4
  %27 = getelementptr inbounds %struct.kvec, ptr %3, i32 0, i32 1
  store i32 1, ptr %27, align 4
  %28 = getelementptr inbounds [2 x %struct.kvec], ptr %3, i32 0, i32 1
  store ptr %5, ptr %28, align 4
  %29 = getelementptr inbounds [2 x %struct.kvec], ptr %3, i32 0, i32 1, i32 1
  store i32 16, ptr %29, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i32 56, i1 false) #11
  %30 = getelementptr inbounds %struct.msghdr, ptr %4, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %30, i32 noundef 1, ptr noundef nonnull %3, i32 noundef 2, i32 noundef 17) #11
  %31 = call i32 @l2cap_chan_send(ptr noundef nonnull %24, ptr noundef nonnull %4, i32 noundef 17) #11
  %32 = getelementptr inbounds %struct.l2cap_chan, ptr %24, i32 0, i32 84
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.smp_chan, ptr %33, i32 0, i32 1
  %37 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %36) #11
  %38 = load ptr, ptr @system_wq, align 4
  %39 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %38, ptr noundef %36, i32 noundef 3000) #11
  br label %40

40:                                               ; preds = %35, %26, %20
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  %41 = load ptr, ptr %6, align 4
  %42 = getelementptr inbounds %struct.hci_conn, ptr %41, i32 0, i32 16
  %43 = load i8, ptr %42, align 1, !range !8
  %44 = icmp eq i8 %43, 0
  %45 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 2
  %46 = select i1 %44, i32 4, i32 3
  call void @_set_bit(i32 noundef %46, ptr noundef %45) #11
  br label %47

47:                                               ; preds = %40, %1
  %48 = phi i8 [ 8, %1 ], [ 0, %40 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  ret i8 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @smp_sufficient_security(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i8 %1, 1
  br i1 %4, label %26, label %5

5:                                                ; preds = %3
  %6 = icmp eq i32 %2, 1
  br i1 %6, label %7, label %22

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 47
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 65536
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 65
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 2
  %16 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 3
  %17 = load i8, ptr %16, align 2
  %18 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 15
  %19 = load i8, ptr %18, align 8
  %20 = tail call ptr @hci_find_ltk(ptr noundef %14, ptr noundef %15, i8 noundef zeroext %17, i8 noundef zeroext %19) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %12, %7, %5
  %23 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 24
  %24 = load i8, ptr %23, align 4
  %25 = icmp uge i8 %24, %1
  br label %26

26:                                               ; preds = %22, %12, %3
  %27 = phi i1 [ true, %3 ], [ false, %12 ], [ %25, %22 ]
  ret i1 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_find_ltk(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @smp_conn_security(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.smp_cmd_pairing, align 1
  %4 = alloca %struct.smp_cmd_security_req, align 1
  %5 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 66
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %109, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 65
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.hci_dev, ptr %10, i32 0, i32 206
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 8388608
  %14 = icmp eq i32 %13, 0
  %15 = icmp eq i8 %1, 1
  %16 = or i1 %15, %14
  br i1 %16, label %109, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 47
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 65536
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 2
  %24 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 3
  %25 = load i8, ptr %24, align 2
  %26 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 15
  %27 = load i8, ptr %26, align 8
  %28 = tail call ptr @hci_find_ltk(ptr noundef %10, ptr noundef %23, i8 noundef zeroext %25, i8 noundef zeroext %27) #11
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %22, %17
  %31 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 24
  %32 = load i8, ptr %31, align 4
  %33 = icmp ult i8 %32, %1
  br i1 %33, label %34, label %109

34:                                               ; preds = %30, %22
  %35 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 25
  %36 = load i8, ptr %35, align 1
  %37 = icmp ult i8 %36, %1
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i8 %1, ptr %35, align 1
  br label %39

39:                                               ; preds = %38, %34
  %40 = phi i8 [ %1, %38 ], [ %36, %34 ]
  %41 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 15
  %42 = load i8, ptr %41, align 8
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = tail call fastcc zeroext i1 @smp_ltk_encrypt(ptr noundef nonnull %6, i8 noundef zeroext %40)
  br i1 %45, label %109, label %46

46:                                               ; preds = %44, %39
  %47 = getelementptr inbounds %struct.l2cap_conn, ptr %6, i32 0, i32 17
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load ptr, ptr %9, align 4
  %52 = getelementptr inbounds %struct.hci_dev, ptr %51, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %52) #11
  br label %109

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.l2cap_chan, ptr %48, i32 0, i32 86
  tail call void @mutex_lock(ptr noundef %54) #11
  %55 = getelementptr inbounds %struct.l2cap_chan, ptr %48, i32 0, i32 84
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %107

58:                                               ; preds = %53
  %59 = tail call fastcc ptr @smp_chan_create(ptr noundef nonnull %6)
  %60 = icmp eq ptr %59, null
  br i1 %60, label %107, label %61

61:                                               ; preds = %58
  %62 = add i8 %1, -2
  %63 = icmp ult i8 %62, 3
  %64 = zext i8 %62 to i24
  %65 = shl nuw nsw i24 %64, 3
  %66 = lshr i24 328961, %65
  %67 = trunc i24 %66 to i8
  %68 = select i1 %63, i8 %67, i8 0
  %69 = load ptr, ptr %9, align 4
  %70 = getelementptr inbounds %struct.hci_dev, ptr %69, i32 0, i32 206
  %71 = load volatile i32, ptr %70, align 4
  %72 = and i32 %71, 65536
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %61
  %75 = load volatile i32, ptr %70, align 4
  %76 = and i32 %75, 32768
  %77 = icmp eq i32 %76, 0
  %78 = select i1 %77, i8 8, i8 40
  %79 = or i8 %78, %68
  br label %80

80:                                               ; preds = %74, %61
  %81 = phi i8 [ %68, %61 ], [ %79, %74 ]
  %82 = getelementptr %struct.hci_dev, ptr %69, i32 0, i32 206, i32 1
  %83 = load volatile i32, ptr %82, align 4
  %84 = and i32 %83, 2048
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 28
  %88 = load i8, ptr %87, align 8
  %89 = icmp eq i8 %88, 3
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i8, ptr %35, align 1
  %92 = icmp ugt i8 %91, 2
  br i1 %92, label %93, label %95

93:                                               ; preds = %90, %86
  %94 = or i8 %81, 4
  br label %95

95:                                               ; preds = %93, %90, %80
  %96 = phi i8 [ %81, %80 ], [ %94, %93 ], [ %81, %90 ]
  %97 = load i8, ptr %41, align 8
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false), !annotation !9
  call fastcc void @build_pairing_cmd(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext %96)
  %100 = getelementptr inbounds %struct.smp_chan, ptr %59, i32 0, i32 3
  store i8 1, ptr %100, align 4
  %101 = getelementptr %struct.smp_chan, ptr %59, i32 0, i32 3, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %101, ptr noundef nonnull align 1 dereferenceable(6) %3, i32 6, i1 false)
  call fastcc void @smp_send_cmd(ptr noundef nonnull %6, i8 noundef zeroext 1, i16 noundef zeroext 6, ptr noundef nonnull %3)
  %102 = getelementptr inbounds %struct.smp_chan, ptr %59, i32 0, i32 2
  call void @_set_bit(i32 noundef 2, ptr noundef %102) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #11
  br label %105

103:                                              ; preds = %95
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 %96, ptr %4, align 1
  call fastcc void @smp_send_cmd(ptr noundef nonnull %6, i8 noundef zeroext 11, i16 noundef zeroext 1, ptr noundef nonnull %4)
  %104 = getelementptr inbounds %struct.smp_chan, ptr %59, i32 0, i32 2
  call void @_set_bit(i32 noundef 1, ptr noundef %104) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  br label %105

105:                                              ; preds = %103, %99
  %106 = getelementptr inbounds %struct.smp_chan, ptr %59, i32 0, i32 22
  call void @_set_bit(i32 noundef 4, ptr noundef %106) #11
  br label %107

107:                                              ; preds = %105, %58, %53
  %108 = phi i32 [ 0, %105 ], [ 0, %53 ], [ 1, %58 ]
  call void @mutex_unlock(ptr noundef %54) #11
  br label %109

109:                                              ; preds = %107, %50, %44, %30, %8, %2
  %110 = phi i32 [ %108, %107 ], [ 1, %50 ], [ 1, %2 ], [ 1, %8 ], [ 1, %30 ], [ 0, %44 ]
  ret i32 %110
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @smp_ltk_encrypt(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 65
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 2
  %7 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 3
  %8 = load i8, ptr %7, align 2
  %9 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 15
  %10 = load i8, ptr %9, align 8
  %11 = tail call ptr @hci_find_ltk(ptr noundef %5, ptr noundef %6, i8 noundef zeroext %8, i8 noundef zeroext %10) #11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %40, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.smp_ltk, ptr %11, i32 0, i32 4
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.smp_ltk, ptr %11, i32 0, i32 5
  %19 = load i8, ptr %18, align 8
  %20 = add i8 %19, -3
  %21 = icmp ult i8 %20, 2
  %22 = select i1 %21, i8 4, i8 3
  br label %23

23:                                               ; preds = %17, %13
  %24 = phi i8 [ %22, %17 ], [ 2, %13 ]
  %25 = icmp ult i8 %24, %1
  br i1 %25, label %40, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 47
  %28 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %27) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.smp_ltk, ptr %11, i32 0, i32 7
  %32 = load i16, ptr %31, align 2
  %33 = getelementptr inbounds %struct.smp_ltk, ptr %11, i32 0, i32 8
  %34 = load i64, ptr %33, align 8
  %35 = getelementptr inbounds %struct.smp_ltk, ptr %11, i32 0, i32 9
  %36 = getelementptr inbounds %struct.smp_ltk, ptr %11, i32 0, i32 6
  %37 = load i8, ptr %36, align 1
  tail call void @hci_le_start_enc(ptr noundef %3, i16 noundef zeroext %32, i64 noundef %34, ptr noundef %35, i8 noundef zeroext %37) #11
  %38 = load i8, ptr %36, align 1
  %39 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 27
  store i8 %38, ptr %39, align 1
  tail call void @_clear_bit(i32 noundef 16, ptr noundef %27) #11
  br label %40

40:                                               ; preds = %30, %26, %23, %2
  %41 = phi i1 [ true, %30 ], [ false, %2 ], [ false, %23 ], [ true, %26 ]
  ret i1 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @smp_chan_create(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.l2cap_conn, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2848, i32 noundef 404) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %38, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 0) #11
  %10 = getelementptr inbounds %struct.smp_chan, ptr %6, i32 0, i32 29
  store ptr %9, ptr %10, align 4
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.hci_conn, ptr %2, i32 0, i32 65
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.8, ptr noundef %15) #11
  br label %37

16:                                               ; preds = %8
  %17 = tail call ptr @crypto_alloc_kpp(ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 0) #11
  %18 = getelementptr inbounds %struct.smp_chan, ptr %6, i32 0, i32 30
  store ptr %17, ptr %18, align 8
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.hci_conn, ptr %2, i32 0, i32 65
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.hci_dev, ptr %22, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.10, ptr noundef %23) #11
  %24 = getelementptr inbounds %struct.crypto_shash, ptr %9, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %9, ptr noundef %24) #11
  br label %37

25:                                               ; preds = %16
  store ptr %0, ptr %6, align 8
  %26 = getelementptr inbounds %struct.l2cap_chan, ptr %4, i32 0, i32 84
  store ptr %6, ptr %26, align 4
  %27 = getelementptr inbounds %struct.smp_chan, ptr %6, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 5, ptr noundef %27) #11
  %28 = getelementptr inbounds %struct.smp_chan, ptr %6, i32 0, i32 1
  store i32 -32, ptr %28, align 4
  %29 = getelementptr inbounds %struct.smp_chan, ptr %6, i32 0, i32 1, i32 0, i32 1
  store volatile ptr %29, ptr %29, align 8
  %30 = getelementptr inbounds %struct.smp_chan, ptr %6, i32 0, i32 1, i32 0, i32 1, i32 1
  store ptr %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.smp_chan, ptr %6, i32 0, i32 1, i32 0, i32 2
  store ptr @smp_timeout, ptr %31, align 8
  %32 = getelementptr inbounds %struct.smp_chan, ptr %6, i32 0, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %32, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #11
  %33 = getelementptr inbounds %struct.hci_conn, ptr %2, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #11, !srcloc !10
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #11, !srcloc !11
  %35 = getelementptr inbounds %struct.hci_conn, ptr %2, i32 0, i32 58
  %36 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %35) #11
  br label %38

37:                                               ; preds = %20, %12
  tail call void @kfree_sensitive(ptr noundef nonnull %6) #11
  br label %38

38:                                               ; preds = %37, %25, %1
  %39 = phi ptr [ null, %37 ], [ %6, %25 ], [ null, %1 ]
  ret ptr %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @build_pairing_cmd(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.l2cap_conn, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.l2cap_chan, ptr %6, i32 0, i32 84
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.hci_conn, ptr %9, i32 0, i32 65
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.hci_dev, ptr %11, i32 0, i32 206
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 32
  %15 = icmp eq i32 %14, 0
  %16 = and i8 %3, -2
  %17 = select i1 %15, i8 0, i8 5
  %18 = xor i1 %15, true
  %19 = zext i1 %18 to i8
  %20 = or i8 %16, %19
  %21 = load volatile i32, ptr %12, align 4
  %22 = and i32 %21, 2097152
  %23 = icmp eq i32 %22, 0
  %24 = or i8 %17, 2
  %25 = select i1 %23, i8 %17, i8 %24
  %26 = load volatile i32, ptr %12, align 4
  %27 = and i32 %26, 262144
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i8 %17, i8 %24
  %30 = load volatile i32, ptr %12, align 4
  %31 = and i32 %30, 65536
  %32 = icmp eq i32 %31, 0
  %33 = and i8 %3, 8
  %34 = icmp eq i8 %33, 0
  %35 = or i1 %34, %32
  br i1 %35, label %61, label %36

36:                                               ; preds = %4
  %37 = load volatile i32, ptr %12, align 4
  %38 = and i32 %37, 32768
  %39 = icmp eq i32 %38, 0
  %40 = or i8 %29, 8
  %41 = or i8 %25, 8
  %42 = select i1 %39, i8 %29, i8 %40
  %43 = select i1 %39, i8 %25, i8 %41
  %44 = getelementptr inbounds %struct.hci_conn, ptr %9, i32 0, i32 3
  %45 = load i8, ptr %44, align 2
  %46 = icmp eq i8 %45, 0
  %47 = select i1 %46, i8 1, i8 2
  %48 = getelementptr inbounds %struct.hci_conn, ptr %9, i32 0, i32 2
  %49 = tail call ptr @hci_find_remote_oob_data(ptr noundef %11, ptr noundef %48, i8 noundef zeroext %47) #11
  %50 = icmp eq ptr %49, null
  br i1 %50, label %63, label %51

51:                                               ; preds = %36
  %52 = getelementptr inbounds %struct.oob_data, ptr %49, i32 0, i32 3
  %53 = load i8, ptr %52, align 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.smp_chan, ptr %8, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 10, ptr noundef %56) #11
  %57 = getelementptr inbounds %struct.smp_chan, ptr %8, i32 0, i32 9
  %58 = getelementptr inbounds %struct.oob_data, ptr %49, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(16) %57, ptr noundef align 4 dereferenceable(16) %58, i32 16, i1 false)
  %59 = getelementptr inbounds %struct.smp_chan, ptr %8, i32 0, i32 7
  %60 = getelementptr inbounds %struct.oob_data, ptr %49, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(16) %59, ptr noundef align 4 dereferenceable(16) %60, i32 16, i1 false)
  br label %63

61:                                               ; preds = %4
  %62 = and i8 %20, -9
  br label %63

63:                                               ; preds = %61, %55, %51, %36
  %64 = phi i8 [ %29, %61 ], [ %42, %55 ], [ %42, %51 ], [ %42, %36 ]
  %65 = phi i8 [ %25, %61 ], [ %43, %55 ], [ %43, %51 ], [ %43, %36 ]
  %66 = phi i8 [ 0, %61 ], [ 1, %55 ], [ 0, %51 ], [ 0, %36 ]
  %67 = phi i8 [ %62, %61 ], [ %20, %55 ], [ %20, %51 ], [ %20, %36 ]
  %68 = icmp eq ptr %2, null
  %69 = load ptr, ptr %0, align 4
  %70 = getelementptr inbounds %struct.hci_conn, ptr %69, i32 0, i32 28
  %71 = load i8, ptr %70, align 8
  br i1 %68, label %72, label %78

72:                                               ; preds = %63
  store i8 %71, ptr %1, align 1
  %73 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %1, i32 0, i32 1
  store i8 %66, ptr %73, align 1
  %74 = getelementptr inbounds %struct.hci_dev, ptr %11, i32 0, i32 67
  %75 = load i8, ptr %74, align 2
  %76 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %1, i32 0, i32 3
  store i8 %75, ptr %76, align 1
  %77 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %1, i32 0, i32 4
  store i8 %64, ptr %77, align 1
  br label %90

78:                                               ; preds = %63
  store i8 %71, ptr %2, align 1
  %79 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %2, i32 0, i32 1
  store i8 %66, ptr %79, align 1
  %80 = getelementptr inbounds %struct.hci_dev, ptr %11, i32 0, i32 67
  %81 = load i8, ptr %80, align 2
  %82 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %2, i32 0, i32 3
  store i8 %81, ptr %82, align 1
  %83 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %1, i32 0, i32 4
  %84 = load i8, ptr %83, align 1
  %85 = and i8 %84, %65
  %86 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %2, i32 0, i32 4
  store i8 %85, ptr %86, align 1
  %87 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %1, i32 0, i32 5
  %88 = load i8, ptr %87, align 1
  %89 = and i8 %88, %64
  br label %90

90:                                               ; preds = %78, %72
  %91 = phi ptr [ %2, %78 ], [ %1, %72 ]
  %92 = phi i8 [ %89, %78 ], [ %65, %72 ]
  %93 = phi i8 [ %85, %78 ], [ %65, %72 ]
  %94 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %91, i32 0, i32 5
  store i8 %92, ptr %94, align 1
  %95 = load volatile i32, ptr %12, align 4
  %96 = and i32 %95, 65536
  %97 = icmp eq i32 %96, 0
  %98 = select i1 %97, i8 7, i8 63
  %99 = and i8 %98, %67
  %100 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %91, i32 0, i32 2
  store i8 %99, ptr %100, align 1
  %101 = getelementptr inbounds %struct.smp_chan, ptr %8, i32 0, i32 12
  store i8 %93, ptr %101, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @smp_send_cmd(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i16 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca [2 x %struct.kvec], align 4
  %7 = alloca %struct.msghdr, align 8
  store i8 %1, ptr %5, align 1
  %8 = getelementptr inbounds %struct.l2cap_conn, ptr %0, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %4
  store ptr %5, ptr %6, align 4
  %12 = getelementptr inbounds %struct.kvec, ptr %6, i32 0, i32 1
  store i32 1, ptr %12, align 4
  %13 = getelementptr inbounds [2 x %struct.kvec], ptr %6, i32 0, i32 1
  store ptr %3, ptr %13, align 4
  %14 = zext i16 %2 to i32
  %15 = getelementptr inbounds [2 x %struct.kvec], ptr %6, i32 0, i32 1, i32 1
  store i32 %14, ptr %15, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %7, i8 0, i32 56, i1 false)
  %16 = getelementptr inbounds %struct.msghdr, ptr %7, i32 0, i32 2
  %17 = add nuw nsw i32 %14, 1
  call void @iov_iter_kvec(ptr noundef %16, i32 noundef 1, ptr noundef nonnull %6, i32 noundef 2, i32 noundef %17) #11
  %18 = call i32 @l2cap_chan_send(ptr noundef nonnull %9, ptr noundef nonnull %7, i32 noundef %17) #11
  %19 = getelementptr inbounds %struct.l2cap_chan, ptr %9, i32 0, i32 84
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.smp_chan, ptr %20, i32 0, i32 1
  %24 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %23) #11
  %25 = load ptr, ptr @system_wq, align 4
  %26 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %25, ptr noundef %23, i32 noundef 3000) #11
  br label %27

27:                                               ; preds = %22, %11, %4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @smp_cancel_and_remove_pairing(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call i32 @hci_remove_ltk(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #11
  tail call void @hci_remove_irk(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #11
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !12
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %24, label %8

8:                                                ; preds = %21, %3
  %9 = phi ptr [ %22, %21 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.hci_conn, ptr %9, i32 0, i32 14
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, -128
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.hci_conn, ptr %9, i32 0, i32 3
  %15 = load i8, ptr %14, align 2
  %16 = icmp eq i8 %15, %2
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hci_conn, ptr %9, i32 0, i32 2
  %19 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %18, ptr noundef dereferenceable(6) %1, i32 6) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17, %13, %8
  %22 = load volatile ptr, ptr %9, align 4
  %23 = icmp eq ptr %22, %5
  br i1 %23, label %24, label %8

24:                                               ; preds = %21, %3
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  br label %58

25:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  %26 = icmp eq ptr %9, null
  br i1 %26, label %58, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.hci_conn, ptr %9, i32 0, i32 66
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %58, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.l2cap_conn, ptr %29, i32 0, i32 17
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %58, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.l2cap_chan, ptr %33, i32 0, i32 86
  tail call void @mutex_lock(ptr noundef %36) #11
  %37 = getelementptr inbounds %struct.l2cap_chan, ptr %33, i32 0, i32 84
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %56, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.smp_chan, ptr %38, i32 0, i32 18
  store ptr null, ptr %41, align 4
  %42 = getelementptr inbounds %struct.smp_chan, ptr %38, i32 0, i32 19
  store ptr null, ptr %42, align 4
  %43 = getelementptr inbounds %struct.smp_chan, ptr %38, i32 0, i32 20
  store ptr null, ptr %43, align 4
  %44 = getelementptr inbounds %struct.smp_chan, ptr %38, i32 0, i32 22
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %45, 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %40
  %49 = load ptr, ptr %29, align 4
  %50 = load ptr, ptr %32, align 4
  tail call void @mgmt_auth_failed(ptr noundef %49, i8 noundef zeroext 5) #11
  %51 = getelementptr inbounds %struct.l2cap_chan, ptr %50, i32 0, i32 84
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %48
  tail call fastcc void @smp_chan_destroy(ptr noundef nonnull %29) #11
  br label %56

55:                                               ; preds = %40
  tail call fastcc void @smp_failure(ptr noundef nonnull %29, i8 noundef zeroext 8)
  br label %56

56:                                               ; preds = %55, %54, %48, %35
  %57 = phi i32 [ %4, %35 ], [ 0, %55 ], [ 0, %48 ], [ 0, %54 ]
  tail call void @mutex_unlock(ptr noundef %36) #11
  br label %58

58:                                               ; preds = %56, %31, %27, %25, %24
  %59 = phi i32 [ %57, %56 ], [ %4, %31 ], [ %4, %27 ], [ %4, %25 ], [ %4, %24 ]
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_remove_ltk(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_remove_irk(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @smp_force_bredr(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %4 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 64
  %7 = icmp eq i32 %6, 0
  %8 = xor i1 %7, %1
  br i1 %8, label %44, label %9

9:                                                ; preds = %2
  br i1 %1, label %10, label %30

10:                                               ; preds = %9
  %11 = tail call ptr @l2cap_chan_create() #11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.l2cap_chan, ptr %11, i32 0, i32 84
  store ptr null, ptr %14, align 4
  %15 = tail call i32 @l2cap_add_scid(ptr noundef nonnull %11, i16 noundef zeroext 7) #11
  tail call void @l2cap_chan_set_defaults(ptr noundef nonnull %11) #11
  %16 = getelementptr inbounds %struct.l2cap_chan, ptr %11, i32 0, i32 8
  %17 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %16, ptr noundef align 1 dereferenceable(6) %17, i32 6, i1 false) #11
  %18 = getelementptr inbounds %struct.l2cap_chan, ptr %11, i32 0, i32 9
  store i8 0, ptr %18, align 2
  %19 = getelementptr inbounds %struct.l2cap_chan, ptr %11, i32 0, i32 5
  store i8 4, ptr %19, align 4
  %20 = getelementptr inbounds %struct.l2cap_chan, ptr %11, i32 0, i32 17
  store i8 0, ptr %20, align 2
  %21 = getelementptr inbounds %struct.l2cap_chan, ptr %11, i32 0, i32 14
  store i16 672, ptr %21, align 4
  %22 = getelementptr inbounds %struct.l2cap_chan, ptr %11, i32 0, i32 85
  store ptr @smp_root_chan_ops, ptr %22, align 4
  %23 = getelementptr inbounds %struct.l2cap_chan, ptr %11, i32 0, i32 4
  store volatile i32 2, ptr %23, align 4
  %24 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %27, label %25

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 169
  store ptr %11, ptr %26, align 4
  br label %43

27:                                               ; preds = %13, %10
  %28 = phi ptr [ %11, %13 ], [ inttoptr (i32 -12 to ptr), %10 ]
  %29 = ptrtoint ptr %28 to i32
  br label %44

30:                                               ; preds = %9
  %31 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 169
  %32 = load ptr, ptr %31, align 4
  store ptr null, ptr %31, align 4
  %33 = getelementptr inbounds %struct.l2cap_chan, ptr %32, i32 0, i32 84
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  store ptr null, ptr %33, align 4
  %37 = getelementptr inbounds %struct.smp_dev, ptr %34, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.crypto_shash, ptr %38, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %38, ptr noundef %39) #11
  %40 = getelementptr inbounds %struct.smp_dev, ptr %34, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  tail call void @crypto_destroy_tfm(ptr noundef %41, ptr noundef %41) #11
  tail call void @kfree_sensitive(ptr noundef nonnull %34) #11
  br label %42

42:                                               ; preds = %36, %30
  tail call void @l2cap_chan_put(ptr noundef %32) #11
  br label %43

43:                                               ; preds = %42, %25
  tail call void @_change_bit(i32 noundef 38, ptr noundef %3) #11
  br label %44

44:                                               ; preds = %43, %27, %2
  %45 = phi i32 [ %29, %27 ], [ 0, %43 ], [ -114, %2 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @smp_add_cid(ptr noundef %0, i16 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = icmp eq i16 %1, 7
  br i1 %4, label %25, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 92) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %52, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 0) #11
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.8, ptr noundef %13) #11
  tail call void @kfree_sensitive(ptr noundef nonnull %7) #11
  br label %52

14:                                               ; preds = %9
  %15 = tail call ptr @crypto_alloc_kpp(ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 0) #11
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.10, ptr noundef %18) #11
  %19 = getelementptr inbounds %struct.crypto_shash, ptr %10, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %10, ptr noundef %19) #11
  tail call void @kfree_sensitive(ptr noundef nonnull %7) #11
  br label %52

20:                                               ; preds = %14
  store i8 0, ptr %7, align 8
  %21 = getelementptr inbounds %struct.smp_dev, ptr %7, i32 0, i32 4
  store ptr %10, ptr %21, align 4
  %22 = getelementptr inbounds %struct.smp_dev, ptr %7, i32 0, i32 5
  store ptr %15, ptr %22, align 8
  %23 = tail call ptr @l2cap_chan_create() #11
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %30

25:                                               ; preds = %2
  %26 = tail call ptr @l2cap_chan_create() #11
  %27 = icmp eq ptr %26, null
  br i1 %27, label %52, label %30

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.crypto_shash, ptr %10, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %10, ptr noundef %29) #11
  tail call void @crypto_destroy_tfm(ptr noundef %15, ptr noundef %15) #11
  tail call void @kfree_sensitive(ptr noundef nonnull %7) #11
  br label %52

30:                                               ; preds = %25, %20
  %31 = phi ptr [ %26, %25 ], [ %23, %20 ]
  %32 = phi ptr [ null, %25 ], [ %7, %20 ]
  %33 = getelementptr inbounds %struct.l2cap_chan, ptr %31, i32 0, i32 84
  store ptr %32, ptr %33, align 4
  %34 = tail call i32 @l2cap_add_scid(ptr noundef nonnull %31, i16 noundef zeroext %1) #11
  tail call void @l2cap_chan_set_defaults(ptr noundef nonnull %31) #11
  %35 = icmp eq i16 %1, 6
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 0, ptr %3, align 1, !annotation !9
  %37 = getelementptr inbounds %struct.l2cap_chan, ptr %31, i32 0, i32 8
  call void @hci_copy_identity_address(ptr noundef %0, ptr noundef %37, ptr noundef nonnull %3) #11
  %38 = load i8, ptr %3, align 1
  %39 = icmp eq i8 %38, 0
  %40 = select i1 %39, i8 1, i8 2
  %41 = getelementptr inbounds %struct.l2cap_chan, ptr %31, i32 0, i32 9
  store i8 %40, ptr %41, align 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  br label %46

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.l2cap_chan, ptr %31, i32 0, i32 8
  %44 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %43, ptr noundef align 1 dereferenceable(6) %44, i32 6, i1 false) #11
  %45 = getelementptr inbounds %struct.l2cap_chan, ptr %31, i32 0, i32 9
  store i8 0, ptr %45, align 2
  br label %46

46:                                               ; preds = %42, %36
  %47 = getelementptr inbounds %struct.l2cap_chan, ptr %31, i32 0, i32 5
  store i8 4, ptr %47, align 4
  %48 = getelementptr inbounds %struct.l2cap_chan, ptr %31, i32 0, i32 17
  store i8 0, ptr %48, align 2
  %49 = getelementptr inbounds %struct.l2cap_chan, ptr %31, i32 0, i32 14
  store i16 672, ptr %49, align 4
  %50 = getelementptr inbounds %struct.l2cap_chan, ptr %31, i32 0, i32 85
  store ptr @smp_root_chan_ops, ptr %50, align 4
  %51 = getelementptr inbounds %struct.l2cap_chan, ptr %31, i32 0, i32 4
  store volatile i32 2, ptr %51, align 4
  br label %52

52:                                               ; preds = %46, %28, %25, %17, %12, %5
  %53 = phi ptr [ %31, %46 ], [ %10, %12 ], [ %15, %17 ], [ inttoptr (i32 -12 to ptr), %5 ], [ inttoptr (i32 -12 to ptr), %28 ], [ inttoptr (i32 -12 to ptr), %25 ]
  ret ptr %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @smp_del_chan(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 84
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  store ptr null, ptr %2, align 4
  %6 = getelementptr inbounds %struct.smp_dev, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.crypto_shash, ptr %7, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %7, ptr noundef %8) #11
  %9 = getelementptr inbounds %struct.smp_dev, ptr %3, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  tail call void @crypto_destroy_tfm(ptr noundef %10, ptr noundef %10) #11
  tail call void @kfree_sensitive(ptr noundef nonnull %3) #11
  br label %11

11:                                               ; preds = %5, %1
  tail call void @l2cap_chan_put(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_change_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @smp_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 4
  %3 = load i8, ptr %2, align 2
  %4 = and i8 %3, 64
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %63, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 168
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !14

10:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 3410, i32 noundef 9, ptr noundef null) #11
  %11 = load ptr, ptr %7, align 8
  store ptr null, ptr %7, align 8
  tail call fastcc void @smp_del_chan(ptr noundef %11)
  br label %12

12:                                               ; preds = %10, %6
  %13 = tail call fastcc ptr @smp_add_cid(ptr noundef %0, i16 noundef zeroext 6)
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = ptrtoint ptr %13 to i32
  br label %63

17:                                               ; preds = %12
  store ptr %13, ptr %7, align 8
  %18 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 2, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 64
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %63, label %27

27:                                               ; preds = %22, %17
  %28 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 169
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31, !prof !14

31:                                               ; preds = %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 3428, i32 noundef 9, ptr noundef null) #11
  %32 = load ptr, ptr %28, align 4
  store ptr null, ptr %28, align 4
  tail call fastcc void @smp_del_chan(ptr noundef %32)
  br label %33

33:                                               ; preds = %31, %27
  %34 = tail call ptr @l2cap_chan_create() #11
  %35 = icmp eq ptr %34, null
  br i1 %35, label %48, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.l2cap_chan, ptr %34, i32 0, i32 84
  store ptr null, ptr %37, align 4
  %38 = tail call i32 @l2cap_add_scid(ptr noundef nonnull %34, i16 noundef zeroext 7) #11
  tail call void @l2cap_chan_set_defaults(ptr noundef nonnull %34) #11
  %39 = getelementptr inbounds %struct.l2cap_chan, ptr %34, i32 0, i32 8
  %40 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %39, ptr noundef align 1 dereferenceable(6) %40, i32 6, i1 false) #11
  %41 = getelementptr inbounds %struct.l2cap_chan, ptr %34, i32 0, i32 9
  store i8 0, ptr %41, align 2
  %42 = getelementptr inbounds %struct.l2cap_chan, ptr %34, i32 0, i32 5
  store i8 4, ptr %42, align 4
  %43 = getelementptr inbounds %struct.l2cap_chan, ptr %34, i32 0, i32 17
  store i8 0, ptr %43, align 2
  %44 = getelementptr inbounds %struct.l2cap_chan, ptr %34, i32 0, i32 14
  store i16 672, ptr %44, align 4
  %45 = getelementptr inbounds %struct.l2cap_chan, ptr %34, i32 0, i32 85
  store ptr @smp_root_chan_ops, ptr %45, align 4
  %46 = getelementptr inbounds %struct.l2cap_chan, ptr %34, i32 0, i32 4
  store volatile i32 2, ptr %46, align 4
  %47 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %48, label %62

48:                                               ; preds = %36, %33
  %49 = phi ptr [ %34, %36 ], [ inttoptr (i32 -12 to ptr), %33 ]
  %50 = ptrtoint ptr %49 to i32
  %51 = load ptr, ptr %7, align 8
  store ptr null, ptr %7, align 8
  %52 = getelementptr inbounds %struct.l2cap_chan, ptr %51, i32 0, i32 84
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %48
  store ptr null, ptr %52, align 4
  %56 = getelementptr inbounds %struct.smp_dev, ptr %53, i32 0, i32 4
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.crypto_shash, ptr %57, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %57, ptr noundef %58) #11
  %59 = getelementptr inbounds %struct.smp_dev, ptr %53, i32 0, i32 5
  %60 = load ptr, ptr %59, align 4
  tail call void @crypto_destroy_tfm(ptr noundef %60, ptr noundef %60) #11
  tail call void @kfree_sensitive(ptr noundef nonnull %53) #11
  br label %61

61:                                               ; preds = %55, %48
  tail call void @l2cap_chan_put(ptr noundef %51) #11
  br label %63

62:                                               ; preds = %36
  store ptr %34, ptr %28, align 4
  br label %63

63:                                               ; preds = %62, %61, %22, %15, %1
  %64 = phi i32 [ %16, %15 ], [ %50, %61 ], [ 0, %62 ], [ 0, %1 ], [ 0, %22 ]
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @smp_unregister(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 169
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  store ptr null, ptr %2, align 4
  %6 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 84
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  store ptr null, ptr %6, align 4
  %10 = getelementptr inbounds %struct.smp_dev, ptr %7, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.crypto_shash, ptr %11, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %11, ptr noundef %12) #11
  %13 = getelementptr inbounds %struct.smp_dev, ptr %7, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  tail call void @crypto_destroy_tfm(ptr noundef %14, ptr noundef %14) #11
  tail call void @kfree_sensitive(ptr noundef nonnull %7) #11
  br label %15

15:                                               ; preds = %9, %5
  tail call void @l2cap_chan_put(ptr noundef nonnull %3) #11
  br label %16

16:                                               ; preds = %15, %1
  %17 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 168
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %16
  store ptr null, ptr %17, align 8
  %21 = getelementptr inbounds %struct.l2cap_chan, ptr %18, i32 0, i32 84
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  store ptr null, ptr %21, align 4
  %25 = getelementptr inbounds %struct.smp_dev, ptr %22, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.crypto_shash, ptr %26, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %26, ptr noundef %27) #11
  %28 = getelementptr inbounds %struct.smp_dev, ptr %22, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  tail call void @crypto_destroy_tfm(ptr noundef %29, ptr noundef %29) #11
  tail call void @kfree_sensitive(ptr noundef nonnull %22) #11
  br label %30

30:                                               ; preds = %24, %20
  tail call void @l2cap_chan_put(ptr noundef nonnull %18) #11
  br label %31

31:                                               ; preds = %30, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smp_e(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.crypto_aes_ctx, align 4
  %4 = alloca [16 x i8], align 1
  %5 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(484) %3, i8 0, i32 484, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !9
  %6 = load i8, ptr %0, align 1
  %7 = getelementptr inbounds i8, ptr %4, i32 15
  store i8 %6, ptr %7, align 1
  %8 = getelementptr i8, ptr %0, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr inbounds i8, ptr %4, i32 14
  store i8 %9, ptr %10, align 1
  %11 = getelementptr i8, ptr %0, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr inbounds i8, ptr %4, i32 13
  store i8 %12, ptr %13, align 1
  %14 = getelementptr i8, ptr %0, i32 3
  %15 = load i8, ptr %14, align 1
  %16 = getelementptr inbounds i8, ptr %4, i32 12
  store i8 %15, ptr %16, align 1
  %17 = getelementptr i8, ptr %0, i32 4
  %18 = load i8, ptr %17, align 1
  %19 = getelementptr inbounds i8, ptr %4, i32 11
  store i8 %18, ptr %19, align 1
  %20 = getelementptr i8, ptr %0, i32 5
  %21 = load i8, ptr %20, align 1
  %22 = getelementptr inbounds i8, ptr %4, i32 10
  store i8 %21, ptr %22, align 1
  %23 = getelementptr i8, ptr %0, i32 6
  %24 = load i8, ptr %23, align 1
  %25 = getelementptr inbounds i8, ptr %4, i32 9
  store i8 %24, ptr %25, align 1
  %26 = getelementptr i8, ptr %0, i32 7
  %27 = load i8, ptr %26, align 1
  %28 = getelementptr inbounds i8, ptr %4, i32 8
  store i8 %27, ptr %28, align 1
  %29 = getelementptr i8, ptr %0, i32 8
  %30 = load i8, ptr %29, align 1
  %31 = getelementptr inbounds i8, ptr %4, i32 7
  store i8 %30, ptr %31, align 1
  %32 = getelementptr i8, ptr %0, i32 9
  %33 = load i8, ptr %32, align 1
  %34 = getelementptr inbounds i8, ptr %4, i32 6
  store i8 %33, ptr %34, align 1
  %35 = getelementptr i8, ptr %0, i32 10
  %36 = load i8, ptr %35, align 1
  %37 = getelementptr inbounds i8, ptr %4, i32 5
  store i8 %36, ptr %37, align 1
  %38 = getelementptr i8, ptr %0, i32 11
  %39 = load i8, ptr %38, align 1
  %40 = getelementptr inbounds i8, ptr %4, i32 4
  store i8 %39, ptr %40, align 1
  %41 = getelementptr i8, ptr %0, i32 12
  %42 = load i8, ptr %41, align 1
  %43 = getelementptr inbounds i8, ptr %4, i32 3
  store i8 %42, ptr %43, align 1
  %44 = getelementptr i8, ptr %0, i32 13
  %45 = load i8, ptr %44, align 1
  %46 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 %45, ptr %46, align 1
  %47 = getelementptr i8, ptr %0, i32 14
  %48 = load i8, ptr %47, align 1
  %49 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %48, ptr %49, align 1
  %50 = getelementptr i8, ptr %0, i32 15
  %51 = load i8, ptr %50, align 1
  store i8 %51, ptr %4, align 1
  %52 = call i32 @aes_expandkey(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 16) #11
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %117

54:                                               ; preds = %2
  %55 = load i8, ptr %1, align 1
  %56 = getelementptr inbounds i8, ptr %5, i32 15
  store i8 %55, ptr %56, align 1
  %57 = getelementptr i8, ptr %1, i32 1
  %58 = load i8, ptr %57, align 1
  %59 = getelementptr inbounds i8, ptr %5, i32 14
  store i8 %58, ptr %59, align 1
  %60 = getelementptr i8, ptr %1, i32 2
  %61 = load i8, ptr %60, align 1
  %62 = getelementptr inbounds i8, ptr %5, i32 13
  store i8 %61, ptr %62, align 1
  %63 = getelementptr i8, ptr %1, i32 3
  %64 = load i8, ptr %63, align 1
  %65 = getelementptr inbounds i8, ptr %5, i32 12
  store i8 %64, ptr %65, align 1
  %66 = getelementptr i8, ptr %1, i32 4
  %67 = load i8, ptr %66, align 1
  %68 = getelementptr inbounds i8, ptr %5, i32 11
  store i8 %67, ptr %68, align 1
  %69 = getelementptr i8, ptr %1, i32 5
  %70 = load i8, ptr %69, align 1
  %71 = getelementptr inbounds i8, ptr %5, i32 10
  store i8 %70, ptr %71, align 1
  %72 = getelementptr i8, ptr %1, i32 6
  %73 = load i8, ptr %72, align 1
  %74 = getelementptr inbounds i8, ptr %5, i32 9
  store i8 %73, ptr %74, align 1
  %75 = getelementptr i8, ptr %1, i32 7
  %76 = load i8, ptr %75, align 1
  %77 = getelementptr inbounds i8, ptr %5, i32 8
  store i8 %76, ptr %77, align 1
  %78 = getelementptr i8, ptr %1, i32 8
  %79 = load i8, ptr %78, align 1
  %80 = getelementptr inbounds i8, ptr %5, i32 7
  store i8 %79, ptr %80, align 1
  %81 = getelementptr i8, ptr %1, i32 9
  %82 = load i8, ptr %81, align 1
  %83 = getelementptr inbounds i8, ptr %5, i32 6
  store i8 %82, ptr %83, align 1
  %84 = getelementptr i8, ptr %1, i32 10
  %85 = load i8, ptr %84, align 1
  %86 = getelementptr inbounds i8, ptr %5, i32 5
  store i8 %85, ptr %86, align 1
  %87 = getelementptr i8, ptr %1, i32 11
  %88 = load i8, ptr %87, align 1
  %89 = getelementptr inbounds i8, ptr %5, i32 4
  store i8 %88, ptr %89, align 1
  %90 = getelementptr i8, ptr %1, i32 12
  %91 = load i8, ptr %90, align 1
  %92 = getelementptr inbounds i8, ptr %5, i32 3
  store i8 %91, ptr %92, align 1
  %93 = getelementptr i8, ptr %1, i32 13
  %94 = load i8, ptr %93, align 1
  %95 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 %94, ptr %95, align 1
  %96 = getelementptr i8, ptr %1, i32 14
  %97 = load i8, ptr %96, align 1
  %98 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %97, ptr %98, align 1
  %99 = getelementptr i8, ptr %1, i32 15
  %100 = load i8, ptr %99, align 1
  store i8 %100, ptr %5, align 1
  call void @aes_encrypt(ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %5) #11
  %101 = load i8, ptr %5, align 1
  store i8 %101, ptr %99, align 1
  %102 = load i8, ptr %98, align 1
  store i8 %102, ptr %96, align 1
  %103 = load i8, ptr %95, align 1
  store i8 %103, ptr %93, align 1
  %104 = load i8, ptr %92, align 1
  store i8 %104, ptr %90, align 1
  %105 = load i8, ptr %89, align 1
  store i8 %105, ptr %87, align 1
  %106 = load i8, ptr %86, align 1
  store i8 %106, ptr %84, align 1
  %107 = load i8, ptr %83, align 1
  store i8 %107, ptr %81, align 1
  %108 = load i8, ptr %80, align 1
  store i8 %108, ptr %78, align 1
  %109 = load i8, ptr %77, align 1
  store i8 %109, ptr %75, align 1
  %110 = load i8, ptr %74, align 1
  store i8 %110, ptr %72, align 1
  %111 = load i8, ptr %71, align 1
  store i8 %111, ptr %69, align 1
  %112 = load i8, ptr %68, align 1
  store i8 %112, ptr %66, align 1
  %113 = load i8, ptr %65, align 1
  store i8 %113, ptr %63, align 1
  %114 = load i8, ptr %62, align 1
  store i8 %114, ptr %60, align 1
  %115 = load i8, ptr %59, align 1
  store i8 %115, ptr %57, align 1
  %116 = load i8, ptr %56, align 1
  store i8 %116, ptr %1, align 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(484) %3, i8 0, i32 484, i1 false) #11
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %3) #11, !srcloc !15
  br label %118

117:                                              ; preds = %2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.3, i32 noundef %52) #11
  br label %118

118:                                              ; preds = %117, %54
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %3) #11
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aes_expandkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aes_encrypt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @aes_cmac(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  %6 = alloca [16 x i8], align 1
  %7 = alloca [16 x i8], align 1
  %8 = alloca [80 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %7, i8 0, i32 16, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %8) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(80) %8, i8 0, i32 80, i1 false), !annotation !9
  %9 = icmp eq ptr %0, null
  br i1 %9, label %58, label %10

10:                                               ; preds = %5
  %11 = load i8, ptr %1, align 1
  %12 = getelementptr inbounds i8, ptr %6, i32 15
  store i8 %11, ptr %12, align 1
  %13 = getelementptr i8, ptr %1, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = getelementptr inbounds i8, ptr %6, i32 14
  store i8 %14, ptr %15, align 1
  %16 = getelementptr i8, ptr %1, i32 2
  %17 = load i8, ptr %16, align 1
  %18 = getelementptr inbounds i8, ptr %6, i32 13
  store i8 %17, ptr %18, align 1
  %19 = getelementptr i8, ptr %1, i32 3
  %20 = load i8, ptr %19, align 1
  %21 = getelementptr inbounds i8, ptr %6, i32 12
  store i8 %20, ptr %21, align 1
  %22 = getelementptr i8, ptr %1, i32 4
  %23 = load i8, ptr %22, align 1
  %24 = getelementptr inbounds i8, ptr %6, i32 11
  store i8 %23, ptr %24, align 1
  %25 = getelementptr i8, ptr %1, i32 5
  %26 = load i8, ptr %25, align 1
  %27 = getelementptr inbounds i8, ptr %6, i32 10
  store i8 %26, ptr %27, align 1
  %28 = getelementptr i8, ptr %1, i32 6
  %29 = load i8, ptr %28, align 1
  %30 = getelementptr inbounds i8, ptr %6, i32 9
  store i8 %29, ptr %30, align 1
  %31 = getelementptr i8, ptr %1, i32 7
  %32 = load i8, ptr %31, align 1
  %33 = getelementptr inbounds i8, ptr %6, i32 8
  store i8 %32, ptr %33, align 1
  %34 = getelementptr i8, ptr %1, i32 8
  %35 = load i8, ptr %34, align 1
  %36 = getelementptr inbounds i8, ptr %6, i32 7
  store i8 %35, ptr %36, align 1
  %37 = getelementptr i8, ptr %1, i32 9
  %38 = load i8, ptr %37, align 1
  %39 = getelementptr inbounds i8, ptr %6, i32 6
  store i8 %38, ptr %39, align 1
  %40 = getelementptr i8, ptr %1, i32 10
  %41 = load i8, ptr %40, align 1
  %42 = getelementptr inbounds i8, ptr %6, i32 5
  store i8 %41, ptr %42, align 1
  %43 = getelementptr i8, ptr %1, i32 11
  %44 = load i8, ptr %43, align 1
  %45 = getelementptr inbounds i8, ptr %6, i32 4
  store i8 %44, ptr %45, align 1
  %46 = getelementptr i8, ptr %1, i32 12
  %47 = load i8, ptr %46, align 1
  %48 = getelementptr inbounds i8, ptr %6, i32 3
  store i8 %47, ptr %48, align 1
  %49 = getelementptr i8, ptr %1, i32 13
  %50 = load i8, ptr %49, align 1
  %51 = getelementptr inbounds i8, ptr %6, i32 2
  store i8 %50, ptr %51, align 1
  %52 = getelementptr i8, ptr %1, i32 14
  %53 = load i8, ptr %52, align 1
  %54 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 %53, ptr %54, align 1
  %55 = getelementptr i8, ptr %1, i32 15
  %56 = load i8, ptr %55, align 1
  store i8 %56, ptr %6, align 1
  %57 = icmp eq i32 %3, 0
  br i1 %57, label %68, label %59

58:                                               ; preds = %5
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.4, ptr noundef null) #11
  br label %123

59:                                               ; preds = %59, %10
  %60 = phi i32 [ %66, %59 ], [ 0, %10 ]
  %61 = getelementptr i8, ptr %2, i32 %60
  %62 = load i8, ptr %61, align 1
  %63 = xor i32 %60, -1
  %64 = add i32 %63, %3
  %65 = getelementptr i8, ptr %8, i32 %64
  store i8 %62, ptr %65, align 1
  %66 = add nuw i32 %60, 1
  %67 = icmp eq i32 %66, %3
  br i1 %67, label %68, label %59

68:                                               ; preds = %59, %10
  %69 = call i32 @crypto_shash_setkey(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 16) #11
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.3, i32 noundef %69) #11
  br label %123

72:                                               ; preds = %68
  %73 = call i32 @crypto_shash_tfm_digest(ptr noundef nonnull %0, ptr noundef nonnull %8, i32 noundef %3, ptr noundef nonnull %7) #11
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %122

75:                                               ; preds = %72
  %76 = load i8, ptr %7, align 1
  %77 = getelementptr i8, ptr %4, i32 15
  store i8 %76, ptr %77, align 1
  %78 = getelementptr inbounds i8, ptr %7, i32 1
  %79 = load i8, ptr %78, align 1
  %80 = getelementptr i8, ptr %4, i32 14
  store i8 %79, ptr %80, align 1
  %81 = getelementptr inbounds i8, ptr %7, i32 2
  %82 = load i8, ptr %81, align 1
  %83 = getelementptr i8, ptr %4, i32 13
  store i8 %82, ptr %83, align 1
  %84 = getelementptr inbounds i8, ptr %7, i32 3
  %85 = load i8, ptr %84, align 1
  %86 = getelementptr i8, ptr %4, i32 12
  store i8 %85, ptr %86, align 1
  %87 = getelementptr inbounds i8, ptr %7, i32 4
  %88 = load i8, ptr %87, align 1
  %89 = getelementptr i8, ptr %4, i32 11
  store i8 %88, ptr %89, align 1
  %90 = getelementptr inbounds i8, ptr %7, i32 5
  %91 = load i8, ptr %90, align 1
  %92 = getelementptr i8, ptr %4, i32 10
  store i8 %91, ptr %92, align 1
  %93 = getelementptr inbounds i8, ptr %7, i32 6
  %94 = load i8, ptr %93, align 1
  %95 = getelementptr i8, ptr %4, i32 9
  store i8 %94, ptr %95, align 1
  %96 = getelementptr inbounds i8, ptr %7, i32 7
  %97 = load i8, ptr %96, align 1
  %98 = getelementptr i8, ptr %4, i32 8
  store i8 %97, ptr %98, align 1
  %99 = getelementptr inbounds i8, ptr %7, i32 8
  %100 = load i8, ptr %99, align 1
  %101 = getelementptr i8, ptr %4, i32 7
  store i8 %100, ptr %101, align 1
  %102 = getelementptr inbounds i8, ptr %7, i32 9
  %103 = load i8, ptr %102, align 1
  %104 = getelementptr i8, ptr %4, i32 6
  store i8 %103, ptr %104, align 1
  %105 = getelementptr inbounds i8, ptr %7, i32 10
  %106 = load i8, ptr %105, align 1
  %107 = getelementptr i8, ptr %4, i32 5
  store i8 %106, ptr %107, align 1
  %108 = getelementptr inbounds i8, ptr %7, i32 11
  %109 = load i8, ptr %108, align 1
  %110 = getelementptr i8, ptr %4, i32 4
  store i8 %109, ptr %110, align 1
  %111 = getelementptr inbounds i8, ptr %7, i32 12
  %112 = load i8, ptr %111, align 1
  %113 = getelementptr i8, ptr %4, i32 3
  store i8 %112, ptr %113, align 1
  %114 = getelementptr inbounds i8, ptr %7, i32 13
  %115 = load i8, ptr %114, align 1
  %116 = getelementptr i8, ptr %4, i32 2
  store i8 %115, ptr %116, align 1
  %117 = getelementptr inbounds i8, ptr %7, i32 14
  %118 = load i8, ptr %117, align 1
  %119 = getelementptr i8, ptr %4, i32 1
  store i8 %118, ptr %119, align 1
  %120 = getelementptr inbounds i8, ptr %7, i32 15
  %121 = load i8, ptr %120, align 1
  store i8 %121, ptr %4, align 1
  br label %123

122:                                              ; preds = %72
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.5, i32 noundef %73) #11
  br label %123

123:                                              ; preds = %122, %75, %71, %58
  %124 = phi i32 [ %69, %71 ], [ %73, %122 ], [ -22, %58 ], [ 0, %75 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  ret i32 %124
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_tfm_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i8 @sc_passkey_round(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.kvec], align 4
  %5 = alloca %struct.msghdr, align 8
  %6 = alloca [65 x i8], align 1
  %7 = alloca [16 x i8], align 1
  %8 = load ptr, ptr %0, align 4
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %7, i8 0, i32 16, i1 false), !annotation !9
  %10 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 24
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp ugt i8 %11, 19
  br i1 %13, label %102, label %14

14:                                               ; preds = %2
  switch i8 %1, label %95 [
    i8 4, label %15
    i8 3, label %62
  ]

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.hci_conn, ptr %9, i32 0, i32 29
  %17 = load i32, ptr %16, align 4
  %18 = lshr i32 %17, %12
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = or i8 %20, -128
  %22 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 29
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 26
  %25 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 25
  %26 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %6) #11
  store i8 %21, ptr %6, align 1
  %27 = getelementptr inbounds i8, ptr %6, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %27, ptr noundef align 1 dereferenceable(32) %25, i32 32, i1 false) #11
  %28 = getelementptr inbounds i8, ptr %6, i32 33
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %28, ptr noundef align 1 dereferenceable(32) %24, i32 32, i1 false) #11
  %29 = call fastcc i32 @aes_cmac(ptr noundef %23, ptr noundef %26, ptr noundef nonnull %6, i32 noundef 65, ptr noundef nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %6) #11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %102

31:                                               ; preds = %15
  %32 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 7
  %33 = call i32 @__crypto_memneq(ptr noundef %32, ptr noundef nonnull %7, i32 noundef 16) #11
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %102

35:                                               ; preds = %31
  %36 = load i8, ptr %10, align 1
  %37 = add i8 %36, 1
  store i8 %37, ptr %10, align 1
  %38 = icmp eq i8 %37, 20
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 28
  %41 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 8
  %42 = call fastcc i32 @sc_mackey_and_ltk(ptr noundef %0, ptr noundef %40, ptr noundef %41)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %102

44:                                               ; preds = %39, %35
  %45 = getelementptr inbounds %struct.hci_conn, ptr %9, i32 0, i32 16
  %46 = load i8, ptr %45, align 1, !range !8
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 5
  call fastcc void @smp_send_cmd(ptr noundef %8, i8 noundef zeroext 4, i16 noundef zeroext 16, ptr noundef %49)
  %50 = load i8, ptr %10, align 1
  %51 = icmp eq i8 %50, 20
  %52 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 2
  br i1 %51, label %53, label %54

53:                                               ; preds = %48
  call void @_set_bit(i32 noundef 13, ptr noundef %52) #11
  br label %102

54:                                               ; preds = %48
  call void @_set_bit(i32 noundef 3, ptr noundef %52) #11
  br label %102

55:                                               ; preds = %44
  %56 = load i8, ptr %10, align 1
  %57 = icmp eq i8 %56, 20
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = call fastcc zeroext i8 @sc_passkey_round(ptr noundef %0, i8 noundef zeroext 0)
  br label %102

60:                                               ; preds = %55
  call fastcc void @sc_dhkey_check(ptr noundef %0)
  %61 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 2
  call void @_set_bit(i32 noundef 13, ptr noundef %61) #11
  br label %102

62:                                               ; preds = %14
  %63 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 22
  %64 = load volatile i32, ptr %63, align 4
  %65 = and i32 %64, 256
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  tail call void @_set_bit(i32 noundef 1, ptr noundef %63) #11
  br label %102

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 4, ptr noundef %69) #11
  %70 = getelementptr inbounds %struct.hci_conn, ptr %9, i32 0, i32 16
  %71 = load i8, ptr %70, align 1, !range !8
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %93, label %73

73:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 4, ptr %3, align 1
  %74 = getelementptr inbounds %struct.l2cap_conn, ptr %8, i32 0, i32 17
  %75 = load ptr, ptr %74, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #11
  %76 = icmp eq ptr %75, null
  br i1 %76, label %92, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 5
  store ptr %3, ptr %4, align 4
  %79 = getelementptr inbounds %struct.kvec, ptr %4, i32 0, i32 1
  store i32 1, ptr %79, align 4
  %80 = getelementptr inbounds [2 x %struct.kvec], ptr %4, i32 0, i32 1
  store ptr %78, ptr %80, align 4
  %81 = getelementptr inbounds [2 x %struct.kvec], ptr %4, i32 0, i32 1, i32 1
  store i32 16, ptr %81, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i32 56, i1 false) #11
  %82 = getelementptr inbounds %struct.msghdr, ptr %5, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %82, i32 noundef 1, ptr noundef nonnull %4, i32 noundef 2, i32 noundef 17) #11
  %83 = call i32 @l2cap_chan_send(ptr noundef nonnull %75, ptr noundef nonnull %5, i32 noundef 17) #11
  %84 = getelementptr inbounds %struct.l2cap_chan, ptr %75, i32 0, i32 84
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %77
  %88 = getelementptr inbounds %struct.smp_chan, ptr %85, i32 0, i32 1
  %89 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %88) #11
  %90 = load ptr, ptr @system_wq, align 4
  %91 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %90, ptr noundef %88, i32 noundef 3000) #11
  br label %92

92:                                               ; preds = %87, %77, %73
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %102

93:                                               ; preds = %68
  %94 = tail call fastcc zeroext i8 @sc_passkey_send_confirm(ptr noundef %0)
  br label %102

95:                                               ; preds = %14
  %96 = getelementptr inbounds %struct.hci_conn, ptr %9, i32 0, i32 16
  %97 = load i8, ptr %96, align 1, !range !8
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 3, ptr noundef %100) #11
  %101 = tail call fastcc zeroext i8 @sc_passkey_send_confirm(ptr noundef %0)
  br label %102

102:                                              ; preds = %99, %95, %93, %92, %67, %60, %58, %54, %53, %39, %31, %15, %2
  %103 = phi i8 [ %101, %99 ], [ 0, %67 ], [ 0, %92 ], [ %94, %93 ], [ %59, %58 ], [ 0, %60 ], [ 0, %2 ], [ 8, %15 ], [ 4, %31 ], [ 8, %39 ], [ 0, %54 ], [ 0, %53 ], [ 0, %95 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  ret i8 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sc_dhkey_check(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca [2 x %struct.kvec], align 4
  %4 = alloca %struct.msghdr, align 8
  %5 = alloca [65 x i8], align 1
  %6 = alloca %struct.smp_cmd_dhkey_check, align 1
  %7 = alloca [7 x i8], align 1
  %8 = alloca [7 x i8], align 1
  %9 = alloca [3 x i8], align 1
  %10 = alloca [12 x i8], align 1
  %11 = load ptr, ptr %0, align 4
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %6, i8 0, i32 16, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %9)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10)
  %13 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %7, ptr noundef align 2 dereferenceable(6) %13, i32 6, i1 false)
  %14 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %8, ptr noundef align 1 dereferenceable(6) %14, i32 6, i1 false)
  %15 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 7
  %16 = load i8, ptr %15, align 8
  %17 = getelementptr inbounds [7 x i8], ptr %7, i32 0, i32 6
  store i8 %16, ptr %17, align 1
  %18 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 9
  %19 = load i8, ptr %18, align 1
  %20 = getelementptr inbounds [7 x i8], ptr %8, i32 0, i32 6
  store i8 %19, ptr %20, align 1
  %21 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 16
  %22 = load i8, ptr %21, align 1, !range !8
  %23 = icmp eq i8 %22, 0
  %24 = getelementptr %struct.smp_chan, ptr %0, i32 0, i32 4, i32 1
  %25 = getelementptr %struct.smp_chan, ptr %0, i32 0, i32 3, i32 1
  %26 = select i1 %23, ptr %24, ptr %25
  %27 = select i1 %23, ptr %8, ptr %7
  %28 = select i1 %23, ptr %7, ptr %8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %9, ptr noundef align 1 dereferenceable(3) %26, i32 3, i1 false)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) %10, i8 0, i32 12, i1 false)
  %29 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 23
  %30 = load i8, ptr %29, align 4
  switch i8 %30, label %34 [
    i8 2, label %31
    i8 5, label %31
  ]

31:                                               ; preds = %1, %1
  %32 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 29
  %33 = load i32, ptr %32, align 4
  br label %34

34:                                               ; preds = %31, %1
  %35 = phi i32 [ 0, %1 ], [ %33, %31 ]
  %36 = icmp eq i8 %30, 4
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 9
  %39 = load i32, ptr %38, align 2
  %40 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 9, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) %10, ptr noundef align 2 dereferenceable(12) %40, i32 12, i1 false)
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi i32 [ %39, %37 ], [ %35, %34 ]
  %43 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 29
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 28
  %46 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 5
  %47 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %5) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %5, ptr noundef nonnull align 1 dereferenceable(7) %28, i32 7, i1 false) #11
  %48 = getelementptr inbounds i8, ptr %5, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(7) %48, ptr noundef nonnull align 1 dereferenceable(7) %27, i32 7, i1 false) #11
  %49 = getelementptr inbounds i8, ptr %5, i32 14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %49, ptr noundef nonnull align 1 dereferenceable(3) %9, i32 3, i1 false) #11
  %50 = getelementptr inbounds i8, ptr %5, i32 17
  store i32 %42, ptr %50, align 1
  %51 = getelementptr inbounds i8, ptr %5, i32 21
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %51, ptr noundef nonnull align 1 dereferenceable(12) %10, i32 12, i1 false)
  %52 = getelementptr inbounds i8, ptr %5, i32 33
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %52, ptr noundef align 1 dereferenceable(16) %47, i32 16, i1 false) #11
  %53 = getelementptr inbounds i8, ptr %5, i32 49
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %53, ptr noundef align 1 dereferenceable(16) %46, i32 16, i1 false) #11
  %54 = call fastcc i32 @aes_cmac(ptr noundef %44, ptr noundef %45, ptr noundef nonnull %5, i32 noundef 65, ptr noundef nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %5) #11
  %55 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  store i8 13, ptr %2, align 1
  %56 = getelementptr inbounds %struct.l2cap_conn, ptr %55, i32 0, i32 17
  %57 = load ptr, ptr %56, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #11
  %58 = icmp eq ptr %57, null
  br i1 %58, label %73, label %59

59:                                               ; preds = %41
  store ptr %2, ptr %3, align 4
  %60 = getelementptr inbounds %struct.kvec, ptr %3, i32 0, i32 1
  store i32 1, ptr %60, align 4
  %61 = getelementptr inbounds [2 x %struct.kvec], ptr %3, i32 0, i32 1
  store ptr %6, ptr %61, align 4
  %62 = getelementptr inbounds [2 x %struct.kvec], ptr %3, i32 0, i32 1, i32 1
  store i32 16, ptr %62, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i32 56, i1 false) #11
  %63 = getelementptr inbounds %struct.msghdr, ptr %4, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %63, i32 noundef 1, ptr noundef nonnull %3, i32 noundef 2, i32 noundef 17) #11
  %64 = call i32 @l2cap_chan_send(ptr noundef nonnull %57, ptr noundef nonnull %4, i32 noundef 17) #11
  %65 = getelementptr inbounds %struct.l2cap_chan, ptr %57, i32 0, i32 84
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct.smp_chan, ptr %66, i32 0, i32 1
  %70 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %69) #11
  %71 = load ptr, ptr @system_wq, align 4
  %72 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %71, ptr noundef %69, i32 noundef 3000) #11
  br label %73

73:                                               ; preds = %68, %59, %41
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10)
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sc_mackey_and_ltk(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca [16 x i8], align 1
  %5 = alloca [53 x i8], align 2
  %6 = alloca [16 x i8], align 1
  %7 = alloca [6 x i8], align 1
  %8 = alloca [6 x i8], align 1
  %9 = load ptr, ptr %0, align 4
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8)
  %11 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 16
  %12 = load i8, ptr %11, align 1, !range !8
  %13 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %7, ptr noundef align 2 dereferenceable(6) %13, i32 6, i1 false)
  %14 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %8, ptr noundef align 1 dereferenceable(6) %14, i32 6, i1 false)
  %15 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 7
  %16 = load i8, ptr %15, align 8
  %17 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 9
  %18 = load i8, ptr %17, align 1
  %19 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 29
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(16) @__const.smp_f5.salt, i32 16, i1 false) #11
  call void @llvm.lifetime.start.p0(i64 53, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %6, i8 0, i32 16, i1 false) #11, !annotation !9
  %22 = call fastcc i32 @aes_cmac(ptr noundef %20, ptr noundef nonnull %4, ptr noundef %21, i32 noundef 32, ptr noundef nonnull %6) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %3
  %25 = icmp eq i8 %12, 0
  %26 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 5
  %27 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 6
  %28 = select i1 %25, ptr %26, ptr %27
  %29 = select i1 %25, ptr %27, ptr %26
  store i16 256, ptr %5, align 2
  %30 = getelementptr inbounds i8, ptr %5, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %30, ptr noundef nonnull align 1 dereferenceable(6) %8, i32 6, i1 false)
  %31 = getelementptr inbounds i8, ptr %5, i32 8
  store i8 %18, ptr %31, align 2
  %32 = getelementptr inbounds i8, ptr %5, i32 9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %32, ptr noundef nonnull align 1 dereferenceable(6) %7, i32 6, i1 false)
  %33 = getelementptr inbounds i8, ptr %5, i32 15
  store i8 %16, ptr %33, align 1
  %34 = getelementptr inbounds i8, ptr %5, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(16) %34, ptr noundef align 1 dereferenceable(16) %28, i32 16, i1 false) #11
  %35 = getelementptr inbounds i8, ptr %5, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(16) %35, ptr noundef align 1 dereferenceable(16) %29, i32 16, i1 false) #11
  %36 = getelementptr inbounds i8, ptr %5, i32 48
  store i32 1651797093, ptr %36, align 2
  %37 = getelementptr inbounds [53 x i8], ptr %5, i32 0, i32 52
  store i8 0, ptr %37, align 2
  %38 = call fastcc i32 @aes_cmac(ptr noundef %20, ptr noundef nonnull %6, ptr noundef nonnull %5, i32 noundef 53, ptr noundef %1) #11
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %24
  store i8 1, ptr %37, align 2
  %41 = call fastcc i32 @aes_cmac(ptr noundef %20, ptr noundef nonnull %6, ptr noundef nonnull %5, i32 noundef 53, ptr noundef %2) #11
  br label %42

42:                                               ; preds = %40, %24, %3
  %43 = phi i32 [ %22, %3 ], [ %38, %24 ], [ %41, %40 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 53, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8)
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7)
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i8 @sc_passkey_send_confirm(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca [2 x %struct.kvec], align 4
  %4 = alloca %struct.msghdr, align 8
  %5 = alloca [65 x i8], align 1
  %6 = alloca %struct.smp_cmd_pairing_confirm, align 1
  %7 = load ptr, ptr %0, align 4
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %6, i8 0, i32 16, i1 false), !annotation !9
  %9 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 29
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 24
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = lshr i32 %10, %13
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = or i8 %16, -128
  %18 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 5
  tail call void @get_random_bytes(ptr noundef %18, i32 noundef 16) #11
  %19 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 29
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 25
  %22 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 26
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %5) #11
  store i8 %17, ptr %5, align 1
  %23 = getelementptr inbounds i8, ptr %5, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %23, ptr noundef align 1 dereferenceable(32) %22, i32 32, i1 false) #11
  %24 = getelementptr inbounds i8, ptr %5, i32 33
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %24, ptr noundef align 1 dereferenceable(32) %21, i32 32, i1 false) #11
  %25 = call fastcc i32 @aes_cmac(ptr noundef %20, ptr noundef %18, ptr noundef nonnull %5, i32 noundef 65, ptr noundef nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %5) #11
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  store i8 3, ptr %2, align 1
  %28 = getelementptr inbounds %struct.l2cap_conn, ptr %7, i32 0, i32 17
  %29 = load ptr, ptr %28, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #11
  %30 = icmp eq ptr %29, null
  br i1 %30, label %45, label %31

31:                                               ; preds = %27
  store ptr %2, ptr %3, align 4
  %32 = getelementptr inbounds %struct.kvec, ptr %3, i32 0, i32 1
  store i32 1, ptr %32, align 4
  %33 = getelementptr inbounds [2 x %struct.kvec], ptr %3, i32 0, i32 1
  store ptr %6, ptr %33, align 4
  %34 = getelementptr inbounds [2 x %struct.kvec], ptr %3, i32 0, i32 1, i32 1
  store i32 16, ptr %34, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i32 56, i1 false) #11
  %35 = getelementptr inbounds %struct.msghdr, ptr %4, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %35, i32 noundef 1, ptr noundef nonnull %3, i32 noundef 2, i32 noundef 17) #11
  %36 = call i32 @l2cap_chan_send(ptr noundef nonnull %29, ptr noundef nonnull %4, i32 noundef 17) #11
  %37 = getelementptr inbounds %struct.l2cap_chan, ptr %29, i32 0, i32 84
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.smp_chan, ptr %38, i32 0, i32 1
  %42 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %41) #11
  %43 = load ptr, ptr @system_wq, align 4
  %44 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %43, ptr noundef %41, i32 noundef 3000) #11
  br label %45

45:                                               ; preds = %40, %31, %27
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  br label %46

46:                                               ; preds = %45, %1
  %47 = phi i8 [ 0, %45 ], [ 8, %1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  ret i8 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_add_ltk(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_auth_failed(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @smp_chan_destroy(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.l2cap_conn, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 84
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %9, !prof !16

8:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/bluetooth/smp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 748, 0\0A.popsection", ""() #11, !srcloc !17
  unreachable

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 1
  %11 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %10) #11
  %12 = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 22
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 8
  %15 = icmp ne i32 %14, 0
  tail call void @mgmt_smp_complete(ptr noundef %6, i1 noundef zeroext %15) #11
  %16 = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 16
  %17 = load ptr, ptr %16, align 4
  tail call void @kfree_sensitive(ptr noundef %17) #11
  %18 = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 17
  %19 = load ptr, ptr %18, align 4
  tail call void @kfree_sensitive(ptr noundef %19) #11
  %20 = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 21
  %21 = load ptr, ptr %20, align 4
  tail call void @kfree_sensitive(ptr noundef %21) #11
  %22 = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 29
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.crypto_shash, ptr %23, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %23, ptr noundef %24) #11
  %25 = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 30
  %26 = load ptr, ptr %25, align 4
  tail call void @crypto_destroy_tfm(ptr noundef %26, ptr noundef %26) #11
  %27 = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 18
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %51, label %30

30:                                               ; preds = %9
  %31 = getelementptr inbounds %struct.smp_ltk, ptr %28, i32 0, i32 5
  %32 = load i8, ptr %31, align 8
  %33 = icmp eq i8 %32, 4
  br i1 %33, label %34, label %51

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 65
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.hci_dev, ptr %36, i32 0, i32 206
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, 128
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr %28, align 4
  %45 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  store ptr %43, ptr %45, align 4
  store volatile ptr %44, ptr %43, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %42, align 4
  %46 = load ptr, ptr %27, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.smp_ltk, ptr %46, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %49, ptr noundef nonnull inttoptr (i32 8 to ptr)) #11
  br label %50

50:                                               ; preds = %48, %41
  store ptr null, ptr %27, align 4
  br label %51

51:                                               ; preds = %50, %34, %30, %9
  %52 = phi ptr [ null, %50 ], [ %28, %34 ], [ %28, %30 ], [ null, %9 ]
  br i1 %15, label %90, label %53

53:                                               ; preds = %51
  %54 = icmp eq ptr %52, null
  br i1 %54, label %64, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = load ptr, ptr %52, align 4
  %59 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  store ptr %57, ptr %59, align 4
  store volatile ptr %58, ptr %57, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %56, align 4
  %60 = load ptr, ptr %27, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.smp_ltk, ptr %60, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %63, ptr noundef nonnull inttoptr (i32 8 to ptr)) #11
  br label %64

64:                                               ; preds = %62, %55, %53
  %65 = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 19
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %77, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = load ptr, ptr %66, align 4
  %72 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  store ptr %70, ptr %72, align 4
  store volatile ptr %71, ptr %70, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %69, align 4
  %73 = load ptr, ptr %65, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.smp_ltk, ptr %73, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %76, ptr noundef nonnull inttoptr (i32 8 to ptr)) #11
  br label %77

77:                                               ; preds = %75, %68, %64
  %78 = getelementptr inbounds %struct.smp_chan, ptr %5, i32 0, i32 20
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %90, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = load ptr, ptr %79, align 4
  %85 = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  store ptr %83, ptr %85, align 4
  store volatile ptr %84, ptr %83, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %82, align 4
  %86 = load ptr, ptr %78, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.smp_irk, ptr %86, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %89, ptr noundef nonnull inttoptr (i32 8 to ptr)) #11
  br label %90

90:                                               ; preds = %88, %81, %77, %51
  store ptr null, ptr %4, align 4
  tail call void @kfree_sensitive(ptr noundef nonnull %5) #11
  %91 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %91) #11, !srcloc !10
  %92 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %91, ptr %91, i32 1, ptr elementtype(i32) %91) #11, !srcloc !19
  %93 = extractvalue { i32, i32 } %92, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %126

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 14
  %97 = load i8, ptr %96, align 1
  switch i8 %97, label %117 [
    i8 1, label %98
    i8 -128, label %98
    i8 -127, label %113
  ]

98:                                               ; preds = %95, %95
  %99 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 60
  %100 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %99) #11
  %101 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 12
  %102 = load i16, ptr %101, align 4
  %103 = icmp eq i16 %102, 1
  br i1 %103, label %104, label %117

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 31
  %106 = load i16, ptr %105, align 2
  %107 = zext i16 %106 to i32
  %108 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 16
  %109 = load i8, ptr %108, align 1, !range !8
  %110 = xor i8 %109, 1
  %111 = zext i8 %110 to i32
  %112 = shl nuw nsw i32 %107, %111
  br label %117

113:                                              ; preds = %95
  %114 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 31
  %115 = load i16, ptr %114, align 2
  %116 = zext i16 %115 to i32
  br label %117

117:                                              ; preds = %113, %104, %98, %95
  %118 = phi i32 [ %116, %113 ], [ %112, %104 ], [ 0, %98 ], [ 0, %95 ]
  %119 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 58
  %120 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %119) #11
  %121 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 65
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.hci_dev, ptr %122, i32 0, i32 138
  %124 = load ptr, ptr %123, align 4
  %125 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %124, ptr noundef %119, i32 noundef %118) #11
  br label %126

126:                                              ; preds = %117, %90
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_smp_complete(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smp_c1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4, ptr nocapture noundef readonly %5, i8 noundef zeroext %6, ptr nocapture noundef readonly %7, ptr nocapture noundef %8) unnamed_addr #0 {
  %10 = load i16, ptr %2, align 1
  %11 = getelementptr inbounds i8, ptr %2, i32 2
  %12 = load i32, ptr %11, align 1
  %13 = getelementptr inbounds i8, ptr %2, i32 6
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = load i24, ptr %3, align 1
  %17 = zext i24 %16 to i32
  %18 = shl nuw i32 %17, 8
  %19 = or i32 %18, %15
  %20 = getelementptr inbounds i8, ptr %3, i32 3
  %21 = load i32, ptr %20, align 1
  %22 = getelementptr i32, ptr %1, i32 1
  %23 = load i32, ptr %1, align 4
  %24 = zext i16 %10 to i32
  %25 = shl nuw i32 %24, 16
  %26 = zext i8 %6 to i32
  %27 = shl nuw nsw i32 %26, 8
  %28 = or i32 %25, %27
  %29 = zext i8 %4 to i32
  %30 = or i32 %28, %29
  %31 = xor i32 %23, %30
  %32 = getelementptr i32, ptr %8, i32 1
  store i32 %31, ptr %8, align 4
  %33 = getelementptr i32, ptr %1, i32 2
  %34 = load i32, ptr %22, align 4
  %35 = xor i32 %34, %12
  %36 = getelementptr i32, ptr %8, i32 2
  store i32 %35, ptr %32, align 4
  %37 = getelementptr i32, ptr %1, i32 3
  %38 = load i32, ptr %33, align 4
  %39 = xor i32 %38, %19
  %40 = getelementptr i32, ptr %8, i32 3
  store i32 %39, ptr %36, align 4
  %41 = load i32, ptr %37, align 4
  %42 = xor i32 %41, %21
  store i32 %42, ptr %40, align 4
  %43 = tail call fastcc i32 @smp_e(ptr noundef %0, ptr noundef %8)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %9
  %46 = load i32, ptr %7, align 1
  %47 = getelementptr inbounds i8, ptr %7, i32 4
  %48 = load i16, ptr %47, align 1
  %49 = zext i16 %48 to i32
  %50 = load i16, ptr %5, align 1
  %51 = zext i16 %50 to i32
  %52 = shl nuw i32 %51, 16
  %53 = or i32 %52, %49
  %54 = getelementptr inbounds i8, ptr %5, i32 2
  %55 = load i32, ptr %54, align 1
  %56 = load i32, ptr %8, align 4
  %57 = xor i32 %56, %46
  store i32 %57, ptr %8, align 4
  %58 = load i32, ptr %32, align 4
  %59 = xor i32 %58, %53
  store i32 %59, ptr %32, align 4
  %60 = load i32, ptr %36, align 4
  %61 = xor i32 %60, %55
  store i32 %61, ptr %36, align 4
  %62 = tail call fastcc i32 @smp_e(ptr noundef %0, ptr noundef %8)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %45, %9
  %65 = phi i32 [ %43, %9 ], [ %62, %45 ]
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.6) #11
  br label %66

66:                                               ; preds = %64, %45
  %67 = phi i32 [ 0, %45 ], [ %65, %64 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_le_start_enc(ptr noundef, i16 noundef zeroext, i64 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_kpp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @smp_timeout(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @hci_disconnect(ptr noundef %4, i8 noundef zeroext 19) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_disconnect(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_find_remote_oob_data(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2cap_chan_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @l2cap_chan_create() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2cap_add_scid(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2cap_chan_set_defaults(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_copy_identity_address(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @smp_new_conn_cb(ptr nocapture noundef readonly %0) #6 {
  %2 = tail call ptr @l2cap_chan_create() #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 18
  %6 = load i8, ptr %5, align 1
  %7 = getelementptr inbounds %struct.l2cap_chan, ptr %2, i32 0, i32 18
  store i8 %6, ptr %7, align 1
  %8 = getelementptr inbounds %struct.l2cap_chan, ptr %2, i32 0, i32 85
  store ptr @smp_chan_ops, ptr %8, align 4
  %9 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 13
  %10 = load i16, ptr %9, align 2
  %11 = getelementptr inbounds %struct.l2cap_chan, ptr %2, i32 0, i32 13
  store i16 %10, ptr %11, align 2
  %12 = getelementptr inbounds %struct.l2cap_chan, ptr %2, i32 0, i32 12
  store i16 %10, ptr %12, align 4
  %13 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 14
  %14 = load i16, ptr %13, align 4
  %15 = getelementptr inbounds %struct.l2cap_chan, ptr %2, i32 0, i32 14
  store i16 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 15
  %17 = load i16, ptr %16, align 2
  %18 = getelementptr inbounds %struct.l2cap_chan, ptr %2, i32 0, i32 15
  store i16 %17, ptr %18, align 2
  %19 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 17
  %20 = load i8, ptr %19, align 2
  %21 = getelementptr inbounds %struct.l2cap_chan, ptr %2, i32 0, i32 17
  store i8 %20, ptr %21, align 2
  %22 = getelementptr inbounds %struct.l2cap_chan, ptr %2, i32 0, i32 4
  store volatile i32 0, ptr %22, align 4
  br label %23

23:                                               ; preds = %4, %1
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @l2cap_chan_no_recv(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #7 {
  ret i32 -38
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @l2cap_chan_no_teardown(ptr nocapture noundef %0, i32 noundef %1) #7 {
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @l2cap_chan_no_close(ptr nocapture noundef %0) #7 {
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @l2cap_chan_no_state_change(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #7 {
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @l2cap_chan_no_ready(ptr nocapture noundef %0) #7 {
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @l2cap_chan_no_defer(ptr nocapture noundef %0) #7 {
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @l2cap_chan_no_resume(ptr nocapture noundef %0) #7 {
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @l2cap_chan_no_suspend(ptr nocapture noundef %0) #7 {
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @l2cap_chan_no_set_shutdown(ptr nocapture noundef %0) #7 {
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @l2cap_chan_no_get_sndtimeo(ptr nocapture noundef readnone %0) #7 {
  ret i32 0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @l2cap_chan_no_alloc_skb(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7 {
  ret ptr inttoptr (i32 -38 to ptr)
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal noalias ptr @l2cap_chan_no_new_connection(ptr nocapture noundef readnone %0) #7 {
  ret ptr null
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smp_recv_cb(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca [80 x i8], align 1
  %4 = alloca [16 x i8], align 4
  %5 = alloca i8, align 1
  %6 = alloca [2 x %struct.kvec], align 4
  %7 = alloca %struct.msghdr, align 8
  %8 = alloca i8, align 1
  %9 = alloca [2 x %struct.kvec], align 4
  %10 = alloca %struct.msghdr, align 8
  %11 = alloca i8, align 1
  %12 = alloca [2 x %struct.kvec], align 4
  %13 = alloca %struct.msghdr, align 8
  %14 = alloca i8, align 1
  %15 = alloca [2 x %struct.kvec], align 4
  %16 = alloca %struct.msghdr, align 8
  %17 = alloca i8, align 1
  %18 = alloca [2 x %struct.kvec], align 4
  %19 = alloca %struct.msghdr, align 8
  %20 = alloca i8, align 1
  %21 = alloca [2 x %struct.kvec], align 4
  %22 = alloca %struct.msghdr, align 8
  %23 = alloca i8, align 1
  %24 = alloca [2 x %struct.kvec], align 4
  %25 = alloca %struct.msghdr, align 8
  %26 = alloca i8, align 1
  %27 = alloca [2 x %struct.kvec], align 4
  %28 = alloca %struct.msghdr, align 8
  %29 = alloca [65 x i8], align 1
  %30 = alloca i8, align 1
  %31 = alloca [2 x %struct.kvec], align 4
  %32 = alloca %struct.msghdr, align 8
  %33 = alloca i8, align 1
  %34 = alloca [2 x %struct.kvec], align 4
  %35 = alloca %struct.msghdr, align 8
  %36 = alloca [16 x i8], align 1
  %37 = alloca [16 x i8], align 8
  %38 = alloca [16 x i8], align 8
  %39 = alloca [16 x i8], align 1
  %40 = alloca %struct.bdaddr_t, align 1
  %41 = alloca %struct.bdaddr_t, align 1
  %42 = alloca [65 x i8], align 1
  %43 = alloca [65 x i8], align 1
  %44 = alloca %struct.smp_cmd_pairing_confirm, align 1
  %45 = alloca [65 x i8], align 1
  %46 = alloca [7 x i8], align 1
  %47 = alloca [7 x i8], align 1
  %48 = alloca [12 x i8], align 1
  %49 = alloca [16 x i8], align 1
  %50 = alloca %struct.smp_cmd_pairing, align 1
  %51 = alloca %struct.smp_cmd_pairing, align 1
  %52 = load ptr, ptr %0, align 4
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %55 = load i32, ptr %54, align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %1505, label %57

57:                                               ; preds = %2
  %58 = getelementptr inbounds %struct.hci_conn, ptr %53, i32 0, i32 65
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.hci_dev, ptr %59, i32 0, i32 206
  %61 = load volatile i32, ptr %60, align 4
  %62 = and i32 %61, 8388608
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %1498, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %66 = load ptr, ptr %65, align 4
  %67 = load i8, ptr %66, align 1
  %68 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef 1) #11
  %69 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 84
  %70 = load ptr, ptr %69, align 4
  %71 = zext i8 %67 to i32
  %72 = icmp ugt i8 %67, 14
  br i1 %72, label %1501, label %73

73:                                               ; preds = %64
  %74 = icmp eq ptr %70, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.smp_chan, ptr %70, i32 0, i32 2
  %77 = tail call i32 @_test_and_clear_bit(i32 noundef %71, ptr noundef %76) #11
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %1501, label %80

79:                                               ; preds = %73
  switch i8 %67, label %1501 [
    i8 1, label %81
    i8 11, label %505
  ]

80:                                               ; preds = %75
  switch i8 %67, label %1498 [
    i8 1, label %81
    i8 5, label %1487
    i8 2, label %351
    i8 11, label %505
    i8 3, label %603
    i8 4, label %727
    i8 6, label %958
    i8 7, label %981
    i8 8, label %1026
    i8 9, label %1049
    i8 10, label %1127
    i8 12, label %1153
    i8 13, label %1394
    i8 14, label %1500
  ]

81:                                               ; preds = %80, %79
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %51) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %51, i8 0, i32 6, i1 false) #11, !annotation !9
  %82 = load ptr, ptr %65, align 4
  %83 = getelementptr inbounds %struct.l2cap_conn, ptr %52, i32 0, i32 17
  %84 = load ptr, ptr %83, align 4
  %85 = load ptr, ptr %52, align 4
  %86 = getelementptr inbounds %struct.hci_conn, ptr %85, i32 0, i32 65
  %87 = load ptr, ptr %86, align 4
  %88 = load i32, ptr %54, align 8
  %89 = icmp ult i32 %88, 6
  br i1 %89, label %349, label %90

90:                                               ; preds = %81
  %91 = getelementptr inbounds %struct.hci_conn, ptr %85, i32 0, i32 15
  %92 = load i8, ptr %91, align 8
  %93 = icmp eq i8 %92, 1
  br i1 %93, label %94, label %349

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.l2cap_chan, ptr %84, i32 0, i32 84
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = tail call fastcc ptr @smp_chan_create(ptr noundef %52) #11
  %100 = icmp eq ptr %99, null
  br i1 %100, label %349, label %101

101:                                              ; preds = %98, %94
  %102 = phi ptr [ %99, %98 ], [ %96, %94 ]
  %103 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %82, i32 0, i32 2
  %104 = load i8, ptr %103, align 1
  %105 = getelementptr inbounds %struct.hci_dev, ptr %87, i32 0, i32 206
  %106 = load volatile i32, ptr %105, align 4
  %107 = and i32 %106, 65536
  %108 = icmp eq i32 %107, 0
  %109 = select i1 %108, i8 7, i8 63
  %110 = and i8 %109, %104
  %111 = load volatile i32, ptr %105, align 4
  %112 = and i32 %111, 32
  %113 = icmp ne i32 %112, 0
  %114 = and i8 %104, 1
  %115 = icmp eq i8 %114, 0
  %116 = select i1 %113, i1 true, i1 %115
  br i1 %116, label %117, label %349

117:                                              ; preds = %101
  %118 = load volatile i32, ptr %105, align 4
  %119 = and i32 %118, 131072
  %120 = icmp ne i32 %119, 0
  %121 = and i8 %110, 8
  %122 = icmp eq i8 %121, 0
  %123 = select i1 %120, i1 %122, i1 false
  br i1 %123, label %349, label %124

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.smp_chan, ptr %102, i32 0, i32 3
  store i8 1, ptr %125, align 4
  %126 = getelementptr %struct.smp_chan, ptr %102, i32 0, i32 3, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %126, ptr noundef align 1 dereferenceable(6) %82, i32 6, i1 false) #11
  %127 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef 6) #11
  %128 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %82, i32 0, i32 1
  %129 = load i8, ptr %128, align 1
  %130 = icmp eq i8 %129, 1
  br i1 %130, label %131, label %140

131:                                              ; preds = %124
  %132 = getelementptr inbounds %struct.hci_dev, ptr %87, i32 0, i32 168
  %133 = load ptr, ptr %132, align 8
  %134 = getelementptr inbounds %struct.l2cap_chan, ptr %133, i32 0, i32 84
  %135 = load ptr, ptr %134, align 4
  %136 = load i8, ptr %135, align 4, !range !8
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %131
  %139 = getelementptr inbounds %struct.smp_chan, ptr %102, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 11, ptr noundef %139) #11
  br label %140

140:                                              ; preds = %138, %131, %124
  %141 = load ptr, ptr %52, align 4
  %142 = getelementptr inbounds %struct.hci_conn, ptr %141, i32 0, i32 14
  %143 = load i8, ptr %142, align 1
  %144 = icmp eq i8 %143, 1
  br i1 %144, label %145, label %237

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.hci_conn, ptr %141, i32 0, i32 47
  %147 = load volatile i32, ptr %146, align 4
  %148 = and i32 %147, 512
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = getelementptr %struct.hci_dev, ptr %87, i32 0, i32 206, i32 1
  %152 = load volatile i32, ptr %151, align 4
  %153 = and i32 %152, 64
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %349, label %155

155:                                              ; preds = %150, %145
  %156 = getelementptr inbounds %struct.smp_chan, ptr %102, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 5, ptr noundef %156) #11
  %157 = load ptr, ptr %102, align 4
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr inbounds %struct.hci_conn, ptr %158, i32 0, i32 65
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr inbounds %struct.hci_dev, ptr %160, i32 0, i32 206
  %162 = load volatile i32, ptr %161, align 4
  %163 = and i32 %162, 32
  %164 = icmp eq i32 %163, 0
  %165 = select i1 %164, i8 0, i8 5
  %166 = load volatile i32, ptr %161, align 4
  %167 = and i32 %166, 2097152
  %168 = icmp eq i32 %167, 0
  %169 = or i8 %165, 2
  %170 = select i1 %168, i8 %165, i8 %169
  %171 = load volatile i32, ptr %161, align 4
  %172 = and i32 %171, 262144
  %173 = icmp eq i32 %172, 0
  %174 = select i1 %173, i8 %165, i8 %169
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %51, i8 0, i32 6, i1 false) #11
  %175 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %51, i32 0, i32 2
  store i8 32, ptr %175, align 1
  %176 = load ptr, ptr %157, align 4
  %177 = getelementptr inbounds %struct.hci_conn, ptr %176, i32 0, i32 27
  %178 = load i8, ptr %177, align 1
  %179 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %51, i32 0, i32 3
  store i8 %178, ptr %179, align 1
  %180 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %82, i32 0, i32 4
  %181 = load i8, ptr %180, align 1
  %182 = and i8 %181, %170
  %183 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %51, i32 0, i32 4
  store i8 %182, ptr %183, align 1
  %184 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %82, i32 0, i32 5
  %185 = load i8, ptr %184, align 1
  %186 = and i8 %185, %174
  %187 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %51, i32 0, i32 5
  store i8 %186, ptr %187, align 1
  %188 = getelementptr inbounds %struct.smp_chan, ptr %102, i32 0, i32 12
  store i8 %182, ptr %188, align 1
  %189 = load i8, ptr %103, align 1
  %190 = and i8 %189, 32
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %155
  tail call void @_set_bit(i32 noundef 12, ptr noundef %156) #11
  br label %193

193:                                              ; preds = %192, %155
  %194 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %82, i32 0, i32 3
  %195 = load i8, ptr %194, align 1
  %196 = tail call i8 @llvm.umin.i8(i8 %195, i8 %178) #11
  %197 = load ptr, ptr %83, align 4
  %198 = load ptr, ptr %52, align 4
  %199 = getelementptr inbounds %struct.l2cap_chan, ptr %197, i32 0, i32 84
  %200 = load ptr, ptr %199, align 4
  %201 = getelementptr inbounds %struct.hci_conn, ptr %198, i32 0, i32 25
  %202 = load i8, ptr %201, align 1
  %203 = icmp eq i8 %202, 4
  %204 = icmp ne i8 %196, 16
  %205 = and i1 %204, %203
  br i1 %205, label %349, label %206

206:                                              ; preds = %193
  %207 = getelementptr inbounds %struct.hci_conn, ptr %198, i32 0, i32 65
  %208 = load ptr, ptr %207, align 4
  %209 = getelementptr inbounds %struct.hci_dev, ptr %208, i32 0, i32 67
  %210 = load i8, ptr %209, align 2
  %211 = icmp ult i8 %210, %196
  %212 = icmp ult i8 %196, 7
  %213 = or i1 %212, %211
  br i1 %213, label %349, label %214

214:                                              ; preds = %206
  %215 = getelementptr inbounds %struct.smp_chan, ptr %200, i32 0, i32 11
  store i8 %196, ptr %215, align 2
  %216 = load i8, ptr %188, align 1
  %217 = and i8 %216, -10
  store i8 %217, ptr %188, align 1
  %218 = getelementptr inbounds %struct.smp_chan, ptr %102, i32 0, i32 4
  store i8 2, ptr %218, align 1
  %219 = getelementptr %struct.smp_chan, ptr %102, i32 0, i32 4, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %219, ptr noundef nonnull align 1 dereferenceable(6) %51, i32 6, i1 false) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11)
  store i8 2, ptr %11, align 1
  %220 = load ptr, ptr %83, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %13) #11
  %221 = icmp eq ptr %220, null
  br i1 %221, label %236, label %222

222:                                              ; preds = %214
  store ptr %11, ptr %12, align 4
  %223 = getelementptr inbounds %struct.kvec, ptr %12, i32 0, i32 1
  store i32 1, ptr %223, align 4
  %224 = getelementptr inbounds [2 x %struct.kvec], ptr %12, i32 0, i32 1
  store ptr %51, ptr %224, align 4
  %225 = getelementptr inbounds [2 x %struct.kvec], ptr %12, i32 0, i32 1, i32 1
  store i32 6, ptr %225, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %13, i8 0, i32 56, i1 false) #11
  %226 = getelementptr inbounds %struct.msghdr, ptr %13, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %226, i32 noundef 1, ptr noundef nonnull %12, i32 noundef 2, i32 noundef 7) #11
  %227 = call i32 @l2cap_chan_send(ptr noundef nonnull %220, ptr noundef nonnull %13, i32 noundef 7) #11
  %228 = getelementptr inbounds %struct.l2cap_chan, ptr %220, i32 0, i32 84
  %229 = load ptr, ptr %228, align 4
  %230 = icmp eq ptr %229, null
  br i1 %230, label %236, label %231

231:                                              ; preds = %222
  %232 = getelementptr inbounds %struct.smp_chan, ptr %229, i32 0, i32 1
  %233 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %232) #11
  %234 = load ptr, ptr @system_wq, align 4
  %235 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %234, ptr noundef %232, i32 noundef 3000) #11
  br label %236

236:                                              ; preds = %231, %222, %214
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11)
  call fastcc void @smp_distribute_keys(ptr noundef nonnull %102) #11
  br label %349

237:                                              ; preds = %140
  call fastcc void @build_pairing_cmd(ptr noundef %52, ptr noundef %82, ptr noundef nonnull %51, i8 noundef zeroext %110) #11
  %238 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %51, i32 0, i32 2
  %239 = load i8, ptr %238, align 1
  %240 = and i8 %239, 8
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %248, label %242

242:                                              ; preds = %237
  %243 = getelementptr inbounds %struct.smp_chan, ptr %102, i32 0, i32 22
  call void @_set_bit(i32 noundef 5, ptr noundef %243) #11
  %244 = load i8, ptr %238, align 1
  %245 = and i8 %244, 32
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %248, label %247

247:                                              ; preds = %242
  call void @_set_bit(i32 noundef 12, ptr noundef %243) #11
  br label %248

248:                                              ; preds = %247, %242, %237
  %249 = load ptr, ptr %52, align 4
  %250 = getelementptr inbounds %struct.hci_conn, ptr %249, i32 0, i32 28
  %251 = load i8, ptr %250, align 8
  %252 = icmp eq i8 %251, 3
  br i1 %252, label %261, label %253

253:                                              ; preds = %248
  %254 = zext i8 %110 to i32
  %255 = and i32 %254, 4
  %256 = icmp eq i32 %255, 0
  %257 = and i32 %254, 8
  %258 = icmp eq i32 %257, 0
  %259 = select i1 %258, i8 3, i8 4
  %260 = select i1 %256, i8 2, i8 %259
  br label %261

261:                                              ; preds = %253, %248
  %262 = phi i8 [ %260, %253 ], [ 2, %248 ]
  %263 = getelementptr inbounds %struct.hci_conn, ptr %249, i32 0, i32 25
  %264 = load i8, ptr %263, align 1
  %265 = icmp ugt i8 %262, %264
  br i1 %265, label %266, label %270

266:                                              ; preds = %261
  store i8 %262, ptr %263, align 1
  %267 = load ptr, ptr %52, align 4
  %268 = getelementptr inbounds %struct.hci_conn, ptr %267, i32 0, i32 25
  %269 = load i8, ptr %268, align 1
  br label %270

270:                                              ; preds = %266, %261
  %271 = phi i8 [ %269, %266 ], [ %264, %261 ]
  %272 = phi ptr [ %267, %266 ], [ %249, %261 ]
  %273 = icmp ugt i8 %271, 2
  br i1 %273, label %274, label %292

274:                                              ; preds = %270
  %275 = getelementptr inbounds %struct.hci_conn, ptr %272, i32 0, i32 28
  %276 = load i8, ptr %275, align 8
  %277 = load i8, ptr %82, align 1
  %278 = icmp ugt i8 %276, 4
  %279 = icmp ugt i8 %277, 4
  %280 = or i1 %278, %279
  br i1 %280, label %349, label %281

281:                                              ; preds = %274
  %282 = zext i8 %277 to i32
  %283 = zext i8 %276 to i32
  %284 = getelementptr inbounds %struct.smp_chan, ptr %102, i32 0, i32 22
  %285 = load volatile i32, ptr %284, align 4
  %286 = and i32 %285, 32
  %287 = icmp eq i32 %286, 0
  %288 = select i1 %287, ptr @gen_method, ptr @sc_method
  %289 = getelementptr [5 x [5 x i8]], ptr %288, i32 0, i32 %282, i32 %283
  %290 = load i8, ptr %289, align 1
  %291 = icmp ult i8 %290, 2
  br i1 %291, label %349, label %292

292:                                              ; preds = %281, %270
  %293 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %82, i32 0, i32 3
  %294 = load i8, ptr %293, align 1
  %295 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %51, i32 0, i32 3
  %296 = load i8, ptr %295, align 1
  %297 = call i8 @llvm.umin.i8(i8 %294, i8 %296) #11
  %298 = load ptr, ptr %83, align 4
  %299 = getelementptr inbounds %struct.l2cap_chan, ptr %298, i32 0, i32 84
  %300 = load ptr, ptr %299, align 4
  %301 = icmp eq i8 %271, 4
  %302 = icmp ne i8 %297, 16
  %303 = and i1 %301, %302
  br i1 %303, label %349, label %304

304:                                              ; preds = %292
  %305 = getelementptr inbounds %struct.hci_conn, ptr %272, i32 0, i32 65
  %306 = load ptr, ptr %305, align 4
  %307 = getelementptr inbounds %struct.hci_dev, ptr %306, i32 0, i32 67
  %308 = load i8, ptr %307, align 2
  %309 = icmp ult i8 %308, %297
  %310 = icmp ult i8 %297, 7
  %311 = or i1 %310, %309
  br i1 %311, label %349, label %312

312:                                              ; preds = %304
  %313 = getelementptr inbounds %struct.smp_chan, ptr %300, i32 0, i32 11
  store i8 %297, ptr %313, align 2
  %314 = getelementptr inbounds %struct.smp_chan, ptr %102, i32 0, i32 5
  call void @get_random_bytes(ptr noundef %314, i32 noundef 16) #11
  %315 = getelementptr inbounds %struct.smp_chan, ptr %102, i32 0, i32 4
  store i8 2, ptr %315, align 1
  %316 = getelementptr %struct.smp_chan, ptr %102, i32 0, i32 4, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %316, ptr noundef nonnull align 1 dereferenceable(6) %51, i32 6, i1 false) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14)
  store i8 2, ptr %14, align 1
  %317 = load ptr, ptr %83, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %16) #11
  %318 = icmp eq ptr %317, null
  br i1 %318, label %333, label %319

319:                                              ; preds = %312
  store ptr %14, ptr %15, align 4
  %320 = getelementptr inbounds %struct.kvec, ptr %15, i32 0, i32 1
  store i32 1, ptr %320, align 4
  %321 = getelementptr inbounds [2 x %struct.kvec], ptr %15, i32 0, i32 1
  store ptr %51, ptr %321, align 4
  %322 = getelementptr inbounds [2 x %struct.kvec], ptr %15, i32 0, i32 1, i32 1
  store i32 6, ptr %322, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %16, i8 0, i32 56, i1 false) #11
  %323 = getelementptr inbounds %struct.msghdr, ptr %16, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %323, i32 noundef 1, ptr noundef nonnull %15, i32 noundef 2, i32 noundef 7) #11
  %324 = call i32 @l2cap_chan_send(ptr noundef nonnull %317, ptr noundef nonnull %16, i32 noundef 7) #11
  %325 = getelementptr inbounds %struct.l2cap_chan, ptr %317, i32 0, i32 84
  %326 = load ptr, ptr %325, align 4
  %327 = icmp eq ptr %326, null
  br i1 %327, label %333, label %328

328:                                              ; preds = %319
  %329 = getelementptr inbounds %struct.smp_chan, ptr %326, i32 0, i32 1
  %330 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %329) #11
  %331 = load ptr, ptr @system_wq, align 4
  %332 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %331, ptr noundef %329, i32 noundef 3000) #11
  br label %333

333:                                              ; preds = %328, %319, %312
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14)
  %334 = getelementptr inbounds %struct.smp_chan, ptr %102, i32 0, i32 22
  call void @_clear_bit(i32 noundef 4, ptr noundef %334) #11
  %335 = getelementptr inbounds %struct.smp_chan, ptr %102, i32 0, i32 2
  call void @_set_bit(i32 noundef 3, ptr noundef %335) #11
  %336 = load volatile i32, ptr %334, align 4
  %337 = and i32 %336, 32
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %343, label %339

339:                                              ; preds = %333
  call void @_set_bit(i32 noundef 12, ptr noundef %335) #11
  %340 = getelementptr inbounds %struct.smp_chan, ptr %102, i32 0, i32 12
  %341 = load i8, ptr %340, align 1
  %342 = and i8 %341, -10
  store i8 %342, ptr %340, align 1
  br label %349

343:                                              ; preds = %333
  %344 = load i8, ptr %51, align 1
  %345 = load i8, ptr %82, align 1
  %346 = call fastcc i32 @tk_request(ptr noundef %52, i8 noundef zeroext %110, i8 noundef zeroext %344, i8 noundef zeroext %345) #11
  %347 = icmp eq i32 %346, 0
  %348 = select i1 %347, i8 0, i8 8
  br label %349

349:                                              ; preds = %343, %339, %304, %292, %281, %274, %236, %206, %193, %150, %117, %101, %98, %90, %81
  %350 = phi i8 [ 0, %236 ], [ 0, %339 ], [ 3, %281 ], [ 10, %81 ], [ 7, %90 ], [ 8, %98 ], [ 5, %101 ], [ 3, %117 ], [ 14, %150 ], [ %348, %343 ], [ 6, %193 ], [ 6, %206 ], [ 3, %274 ], [ 6, %292 ], [ 6, %304 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %51) #11
  br label %1495

351:                                              ; preds = %80
  %352 = load ptr, ptr %65, align 4
  %353 = getelementptr inbounds %struct.l2cap_conn, ptr %52, i32 0, i32 17
  %354 = load ptr, ptr %353, align 4
  %355 = getelementptr inbounds %struct.l2cap_chan, ptr %354, i32 0, i32 84
  %356 = load ptr, ptr %355, align 4
  %357 = load ptr, ptr %52, align 4
  %358 = getelementptr inbounds %struct.hci_conn, ptr %357, i32 0, i32 65
  %359 = load ptr, ptr %358, align 4
  %360 = load i32, ptr %54, align 8
  %361 = icmp ult i32 %360, 6
  br i1 %361, label %1498, label %362

362:                                              ; preds = %351
  %363 = getelementptr inbounds %struct.hci_conn, ptr %357, i32 0, i32 15
  %364 = load i8, ptr %363, align 8
  %365 = icmp eq i8 %364, 0
  br i1 %365, label %366, label %1498

366:                                              ; preds = %362
  %367 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef 6) #11
  %368 = getelementptr %struct.smp_chan, ptr %356, i32 0, i32 3, i32 1
  %369 = getelementptr %struct.smp_chan, ptr %356, i32 0, i32 3, i32 4
  %370 = load i8, ptr %369, align 1
  %371 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %352, i32 0, i32 3
  %372 = load i8, ptr %371, align 1
  %373 = tail call i8 @llvm.umin.i8(i8 %370, i8 %372) #11
  %374 = load ptr, ptr %353, align 4
  %375 = load ptr, ptr %52, align 4
  %376 = getelementptr inbounds %struct.l2cap_chan, ptr %374, i32 0, i32 84
  %377 = load ptr, ptr %376, align 4
  %378 = getelementptr inbounds %struct.hci_conn, ptr %375, i32 0, i32 25
  %379 = load i8, ptr %378, align 1
  %380 = icmp eq i8 %379, 4
  %381 = icmp ne i8 %373, 16
  %382 = and i1 %381, %380
  br i1 %382, label %1498, label %383

383:                                              ; preds = %366
  %384 = getelementptr inbounds %struct.hci_conn, ptr %375, i32 0, i32 65
  %385 = load ptr, ptr %384, align 4
  %386 = getelementptr inbounds %struct.hci_dev, ptr %385, i32 0, i32 67
  %387 = load i8, ptr %386, align 2
  %388 = icmp ult i8 %387, %373
  %389 = icmp ult i8 %373, 7
  %390 = or i1 %389, %388
  br i1 %390, label %1498, label %391

391:                                              ; preds = %383
  %392 = getelementptr inbounds %struct.smp_chan, ptr %377, i32 0, i32 11
  store i8 %373, ptr %392, align 2
  %393 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %352, i32 0, i32 2
  %394 = load i8, ptr %393, align 1
  %395 = getelementptr inbounds %struct.hci_dev, ptr %359, i32 0, i32 206
  %396 = load volatile i32, ptr %395, align 4
  %397 = and i32 %396, 65536
  %398 = icmp eq i32 %397, 0
  %399 = select i1 %398, i8 7, i8 63
  %400 = and i8 %399, %394
  %401 = load volatile i32, ptr %395, align 4
  %402 = and i32 %401, 131072
  %403 = icmp ne i32 %402, 0
  %404 = and i8 %400, 8
  %405 = icmp eq i8 %404, 0
  %406 = select i1 %403, i1 %405, i1 false
  br i1 %406, label %1498, label %407

407:                                              ; preds = %391
  %408 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %352, i32 0, i32 1
  %409 = load i8, ptr %408, align 1
  %410 = icmp eq i8 %409, 1
  br i1 %410, label %411, label %420

411:                                              ; preds = %407
  %412 = getelementptr inbounds %struct.hci_dev, ptr %359, i32 0, i32 168
  %413 = load ptr, ptr %412, align 8
  %414 = getelementptr inbounds %struct.l2cap_chan, ptr %413, i32 0, i32 84
  %415 = load ptr, ptr %414, align 4
  %416 = load i8, ptr %415, align 4, !range !8
  %417 = icmp eq i8 %416, 0
  br i1 %417, label %420, label %418

418:                                              ; preds = %411
  %419 = getelementptr inbounds %struct.smp_chan, ptr %356, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 11, ptr noundef %419) #11
  br label %420

420:                                              ; preds = %418, %411, %407
  %421 = getelementptr inbounds %struct.smp_chan, ptr %356, i32 0, i32 4
  store i8 2, ptr %421, align 1
  %422 = getelementptr %struct.smp_chan, ptr %356, i32 0, i32 4, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %422, ptr noundef align 1 dereferenceable(6) %352, i32 6, i1 false) #11
  %423 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %352, i32 0, i32 5
  %424 = load i8, ptr %423, align 1
  %425 = getelementptr inbounds %struct.smp_chan, ptr %356, i32 0, i32 12
  %426 = load i8, ptr %425, align 1
  %427 = and i8 %426, %424
  store i8 %427, ptr %425, align 1
  %428 = getelementptr %struct.smp_chan, ptr %356, i32 0, i32 3, i32 3
  %429 = load i8, ptr %428, align 1
  %430 = and i8 %429, 32
  %431 = icmp eq i8 %430, 0
  %432 = and i8 %400, 32
  %433 = icmp eq i8 %432, 0
  %434 = select i1 %431, i1 true, i1 %433
  br i1 %434, label %437, label %435

435:                                              ; preds = %420
  %436 = getelementptr inbounds %struct.smp_chan, ptr %356, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 12, ptr noundef %436) #11
  br label %437

437:                                              ; preds = %435, %420
  %438 = load ptr, ptr %52, align 4
  %439 = getelementptr inbounds %struct.hci_conn, ptr %438, i32 0, i32 14
  %440 = load i8, ptr %439, align 1
  %441 = icmp eq i8 %440, 1
  br i1 %441, label %442, label %445

442:                                              ; preds = %437
  %443 = load i8, ptr %425, align 1
  %444 = and i8 %443, -10
  store i8 %444, ptr %425, align 1
  tail call fastcc void @smp_distribute_keys(ptr noundef %356) #11
  br label %1500

445:                                              ; preds = %437
  %446 = load i8, ptr %428, align 1
  %447 = and i8 %446, 8
  %448 = icmp eq i8 %447, 0
  %449 = select i1 %448, i1 true, i1 %405
  br i1 %449, label %452, label %450

450:                                              ; preds = %445
  %451 = getelementptr inbounds %struct.smp_chan, ptr %356, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 5, ptr noundef %451) #11
  br label %457

452:                                              ; preds = %445
  %453 = getelementptr inbounds %struct.hci_conn, ptr %438, i32 0, i32 25
  %454 = load i8, ptr %453, align 1
  %455 = icmp ugt i8 %454, 3
  br i1 %455, label %456, label %457

456:                                              ; preds = %452
  store i8 3, ptr %453, align 1
  br label %457

457:                                              ; preds = %456, %452, %450
  %458 = load ptr, ptr %52, align 4
  %459 = getelementptr inbounds %struct.hci_conn, ptr %458, i32 0, i32 25
  %460 = load i8, ptr %459, align 1
  %461 = icmp ugt i8 %460, 2
  br i1 %461, label %462, label %479

462:                                              ; preds = %457
  %463 = load i8, ptr %368, align 1
  %464 = load i8, ptr %352, align 1
  %465 = icmp ugt i8 %463, 4
  %466 = icmp ugt i8 %464, 4
  %467 = or i1 %465, %466
  br i1 %467, label %1498, label %468

468:                                              ; preds = %462
  %469 = zext i8 %464 to i32
  %470 = zext i8 %463 to i32
  %471 = getelementptr inbounds %struct.smp_chan, ptr %356, i32 0, i32 22
  %472 = load volatile i32, ptr %471, align 4
  %473 = and i32 %472, 32
  %474 = icmp eq i32 %473, 0
  %475 = select i1 %474, ptr @gen_method, ptr @sc_method
  %476 = getelementptr [5 x [5 x i8]], ptr %475, i32 0, i32 %469, i32 %470
  %477 = load i8, ptr %476, align 1
  %478 = icmp ult i8 %477, 2
  br i1 %478, label %1498, label %479

479:                                              ; preds = %468, %457
  %480 = getelementptr inbounds %struct.smp_chan, ptr %356, i32 0, i32 5
  tail call void @get_random_bytes(ptr noundef %480, i32 noundef 16) #11
  %481 = load i8, ptr %423, align 1
  %482 = load i8, ptr %425, align 1
  %483 = and i8 %482, %481
  store i8 %483, ptr %425, align 1
  %484 = getelementptr inbounds %struct.smp_chan, ptr %356, i32 0, i32 22
  %485 = load volatile i32, ptr %484, align 4
  %486 = and i32 %485, 32
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %492, label %488

488:                                              ; preds = %479
  %489 = and i8 %483, -10
  store i8 %489, ptr %425, align 1
  %490 = getelementptr inbounds %struct.smp_chan, ptr %356, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 12, ptr noundef %490) #11
  %491 = tail call fastcc zeroext i8 @sc_send_public_key(ptr noundef %356) #11
  br label %1495

492:                                              ; preds = %479
  %493 = load i8, ptr %428, align 1
  %494 = or i8 %493, %400
  %495 = load i8, ptr %368, align 1
  %496 = load i8, ptr %352, align 1
  %497 = tail call fastcc i32 @tk_request(ptr noundef %52, i8 noundef zeroext %494, i8 noundef zeroext %495, i8 noundef zeroext %496) #11
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %499, label %1498

499:                                              ; preds = %492
  tail call void @_set_bit(i32 noundef 1, ptr noundef %484) #11
  %500 = load volatile i32, ptr %484, align 4
  %501 = and i32 %500, 1
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %1500, label %503

503:                                              ; preds = %499
  %504 = tail call fastcc zeroext i8 @smp_confirm(ptr noundef %356) #11
  br label %1495

505:                                              ; preds = %80, %79
  %506 = load ptr, ptr %65, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %50) #11
  %507 = load ptr, ptr %52, align 4
  %508 = getelementptr inbounds %struct.hci_conn, ptr %507, i32 0, i32 65
  %509 = load ptr, ptr %508, align 4
  %510 = load i32, ptr %54, align 8
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %601, label %512

512:                                              ; preds = %505
  %513 = getelementptr inbounds %struct.hci_conn, ptr %507, i32 0, i32 15
  %514 = load i8, ptr %513, align 8
  %515 = icmp eq i8 %514, 0
  br i1 %515, label %516, label %601

516:                                              ; preds = %512
  %517 = load i8, ptr %506, align 1
  %518 = getelementptr inbounds %struct.hci_dev, ptr %509, i32 0, i32 206
  %519 = load volatile i32, ptr %518, align 4
  %520 = and i32 %519, 65536
  %521 = icmp eq i32 %520, 0
  %522 = select i1 %521, i8 7, i8 63
  %523 = and i8 %522, %517
  %524 = load volatile i32, ptr %518, align 4
  %525 = and i32 %524, 131072
  %526 = icmp ne i32 %525, 0
  %527 = and i8 %523, 8
  %528 = icmp eq i8 %527, 0
  %529 = select i1 %526, i1 %528, i1 false
  br i1 %529, label %601, label %530

530:                                              ; preds = %516
  %531 = getelementptr inbounds %struct.hci_conn, ptr %507, i32 0, i32 28
  %532 = load i8, ptr %531, align 8
  %533 = icmp eq i8 %532, 3
  br i1 %533, label %542, label %534

534:                                              ; preds = %530
  %535 = zext i8 %523 to i32
  %536 = and i32 %535, 4
  %537 = icmp eq i32 %536, 0
  %538 = and i32 %535, 8
  %539 = icmp eq i32 %538, 0
  %540 = select i1 %539, i8 3, i8 4
  %541 = select i1 %537, i8 2, i8 %540
  br label %542

542:                                              ; preds = %534, %530
  %543 = phi i8 [ %541, %534 ], [ 2, %530 ]
  %544 = getelementptr inbounds %struct.hci_conn, ptr %507, i32 0, i32 47
  %545 = load volatile i32, ptr %544, align 4
  %546 = and i32 %545, 65536
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %554, label %548

548:                                              ; preds = %542
  %549 = getelementptr inbounds %struct.hci_conn, ptr %507, i32 0, i32 2
  %550 = getelementptr inbounds %struct.hci_conn, ptr %507, i32 0, i32 3
  %551 = load i8, ptr %550, align 2
  %552 = tail call ptr @hci_find_ltk(ptr noundef %509, ptr noundef %549, i8 noundef zeroext %551, i8 noundef zeroext 0) #11
  %553 = icmp eq ptr %552, null
  br i1 %553, label %554, label %560

554:                                              ; preds = %548, %542
  %555 = getelementptr inbounds %struct.hci_conn, ptr %507, i32 0, i32 24
  %556 = load i8, ptr %555, align 4
  %557 = icmp ult i8 %556, %543
  br i1 %557, label %560, label %558

558:                                              ; preds = %554
  %559 = tail call fastcc zeroext i1 @smp_ltk_encrypt(ptr noundef %52, i8 noundef zeroext %556) #11
  br label %601

560:                                              ; preds = %554, %548
  %561 = getelementptr inbounds %struct.hci_conn, ptr %507, i32 0, i32 25
  %562 = load i8, ptr %561, align 1
  %563 = icmp ugt i8 %543, %562
  br i1 %563, label %564, label %565

564:                                              ; preds = %560
  store i8 %543, ptr %561, align 1
  br label %565

565:                                              ; preds = %564, %560
  %566 = phi i8 [ %543, %564 ], [ %562, %560 ]
  %567 = tail call fastcc zeroext i1 @smp_ltk_encrypt(ptr noundef %52, i8 noundef zeroext %566) #11
  br i1 %567, label %601, label %568

568:                                              ; preds = %565
  %569 = tail call fastcc ptr @smp_chan_create(ptr noundef %52) #11
  %570 = icmp eq ptr %569, null
  br i1 %570, label %601, label %571

571:                                              ; preds = %568
  %572 = load volatile i32, ptr %518, align 4
  %573 = and i32 %572, 32
  %574 = icmp ne i32 %573, 0
  %575 = and i8 %517, 1
  %576 = icmp eq i8 %575, 0
  %577 = select i1 %574, i1 true, i1 %576
  br i1 %577, label %578, label %601

578:                                              ; preds = %571
  %579 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef 1) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %50, i8 0, i32 6, i1 false) #11
  call fastcc void @build_pairing_cmd(ptr noundef %52, ptr noundef nonnull %50, ptr noundef null, i8 noundef zeroext %523) #11
  %580 = getelementptr inbounds %struct.smp_chan, ptr %569, i32 0, i32 3
  store i8 1, ptr %580, align 4
  %581 = getelementptr %struct.smp_chan, ptr %569, i32 0, i32 3, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %581, ptr noundef nonnull align 1 dereferenceable(6) %50, i32 6, i1 false) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %17)
  store i8 1, ptr %17, align 1
  %582 = getelementptr inbounds %struct.l2cap_conn, ptr %52, i32 0, i32 17
  %583 = load ptr, ptr %582, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %19) #11
  %584 = icmp eq ptr %583, null
  br i1 %584, label %599, label %585

585:                                              ; preds = %578
  store ptr %17, ptr %18, align 4
  %586 = getelementptr inbounds %struct.kvec, ptr %18, i32 0, i32 1
  store i32 1, ptr %586, align 4
  %587 = getelementptr inbounds [2 x %struct.kvec], ptr %18, i32 0, i32 1
  store ptr %50, ptr %587, align 4
  %588 = getelementptr inbounds [2 x %struct.kvec], ptr %18, i32 0, i32 1, i32 1
  store i32 6, ptr %588, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %19, i8 0, i32 56, i1 false) #11
  %589 = getelementptr inbounds %struct.msghdr, ptr %19, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %589, i32 noundef 1, ptr noundef nonnull %18, i32 noundef 2, i32 noundef 7) #11
  %590 = call i32 @l2cap_chan_send(ptr noundef nonnull %583, ptr noundef nonnull %19, i32 noundef 7) #11
  %591 = getelementptr inbounds %struct.l2cap_chan, ptr %583, i32 0, i32 84
  %592 = load ptr, ptr %591, align 4
  %593 = icmp eq ptr %592, null
  br i1 %593, label %599, label %594

594:                                              ; preds = %585
  %595 = getelementptr inbounds %struct.smp_chan, ptr %592, i32 0, i32 1
  %596 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %595) #11
  %597 = load ptr, ptr @system_wq, align 4
  %598 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %597, ptr noundef %595, i32 noundef 3000) #11
  br label %599

599:                                              ; preds = %594, %585, %578
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17)
  %600 = getelementptr inbounds %struct.smp_chan, ptr %569, i32 0, i32 2
  call void @_set_bit(i32 noundef 2, ptr noundef %600) #11
  br label %601

601:                                              ; preds = %599, %571, %568, %565, %558, %516, %512, %505
  %602 = phi i8 [ 0, %558 ], [ 0, %599 ], [ 10, %505 ], [ 7, %512 ], [ 3, %516 ], [ 0, %565 ], [ 8, %568 ], [ 5, %571 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %50) #11
  br label %1495

603:                                              ; preds = %80
  %604 = getelementptr inbounds %struct.l2cap_conn, ptr %52, i32 0, i32 17
  %605 = load ptr, ptr %604, align 4
  %606 = getelementptr inbounds %struct.l2cap_chan, ptr %605, i32 0, i32 84
  %607 = load ptr, ptr %606, align 4
  %608 = load ptr, ptr %52, align 4
  %609 = getelementptr inbounds %struct.hci_conn, ptr %608, i32 0, i32 65
  %610 = load ptr, ptr %609, align 4
  %611 = load i32, ptr %54, align 8
  %612 = icmp ult i32 %611, 16
  br i1 %612, label %1498, label %613

613:                                              ; preds = %603
  %614 = getelementptr inbounds %struct.smp_chan, ptr %607, i32 0, i32 7
  %615 = load ptr, ptr %65, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(16) %614, ptr noundef align 1 dereferenceable(16) %615, i32 16, i1 false) #11
  %616 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef 16) #11
  %617 = getelementptr inbounds %struct.smp_chan, ptr %607, i32 0, i32 22
  %618 = load volatile i32, ptr %617, align 4
  %619 = and i32 %618, 32
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %695, label %621

621:                                              ; preds = %613
  %622 = load volatile i32, ptr %617, align 4
  %623 = and i32 %622, 64
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %657, label %625

625:                                              ; preds = %621
  %626 = load ptr, ptr %607, align 4
  %627 = getelementptr inbounds %struct.smp_chan, ptr %607, i32 0, i32 23
  %628 = load i8, ptr %627, align 4
  switch i8 %628, label %631 [
    i8 2, label %629
    i8 5, label %629
  ]

629:                                              ; preds = %625, %625
  %630 = tail call fastcc zeroext i8 @sc_passkey_round(ptr noundef %607, i8 noundef zeroext 3) #11
  br label %1495

631:                                              ; preds = %625
  %632 = load ptr, ptr %626, align 4
  %633 = getelementptr inbounds %struct.hci_conn, ptr %632, i32 0, i32 16
  %634 = load i8, ptr %633, align 1, !range !8
  %635 = icmp eq i8 %634, 0
  br i1 %635, label %1500, label %636

636:                                              ; preds = %631
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %23) #11
  store i8 4, ptr %23, align 1
  %637 = getelementptr inbounds %struct.l2cap_conn, ptr %626, i32 0, i32 17
  %638 = load ptr, ptr %637, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %24) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %25) #11
  %639 = icmp eq ptr %638, null
  br i1 %639, label %655, label %640

640:                                              ; preds = %636
  %641 = getelementptr inbounds %struct.smp_chan, ptr %607, i32 0, i32 5
  store ptr %23, ptr %24, align 4
  %642 = getelementptr inbounds %struct.kvec, ptr %24, i32 0, i32 1
  store i32 1, ptr %642, align 4
  %643 = getelementptr inbounds [2 x %struct.kvec], ptr %24, i32 0, i32 1
  store ptr %641, ptr %643, align 4
  %644 = getelementptr inbounds [2 x %struct.kvec], ptr %24, i32 0, i32 1, i32 1
  store i32 16, ptr %644, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %25, i8 0, i32 56, i1 false) #11
  %645 = getelementptr inbounds %struct.msghdr, ptr %25, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %645, i32 noundef 1, ptr noundef nonnull %24, i32 noundef 2, i32 noundef 17) #11
  %646 = call i32 @l2cap_chan_send(ptr noundef nonnull %638, ptr noundef nonnull %25, i32 noundef 17) #11
  %647 = getelementptr inbounds %struct.l2cap_chan, ptr %638, i32 0, i32 84
  %648 = load ptr, ptr %647, align 4
  %649 = icmp eq ptr %648, null
  br i1 %649, label %655, label %650

650:                                              ; preds = %640
  %651 = getelementptr inbounds %struct.smp_chan, ptr %648, i32 0, i32 1
  %652 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %651) #11
  %653 = load ptr, ptr @system_wq, align 4
  %654 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %653, ptr noundef %651, i32 noundef 3000) #11
  br label %655

655:                                              ; preds = %650, %640, %636
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %25) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %24) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %23) #11
  %656 = getelementptr inbounds %struct.smp_chan, ptr %607, i32 0, i32 2
  call void @_set_bit(i32 noundef 4, ptr noundef %656) #11
  br label %1500

657:                                              ; preds = %621
  %658 = getelementptr inbounds %struct.hci_dev, ptr %610, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.15, ptr noundef %658) #11
  %659 = load ptr, ptr %607, align 4
  %660 = load ptr, ptr %659, align 4
  %661 = getelementptr inbounds %struct.hci_conn, ptr %660, i32 0, i32 16
  %662 = load i8, ptr %661, align 1, !range !8
  %663 = icmp eq i8 %662, 0
  br i1 %663, label %664, label %1498

664:                                              ; preds = %657
  %665 = getelementptr inbounds %struct.hci_conn, ptr %660, i32 0, i32 65
  %666 = load ptr, ptr %665, align 4
  %667 = getelementptr inbounds %struct.hci_dev, ptr %666, i32 0, i32 206
  %668 = load volatile i32, ptr %667, align 4
  %669 = and i32 %668, 131072
  %670 = icmp eq i32 %669, 0
  %671 = getelementptr inbounds %struct.hci_dev, ptr %666, i32 0, i32 2
  br i1 %670, label %673, label %672

672:                                              ; preds = %664
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.16, ptr noundef %671) #11
  br label %1498

673:                                              ; preds = %664
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.17, ptr noundef %671) #11
  %674 = getelementptr %struct.smp_chan, ptr %607, i32 0, i32 3, i32 1
  %675 = getelementptr %struct.smp_chan, ptr %607, i32 0, i32 4, i32 1
  %676 = getelementptr %struct.smp_chan, ptr %607, i32 0, i32 3, i32 5
  %677 = load i8, ptr %676, align 1
  %678 = getelementptr %struct.smp_chan, ptr %607, i32 0, i32 4, i32 6
  %679 = load i8, ptr %678, align 1
  %680 = and i8 %679, %677
  %681 = getelementptr inbounds %struct.smp_chan, ptr %607, i32 0, i32 12
  store i8 %680, ptr %681, align 1
  %682 = getelementptr %struct.smp_chan, ptr %607, i32 0, i32 3, i32 3
  %683 = load i8, ptr %682, align 1
  %684 = load volatile i32, ptr %667, align 4
  %685 = and i32 %684, 65536
  %686 = icmp eq i32 %685, 0
  %687 = select i1 %686, i8 7, i8 63
  %688 = and i8 %687, %683
  %689 = load i8, ptr %675, align 1
  %690 = load i8, ptr %674, align 1
  %691 = tail call fastcc i32 @tk_request(ptr noundef %659, i8 noundef zeroext %688, i8 noundef zeroext %689, i8 noundef zeroext %690) #11
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %694, label %693

693:                                              ; preds = %673
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.18, ptr noundef %671) #11
  br label %1498

694:                                              ; preds = %673
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %617) #11
  br label %695

695:                                              ; preds = %694, %613
  %696 = load ptr, ptr %52, align 4
  %697 = getelementptr inbounds %struct.hci_conn, ptr %696, i32 0, i32 16
  %698 = load i8, ptr %697, align 1, !range !8
  %699 = icmp eq i8 %698, 0
  br i1 %699, label %720, label %700

700:                                              ; preds = %695
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %20) #11
  store i8 4, ptr %20, align 1
  %701 = load ptr, ptr %604, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %21) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %22) #11
  %702 = icmp eq ptr %701, null
  br i1 %702, label %718, label %703

703:                                              ; preds = %700
  %704 = getelementptr inbounds %struct.smp_chan, ptr %607, i32 0, i32 5
  store ptr %20, ptr %21, align 4
  %705 = getelementptr inbounds %struct.kvec, ptr %21, i32 0, i32 1
  store i32 1, ptr %705, align 4
  %706 = getelementptr inbounds [2 x %struct.kvec], ptr %21, i32 0, i32 1
  store ptr %704, ptr %706, align 4
  %707 = getelementptr inbounds [2 x %struct.kvec], ptr %21, i32 0, i32 1, i32 1
  store i32 16, ptr %707, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %22, i8 0, i32 56, i1 false) #11
  %708 = getelementptr inbounds %struct.msghdr, ptr %22, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %708, i32 noundef 1, ptr noundef nonnull %21, i32 noundef 2, i32 noundef 17) #11
  %709 = call i32 @l2cap_chan_send(ptr noundef nonnull %701, ptr noundef nonnull %22, i32 noundef 17) #11
  %710 = getelementptr inbounds %struct.l2cap_chan, ptr %701, i32 0, i32 84
  %711 = load ptr, ptr %710, align 4
  %712 = icmp eq ptr %711, null
  br i1 %712, label %718, label %713

713:                                              ; preds = %703
  %714 = getelementptr inbounds %struct.smp_chan, ptr %711, i32 0, i32 1
  %715 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %714) #11
  %716 = load ptr, ptr @system_wq, align 4
  %717 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %716, ptr noundef %714, i32 noundef 3000) #11
  br label %718

718:                                              ; preds = %713, %703, %700
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %22) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %21) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %20) #11
  %719 = getelementptr inbounds %struct.smp_chan, ptr %607, i32 0, i32 2
  call void @_set_bit(i32 noundef 4, ptr noundef %719) #11
  br label %1500

720:                                              ; preds = %695
  %721 = load volatile i32, ptr %617, align 4
  %722 = and i32 %721, 1
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %726, label %724

724:                                              ; preds = %720
  %725 = tail call fastcc zeroext i8 @smp_confirm(ptr noundef %607) #11
  br label %1495

726:                                              ; preds = %720
  tail call void @_set_bit(i32 noundef 1, ptr noundef %617) #11
  br label %1500

727:                                              ; preds = %80
  %728 = getelementptr inbounds %struct.l2cap_conn, ptr %52, i32 0, i32 17
  %729 = load ptr, ptr %728, align 4
  %730 = getelementptr inbounds %struct.l2cap_chan, ptr %729, i32 0, i32 84
  %731 = load ptr, ptr %730, align 4
  %732 = load ptr, ptr %52, align 4
  %733 = load i32, ptr %54, align 8
  %734 = icmp ult i32 %733, 16
  br i1 %734, label %1498, label %735

735:                                              ; preds = %727
  %736 = getelementptr inbounds %struct.smp_chan, ptr %731, i32 0, i32 6
  %737 = load ptr, ptr %65, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(16) %736, ptr noundef align 1 dereferenceable(16) %737, i32 16, i1 false) #11
  %738 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef 16) #11
  %739 = getelementptr inbounds %struct.smp_chan, ptr %731, i32 0, i32 22
  %740 = load volatile i32, ptr %739, align 4
  %741 = and i32 %740, 32
  %742 = icmp eq i32 %741, 0
  br i1 %742, label %743, label %828

743:                                              ; preds = %735
  %744 = load ptr, ptr %731, align 4
  %745 = load ptr, ptr %744, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %36) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %36, i8 0, i32 16, i1 false) #11, !annotation !9
  %746 = getelementptr inbounds %struct.smp_chan, ptr %731, i32 0, i32 8
  %747 = getelementptr inbounds %struct.smp_chan, ptr %731, i32 0, i32 3
  %748 = getelementptr inbounds %struct.smp_chan, ptr %731, i32 0, i32 4
  %749 = getelementptr inbounds %struct.hci_conn, ptr %745, i32 0, i32 7
  %750 = load i8, ptr %749, align 8
  %751 = getelementptr inbounds %struct.hci_conn, ptr %745, i32 0, i32 6
  %752 = getelementptr inbounds %struct.hci_conn, ptr %745, i32 0, i32 9
  %753 = load i8, ptr %752, align 1
  %754 = getelementptr inbounds %struct.hci_conn, ptr %745, i32 0, i32 8
  %755 = call fastcc i32 @smp_c1(ptr noundef %746, ptr noundef %736, ptr noundef %747, ptr noundef %748, i8 noundef zeroext %750, ptr noundef %751, i8 noundef zeroext %753, ptr noundef %754, ptr noundef nonnull %36) #11
  %756 = icmp eq i32 %755, 0
  br i1 %756, label %757, label %826

757:                                              ; preds = %743
  %758 = getelementptr inbounds %struct.smp_chan, ptr %731, i32 0, i32 7
  %759 = call i32 @__crypto_memneq(ptr noundef %758, ptr noundef nonnull %36, i32 noundef 16) #11
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %765, label %761

761:                                              ; preds = %757
  %762 = getelementptr inbounds %struct.hci_conn, ptr %745, i32 0, i32 65
  %763 = load ptr, ptr %762, align 4
  %764 = getelementptr inbounds %struct.hci_dev, ptr %763, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.19, ptr noundef %764) #11
  br label %826

765:                                              ; preds = %757
  %766 = getelementptr inbounds %struct.hci_conn, ptr %745, i32 0, i32 16
  %767 = load i8, ptr %766, align 1, !range !8
  %768 = icmp eq i8 %767, 0
  br i1 %768, label %786, label %769

769:                                              ; preds = %765
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %37) #11
  %770 = getelementptr inbounds %struct.smp_chan, ptr %731, i32 0, i32 5
  %771 = load i64, ptr %770, align 1
  store i64 %771, ptr %37, align 8
  %772 = getelementptr inbounds i8, ptr %37, i32 8
  %773 = load i64, ptr %736, align 1
  store i64 %773, ptr %772, align 8
  %774 = call fastcc i32 @smp_e(ptr noundef %746, ptr noundef nonnull %37) #11
  %775 = icmp eq i32 %774, 0
  br i1 %775, label %777, label %776

776:                                              ; preds = %769
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.6) #11
  br label %777

777:                                              ; preds = %776, %769
  %778 = getelementptr inbounds %struct.hci_conn, ptr %745, i32 0, i32 47
  %779 = call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %778) #11
  %780 = icmp eq i32 %779, 0
  br i1 %780, label %781, label %825

781:                                              ; preds = %777
  %782 = getelementptr inbounds %struct.smp_chan, ptr %731, i32 0, i32 11
  %783 = load i8, ptr %782, align 2
  call void @hci_le_start_enc(ptr noundef %745, i16 noundef zeroext 0, i64 noundef 0, ptr noundef nonnull %37, i8 noundef zeroext %783) #11
  %784 = load i8, ptr %782, align 2
  %785 = getelementptr inbounds %struct.hci_conn, ptr %745, i32 0, i32 27
  store i8 %784, ptr %785, align 1
  call void @_set_bit(i32 noundef 16, ptr noundef %778) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %37) #11
  br label %826

786:                                              ; preds = %765
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %38) #11
  %787 = getelementptr inbounds %struct.smp_chan, ptr %731, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %33) #11
  store i8 4, ptr %33, align 1
  %788 = getelementptr inbounds %struct.l2cap_conn, ptr %744, i32 0, i32 17
  %789 = load ptr, ptr %788, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %34) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %35) #11
  %790 = icmp eq ptr %789, null
  br i1 %790, label %805, label %791

791:                                              ; preds = %786
  store ptr %33, ptr %34, align 4
  %792 = getelementptr inbounds %struct.kvec, ptr %34, i32 0, i32 1
  store i32 1, ptr %792, align 4
  %793 = getelementptr inbounds [2 x %struct.kvec], ptr %34, i32 0, i32 1
  store ptr %787, ptr %793, align 4
  %794 = getelementptr inbounds [2 x %struct.kvec], ptr %34, i32 0, i32 1, i32 1
  store i32 16, ptr %794, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %35, i8 0, i32 56, i1 false) #11
  %795 = getelementptr inbounds %struct.msghdr, ptr %35, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %795, i32 noundef 1, ptr noundef nonnull %34, i32 noundef 2, i32 noundef 17) #11
  %796 = call i32 @l2cap_chan_send(ptr noundef nonnull %789, ptr noundef nonnull %35, i32 noundef 17) #11
  %797 = getelementptr inbounds %struct.l2cap_chan, ptr %789, i32 0, i32 84
  %798 = load ptr, ptr %797, align 4
  %799 = icmp eq ptr %798, null
  br i1 %799, label %805, label %800

800:                                              ; preds = %791
  %801 = getelementptr inbounds %struct.smp_chan, ptr %798, i32 0, i32 1
  %802 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %801) #11
  %803 = load ptr, ptr @system_wq, align 4
  %804 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %803, ptr noundef %801, i32 noundef 3000) #11
  br label %805

805:                                              ; preds = %800, %791, %786
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %35) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %34) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %33) #11
  %806 = load i64, ptr %736, align 1
  store i64 %806, ptr %38, align 8
  %807 = getelementptr inbounds i8, ptr %38, i32 8
  %808 = load i64, ptr %787, align 1
  store i64 %808, ptr %807, align 8
  %809 = call fastcc i32 @smp_e(ptr noundef %746, ptr noundef nonnull %38) #11
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %812, label %811

811:                                              ; preds = %805
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.6) #11
  br label %812

812:                                              ; preds = %811, %805
  %813 = getelementptr inbounds %struct.hci_conn, ptr %745, i32 0, i32 25
  %814 = load i8, ptr %813, align 1
  %815 = icmp eq i8 %814, 3
  %816 = zext i1 %815 to i8
  %817 = getelementptr inbounds %struct.hci_conn, ptr %745, i32 0, i32 65
  %818 = load ptr, ptr %817, align 4
  %819 = getelementptr inbounds %struct.hci_conn, ptr %745, i32 0, i32 2
  %820 = getelementptr inbounds %struct.hci_conn, ptr %745, i32 0, i32 3
  %821 = load i8, ptr %820, align 2
  %822 = getelementptr inbounds %struct.smp_chan, ptr %731, i32 0, i32 11
  %823 = load i8, ptr %822, align 2
  %824 = call ptr @hci_add_ltk(ptr noundef %818, ptr noundef %819, i8 noundef zeroext %821, i8 noundef zeroext 0, i8 noundef zeroext %816, ptr noundef nonnull %38, i8 noundef zeroext %823, i16 noundef zeroext 0, i64 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %38) #11
  br label %826

825:                                              ; preds = %777
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %37) #11
  br label %826

826:                                              ; preds = %825, %812, %781, %761, %743
  %827 = phi i8 [ 4, %761 ], [ 8, %743 ], [ 8, %825 ], [ 0, %781 ], [ 0, %812 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %36) #11
  br label %1495

828:                                              ; preds = %735
  %829 = getelementptr inbounds %struct.hci_conn, ptr %732, i32 0, i32 16
  %830 = load i8, ptr %829, align 1, !range !8
  %831 = icmp eq i8 %830, 0
  br i1 %831, label %836, label %832

832:                                              ; preds = %828
  %833 = getelementptr inbounds %struct.smp_chan, ptr %731, i32 0, i32 25
  %834 = getelementptr inbounds %struct.smp_chan, ptr %731, i32 0, i32 26
  %835 = getelementptr inbounds %struct.smp_chan, ptr %731, i32 0, i32 5
  br label %840

836:                                              ; preds = %828
  %837 = getelementptr inbounds %struct.smp_chan, ptr %731, i32 0, i32 26
  %838 = getelementptr inbounds %struct.smp_chan, ptr %731, i32 0, i32 25
  %839 = getelementptr inbounds %struct.smp_chan, ptr %731, i32 0, i32 5
  br label %840

840:                                              ; preds = %836, %832
  %841 = phi ptr [ %833, %832 ], [ %837, %836 ]
  %842 = phi ptr [ %834, %832 ], [ %838, %836 ]
  %843 = phi ptr [ %835, %832 ], [ %736, %836 ]
  %844 = phi ptr [ %736, %832 ], [ %839, %836 ]
  %845 = getelementptr inbounds %struct.smp_chan, ptr %731, i32 0, i32 23
  %846 = load i8, ptr %845, align 4
  switch i8 %846, label %871 [
    i8 4, label %847
    i8 2, label %869
    i8 5, label %869
  ]

847:                                              ; preds = %840
  br i1 %831, label %848, label %867

848:                                              ; preds = %847
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %30) #11
  store i8 4, ptr %30, align 1
  %849 = load ptr, ptr %728, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %31) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %32) #11
  %850 = icmp eq ptr %849, null
  br i1 %850, label %866, label %851

851:                                              ; preds = %848
  %852 = getelementptr inbounds %struct.smp_chan, ptr %731, i32 0, i32 5
  store ptr %30, ptr %31, align 4
  %853 = getelementptr inbounds %struct.kvec, ptr %31, i32 0, i32 1
  store i32 1, ptr %853, align 4
  %854 = getelementptr inbounds [2 x %struct.kvec], ptr %31, i32 0, i32 1
  store ptr %852, ptr %854, align 4
  %855 = getelementptr inbounds [2 x %struct.kvec], ptr %31, i32 0, i32 1, i32 1
  store i32 16, ptr %855, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %32, i8 0, i32 56, i1 false) #11
  %856 = getelementptr inbounds %struct.msghdr, ptr %32, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %856, i32 noundef 1, ptr noundef nonnull %31, i32 noundef 2, i32 noundef 17) #11
  %857 = call i32 @l2cap_chan_send(ptr noundef nonnull %849, ptr noundef nonnull %32, i32 noundef 17) #11
  %858 = getelementptr inbounds %struct.l2cap_chan, ptr %849, i32 0, i32 84
  %859 = load ptr, ptr %858, align 4
  %860 = icmp eq ptr %859, null
  br i1 %860, label %866, label %861

861:                                              ; preds = %851
  %862 = getelementptr inbounds %struct.smp_chan, ptr %859, i32 0, i32 1
  %863 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %862) #11
  %864 = load ptr, ptr @system_wq, align 4
  %865 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %864, ptr noundef %862, i32 noundef 3000) #11
  br label %866

866:                                              ; preds = %861, %851, %848
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %32) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %31) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %30) #11
  br label %867

867:                                              ; preds = %866, %847
  %868 = getelementptr inbounds %struct.smp_chan, ptr %731, i32 0, i32 2
  call void @_set_bit(i32 noundef 13, ptr noundef %868) #11
  br label %918

869:                                              ; preds = %840, %840
  %870 = tail call fastcc zeroext i8 @sc_passkey_round(ptr noundef %731, i8 noundef zeroext 4) #11
  br label %1495

871:                                              ; preds = %840
  br i1 %831, label %886, label %872

872:                                              ; preds = %871
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %39) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %39, i8 0, i32 16, i1 false) #11, !annotation !9
  %873 = getelementptr inbounds %struct.smp_chan, ptr %731, i32 0, i32 29
  %874 = load ptr, ptr %873, align 4
  %875 = getelementptr inbounds %struct.smp_chan, ptr %731, i32 0, i32 26
  %876 = getelementptr inbounds %struct.smp_chan, ptr %731, i32 0, i32 25
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %29) #11
  store i8 0, ptr %29, align 1
  %877 = getelementptr inbounds i8, ptr %29, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %877, ptr noundef align 1 dereferenceable(32) %876, i32 32, i1 false) #11
  %878 = getelementptr inbounds i8, ptr %29, i32 33
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %878, ptr noundef align 1 dereferenceable(32) %875, i32 32, i1 false) #11
  %879 = call fastcc i32 @aes_cmac(ptr noundef %874, ptr noundef %736, ptr noundef nonnull %29, i32 noundef 65, ptr noundef nonnull %39) #11
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %29) #11
  %880 = icmp eq i32 %879, 0
  br i1 %880, label %882, label %881

881:                                              ; preds = %872
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %39) #11
  br label %1498

882:                                              ; preds = %872
  %883 = getelementptr inbounds %struct.smp_chan, ptr %731, i32 0, i32 7
  %884 = call i32 @__crypto_memneq(ptr noundef %883, ptr noundef nonnull %39, i32 noundef 16) #11
  %885 = icmp eq i32 %884, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %39) #11
  br i1 %885, label %918, label %1498

886:                                              ; preds = %871
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %26) #11
  store i8 4, ptr %26, align 1
  %887 = load ptr, ptr %728, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %27) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %28) #11
  %888 = icmp eq ptr %887, null
  br i1 %888, label %904, label %889

889:                                              ; preds = %886
  %890 = getelementptr inbounds %struct.smp_chan, ptr %731, i32 0, i32 5
  store ptr %26, ptr %27, align 4
  %891 = getelementptr inbounds %struct.kvec, ptr %27, i32 0, i32 1
  store i32 1, ptr %891, align 4
  %892 = getelementptr inbounds [2 x %struct.kvec], ptr %27, i32 0, i32 1
  store ptr %890, ptr %892, align 4
  %893 = getelementptr inbounds [2 x %struct.kvec], ptr %27, i32 0, i32 1, i32 1
  store i32 16, ptr %893, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %28, i8 0, i32 56, i1 false) #11
  %894 = getelementptr inbounds %struct.msghdr, ptr %28, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %894, i32 noundef 1, ptr noundef nonnull %27, i32 noundef 2, i32 noundef 17) #11
  %895 = call i32 @l2cap_chan_send(ptr noundef nonnull %887, ptr noundef nonnull %28, i32 noundef 17) #11
  %896 = getelementptr inbounds %struct.l2cap_chan, ptr %887, i32 0, i32 84
  %897 = load ptr, ptr %896, align 4
  %898 = icmp eq ptr %897, null
  br i1 %898, label %904, label %899

899:                                              ; preds = %889
  %900 = getelementptr inbounds %struct.smp_chan, ptr %897, i32 0, i32 1
  %901 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %900) #11
  %902 = load ptr, ptr @system_wq, align 4
  %903 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %902, ptr noundef %900, i32 noundef 3000) #11
  br label %904

904:                                              ; preds = %899, %889, %886
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %28) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %27) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %26) #11
  %905 = getelementptr inbounds %struct.smp_chan, ptr %731, i32 0, i32 2
  call void @_set_bit(i32 noundef 13, ptr noundef %905) #11
  %906 = load i8, ptr %845, align 4
  %907 = icmp eq i8 %906, 0
  br i1 %907, label %908, label %918

908:                                              ; preds = %904
  %909 = getelementptr inbounds %struct.hci_conn, ptr %732, i32 0, i32 65
  %910 = load ptr, ptr %909, align 4
  %911 = getelementptr inbounds %struct.hci_conn, ptr %732, i32 0, i32 2
  %912 = getelementptr inbounds %struct.hci_conn, ptr %732, i32 0, i32 3
  %913 = load i8, ptr %912, align 2
  %914 = getelementptr inbounds %struct.hci_conn, ptr %732, i32 0, i32 15
  %915 = load i8, ptr %914, align 8
  %916 = call ptr @hci_find_ltk(ptr noundef %910, ptr noundef %911, i8 noundef zeroext %913, i8 noundef zeroext %915) #11
  %917 = icmp eq ptr %916, null
  br i1 %917, label %918, label %942

918:                                              ; preds = %908, %904, %882, %867
  %919 = getelementptr inbounds %struct.smp_chan, ptr %731, i32 0, i32 28
  %920 = getelementptr inbounds %struct.smp_chan, ptr %731, i32 0, i32 8
  %921 = call fastcc i32 @sc_mackey_and_ltk(ptr noundef %731, ptr noundef %919, ptr noundef %920) #11
  %922 = icmp eq i32 %921, 0
  br i1 %922, label %923, label %1498

923:                                              ; preds = %918
  %924 = load i8, ptr %845, align 4
  %925 = icmp eq i8 %924, 4
  br i1 %925, label %926, label %931

926:                                              ; preds = %923
  %927 = load i8, ptr %829, align 1, !range !8
  %928 = icmp eq i8 %927, 0
  br i1 %928, label %1500, label %929

929:                                              ; preds = %926
  call fastcc void @sc_dhkey_check(ptr noundef %731) #11
  %930 = getelementptr inbounds %struct.smp_chan, ptr %731, i32 0, i32 2
  call void @_set_bit(i32 noundef 13, ptr noundef %930) #11
  br label %1500

931:                                              ; preds = %923
  %932 = getelementptr inbounds %struct.smp_chan, ptr %731, i32 0, i32 29
  %933 = load ptr, ptr %932, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #11, !annotation !9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %3, ptr noundef align 1 dereferenceable(16) %844, i32 16, i1 false) #11
  %934 = getelementptr inbounds i8, ptr %3, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %934, ptr noundef align 1 dereferenceable(32) %842, i32 32, i1 false) #11
  %935 = getelementptr inbounds i8, ptr %3, i32 48
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %935, ptr noundef align 1 dereferenceable(32) %841, i32 32, i1 false) #11
  %936 = call fastcc i32 @aes_cmac(ptr noundef %933, ptr noundef %843, ptr noundef nonnull %3, i32 noundef 80, ptr noundef nonnull %4) #11
  %937 = icmp eq i32 %936, 0
  br i1 %937, label %939, label %938

938:                                              ; preds = %931
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #11
  br label %1498

939:                                              ; preds = %931
  %940 = load i32, ptr %4, align 4
  %941 = urem i32 %940, 1000000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #11
  br label %942

942:                                              ; preds = %939, %908
  %943 = phi i32 [ %941, %939 ], [ 0, %908 ]
  %944 = phi i8 [ 0, %939 ], [ 1, %908 ]
  %945 = load i8, ptr %845, align 4
  %946 = icmp eq i8 %945, 0
  %947 = select i1 %946, i8 1, i8 %944
  %948 = getelementptr inbounds %struct.hci_conn, ptr %732, i32 0, i32 65
  %949 = load ptr, ptr %948, align 4
  %950 = getelementptr inbounds %struct.hci_conn, ptr %732, i32 0, i32 2
  %951 = getelementptr inbounds %struct.hci_conn, ptr %732, i32 0, i32 14
  %952 = load i8, ptr %951, align 1
  %953 = getelementptr inbounds %struct.hci_conn, ptr %732, i32 0, i32 3
  %954 = load i8, ptr %953, align 2
  %955 = call i32 @mgmt_user_confirm_request(ptr noundef %949, ptr noundef %950, i8 noundef zeroext %952, i8 noundef zeroext %954, i32 noundef %943, i8 noundef zeroext %947) #11
  %956 = icmp eq i32 %955, 0
  br i1 %956, label %957, label %1498

957:                                              ; preds = %942
  call void @_set_bit(i32 noundef 8, ptr noundef %739) #11
  br label %1500

958:                                              ; preds = %80
  %959 = load ptr, ptr %65, align 4
  %960 = getelementptr inbounds %struct.l2cap_conn, ptr %52, i32 0, i32 17
  %961 = load ptr, ptr %960, align 4
  %962 = getelementptr inbounds %struct.l2cap_chan, ptr %961, i32 0, i32 84
  %963 = load ptr, ptr %962, align 4
  %964 = load i32, ptr %54, align 8
  %965 = icmp ult i32 %964, 16
  br i1 %965, label %1498, label %966

966:                                              ; preds = %958
  %967 = load ptr, ptr %52, align 4
  %968 = getelementptr inbounds %struct.hci_conn, ptr %967, i32 0, i32 65
  %969 = load ptr, ptr %968, align 4
  %970 = tail call zeroext i1 @hci_is_blocked_key(ptr noundef %969, i8 noundef zeroext 1, ptr noundef %959) #11
  br i1 %970, label %971, label %977

971:                                              ; preds = %966
  %972 = load ptr, ptr %52, align 4
  %973 = getelementptr inbounds %struct.hci_conn, ptr %972, i32 0, i32 65
  %974 = load ptr, ptr %973, align 4
  %975 = getelementptr inbounds %struct.hci_dev, ptr %974, i32 0, i32 2
  %976 = getelementptr inbounds %struct.hci_conn, ptr %972, i32 0, i32 2
  tail call void (ptr, ...) @bt_warn_ratelimited(ptr noundef nonnull @.str.20, ptr noundef %975, ptr noundef %976) #11
  br label %1498

977:                                              ; preds = %966
  %978 = getelementptr inbounds %struct.smp_chan, ptr %963, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 7, ptr noundef %978) #11
  %979 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef 16) #11
  %980 = getelementptr inbounds %struct.smp_chan, ptr %963, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(16) %980, ptr noundef align 1 dereferenceable(16) %959, i32 16, i1 false) #11
  br label %1500

981:                                              ; preds = %80
  %982 = load ptr, ptr %65, align 4
  %983 = getelementptr inbounds %struct.l2cap_conn, ptr %52, i32 0, i32 17
  %984 = load ptr, ptr %983, align 4
  %985 = getelementptr inbounds %struct.l2cap_chan, ptr %984, i32 0, i32 84
  %986 = load ptr, ptr %985, align 4
  %987 = load ptr, ptr %52, align 4
  %988 = getelementptr inbounds %struct.hci_conn, ptr %987, i32 0, i32 65
  %989 = load ptr, ptr %988, align 4
  %990 = load i32, ptr %54, align 8
  %991 = icmp ult i32 %990, 10
  br i1 %991, label %1498, label %992

992:                                              ; preds = %981
  %993 = getelementptr inbounds %struct.smp_chan, ptr %986, i32 0, i32 12
  %994 = load i8, ptr %993, align 1
  %995 = and i8 %994, -2
  store i8 %995, ptr %993, align 1
  %996 = zext i8 %995 to i32
  %997 = and i32 %996, 2
  %998 = icmp eq i32 %997, 0
  br i1 %998, label %999, label %1002

999:                                              ; preds = %992
  %1000 = and i32 %996, 4
  %1001 = icmp eq i32 %1000, 0
  br i1 %1001, label %1005, label %1002

1002:                                             ; preds = %999, %992
  %1003 = phi i32 [ 8, %992 ], [ 10, %999 ]
  %1004 = getelementptr inbounds %struct.smp_chan, ptr %986, i32 0, i32 2
  tail call void @_set_bit(i32 noundef %1003, ptr noundef %1004) #11
  br label %1005

1005:                                             ; preds = %1002, %999
  %1006 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef 10) #11
  %1007 = getelementptr inbounds %struct.hci_conn, ptr %987, i32 0, i32 24
  %1008 = load i8, ptr %1007, align 4
  %1009 = icmp eq i8 %1008, 3
  %1010 = zext i1 %1009 to i8
  %1011 = getelementptr inbounds %struct.hci_conn, ptr %987, i32 0, i32 2
  %1012 = getelementptr inbounds %struct.hci_conn, ptr %987, i32 0, i32 3
  %1013 = load i8, ptr %1012, align 2
  %1014 = getelementptr inbounds %struct.smp_chan, ptr %986, i32 0, i32 8
  %1015 = getelementptr inbounds %struct.smp_chan, ptr %986, i32 0, i32 11
  %1016 = load i8, ptr %1015, align 2
  %1017 = load i16, ptr %982, align 1
  %1018 = getelementptr inbounds %struct.smp_cmd_initiator_ident, ptr %982, i32 0, i32 1
  %1019 = load i64, ptr %1018, align 1
  %1020 = tail call ptr @hci_add_ltk(ptr noundef %989, ptr noundef %1011, i8 noundef zeroext %1013, i8 noundef zeroext 1, i8 noundef zeroext %1010, ptr noundef %1014, i8 noundef zeroext %1016, i16 noundef zeroext %1017, i64 noundef %1019) #11
  %1021 = getelementptr inbounds %struct.smp_chan, ptr %986, i32 0, i32 18
  store ptr %1020, ptr %1021, align 4
  %1022 = load i8, ptr %993, align 1
  %1023 = and i8 %1022, 7
  %1024 = icmp eq i8 %1023, 0
  br i1 %1024, label %1025, label %1500

1025:                                             ; preds = %1005
  tail call fastcc void @smp_distribute_keys(ptr noundef %986) #11
  br label %1500

1026:                                             ; preds = %80
  %1027 = load ptr, ptr %65, align 4
  %1028 = getelementptr inbounds %struct.l2cap_conn, ptr %52, i32 0, i32 17
  %1029 = load ptr, ptr %1028, align 4
  %1030 = getelementptr inbounds %struct.l2cap_chan, ptr %1029, i32 0, i32 84
  %1031 = load ptr, ptr %1030, align 4
  %1032 = load i32, ptr %54, align 8
  %1033 = icmp ult i32 %1032, 16
  br i1 %1033, label %1498, label %1034

1034:                                             ; preds = %1026
  %1035 = load ptr, ptr %52, align 4
  %1036 = getelementptr inbounds %struct.hci_conn, ptr %1035, i32 0, i32 65
  %1037 = load ptr, ptr %1036, align 4
  %1038 = tail call zeroext i1 @hci_is_blocked_key(ptr noundef %1037, i8 noundef zeroext 2, ptr noundef %1027) #11
  br i1 %1038, label %1039, label %1045

1039:                                             ; preds = %1034
  %1040 = load ptr, ptr %52, align 4
  %1041 = getelementptr inbounds %struct.hci_conn, ptr %1040, i32 0, i32 65
  %1042 = load ptr, ptr %1041, align 4
  %1043 = getelementptr inbounds %struct.hci_dev, ptr %1042, i32 0, i32 2
  %1044 = getelementptr inbounds %struct.hci_conn, ptr %1040, i32 0, i32 2
  tail call void (ptr, ...) @bt_warn_ratelimited(ptr noundef nonnull @.str.21, ptr noundef %1043, ptr noundef %1044) #11
  br label %1498

1045:                                             ; preds = %1034
  %1046 = getelementptr inbounds %struct.smp_chan, ptr %1031, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 9, ptr noundef %1046) #11
  %1047 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef 16) #11
  %1048 = getelementptr inbounds %struct.smp_chan, ptr %1031, i32 0, i32 15
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1048, ptr noundef align 1 dereferenceable(16) %1027, i32 16, i1 false) #11
  br label %1500

1049:                                             ; preds = %80
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %41)
  %1050 = load ptr, ptr %65, align 4
  %1051 = getelementptr inbounds %struct.l2cap_conn, ptr %52, i32 0, i32 17
  %1052 = load ptr, ptr %1051, align 4
  %1053 = getelementptr inbounds %struct.l2cap_chan, ptr %1052, i32 0, i32 84
  %1054 = load ptr, ptr %1053, align 4
  %1055 = load ptr, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %40) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %40, i8 0, i32 6, i1 false) #11, !annotation !9
  %1056 = load i32, ptr %54, align 8
  %1057 = icmp ult i32 %1056, 7
  br i1 %1057, label %1125, label %1058

1058:                                             ; preds = %1049
  %1059 = getelementptr inbounds %struct.smp_chan, ptr %1054, i32 0, i32 12
  %1060 = load i8, ptr %1059, align 1
  %1061 = and i8 %1060, -3
  store i8 %1061, ptr %1059, align 1
  %1062 = and i8 %1060, 4
  %1063 = icmp eq i8 %1062, 0
  br i1 %1063, label %1066, label %1064

1064:                                             ; preds = %1058
  %1065 = getelementptr inbounds %struct.smp_chan, ptr %1054, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 10, ptr noundef %1065) #11
  br label %1066

1066:                                             ; preds = %1064, %1058
  %1067 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef 7) #11
  %1068 = getelementptr inbounds %struct.smp_cmd_ident_addr_info, ptr %1050, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %41, i8 0, i64 6, i1 false) #11
  %1069 = call i32 @bcmp(ptr noundef dereferenceable(6) %1068, ptr noundef nonnull dereferenceable(6) %41, i32 6) #11
  %1070 = icmp eq i32 %1069, 0
  br i1 %1070, label %1078, label %1071

1071:                                             ; preds = %1066
  %1072 = load i8, ptr %1050, align 1
  %1073 = icmp eq i8 %1072, 0
  br i1 %1073, label %1082, label %1074

1074:                                             ; preds = %1071
  %1075 = getelementptr %struct.smp_cmd_ident_addr_info, ptr %1050, i32 0, i32 1, i32 0, i32 5
  %1076 = load i8, ptr %1075, align 1
  %1077 = icmp ugt i8 %1076, -65
  br i1 %1077, label %1082, label %1078

1078:                                             ; preds = %1074, %1066
  %1079 = getelementptr inbounds %struct.hci_conn, ptr %1055, i32 0, i32 65
  %1080 = load ptr, ptr %1079, align 4
  %1081 = getelementptr inbounds %struct.hci_dev, ptr %1080, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.22, ptr noundef %1081) #11
  br label %1120

1082:                                             ; preds = %1074, %1071
  %1083 = getelementptr inbounds %struct.hci_conn, ptr %1055, i32 0, i32 2
  %1084 = getelementptr inbounds %struct.hci_conn, ptr %1055, i32 0, i32 3
  %1085 = load i8, ptr %1084, align 2
  %1086 = icmp eq i8 %1085, 0
  br i1 %1086, label %1091, label %1087

1087:                                             ; preds = %1082
  %1088 = getelementptr %struct.hci_conn, ptr %1055, i32 0, i32 2, i32 0, i32 5
  %1089 = load i8, ptr %1088, align 1
  %1090 = icmp ugt i8 %1089, -65
  br i1 %1090, label %1091, label %1100

1091:                                             ; preds = %1087, %1082
  %1092 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %1068, ptr noundef dereferenceable(6) %1083, i32 6) #11
  %1093 = icmp eq i32 %1092, 0
  %1094 = icmp eq i8 %1072, %1085
  %1095 = select i1 %1093, i1 %1094, i1 false
  br i1 %1095, label %1100, label %1096

1096:                                             ; preds = %1091
  %1097 = getelementptr inbounds %struct.hci_conn, ptr %1055, i32 0, i32 65
  %1098 = load ptr, ptr %1097, align 4
  %1099 = getelementptr inbounds %struct.hci_dev, ptr %1098, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.23, ptr noundef %1099) #11
  br label %1120

1100:                                             ; preds = %1091, %1087
  %1101 = getelementptr inbounds %struct.smp_chan, ptr %1054, i32 0, i32 13
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %1101, ptr noundef align 1 dereferenceable(6) %1068, i32 6, i1 false) #11
  %1102 = load i8, ptr %1050, align 1
  %1103 = getelementptr inbounds %struct.smp_chan, ptr %1054, i32 0, i32 14
  store i8 %1102, ptr %1103, align 2
  %1104 = load i8, ptr %1084, align 2
  %1105 = icmp eq i8 %1104, 1
  br i1 %1105, label %1106, label %1112

1106:                                             ; preds = %1100
  %1107 = getelementptr %struct.hci_conn, ptr %1055, i32 0, i32 2, i32 0, i32 5
  %1108 = load i8, ptr %1107, align 1
  %1109 = and i8 %1108, -64
  %1110 = icmp eq i8 %1109, 64
  br i1 %1110, label %1111, label %1112

1111:                                             ; preds = %1106
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %40, ptr noundef align 1 dereferenceable(6) %1083, i32 6, i1 false) #11
  br label %1113

1112:                                             ; preds = %1106, %1100
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %40, i8 0, i64 6, i1 false) #11
  br label %1113

1113:                                             ; preds = %1112, %1111
  %1114 = load ptr, ptr %52, align 4
  %1115 = getelementptr inbounds %struct.hci_conn, ptr %1114, i32 0, i32 65
  %1116 = load ptr, ptr %1115, align 4
  %1117 = getelementptr inbounds %struct.smp_chan, ptr %1054, i32 0, i32 15
  %1118 = call ptr @hci_add_irk(ptr noundef %1116, ptr noundef %1101, i8 noundef zeroext %1102, ptr noundef %1117, ptr noundef nonnull %40) #11
  %1119 = getelementptr inbounds %struct.smp_chan, ptr %1054, i32 0, i32 20
  store ptr %1118, ptr %1119, align 4
  br label %1120

1120:                                             ; preds = %1113, %1096, %1078
  %1121 = load i8, ptr %1059, align 1
  %1122 = and i8 %1121, 7
  %1123 = icmp eq i8 %1122, 0
  br i1 %1123, label %1124, label %1125

1124:                                             ; preds = %1120
  call fastcc void @smp_distribute_keys(ptr noundef %1054) #11
  br label %1125

1125:                                             ; preds = %1124, %1120, %1049
  %1126 = phi i8 [ 10, %1049 ], [ 0, %1124 ], [ 0, %1120 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %40) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %41)
  br label %1495

1127:                                             ; preds = %80
  %1128 = load ptr, ptr %65, align 4
  %1129 = getelementptr inbounds %struct.l2cap_conn, ptr %52, i32 0, i32 17
  %1130 = load ptr, ptr %1129, align 4
  %1131 = getelementptr inbounds %struct.l2cap_chan, ptr %1130, i32 0, i32 84
  %1132 = load ptr, ptr %1131, align 4
  %1133 = load i32, ptr %54, align 8
  %1134 = icmp ult i32 %1133, 16
  br i1 %1134, label %1498, label %1135

1135:                                             ; preds = %1127
  %1136 = getelementptr inbounds %struct.smp_chan, ptr %1132, i32 0, i32 12
  %1137 = load i8, ptr %1136, align 1
  %1138 = and i8 %1137, -5
  store i8 %1138, ptr %1136, align 1
  %1139 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef 16) #11
  %1140 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %1141 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1140, i32 noundef 3520, i32 noundef 24) #12
  %1142 = icmp eq ptr %1141, null
  br i1 %1142, label %1151, label %1143

1143:                                             ; preds = %1135
  %1144 = load ptr, ptr %52, align 4
  %1145 = getelementptr inbounds %struct.hci_conn, ptr %1144, i32 0, i32 24
  %1146 = load i8, ptr %1145, align 4
  %1147 = icmp ult i8 %1146, 3
  %1148 = select i1 %1147, i8 1, i8 3
  %1149 = getelementptr inbounds %struct.smp_csrk, ptr %1141, i32 0, i32 2
  store i8 %1148, ptr %1149, align 1
  %1150 = getelementptr inbounds %struct.smp_csrk, ptr %1141, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %1150, ptr noundef align 1 dereferenceable(16) %1128, i32 16, i1 false) #11
  br label %1151

1151:                                             ; preds = %1143, %1135
  %1152 = getelementptr inbounds %struct.smp_chan, ptr %1132, i32 0, i32 16
  store ptr %1141, ptr %1152, align 4
  tail call fastcc void @smp_distribute_keys(ptr noundef %1132) #11
  br label %1500

1153:                                             ; preds = %80
  %1154 = load ptr, ptr %65, align 4
  %1155 = load ptr, ptr %52, align 4
  %1156 = getelementptr inbounds %struct.l2cap_conn, ptr %52, i32 0, i32 17
  %1157 = load ptr, ptr %1156, align 4
  %1158 = getelementptr inbounds %struct.l2cap_chan, ptr %1157, i32 0, i32 84
  %1159 = load ptr, ptr %1158, align 4
  %1160 = getelementptr inbounds %struct.hci_conn, ptr %1155, i32 0, i32 65
  %1161 = load ptr, ptr %1160, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %44) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %44, i8 0, i32 16, i1 false) #11, !annotation !9
  %1162 = load i32, ptr %54, align 8
  %1163 = icmp ult i32 %1162, 64
  br i1 %1163, label %1392, label %1164

1164:                                             ; preds = %1153
  %1165 = getelementptr inbounds %struct.smp_chan, ptr %1159, i32 0, i32 22
  %1166 = load volatile i32, ptr %1165, align 4
  %1167 = and i32 %1166, 128
  %1168 = icmp eq i32 %1167, 0
  br i1 %1168, label %1169, label %1175

1169:                                             ; preds = %1164
  %1170 = getelementptr inbounds %struct.smp_chan, ptr %1159, i32 0, i32 25
  %1171 = tail call i32 @__crypto_memneq(ptr noundef %1154, ptr noundef %1170, i32 noundef 64) #11
  %1172 = icmp eq i32 %1171, 0
  br i1 %1172, label %1173, label %1175

1173:                                             ; preds = %1169
  %1174 = getelementptr inbounds %struct.hci_dev, ptr %1161, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.24, ptr noundef %1174) #11
  br label %1392

1175:                                             ; preds = %1169, %1164
  %1176 = getelementptr inbounds %struct.smp_chan, ptr %1159, i32 0, i32 26
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(64) %1176, ptr noundef align 1 dereferenceable(64) %1154, i32 64, i1 false) #11
  %1177 = load volatile i32, ptr %1165, align 4
  %1178 = and i32 %1177, 1024
  %1179 = icmp eq i32 %1178, 0
  br i1 %1179, label %1192, label %1180

1180:                                             ; preds = %1175
  %1181 = getelementptr inbounds %struct.smp_chan, ptr %1159, i32 0, i32 29
  %1182 = load ptr, ptr %1181, align 4
  %1183 = getelementptr inbounds %struct.smp_chan, ptr %1159, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %43) #11
  store i8 0, ptr %43, align 1
  %1184 = getelementptr inbounds i8, ptr %43, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %1184, ptr noundef align 1 dereferenceable(32) %1154, i32 32, i1 false) #11
  %1185 = getelementptr inbounds i8, ptr %43, i32 33
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %1185, ptr noundef align 1 dereferenceable(32) %1154, i32 32, i1 false) #11
  %1186 = call fastcc i32 @aes_cmac(ptr noundef %1182, ptr noundef %1183, ptr noundef nonnull %43, i32 noundef 65, ptr noundef nonnull %44) #11
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %43) #11
  %1187 = icmp eq i32 %1186, 0
  br i1 %1187, label %1188, label %1392

1188:                                             ; preds = %1180
  %1189 = getelementptr inbounds %struct.smp_chan, ptr %1159, i32 0, i32 7
  %1190 = call i32 @__crypto_memneq(ptr noundef nonnull %44, ptr noundef %1189, i32 noundef 16) #11
  %1191 = icmp eq i32 %1190, 0
  br i1 %1191, label %1192, label %1392

1192:                                             ; preds = %1188, %1175
  %1193 = getelementptr inbounds %struct.hci_conn, ptr %1155, i32 0, i32 16
  %1194 = load i8, ptr %1193, align 1, !range !8
  %1195 = icmp eq i8 %1194, 0
  br i1 %1195, label %1196, label %1199

1196:                                             ; preds = %1192
  %1197 = call fastcc zeroext i8 @sc_send_public_key(ptr noundef %1159) #11
  %1198 = icmp eq i8 %1197, 0
  br i1 %1198, label %1199, label %1392

1199:                                             ; preds = %1196, %1192
  %1200 = load volatile i32, ptr %1165, align 4
  %1201 = and i32 %1200, 2048
  %1202 = icmp eq i32 %1201, 0
  br i1 %1202, label %1213, label %1203

1203:                                             ; preds = %1199
  %1204 = getelementptr inbounds %struct.hci_dev, ptr %1161, i32 0, i32 168
  %1205 = load ptr, ptr %1204, align 8
  %1206 = icmp eq ptr %1205, null
  br i1 %1206, label %1392, label %1207

1207:                                             ; preds = %1203
  %1208 = getelementptr inbounds %struct.l2cap_chan, ptr %1205, i32 0, i32 84
  %1209 = load ptr, ptr %1208, align 4
  %1210 = icmp eq ptr %1209, null
  br i1 %1210, label %1392, label %1211

1211:                                             ; preds = %1207
  %1212 = getelementptr inbounds %struct.smp_dev, ptr %1209, i32 0, i32 5
  br label %1215

1213:                                             ; preds = %1199
  %1214 = getelementptr inbounds %struct.smp_chan, ptr %1159, i32 0, i32 30
  br label %1215

1215:                                             ; preds = %1213, %1211
  %1216 = phi ptr [ %1212, %1211 ], [ %1214, %1213 ]
  %1217 = load ptr, ptr %1216, align 4
  %1218 = getelementptr inbounds %struct.smp_chan, ptr %1159, i32 0, i32 27
  %1219 = call i32 @compute_ecdh_secret(ptr noundef %1217, ptr noundef %1176, ptr noundef %1218) #11
  %1220 = icmp eq i32 %1219, 0
  br i1 %1220, label %1221, label %1392

1221:                                             ; preds = %1215
  call void @_set_bit(i32 noundef 6, ptr noundef %1165) #11
  %1222 = load ptr, ptr %1159, align 4
  %1223 = load ptr, ptr %1222, align 4
  %1224 = load volatile i32, ptr %1165, align 4
  %1225 = and i32 %1224, 1024
  %1226 = icmp eq i32 %1225, 0
  br i1 %1226, label %1227, label %1272

1227:                                             ; preds = %1221
  %1228 = load volatile i32, ptr %1165, align 4
  %1229 = and i32 %1228, 2048
  %1230 = icmp eq i32 %1229, 0
  br i1 %1230, label %1231, label %1272

1231:                                             ; preds = %1227
  %1232 = getelementptr inbounds %struct.hci_conn, ptr %1223, i32 0, i32 16
  %1233 = load i8, ptr %1232, align 1, !range !8
  %1234 = icmp eq i8 %1233, 0
  %1235 = getelementptr %struct.smp_chan, ptr %1159, i32 0, i32 3, i32 1
  %1236 = getelementptr %struct.smp_chan, ptr %1159, i32 0, i32 4, i32 1
  %1237 = select i1 %1234, ptr %1236, ptr %1235
  %1238 = select i1 %1234, ptr %1235, ptr %1236
  %1239 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %1237, i32 0, i32 2
  %1240 = load i8, ptr %1239, align 1
  %1241 = and i8 %1240, 4
  %1242 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %1238, i32 0, i32 2
  %1243 = load i8, ptr %1242, align 1
  %1244 = and i8 %1243, 4
  %1245 = icmp ne i8 %1241, 0
  %1246 = icmp ne i8 %1244, 0
  %1247 = select i1 %1245, i1 true, i1 %1246
  br i1 %1247, label %1250, label %1248

1248:                                             ; preds = %1231
  %1249 = getelementptr inbounds %struct.smp_chan, ptr %1159, i32 0, i32 23
  store i8 0, ptr %1249, align 4
  br label %1280

1250:                                             ; preds = %1231
  %1251 = load i8, ptr %1238, align 1
  %1252 = load i8, ptr %1237, align 1
  %1253 = icmp ugt i8 %1252, 4
  %1254 = icmp ugt i8 %1251, 4
  %1255 = or i1 %1254, %1253
  br i1 %1255, label %1266, label %1256

1256:                                             ; preds = %1250
  %1257 = zext i8 %1251 to i32
  %1258 = zext i8 %1252 to i32
  %1259 = load volatile i32, ptr %1165, align 4
  %1260 = and i32 %1259, 32
  %1261 = icmp eq i32 %1260, 0
  %1262 = select i1 %1261, ptr @gen_method, ptr @sc_method
  %1263 = getelementptr [5 x [5 x i8]], ptr %1262, i32 0, i32 %1257, i32 %1258
  %1264 = load i8, ptr %1263, align 1
  %1265 = icmp eq i8 %1264, 1
  br i1 %1265, label %1266, label %1274

1266:                                             ; preds = %1256, %1250
  %1267 = load volatile i32, ptr %1165, align 4
  %1268 = trunc i32 %1267 to i8
  %1269 = lshr i8 %1268, 4
  %1270 = and i8 %1269, 1
  %1271 = xor i8 %1270, 1
  br label %1274

1272:                                             ; preds = %1227, %1221
  %1273 = getelementptr inbounds %struct.smp_chan, ptr %1159, i32 0, i32 23
  store i8 4, ptr %1273, align 4
  br label %1278

1274:                                             ; preds = %1266, %1256
  %1275 = phi i8 [ %1264, %1256 ], [ %1271, %1266 ]
  %1276 = getelementptr inbounds %struct.smp_chan, ptr %1159, i32 0, i32 23
  store i8 %1275, ptr %1276, align 4
  %1277 = icmp ult i8 %1275, 2
  br i1 %1277, label %1280, label %1278

1278:                                             ; preds = %1274, %1272
  %1279 = phi ptr [ %1273, %1272 ], [ %1276, %1274 ]
  br label %1280

1280:                                             ; preds = %1278, %1274, %1248
  %1281 = phi i8 [ 4, %1278 ], [ 2, %1248 ], [ 2, %1274 ]
  %1282 = phi ptr [ %1279, %1278 ], [ %1249, %1248 ], [ %1276, %1274 ]
  %1283 = getelementptr inbounds %struct.hci_conn, ptr %1155, i32 0, i32 25
  store i8 %1281, ptr %1283, align 1
  %1284 = call i32 @__crypto_memneq(ptr noundef nonnull @debug_pk, ptr noundef %1176, i32 noundef 64) #11
  %1285 = icmp eq i32 %1284, 0
  br i1 %1285, label %1286, label %1287

1286:                                             ; preds = %1280
  call void @_set_bit(i32 noundef 7, ptr noundef %1165) #11
  br label %1287

1287:                                             ; preds = %1286, %1280
  %1288 = load i8, ptr %1282, align 4
  switch i8 %1288, label %1340 [
    i8 5, label %1289
    i8 4, label %1316
  ]

1289:                                             ; preds = %1287
  %1290 = getelementptr inbounds %struct.hci_conn, ptr %1155, i32 0, i32 29
  call void @get_random_bytes(ptr noundef %1290, i32 noundef 4) #11
  %1291 = load i32, ptr %1290, align 4
  %1292 = urem i32 %1291, 1000000
  store i32 %1292, ptr %1290, align 4
  %1293 = getelementptr inbounds %struct.hci_conn, ptr %1155, i32 0, i32 30
  store i8 0, ptr %1293, align 8
  %1294 = getelementptr inbounds %struct.smp_chan, ptr %1159, i32 0, i32 24
  store i8 0, ptr %1294, align 1
  %1295 = getelementptr inbounds %struct.hci_conn, ptr %1155, i32 0, i32 2
  %1296 = getelementptr inbounds %struct.hci_conn, ptr %1155, i32 0, i32 14
  %1297 = load i8, ptr %1296, align 1
  %1298 = getelementptr inbounds %struct.hci_conn, ptr %1155, i32 0, i32 3
  %1299 = load i8, ptr %1298, align 2
  %1300 = load i32, ptr %1290, align 4
  %1301 = load i8, ptr %1293, align 8
  %1302 = call i32 @mgmt_user_passkey_notify(ptr noundef %1161, ptr noundef %1295, i8 noundef zeroext %1297, i8 noundef zeroext %1299, i32 noundef %1300, i8 noundef zeroext %1301) #11
  %1303 = icmp eq i32 %1302, 0
  br i1 %1303, label %1304, label %1392

1304:                                             ; preds = %1289
  %1305 = getelementptr inbounds %struct.smp_chan, ptr %1159, i32 0, i32 2
  call void @_set_bit(i32 noundef 3, ptr noundef %1305) #11
  %1306 = load i8, ptr %1294, align 1
  %1307 = icmp ugt i8 %1306, 19
  br i1 %1307, label %1392, label %1308

1308:                                             ; preds = %1304
  %1309 = load ptr, ptr %1159, align 4
  %1310 = load ptr, ptr %1309, align 4
  %1311 = getelementptr inbounds %struct.hci_conn, ptr %1310, i32 0, i32 16
  %1312 = load i8, ptr %1311, align 1, !range !8
  %1313 = icmp eq i8 %1312, 0
  br i1 %1313, label %1392, label %1314

1314:                                             ; preds = %1308
  call void @_set_bit(i32 noundef 3, ptr noundef %1305) #11
  %1315 = call fastcc zeroext i8 @sc_passkey_send_confirm(ptr noundef %1159) #11
  br label %1392

1316:                                             ; preds = %1287
  %1317 = load i8, ptr %1193, align 1, !range !8
  %1318 = icmp eq i8 %1317, 0
  br i1 %1318, label %1338, label %1319

1319:                                             ; preds = %1316
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 4, ptr %5, align 1
  %1320 = load ptr, ptr %1156, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #11
  %1321 = icmp eq ptr %1320, null
  br i1 %1321, label %1337, label %1322

1322:                                             ; preds = %1319
  %1323 = getelementptr inbounds %struct.smp_chan, ptr %1159, i32 0, i32 5
  store ptr %5, ptr %6, align 4
  %1324 = getelementptr inbounds %struct.kvec, ptr %6, i32 0, i32 1
  store i32 1, ptr %1324, align 4
  %1325 = getelementptr inbounds [2 x %struct.kvec], ptr %6, i32 0, i32 1
  store ptr %1323, ptr %1325, align 4
  %1326 = getelementptr inbounds [2 x %struct.kvec], ptr %6, i32 0, i32 1, i32 1
  store i32 16, ptr %1326, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %7, i8 0, i32 56, i1 false) #11
  %1327 = getelementptr inbounds %struct.msghdr, ptr %7, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %1327, i32 noundef 1, ptr noundef nonnull %6, i32 noundef 2, i32 noundef 17) #11
  %1328 = call i32 @l2cap_chan_send(ptr noundef nonnull %1320, ptr noundef nonnull %7, i32 noundef 17) #11
  %1329 = getelementptr inbounds %struct.l2cap_chan, ptr %1320, i32 0, i32 84
  %1330 = load ptr, ptr %1329, align 4
  %1331 = icmp eq ptr %1330, null
  br i1 %1331, label %1337, label %1332

1332:                                             ; preds = %1322
  %1333 = getelementptr inbounds %struct.smp_chan, ptr %1330, i32 0, i32 1
  %1334 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %1333) #11
  %1335 = load ptr, ptr @system_wq, align 4
  %1336 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %1335, ptr noundef %1333, i32 noundef 3000) #11
  br label %1337

1337:                                             ; preds = %1332, %1322, %1319
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  br label %1338

1338:                                             ; preds = %1337, %1316
  %1339 = getelementptr inbounds %struct.smp_chan, ptr %1159, i32 0, i32 2
  call void @_set_bit(i32 noundef 4, ptr noundef %1339) #11
  br label %1392

1340:                                             ; preds = %1287
  %1341 = load i8, ptr %1193, align 1, !range !8
  %1342 = icmp eq i8 %1341, 0
  br i1 %1342, label %1346, label %1343

1343:                                             ; preds = %1340
  %1344 = getelementptr inbounds %struct.smp_chan, ptr %1159, i32 0, i32 2
  call void @_set_bit(i32 noundef 3, ptr noundef %1344) #11
  %1345 = load i8, ptr %1282, align 4
  br label %1346

1346:                                             ; preds = %1343, %1340
  %1347 = phi i8 [ %1345, %1343 ], [ %1288, %1340 ]
  %1348 = icmp eq i8 %1347, 2
  br i1 %1348, label %1349, label %1359

1349:                                             ; preds = %1346
  %1350 = getelementptr inbounds %struct.hci_conn, ptr %1155, i32 0, i32 2
  %1351 = getelementptr inbounds %struct.hci_conn, ptr %1155, i32 0, i32 14
  %1352 = load i8, ptr %1351, align 1
  %1353 = getelementptr inbounds %struct.hci_conn, ptr %1155, i32 0, i32 3
  %1354 = load i8, ptr %1353, align 2
  %1355 = call i32 @mgmt_user_passkey_request(ptr noundef %1161, ptr noundef %1350, i8 noundef zeroext %1352, i8 noundef zeroext %1354) #11
  %1356 = icmp eq i32 %1355, 0
  br i1 %1356, label %1357, label %1392

1357:                                             ; preds = %1349
  %1358 = getelementptr inbounds %struct.smp_chan, ptr %1159, i32 0, i32 2
  call void @_set_bit(i32 noundef 3, ptr noundef %1358) #11
  call void @_set_bit(i32 noundef 8, ptr noundef %1165) #11
  br label %1392

1359:                                             ; preds = %1346
  %1360 = load ptr, ptr %52, align 4
  %1361 = getelementptr inbounds %struct.hci_conn, ptr %1360, i32 0, i32 16
  %1362 = load i8, ptr %1361, align 1, !range !8
  %1363 = icmp eq i8 %1362, 0
  br i1 %1363, label %1364, label %1392

1364:                                             ; preds = %1359
  %1365 = getelementptr inbounds %struct.smp_chan, ptr %1159, i32 0, i32 29
  %1366 = load ptr, ptr %1365, align 4
  %1367 = getelementptr inbounds %struct.smp_chan, ptr %1159, i32 0, i32 25
  %1368 = getelementptr inbounds %struct.smp_chan, ptr %1159, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %42) #11
  store i8 0, ptr %42, align 1
  %1369 = getelementptr inbounds i8, ptr %42, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %1369, ptr noundef align 1 dereferenceable(32) %1176, i32 32, i1 false) #11
  %1370 = getelementptr inbounds i8, ptr %42, i32 33
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %1370, ptr noundef align 1 dereferenceable(32) %1367, i32 32, i1 false) #11
  %1371 = call fastcc i32 @aes_cmac(ptr noundef %1366, ptr noundef %1368, ptr noundef nonnull %42, i32 noundef 65, ptr noundef nonnull %44) #11
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %42) #11
  %1372 = icmp eq i32 %1371, 0
  br i1 %1372, label %1373, label %1392

1373:                                             ; preds = %1364
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8)
  store i8 3, ptr %8, align 1
  %1374 = load ptr, ptr %1156, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #11
  %1375 = icmp eq ptr %1374, null
  br i1 %1375, label %1390, label %1376

1376:                                             ; preds = %1373
  store ptr %8, ptr %9, align 4
  %1377 = getelementptr inbounds %struct.kvec, ptr %9, i32 0, i32 1
  store i32 1, ptr %1377, align 4
  %1378 = getelementptr inbounds [2 x %struct.kvec], ptr %9, i32 0, i32 1
  store ptr %44, ptr %1378, align 4
  %1379 = getelementptr inbounds [2 x %struct.kvec], ptr %9, i32 0, i32 1, i32 1
  store i32 16, ptr %1379, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %10, i8 0, i32 56, i1 false) #11
  %1380 = getelementptr inbounds %struct.msghdr, ptr %10, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %1380, i32 noundef 1, ptr noundef nonnull %9, i32 noundef 2, i32 noundef 17) #11
  %1381 = call i32 @l2cap_chan_send(ptr noundef nonnull %1374, ptr noundef nonnull %10, i32 noundef 17) #11
  %1382 = getelementptr inbounds %struct.l2cap_chan, ptr %1374, i32 0, i32 84
  %1383 = load ptr, ptr %1382, align 4
  %1384 = icmp eq ptr %1383, null
  br i1 %1384, label %1390, label %1385

1385:                                             ; preds = %1376
  %1386 = getelementptr inbounds %struct.smp_chan, ptr %1383, i32 0, i32 1
  %1387 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %1386) #11
  %1388 = load ptr, ptr @system_wq, align 4
  %1389 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %1388, ptr noundef %1386, i32 noundef 3000) #11
  br label %1390

1390:                                             ; preds = %1385, %1376, %1373
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8)
  %1391 = getelementptr inbounds %struct.smp_chan, ptr %1159, i32 0, i32 2
  call void @_set_bit(i32 noundef 4, ptr noundef %1391) #11
  br label %1392

1392:                                             ; preds = %1390, %1364, %1359, %1357, %1349, %1338, %1314, %1308, %1304, %1289, %1215, %1207, %1203, %1196, %1188, %1180, %1173, %1153
  %1393 = phi i8 [ 0, %1338 ], [ 0, %1357 ], [ 0, %1390 ], [ 8, %1173 ], [ 10, %1153 ], [ 8, %1180 ], [ 4, %1188 ], [ %1197, %1196 ], [ 8, %1215 ], [ 8, %1289 ], [ 8, %1349 ], [ 0, %1359 ], [ 8, %1364 ], [ 8, %1207 ], [ 8, %1203 ], [ %1315, %1314 ], [ 0, %1304 ], [ 0, %1308 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %44) #11
  br label %1495

1394:                                             ; preds = %80
  %1395 = load ptr, ptr %65, align 4
  %1396 = getelementptr inbounds %struct.l2cap_conn, ptr %52, i32 0, i32 17
  %1397 = load ptr, ptr %1396, align 4
  %1398 = load ptr, ptr %52, align 4
  %1399 = getelementptr inbounds %struct.l2cap_chan, ptr %1397, i32 0, i32 84
  %1400 = load ptr, ptr %1399, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %46) #11
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %47) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %48)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %49) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %49, i8 0, i32 16, i1 false) #11, !annotation !9
  %1401 = load i32, ptr %54, align 8
  %1402 = icmp ult i32 %1401, 16
  br i1 %1402, label %1485, label %1403

1403:                                             ; preds = %1394
  %1404 = getelementptr inbounds %struct.hci_conn, ptr %1398, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %46, ptr noundef align 2 dereferenceable(6) %1404, i32 6, i1 false) #11
  %1405 = getelementptr inbounds %struct.hci_conn, ptr %1398, i32 0, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %47, ptr noundef align 1 dereferenceable(6) %1405, i32 6, i1 false) #11
  %1406 = getelementptr inbounds %struct.hci_conn, ptr %1398, i32 0, i32 7
  %1407 = load i8, ptr %1406, align 8
  %1408 = getelementptr inbounds [7 x i8], ptr %46, i32 0, i32 6
  store i8 %1407, ptr %1408, align 1
  %1409 = getelementptr inbounds %struct.hci_conn, ptr %1398, i32 0, i32 9
  %1410 = load i8, ptr %1409, align 1
  %1411 = getelementptr inbounds [7 x i8], ptr %47, i32 0, i32 6
  store i8 %1410, ptr %1411, align 1
  %1412 = getelementptr inbounds %struct.hci_conn, ptr %1398, i32 0, i32 16
  %1413 = load i8, ptr %1412, align 1, !range !8
  %1414 = icmp eq i8 %1413, 0
  %1415 = getelementptr %struct.smp_chan, ptr %1400, i32 0, i32 3, i32 1
  %1416 = getelementptr %struct.smp_chan, ptr %1400, i32 0, i32 4, i32 1
  %1417 = select i1 %1414, ptr %1415, ptr %1416
  %1418 = select i1 %1414, ptr %47, ptr %46
  %1419 = select i1 %1414, ptr %46, ptr %47
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) %48, i8 0, i32 12, i1 false)
  %1420 = getelementptr inbounds %struct.smp_chan, ptr %1400, i32 0, i32 23
  %1421 = load i8, ptr %1420, align 4
  switch i8 %1421, label %1429 [
    i8 2, label %1422
    i8 5, label %1422
    i8 4, label %1425
  ]

1422:                                             ; preds = %1403, %1403
  %1423 = getelementptr inbounds %struct.hci_conn, ptr %1398, i32 0, i32 29
  %1424 = load i32, ptr %1423, align 4
  br label %1429

1425:                                             ; preds = %1403
  %1426 = getelementptr inbounds %struct.smp_chan, ptr %1400, i32 0, i32 10
  %1427 = load i32, ptr %1426, align 2
  %1428 = getelementptr inbounds %struct.smp_chan, ptr %1400, i32 0, i32 10, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) %48, ptr noundef align 2 dereferenceable(12) %1428, i32 12, i1 false) #11
  br label %1429

1429:                                             ; preds = %1425, %1422, %1403
  %1430 = phi i32 [ 0, %1403 ], [ %1427, %1425 ], [ %1424, %1422 ]
  %1431 = getelementptr inbounds %struct.smp_chan, ptr %1400, i32 0, i32 29
  %1432 = load ptr, ptr %1431, align 4
  %1433 = getelementptr inbounds %struct.smp_chan, ptr %1400, i32 0, i32 28
  %1434 = getelementptr inbounds %struct.smp_chan, ptr %1400, i32 0, i32 6
  %1435 = getelementptr inbounds %struct.smp_chan, ptr %1400, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %45) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %45, ptr noundef nonnull align 1 dereferenceable(7) %1418, i32 7, i1 false) #11
  %1436 = getelementptr inbounds i8, ptr %45, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(7) %1436, ptr noundef nonnull align 1 dereferenceable(7) %1419, i32 7, i1 false) #11
  %1437 = getelementptr inbounds i8, ptr %45, i32 14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %1437, ptr noundef align 1 dereferenceable(3) %1417, i32 3, i1 false)
  %1438 = getelementptr inbounds i8, ptr %45, i32 17
  store i32 %1430, ptr %1438, align 1
  %1439 = getelementptr inbounds i8, ptr %45, i32 21
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %1439, ptr noundef nonnull align 1 dereferenceable(12) %48, i32 12, i1 false) #11
  %1440 = getelementptr inbounds i8, ptr %45, i32 33
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1440, ptr noundef align 1 dereferenceable(16) %1435, i32 16, i1 false) #11
  %1441 = getelementptr inbounds i8, ptr %45, i32 49
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1441, ptr noundef align 1 dereferenceable(16) %1434, i32 16, i1 false) #11
  %1442 = call fastcc i32 @aes_cmac(ptr noundef %1432, ptr noundef %1433, ptr noundef nonnull %45, i32 noundef 65, ptr noundef nonnull %49) #11
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %45) #11
  %1443 = icmp eq i32 %1442, 0
  br i1 %1443, label %1444, label %1485

1444:                                             ; preds = %1429
  %1445 = call i32 @__crypto_memneq(ptr noundef %1395, ptr noundef nonnull %49, i32 noundef 16) #11
  %1446 = icmp eq i32 %1445, 0
  br i1 %1446, label %1447, label %1485

1447:                                             ; preds = %1444
  %1448 = load i8, ptr %1412, align 1, !range !8
  %1449 = icmp eq i8 %1448, 0
  br i1 %1449, label %1450, label %1457

1450:                                             ; preds = %1447
  %1451 = getelementptr inbounds %struct.smp_chan, ptr %1400, i32 0, i32 22
  %1452 = load volatile i32, ptr %1451, align 4
  %1453 = and i32 %1452, 256
  %1454 = icmp eq i32 %1453, 0
  br i1 %1454, label %1456, label %1455

1455:                                             ; preds = %1450
  call void @_set_bit(i32 noundef 9, ptr noundef %1451) #11
  br label %1485

1456:                                             ; preds = %1450
  call fastcc void @sc_dhkey_check(ptr noundef %1400) #11
  br label %1457

1457:                                             ; preds = %1456, %1447
  %1458 = load ptr, ptr %1400, align 4
  %1459 = load ptr, ptr %1458, align 4
  %1460 = getelementptr inbounds %struct.smp_chan, ptr %1400, i32 0, i32 22
  %1461 = load volatile i32, ptr %1460, align 4
  %1462 = and i32 %1461, 128
  %1463 = icmp eq i32 %1462, 0
  %1464 = select i1 %1463, i8 3, i8 4
  %1465 = getelementptr inbounds %struct.hci_conn, ptr %1459, i32 0, i32 25
  %1466 = load i8, ptr %1465, align 1
  %1467 = icmp eq i8 %1466, 4
  %1468 = zext i1 %1467 to i8
  %1469 = getelementptr inbounds %struct.hci_conn, ptr %1459, i32 0, i32 65
  %1470 = load ptr, ptr %1469, align 4
  %1471 = getelementptr inbounds %struct.hci_conn, ptr %1459, i32 0, i32 2
  %1472 = getelementptr inbounds %struct.hci_conn, ptr %1459, i32 0, i32 3
  %1473 = load i8, ptr %1472, align 2
  %1474 = getelementptr inbounds %struct.smp_chan, ptr %1400, i32 0, i32 8
  %1475 = getelementptr inbounds %struct.smp_chan, ptr %1400, i32 0, i32 11
  %1476 = load i8, ptr %1475, align 2
  %1477 = call ptr @hci_add_ltk(ptr noundef %1470, ptr noundef %1471, i8 noundef zeroext %1473, i8 noundef zeroext %1464, i8 noundef zeroext %1468, ptr noundef %1474, i8 noundef zeroext %1476, i16 noundef zeroext 0, i64 noundef 0) #11
  %1478 = getelementptr inbounds %struct.smp_chan, ptr %1400, i32 0, i32 18
  store ptr %1477, ptr %1478, align 4
  %1479 = load i8, ptr %1412, align 1, !range !8
  %1480 = icmp eq i8 %1479, 0
  br i1 %1480, label %1485, label %1481

1481:                                             ; preds = %1457
  %1482 = load i8, ptr %1475, align 2
  call void @hci_le_start_enc(ptr noundef %1398, i16 noundef zeroext 0, i64 noundef 0, ptr noundef %1474, i8 noundef zeroext %1482) #11
  %1483 = load i8, ptr %1475, align 2
  %1484 = getelementptr inbounds %struct.hci_conn, ptr %1398, i32 0, i32 27
  store i8 %1483, ptr %1484, align 1
  br label %1485

1485:                                             ; preds = %1481, %1457, %1455, %1444, %1429, %1394
  %1486 = phi i8 [ 0, %1455 ], [ 10, %1394 ], [ 8, %1429 ], [ 11, %1444 ], [ 0, %1481 ], [ 0, %1457 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %49) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %48)
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %47) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %46) #11
  br label %1495

1487:                                             ; preds = %80
  %1488 = load ptr, ptr %52, align 4
  %1489 = getelementptr inbounds %struct.l2cap_conn, ptr %52, i32 0, i32 17
  %1490 = load ptr, ptr %1489, align 4
  tail call void @mgmt_auth_failed(ptr noundef %1488, i8 noundef zeroext 5) #11
  %1491 = getelementptr inbounds %struct.l2cap_chan, ptr %1490, i32 0, i32 84
  %1492 = load ptr, ptr %1491, align 4
  %1493 = icmp eq ptr %1492, null
  br i1 %1493, label %1505, label %1494

1494:                                             ; preds = %1487
  tail call fastcc void @smp_chan_destroy(ptr noundef %52) #11
  br label %1505

1495:                                             ; preds = %1485, %1392, %1125, %869, %826, %724, %629, %601, %503, %488, %349
  %1496 = phi i8 [ %350, %349 ], [ %602, %601 ], [ %1126, %1125 ], [ %1393, %1392 ], [ %1486, %1485 ], [ %491, %488 ], [ %504, %503 ], [ %725, %724 ], [ %630, %629 ], [ %870, %869 ], [ %827, %826 ]
  %1497 = icmp eq i8 %1496, 0
  br i1 %1497, label %1500, label %1498

1498:                                             ; preds = %1495, %1127, %1039, %1026, %981, %971, %958, %942, %938, %918, %882, %881, %727, %693, %672, %657, %603, %492, %468, %462, %391, %383, %366, %362, %351, %80, %57
  %1499 = phi i8 [ %1496, %1495 ], [ 5, %57 ], [ 7, %80 ], [ 8, %881 ], [ 8, %942 ], [ 8, %938 ], [ 8, %918 ], [ 10, %727 ], [ 4, %882 ], [ 8, %657 ], [ 8, %693 ], [ 8, %672 ], [ 10, %603 ], [ 3, %462 ], [ 6, %383 ], [ 6, %366 ], [ 8, %492 ], [ 3, %391 ], [ 7, %362 ], [ 10, %351 ], [ 3, %468 ], [ 10, %971 ], [ 10, %958 ], [ 10, %981 ], [ 10, %1039 ], [ 10, %1026 ], [ 10, %1127 ]
  call fastcc void @smp_failure(ptr noundef %52, i8 noundef zeroext %1499) #11
  br label %1500

1500:                                             ; preds = %1498, %1495, %1151, %1045, %1025, %1005, %977, %957, %929, %926, %726, %718, %655, %631, %499, %442, %80
  call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #11
  br label %1517

1501:                                             ; preds = %79, %75, %64
  %1502 = load ptr, ptr %58, align 4
  %1503 = getelementptr inbounds %struct.hci_dev, ptr %1502, i32 0, i32 2
  %1504 = getelementptr inbounds %struct.hci_conn, ptr %53, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.13, ptr noundef %1503, i32 noundef %71, ptr noundef %1504) #11
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #11
  br label %1517

1505:                                             ; preds = %1494, %1487, %2
  %1506 = phi i32 [ -1, %1494 ], [ -1, %1487 ], [ -84, %2 ]
  %1507 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 84
  %1508 = load ptr, ptr %1507, align 4
  %1509 = icmp eq ptr %1508, null
  br i1 %1509, label %1513, label %1510

1510:                                             ; preds = %1505
  %1511 = getelementptr inbounds %struct.smp_chan, ptr %1508, i32 0, i32 1
  %1512 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %1511) #11
  br label %1513

1513:                                             ; preds = %1510, %1505
  %1514 = load ptr, ptr %0, align 4
  %1515 = load ptr, ptr %1514, align 4
  %1516 = tail call i32 @hci_disconnect(ptr noundef %1515, i8 noundef zeroext 5) #11
  br label %1517

1517:                                             ; preds = %1513, %1501, %1500
  %1518 = phi i32 [ %1506, %1513 ], [ 0, %1501 ], [ 0, %1500 ]
  ret i32 %1518
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @smp_teardown_cb(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 84
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call fastcc void @smp_chan_destroy(ptr noundef %3)
  br label %8

8:                                                ; preds = %7, %2
  %9 = getelementptr inbounds %struct.l2cap_conn, ptr %3, i32 0, i32 17
  store ptr null, ptr %9, align 4
  tail call void @l2cap_chan_put(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @smp_ready_cb(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.l2cap_conn, ptr %2, i32 0, i32 17
  store ptr %0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 14
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 47
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 4096
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call fastcc void @bredr_pairing(ptr noundef %0)
  br label %14

14:                                               ; preds = %13, %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @smp_resume_cb(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 84
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 14
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call fastcc void @bredr_pairing(ptr noundef %0)
  br label %20

10:                                               ; preds = %1
  %11 = icmp eq ptr %3, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 47
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 4096
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.smp_chan, ptr %3, i32 0, i32 1
  %19 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %18) #11
  tail call fastcc void @smp_distribute_keys(ptr noundef nonnull %3)
  br label %20

20:                                               ; preds = %17, %12, %10, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @smp_alloc_skb_cb(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = add i32 %1, 8
  %6 = add i32 %5, %2
  %7 = tail call ptr @__alloc_skb(i32 noundef %6, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 8
  store ptr %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 14
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr i8, ptr %14, i32 8
  store ptr %15, ptr %13, align 8
  %16 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 13, i32 0, i32 5
  store i32 7, ptr %16, align 8
  %17 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 24
  store ptr %0, ptr %17, align 8
  br label %18

18:                                               ; preds = %9, %4
  %19 = phi ptr [ %7, %9 ], [ inttoptr (i32 -12 to ptr), %4 ]
  ret ptr %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @build_bredr_pairing_cmd(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef writeonly %2) unnamed_addr #8 {
  %4 = load ptr, ptr %0, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 65
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 206
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 32
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i8 0, i8 5
  %13 = load volatile i32, ptr %8, align 4
  %14 = and i32 %13, 2097152
  %15 = icmp eq i32 %14, 0
  %16 = or i8 %12, 2
  %17 = select i1 %15, i8 %12, i8 %16
  %18 = load volatile i32, ptr %8, align 4
  %19 = and i32 %18, 262144
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i8 %12, i8 %16
  %22 = icmp eq ptr %2, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %3
  store i32 0, ptr %1, align 1
  %24 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %1, i32 0, i32 2
  store i8 32, ptr %24, align 1
  %25 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %1, i32 0, i32 4
  store i8 %21, ptr %25, align 1
  %26 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %1, i32 0, i32 5
  store i8 %17, ptr %26, align 1
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr inbounds %struct.hci_conn, ptr %27, i32 0, i32 27
  %29 = load i8, ptr %28, align 1
  %30 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %1, i32 0, i32 3
  store i8 %29, ptr %30, align 1
  br label %45

31:                                               ; preds = %3
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false)
  %32 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %2, i32 0, i32 2
  store i8 32, ptr %32, align 1
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr inbounds %struct.hci_conn, ptr %33, i32 0, i32 27
  %35 = load i8, ptr %34, align 1
  %36 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %2, i32 0, i32 3
  store i8 %35, ptr %36, align 1
  %37 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %1, i32 0, i32 4
  %38 = load i8, ptr %37, align 1
  %39 = and i8 %38, %17
  %40 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %2, i32 0, i32 4
  store i8 %39, ptr %40, align 1
  %41 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %1, i32 0, i32 5
  %42 = load i8, ptr %41, align 1
  %43 = and i8 %42, %21
  %44 = getelementptr inbounds %struct.smp_cmd_pairing, ptr %2, i32 0, i32 5
  store i8 %43, ptr %44, align 1
  br label %45

45:                                               ; preds = %31, %23
  %46 = phi i8 [ %17, %23 ], [ %39, %31 ]
  %47 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 12
  store i8 %46, ptr %47, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @smp_distribute_keys(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.kvec], align 4
  %5 = alloca %struct.msghdr, align 8
  %6 = alloca i8, align 1
  %7 = alloca [2 x %struct.kvec], align 4
  %8 = alloca %struct.msghdr, align 8
  %9 = alloca i8, align 1
  %10 = alloca [2 x %struct.kvec], align 4
  %11 = alloca %struct.msghdr, align 8
  %12 = alloca i8, align 1
  %13 = alloca [2 x %struct.kvec], align 4
  %14 = alloca %struct.msghdr, align 8
  %15 = alloca i8, align 1
  %16 = alloca [2 x %struct.kvec], align 4
  %17 = alloca %struct.msghdr, align 8
  %18 = alloca [4 x i8], align 4
  %19 = alloca [16 x i8], align 1
  %20 = alloca [4 x i8], align 4
  %21 = alloca [4 x i8], align 4
  %22 = alloca [16 x i8], align 1
  %23 = alloca [4 x i8], align 4
  %24 = alloca %struct.smp_cmd_encrypt_info, align 1
  %25 = alloca %struct.smp_cmd_initiator_ident, align 2
  %26 = alloca i16, align 2
  %27 = alloca i64, align 8
  %28 = alloca %struct.smp_cmd_ident_addr_info, align 1
  %29 = alloca %struct.smp_cmd_ident_info, align 1
  %30 = alloca %struct.smp_cmd_sign_info, align 1
  %31 = load ptr, ptr %0, align 4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.hci_conn, ptr %32, i32 0, i32 65
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.hci_conn, ptr %32, i32 0, i32 16
  %36 = load i8, ptr %35, align 1, !range !8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %62, label %38

38:                                               ; preds = %1
  %39 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 12
  %40 = load i8, ptr %39, align 1
  %41 = and i8 %40, 7
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %38
  %44 = zext i8 %40 to i32
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = and i32 %44, 2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = and i32 %44, 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %495, label %53

53:                                               ; preds = %50, %47, %43
  %54 = phi i32 [ 6, %43 ], [ 8, %47 ], [ 10, %50 ]
  %55 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 2
  tail call void @_set_bit(i32 noundef %54, ptr noundef %55) #11
  br label %495

56:                                               ; preds = %38
  %57 = getelementptr %struct.smp_chan, ptr %0, i32 0, i32 4, i32 5
  %58 = getelementptr %struct.smp_chan, ptr %0, i32 0, i32 3, i32 5
  %59 = load i8, ptr %58, align 1
  %60 = load i8, ptr %57, align 1
  %61 = and i8 %60, %59
  store i8 %61, ptr %57, align 1
  br label %68

62:                                               ; preds = %1
  %63 = getelementptr %struct.smp_chan, ptr %0, i32 0, i32 4, i32 6
  %64 = getelementptr %struct.smp_chan, ptr %0, i32 0, i32 3, i32 6
  %65 = load i8, ptr %64, align 1
  %66 = load i8, ptr %63, align 1
  %67 = and i8 %66, %65
  store i8 %67, ptr %63, align 1
  br label %68

68:                                               ; preds = %62, %56
  %69 = phi i8 [ %61, %56 ], [ %67, %62 ]
  %70 = phi ptr [ %57, %56 ], [ %63, %62 ]
  %71 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 22
  %72 = load volatile i32, ptr %71, align 4
  %73 = and i32 %72, 32
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %189, label %75

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.hci_conn, ptr %32, i32 0, i32 14
  %77 = load i8, ptr %76, align 1
  %78 = icmp eq i8 %77, -128
  br i1 %78, label %79, label %119

79:                                               ; preds = %75
  %80 = and i8 %69, 8
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %186, label %82

82:                                               ; preds = %79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #11
  store i32 1818583666, ptr %21, align 4
  %83 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %84 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %83, i32 noundef 3520, i32 noundef 16) #12
  %85 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 21
  store ptr %84, ptr %85, align 4
  %86 = icmp eq ptr %84, null
  br i1 %86, label %117, label %87

87:                                               ; preds = %82
  %88 = load volatile i32, ptr %71, align 4
  %89 = and i32 %88, 4096
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %22) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %22, ptr noundef nonnull align 1 dereferenceable(16) @__const.sc_generate_link_key.salt, i32 16, i1 false) #11
  %92 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 29
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 8
  %95 = call fastcc i32 @aes_cmac(ptr noundef %93, ptr noundef nonnull %22, ptr noundef %94, i32 noundef 16, ptr noundef nonnull %84) #11
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %107, label %97

97:                                               ; preds = %91
  %98 = load ptr, ptr %85, align 4
  tail call void @kfree_sensitive(ptr noundef %98) #11
  store ptr null, ptr %85, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %22) #11
  br label %117

99:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #11
  store i32 1953329201, ptr %23, align 4
  %100 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 29
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 8
  %103 = call fastcc i32 @aes_cmac(ptr noundef %101, ptr noundef %102, ptr noundef nonnull %23, i32 noundef 4, ptr noundef nonnull %84) #11
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %99
  %106 = load ptr, ptr %85, align 4
  tail call void @kfree_sensitive(ptr noundef %106) #11
  store ptr null, ptr %85, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #11
  br label %117

107:                                              ; preds = %91
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %22) #11
  br label %109

108:                                              ; preds = %99
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #11
  br label %109

109:                                              ; preds = %108, %107
  %110 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 29
  %111 = load ptr, ptr %110, align 4
  %112 = load ptr, ptr %85, align 4
  %113 = call fastcc i32 @aes_cmac(ptr noundef %111, ptr noundef %112, ptr noundef nonnull %21, i32 noundef 4, ptr noundef %112) #11
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %109
  %116 = load ptr, ptr %85, align 4
  tail call void @kfree_sensitive(ptr noundef %116) #11
  store ptr null, ptr %85, align 4
  br label %117

117:                                              ; preds = %115, %109, %105, %97, %82
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #11
  %118 = load i8, ptr %76, align 1
  br label %119

119:                                              ; preds = %117, %75
  %120 = phi i8 [ %77, %75 ], [ %118, %117 ]
  %121 = icmp eq i8 %120, 1
  br i1 %121, label %122, label %186

122:                                              ; preds = %119
  %123 = load i8, ptr %70, align 1
  %124 = and i8 %123, 1
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %186, label %126

126:                                              ; preds = %122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #11
  store i32 1651666021, ptr %18, align 4
  %127 = load ptr, ptr %0, align 4
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.hci_conn, ptr %128, i32 0, i32 65
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.hci_conn, ptr %128, i32 0, i32 2
  %132 = tail call ptr @hci_find_link_key(ptr noundef %130, ptr noundef %131) #11
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %126
  %135 = getelementptr inbounds %struct.hci_dev, ptr %130, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.14, ptr noundef %135) #11
  br label %185

136:                                              ; preds = %126
  %137 = getelementptr inbounds %struct.link_key, ptr %132, i32 0, i32 3
  %138 = load i8, ptr %137, align 2
  %139 = icmp eq i8 %138, 3
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  tail call void @_set_bit(i32 noundef 7, ptr noundef %71) #11
  br label %141

141:                                              ; preds = %140, %136
  %142 = load volatile i32, ptr %71, align 4
  %143 = and i32 %142, 4096
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %152, label %145

145:                                              ; preds = %141
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %19, ptr noundef nonnull align 1 dereferenceable(16) @__const.sc_generate_ltk.salt, i32 16, i1 false) #11
  %146 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 29
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr inbounds %struct.link_key, ptr %132, i32 0, i32 4
  %149 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 8
  %150 = call fastcc i32 @aes_cmac(ptr noundef %147, ptr noundef nonnull %19, ptr noundef %148, i32 noundef 16, ptr noundef %149) #11
  %151 = icmp eq i32 %150, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #11
  br i1 %151, label %159, label %185

152:                                              ; preds = %141
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #11
  store i32 1953329202, ptr %20, align 4
  %153 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 29
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr inbounds %struct.link_key, ptr %132, i32 0, i32 4
  %156 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 8
  %157 = call fastcc i32 @aes_cmac(ptr noundef %154, ptr noundef %155, ptr noundef nonnull %20, i32 noundef 4, ptr noundef %156) #11
  %158 = icmp eq i32 %157, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #11
  br i1 %158, label %159, label %185

159:                                              ; preds = %152, %145
  %160 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 29
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 8
  %163 = call fastcc i32 @aes_cmac(ptr noundef %161, ptr noundef %162, ptr noundef nonnull %18, i32 noundef 4, ptr noundef %162) #11
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %185

165:                                              ; preds = %159
  %166 = load ptr, ptr %0, align 4
  %167 = load ptr, ptr %166, align 4
  %168 = load volatile i32, ptr %71, align 4
  %169 = and i32 %168, 128
  %170 = icmp eq i32 %169, 0
  %171 = select i1 %170, i8 3, i8 4
  %172 = getelementptr inbounds %struct.hci_conn, ptr %167, i32 0, i32 25
  %173 = load i8, ptr %172, align 1
  %174 = icmp eq i8 %173, 4
  %175 = zext i1 %174 to i8
  %176 = getelementptr inbounds %struct.hci_conn, ptr %167, i32 0, i32 65
  %177 = load ptr, ptr %176, align 4
  %178 = getelementptr inbounds %struct.hci_conn, ptr %167, i32 0, i32 2
  %179 = getelementptr inbounds %struct.hci_conn, ptr %167, i32 0, i32 3
  %180 = load i8, ptr %179, align 2
  %181 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 11
  %182 = load i8, ptr %181, align 2
  %183 = tail call ptr @hci_add_ltk(ptr noundef %177, ptr noundef %178, i8 noundef zeroext %180, i8 noundef zeroext %171, i8 noundef zeroext %175, ptr noundef %162, i8 noundef zeroext %182, i16 noundef zeroext 0, i64 noundef 0) #11
  %184 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 18
  store ptr %183, ptr %184, align 4
  br label %185

185:                                              ; preds = %165, %159, %152, %145, %134
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #11
  br label %186

186:                                              ; preds = %185, %122, %119, %79
  %187 = load i8, ptr %70, align 1
  %188 = and i8 %187, -10
  store i8 %188, ptr %70, align 1
  br label %189

189:                                              ; preds = %186, %68
  %190 = phi i8 [ %188, %186 ], [ %69, %68 ]
  %191 = and i8 %190, 1
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %253, label %193

193:                                              ; preds = %189
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %24) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %24, i8 0, i32 16, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %25) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(10) %25, i8 0, i32 10, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #11
  store i16 0, ptr %26, align 2, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #11
  store i64 0, ptr %27, align 8, !annotation !9
  %194 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 11
  %195 = load i8, ptr %194, align 2
  %196 = zext i8 %195 to i32
  call void @get_random_bytes(ptr noundef nonnull %24, i32 noundef %196) #11
  %197 = load i8, ptr %194, align 2
  %198 = zext i8 %197 to i32
  %199 = getelementptr i8, ptr %24, i32 %198
  %200 = sub nsw i32 16, %198
  call void @llvm.memset.p0.i32(ptr align 1 %199, i8 0, i32 %200, i1 false)
  call void @get_random_bytes(ptr noundef nonnull %26, i32 noundef 2) #11
  call void @get_random_bytes(ptr noundef nonnull %27, i32 noundef 8) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15)
  store i8 6, ptr %15, align 1
  %201 = getelementptr inbounds %struct.l2cap_conn, ptr %31, i32 0, i32 17
  %202 = load ptr, ptr %201, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %17) #11
  %203 = icmp eq ptr %202, null
  br i1 %203, label %218, label %204

204:                                              ; preds = %193
  store ptr %15, ptr %16, align 4
  %205 = getelementptr inbounds %struct.kvec, ptr %16, i32 0, i32 1
  store i32 1, ptr %205, align 4
  %206 = getelementptr inbounds [2 x %struct.kvec], ptr %16, i32 0, i32 1
  store ptr %24, ptr %206, align 4
  %207 = getelementptr inbounds [2 x %struct.kvec], ptr %16, i32 0, i32 1, i32 1
  store i32 16, ptr %207, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %17, i8 0, i32 56, i1 false) #11
  %208 = getelementptr inbounds %struct.msghdr, ptr %17, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %208, i32 noundef 1, ptr noundef nonnull %16, i32 noundef 2, i32 noundef 17) #11
  %209 = call i32 @l2cap_chan_send(ptr noundef nonnull %202, ptr noundef nonnull %17, i32 noundef 17) #11
  %210 = getelementptr inbounds %struct.l2cap_chan, ptr %202, i32 0, i32 84
  %211 = load ptr, ptr %210, align 4
  %212 = icmp eq ptr %211, null
  br i1 %212, label %218, label %213

213:                                              ; preds = %204
  %214 = getelementptr inbounds %struct.smp_chan, ptr %211, i32 0, i32 1
  %215 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %214) #11
  %216 = load ptr, ptr @system_wq, align 4
  %217 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %216, ptr noundef %214, i32 noundef 3000) #11
  br label %218

218:                                              ; preds = %213, %204, %193
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15)
  %219 = getelementptr inbounds %struct.hci_conn, ptr %32, i32 0, i32 24
  %220 = load i8, ptr %219, align 4
  %221 = icmp eq i8 %220, 3
  %222 = zext i1 %221 to i8
  %223 = getelementptr inbounds %struct.hci_conn, ptr %32, i32 0, i32 2
  %224 = getelementptr inbounds %struct.hci_conn, ptr %32, i32 0, i32 3
  %225 = load i8, ptr %224, align 2
  %226 = load i8, ptr %194, align 2
  %227 = load i16, ptr %26, align 2
  %228 = load i64, ptr %27, align 8
  %229 = call ptr @hci_add_ltk(ptr noundef %34, ptr noundef %223, i8 noundef zeroext %225, i8 noundef zeroext 2, i8 noundef zeroext %222, ptr noundef nonnull %24, i8 noundef zeroext %226, i16 noundef zeroext %227, i64 noundef %228) #11
  %230 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 19
  store ptr %229, ptr %230, align 4
  %231 = load i16, ptr %26, align 2
  store i16 %231, ptr %25, align 2
  %232 = load i64, ptr %27, align 8
  %233 = getelementptr inbounds %struct.smp_cmd_initiator_ident, ptr %25, i32 0, i32 1
  store i64 %232, ptr %233, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12)
  store i8 7, ptr %12, align 1
  %234 = load ptr, ptr %201, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %14) #11
  %235 = icmp eq ptr %234, null
  br i1 %235, label %250, label %236

236:                                              ; preds = %218
  store ptr %12, ptr %13, align 4
  %237 = getelementptr inbounds %struct.kvec, ptr %13, i32 0, i32 1
  store i32 1, ptr %237, align 4
  %238 = getelementptr inbounds [2 x %struct.kvec], ptr %13, i32 0, i32 1
  store ptr %25, ptr %238, align 4
  %239 = getelementptr inbounds [2 x %struct.kvec], ptr %13, i32 0, i32 1, i32 1
  store i32 10, ptr %239, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %14, i8 0, i32 56, i1 false) #11
  %240 = getelementptr inbounds %struct.msghdr, ptr %14, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %240, i32 noundef 1, ptr noundef nonnull %13, i32 noundef 2, i32 noundef 11) #11
  %241 = call i32 @l2cap_chan_send(ptr noundef nonnull %234, ptr noundef nonnull %14, i32 noundef 11) #11
  %242 = getelementptr inbounds %struct.l2cap_chan, ptr %234, i32 0, i32 84
  %243 = load ptr, ptr %242, align 4
  %244 = icmp eq ptr %243, null
  br i1 %244, label %250, label %245

245:                                              ; preds = %236
  %246 = getelementptr inbounds %struct.smp_chan, ptr %243, i32 0, i32 1
  %247 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %246) #11
  %248 = load ptr, ptr @system_wq, align 4
  %249 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %248, ptr noundef %246, i32 noundef 3000) #11
  br label %250

250:                                              ; preds = %245, %236, %218
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12)
  %251 = load i8, ptr %70, align 1
  %252 = and i8 %251, -2
  store i8 %252, ptr %70, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #11
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %25) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %24) #11
  br label %253

253:                                              ; preds = %250, %189
  %254 = phi i8 [ %252, %250 ], [ %190, %189 ]
  %255 = and i8 %254, 2
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %300, label %257

257:                                              ; preds = %253
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %28) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %28, i8 0, i32 7, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %29) #11
  %258 = getelementptr inbounds %struct.hci_dev, ptr %34, i32 0, i32 220
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %29, ptr noundef align 8 dereferenceable(16) %258, i32 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9)
  store i8 8, ptr %9, align 1
  %259 = getelementptr inbounds %struct.l2cap_conn, ptr %31, i32 0, i32 17
  %260 = load ptr, ptr %259, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #11
  %261 = icmp eq ptr %260, null
  br i1 %261, label %276, label %262

262:                                              ; preds = %257
  store ptr %9, ptr %10, align 4
  %263 = getelementptr inbounds %struct.kvec, ptr %10, i32 0, i32 1
  store i32 1, ptr %263, align 4
  %264 = getelementptr inbounds [2 x %struct.kvec], ptr %10, i32 0, i32 1
  store ptr %29, ptr %264, align 4
  %265 = getelementptr inbounds [2 x %struct.kvec], ptr %10, i32 0, i32 1, i32 1
  store i32 16, ptr %265, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %11, i8 0, i32 56, i1 false) #11
  %266 = getelementptr inbounds %struct.msghdr, ptr %11, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %266, i32 noundef 1, ptr noundef nonnull %10, i32 noundef 2, i32 noundef 17) #11
  %267 = call i32 @l2cap_chan_send(ptr noundef nonnull %260, ptr noundef nonnull %11, i32 noundef 17) #11
  %268 = getelementptr inbounds %struct.l2cap_chan, ptr %260, i32 0, i32 84
  %269 = load ptr, ptr %268, align 4
  %270 = icmp eq ptr %269, null
  br i1 %270, label %276, label %271

271:                                              ; preds = %262
  %272 = getelementptr inbounds %struct.smp_chan, ptr %269, i32 0, i32 1
  %273 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %272) #11
  %274 = load ptr, ptr @system_wq, align 4
  %275 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %274, ptr noundef %272, i32 noundef 3000) #11
  br label %276

276:                                              ; preds = %271, %262, %257
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9)
  %277 = getelementptr inbounds %struct.smp_cmd_ident_addr_info, ptr %28, i32 0, i32 1
  %278 = getelementptr inbounds %struct.hci_conn, ptr %32, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %277, ptr noundef align 1 dereferenceable(6) %278, i32 6, i1 false) #11
  %279 = getelementptr inbounds %struct.hci_conn, ptr %32, i32 0, i32 5
  %280 = load i8, ptr %279, align 1
  store i8 %280, ptr %28, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 9, ptr %6, align 1
  %281 = load ptr, ptr %259, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #11
  %282 = icmp eq ptr %281, null
  br i1 %282, label %297, label %283

283:                                              ; preds = %276
  store ptr %6, ptr %7, align 4
  %284 = getelementptr inbounds %struct.kvec, ptr %7, i32 0, i32 1
  store i32 1, ptr %284, align 4
  %285 = getelementptr inbounds [2 x %struct.kvec], ptr %7, i32 0, i32 1
  store ptr %28, ptr %285, align 4
  %286 = getelementptr inbounds [2 x %struct.kvec], ptr %7, i32 0, i32 1, i32 1
  store i32 7, ptr %286, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %8, i8 0, i32 56, i1 false) #11
  %287 = getelementptr inbounds %struct.msghdr, ptr %8, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %287, i32 noundef 1, ptr noundef nonnull %7, i32 noundef 2, i32 noundef 8) #11
  %288 = call i32 @l2cap_chan_send(ptr noundef nonnull %281, ptr noundef nonnull %8, i32 noundef 8) #11
  %289 = getelementptr inbounds %struct.l2cap_chan, ptr %281, i32 0, i32 84
  %290 = load ptr, ptr %289, align 4
  %291 = icmp eq ptr %290, null
  br i1 %291, label %297, label %292

292:                                              ; preds = %283
  %293 = getelementptr inbounds %struct.smp_chan, ptr %290, i32 0, i32 1
  %294 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %293) #11
  %295 = load ptr, ptr @system_wq, align 4
  %296 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %295, ptr noundef %293, i32 noundef 3000) #11
  br label %297

297:                                              ; preds = %292, %283, %276
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  %298 = load i8, ptr %70, align 1
  %299 = and i8 %298, -3
  store i8 %299, ptr %70, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %29) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %28) #11
  br label %300

300:                                              ; preds = %297, %253
  %301 = phi i8 [ %299, %297 ], [ %254, %253 ]
  %302 = and i8 %301, 4
  %303 = icmp eq i8 %302, 0
  br i1 %303, label %337, label %304

304:                                              ; preds = %300
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %30) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %30, i8 0, i32 16, i1 false), !annotation !9
  call void @get_random_bytes(ptr noundef nonnull %30, i32 noundef 16) #11
  %305 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %306 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %305, i32 noundef 3520, i32 noundef 24) #12
  %307 = icmp eq ptr %306, null
  br i1 %307, label %315, label %308

308:                                              ; preds = %304
  %309 = getelementptr inbounds %struct.hci_conn, ptr %32, i32 0, i32 24
  %310 = load i8, ptr %309, align 4
  %311 = icmp ugt i8 %310, 2
  %312 = select i1 %311, i8 2, i8 0
  %313 = getelementptr inbounds %struct.smp_csrk, ptr %306, i32 0, i32 2
  store i8 %312, ptr %313, align 1
  %314 = getelementptr inbounds %struct.smp_csrk, ptr %306, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %314, ptr noundef nonnull align 1 dereferenceable(16) %30, i32 16, i1 false)
  br label %315

315:                                              ; preds = %308, %304
  %316 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 17
  store ptr %306, ptr %316, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 10, ptr %3, align 1
  %317 = getelementptr inbounds %struct.l2cap_conn, ptr %31, i32 0, i32 17
  %318 = load ptr, ptr %317, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #11
  %319 = icmp eq ptr %318, null
  br i1 %319, label %334, label %320

320:                                              ; preds = %315
  store ptr %3, ptr %4, align 4
  %321 = getelementptr inbounds %struct.kvec, ptr %4, i32 0, i32 1
  store i32 1, ptr %321, align 4
  %322 = getelementptr inbounds [2 x %struct.kvec], ptr %4, i32 0, i32 1
  store ptr %30, ptr %322, align 4
  %323 = getelementptr inbounds [2 x %struct.kvec], ptr %4, i32 0, i32 1, i32 1
  store i32 16, ptr %323, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i32 56, i1 false) #11
  %324 = getelementptr inbounds %struct.msghdr, ptr %5, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %324, i32 noundef 1, ptr noundef nonnull %4, i32 noundef 2, i32 noundef 17) #11
  %325 = call i32 @l2cap_chan_send(ptr noundef nonnull %318, ptr noundef nonnull %5, i32 noundef 17) #11
  %326 = getelementptr inbounds %struct.l2cap_chan, ptr %318, i32 0, i32 84
  %327 = load ptr, ptr %326, align 4
  %328 = icmp eq ptr %327, null
  br i1 %328, label %334, label %329

329:                                              ; preds = %320
  %330 = getelementptr inbounds %struct.smp_chan, ptr %327, i32 0, i32 1
  %331 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %330) #11
  %332 = load ptr, ptr @system_wq, align 4
  %333 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %332, ptr noundef %330, i32 noundef 3000) #11
  br label %334

334:                                              ; preds = %329, %320, %315
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %335 = load i8, ptr %70, align 1
  %336 = and i8 %335, -5
  store i8 %336, ptr %70, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %30) #11
  br label %337

337:                                              ; preds = %334, %300
  %338 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 12
  %339 = load i8, ptr %338, align 1
  %340 = and i8 %339, 7
  %341 = icmp eq i8 %340, 0
  br i1 %341, label %355, label %342

342:                                              ; preds = %337
  %343 = zext i8 %339 to i32
  %344 = and i32 %343, 1
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %352

346:                                              ; preds = %342
  %347 = and i32 %343, 2
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %349, label %352

349:                                              ; preds = %346
  %350 = and i32 %343, 4
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %495, label %352

352:                                              ; preds = %349, %346, %342
  %353 = phi i32 [ 6, %342 ], [ 8, %346 ], [ 10, %349 ]
  %354 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 2
  call void @_set_bit(i32 noundef %353, ptr noundef %354) #11
  br label %495

355:                                              ; preds = %337
  call void @_set_bit(i32 noundef 3, ptr noundef %71) #11
  %356 = getelementptr inbounds %struct.l2cap_conn, ptr %31, i32 0, i32 17
  %357 = load ptr, ptr %356, align 4
  %358 = getelementptr inbounds %struct.l2cap_chan, ptr %357, i32 0, i32 84
  %359 = load ptr, ptr %358, align 4
  %360 = load ptr, ptr %31, align 4
  %361 = getelementptr inbounds %struct.hci_conn, ptr %360, i32 0, i32 65
  %362 = load ptr, ptr %361, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #11
  %363 = getelementptr inbounds %struct.hci_conn, ptr %360, i32 0, i32 14
  %364 = load i8, ptr %363, align 1
  %365 = icmp eq i8 %364, 1
  br i1 %365, label %366, label %378

366:                                              ; preds = %355
  %367 = getelementptr inbounds %struct.hci_conn, ptr %360, i32 0, i32 22
  %368 = load i8, ptr %367, align 2
  %369 = icmp eq i8 %368, 3
  br i1 %369, label %370, label %371

370:                                              ; preds = %366
  store i8 0, ptr %2, align 1
  br label %385

371:                                              ; preds = %366
  %372 = getelementptr inbounds %struct.hci_conn, ptr %360, i32 0, i32 47
  %373 = load volatile i32, ptr %372, align 4
  %374 = lshr i32 %373, 11
  %375 = trunc i32 %374 to i8
  %376 = and i8 %375, 1
  %377 = xor i8 %376, 1
  store i8 %377, ptr %2, align 1
  br label %385

378:                                              ; preds = %355
  %379 = getelementptr %struct.smp_chan, ptr %359, i32 0, i32 3, i32 3
  %380 = load i8, ptr %379, align 1
  %381 = getelementptr %struct.smp_chan, ptr %359, i32 0, i32 4, i32 3
  %382 = load i8, ptr %381, align 1
  %383 = and i8 %380, 1
  %384 = and i8 %383, %382
  store i8 %384, ptr %2, align 1
  br label %385

385:                                              ; preds = %378, %371, %370
  %386 = phi i8 [ 0, %370 ], [ %377, %371 ], [ %384, %378 ]
  %387 = getelementptr inbounds %struct.smp_chan, ptr %359, i32 0, i32 20
  %388 = load ptr, ptr %387, align 4
  %389 = icmp eq ptr %388, null
  br i1 %389, label %406, label %390

390:                                              ; preds = %385
  %391 = icmp ne i8 %386, 0
  call void @mgmt_new_irk(ptr noundef %362, ptr noundef nonnull %388, i1 noundef zeroext %391) #11
  %392 = load i8, ptr %363, align 1
  %393 = icmp eq i8 %392, -128
  br i1 %393, label %394, label %406

394:                                              ; preds = %390
  %395 = getelementptr inbounds %struct.hci_conn, ptr %360, i32 0, i32 2
  %396 = load ptr, ptr %387, align 4
  %397 = getelementptr inbounds %struct.smp_irk, ptr %396, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %395, ptr noundef align 1 dereferenceable(6) %397, i32 6, i1 false) #11
  %398 = load ptr, ptr %387, align 4
  %399 = getelementptr inbounds %struct.smp_irk, ptr %398, i32 0, i32 4
  %400 = load i8, ptr %399, align 4
  %401 = getelementptr inbounds %struct.hci_conn, ptr %360, i32 0, i32 3
  store i8 %400, ptr %401, align 2
  %402 = getelementptr inbounds %struct.hci_dev, ptr %362, i32 0, i32 138
  %403 = load ptr, ptr %402, align 4
  %404 = getelementptr inbounds %struct.l2cap_conn, ptr %31, i32 0, i32 15
  %405 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %403, ptr noundef %404) #11
  br label %406

406:                                              ; preds = %394, %390, %385
  %407 = getelementptr inbounds %struct.smp_chan, ptr %359, i32 0, i32 16
  %408 = load ptr, ptr %407, align 4
  %409 = icmp eq ptr %408, null
  br i1 %409, label %418, label %410

410:                                              ; preds = %406
  %411 = getelementptr inbounds %struct.hci_conn, ptr %360, i32 0, i32 3
  %412 = load i8, ptr %411, align 2
  %413 = getelementptr inbounds %struct.smp_csrk, ptr %408, i32 0, i32 1
  store i8 %412, ptr %413, align 1
  %414 = load ptr, ptr %407, align 4
  %415 = getelementptr inbounds %struct.hci_conn, ptr %360, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %414, ptr noundef align 1 dereferenceable(6) %415, i32 6, i1 false) #11
  %416 = load ptr, ptr %407, align 4
  %417 = icmp ne i8 %386, 0
  call void @mgmt_new_csrk(ptr noundef %362, ptr noundef %416, i1 noundef zeroext %417) #11
  br label %418

418:                                              ; preds = %410, %406
  %419 = getelementptr inbounds %struct.smp_chan, ptr %359, i32 0, i32 17
  %420 = load ptr, ptr %419, align 4
  %421 = icmp eq ptr %420, null
  br i1 %421, label %430, label %422

422:                                              ; preds = %418
  %423 = getelementptr inbounds %struct.hci_conn, ptr %360, i32 0, i32 3
  %424 = load i8, ptr %423, align 2
  %425 = getelementptr inbounds %struct.smp_csrk, ptr %420, i32 0, i32 1
  store i8 %424, ptr %425, align 1
  %426 = load ptr, ptr %419, align 4
  %427 = getelementptr inbounds %struct.hci_conn, ptr %360, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %426, ptr noundef align 1 dereferenceable(6) %427, i32 6, i1 false) #11
  %428 = load ptr, ptr %419, align 4
  %429 = icmp ne i8 %386, 0
  call void @mgmt_new_csrk(ptr noundef %362, ptr noundef %428, i1 noundef zeroext %429) #11
  br label %430

430:                                              ; preds = %422, %418
  %431 = getelementptr inbounds %struct.smp_chan, ptr %359, i32 0, i32 18
  %432 = load ptr, ptr %431, align 4
  %433 = icmp eq ptr %432, null
  br i1 %433, label %443, label %434

434:                                              ; preds = %430
  %435 = getelementptr inbounds %struct.hci_conn, ptr %360, i32 0, i32 3
  %436 = load i8, ptr %435, align 2
  %437 = getelementptr inbounds %struct.smp_ltk, ptr %432, i32 0, i32 3
  store i8 %436, ptr %437, align 2
  %438 = load ptr, ptr %431, align 4
  %439 = getelementptr inbounds %struct.smp_ltk, ptr %438, i32 0, i32 2
  %440 = getelementptr inbounds %struct.hci_conn, ptr %360, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %439, ptr noundef align 1 dereferenceable(6) %440, i32 6, i1 false) #11
  %441 = load ptr, ptr %431, align 4
  %442 = icmp ne i8 %386, 0
  call void @mgmt_new_ltk(ptr noundef %362, ptr noundef %441, i1 noundef zeroext %442) #11
  br label %443

443:                                              ; preds = %434, %430
  %444 = getelementptr inbounds %struct.smp_chan, ptr %359, i32 0, i32 19
  %445 = load ptr, ptr %444, align 4
  %446 = icmp eq ptr %445, null
  br i1 %446, label %456, label %447

447:                                              ; preds = %443
  %448 = getelementptr inbounds %struct.hci_conn, ptr %360, i32 0, i32 3
  %449 = load i8, ptr %448, align 2
  %450 = getelementptr inbounds %struct.smp_ltk, ptr %445, i32 0, i32 3
  store i8 %449, ptr %450, align 2
  %451 = load ptr, ptr %444, align 4
  %452 = getelementptr inbounds %struct.smp_ltk, ptr %451, i32 0, i32 2
  %453 = getelementptr inbounds %struct.hci_conn, ptr %360, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %452, ptr noundef align 1 dereferenceable(6) %453, i32 6, i1 false) #11
  %454 = load ptr, ptr %444, align 4
  %455 = icmp ne i8 %386, 0
  call void @mgmt_new_ltk(ptr noundef %362, ptr noundef %454, i1 noundef zeroext %455) #11
  br label %456

456:                                              ; preds = %447, %443
  %457 = getelementptr inbounds %struct.smp_chan, ptr %359, i32 0, i32 21
  %458 = load ptr, ptr %457, align 4
  %459 = icmp eq ptr %458, null
  br i1 %459, label %494, label %460

460:                                              ; preds = %456
  %461 = getelementptr inbounds %struct.smp_chan, ptr %359, i32 0, i32 22
  %462 = load volatile i32, ptr %461, align 4
  %463 = and i32 %462, 128
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %465, label %470

465:                                              ; preds = %460
  %466 = getelementptr inbounds %struct.hci_conn, ptr %360, i32 0, i32 24
  %467 = load i8, ptr %466, align 4
  %468 = icmp eq i8 %467, 4
  %469 = select i1 %468, i8 8, i8 7
  br label %470

470:                                              ; preds = %465, %460
  %471 = phi i8 [ 3, %460 ], [ %469, %465 ]
  %472 = load ptr, ptr %359, align 4
  %473 = load ptr, ptr %472, align 4
  %474 = getelementptr inbounds %struct.hci_conn, ptr %360, i32 0, i32 2
  %475 = call ptr @hci_add_link_key(ptr noundef %362, ptr noundef %473, ptr noundef %474, ptr noundef nonnull %458, i8 noundef zeroext %471, i8 noundef zeroext 0, ptr noundef nonnull %2) #11
  %476 = icmp eq ptr %475, null
  br i1 %476, label %494, label %477

477:                                              ; preds = %470
  %478 = load i8, ptr %2, align 1, !range !8
  %479 = icmp ne i8 %478, 0
  call void @mgmt_new_link_key(ptr noundef %362, ptr noundef nonnull %475, i1 noundef zeroext %479) #11
  %480 = getelementptr inbounds %struct.hci_dev, ptr %362, i32 0, i32 206
  %481 = load volatile i32, ptr %480, align 4
  %482 = and i32 %481, 128
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %484, label %494

484:                                              ; preds = %477
  %485 = getelementptr inbounds %struct.link_key, ptr %475, i32 0, i32 3
  %486 = load i8, ptr %485, align 2
  %487 = icmp eq i8 %486, 3
  br i1 %487, label %488, label %494

488:                                              ; preds = %484
  %489 = getelementptr inbounds %struct.list_head, ptr %475, i32 0, i32 1
  %490 = load ptr, ptr %489, align 4
  %491 = load ptr, ptr %475, align 4
  %492 = getelementptr inbounds %struct.list_head, ptr %491, i32 0, i32 1
  store ptr %490, ptr %492, align 4
  store volatile ptr %491, ptr %490, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %489, align 4
  %493 = getelementptr inbounds %struct.link_key, ptr %475, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %493, ptr noundef nonnull inttoptr (i32 8 to ptr)) #11
  br label %494

494:                                              ; preds = %488, %484, %477, %470, %456
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  call fastcc void @smp_chan_destroy(ptr noundef %31)
  br label %495

495:                                              ; preds = %494, %352, %349, %53, %50
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tk_request(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.l2cap_conn, ptr %0, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.l2cap_chan, ptr %8, i32 0, i32 84
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4
  %11 = getelementptr inbounds %struct.smp_chan, ptr %10, i32 0, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(16) %11, i8 0, i32 16, i1 false)
  %12 = getelementptr inbounds %struct.smp_chan, ptr %10, i32 0, i32 22
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %12) #11
  %13 = and i8 %1, 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %4
  %16 = icmp ugt i8 %2, 4
  %17 = icmp ugt i8 %3, 4
  %18 = or i1 %16, %17
  br i1 %18, label %30, label %19

19:                                               ; preds = %15
  %20 = zext i8 %3 to i32
  %21 = zext i8 %2 to i32
  %22 = load volatile i32, ptr %12, align 4
  %23 = and i32 %22, 32
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, ptr @gen_method, ptr @sc_method
  %26 = getelementptr [5 x [5 x i8]], ptr %25, i32 0, i32 %20, i32 %21
  %27 = load i8, ptr %26, align 1
  %28 = getelementptr inbounds %struct.smp_chan, ptr %10, i32 0, i32 23
  store i8 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.smp_chan, ptr %10, i32 0, i32 23
  switch i8 %27, label %54 [
    i8 1, label %33
    i8 0, label %43
  ]

30:                                               ; preds = %15, %4
  %31 = getelementptr inbounds %struct.smp_chan, ptr %10, i32 0, i32 23
  store i8 1, ptr %31, align 4
  %32 = getelementptr inbounds %struct.smp_chan, ptr %10, i32 0, i32 23
  br label %33

33:                                               ; preds = %30, %19
  %34 = phi ptr [ %29, %19 ], [ %32, %30 ]
  %35 = load volatile i32, ptr %12, align 4
  %36 = and i32 %35, 16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 28
  %40 = load i8, ptr %39, align 8
  %41 = icmp eq i8 %40, 3
  br i1 %41, label %42, label %58

42:                                               ; preds = %38, %33
  store i8 0, ptr %34, align 4
  br label %43

43:                                               ; preds = %42, %19
  %44 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 65
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 2
  %47 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 14
  %48 = load i8, ptr %47, align 1
  %49 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 3
  %50 = load i8, ptr %49, align 2
  %51 = tail call i32 @mgmt_user_confirm_request(ptr noundef %45, ptr noundef %46, i8 noundef zeroext %48, i8 noundef zeroext %50, i32 noundef 0, i8 noundef zeroext 1) #11
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %111

53:                                               ; preds = %43
  tail call void @_set_bit(i32 noundef 8, ptr noundef %12) #11
  br label %111

54:                                               ; preds = %19
  %55 = load volatile i32, ptr %12, align 4
  %56 = and i32 %55, 32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %111

58:                                               ; preds = %38
  %59 = load volatile i32, ptr %12, align 4
  %60 = and i32 %59, 32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %111

62:                                               ; preds = %54
  tail call void @_set_bit(i32 noundef 2, ptr noundef %12) #11
  %63 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 25
  %64 = load i8, ptr %63, align 1
  %65 = icmp ult i8 %64, 3
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i8 3, ptr %63, align 1
  br label %67

67:                                               ; preds = %66, %62, %58
  %68 = phi ptr [ %29, %62 ], [ %29, %66 ], [ %34, %58 ]
  %69 = load i8, ptr %68, align 4
  switch i8 %69, label %80 [
    i8 -1, label %70
    i8 3, label %76
  ]

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 15
  %72 = load i8, ptr %71, align 8
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i8 3, ptr %68, align 4
  br label %76

75:                                               ; preds = %70
  store i8 2, ptr %68, align 4
  br label %82

76:                                               ; preds = %74, %67
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(16) %11, i8 0, i32 16, i1 false)
  call void @get_random_bytes(ptr noundef nonnull %5, i32 noundef 4) #11
  %77 = load i32, ptr %5, align 4
  %78 = urem i32 %77, 1000000
  store i32 %78, ptr %5, align 4
  store i32 %78, ptr %11, align 1
  call void @_set_bit(i32 noundef 0, ptr noundef %12) #11
  %79 = load i8, ptr %68, align 4
  br label %80

80:                                               ; preds = %76, %67
  %81 = phi i8 [ %79, %76 ], [ %69, %67 ]
  switch i8 %81, label %101 [
    i8 2, label %82
    i8 1, label %91
  ]

82:                                               ; preds = %80, %75
  %83 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 65
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 2
  %86 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 14
  %87 = load i8, ptr %86, align 1
  %88 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 3
  %89 = load i8, ptr %88, align 2
  %90 = call i32 @mgmt_user_passkey_request(ptr noundef %84, ptr noundef %85, i8 noundef zeroext %87, i8 noundef zeroext %89) #11
  br label %111

91:                                               ; preds = %80
  %92 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 65
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 2
  %95 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 14
  %96 = load i8, ptr %95, align 1
  %97 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 3
  %98 = load i8, ptr %97, align 2
  %99 = load i32, ptr %5, align 4
  %100 = call i32 @mgmt_user_confirm_request(ptr noundef %93, ptr noundef %94, i8 noundef zeroext %96, i8 noundef zeroext %98, i32 noundef %99, i8 noundef zeroext 1) #11
  br label %111

101:                                              ; preds = %80
  %102 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 65
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 2
  %105 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 14
  %106 = load i8, ptr %105, align 1
  %107 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 3
  %108 = load i8, ptr %107, align 2
  %109 = load i32, ptr %5, align 4
  %110 = call i32 @mgmt_user_passkey_notify(ptr noundef %103, ptr noundef %104, i8 noundef zeroext %106, i8 noundef zeroext %108, i32 noundef %109, i8 noundef zeroext 0) #11
  br label %111

111:                                              ; preds = %101, %91, %82, %58, %54, %53, %43
  %112 = phi i32 [ 0, %53 ], [ %51, %43 ], [ -22, %54 ], [ %90, %82 ], [ %100, %91 ], [ %110, %101 ], [ -22, %58 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %112
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_find_link_key(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_new_irk(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_new_csrk(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_new_ltk(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_add_link_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_new_link_key(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgmt_user_confirm_request(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgmt_user_passkey_request(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgmt_user_passkey_notify(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i8 @sc_send_public_key(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca [2 x %struct.kvec], align 4
  %4 = alloca %struct.msghdr, align 8
  %5 = load ptr, ptr %0, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 65
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 22
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 2048
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.hci_dev, ptr %8, i32 0, i32 168
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %72, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.l2cap_chan, ptr %15, i32 0, i32 84
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %72, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 25
  %23 = getelementptr inbounds %struct.smp_dev, ptr %19, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(64) %22, ptr noundef align 1 dereferenceable(64) %23, i32 64, i1 false)
  %24 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 10
  %25 = getelementptr inbounds %struct.smp_dev, ptr %19, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(16) %24, ptr noundef align 1 dereferenceable(16) %25, i32 16, i1 false)
  %26 = getelementptr inbounds %struct.smp_dev, ptr %19, i32 0, i32 3
  %27 = load i8, ptr %26, align 1, !range !8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %51, label %50

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.hci_dev, ptr %8, i32 0, i32 206
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 256
  %33 = icmp eq i32 %32, 0
  %34 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 30
  br i1 %33, label %35, label %37

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 25
  br label %43

37:                                               ; preds = %29
  %38 = load ptr, ptr %34, align 4
  %39 = tail call i32 @set_ecdh_privkey(ptr noundef %38, ptr noundef nonnull @debug_sk) #11
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %72

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 25
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(64) %42, ptr noundef nonnull align 1 dereferenceable(64) @debug_pk, i32 64, i1 false)
  br label %50

43:                                               ; preds = %47, %35
  %44 = load ptr, ptr %34, align 4
  %45 = tail call i32 @generate_ecdh_keys(ptr noundef %44, ptr noundef %36) #11
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %72

47:                                               ; preds = %43
  %48 = tail call i32 @__crypto_memneq(ptr noundef %36, ptr noundef nonnull @debug_pk, i32 noundef 64) #11
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %43, label %51

50:                                               ; preds = %41, %21
  tail call void @_set_bit(i32 noundef 7, ptr noundef %9) #11
  br label %51

51:                                               ; preds = %50, %47, %21
  %52 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  store i8 12, ptr %2, align 1
  %53 = getelementptr inbounds %struct.l2cap_conn, ptr %52, i32 0, i32 17
  %54 = load ptr, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #11
  %55 = icmp eq ptr %54, null
  br i1 %55, label %71, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.smp_chan, ptr %0, i32 0, i32 25
  store ptr %2, ptr %3, align 4
  %58 = getelementptr inbounds %struct.kvec, ptr %3, i32 0, i32 1
  store i32 1, ptr %58, align 4
  %59 = getelementptr inbounds [2 x %struct.kvec], ptr %3, i32 0, i32 1
  store ptr %57, ptr %59, align 4
  %60 = getelementptr inbounds [2 x %struct.kvec], ptr %3, i32 0, i32 1, i32 1
  store i32 64, ptr %60, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i32 56, i1 false) #11
  %61 = getelementptr inbounds %struct.msghdr, ptr %4, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %61, i32 noundef 1, ptr noundef nonnull %3, i32 noundef 2, i32 noundef 65) #11
  %62 = call i32 @l2cap_chan_send(ptr noundef nonnull %54, ptr noundef nonnull %4, i32 noundef 65) #11
  %63 = getelementptr inbounds %struct.l2cap_chan, ptr %54, i32 0, i32 84
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %56
  %67 = getelementptr inbounds %struct.smp_chan, ptr %64, i32 0, i32 1
  %68 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %67) #11
  %69 = load ptr, ptr @system_wq, align 4
  %70 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %69, ptr noundef %67, i32 noundef 3000) #11
  br label %71

71:                                               ; preds = %66, %56, %51
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  br label %72

72:                                               ; preds = %71, %43, %37, %17, %13
  %73 = phi i8 [ 0, %71 ], [ 8, %37 ], [ 8, %17 ], [ 8, %13 ], [ 8, %43 ]
  ret i8 %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hci_is_blocked_key(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_warn_ratelimited(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_add_irk(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @compute_ecdh_secret(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2cap_chan_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bredr_pairing(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.smp_cmd_pairing, align 1
  %3 = load ptr, ptr %0, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.hci_conn, ptr %4, i32 0, i32 65
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false), !annotation !9
  %7 = getelementptr inbounds %struct.hci_conn, ptr %4, i32 0, i32 47
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1048576
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %60, label %11

11:                                               ; preds = %1
  %12 = load volatile i32, ptr %7, align 4
  %13 = and i32 %12, 4096
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %60, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.hci_conn, ptr %4, i32 0, i32 15
  %17 = load i8, ptr %16, align 8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %60

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 206
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 65536
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %60, label %24

24:                                               ; preds = %19
  %25 = load volatile i32, ptr %7, align 4
  %26 = and i32 %25, 512
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = getelementptr %struct.hci_dev, ptr %6, i32 0, i32 206, i32 1
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 64
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %60, label %33

33:                                               ; preds = %28, %24
  %34 = load volatile i32, ptr %20, align 4
  %35 = and i32 %34, 8388608
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %60, label %37

37:                                               ; preds = %33
  %38 = getelementptr %struct.hci_conn, ptr %4, i32 0, i32 19, i32 1
  %39 = load i8, ptr %38, align 2
  %40 = and i8 %39, 2
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %60, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.l2cap_conn, ptr %3, i32 0, i32 4
  %44 = load i8, ptr %43, align 4
  %45 = icmp sgt i8 %44, -1
  br i1 %45, label %60, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 84
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = tail call fastcc ptr @smp_chan_create(ptr noundef %3)
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.25, ptr noundef %54) #11
  br label %60

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.smp_chan, ptr %51, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 5, ptr noundef %56) #11
  call fastcc void @build_bredr_pairing_cmd(ptr noundef nonnull %51, ptr noundef nonnull %2, ptr noundef null)
  %57 = getelementptr inbounds %struct.smp_chan, ptr %51, i32 0, i32 3
  store i8 1, ptr %57, align 4
  %58 = getelementptr %struct.smp_chan, ptr %51, i32 0, i32 3, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %58, ptr noundef nonnull align 1 dereferenceable(6) %2, i32 6, i1 false)
  call fastcc void @smp_send_cmd(ptr noundef %3, i8 noundef zeroext 1, i16 noundef zeroext 6, ptr noundef nonnull %2)
  %59 = getelementptr inbounds %struct.smp_chan, ptr %51, i32 0, i32 2
  call void @_set_bit(i32 noundef 2, ptr noundef %59) #11
  br label %60

60:                                               ; preds = %55, %53, %46, %42, %37, %33, %28, %19, %15, %11, %1
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }

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
!9 = !{!"auto-init"}
!10 = !{i64 931708, i64 2148421679, i64 2148421705, i64 2148421752, i64 2148421774, i64 2148421802, i64 2148421822}
!11 = !{i64 2148433094, i64 2148433120, i64 2148433149, i64 2148433183, i64 2148433214, i64 2148433237}
!12 = !{i64 2149253016}
!13 = !{i64 2149253233}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2149039706}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2156056262, i64 2156056746, i64 2156056299, i64 2156056355, i64 2156056389, i64 2156056413, i64 2156056454, i64 2156056475, i64 2156056503, i64 2156056537}
!18 = !{i64 2148533773}
!19 = !{i64 2148436135, i64 2148436167, i64 2148436196, i64 2148436230, i64 2148436261, i64 2148436284}
!20 = !{i64 2148533976}
