; ModuleID = '/llk/IR/net/bluetooth/hci_conn.c_pt.bc'
source_filename = "../net/bluetooth/hci_conn.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hci_get_route:\09\09\09\09\09"
module asm "\09.asciz \09\22hci_get_route\22\09\09\09\09\09"
module asm "__kstrtabns_hci_get_route:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hci_conn_security:\09\09\09\09\09"
module asm "\09.asciz \09\22hci_conn_security\22\09\09\09\09\09"
module asm "__kstrtabns_hci_conn_security:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hci_conn_check_secure:\09\09\09\09\09"
module asm "\09.asciz \09\22hci_conn_check_secure\22\09\09\09\09\09"
module asm "__kstrtabns_hci_conn_check_secure:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hci_conn_switch_role:\09\09\09\09\09"
module asm "\09.asciz \09\22hci_conn_switch_role\22\09\09\09\09\09"
module asm "__kstrtabns_hci_conn_switch_role:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sco_param = type { i16, i16, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.10 }
%union.anon.10 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hci_cp_read_clock_offset = type { i16 }
%struct.hci_conn = type { %struct.list_head, %struct.atomic_t, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, i8, i16, i16, i8, i8, i8, i8, i8, [3 x i8], [3 x [8 x i8]], i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, [31 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i16, i32, i8, i8, i8, i32, %struct.sk_buff_head, %struct.list_head, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bt_codec, ptr, ptr, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.sk_buff_head = type { %union.anon, i32, %struct.spinlock }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.bt_codec = type <{ i8, i16, i16, i8, i8 }>
%struct.hci_cp_setup_sync_conn = type <{ i16, i32, i32, i16, i16, i8, i16 }>
%struct.hci_cp_enhanced_setup_sync_conn = type <{ i16, i32, i32, %struct.hci_coding_format, %struct.hci_coding_format, i16, i16, i32, i32, %struct.hci_coding_format, %struct.hci_coding_format, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8 }>
%struct.hci_coding_format = type <{ i8, i16, i16 }>
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.hci_cp_le_conn_update = type { i16, i16, i16, i16, i16, i16, i16 }
%struct.hci_conn_params = type { %struct.list_head, %struct.list_head, %struct.bdaddr_t, i8, i16, i16, i16, i16, i32, ptr, i8, [1 x i32], i8 }
%struct.hci_cp_le_start_enc = type <{ i16, i64, i16, [16 x i8] }>
%struct.hci_cp_add_sco = type { i16, i16 }
%struct.hci_cb = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hci_cp_sniff_subrate = type { i16, i16, i16, i16 }
%struct.hci_cp_sniff_mode = type { i16, i16, i16, i16, i16 }
%struct.hci_cp_le_set_ext_adv_enable = type { i8, i8, [0 x i8] }
%struct.hci_chan = type { %struct.list_head, i16, ptr, %struct.sk_buff_head, i32, i8, i8 }
%struct.smp_irk = type { %struct.list_head, %struct.callback_head, %struct.bdaddr_t, %struct.bdaddr_t, i8, [16 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.hci_cp_create_conn = type <{ %struct.bdaddr_t, i16, i8, i8, i16, i8 }>
%struct.inquiry_entry = type { %struct.list_head, %struct.list_head, i32, i32, %struct.inquiry_data }
%struct.inquiry_data = type { %struct.bdaddr_t, i8, i8, i8, [3 x i8], i16, i8, i8 }
%struct.hci_cp_exit_sniff_mode = type { i16 }
%struct.hci_cp_set_conn_encrypt = type <{ i16, i8 }>
%struct.hci_cp_auth_requested = type { i16 }
%struct.hci_cp_switch_role = type { %struct.bdaddr_t, i8 }
%struct.hci_conn_list_req = type { i16, i16, [0 x %struct.hci_conn_info] }
%struct.hci_conn_info = type { i16, %struct.bdaddr_t, i8, i8, i16, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.hci_conn_info_req = type { %struct.bdaddr_t, i8, [0 x %struct.hci_conn_info] }
%struct.hci_auth_info_req = type { %struct.bdaddr_t, i8 }

@hci_dev_list_lock = external dso_local global %struct.rwlock_t, align 4
@hci_dev_list = external dso_local global %struct.list_head, align 4
@__kstrtab_hci_get_route = external dso_local constant [0 x i8], align 1
@__kstrtabns_hci_get_route = external dso_local constant [0 x i8], align 1
@__ksymtab_hci_get_route = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hci_get_route to i32), ptr @__kstrtab_hci_get_route, ptr @__kstrtabns_hci_get_route }, section "___ksymtab+hci_get_route", align 4
@.str = private unnamed_addr constant [45 x i8] c"%s: Invalid security: Missing AES-CCM usage\0A\00", align 1
@__kstrtab_hci_conn_security = external dso_local constant [0 x i8], align 1
@__kstrtabns_hci_conn_security = external dso_local constant [0 x i8], align 1
@__ksymtab_hci_conn_security = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hci_conn_security to i32), ptr @__kstrtab_hci_conn_security, ptr @__kstrtabns_hci_conn_security }, section "___ksymtab+hci_conn_security", align 4
@__kstrtab_hci_conn_check_secure = external dso_local constant [0 x i8], align 1
@__kstrtabns_hci_conn_check_secure = external dso_local constant [0 x i8], align 1
@__ksymtab_hci_conn_check_secure = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hci_conn_check_secure to i32), ptr @__kstrtab_hci_conn_check_secure, ptr @__kstrtabns_hci_conn_check_secure }, section "___ksymtab+hci_conn_check_secure", align 4
@__kstrtab_hci_conn_switch_role = external dso_local constant [0 x i8], align 1
@__kstrtabns_hci_conn_switch_role = external dso_local constant [0 x i8], align 1
@__ksymtab_hci_conn_switch_role = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hci_conn_switch_role to i32), ptr @__kstrtab_hci_conn_switch_role, ptr @__kstrtabns_hci_conn_switch_role }, section "___ksymtab+hci_conn_switch_role", align 4
@esco_param_msbc = internal unnamed_addr constant [2 x %struct.sco_param] [%struct.sco_param { i16 896, i16 13, i8 2 }, %struct.sco_param { i16 968, i16 8, i8 2 }], align 2
@esco_param_cvsd = internal unnamed_addr constant [5 x %struct.sco_param] [%struct.sco_param { i16 896, i16 10, i8 1 }, %struct.sco_param { i16 896, i16 7, i8 1 }, %struct.sco_param { i16 968, i16 7, i8 1 }, %struct.sco_param { i16 964, i16 -1, i8 1 }, %struct.sco_param { i16 961, i16 -1, i8 1 }], align 2
@sco_param_cvsd = internal unnamed_addr constant [2 x %struct.sco_param] [%struct.sco_param { i16 964, i16 -1, i8 -1 }, %struct.sco_param { i16 961, i16 -1, i8 -1 }], align 2
@hci_cb_list_lock = external dso_local global %struct.mutex, align 4
@hci_cb_list = external dso_local global %struct.list_head, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"net/bluetooth/hci_conn.c\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"%s: request failed to create LE connection: err %d\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_hci_conn_check_secure, ptr @__ksymtab_hci_conn_security, ptr @__ksymtab_hci_conn_switch_role, ptr @__ksymtab_hci_get_route], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_disconnect(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.hci_cp_read_clock_offset, align 2
  %4 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 14
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 1
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 15
  %9 = load i8, ptr %8, align 8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 12
  %13 = load i16, ptr %12, align 4
  switch i16 %13, label %20 [
    i16 1, label %14
    i16 7, label %14
  ]

14:                                               ; preds = %11, %11
  %15 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 65
  %16 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #11
  %17 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 11
  %18 = load i16, ptr %17, align 2
  store i16 %18, ptr %3, align 2
  %19 = call i32 @hci_send_cmd(ptr noundef %16, i16 noundef zeroext 1055, i32 noundef 2, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  br label %20

20:                                               ; preds = %14, %11, %7, %2
  %21 = call i32 @hci_abort_conn(ptr noundef %0, i8 noundef zeroext %1) #11
  ret i32 %21
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_send_cmd(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_abort_conn(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @hci_setup_sync(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.hci_cp_setup_sync_conn, align 2
  %4 = alloca %struct.hci_cp_enhanced_setup_sync_conn, align 2
  %5 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 65
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.hci_dev, ptr %6, i32 0, i32 27, i32 29
  %8 = load i8, ptr %7, align 1
  %9 = and i8 %8, 8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %304, label %11

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 59, ptr nonnull %4) #11
  %12 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 70
  %13 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 70, i32 3
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = tail call i32 @hci_req_configure_datapath(ptr noundef %6, ptr noundef %12) #11
  br label %18

18:                                               ; preds = %16, %11
  %19 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 12
  store i16 5, ptr %19, align 4
  %20 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 16
  store i8 1, ptr %20, align 1
  %21 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 17
  %22 = load i8, ptr %21, align 2
  %23 = add i8 %22, 1
  store i8 %23, ptr %21, align 2
  %24 = getelementptr inbounds i8, ptr %4, i32 10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(59) %24, i8 0, i32 49, i1 false) #11
  store i16 %1, ptr %4, align 2
  %25 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %4, i32 0, i32 1
  store i32 8000, ptr %25, align 2
  %26 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %4, i32 0, i32 2
  store i32 8000, ptr %26, align 2
  %27 = load i8, ptr %12, align 8
  switch i8 %27, label %302 [
    i8 5, label %28
    i8 3, label %91
    i8 2, label %154
  ]

28:                                               ; preds = %18
  %29 = icmp ugt i8 %23, 2
  br i1 %29, label %302, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 69
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr %struct.hci_conn, ptr %32, i32 0, i32 19, i32 0, i32 5
  %34 = load i8, ptr %33, align 1
  %35 = and i8 %34, 32
  %36 = icmp eq i8 %35, 0
  %37 = zext i8 %23 to i32
  %38 = add nsw i32 %37, -1
  br i1 %36, label %39, label %88

39:                                               ; preds = %30
  %40 = getelementptr %struct.sco_param, ptr @esco_param_msbc, i32 %38
  %41 = load i16, ptr %40, align 2
  %42 = and i16 %41, 64
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %88

44:                                               ; preds = %39
  %45 = add i8 %22, 2
  store i8 %45, ptr %21, align 2
  %46 = icmp ugt i8 %45, 2
  br i1 %46, label %302, label %47

47:                                               ; preds = %44
  %48 = load i8, ptr %33, align 1
  %49 = and i8 %48, 32
  %50 = icmp eq i8 %49, 0
  %51 = zext i8 %45 to i32
  %52 = add nsw i32 %51, -1
  br i1 %50, label %53, label %88

53:                                               ; preds = %47
  %54 = getelementptr %struct.sco_param, ptr @esco_param_msbc, i32 %52
  %55 = load i16, ptr %54, align 2
  %56 = and i16 %55, 64
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %58, label %88

58:                                               ; preds = %53
  %59 = add i8 %22, 3
  store i8 %59, ptr %21, align 2
  %60 = icmp ult i8 %22, -3
  br i1 %60, label %302, label %61

61:                                               ; preds = %58
  %62 = load i8, ptr %33, align 1
  %63 = and i8 %62, 32
  %64 = icmp eq i8 %63, 0
  %65 = zext i8 %59 to i32
  %66 = add nsw i32 %65, -1
  br i1 %64, label %67, label %88

67:                                               ; preds = %61
  %68 = getelementptr %struct.sco_param, ptr @esco_param_msbc, i32 %66
  %69 = load i16, ptr %68, align 2
  %70 = and i16 %69, 64
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %67
  %73 = add i8 %22, 4
  store i8 %73, ptr %21, align 2
  %74 = icmp ugt i8 %73, 2
  br i1 %74, label %302, label %75

75:                                               ; preds = %72
  %76 = load i8, ptr %33, align 1
  %77 = and i8 %76, 32
  %78 = icmp eq i8 %77, 0
  %79 = zext i8 %73 to i32
  %80 = add nsw i32 %79, -1
  br i1 %78, label %81, label %88

81:                                               ; preds = %75
  %82 = getelementptr %struct.sco_param, ptr @esco_param_msbc, i32 %80
  %83 = load i16, ptr %82, align 2
  %84 = and i16 %83, 64
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = add i8 %22, 5
  store i8 %87, ptr %21, align 2
  br label %302

88:                                               ; preds = %81, %75, %67, %61, %53, %47, %39, %30
  %89 = phi i32 [ %38, %39 ], [ %38, %30 ], [ %52, %47 ], [ %52, %53 ], [ %66, %61 ], [ %66, %67 ], [ %80, %75 ], [ %80, %81 ]
  %90 = getelementptr [2 x %struct.sco_param], ptr @esco_param_msbc, i32 0, i32 %89
  br label %269

91:                                               ; preds = %18
  %92 = icmp ugt i8 %23, 2
  br i1 %92, label %302, label %93

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 69
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr %struct.hci_conn, ptr %95, i32 0, i32 19, i32 0, i32 5
  %97 = load i8, ptr %96, align 1
  %98 = and i8 %97, 32
  %99 = icmp eq i8 %98, 0
  %100 = zext i8 %23 to i32
  %101 = add nsw i32 %100, -1
  br i1 %99, label %102, label %151

102:                                              ; preds = %93
  %103 = getelementptr %struct.sco_param, ptr @esco_param_msbc, i32 %101
  %104 = load i16, ptr %103, align 2
  %105 = and i16 %104, 64
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %107, label %151

107:                                              ; preds = %102
  %108 = add i8 %22, 2
  store i8 %108, ptr %21, align 2
  %109 = icmp ugt i8 %108, 2
  br i1 %109, label %302, label %110

110:                                              ; preds = %107
  %111 = load i8, ptr %96, align 1
  %112 = and i8 %111, 32
  %113 = icmp eq i8 %112, 0
  %114 = zext i8 %108 to i32
  %115 = add nsw i32 %114, -1
  br i1 %113, label %116, label %151

116:                                              ; preds = %110
  %117 = getelementptr %struct.sco_param, ptr @esco_param_msbc, i32 %115
  %118 = load i16, ptr %117, align 2
  %119 = and i16 %118, 64
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %121, label %151

121:                                              ; preds = %116
  %122 = add i8 %22, 3
  store i8 %122, ptr %21, align 2
  %123 = icmp ult i8 %22, -3
  br i1 %123, label %302, label %124

124:                                              ; preds = %121
  %125 = load i8, ptr %96, align 1
  %126 = and i8 %125, 32
  %127 = icmp eq i8 %126, 0
  %128 = zext i8 %122 to i32
  %129 = add nsw i32 %128, -1
  br i1 %127, label %130, label %151

130:                                              ; preds = %124
  %131 = getelementptr %struct.sco_param, ptr @esco_param_msbc, i32 %129
  %132 = load i16, ptr %131, align 2
  %133 = and i16 %132, 64
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %135, label %151

135:                                              ; preds = %130
  %136 = add i8 %22, 4
  store i8 %136, ptr %21, align 2
  %137 = icmp ugt i8 %136, 2
  br i1 %137, label %302, label %138

138:                                              ; preds = %135
  %139 = load i8, ptr %96, align 1
  %140 = and i8 %139, 32
  %141 = icmp eq i8 %140, 0
  %142 = zext i8 %136 to i32
  %143 = add nsw i32 %142, -1
  br i1 %141, label %144, label %151

144:                                              ; preds = %138
  %145 = getelementptr %struct.sco_param, ptr @esco_param_msbc, i32 %143
  %146 = load i16, ptr %145, align 2
  %147 = and i16 %146, 64
  %148 = icmp eq i16 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %144
  %150 = add i8 %22, 5
  store i8 %150, ptr %21, align 2
  br label %302

151:                                              ; preds = %144, %138, %130, %124, %116, %110, %102, %93
  %152 = phi i32 [ %101, %102 ], [ %101, %93 ], [ %115, %110 ], [ %115, %116 ], [ %129, %124 ], [ %129, %130 ], [ %143, %138 ], [ %143, %144 ]
  %153 = getelementptr [2 x %struct.sco_param], ptr @esco_param_msbc, i32 0, i32 %152
  br label %269

154:                                              ; preds = %18
  %155 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 69
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr %struct.hci_conn, ptr %156, i32 0, i32 19, i32 0, i32 3
  %158 = load i8, ptr %157, align 1
  %159 = icmp sgt i8 %158, -1
  br i1 %159, label %263, label %160

160:                                              ; preds = %154
  %161 = icmp ugt i8 %23, 5
  br i1 %161, label %302, label %162

162:                                              ; preds = %160
  %163 = getelementptr %struct.hci_conn, ptr %156, i32 0, i32 19, i32 0, i32 5
  %164 = load i8, ptr %163, align 1
  %165 = and i8 %164, 32
  %166 = icmp eq i8 %165, 0
  %167 = zext i8 %23 to i32
  %168 = add nsw i32 %167, -1
  br i1 %166, label %169, label %260

169:                                              ; preds = %162
  %170 = getelementptr %struct.sco_param, ptr @esco_param_cvsd, i32 %168
  %171 = load i16, ptr %170, align 2
  %172 = and i16 %171, 64
  %173 = icmp eq i16 %172, 0
  br i1 %173, label %174, label %260

174:                                              ; preds = %169
  %175 = add i8 %22, 2
  store i8 %175, ptr %21, align 2
  %176 = icmp ugt i8 %175, 5
  br i1 %176, label %302, label %177

177:                                              ; preds = %174
  %178 = load i8, ptr %163, align 1
  %179 = and i8 %178, 32
  %180 = icmp eq i8 %179, 0
  %181 = zext i8 %175 to i32
  %182 = add nsw i32 %181, -1
  br i1 %180, label %183, label %260

183:                                              ; preds = %177
  %184 = getelementptr %struct.sco_param, ptr @esco_param_cvsd, i32 %182
  %185 = load i16, ptr %184, align 2
  %186 = and i16 %185, 64
  %187 = icmp eq i16 %186, 0
  br i1 %187, label %188, label %260

188:                                              ; preds = %183
  %189 = add i8 %22, 3
  store i8 %189, ptr %21, align 2
  %190 = icmp ugt i8 %189, 5
  br i1 %190, label %302, label %191

191:                                              ; preds = %188
  %192 = load i8, ptr %163, align 1
  %193 = and i8 %192, 32
  %194 = icmp eq i8 %193, 0
  %195 = zext i8 %189 to i32
  %196 = add nsw i32 %195, -1
  br i1 %194, label %197, label %260

197:                                              ; preds = %191
  %198 = getelementptr %struct.sco_param, ptr @esco_param_cvsd, i32 %196
  %199 = load i16, ptr %198, align 2
  %200 = and i16 %199, 64
  %201 = icmp eq i16 %200, 0
  br i1 %201, label %202, label %260

202:                                              ; preds = %197
  %203 = add i8 %22, 4
  store i8 %203, ptr %21, align 2
  %204 = icmp ugt i8 %203, 5
  br i1 %204, label %302, label %205

205:                                              ; preds = %202
  %206 = load i8, ptr %163, align 1
  %207 = and i8 %206, 32
  %208 = icmp eq i8 %207, 0
  %209 = zext i8 %203 to i32
  %210 = add nsw i32 %209, -1
  br i1 %208, label %211, label %260

211:                                              ; preds = %205
  %212 = getelementptr %struct.sco_param, ptr @esco_param_cvsd, i32 %210
  %213 = load i16, ptr %212, align 2
  %214 = and i16 %213, 64
  %215 = icmp eq i16 %214, 0
  br i1 %215, label %216, label %260

216:                                              ; preds = %211
  %217 = add i8 %22, 5
  store i8 %217, ptr %21, align 2
  %218 = icmp ugt i8 %217, 5
  br i1 %218, label %302, label %219

219:                                              ; preds = %216
  %220 = load i8, ptr %163, align 1
  %221 = and i8 %220, 32
  %222 = icmp eq i8 %221, 0
  %223 = zext i8 %217 to i32
  %224 = add nsw i32 %223, -1
  br i1 %222, label %225, label %260

225:                                              ; preds = %219
  %226 = getelementptr %struct.sco_param, ptr @esco_param_cvsd, i32 %224
  %227 = load i16, ptr %226, align 2
  %228 = and i16 %227, 64
  %229 = icmp eq i16 %228, 0
  br i1 %229, label %230, label %260

230:                                              ; preds = %225
  %231 = add i8 %22, 6
  store i8 %231, ptr %21, align 2
  %232 = icmp ult i8 %22, -6
  br i1 %232, label %302, label %233

233:                                              ; preds = %230
  %234 = load i8, ptr %163, align 1
  %235 = and i8 %234, 32
  %236 = icmp eq i8 %235, 0
  %237 = zext i8 %231 to i32
  %238 = add nsw i32 %237, -1
  br i1 %236, label %239, label %260

239:                                              ; preds = %233
  %240 = getelementptr %struct.sco_param, ptr @esco_param_cvsd, i32 %238
  %241 = load i16, ptr %240, align 2
  %242 = and i16 %241, 64
  %243 = icmp eq i16 %242, 0
  br i1 %243, label %244, label %260

244:                                              ; preds = %239
  %245 = add i8 %22, 7
  store i8 %245, ptr %21, align 2
  %246 = icmp ugt i8 %245, 5
  br i1 %246, label %302, label %247

247:                                              ; preds = %244
  %248 = load i8, ptr %163, align 1
  %249 = and i8 %248, 32
  %250 = icmp eq i8 %249, 0
  %251 = zext i8 %245 to i32
  %252 = add nsw i32 %251, -1
  br i1 %250, label %253, label %260

253:                                              ; preds = %247
  %254 = getelementptr %struct.sco_param, ptr @esco_param_cvsd, i32 %252
  %255 = load i16, ptr %254, align 2
  %256 = and i16 %255, 64
  %257 = icmp eq i16 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %253
  %259 = add i8 %22, 8
  store i8 %259, ptr %21, align 2
  br label %302

260:                                              ; preds = %253, %247, %239, %233, %225, %219, %211, %205, %197, %191, %183, %177, %169, %162
  %261 = phi i32 [ %168, %169 ], [ %168, %162 ], [ %182, %177 ], [ %182, %183 ], [ %196, %191 ], [ %196, %197 ], [ %210, %205 ], [ %210, %211 ], [ %224, %219 ], [ %224, %225 ], [ %238, %233 ], [ %238, %239 ], [ %252, %247 ], [ %252, %253 ]
  %262 = getelementptr [5 x %struct.sco_param], ptr @esco_param_cvsd, i32 0, i32 %261
  br label %269

263:                                              ; preds = %154
  %264 = icmp ugt i8 %23, 2
  br i1 %264, label %302, label %265

265:                                              ; preds = %263
  %266 = zext i8 %23 to i32
  %267 = add nsw i32 %266, -1
  %268 = getelementptr [2 x %struct.sco_param], ptr @sco_param_cvsd, i32 0, i32 %267
  br label %269

269:                                              ; preds = %265, %260, %151, %88
  %270 = phi i32 [ 8000, %151 ], [ 32000, %88 ], [ 16000, %265 ], [ 16000, %260 ]
  %271 = phi i8 [ 3, %151 ], [ 4, %88 ], [ 4, %265 ], [ 4, %260 ]
  %272 = phi i8 [ 1, %151 ], [ 1, %88 ], [ 16, %265 ], [ 16, %260 ]
  %273 = phi ptr [ %153, %151 ], [ %90, %88 ], [ %268, %265 ], [ %262, %260 ]
  store i8 %27, ptr %24, align 2
  %274 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %4, i32 0, i32 4
  store i8 %27, ptr %274, align 1
  %275 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %4, i32 0, i32 5
  store i16 60, ptr %275, align 2
  %276 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %4, i32 0, i32 6
  store i16 60, ptr %276, align 2
  %277 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %4, i32 0, i32 7
  store i32 %270, ptr %277, align 2
  %278 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %4, i32 0, i32 8
  store i32 %270, ptr %278, align 2
  %279 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %4, i32 0, i32 9
  store i8 %271, ptr %279, align 2
  %280 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %4, i32 0, i32 10
  store i8 %271, ptr %280, align 1
  %281 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %4, i32 0, i32 11
  store i16 16, ptr %281, align 2
  %282 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %4, i32 0, i32 12
  store i16 16, ptr %282, align 2
  %283 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %4, i32 0, i32 13
  store i8 2, ptr %283, align 2
  %284 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %4, i32 0, i32 14
  store i8 2, ptr %284, align 1
  %285 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %4, i32 0, i32 15
  store i8 0, ptr %285, align 2
  %286 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %4, i32 0, i32 16
  store i8 0, ptr %286, align 1
  %287 = load i8, ptr %13, align 1
  %288 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %4, i32 0, i32 17
  store i8 %287, ptr %288, align 2
  %289 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %4, i32 0, i32 18
  store i8 %287, ptr %289, align 1
  %290 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %4, i32 0, i32 19
  store i8 %272, ptr %290, align 2
  %291 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %4, i32 0, i32 20
  store i8 %272, ptr %291, align 1
  %292 = getelementptr inbounds %struct.sco_param, ptr %273, i32 0, i32 2
  %293 = load i8, ptr %292, align 2
  %294 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %4, i32 0, i32 23
  store i8 %293, ptr %294, align 2
  %295 = load i16, ptr %273, align 2
  %296 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %4, i32 0, i32 22
  store i16 %295, ptr %296, align 2
  %297 = getelementptr inbounds %struct.sco_param, ptr %273, i32 0, i32 1
  %298 = load i16, ptr %297, align 2
  %299 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %4, i32 0, i32 21
  store i16 %298, ptr %299, align 2
  %300 = call i32 @hci_send_cmd(ptr noundef %6, i16 noundef zeroext 1085, i32 noundef 59, ptr noundef nonnull %4) #11
  %301 = icmp sgt i32 %300, -1
  br label %302

302:                                              ; preds = %269, %263, %258, %244, %230, %216, %202, %188, %174, %160, %149, %135, %121, %107, %91, %86, %72, %58, %44, %28, %18
  %303 = phi i1 [ false, %263 ], [ false, %18 ], [ %301, %269 ], [ false, %28 ], [ false, %91 ], [ false, %160 ], [ false, %86 ], [ false, %72 ], [ false, %58 ], [ false, %44 ], [ false, %149 ], [ false, %135 ], [ false, %121 ], [ false, %107 ], [ false, %258 ], [ false, %244 ], [ false, %230 ], [ false, %216 ], [ false, %202 ], [ false, %188 ], [ false, %174 ]
  call void @llvm.lifetime.end.p0(i64 59, ptr nonnull %4) #11
  br label %509

304:                                              ; preds = %2
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %3) #11
  %305 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 12
  store i16 5, ptr %305, align 4
  %306 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 16
  store i8 1, ptr %306, align 1
  %307 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 17
  %308 = load i8, ptr %307, align 2
  %309 = add i8 %308, 1
  store i8 %309, ptr %307, align 2
  store i16 %1, ptr %3, align 2
  %310 = getelementptr inbounds %struct.hci_cp_setup_sync_conn, ptr %3, i32 0, i32 1
  store i32 8000, ptr %310, align 2
  %311 = getelementptr inbounds %struct.hci_cp_setup_sync_conn, ptr %3, i32 0, i32 2
  store i32 8000, ptr %311, align 2
  %312 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 33
  %313 = load i16, ptr %312, align 2
  %314 = getelementptr inbounds %struct.hci_cp_setup_sync_conn, ptr %3, i32 0, i32 4
  store i16 %313, ptr %314, align 2
  %315 = and i16 %313, 3
  %316 = zext i16 %315 to i32
  switch i32 %316, label %507 [
    i32 3, label %317
    i32 0, label %380
  ]

317:                                              ; preds = %304
  %318 = icmp ugt i8 %309, 2
  br i1 %318, label %507, label %319

319:                                              ; preds = %317
  %320 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 69
  %321 = load ptr, ptr %320, align 4
  %322 = getelementptr %struct.hci_conn, ptr %321, i32 0, i32 19, i32 0, i32 5
  %323 = load i8, ptr %322, align 1
  %324 = and i8 %323, 32
  %325 = icmp eq i8 %324, 0
  %326 = zext i8 %309 to i32
  %327 = add nsw i32 %326, -1
  br i1 %325, label %328, label %377

328:                                              ; preds = %319
  %329 = getelementptr %struct.sco_param, ptr @esco_param_msbc, i32 %327
  %330 = load i16, ptr %329, align 2
  %331 = and i16 %330, 64
  %332 = icmp eq i16 %331, 0
  br i1 %332, label %333, label %377

333:                                              ; preds = %328
  %334 = add i8 %308, 2
  store i8 %334, ptr %307, align 2
  %335 = icmp ugt i8 %334, 2
  br i1 %335, label %507, label %336

336:                                              ; preds = %333
  %337 = load i8, ptr %322, align 1
  %338 = and i8 %337, 32
  %339 = icmp eq i8 %338, 0
  %340 = zext i8 %334 to i32
  %341 = add nsw i32 %340, -1
  br i1 %339, label %342, label %377

342:                                              ; preds = %336
  %343 = getelementptr %struct.sco_param, ptr @esco_param_msbc, i32 %341
  %344 = load i16, ptr %343, align 2
  %345 = and i16 %344, 64
  %346 = icmp eq i16 %345, 0
  br i1 %346, label %347, label %377

347:                                              ; preds = %342
  %348 = add i8 %308, 3
  store i8 %348, ptr %307, align 2
  %349 = icmp ult i8 %308, -3
  br i1 %349, label %507, label %350

350:                                              ; preds = %347
  %351 = load i8, ptr %322, align 1
  %352 = and i8 %351, 32
  %353 = icmp eq i8 %352, 0
  %354 = zext i8 %348 to i32
  %355 = add nsw i32 %354, -1
  br i1 %353, label %356, label %377

356:                                              ; preds = %350
  %357 = getelementptr %struct.sco_param, ptr @esco_param_msbc, i32 %355
  %358 = load i16, ptr %357, align 2
  %359 = and i16 %358, 64
  %360 = icmp eq i16 %359, 0
  br i1 %360, label %361, label %377

361:                                              ; preds = %356
  %362 = add i8 %308, 4
  store i8 %362, ptr %307, align 2
  %363 = icmp ugt i8 %362, 2
  br i1 %363, label %507, label %364

364:                                              ; preds = %361
  %365 = load i8, ptr %322, align 1
  %366 = and i8 %365, 32
  %367 = icmp eq i8 %366, 0
  %368 = zext i8 %362 to i32
  %369 = add nsw i32 %368, -1
  br i1 %367, label %370, label %377

370:                                              ; preds = %364
  %371 = getelementptr %struct.sco_param, ptr @esco_param_msbc, i32 %369
  %372 = load i16, ptr %371, align 2
  %373 = and i16 %372, 64
  %374 = icmp eq i16 %373, 0
  br i1 %374, label %375, label %377

375:                                              ; preds = %370
  %376 = add i8 %308, 5
  store i8 %376, ptr %307, align 2
  br label %507

377:                                              ; preds = %370, %364, %356, %350, %342, %336, %328, %319
  %378 = phi i32 [ %327, %328 ], [ %327, %319 ], [ %341, %336 ], [ %341, %342 ], [ %355, %350 ], [ %355, %356 ], [ %369, %364 ], [ %369, %370 ]
  %379 = getelementptr [2 x %struct.sco_param], ptr @esco_param_msbc, i32 0, i32 %378
  br label %495

380:                                              ; preds = %304
  %381 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 69
  %382 = load ptr, ptr %381, align 4
  %383 = getelementptr %struct.hci_conn, ptr %382, i32 0, i32 19, i32 0, i32 3
  %384 = load i8, ptr %383, align 1
  %385 = icmp sgt i8 %384, -1
  br i1 %385, label %489, label %386

386:                                              ; preds = %380
  %387 = icmp ugt i8 %309, 5
  br i1 %387, label %507, label %388

388:                                              ; preds = %386
  %389 = getelementptr %struct.hci_conn, ptr %382, i32 0, i32 19, i32 0, i32 5
  %390 = load i8, ptr %389, align 1
  %391 = and i8 %390, 32
  %392 = icmp eq i8 %391, 0
  %393 = zext i8 %309 to i32
  %394 = add nsw i32 %393, -1
  br i1 %392, label %395, label %486

395:                                              ; preds = %388
  %396 = getelementptr %struct.sco_param, ptr @esco_param_cvsd, i32 %394
  %397 = load i16, ptr %396, align 2
  %398 = and i16 %397, 64
  %399 = icmp eq i16 %398, 0
  br i1 %399, label %400, label %486

400:                                              ; preds = %395
  %401 = add i8 %308, 2
  store i8 %401, ptr %307, align 2
  %402 = icmp ugt i8 %401, 5
  br i1 %402, label %507, label %403

403:                                              ; preds = %400
  %404 = load i8, ptr %389, align 1
  %405 = and i8 %404, 32
  %406 = icmp eq i8 %405, 0
  %407 = zext i8 %401 to i32
  %408 = add nsw i32 %407, -1
  br i1 %406, label %409, label %486

409:                                              ; preds = %403
  %410 = getelementptr %struct.sco_param, ptr @esco_param_cvsd, i32 %408
  %411 = load i16, ptr %410, align 2
  %412 = and i16 %411, 64
  %413 = icmp eq i16 %412, 0
  br i1 %413, label %414, label %486

414:                                              ; preds = %409
  %415 = add i8 %308, 3
  store i8 %415, ptr %307, align 2
  %416 = icmp ugt i8 %415, 5
  br i1 %416, label %507, label %417

417:                                              ; preds = %414
  %418 = load i8, ptr %389, align 1
  %419 = and i8 %418, 32
  %420 = icmp eq i8 %419, 0
  %421 = zext i8 %415 to i32
  %422 = add nsw i32 %421, -1
  br i1 %420, label %423, label %486

423:                                              ; preds = %417
  %424 = getelementptr %struct.sco_param, ptr @esco_param_cvsd, i32 %422
  %425 = load i16, ptr %424, align 2
  %426 = and i16 %425, 64
  %427 = icmp eq i16 %426, 0
  br i1 %427, label %428, label %486

428:                                              ; preds = %423
  %429 = add i8 %308, 4
  store i8 %429, ptr %307, align 2
  %430 = icmp ugt i8 %429, 5
  br i1 %430, label %507, label %431

431:                                              ; preds = %428
  %432 = load i8, ptr %389, align 1
  %433 = and i8 %432, 32
  %434 = icmp eq i8 %433, 0
  %435 = zext i8 %429 to i32
  %436 = add nsw i32 %435, -1
  br i1 %434, label %437, label %486

437:                                              ; preds = %431
  %438 = getelementptr %struct.sco_param, ptr @esco_param_cvsd, i32 %436
  %439 = load i16, ptr %438, align 2
  %440 = and i16 %439, 64
  %441 = icmp eq i16 %440, 0
  br i1 %441, label %442, label %486

442:                                              ; preds = %437
  %443 = add i8 %308, 5
  store i8 %443, ptr %307, align 2
  %444 = icmp ugt i8 %443, 5
  br i1 %444, label %507, label %445

445:                                              ; preds = %442
  %446 = load i8, ptr %389, align 1
  %447 = and i8 %446, 32
  %448 = icmp eq i8 %447, 0
  %449 = zext i8 %443 to i32
  %450 = add nsw i32 %449, -1
  br i1 %448, label %451, label %486

451:                                              ; preds = %445
  %452 = getelementptr %struct.sco_param, ptr @esco_param_cvsd, i32 %450
  %453 = load i16, ptr %452, align 2
  %454 = and i16 %453, 64
  %455 = icmp eq i16 %454, 0
  br i1 %455, label %456, label %486

456:                                              ; preds = %451
  %457 = add i8 %308, 6
  store i8 %457, ptr %307, align 2
  %458 = icmp ult i8 %308, -6
  br i1 %458, label %507, label %459

459:                                              ; preds = %456
  %460 = load i8, ptr %389, align 1
  %461 = and i8 %460, 32
  %462 = icmp eq i8 %461, 0
  %463 = zext i8 %457 to i32
  %464 = add nsw i32 %463, -1
  br i1 %462, label %465, label %486

465:                                              ; preds = %459
  %466 = getelementptr %struct.sco_param, ptr @esco_param_cvsd, i32 %464
  %467 = load i16, ptr %466, align 2
  %468 = and i16 %467, 64
  %469 = icmp eq i16 %468, 0
  br i1 %469, label %470, label %486

470:                                              ; preds = %465
  %471 = add i8 %308, 7
  store i8 %471, ptr %307, align 2
  %472 = icmp ugt i8 %471, 5
  br i1 %472, label %507, label %473

473:                                              ; preds = %470
  %474 = load i8, ptr %389, align 1
  %475 = and i8 %474, 32
  %476 = icmp eq i8 %475, 0
  %477 = zext i8 %471 to i32
  %478 = add nsw i32 %477, -1
  br i1 %476, label %479, label %486

479:                                              ; preds = %473
  %480 = getelementptr %struct.sco_param, ptr @esco_param_cvsd, i32 %478
  %481 = load i16, ptr %480, align 2
  %482 = and i16 %481, 64
  %483 = icmp eq i16 %482, 0
  br i1 %483, label %484, label %486

484:                                              ; preds = %479
  %485 = add i8 %308, 8
  store i8 %485, ptr %307, align 2
  br label %507

486:                                              ; preds = %479, %473, %465, %459, %451, %445, %437, %431, %423, %417, %409, %403, %395, %388
  %487 = phi i32 [ %394, %395 ], [ %394, %388 ], [ %408, %403 ], [ %408, %409 ], [ %422, %417 ], [ %422, %423 ], [ %436, %431 ], [ %436, %437 ], [ %450, %445 ], [ %450, %451 ], [ %464, %459 ], [ %464, %465 ], [ %478, %473 ], [ %478, %479 ]
  %488 = getelementptr [5 x %struct.sco_param], ptr @esco_param_cvsd, i32 0, i32 %487
  br label %495

489:                                              ; preds = %380
  %490 = icmp ugt i8 %309, 2
  br i1 %490, label %507, label %491

491:                                              ; preds = %489
  %492 = zext i8 %309 to i32
  %493 = add nsw i32 %492, -1
  %494 = getelementptr [2 x %struct.sco_param], ptr @sco_param_cvsd, i32 0, i32 %493
  br label %495

495:                                              ; preds = %491, %486, %377
  %496 = phi ptr [ %488, %486 ], [ %494, %491 ], [ %379, %377 ]
  %497 = getelementptr inbounds %struct.sco_param, ptr %496, i32 0, i32 2
  %498 = load i8, ptr %497, align 2
  %499 = getelementptr inbounds %struct.hci_cp_setup_sync_conn, ptr %3, i32 0, i32 5
  store i8 %498, ptr %499, align 2
  %500 = load i16, ptr %496, align 2
  %501 = getelementptr inbounds %struct.hci_cp_setup_sync_conn, ptr %3, i32 0, i32 6
  store i16 %500, ptr %501, align 1
  %502 = getelementptr inbounds %struct.sco_param, ptr %496, i32 0, i32 1
  %503 = load i16, ptr %502, align 2
  %504 = getelementptr inbounds %struct.hci_cp_setup_sync_conn, ptr %3, i32 0, i32 3
  store i16 %503, ptr %504, align 2
  %505 = call i32 @hci_send_cmd(ptr noundef %6, i16 noundef zeroext 1064, i32 noundef 17, ptr noundef nonnull %3) #11
  %506 = icmp sgt i32 %505, -1
  br label %507

507:                                              ; preds = %495, %489, %484, %470, %456, %442, %428, %414, %400, %386, %375, %361, %347, %333, %317, %304
  %508 = phi i1 [ false, %489 ], [ false, %304 ], [ %506, %495 ], [ false, %317 ], [ false, %386 ], [ false, %375 ], [ false, %361 ], [ false, %347 ], [ false, %333 ], [ false, %484 ], [ false, %470 ], [ false, %456 ], [ false, %442 ], [ false, %428 ], [ false, %414 ], [ false, %400 ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %3) #11
  br label %509

509:                                              ; preds = %507, %302
  %510 = phi i1 [ %303, %302 ], [ %508, %507 ]
  ret i1 %510
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @hci_le_conn_update(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %struct.hci_cp_le_conn_update, align 2
  %7 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 65
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %6) #11
  %9 = getelementptr inbounds %struct.hci_dev, ptr %8, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %9) #11
  %10 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 2
  %11 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 3
  %12 = load i8, ptr %11, align 2
  %13 = tail call ptr @hci_conn_params_lookup(ptr noundef %8, ptr noundef %10, i8 noundef zeroext %12) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.hci_conn_params, ptr %13, i32 0, i32 4
  store i16 %1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.hci_conn_params, ptr %13, i32 0, i32 5
  store i16 %2, ptr %17, align 2
  %18 = getelementptr inbounds %struct.hci_conn_params, ptr %13, i32 0, i32 6
  store i16 %3, ptr %18, align 4
  %19 = getelementptr inbounds %struct.hci_conn_params, ptr %13, i32 0, i32 7
  store i16 %4, ptr %19, align 2
  br label %20

20:                                               ; preds = %15, %5
  tail call void @mutex_unlock(ptr noundef %9) #11
  %21 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 11
  %22 = load i16, ptr %21, align 2
  store i16 %22, ptr %6, align 2
  %23 = getelementptr inbounds %struct.hci_cp_le_conn_update, ptr %6, i32 0, i32 1
  store i16 %1, ptr %23, align 2
  %24 = getelementptr inbounds %struct.hci_cp_le_conn_update, ptr %6, i32 0, i32 2
  store i16 %2, ptr %24, align 2
  %25 = getelementptr inbounds %struct.hci_cp_le_conn_update, ptr %6, i32 0, i32 3
  store i16 %3, ptr %25, align 2
  %26 = getelementptr inbounds %struct.hci_cp_le_conn_update, ptr %6, i32 0, i32 4
  store i16 %4, ptr %26, align 2
  %27 = getelementptr inbounds %struct.hci_cp_le_conn_update, ptr %6, i32 0, i32 5
  store i16 0, ptr %27, align 2
  %28 = getelementptr inbounds %struct.hci_cp_le_conn_update, ptr %6, i32 0, i32 6
  store i16 0, ptr %28, align 2
  %29 = call i32 @hci_send_cmd(ptr noundef %8, i16 noundef zeroext 8211, i32 noundef 14, ptr noundef nonnull %6) #11
  %30 = xor i1 %14, true
  %31 = zext i1 %30 to i8
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %6) #11
  ret i8 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_conn_params_lookup(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_le_start_enc(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i64 noundef %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %struct.hci_cp_le_start_enc, align 2
  %7 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 65
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #11
  %9 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 11
  %10 = getelementptr inbounds i8, ptr %6, i32 12
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %11 = load i16, ptr %9, align 2
  store i16 %11, ptr %6, align 2
  %12 = getelementptr inbounds %struct.hci_cp_le_start_enc, ptr %6, i32 0, i32 1
  store i64 %2, ptr %12, align 2
  %13 = getelementptr inbounds %struct.hci_cp_le_start_enc, ptr %6, i32 0, i32 2
  store i16 %1, ptr %13, align 2
  %14 = getelementptr inbounds %struct.hci_cp_le_start_enc, ptr %6, i32 0, i32 3
  %15 = zext i8 %4 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 2 %14, ptr align 1 %3, i32 %15, i1 false)
  %16 = call i32 @hci_send_cmd(ptr noundef %8, i16 noundef zeroext 8217, i32 noundef 28, ptr noundef nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #11
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_sco_setup(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.hci_cp_add_sco, align 4
  %4 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 69
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %50, label %7

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 65
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.hci_dev, ptr %11, i32 0, i32 21, i32 0, i32 3
  %13 = load i8, ptr %12, align 1
  %14 = icmp sgt i8 %13, -1
  %15 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 11
  %16 = load i16, ptr %15, align 2
  br i1 %14, label %19, label %17

17:                                               ; preds = %9
  %18 = tail call zeroext i1 @hci_setup_sync(ptr noundef nonnull %5, i16 noundef zeroext %16)
  br label %50

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 65
  %21 = load ptr, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %22 = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 12
  store i16 5, ptr %22, align 4
  %23 = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 16
  store i8 1, ptr %23, align 1
  %24 = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 17
  %25 = load i8, ptr %24, align 2
  %26 = add i8 %25, 1
  store i8 %26, ptr %24, align 2
  store i16 %16, ptr %3, align 4
  %27 = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 20
  %28 = load i16, ptr %27, align 2
  %29 = getelementptr inbounds %struct.hci_cp_add_sco, ptr %3, i32 0, i32 1
  store i16 %28, ptr %29, align 2
  %30 = call i32 @hci_send_cmd(ptr noundef %21, i16 noundef zeroext 1031, i32 noundef 4, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  br label %50

31:                                               ; preds = %7
  tail call void @mutex_lock(ptr noundef nonnull @hci_cb_list_lock) #11
  %32 = load ptr, ptr @hci_cb_list, align 4
  %33 = icmp eq ptr %32, @hci_cb_list
  br i1 %33, label %43, label %34

34:                                               ; preds = %40, %31
  %35 = phi ptr [ %41, %40 ], [ %32, %31 ]
  %36 = getelementptr inbounds %struct.hci_cb, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  tail call void %37(ptr noundef nonnull %5, i8 noundef zeroext %1) #11
  br label %40

40:                                               ; preds = %39, %34
  %41 = load ptr, ptr %35, align 4
  %42 = icmp eq ptr %41, @hci_cb_list
  br i1 %42, label %43, label %34

43:                                               ; preds = %40, %31
  tail call void @mutex_unlock(ptr noundef nonnull @hci_cb_list_lock) #11
  %44 = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 71
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void %45(ptr noundef nonnull %5, i8 noundef zeroext %1) #11
  br label %48

48:                                               ; preds = %47, %43
  %49 = tail call i32 @hci_conn_del(ptr noundef nonnull %5)
  br label %50

50:                                               ; preds = %48, %19, %17, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_conn_del(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 65
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 58
  %5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %4) #11
  %6 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 59
  %7 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %6) #11
  %8 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 60
  %9 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %8) #11
  %10 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 14
  %11 = load i8, ptr %10, align 1
  switch i8 %11, label %40 [
    i8 1, label %12
    i8 -128, label %24
  ]

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 69
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.hci_conn, ptr %14, i32 0, i32 69
  store ptr null, ptr %17, align 4
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 55
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 120
  %22 = load i32, ptr %21, align 8
  %23 = add i32 %22, %20
  store i32 %23, ptr %21, align 8
  br label %81

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 61
  %26 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %25) #11
  %27 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 128
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %28, 0
  %30 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 55
  %31 = load i32, ptr %30, align 4
  br i1 %29, label %36, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 122
  %34 = load i32, ptr %33, align 8
  %35 = add i32 %34, %31
  store i32 %35, ptr %33, align 8
  br label %81

36:                                               ; preds = %24
  %37 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 120
  %38 = load i32, ptr %37, align 8
  %39 = add i32 %38, %31
  store i32 %39, ptr %37, align 8
  br label %81

40:                                               ; preds = %1
  %41 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 69
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %81, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.hci_conn, ptr %42, i32 0, i32 69
  store ptr null, ptr %45, align 4
  %46 = getelementptr inbounds %struct.hci_conn, ptr %42, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %46) #11, !srcloc !9
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %46, ptr %46, i32 1, ptr elementtype(i32) %46) #11, !srcloc !10
  %48 = extractvalue { i32, i32 } %47, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %81

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.hci_conn, ptr %42, i32 0, i32 14
  %52 = load i8, ptr %51, align 1
  switch i8 %52, label %72 [
    i8 1, label %53
    i8 -128, label %53
    i8 -127, label %68
  ]

53:                                               ; preds = %50, %50
  %54 = getelementptr inbounds %struct.hci_conn, ptr %42, i32 0, i32 60
  %55 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %54) #11
  %56 = getelementptr inbounds %struct.hci_conn, ptr %42, i32 0, i32 12
  %57 = load i16, ptr %56, align 4
  %58 = icmp eq i16 %57, 1
  br i1 %58, label %59, label %72

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.hci_conn, ptr %42, i32 0, i32 31
  %61 = load i16, ptr %60, align 2
  %62 = zext i16 %61 to i32
  %63 = getelementptr inbounds %struct.hci_conn, ptr %42, i32 0, i32 16
  %64 = load i8, ptr %63, align 1, !range !12
  %65 = xor i8 %64, 1
  %66 = zext i8 %65 to i32
  %67 = shl nuw nsw i32 %62, %66
  br label %72

68:                                               ; preds = %50
  %69 = getelementptr inbounds %struct.hci_conn, ptr %42, i32 0, i32 31
  %70 = load i16, ptr %69, align 2
  %71 = zext i16 %70 to i32
  br label %72

72:                                               ; preds = %68, %59, %53, %50
  %73 = phi i32 [ %71, %68 ], [ %67, %59 ], [ 0, %53 ], [ 0, %50 ]
  %74 = getelementptr inbounds %struct.hci_conn, ptr %42, i32 0, i32 58
  %75 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %74) #11
  %76 = getelementptr inbounds %struct.hci_conn, ptr %42, i32 0, i32 65
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.hci_dev, ptr %77, i32 0, i32 138
  %79 = load ptr, ptr %78, align 4
  %80 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %79, ptr noundef %74, i32 noundef %73) #11
  br label %81

81:                                               ; preds = %72, %44, %40, %36, %32, %18
  %82 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 56
  tail call void @skb_queue_purge(ptr noundef %82) #11
  tail call fastcc void @hci_conn_cleanup(ptr noundef %0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @hci_conn_add(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 920) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %126, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %9, ptr noundef align 1 dereferenceable(6) %2, i32 6, i1 false) #11
  %10 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 4
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %10, ptr noundef align 1 dereferenceable(6) %11, i32 6, i1 false) #11
  %12 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 65
  store ptr %0, ptr %12, align 4
  %13 = trunc i32 %1 to i8
  %14 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 14
  store i8 %13, ptr %14, align 1
  %15 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 15
  store i8 %3, ptr %15, align 8
  %16 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 13
  store i8 0, ptr %16, align 2
  %17 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 12
  store i16 2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 23
  store i8 4, ptr %18, align 1
  %19 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 37
  %20 = load i8, ptr %19, align 2
  %21 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 28
  store i8 %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 53
  store i8 -1, ptr %22, align 1
  %23 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 22
  store i8 -1, ptr %23, align 2
  %24 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 44
  store i8 127, ptr %24, align 2
  %25 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 45
  store i8 127, ptr %25, align 1
  %26 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 46
  store i8 127, ptr %26, align 8
  %27 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 47
  tail call void @_set_bit(i32 noundef 10, ptr noundef %27) #11
  %28 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 31
  store i16 200, ptr %28, align 2
  %29 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 34
  store i16 3000, ptr %29, align 8
  %30 = load i8, ptr %15, align 8
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %8
  %33 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 16
  store i8 1, ptr %33, align 1
  br label %34

34:                                               ; preds = %32, %8
  switch i32 %1, label %61 [
    i32 1, label %35
    i32 128, label %40
    i32 0, label %42
    i32 2, label %56
  ]

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 98
  %37 = load i16, ptr %36, align 4
  %38 = and i16 %37, -225
  %39 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 20
  store i16 %38, ptr %39, align 2
  br label %61

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 5
  tail call void @hci_copy_identity_address(ptr noundef %0, ptr noundef %10, ptr noundef %41) #11
  br label %61

42:                                               ; preds = %34
  %43 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 3
  %44 = load i8, ptr %43, align 1
  %45 = icmp sgt i8 %44, -1
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 99
  %48 = load i16, ptr %47, align 2
  %49 = and i16 %48, 967
  %50 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 20
  store i16 %49, ptr %50, align 2
  br label %61

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 98
  %53 = load i16, ptr %52, align 4
  %54 = and i16 %53, 224
  %55 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 20
  store i16 %54, ptr %55, align 2
  br label %61

56:                                               ; preds = %34
  %57 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 99
  %58 = load i16, ptr %57, align 2
  %59 = and i16 %58, -961
  %60 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 20
  store i16 %59, ptr %60, align 2
  br label %61

61:                                               ; preds = %56, %51, %46, %40, %35, %34
  %62 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 56
  %63 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 56, i32 2
  store i32 0, ptr %63, align 4
  store ptr %62, ptr %62, align 8
  %64 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 56, i32 0, i32 0, i32 1
  store ptr %62, ptr %64, align 4
  %65 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 56, i32 1
  store i32 0, ptr %65, align 8
  %66 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 57
  store volatile ptr %66, ptr %66, align 8
  %67 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 57, i32 1
  store ptr %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 58
  store i32 -32, ptr %68, align 8
  %69 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 58, i32 0, i32 1
  store volatile ptr %69, ptr %69, align 4
  %70 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 58, i32 0, i32 1, i32 1
  store ptr %69, ptr %70, align 8
  %71 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 58, i32 0, i32 2
  store ptr @hci_conn_timeout, ptr %71, align 4
  %72 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 58, i32 1
  tail call void @init_timer_key(ptr noundef %72, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #11
  %73 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 59
  store i32 -32, ptr %73, align 4
  %74 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 59, i32 0, i32 1
  store volatile ptr %74, ptr %74, align 8
  %75 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 59, i32 0, i32 1, i32 1
  store ptr %74, ptr %75, align 4
  %76 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 59, i32 0, i32 2
  store ptr @hci_conn_auto_accept, ptr %76, align 8
  %77 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 59, i32 1
  tail call void @init_timer_key(ptr noundef %77, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #11
  %78 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 60
  store i32 -32, ptr %78, align 8
  %79 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 60, i32 0, i32 1
  store volatile ptr %79, ptr %79, align 4
  %80 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 60, i32 0, i32 1, i32 1
  store ptr %79, ptr %80, align 8
  %81 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 60, i32 0, i32 2
  store ptr @hci_conn_idle, ptr %81, align 4
  %82 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 60, i32 1
  tail call void @init_timer_key(ptr noundef %82, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #11
  %83 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 61
  store i32 -32, ptr %83, align 4
  %84 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 61, i32 0, i32 1
  store volatile ptr %84, ptr %84, align 8
  %85 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 61, i32 0, i32 1, i32 1
  store ptr %84, ptr %85, align 4
  %86 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 61, i32 0, i32 2
  store ptr @le_conn_timeout, ptr %86, align 8
  %87 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 61, i32 1
  tail call void @init_timer_key(ptr noundef %87, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #11
  %88 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 62
  store i32 -32, ptr %88, align 8
  %89 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 62, i32 1
  store volatile ptr %89, ptr %89, align 4
  %90 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 62, i32 1, i32 1
  store ptr %89, ptr %90, align 8
  %91 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 62, i32 2
  store ptr @le_scan_cleanup, ptr %91, align 4
  %92 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 1
  store volatile i32 0, ptr %92, align 8
  %93 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 204
  %94 = tail call ptr @get_device(ptr noundef %93) #11
  %95 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  %96 = load ptr, ptr %95, align 4
  store ptr %96, ptr %6, align 8
  %97 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %95, ptr %97, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  store volatile ptr %6, ptr %95, align 4
  %98 = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  store ptr %6, ptr %98, align 4
  %99 = load i8, ptr %14, align 1
  switch i8 %99, label %120 [
    i8 1, label %100
    i8 -127, label %102
    i8 -128, label %104
    i8 0, label %116
    i8 2, label %116
  ]

100:                                              ; preds = %61
  %101 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183, i32 1
  br label %112

102:                                              ; preds = %61
  %103 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183, i32 2
  br label %112

104:                                              ; preds = %61
  %105 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183, i32 4
  %106 = load i32, ptr %105, align 4
  %107 = add i32 %106, 1
  store i32 %107, ptr %105, align 4
  %108 = load i8, ptr %15, align 8
  %109 = icmp eq i8 %108, 1
  br i1 %109, label %110, label %120

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183, i32 5
  br label %112

112:                                              ; preds = %110, %102, %100
  %113 = phi ptr [ %101, %100 ], [ %103, %102 ], [ %111, %110 ]
  %114 = load i32, ptr %113, align 4
  %115 = add i32 %114, 1
  store i32 %115, ptr %113, align 4
  br label %120

116:                                              ; preds = %61, %61
  %117 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183, i32 3
  %118 = load i32, ptr %117, align 4
  %119 = add i32 %118, 1
  store i32 %119, ptr %117, align 4
  switch i8 %99, label %120 [
    i8 0, label %125
    i8 2, label %125
  ]

120:                                              ; preds = %116, %112, %104, %61
  %121 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 232
  %122 = load ptr, ptr %121, align 8
  %123 = icmp eq ptr %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  tail call void %122(ptr noundef %0, i32 noundef 1) #11
  br label %125

125:                                              ; preds = %124, %120, %116, %116
  tail call void @hci_conn_init_sysfs(ptr noundef nonnull %6) #11
  br label %126

126:                                              ; preds = %125, %4
  ret ptr %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_copy_identity_address(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_conn_timeout(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -208
  %3 = getelementptr i8, ptr %0, i32 -200
  %4 = load volatile i32, ptr %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7, !prof !14

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 573, i32 noundef 9, ptr noundef null) #11
  br label %9

7:                                                ; preds = %1
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %9, label %39

9:                                                ; preds = %7, %6
  %10 = getelementptr i8, ptr %0, i32 -164
  %11 = load i16, ptr %10, align 4
  %12 = icmp eq i16 %11, 5
  %13 = getelementptr i8, ptr %0, i32 -161
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, -128
  %16 = select i1 %12, i1 %15, i1 false
  br i1 %16, label %17, label %32

17:                                               ; preds = %9
  %18 = getelementptr i8, ptr %0, i32 -52
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 2097152
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %17
  %23 = getelementptr i8, ptr %0, i32 668
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.hci_dev, ptr %24, i32 0, i32 204
  %26 = tail call ptr @get_device(ptr noundef %25) #11
  %27 = getelementptr i8, ptr %0, i32 192
  %28 = tail call ptr @get_device(ptr noundef %27) #11
  %29 = getelementptr i8, ptr %0, i32 176
  %30 = load ptr, ptr @system_wq, align 4
  %31 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %30, ptr noundef %29) #11
  br label %39

32:                                               ; preds = %9
  switch i8 %14, label %36 [
    i8 1, label %33
    i8 -128, label %33
  ]

33:                                               ; preds = %32, %32, %17
  %34 = tail call i32 @l2cap_disconn_ind(ptr noundef %2) #11
  %35 = trunc i32 %34 to i8
  br label %36

36:                                               ; preds = %33, %32
  %37 = phi i8 [ %35, %33 ], [ 19, %32 ]
  %38 = tail call i32 @hci_abort_conn(ptr noundef %2, i8 noundef zeroext %37) #11
  br label %39

39:                                               ; preds = %36, %22, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_conn_auto_accept(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 624
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 -240
  %5 = tail call i32 @hci_send_cmd(ptr noundef %3, i16 noundef zeroext 1068, i32 noundef 6, ptr noundef %4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_conn_idle(ptr noundef %0) #0 {
  %2 = alloca %struct.hci_cp_sniff_subrate, align 8
  %3 = alloca %struct.hci_cp_sniff_mode, align 2
  %4 = getelementptr i8, ptr %0, i32 580
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 21
  %7 = load i8, ptr %6, align 2
  %8 = icmp sgt i8 %7, -1
  br i1 %8, label %52, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 -242
  %11 = load i8, ptr %10, align 2
  %12 = icmp sgt i8 %11, -1
  br i1 %12, label %52, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %0, i32 -250
  %15 = load i8, ptr %14, align 2
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %52

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %0, i32 -216
  %19 = load i16, ptr %18, align 8
  %20 = and i16 %19, 4
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %52, label %22

22:                                               ; preds = %17
  %23 = getelementptr %struct.hci_dev, ptr %5, i32 0, i32 21, i32 0, i32 5
  %24 = load i8, ptr %23, align 1
  %25 = and i8 %24, 2
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %22
  %28 = getelementptr i8, ptr %0, i32 -237
  %29 = load i8, ptr %28, align 1
  %30 = and i8 %29, 2
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  store i64 0, ptr %2, align 8, !annotation !15
  %33 = getelementptr i8, ptr %0, i32 -254
  %34 = load i16, ptr %33, align 2
  store i16 %34, ptr %2, align 8
  %35 = call i32 @hci_send_cmd(ptr noundef %5, i16 noundef zeroext 2065, i32 noundef 8, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  br label %36

36:                                               ; preds = %32, %27, %22
  %37 = getelementptr i8, ptr %0, i32 -140
  %38 = call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %37) #11
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #11
  %41 = getelementptr i8, ptr %0, i32 -254
  %42 = load i16, ptr %41, align 2
  store i16 %42, ptr %3, align 2
  %43 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 104
  %44 = load i16, ptr %43, align 2
  %45 = getelementptr inbounds %struct.hci_cp_sniff_mode, ptr %3, i32 0, i32 1
  store i16 %44, ptr %45, align 2
  %46 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 103
  %47 = load i16, ptr %46, align 8
  %48 = getelementptr inbounds %struct.hci_cp_sniff_mode, ptr %3, i32 0, i32 2
  store i16 %47, ptr %48, align 2
  %49 = getelementptr inbounds %struct.hci_cp_sniff_mode, ptr %3, i32 0, i32 3
  store i16 4, ptr %49, align 2
  %50 = getelementptr inbounds %struct.hci_cp_sniff_mode, ptr %3, i32 0, i32 4
  store i16 1, ptr %50, align 2
  %51 = call i32 @hci_send_cmd(ptr noundef %5, i16 noundef zeroext 2051, i32 noundef 10, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #11
  br label %52

52:                                               ; preds = %40, %36, %17, %13, %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @le_conn_timeout(ptr noundef %0) #0 {
  %2 = alloca %struct.hci_cp_le_set_ext_adv_enable, align 2
  %3 = alloca i8, align 1
  %4 = getelementptr i8, ptr %0, i32 -340
  %5 = getelementptr i8, ptr %0, i32 -292
  %6 = load i8, ptr %5, align 8
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 536
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.hci_dev, ptr %10, i32 0, i32 22, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = and i8 %12, 16
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #11
  store i16 0, ptr %2, align 2
  %16 = call i32 @hci_send_cmd(ptr noundef %10, i16 noundef zeroext 8249, i32 noundef 2, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #11
  br label %19

17:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 0, ptr %3, align 1
  %18 = call i32 @hci_send_cmd(ptr noundef %10, i16 noundef zeroext 8202, i32 noundef 1, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  br label %19

19:                                               ; preds = %17, %15
  call void @hci_le_conn_failed(ptr noundef %4, i8 noundef zeroext 60)
  br label %22

20:                                               ; preds = %1
  %21 = tail call i32 @hci_abort_conn(ptr noundef %4, i8 noundef zeroext 19) #11
  br label %22

22:                                               ; preds = %20, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @le_scan_cleanup(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -384
  %3 = getelementptr i8, ptr %0, i32 492
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  %6 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 183
  br label %7

7:                                                ; preds = %7, %1
  %8 = phi ptr [ %6, %1 ], [ %9, %7 ]
  %9 = load volatile ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, %6
  %11 = icmp eq ptr %9, %2
  %12 = or i1 %10, %11
  br i1 %12, label %13, label %7

13:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  br i1 %11, label %14, label %15

14:                                               ; preds = %13
  tail call fastcc void @hci_connect_le_scan_cleanup(ptr noundef %2)
  tail call fastcc void @hci_conn_cleanup(ptr noundef %2)
  br label %15

15:                                               ; preds = %14, %13
  tail call void @mutex_unlock(ptr noundef %5) #11
  %16 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 204
  tail call void @put_device(ptr noundef %16) #11
  %17 = getelementptr i8, ptr %0, i32 16
  tail call void @put_device(ptr noundef %17) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_conn_init_sysfs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hci_conn_cleanup(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 65
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 47
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 524288
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 2
  %10 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 3
  %11 = load i8, ptr %10, align 2
  tail call void @hci_conn_params_del(ptr noundef %3, ptr noundef %9, i8 noundef zeroext %11) #11
  br label %12

12:                                               ; preds = %8, %1
  %13 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 57
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %28, label %16

16:                                               ; preds = %16, %12
  %17 = phi ptr [ %18, %16 ], [ %14, %12 ]
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.hci_chan, ptr %17, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %22, ptr %23, align 4
  store volatile ptr %18, ptr %22, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %21, align 4
  tail call void @synchronize_rcu() #11
  %24 = getelementptr inbounds %struct.hci_conn, ptr %20, i32 0, i32 47
  tail call void @_set_bit(i32 noundef 18, ptr noundef %24) #11
  %25 = getelementptr inbounds %struct.hci_conn, ptr %20, i32 0, i32 63
  tail call void @put_device(ptr noundef %25) #11
  %26 = getelementptr inbounds %struct.hci_chan, ptr %17, i32 0, i32 3
  tail call void @skb_queue_purge(ptr noundef %26) #11
  tail call void @kfree(ptr noundef %17) #11
  %27 = icmp eq ptr %18, %13
  br i1 %27, label %28, label %16

28:                                               ; preds = %16, %12
  %29 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %0, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %30, ptr %32, align 4
  store volatile ptr %31, ptr %30, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %29, align 4
  tail call void @synchronize_rcu() #11
  %33 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 14
  %34 = load i8, ptr %33, align 1
  switch i8 %34, label %56 [
    i8 1, label %35
    i8 -127, label %37
    i8 -128, label %39
    i8 0, label %48
    i8 2, label %48
  ]

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 183, i32 1
  br label %50

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 183, i32 2
  br label %50

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 183, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, -1
  store i32 %42, ptr %40, align 4
  %43 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 15
  %44 = load i8, ptr %43, align 8
  %45 = icmp eq i8 %44, 1
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 183, i32 5
  br label %50

48:                                               ; preds = %28, %28
  %49 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 183, i32 3
  br label %50

50:                                               ; preds = %48, %46, %37, %35
  %51 = phi ptr [ %47, %46 ], [ %49, %48 ], [ %38, %37 ], [ %36, %35 ]
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, -1
  store i32 %53, ptr %51, align 4
  br label %54

54:                                               ; preds = %50, %39
  %55 = load i8, ptr %33, align 1
  br label %56

56:                                               ; preds = %54, %28
  %57 = phi i8 [ %55, %54 ], [ %34, %28 ]
  switch i8 %57, label %68 [
    i8 0, label %58
    i8 2, label %58
  ]

58:                                               ; preds = %56, %56
  %59 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 33
  %60 = load i16, ptr %59, align 2
  %61 = and i16 %60, 3
  %62 = zext i16 %61 to i32
  switch i32 %62, label %73 [
    i32 0, label %63
    i32 3, label %63
  ]

63:                                               ; preds = %58, %58
  %64 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 232
  %65 = load ptr, ptr %64, align 8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %63
  tail call void %65(ptr noundef %3, i32 noundef 6) #11
  br label %73

68:                                               ; preds = %56
  %69 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 232
  %70 = load ptr, ptr %69, align 8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  tail call void %70(ptr noundef %3, i32 noundef 2) #11
  br label %73

73:                                               ; preds = %72, %68, %67, %63, %58
  tail call void @hci_conn_del_sysfs(ptr noundef %0) #11
  %74 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 64
  %75 = load ptr, ptr %74, align 8
  tail call void @debugfs_remove(ptr noundef %75) #11
  %76 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 204
  tail call void @put_device(ptr noundef %76) #11
  %77 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 63
  tail call void @put_device(ptr noundef %77) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @hci_get_route(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) #0 {
  %4 = alloca %struct.bdaddr_t, align 1
  %5 = alloca %struct.bdaddr_t, align 1
  %6 = alloca i8, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i64 6, i1 false)
  %7 = call i32 @bcmp(ptr noundef dereferenceable(6) %1, ptr noundef nonnull dereferenceable(6) %4, i32 6)
  tail call void @_raw_read_lock(ptr noundef nonnull @hci_dev_list_lock) #11
  %8 = load ptr, ptr @hci_dev_list, align 4
  %9 = icmp eq ptr %8, @hci_dev_list
  br i1 %9, label %64, label %10

10:                                               ; preds = %3
  %11 = icmp eq i32 %7, 0
  %12 = icmp eq i8 %2, 0
  br label %13

13:                                               ; preds = %55, %10
  %14 = phi ptr [ %8, %10 ], [ %56, %55 ]
  %15 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 3
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %55, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 206
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 2048
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 6
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %55

28:                                               ; preds = %24
  br i1 %11, label %51, label %29

29:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, i8 0, i32 6, i1 false), !annotation !15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  store i8 0, ptr %6, align 1, !annotation !15
  %30 = getelementptr %struct.hci_dev, ptr %14, i32 0, i32 21, i32 0, i32 4
  %31 = load i8, ptr %30, align 2
  br i1 %12, label %32, label %37

32:                                               ; preds = %29
  %33 = and i8 %31, 32
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, ptr noundef align 1 dereferenceable(6) %36, i32 6, i1 false) #11
  br label %45

37:                                               ; preds = %29
  %38 = and i8 %31, 64
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  call void @hci_copy_identity_address(ptr noundef %14, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %41 = load i8, ptr %6, align 1
  %42 = icmp eq i8 %41, 0
  %43 = select i1 %42, i8 1, i8 2
  br label %45

44:                                               ; preds = %37, %32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #11
  br label %55

45:                                               ; preds = %40, %35
  %46 = phi i8 [ 0, %35 ], [ %43, %40 ]
  %47 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %5, ptr noundef dereferenceable(6) %1, i32 6)
  %48 = icmp eq i32 %47, 0
  %49 = icmp eq i8 %46, %2
  %50 = and i1 %48, %49
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #11
  br i1 %50, label %58, label %55

51:                                               ; preds = %28
  %52 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 7
  %53 = call i32 @bcmp(ptr noundef dereferenceable(6) %52, ptr noundef dereferenceable(6) %0, i32 6)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51, %45, %44, %24, %19, %13
  %56 = load ptr, ptr %14, align 4
  %57 = icmp eq ptr %56, @hci_dev_list
  br i1 %57, label %58, label %13

58:                                               ; preds = %55, %51, %45
  %59 = phi ptr [ null, %55 ], [ %14, %45 ], [ %14, %51 ]
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.hci_dev, ptr %59, i32 0, i32 204
  %63 = call ptr @get_device(ptr noundef %62) #11
  br label %64

64:                                               ; preds = %61, %58, %3
  %65 = phi ptr [ %59, %61 ], [ null, %58 ], [ null, %3 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @hci_dev_list_lock) #11, !srcloc !9
  %66 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @hci_dev_list_lock) #11, !srcloc !19
  %67 = extractvalue { i32, i32 } %66, 0
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !20
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !21
  br label %70

70:                                               ; preds = %69, %64
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  ret ptr %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_le_conn_failed(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 65
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 195
  %6 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 2
  %7 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 3
  %8 = load i8, ptr %7, align 2
  %9 = tail call ptr @hci_pend_le_action_lookup(ptr noundef %5, ptr noundef %6, i8 noundef zeroext %8) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %57, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.hci_conn_params, ptr %9, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %54, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #11, !srcloc !9
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #11, !srcloc !10
  %18 = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %51

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 14
  %22 = load i8, ptr %21, align 1
  switch i8 %22, label %42 [
    i8 1, label %23
    i8 -128, label %23
    i8 -127, label %38
  ]

23:                                               ; preds = %20, %20
  %24 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 60
  %25 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %24) #11
  %26 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 12
  %27 = load i16, ptr %26, align 4
  %28 = icmp eq i16 %27, 1
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 31
  %31 = load i16, ptr %30, align 2
  %32 = zext i16 %31 to i32
  %33 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 16
  %34 = load i8, ptr %33, align 1, !range !12
  %35 = xor i8 %34, 1
  %36 = zext i8 %35 to i32
  %37 = shl nuw nsw i32 %32, %36
  br label %42

38:                                               ; preds = %20
  %39 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 31
  %40 = load i16, ptr %39, align 2
  %41 = zext i16 %40 to i32
  br label %42

42:                                               ; preds = %38, %29, %23, %20
  %43 = phi i32 [ %41, %38 ], [ %37, %29 ], [ 0, %23 ], [ 0, %20 ]
  %44 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 58
  %45 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %44) #11
  %46 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 65
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.hci_dev, ptr %47, i32 0, i32 138
  %49 = load ptr, ptr %48, align 4
  %50 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %49, ptr noundef %44, i32 noundef %43) #11
  br label %51

51:                                               ; preds = %42, %15
  %52 = load ptr, ptr %12, align 4
  %53 = getelementptr inbounds %struct.hci_conn, ptr %52, i32 0, i32 63
  tail call void @put_device(ptr noundef %53) #11
  store ptr null, ptr %12, align 4
  br label %54

54:                                               ; preds = %51, %11
  %55 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 12
  store i16 9, ptr %55, align 4
  %56 = icmp eq i8 %1, 2
  br i1 %56, label %60, label %64

57:                                               ; preds = %2
  %58 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 12
  store i16 9, ptr %58, align 4
  %59 = icmp eq i8 %1, 2
  br i1 %59, label %68, label %64

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.hci_conn_params, ptr %9, i32 0, i32 10
  %62 = load i8, ptr %61, align 4, !range !12
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60, %57, %54
  %65 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 14
  %66 = load i8, ptr %65, align 1
  %67 = load i8, ptr %7, align 2
  tail call void @mgmt_connect_failed(ptr noundef %4, ptr noundef %6, i8 noundef zeroext %66, i8 noundef zeroext %67, i8 noundef zeroext %1) #11
  br label %68

68:                                               ; preds = %64, %60, %57
  tail call void @mutex_lock(ptr noundef nonnull @hci_cb_list_lock) #11
  %69 = load ptr, ptr @hci_cb_list, align 4
  %70 = icmp eq ptr %69, @hci_cb_list
  br i1 %70, label %80, label %71

71:                                               ; preds = %77, %68
  %72 = phi ptr [ %78, %77 ], [ %69, %68 ]
  %73 = getelementptr inbounds %struct.hci_cb, ptr %72, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  tail call void %74(ptr noundef %0, i8 noundef zeroext %1) #11
  br label %77

77:                                               ; preds = %76, %71
  %78 = load ptr, ptr %72, align 4
  %79 = icmp eq ptr %78, @hci_cb_list
  br i1 %79, label %80, label %71

80:                                               ; preds = %77, %68
  tail call void @mutex_unlock(ptr noundef nonnull @hci_cb_list_lock) #11
  %81 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 71
  %82 = load ptr, ptr %81, align 8
  %83 = icmp eq ptr %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  tail call void %82(ptr noundef %0, i8 noundef zeroext %1) #11
  br label %85

85:                                               ; preds = %84, %80
  %86 = tail call i32 @hci_conn_del(ptr noundef %0)
  %87 = tail call i32 @hci_update_passive_scan(ptr noundef %4) #11
  %88 = tail call i32 @hci_enable_advertising(ptr noundef %4) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_pend_le_action_lookup(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_connect_failed(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_update_passive_scan(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_enable_advertising(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @hci_connect_le(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i1 noundef zeroext %3, i8 noundef zeroext %4, i16 noundef zeroext %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = alloca %struct.bdaddr_t, align 1
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 8388608
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 4
  %15 = load i8, ptr %14, align 2
  %16 = and i8 %15, 64
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %17, ptr inttoptr (i32 -95 to ptr), ptr inttoptr (i32 -111 to ptr)
  br label %108

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %40, label %23

23:                                               ; preds = %37, %19
  %24 = phi ptr [ %38, %37 ], [ %21, %19 ]
  %25 = getelementptr inbounds %struct.hci_conn, ptr %24, i32 0, i32 14
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, -128
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.hci_conn, ptr %24, i32 0, i32 12
  %30 = load i16, ptr %29, align 4
  %31 = icmp eq i16 %30, 5
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.hci_conn, ptr %24, i32 0, i32 47
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %34, 2097152
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32, %28, %23
  %38 = load volatile ptr, ptr %24, align 4
  %39 = icmp eq ptr %38, %20
  br i1 %39, label %40, label %23

40:                                               ; preds = %37, %19
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  br label %43

41:                                               ; preds = %32
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  %42 = icmp eq ptr %24, null
  br i1 %42, label %43, label %108

43:                                               ; preds = %41, %40
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  %44 = load volatile ptr, ptr %20, align 4
  %45 = icmp eq ptr %44, %20
  br i1 %45, label %62, label %46

46:                                               ; preds = %59, %43
  %47 = phi ptr [ %60, %59 ], [ %44, %43 ]
  %48 = getelementptr inbounds %struct.hci_conn, ptr %47, i32 0, i32 14
  %49 = load i8, ptr %48, align 1
  %50 = icmp eq i8 %49, -128
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.hci_conn, ptr %47, i32 0, i32 3
  %53 = load i8, ptr %52, align 2
  %54 = icmp eq i8 %53, %2
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.hci_conn, ptr %47, i32 0, i32 2
  %57 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %56, ptr noundef dereferenceable(6) %1, i32 6) #11
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55, %51, %46
  %60 = load volatile ptr, ptr %47, align 4
  %61 = icmp eq ptr %60, %20
  br i1 %61, label %62, label %46

62:                                               ; preds = %59, %43
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  br label %70

63:                                               ; preds = %55
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  %64 = icmp eq ptr %47, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.hci_conn, ptr %47, i32 0, i32 47
  %67 = load volatile i32, ptr %66, align 4
  %68 = and i32 %67, 2097152
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %108, label %70

70:                                               ; preds = %65, %63, %62
  %71 = phi i1 [ true, %62 ], [ false, %65 ], [ true, %63 ]
  %72 = phi ptr [ null, %62 ], [ %47, %65 ], [ null, %63 ]
  br i1 %3, label %82, label %73

73:                                               ; preds = %70
  %74 = tail call ptr @hci_find_irk_by_addr(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #11
  %75 = icmp eq ptr %74, null
  br i1 %75, label %82, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.smp_irk, ptr %74, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %8, i8 0, i64 6, i1 false)
  %78 = call i32 @bcmp(ptr noundef dereferenceable(6) %77, ptr noundef nonnull dereferenceable(6) %8, i32 6)
  %79 = icmp eq i32 %78, 0
  %80 = select i1 %79, i8 %2, i8 1
  %81 = select i1 %79, ptr %1, ptr %77
  br label %82

82:                                               ; preds = %76, %73, %70
  %83 = phi i8 [ %2, %70 ], [ %2, %73 ], [ %80, %76 ]
  %84 = phi ptr [ %1, %70 ], [ %1, %73 ], [ %81, %76 ]
  br i1 %71, label %87, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.hci_conn, ptr %72, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %86, ptr noundef align 1 dereferenceable(6) %84, i32 6, i1 false) #11
  br label %96

87:                                               ; preds = %82
  %88 = tail call ptr @hci_conn_add(ptr noundef %0, i32 noundef 128, ptr noundef %84, i8 noundef zeroext %6)
  %89 = icmp eq ptr %88, null
  br i1 %89, label %108, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.hci_conn, ptr %88, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %91) #11, !srcloc !9
  %92 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %91, ptr %91, i32 1, ptr elementtype(i32) %91) #11, !srcloc !23
  %93 = getelementptr inbounds %struct.hci_conn, ptr %88, i32 0, i32 58
  %94 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %93) #11
  %95 = getelementptr inbounds %struct.hci_conn, ptr %88, i32 0, i32 25
  store i8 %4, ptr %95, align 1
  br label %96

96:                                               ; preds = %90, %85
  %97 = phi ptr [ %72, %85 ], [ %88, %90 ]
  %98 = getelementptr inbounds %struct.hci_conn, ptr %97, i32 0, i32 3
  store i8 %83, ptr %98, align 2
  %99 = getelementptr inbounds %struct.hci_conn, ptr %97, i32 0, i32 24
  store i8 1, ptr %99, align 4
  %100 = getelementptr inbounds %struct.hci_conn, ptr %97, i32 0, i32 32
  store i16 %5, ptr %100, align 4
  %101 = getelementptr inbounds %struct.hci_conn, ptr %97, i32 0, i32 12
  store i16 5, ptr %101, align 4
  %102 = getelementptr inbounds %struct.hci_conn, ptr %97, i32 0, i32 47
  tail call void @_clear_bit(i32 noundef 21, ptr noundef %102) #11
  %103 = tail call i32 @hci_cmd_sync_queue(ptr noundef %0, ptr noundef nonnull @hci_connect_le_sync, ptr noundef nonnull %97, ptr noundef nonnull @create_le_conn_complete) #11
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %96
  %106 = tail call i32 @hci_conn_del(ptr noundef nonnull %97)
  %107 = inttoptr i32 %103 to ptr
  br label %108

108:                                              ; preds = %105, %96, %87, %65, %41, %13
  %109 = phi ptr [ %107, %105 ], [ %97, %96 ], [ inttoptr (i32 -16 to ptr), %41 ], [ inttoptr (i32 -16 to ptr), %65 ], [ inttoptr (i32 -12 to ptr), %87 ], [ %18, %13 ]
  ret ptr %109
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_find_irk_by_addr(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_cmd_sync_queue(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_connect_le_sync(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @hci_le_create_conn_sync(ptr noundef %0, ptr noundef %1) #11
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @create_le_conn_complete(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %4) #11
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call fastcc void @hci_connect_le_scan_cleanup(ptr noundef %1)
  br label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.2, ptr noundef %8, i32 noundef %2) #11
  %9 = icmp eq ptr %1, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = trunc i32 %2 to i8
  tail call void @hci_le_conn_failed(ptr noundef nonnull %1, i8 noundef zeroext %11)
  br label %12

12:                                               ; preds = %10, %7, %6
  tail call void @mutex_unlock(ptr noundef %4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @hci_connect_le_scan(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 8388608
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 4
  %13 = load i8, ptr %12, align 2
  %14 = and i8 %13, 64
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, ptr inttoptr (i32 -95 to ptr), ptr inttoptr (i32 -111 to ptr)
  br label %114

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %37, label %21

21:                                               ; preds = %34, %17
  %22 = phi ptr [ %35, %34 ], [ %19, %17 ]
  %23 = getelementptr inbounds %struct.hci_conn, ptr %22, i32 0, i32 14
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, -128
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.hci_conn, ptr %22, i32 0, i32 3
  %28 = load i8, ptr %27, align 2
  %29 = icmp eq i8 %28, %2
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.hci_conn, ptr %22, i32 0, i32 2
  %32 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %31, ptr noundef dereferenceable(6) %1, i32 6) #11
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30, %26, %21
  %35 = load volatile ptr, ptr %22, align 4
  %36 = icmp eq ptr %35, %18
  br i1 %36, label %37, label %21

37:                                               ; preds = %34, %17
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  br label %45

38:                                               ; preds = %30
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  %39 = icmp eq ptr %22, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.hci_conn, ptr %22, i32 0, i32 25
  %42 = load i8, ptr %41, align 1
  %43 = icmp ult i8 %42, %3
  br i1 %43, label %44, label %108

44:                                               ; preds = %40
  store i8 %3, ptr %41, align 1
  br label %108

45:                                               ; preds = %38, %37
  %46 = tail call ptr @hci_conn_add(ptr noundef %0, i32 noundef 128, ptr noundef %1, i8 noundef zeroext 0)
  %47 = icmp eq ptr %46, null
  br i1 %47, label %114, label %48

48:                                               ; preds = %45
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  %49 = load volatile ptr, ptr %18, align 4
  %50 = icmp eq ptr %49, %18
  br i1 %50, label %67, label %51

51:                                               ; preds = %64, %48
  %52 = phi ptr [ %65, %64 ], [ %49, %48 ]
  %53 = getelementptr inbounds %struct.hci_conn, ptr %52, i32 0, i32 14
  %54 = load i8, ptr %53, align 1
  %55 = icmp eq i8 %54, -128
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.hci_conn, ptr %52, i32 0, i32 3
  %58 = load i8, ptr %57, align 2
  %59 = icmp eq i8 %58, %2
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.hci_conn, ptr %52, i32 0, i32 2
  %62 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %61, ptr noundef dereferenceable(6) %1, i32 6) #11
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60, %56, %51
  %65 = load volatile ptr, ptr %52, align 4
  %66 = icmp eq ptr %65, %18
  br i1 %66, label %67, label %51

67:                                               ; preds = %64, %48
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  br label %74

68:                                               ; preds = %60
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  %69 = icmp eq ptr %52, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.hci_conn, ptr %52, i32 0, i32 12
  %72 = load i16, ptr %71, align 4
  %73 = icmp eq i16 %72, 1
  br i1 %73, label %95, label %74

74:                                               ; preds = %70, %68, %67
  %75 = tail call ptr @hci_conn_params_lookup(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #11
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = tail call ptr @hci_conn_params_add(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #11
  %79 = icmp eq ptr %78, null
  br i1 %79, label %95, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.hci_conn_params, ptr %78, i32 0, i32 8
  store i32 5, ptr %81, align 4
  br label %85

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.hci_conn_params, ptr %75, i32 0, i32 8
  %84 = load i32, ptr %83, align 4
  switch i32 %84, label %97 [
    i32 0, label %85
    i32 1, label %85
    i32 5, label %85
  ]

85:                                               ; preds = %82, %82, %82, %80
  %86 = phi ptr [ %78, %80 ], [ %75, %82 ], [ %75, %82 ], [ %75, %82 ]
  %87 = getelementptr inbounds %struct.hci_conn_params, ptr %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.hci_conn_params, ptr %86, i32 0, i32 1, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = load ptr, ptr %87, align 4
  %91 = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  store ptr %89, ptr %91, align 4
  store volatile ptr %90, ptr %89, align 4
  store volatile ptr %87, ptr %87, align 4
  store ptr %87, ptr %88, align 4
  %92 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 195
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.list_head, ptr %93, i32 0, i32 1
  store ptr %87, ptr %94, align 4
  store ptr %93, ptr %87, align 4
  store ptr %92, ptr %88, align 4
  store volatile ptr %87, ptr %92, align 4
  br label %97

95:                                               ; preds = %77, %70
  %96 = tail call i32 @hci_conn_del(ptr noundef nonnull %46)
  br label %114

97:                                               ; preds = %85, %82
  %98 = phi ptr [ %75, %82 ], [ %86, %85 ]
  %99 = getelementptr inbounds %struct.hci_conn_params, ptr %98, i32 0, i32 10
  store i8 1, ptr %99, align 4
  %100 = getelementptr inbounds %struct.hci_conn, ptr %46, i32 0, i32 12
  store i16 5, ptr %100, align 4
  %101 = getelementptr inbounds %struct.hci_conn, ptr %46, i32 0, i32 47
  tail call void @_set_bit(i32 noundef 21, ptr noundef %101) #11
  %102 = getelementptr inbounds %struct.hci_conn, ptr %46, i32 0, i32 3
  store i8 %2, ptr %102, align 2
  %103 = getelementptr inbounds %struct.hci_conn, ptr %46, i32 0, i32 24
  store i8 1, ptr %103, align 4
  %104 = getelementptr inbounds %struct.hci_conn, ptr %46, i32 0, i32 25
  store i8 %3, ptr %104, align 1
  %105 = getelementptr inbounds %struct.hci_conn, ptr %46, i32 0, i32 32
  store i16 %4, ptr %105, align 4
  %106 = getelementptr inbounds %struct.hci_conn, ptr %46, i32 0, i32 48
  store i32 %5, ptr %106, align 8
  %107 = tail call i32 @hci_update_passive_scan(ptr noundef %0) #11
  br label %108

108:                                              ; preds = %97, %44, %40
  %109 = phi ptr [ %22, %44 ], [ %22, %40 ], [ %46, %97 ]
  %110 = getelementptr inbounds %struct.hci_conn, ptr %109, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %110) #11, !srcloc !9
  %111 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %110, ptr %110, i32 1, ptr elementtype(i32) %110) #11, !srcloc !23
  %112 = getelementptr inbounds %struct.hci_conn, ptr %109, i32 0, i32 58
  %113 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %112) #11
  br label %114

114:                                              ; preds = %108, %95, %45, %11
  %115 = phi ptr [ %109, %108 ], [ inttoptr (i32 -16 to ptr), %95 ], [ inttoptr (i32 -12 to ptr), %45 ], [ %16, %11 ]
  ret ptr %115
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @hci_connect_acl(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 4
  %12 = load i8, ptr %11, align 2
  %13 = and i8 %12, 32
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %14, ptr inttoptr (i32 -111 to ptr), ptr inttoptr (i32 -95 to ptr)
  br label %51

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %32, label %20

20:                                               ; preds = %29, %16
  %21 = phi ptr [ %30, %29 ], [ %18, %16 ]
  %22 = getelementptr inbounds %struct.hci_conn, ptr %21, i32 0, i32 14
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 1
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.hci_conn, ptr %21, i32 0, i32 2
  %27 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %26, ptr noundef dereferenceable(6) %1, i32 6) #11
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25, %20
  %30 = load volatile ptr, ptr %21, align 4
  %31 = icmp eq ptr %30, %17
  br i1 %31, label %32, label %20

32:                                               ; preds = %29, %16
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  br label %35

33:                                               ; preds = %25
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  %34 = icmp eq ptr %21, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %33, %32
  %36 = tail call ptr @hci_conn_add(ptr noundef %0, i32 noundef 1, ptr noundef %1, i8 noundef zeroext 0)
  %37 = icmp eq ptr %36, null
  br i1 %37, label %51, label %38

38:                                               ; preds = %35, %33
  %39 = phi ptr [ %21, %33 ], [ %36, %35 ]
  %40 = getelementptr inbounds %struct.hci_conn, ptr %39, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #11, !srcloc !9
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 1, ptr elementtype(i32) %40) #11, !srcloc !23
  %42 = getelementptr inbounds %struct.hci_conn, ptr %39, i32 0, i32 58
  %43 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %42) #11
  %44 = getelementptr inbounds %struct.hci_conn, ptr %39, i32 0, i32 48
  store i32 %4, ptr %44, align 8
  %45 = getelementptr inbounds %struct.hci_conn, ptr %39, i32 0, i32 12
  %46 = load i16, ptr %45, align 4
  switch i16 %46, label %51 [
    i16 2, label %47
    i16 9, label %47
  ]

47:                                               ; preds = %38, %38
  %48 = getelementptr inbounds %struct.hci_conn, ptr %39, i32 0, i32 24
  store i8 1, ptr %48, align 4
  %49 = getelementptr inbounds %struct.hci_conn, ptr %39, i32 0, i32 25
  store i8 %2, ptr %49, align 1
  %50 = getelementptr inbounds %struct.hci_conn, ptr %39, i32 0, i32 23
  store i8 %3, ptr %50, align 1
  tail call fastcc void @hci_acl_create_connection(ptr noundef nonnull %39)
  br label %51

51:                                               ; preds = %47, %38, %35, %10
  %52 = phi ptr [ %39, %38 ], [ %39, %47 ], [ inttoptr (i32 -12 to ptr), %35 ], [ %15, %10 ]
  ret ptr %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hci_acl_create_connection(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.hci_cp_create_conn, align 1
  %3 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 65
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %2) #11
  %5 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 3
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 128
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 12
  br i1 %8, label %12, label %10

10:                                               ; preds = %1
  store i16 6, ptr %9, align 4
  %11 = tail call i32 @hci_send_cmd(ptr noundef %4, i16 noundef zeroext 1026, i32 noundef 0, ptr noundef null) #11
  br label %63

12:                                               ; preds = %1
  store i16 5, ptr %9, align 4
  %13 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 16
  store i8 1, ptr %13, align 1
  %14 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 15
  store i8 0, ptr %14, align 8
  %15 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 17
  %16 = load i8, ptr %15, align 2
  %17 = add i8 %16, 1
  store i8 %17, ptr %15, align 2
  %18 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 100
  %19 = load i16, ptr %18, align 8
  %20 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 21
  store i16 %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 2
  %22 = getelementptr inbounds i8, ptr %2, i32 9
  store i32 0, ptr %22, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, ptr noundef align 1 dereferenceable(6) %21, i32 6, i1 false) #11
  %23 = getelementptr inbounds %struct.hci_cp_create_conn, ptr %2, i32 0, i32 2
  store i8 2, ptr %23, align 1
  %24 = tail call ptr @hci_inquiry_cache_lookup(ptr noundef %4, ptr noundef %21) #11
  %25 = icmp eq ptr %24, null
  br i1 %25, label %45, label %26

26:                                               ; preds = %12
  %27 = load volatile i32, ptr @jiffies, align 64
  %28 = getelementptr inbounds %struct.inquiry_entry, ptr %24, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = sub i32 %27, %29
  %31 = icmp slt i32 %30, 6001
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.inquiry_entry, ptr %24, i32 0, i32 4, i32 1
  %34 = load i8, ptr %33, align 2
  store i8 %34, ptr %23, align 1
  %35 = getelementptr inbounds %struct.inquiry_entry, ptr %24, i32 0, i32 4, i32 3
  %36 = load i8, ptr %35, align 4
  %37 = getelementptr inbounds %struct.hci_cp_create_conn, ptr %2, i32 0, i32 3
  store i8 %36, ptr %37, align 1
  %38 = getelementptr inbounds %struct.inquiry_entry, ptr %24, i32 0, i32 4, i32 5
  %39 = load i16, ptr %38, align 4
  %40 = or i16 %39, -32768
  %41 = getelementptr inbounds %struct.hci_cp_create_conn, ptr %2, i32 0, i32 4
  store i16 %40, ptr %41, align 1
  br label %42

42:                                               ; preds = %32, %26
  %43 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 18
  %44 = getelementptr inbounds %struct.inquiry_entry, ptr %24, i32 0, i32 4, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %43, ptr noundef align 1 dereferenceable(3) %44, i32 3, i1 false)
  br label %45

45:                                               ; preds = %42, %12
  %46 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 20
  %47 = load i16, ptr %46, align 2
  %48 = getelementptr inbounds %struct.hci_cp_create_conn, ptr %2, i32 0, i32 1
  store i16 %47, ptr %48, align 1
  %49 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 21
  %50 = load i8, ptr %49, align 2
  %51 = and i8 %50, 32
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 101
  %55 = load i16, ptr %54, align 2
  %56 = and i16 %55, 1
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53, %45
  br label %59

59:                                               ; preds = %58, %53
  %60 = phi i8 [ 0, %58 ], [ 1, %53 ]
  %61 = getelementptr inbounds %struct.hci_cp_create_conn, ptr %2, i32 0, i32 5
  store i8 %60, ptr %61, align 1
  %62 = call i32 @hci_send_cmd(ptr noundef %4, i16 noundef zeroext 1029, i32 noundef 13, ptr noundef nonnull %2) #11
  br label %63

63:                                               ; preds = %59, %10
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @hci_connect_sco(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i16 noundef zeroext %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.hci_cp_add_sco, align 4
  %7 = alloca %struct.hci_cp_exit_sniff_mode, align 2
  %8 = tail call ptr @hci_connect_acl(ptr noundef %0, ptr noundef %2, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 2)
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %139, label %10

10:                                               ; preds = %5
  %11 = trunc i32 %1 to i8
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %27, label %15

15:                                               ; preds = %24, %10
  %16 = phi ptr [ %25, %24 ], [ %13, %10 ]
  %17 = getelementptr inbounds %struct.hci_conn, ptr %16, i32 0, i32 14
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, %11
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.hci_conn, ptr %16, i32 0, i32 2
  %22 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %21, ptr noundef dereferenceable(6) %2, i32 6) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20, %15
  %25 = load volatile ptr, ptr %16, align 4
  %26 = icmp eq ptr %25, %12
  br i1 %26, label %27, label %15

27:                                               ; preds = %24, %10
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  br label %30

28:                                               ; preds = %20
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  %29 = icmp eq ptr %16, null
  br i1 %29, label %30, label %69

30:                                               ; preds = %28, %27
  %31 = tail call ptr @hci_conn_add(ptr noundef %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 0)
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %69

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #11, !srcloc !9
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 1, ptr elementtype(i32) %34) #11, !srcloc !10
  %36 = extractvalue { i32, i32 } %35, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %139

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 14
  %40 = load i8, ptr %39, align 1
  switch i8 %40, label %60 [
    i8 1, label %41
    i8 -128, label %41
    i8 -127, label %56
  ]

41:                                               ; preds = %38, %38
  %42 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 60
  %43 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %42) #11
  %44 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 12
  %45 = load i16, ptr %44, align 4
  %46 = icmp eq i16 %45, 1
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 31
  %49 = load i16, ptr %48, align 2
  %50 = zext i16 %49 to i32
  %51 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 16
  %52 = load i8, ptr %51, align 1, !range !12
  %53 = xor i8 %52, 1
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %50, %54
  br label %60

56:                                               ; preds = %38
  %57 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 31
  %58 = load i16, ptr %57, align 2
  %59 = zext i16 %58 to i32
  br label %60

60:                                               ; preds = %56, %47, %41, %38
  %61 = phi i32 [ %59, %56 ], [ %55, %47 ], [ 0, %41 ], [ 0, %38 ]
  %62 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 58
  %63 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %62) #11
  %64 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 65
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.hci_dev, ptr %65, i32 0, i32 138
  %67 = load ptr, ptr %66, align 4
  %68 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %67, ptr noundef %62, i32 noundef %61) #11
  br label %139

69:                                               ; preds = %30, %28
  %70 = phi ptr [ %16, %28 ], [ %31, %30 ]
  %71 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 69
  store ptr %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.hci_conn, ptr %70, i32 0, i32 69
  store ptr %8, ptr %72, align 4
  %73 = getelementptr inbounds %struct.hci_conn, ptr %70, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %73) #11, !srcloc !9
  %74 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %73, ptr %73, i32 1, ptr elementtype(i32) %73) #11, !srcloc !23
  %75 = getelementptr inbounds %struct.hci_conn, ptr %70, i32 0, i32 58
  %76 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %75) #11
  %77 = getelementptr inbounds %struct.hci_conn, ptr %70, i32 0, i32 33
  store i16 %3, ptr %77, align 2
  %78 = getelementptr inbounds %struct.hci_conn, ptr %70, i32 0, i32 70
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(7) %78, ptr noundef align 1 dereferenceable(7) %4, i32 7, i1 false)
  %79 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 12
  %80 = load i16, ptr %79, align 4
  %81 = icmp eq i16 %80, 1
  br i1 %81, label %82, label %139

82:                                               ; preds = %69
  %83 = getelementptr inbounds %struct.hci_conn, ptr %70, i32 0, i32 12
  %84 = load i16, ptr %83, align 4
  switch i16 %84, label %139 [
    i16 2, label %85
    i16 9, label %85
  ]

85:                                               ; preds = %82, %82
  %86 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 47
  tail call void @_set_bit(i32 noundef 10, ptr noundef %86) #11
  %87 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 65
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 13
  %90 = load i8, ptr %89, align 2
  %91 = icmp eq i8 %90, 2
  br i1 %91, label %92, label %100

92:                                               ; preds = %85
  %93 = load volatile i32, ptr %86, align 4
  %94 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %86) #11
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #11
  %97 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 11
  %98 = load i16, ptr %97, align 2
  store i16 %98, ptr %7, align 2
  %99 = call i32 @hci_send_cmd(ptr noundef %88, i16 noundef zeroext 2052, i32 noundef 2, ptr noundef nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #11
  br label %100

100:                                              ; preds = %96, %92, %85
  %101 = getelementptr inbounds %struct.hci_dev, ptr %88, i32 0, i32 102
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.hci_dev, ptr %88, i32 0, i32 138
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 60
  %108 = call i32 @__msecs_to_jiffies(i32 noundef %102) #11
  %109 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %106, ptr noundef %107, i32 noundef %108) #11
  br label %110

110:                                              ; preds = %104, %100
  %111 = load volatile i32, ptr %86, align 4
  %112 = and i32 %111, 16
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %110
  call void @_set_bit(i32 noundef 5, ptr noundef %86) #11
  br label %139

115:                                              ; preds = %110
  %116 = load ptr, ptr %71, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %139, label %118

118:                                              ; preds = %115
  %119 = load ptr, ptr %87, align 4
  %120 = getelementptr %struct.hci_dev, ptr %119, i32 0, i32 21, i32 0, i32 3
  %121 = load i8, ptr %120, align 1
  %122 = icmp sgt i8 %121, -1
  %123 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 11
  %124 = load i16, ptr %123, align 2
  br i1 %122, label %127, label %125

125:                                              ; preds = %118
  %126 = call zeroext i1 @hci_setup_sync(ptr noundef nonnull %116, i16 noundef zeroext %124) #11
  br label %139

127:                                              ; preds = %118
  %128 = getelementptr inbounds %struct.hci_conn, ptr %116, i32 0, i32 65
  %129 = load ptr, ptr %128, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  %130 = getelementptr inbounds %struct.hci_conn, ptr %116, i32 0, i32 12
  store i16 5, ptr %130, align 4
  %131 = getelementptr inbounds %struct.hci_conn, ptr %116, i32 0, i32 16
  store i8 1, ptr %131, align 1
  %132 = getelementptr inbounds %struct.hci_conn, ptr %116, i32 0, i32 17
  %133 = load i8, ptr %132, align 2
  %134 = add i8 %133, 1
  store i8 %134, ptr %132, align 2
  store i16 %124, ptr %6, align 4
  %135 = getelementptr inbounds %struct.hci_conn, ptr %116, i32 0, i32 20
  %136 = load i16, ptr %135, align 2
  %137 = getelementptr inbounds %struct.hci_cp_add_sco, ptr %6, i32 0, i32 1
  store i16 %136, ptr %137, align 2
  %138 = call i32 @hci_send_cmd(ptr noundef %129, i16 noundef zeroext 1031, i32 noundef 4, ptr noundef nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  br label %139

139:                                              ; preds = %127, %125, %115, %114, %82, %69, %60, %33, %5
  %140 = phi ptr [ %70, %114 ], [ %8, %5 ], [ %70, %82 ], [ %70, %69 ], [ inttoptr (i32 -12 to ptr), %33 ], [ inttoptr (i32 -12 to ptr), %60 ], [ %70, %115 ], [ %70, %125 ], [ %70, %127 ]
  ret ptr %140
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_conn_enter_active_mode(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.hci_cp_exit_sniff_mode, align 2
  %4 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 65
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 13
  %7 = load i8, ptr %6, align 2
  %8 = icmp eq i8 %7, 2
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 47
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 1024
  %13 = icmp ne i32 %12, 0
  %14 = icmp ne i8 %1, 0
  %15 = or i1 %14, %13
  br i1 %15, label %16, label %23

16:                                               ; preds = %9
  %17 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %10) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #11
  %20 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 11
  %21 = load i16, ptr %20, align 2
  store i16 %21, ptr %3, align 2
  %22 = call i32 @hci_send_cmd(ptr noundef %5, i16 noundef zeroext 2052, i32 noundef 2, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  br label %23

23:                                               ; preds = %19, %16, %9, %2
  %24 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 102
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 138
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 60
  %31 = call i32 @__msecs_to_jiffies(i32 noundef %25) #11
  %32 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %29, ptr noundef %30, i32 noundef %31) #11
  br label %33

33:                                               ; preds = %27, %23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_conn_check_link_mode(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 65
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 206
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 131072
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %1
  %9 = load volatile i32, ptr %4, align 4
  %10 = and i32 %9, 65536
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %50, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 47
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %50, label %17

17:                                               ; preds = %12
  %18 = load volatile i32, ptr %13, align 4
  %19 = and i32 %18, 512
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %50, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 22
  %23 = load i8, ptr %22, align 2
  %24 = icmp eq i8 %23, 8
  br i1 %24, label %25, label %50

25:                                               ; preds = %21, %1
  %26 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 24
  %27 = load i8, ptr %26, align 4
  %28 = icmp eq i8 %27, 4
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 47
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 512
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %35) #11
  br label %50

36:                                               ; preds = %29, %25
  %37 = load volatile i32, ptr %4, align 4
  %38 = and i32 %37, 32768
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 47
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %42, 128
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load volatile i32, ptr %41, align 4
  %47 = and i32 %46, 4096
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45, %40, %36
  br label %50

50:                                               ; preds = %49, %45, %34, %21, %17, %12, %8
  %51 = phi i32 [ 1, %49 ], [ 0, %34 ], [ 0, %21 ], [ 0, %17 ], [ 0, %12 ], [ 0, %45 ], [ 0, %8 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_conn_security(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i1 noundef zeroext %3) #0 {
  %5 = alloca %struct.hci_cp_set_conn_encrypt, align 2
  %6 = alloca %struct.hci_cp_auth_requested, align 2
  %7 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 14
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, -128
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = tail call i32 @smp_conn_security(ptr noundef %0, i8 noundef zeroext %1) #11
  br label %107

12:                                               ; preds = %4
  switch i8 %1, label %25 [
    i8 0, label %107
    i8 1, label %13
  ]

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 65
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.hci_dev, ptr %15, i32 0, i32 206
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 32768
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %107, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 47
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 128
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %107, label %25

25:                                               ; preds = %20, %12
  %26 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 47
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 8192
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %53, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 22
  %32 = load i8, ptr %31, align 2
  %33 = icmp eq i8 %32, 8
  %34 = icmp eq i8 %1, 4
  %35 = and i1 %34, %33
  br i1 %35, label %88, label %36

36:                                               ; preds = %30
  %37 = icmp eq i8 %32, 5
  %38 = icmp eq i8 %1, 3
  br i1 %37, label %41, label %39

39:                                               ; preds = %36
  %40 = and i1 %38, %33
  br i1 %40, label %88, label %42

41:                                               ; preds = %36
  br i1 %38, label %88, label %53

42:                                               ; preds = %39
  switch i8 %32, label %53 [
    i8 4, label %43
    i8 7, label %43
    i8 0, label %46
  ]

43:                                               ; preds = %42, %42
  %44 = add i8 %1, -1
  %45 = icmp ult i8 %44, 2
  br i1 %45, label %88, label %53

46:                                               ; preds = %42
  %47 = add i8 %1, -1
  %48 = icmp ult i8 %47, 2
  br i1 %48, label %88, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 26
  %51 = load i8, ptr %50, align 2
  %52 = icmp eq i8 %51, 16
  br i1 %52, label %88, label %53

53:                                               ; preds = %49, %43, %42, %41, %25
  %54 = load volatile i32, ptr %26, align 4
  %55 = and i32 %54, 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %107

57:                                               ; preds = %53
  br i1 %3, label %58, label %59

58:                                               ; preds = %57
  tail call void @_set_bit(i32 noundef 17, ptr noundef %26) #11
  br label %59

59:                                               ; preds = %58, %57
  %60 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 25
  %61 = load i8, ptr %60, align 1
  %62 = tail call i8 @llvm.umax.i8(i8 %61, i8 %1) #11
  %63 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 24
  %64 = load i8, ptr %63, align 4
  %65 = icmp ugt i8 %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store i8 %62, ptr %60, align 1
  br label %71

67:                                               ; preds = %59
  %68 = load volatile i32, ptr %26, align 4
  %69 = and i32 %68, 8192
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %67, %66
  %72 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 23
  %73 = load i8, ptr %72, align 1
  %74 = and i8 %73, 1
  %75 = or i8 %74, %2
  store i8 %75, ptr %72, align 1
  %76 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %26) #11
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %107

78:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #11
  %79 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 11
  %80 = load i16, ptr %79, align 2
  store i16 %80, ptr %6, align 2
  %81 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 65
  %82 = load ptr, ptr %81, align 4
  %83 = call i32 @hci_send_cmd(ptr noundef %82, i16 noundef zeroext 1041, i32 noundef 2, ptr noundef nonnull %6) #11
  %84 = load volatile i32, ptr %26, align 4
  %85 = and i32 %84, 4096
  %86 = icmp eq i32 %85, 0
  %87 = select i1 %86, i32 2, i32 1
  call void @_set_bit(i32 noundef %87, ptr noundef %26) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #11
  br label %107

88:                                               ; preds = %67, %49, %46, %43, %41, %39, %30
  %89 = load volatile i32, ptr %26, align 4
  %90 = and i32 %89, 4096
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 27
  %94 = load i8, ptr %93, align 1
  %95 = icmp ne i8 %94, 0
  %96 = zext i1 %95 to i32
  br label %107

97:                                               ; preds = %88
  %98 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %26) #11
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #11
  %101 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 11
  %102 = load i16, ptr %101, align 2
  store i16 %102, ptr %5, align 2
  %103 = getelementptr inbounds %struct.hci_cp_set_conn_encrypt, ptr %5, i32 0, i32 1
  store i8 1, ptr %103, align 2
  %104 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 65
  %105 = load ptr, ptr %104, align 4
  %106 = call i32 @hci_send_cmd(ptr noundef %105, i16 noundef zeroext 1043, i32 noundef 3, ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #11
  br label %107

107:                                              ; preds = %100, %97, %92, %78, %71, %53, %20, %13, %12, %10
  %108 = phi i32 [ %11, %10 ], [ 1, %12 ], [ 1, %20 ], [ 0, %53 ], [ %96, %92 ], [ 0, %97 ], [ 0, %100 ], [ 1, %13 ], [ 0, %78 ], [ 0, %71 ]
  ret i32 %108
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_conn_security(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @hci_conn_check_secure(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #5 {
  %3 = add i8 %1, -5
  %4 = icmp ult i8 %3, -2
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 24
  %7 = load i8, ptr %6, align 4
  %8 = add i8 %7, -3
  %9 = icmp ult i8 %8, 2
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %5, %2
  %12 = phi i32 [ 1, %2 ], [ %10, %5 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_conn_switch_role(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = alloca %struct.hci_cp_switch_role, align 1
  %4 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 15
  %5 = load i8, ptr %4, align 8
  %6 = icmp eq i8 %5, %1
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 47
  %9 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %8) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #11
  %12 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, ptr noundef align 1 dereferenceable(6) %12, i32 6, i1 false) #11
  %13 = getelementptr inbounds %struct.hci_cp_switch_role, ptr %3, i32 0, i32 1
  store i8 %1, ptr %13, align 1
  %14 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 65
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 @hci_send_cmd(ptr noundef %15, i16 noundef zeroext 2059, i32 noundef 7, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #11
  br label %17

17:                                               ; preds = %11, %7, %2
  %18 = phi i32 [ 1, %2 ], [ 0, %11 ], [ 0, %7 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_conn_hash_flush(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %28, label %5

5:                                                ; preds = %25, %1
  %6 = phi ptr [ %7, %25 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 12
  store i16 9, ptr %8, align 4
  tail call void @mutex_lock(ptr noundef nonnull @hci_cb_list_lock) #11
  %9 = load ptr, ptr @hci_cb_list, align 4
  %10 = icmp eq ptr %9, @hci_cb_list
  br i1 %10, label %20, label %11

11:                                               ; preds = %17, %5
  %12 = phi ptr [ %18, %17 ], [ %9, %5 ]
  %13 = getelementptr inbounds %struct.hci_cb, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call void %14(ptr noundef %6, i8 noundef zeroext 22) #11
  br label %17

17:                                               ; preds = %16, %11
  %18 = load ptr, ptr %12, align 4
  %19 = icmp eq ptr %18, @hci_cb_list
  br i1 %19, label %20, label %11

20:                                               ; preds = %17, %5
  tail call void @mutex_unlock(ptr noundef nonnull @hci_cb_list_lock) #11
  %21 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 73
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void %22(ptr noundef %6, i8 noundef zeroext 22) #11
  br label %25

25:                                               ; preds = %24, %20
  %26 = tail call i32 @hci_conn_del(ptr noundef %6)
  %27 = icmp eq ptr %7, %2
  br i1 %27, label %28, label %5

28:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_conn_check_pending(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %2) #11
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %18, label %6

6:                                                ; preds = %15, %1
  %7 = phi ptr [ %16, %15 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.hci_conn, ptr %7, i32 0, i32 14
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 1
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.hci_conn, ptr %7, i32 0, i32 12
  %13 = load i16, ptr %12, align 4
  %14 = icmp eq i16 %13, 6
  br i1 %14, label %19, label %15

15:                                               ; preds = %11, %6
  %16 = load volatile ptr, ptr %7, align 4
  %17 = icmp eq ptr %16, %3
  br i1 %17, label %18, label %6

18:                                               ; preds = %15, %1
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  br label %22

19:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  %20 = icmp eq ptr %7, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  tail call fastcc void @hci_acl_create_connection(ptr noundef nonnull %7)
  br label %22

22:                                               ; preds = %21, %19, %18
  tail call void @mutex_unlock(ptr noundef %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_get_conn_list(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.hci_conn_list_req, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !15
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 4, i32 -1090519040) #13, !srcloc !24
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14, !prof !25

6:                                                ; preds = %1
  %7 = tail call ptr @llvm.thread.pointer() #11
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #14, !srcloc !26
  %10 = and i32 %9, -13
  %11 = or i32 %10, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #11, !srcloc !27
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !28
  %12 = call i32 @arm_copy_from_user(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #11, !srcloc !27
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !28
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14, !prof !25

14:                                               ; preds = %6, %1
  %15 = phi i32 [ %12, %6 ], [ 4, %1 ]
  %16 = sub i32 4, %15
  %17 = getelementptr i8, ptr %2, i32 %16
  call void @llvm.memset.p0.i32(ptr align 1 %17, i8 0, i32 %15, i1 false) #11
  br label %114

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.hci_conn_list_req, ptr %2, i32 0, i32 1
  %20 = load i16, ptr %19, align 2
  %21 = add i16 %20, -513
  %22 = icmp ult i16 %21, -512
  br i1 %22, label %114, label %23

23:                                               ; preds = %18
  %24 = zext i16 %20 to i32
  %25 = shl nuw nsw i32 %24, 4
  %26 = or i32 %25, 4
  %27 = call noalias align 64 ptr @__kmalloc(i32 noundef %26, i32 noundef 3264) #15
  %28 = icmp eq ptr %27, null
  br i1 %28, label %114, label %29

29:                                               ; preds = %23
  %30 = load i16, ptr %2, align 4
  %31 = zext i16 %30 to i32
  %32 = call ptr @hci_dev_get(i32 noundef %31) #11
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  call void @kfree(ptr noundef nonnull %27) #11
  br label %114

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.hci_conn_list_req, ptr %27, i32 0, i32 2
  %37 = getelementptr inbounds %struct.hci_dev, ptr %32, i32 0, i32 1
  call void @mutex_lock(ptr noundef %37) #11
  %38 = getelementptr inbounds %struct.hci_dev, ptr %32, i32 0, i32 183
  %39 = load i16, ptr %19, align 2
  %40 = call i16 @llvm.umax.i16(i16 %39, i16 1)
  %41 = zext i16 %40 to i32
  br label %42

42:                                               ; preds = %47, %35
  %43 = phi i32 [ 0, %35 ], [ %84, %47 ]
  %44 = phi ptr [ %38, %35 ], [ %45, %47 ]
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq ptr %45, %38
  br i1 %46, label %86, label %47

47:                                               ; preds = %42
  %48 = getelementptr %struct.hci_conn_info, ptr %36, i32 %43
  %49 = getelementptr %struct.hci_conn_info, ptr %36, i32 %43, i32 1
  %50 = getelementptr inbounds %struct.hci_conn, ptr %45, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %49, ptr noundef align 1 dereferenceable(6) %50, i32 6, i1 false) #11
  %51 = getelementptr inbounds %struct.hci_conn, ptr %45, i32 0, i32 11
  %52 = load i16, ptr %51, align 2
  store i16 %52, ptr %48, align 4
  %53 = getelementptr inbounds %struct.hci_conn, ptr %45, i32 0, i32 14
  %54 = load i8, ptr %53, align 1
  %55 = getelementptr %struct.hci_conn_info, ptr %36, i32 %43, i32 2
  store i8 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.hci_conn, ptr %45, i32 0, i32 16
  %57 = load i8, ptr %56, align 1, !range !12
  %58 = getelementptr %struct.hci_conn_info, ptr %36, i32 %43, i32 3
  store i8 %57, ptr %58, align 1
  %59 = getelementptr inbounds %struct.hci_conn, ptr %45, i32 0, i32 12
  %60 = load i16, ptr %59, align 4
  %61 = getelementptr %struct.hci_conn_info, ptr %36, i32 %43, i32 4
  store i16 %60, ptr %61, align 2
  %62 = getelementptr inbounds %struct.hci_conn, ptr %45, i32 0, i32 15
  %63 = load i8, ptr %62, align 8
  %64 = icmp eq i8 %63, 0
  %65 = zext i1 %64 to i32
  %66 = getelementptr inbounds %struct.hci_conn, ptr %45, i32 0, i32 47
  %67 = load volatile i32, ptr %66, align 4
  %68 = lshr i32 %67, 10
  %69 = and i32 %68, 4
  %70 = or i32 %69, %65
  %71 = load volatile i32, ptr %66, align 4
  %72 = lshr i32 %71, 12
  %73 = and i32 %72, 2
  %74 = or i32 %70, %73
  %75 = load volatile i32, ptr %66, align 4
  %76 = lshr i32 %75, 9
  %77 = and i32 %76, 32
  %78 = or i32 %74, %77
  %79 = load volatile i32, ptr %66, align 4
  %80 = lshr i32 %79, 9
  %81 = and i32 %80, 64
  %82 = or i32 %78, %81
  %83 = getelementptr %struct.hci_conn_info, ptr %36, i32 %43, i32 5
  store i32 %82, ptr %83, align 16
  %84 = add nuw nsw i32 %43, 1
  %85 = icmp eq i32 %84, %41
  br i1 %85, label %86, label %42

86:                                               ; preds = %47, %42
  %87 = phi i32 [ %41, %47 ], [ %43, %42 ]
  call void @mutex_unlock(ptr noundef %37) #11
  %88 = getelementptr inbounds %struct.hci_dev, ptr %32, i32 0, i32 4
  %89 = load i16, ptr %88, align 8
  store i16 %89, ptr %27, align 64
  %90 = trunc i32 %87 to i16
  %91 = getelementptr inbounds %struct.hci_conn_list_req, ptr %27, i32 0, i32 1
  store i16 %90, ptr %91, align 2
  %92 = shl i32 %87, 4
  %93 = or i32 %92, 4
  %94 = getelementptr inbounds %struct.hci_dev, ptr %32, i32 0, i32 204
  call void @put_device(ptr noundef %94) #11
  %95 = icmp slt i32 %93, 0
  %96 = load i1, ptr @check_copy_size.__already_done, align 1
  %97 = xor i1 %96, true
  %98 = select i1 %95, i1 %97, i1 false
  br i1 %98, label %99, label %100, !prof !14

99:                                               ; preds = %86
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %100

100:                                              ; preds = %99, %86
  br i1 %95, label %112, label %101, !prof !14

101:                                              ; preds = %100
  %102 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %93, i32 -1090519040) #13, !srcloc !29
  %103 = extractvalue { i32, i32 } %102, 0
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %101
  %106 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #14, !srcloc !26
  %107 = and i32 %106, -13
  %108 = or i32 %107, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %108) #11, !srcloc !27
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !28
  %109 = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %27, i32 noundef %93) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %106) #11, !srcloc !27
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !28
  %110 = icmp eq i32 %109, 0
  %111 = select i1 %110, i32 0, i32 -14
  br label %112

112:                                              ; preds = %105, %101, %100
  %113 = phi i32 [ -14, %100 ], [ %111, %105 ], [ -14, %101 ]
  call void @kfree(ptr noundef nonnull %27) #11
  br label %114

114:                                              ; preds = %112, %34, %23, %18, %14
  %115 = phi i32 [ %113, %112 ], [ -19, %34 ], [ -22, %18 ], [ -12, %23 ], [ -14, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret i32 %115
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_dev_get(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_get_conn_info(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.hci_conn_info_req, align 8
  %4 = alloca %struct.hci_conn_info, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store i64 0, ptr %3, align 8, !annotation !15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %5 = getelementptr i8, ptr %1, i32 8
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 8, i32 -1090519040) #13, !srcloc !24
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17, !prof !25

9:                                                ; preds = %2
  %10 = tail call ptr @llvm.thread.pointer() #11
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #14, !srcloc !26
  %13 = and i32 %12, -13
  %14 = or i32 %13, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #11, !srcloc !27
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !28
  %15 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #11, !srcloc !27
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !28
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17, !prof !25

17:                                               ; preds = %9, %2
  %18 = phi i32 [ %15, %9 ], [ 8, %2 ]
  %19 = sub i32 8, %18
  %20 = getelementptr i8, ptr %3, i32 %19
  call void @llvm.memset.p0.i32(ptr align 1 %20, i8 0, i32 %18, i1 false) #11
  br label %89

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  call void @mutex_lock(ptr noundef %22) #11
  %23 = getelementptr inbounds %struct.hci_conn_info_req, ptr %3, i32 0, i32 1
  %24 = load i8, ptr %23, align 2
  %25 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  %26 = load volatile ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %40, label %28

28:                                               ; preds = %37, %21
  %29 = phi ptr [ %38, %37 ], [ %26, %21 ]
  %30 = getelementptr inbounds %struct.hci_conn, ptr %29, i32 0, i32 14
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, %24
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.hci_conn, ptr %29, i32 0, i32 2
  %35 = call i32 @bcmp(ptr noundef dereferenceable(6) %34, ptr noundef nonnull dereferenceable(6) %3, i32 6) #11
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33, %28
  %38 = load volatile ptr, ptr %29, align 4
  %39 = icmp eq ptr %38, %25
  br i1 %39, label %40, label %28

40:                                               ; preds = %37, %21
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  br label %88

41:                                               ; preds = %33
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  %42 = icmp eq ptr %29, null
  br i1 %42, label %88, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.hci_conn, ptr %29, i32 0, i32 14
  %45 = getelementptr inbounds %struct.hci_conn_info, ptr %4, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %45, ptr noundef align 1 dereferenceable(6) %34, i32 6, i1 false) #11
  %46 = getelementptr inbounds %struct.hci_conn, ptr %29, i32 0, i32 11
  %47 = load i16, ptr %46, align 2
  store i16 %47, ptr %4, align 4
  %48 = load i8, ptr %44, align 1
  %49 = getelementptr inbounds %struct.hci_conn_info, ptr %4, i32 0, i32 2
  store i8 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.hci_conn, ptr %29, i32 0, i32 16
  %51 = load i8, ptr %50, align 1, !range !12
  %52 = getelementptr inbounds %struct.hci_conn_info, ptr %4, i32 0, i32 3
  store i8 %51, ptr %52, align 1
  %53 = getelementptr inbounds %struct.hci_conn, ptr %29, i32 0, i32 12
  %54 = load i16, ptr %53, align 4
  %55 = getelementptr inbounds %struct.hci_conn_info, ptr %4, i32 0, i32 4
  store i16 %54, ptr %55, align 2
  %56 = getelementptr inbounds %struct.hci_conn, ptr %29, i32 0, i32 15
  %57 = load i8, ptr %56, align 8
  %58 = icmp eq i8 %57, 0
  %59 = zext i1 %58 to i32
  %60 = getelementptr inbounds %struct.hci_conn, ptr %29, i32 0, i32 47
  %61 = load volatile i32, ptr %60, align 4
  %62 = lshr i32 %61, 10
  %63 = and i32 %62, 4
  %64 = or i32 %63, %59
  %65 = load volatile i32, ptr %60, align 4
  %66 = lshr i32 %65, 12
  %67 = and i32 %66, 2
  %68 = or i32 %64, %67
  %69 = load volatile i32, ptr %60, align 4
  %70 = lshr i32 %69, 9
  %71 = and i32 %70, 32
  %72 = or i32 %68, %71
  %73 = load volatile i32, ptr %60, align 4
  %74 = lshr i32 %73, 9
  %75 = and i32 %74, 64
  %76 = or i32 %72, %75
  %77 = getelementptr inbounds %struct.hci_conn_info, ptr %4, i32 0, i32 5
  store i32 %76, ptr %77, align 4
  call void @mutex_unlock(ptr noundef %22) #11
  %78 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %5, i32 16, i32 -1090519040) #13, !srcloc !29
  %79 = extractvalue { i32, i32 } %78, 0
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %43
  %82 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #14, !srcloc !26
  %83 = and i32 %82, -13
  %84 = or i32 %83, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %84) #11, !srcloc !27
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !28
  %85 = call i32 @arm_copy_to_user(ptr noundef %5, ptr noundef nonnull %4, i32 noundef 16) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %82) #11, !srcloc !27
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !28
  %86 = icmp eq i32 %85, 0
  %87 = select i1 %86, i32 0, i32 -14
  br label %89

88:                                               ; preds = %41, %40
  call void @mutex_unlock(ptr noundef %22) #11
  br label %89

89:                                               ; preds = %88, %81, %43, %17
  %90 = phi i32 [ -2, %88 ], [ -14, %17 ], [ -14, %43 ], [ %87, %81 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_get_auth_info(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.hci_auth_info_req, align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %3, i8 0, i32 7, i1 false), !annotation !15
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 7, i32 -1090519040) #13
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15, !prof !25

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #11
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #14, !srcloc !26
  %11 = and i32 %10, -13
  %12 = or i32 %11, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #11, !srcloc !27
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !28
  %13 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 7) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #11, !srcloc !27
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !28
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !25

15:                                               ; preds = %7, %2
  %16 = phi i32 [ %13, %7 ], [ 7, %2 ]
  %17 = sub i32 7, %16
  %18 = getelementptr i8, ptr %3, i32 %17
  call void @llvm.memset.p0.i32(ptr align 1 %18, i8 0, i32 %16, i1 false) #11
  br label %50

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  call void @mutex_lock(ptr noundef %20) #11
  %21 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %36, label %24

24:                                               ; preds = %33, %19
  %25 = phi ptr [ %34, %33 ], [ %22, %19 ]
  %26 = getelementptr inbounds %struct.hci_conn, ptr %25, i32 0, i32 14
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 1
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.hci_conn, ptr %25, i32 0, i32 2
  %31 = call i32 @bcmp(ptr noundef dereferenceable(6) %30, ptr noundef nonnull dereferenceable(6) %3, i32 6) #11
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29, %24
  %34 = load volatile ptr, ptr %25, align 4
  %35 = icmp eq ptr %34, %21
  br i1 %35, label %36, label %24

36:                                               ; preds = %33, %19
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  br label %49

37:                                               ; preds = %29
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  %38 = icmp eq ptr %25, null
  br i1 %38, label %49, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.hci_conn, ptr %25, i32 0, i32 23
  %41 = load i8, ptr %40, align 1
  %42 = getelementptr inbounds %struct.hci_auth_info_req, ptr %3, i32 0, i32 1
  store i8 %41, ptr %42, align 1
  call void @mutex_unlock(ptr noundef %20) #11
  %43 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #14, !srcloc !26
  %44 = and i32 %43, -13
  %45 = or i32 %44, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %45) #11, !srcloc !27
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !28
  %46 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 7) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #11, !srcloc !27
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !28
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 0, i32 -14
  br label %50

49:                                               ; preds = %37, %36
  call void @mutex_unlock(ptr noundef %20) #11
  br label %50

50:                                               ; preds = %49, %39, %15
  %51 = phi i32 [ -2, %49 ], [ -14, %15 ], [ %48, %39 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #11
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @hci_chan_create(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 47
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 262144
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 40) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 63
  %12 = tail call ptr @get_device(ptr noundef %11) #11
  %13 = getelementptr inbounds %struct.hci_chan, ptr %8, i32 0, i32 2
  store ptr %0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.hci_chan, ptr %8, i32 0, i32 3
  %15 = getelementptr inbounds %struct.hci_chan, ptr %8, i32 0, i32 3, i32 2
  store i32 0, ptr %15, align 4
  store ptr %14, ptr %14, align 8
  %16 = getelementptr inbounds %struct.hci_chan, ptr %8, i32 0, i32 3, i32 0, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  %17 = getelementptr inbounds %struct.hci_chan, ptr %8, i32 0, i32 3, i32 1
  store i32 0, ptr %17, align 8
  %18 = getelementptr inbounds %struct.hci_chan, ptr %8, i32 0, i32 5
  store i8 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 57
  %20 = load ptr, ptr %19, align 4
  store ptr %20, ptr %8, align 8
  %21 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %19, ptr %21, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  store volatile ptr %8, ptr %19, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %8, ptr %22, align 4
  br label %23

23:                                               ; preds = %10, %6, %1
  %24 = phi ptr [ %8, %10 ], [ null, %1 ], [ null, %6 ]
  ret ptr %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_chan_del(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_chan, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %5, ptr %7, align 4
  store volatile ptr %6, ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %4, align 4
  tail call void @synchronize_rcu() #11
  %8 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 47
  tail call void @_set_bit(i32 noundef 18, ptr noundef %8) #11
  %9 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 63
  tail call void @put_device(ptr noundef %9) #11
  %10 = getelementptr inbounds %struct.hci_chan, ptr %0, i32 0, i32 3
  tail call void @skb_queue_purge(ptr noundef %10) #11
  tail call void @kfree(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_chan_list_flush(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 57
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %17, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.hci_chan, ptr %6, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  store volatile ptr %7, ptr %11, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %10, align 4
  tail call void @synchronize_rcu() #11
  %13 = getelementptr inbounds %struct.hci_conn, ptr %9, i32 0, i32 47
  tail call void @_set_bit(i32 noundef 18, ptr noundef %13) #11
  %14 = getelementptr inbounds %struct.hci_conn, ptr %9, i32 0, i32 63
  tail call void @put_device(ptr noundef %14) #11
  %15 = getelementptr inbounds %struct.hci_chan, ptr %6, i32 0, i32 3
  tail call void @skb_queue_purge(ptr noundef %15) #11
  tail call void @kfree(ptr noundef %6) #11
  %16 = icmp eq ptr %7, %2
  br i1 %16, label %17, label %5

17:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @hci_chan_lookup_handle(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  br label %4

4:                                                ; preds = %18, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %18 ]
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %21, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 57
  br label %10

10:                                               ; preds = %14, %8
  %11 = phi ptr [ %9, %8 ], [ %12, %14 ]
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %9
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hci_chan, ptr %12, i32 0, i32 1
  %16 = load i16, ptr %15, align 4
  %17 = icmp eq i16 %16, %1
  br i1 %17, label %18, label %10

18:                                               ; preds = %14, %10
  %19 = phi ptr [ %12, %14 ], [ null, %10 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %4, label %21

21:                                               ; preds = %18, %4
  %22 = phi ptr [ %19, %18 ], [ null, %4 ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  ret ptr %22
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @hci_conn_get_phy(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 14
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %88 [
    i8 0, label %4
    i8 1, label %5
    i8 2, label %38
    i8 -128, label %60
  ]

4:                                                ; preds = %1
  br label %88

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 20
  %7 = load i16, ptr %6, align 2
  %8 = and i16 %7, 3072
  %9 = icmp eq i16 %8, 0
  %10 = select i1 %9, i32 1, i32 3
  %11 = icmp ult i16 %7, 16384
  %12 = or i32 %10, 4
  %13 = select i1 %11, i32 %10, i32 %12
  %14 = and i16 %7, 2
  %15 = icmp eq i16 %14, 0
  %16 = or i32 %13, 8
  %17 = select i1 %15, i32 %16, i32 %13
  %18 = and i16 %7, 256
  %19 = icmp eq i16 %18, 0
  %20 = or i32 %17, 16
  %21 = select i1 %19, i32 %20, i32 %17
  %22 = and i16 %7, 4096
  %23 = icmp eq i16 %22, 0
  %24 = or i32 %21, 32
  %25 = select i1 %23, i32 %24, i32 %21
  %26 = and i16 %7, 4
  %27 = icmp eq i16 %26, 0
  %28 = or i32 %25, 64
  %29 = select i1 %27, i32 %28, i32 %25
  %30 = and i16 %7, 512
  %31 = icmp eq i16 %30, 0
  %32 = or i32 %29, 128
  %33 = select i1 %31, i32 %32, i32 %29
  %34 = and i16 %7, 8192
  %35 = icmp eq i16 %34, 0
  %36 = or i32 %33, 256
  %37 = select i1 %35, i32 %36, i32 %33
  br label %88

38:                                               ; preds = %1
  %39 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 20
  %40 = load i16, ptr %39, align 2
  %41 = and i16 %40, 48
  %42 = icmp eq i16 %41, 0
  %43 = select i1 %42, i32 3, i32 1
  %44 = and i16 %40, 64
  %45 = icmp eq i16 %44, 0
  %46 = or i32 %43, 8
  %47 = select i1 %45, i32 %46, i32 %43
  %48 = and i16 %40, 256
  %49 = icmp eq i16 %48, 0
  %50 = or i32 %47, 16
  %51 = select i1 %49, i32 %50, i32 %47
  %52 = and i16 %40, 128
  %53 = icmp eq i16 %52, 0
  %54 = or i32 %51, 64
  %55 = select i1 %53, i32 %54, i32 %51
  %56 = and i16 %40, 512
  %57 = icmp eq i16 %56, 0
  %58 = or i32 %55, 128
  %59 = select i1 %57, i32 %58, i32 %55
  br label %88

60:                                               ; preds = %1
  %61 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 42
  %62 = load i8, ptr %61, align 4
  %63 = and i8 %62, 1
  %64 = zext i8 %63 to i32
  %65 = shl nuw nsw i32 %64, 9
  %66 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 43
  %67 = load i8, ptr %66, align 1
  %68 = and i8 %67, 1
  %69 = zext i8 %68 to i32
  %70 = shl nuw nsw i32 %69, 10
  %71 = or i32 %70, %65
  %72 = and i8 %62, 2
  %73 = zext i8 %72 to i32
  %74 = shl nuw nsw i32 %73, 10
  %75 = or i32 %71, %74
  %76 = and i8 %67, 2
  %77 = zext i8 %76 to i32
  %78 = shl nuw nsw i32 %77, 11
  %79 = or i32 %75, %78
  %80 = and i8 %62, 4
  %81 = zext i8 %80 to i32
  %82 = shl nuw nsw i32 %81, 11
  %83 = or i32 %79, %82
  %84 = and i8 %67, 4
  %85 = zext i8 %84 to i32
  %86 = shl nuw nsw i32 %85, 12
  %87 = or i32 %83, %86
  br label %88

88:                                               ; preds = %60, %38, %5, %4, %1
  %89 = phi i32 [ 0, %1 ], [ 1, %4 ], [ %37, %5 ], [ %59, %38 ], [ %87, %60 ]
  ret i32 %89
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_req_configure_datapath(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2cap_disconn_ind(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hci_connect_le_scan_cleanup(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 65
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 3
  %6 = load i8, ptr %5, align 2
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = getelementptr %struct.hci_conn, ptr %0, i32 0, i32 2, i32 0, i32 5
  %10 = load i8, ptr %9, align 1
  %11 = and i8 %10, -64
  %12 = icmp eq i8 %11, 64
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = tail call ptr @hci_find_irk_by_rpa(ptr noundef %3, ptr noundef %4) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.smp_irk, ptr %14, i32 0, i32 3
  %18 = getelementptr inbounds %struct.smp_irk, ptr %14, i32 0, i32 4
  %19 = load i8, ptr %18, align 4
  br label %20

20:                                               ; preds = %16, %13, %8, %1
  %21 = phi ptr [ %17, %16 ], [ %4, %13 ], [ %4, %8 ], [ %4, %1 ]
  %22 = phi i8 [ %19, %16 ], [ 1, %13 ], [ 1, %8 ], [ %6, %1 ]
  %23 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 195
  %24 = tail call ptr @hci_pend_le_action_lookup(ptr noundef %23, ptr noundef %21, i8 noundef zeroext %22) #11
  %25 = icmp eq ptr %24, null
  br i1 %25, label %47, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.hci_conn_params, ptr %24, i32 0, i32 10
  %28 = load i8, ptr %27, align 4, !range !12
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %26
  store i8 0, ptr %27, align 4
  %31 = getelementptr inbounds %struct.hci_conn_params, ptr %24, i32 0, i32 1
  %32 = getelementptr inbounds %struct.hci_conn_params, ptr %24, i32 0, i32 1, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %31, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %33, ptr %35, align 4
  store volatile ptr %34, ptr %33, align 4
  store volatile ptr %31, ptr %31, align 4
  store ptr %31, ptr %32, align 4
  %36 = getelementptr inbounds %struct.hci_conn_params, ptr %24, i32 0, i32 8
  %37 = load i32, ptr %36, align 4
  switch i32 %37, label %45 [
    i32 5, label %38
    i32 2, label %41
    i32 3, label %41
    i32 1, label %39
  ]

38:                                               ; preds = %30
  tail call void @hci_conn_params_del(ptr noundef %3, ptr noundef %21, i8 noundef zeroext %22) #11
  br label %47

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 196
  br label %41

41:                                               ; preds = %39, %30, %30
  %42 = phi ptr [ %40, %39 ], [ %23, %30 ], [ %23, %30 ]
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %31, ptr %44, align 4
  store ptr %43, ptr %31, align 4
  store ptr %42, ptr %32, align 4
  store volatile ptr %31, ptr %42, align 4
  br label %45

45:                                               ; preds = %41, %30
  %46 = tail call i32 @hci_update_passive_scan(ptr noundef %3) #11
  br label %47

47:                                               ; preds = %45, %38, %26, %20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_conn_params_del(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_find_irk_by_rpa(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_conn_del_sysfs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_le_create_conn_sync(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_conn_params_add(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_inquiry_cache_lookup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind readonly }
attributes #15 = { nounwind allocsize(0) }

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
!8 = !{i64 2148484963}
!9 = !{i64 882898, i64 2148372869, i64 2148372895, i64 2148372942, i64 2148372964, i64 2148372992, i64 2148373012}
!10 = !{i64 2148387325, i64 2148387357, i64 2148387386, i64 2148387420, i64 2148387451, i64 2148387474}
!11 = !{i64 2148485166}
!12 = !{i8 0, i8 2}
!13 = !{i64 2149229447}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{!"auto-init"}
!16 = !{i64 2149204206}
!17 = !{i64 2149204423}
!18 = !{i64 2149059384}
!19 = !{i64 1562808, i64 1562831, i64 1562851, i64 1562875, i64 1562891}
!20 = !{i64 2149047326}
!21 = !{i64 2149047401, i64 2149047428, i64 2149047475, i64 2149047497, i64 2149047525, i64 2149047545}
!22 = !{i64 2149096987}
!23 = !{i64 2148384284, i64 2148384310, i64 2148384339, i64 2148384373, i64 2148384404, i64 2148384427}
!24 = !{i64 2151016557, i64 2151016582}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 3512669}
!27 = !{i64 3512866}
!28 = !{i64 2150998145}
!29 = !{i64 2151017135, i64 2151017160}
