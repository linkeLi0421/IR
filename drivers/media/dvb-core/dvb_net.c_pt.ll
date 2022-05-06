; ModuleID = '/llk/IR/drivers/media/dvb-core/dvb_net.c_pt.bc'
source_filename = "../drivers/media/dvb-core/dvb_net.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_net_release:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_net_release\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_net_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_net_init:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_net_init\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_net_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.dvb_device = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net_priv = type { i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, [10 x ptr], [10 x [6 x i8]], i32, %struct.work_struct, %struct.work_struct, i8, i32, i8, ptr, ptr, i16, i16, i8, i8, i8, i32, i32, %struct.mutex }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmx_ts_feed = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex }
%struct.dvb_net_if = type { i16, i16, i8 }
%struct.__dvb_net_if_old = type { i16, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.95, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.109, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.95 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.109 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.dmx_section_filter = type { [18 x i8], [18 x i8], [18 x i8], ptr, ptr }
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
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }

@__kstrtab_dvb_net_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_net_release = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_net_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_net_release to i32), ptr @__kstrtab_dvb_net_release, ptr @__kstrtabns_dvb_net_release }, section "___ksymtab+dvb_net_release", align 4
@dvb_net_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [21 x i8] c"&dvbnet->ioctl_mutex\00", align 1
@dvbdev_net = internal constant %struct.dvb_device { %struct.list_head zeroinitializer, ptr @dvb_net_fops, ptr null, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, %struct.wait_queue_head zeroinitializer, ptr null, ptr null }, align 4
@__kstrtab_dvb_net_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_net_init = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_net_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_net_init to i32), ptr @__kstrtab_dvb_net_init, ptr @__kstrtabns_dvb_net_init }, section "___ksymtab+dvb_net_init", align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"\016dvb_net: removed network interface %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"\013dvb_net: %s: no feed to stop\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"\013dvb_net: %s: no ts feed to stop\0A\00", align 1
@dvb_net_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dvb_net_ioctl, ptr null, ptr null, i32 0, ptr @dvb_generic_open, ptr null, ptr @dvb_net_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.4 = private unnamed_addr constant [4 x i8] c"dvb\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"dvb%d%u%d\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"dvb%d_%d\00", align 1
@dvb_net_add_if.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"&priv->mutex\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"\016dvb_net: created network interface %s\0A\00", align 1
@dvb_header_ops = internal constant %struct.header_ops { ptr @eth_header, ptr @eth_header_parse, ptr null, ptr null, ptr null, ptr null }, align 4
@dvb_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @dvb_net_open, ptr @dvb_net_stop, ptr @dvb_net_tx, ptr null, ptr null, ptr null, ptr @dvb_net_set_multicast_list, ptr @dvb_net_set_mac, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"\013dvb_net: %s: BUG %d\0A\00", align 1
@__func__.dvb_net_feed_start = private unnamed_addr constant [19 x i8] c"dvb_net_feed_start\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"\013dvb_net: %s: could not allocate section feed\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"\013dvb_net: %s: could not set section feed\0A\00", align 1
@mask_normal = internal global [6 x i8] c"\FF\FF\FF\FF\FF\FF", align 1
@mac_allmulti = internal global [6 x i8] c"\01\00^\00\00\00", align 1
@mask_allmulti = internal global [6 x i8] c"\FF\FF\FF\00\00\00", align 1
@mask_promisc = internal global [6 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"\013dvb_net: %s: could not allocate ts feed\0A\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"\013dvb_net: %s: could not set ts feed\0A\00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c"\014dvb_net: %s: IP/MPE packet length = %d too small.\0A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"\AA\AA\03\00\00\00\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"\013dvb_net: %s: could not get filter\0A\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"\014dvb_net: buffer2 not NULL: %p.\0A\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"\014dvb_net: length > 32k: %zu.\0A\00", align 1
@.str.19 = private unnamed_addr constant [60 x i8] c"\014dvb_net: %lu: Invalid TS cell: SYNC %#x, TEI %u, SC %#x.\0A\00", align 1
@.str.20 = private unnamed_addr constant [55 x i8] c"\013dvb_net: %lu: Invalid ULE packet (pointer field %d)\0A\00", align 1
@.str.21 = private unnamed_addr constant [58 x i8] c"\014dvb_net: %lu: TS discontinuity: got %#x, expected %#x.\0A\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"\014dvb_net: %lu: Invalid pointer field: %u.\0A\00", align 1
@.str.23 = private unnamed_addr constant [115 x i8] c"\014dvb_net: %lu: Expected %d more SNDU bytes, but got PUSI (pf %d, h->ts_remain %d).  Flushing incomplete payload.\0A\00", align 1
@.str.24 = private unnamed_addr constant [75 x i8] c"\014dvb_net: Invalid payload packing: only %d bytes left in TS.  Resyncing.\0A\00", align 1
@.str.25 = private unnamed_addr constant [56 x i8] c"\014dvb_net: %lu: Invalid ULE SNDU length %u. Resyncing.\0A\00", align 1
@.str.26 = private unnamed_addr constant [49 x i8] c"\015dvb_net: %s: Memory squeeze, dropping packet.\0A\00", align 1
@.str.27 = private unnamed_addr constant [98 x i8] c"\014dvb_net: %lu: CRC32 check FAILED: %08x / %08x, SNDU len %d type %#x, ts_remain %d, next 2: %x.\0A\00", align 1
@handle_one_ule_extension.ule_mandatory_ext_handlers = internal unnamed_addr constant <{ ptr, ptr, [253 x ptr] }> <{ ptr @ule_test_sndu, ptr @ule_bridged_sndu, [253 x ptr] zeroinitializer }>, align 4
@handle_one_ule_extension.ule_optional_ext_handlers = internal unnamed_addr constant <{ ptr, [254 x ptr] }> <{ ptr @ule_exthdr_padding, [254 x ptr] zeroinitializer }>, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_dvb_net_init, ptr @__ksymtab_dvb_net_release], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dvb_net_release(ptr nocapture noundef %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.dvb_net, ptr %0, i32 0, i32 3
  %4 = load i8, ptr %3, align 4
  %5 = or i8 %4, 1
  store i8 %5, ptr %3, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.dvb_device, ptr %6, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #13
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.dvb_device, ptr %11, i32 0, i32 9
  %13 = call i32 @prepare_to_wait_event(ptr noundef %12, ptr noundef nonnull %2, i32 noundef 2) #13
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.dvb_device, ptr %14, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %26, label %18

18:                                               ; preds = %18, %10
  call void @schedule() #13
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr inbounds %struct.dvb_device, ptr %19, i32 0, i32 9
  %21 = call i32 @prepare_to_wait_event(ptr noundef %20, ptr noundef nonnull %2, i32 noundef 2) #13
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.dvb_device, ptr %22, i32 0, i32 8
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %18

26:                                               ; preds = %18, %10
  %27 = phi ptr [ %14, %10 ], [ %22, %18 ]
  %28 = getelementptr inbounds %struct.dvb_device, ptr %27, i32 0, i32 9
  call void @finish_wait(ptr noundef %28, ptr noundef nonnull %2) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #13
  %29 = load ptr, ptr %0, align 4
  br label %30

30:                                               ; preds = %26, %1
  %31 = phi ptr [ %29, %26 ], [ %6, %1 ]
  call void @dvb_unregister_device(ptr noundef %31) #13
  %32 = getelementptr %struct.dvb_net, ptr %0, i32 0, i32 2, i32 0
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = call fastcc i32 @dvb_net_remove_if(ptr noundef %0, i32 noundef 0)
  br label %37

37:                                               ; preds = %35, %30
  %38 = getelementptr %struct.dvb_net, ptr %0, i32 0, i32 2, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = call fastcc i32 @dvb_net_remove_if(ptr noundef %0, i32 noundef 1)
  br label %43

43:                                               ; preds = %41, %37
  %44 = getelementptr %struct.dvb_net, ptr %0, i32 0, i32 2, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = call fastcc i32 @dvb_net_remove_if(ptr noundef %0, i32 noundef 2)
  br label %49

49:                                               ; preds = %47, %43
  %50 = getelementptr %struct.dvb_net, ptr %0, i32 0, i32 2, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = call fastcc i32 @dvb_net_remove_if(ptr noundef %0, i32 noundef 3)
  br label %55

55:                                               ; preds = %53, %49
  %56 = getelementptr %struct.dvb_net, ptr %0, i32 0, i32 2, i32 4
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = call fastcc i32 @dvb_net_remove_if(ptr noundef %0, i32 noundef 4)
  br label %61

61:                                               ; preds = %59, %55
  %62 = getelementptr %struct.dvb_net, ptr %0, i32 0, i32 2, i32 5
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = call fastcc i32 @dvb_net_remove_if(ptr noundef %0, i32 noundef 5)
  br label %67

67:                                               ; preds = %65, %61
  %68 = getelementptr %struct.dvb_net, ptr %0, i32 0, i32 2, i32 6
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = call fastcc i32 @dvb_net_remove_if(ptr noundef %0, i32 noundef 6)
  br label %73

73:                                               ; preds = %71, %67
  %74 = getelementptr %struct.dvb_net, ptr %0, i32 0, i32 2, i32 7
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = call fastcc i32 @dvb_net_remove_if(ptr noundef %0, i32 noundef 7)
  br label %79

79:                                               ; preds = %77, %73
  %80 = getelementptr %struct.dvb_net, ptr %0, i32 0, i32 2, i32 8
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = call fastcc i32 @dvb_net_remove_if(ptr noundef %0, i32 noundef 8)
  br label %85

85:                                               ; preds = %83, %79
  %86 = getelementptr %struct.dvb_net, ptr %0, i32 0, i32 2, i32 9
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %85
  %90 = call fastcc i32 @dvb_net_remove_if(ptr noundef %0, i32 noundef 9)
  br label %91

91:                                               ; preds = %89, %85
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dvb_net_remove_if(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr %struct.dvb_net, ptr %0, i32 0, i32 1, i32 %1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.dvb_net, ptr %0, i32 0, i32 2, i32 %1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %4, i32 1408
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  store i32 -1, ptr %9, align 4
  %13 = tail call fastcc i32 @dvb_net_feed_stop(ptr noundef %4) #13
  %14 = getelementptr i8, ptr %4, i32 1548
  %15 = tail call zeroext i1 @flush_work(ptr noundef %14) #13
  %16 = getelementptr i8, ptr %4, i32 1564
  %17 = tail call zeroext i1 @flush_work(ptr noundef %16) #13
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %4) #14
  tail call void @unregister_netdev(ptr noundef %4) #13
  store i32 0, ptr %5, align 4
  store ptr null, ptr %3, align 4
  tail call void @free_netdev(ptr noundef %4) #13
  br label %19

19:                                               ; preds = %12, %8, %2
  %20 = phi i32 [ 0, %12 ], [ -22, %2 ], [ -16, %8 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dvb_net_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dvb_net, ptr %1, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @dvb_net_init.__key) #13
  %5 = getelementptr inbounds %struct.dvb_net, ptr %1, i32 0, i32 4
  store ptr %2, ptr %5, align 4
  %6 = getelementptr i8, ptr %1, i32 44
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %6, i8 0, i32 40, i1 false)
  %7 = tail call i32 @dvb_register_device(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @dvbdev_net, ptr noundef %1, i32 noundef 5, i32 noundef 0) #13
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_net_stop(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, -1
  store i32 %4, ptr %2, align 4
  %5 = tail call fastcc i32 @dvb_net_feed_stop(ptr noundef %0)
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dvb_net_feed_stop(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 1616
  tail call void @mutex_lock(ptr noundef %3) #13
  %4 = getelementptr i8, ptr %0, i32 1580
  %5 = load i8, ptr %4, align 4
  switch i8 %5, label %76 [
    i8 0, label %6
    i8 1, label %55
  ]

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 1428
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %53, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %8, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.dmx_section_feed, ptr %8, i32 0, i32 14
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef nonnull %8) #13
  br label %17

17:                                               ; preds = %13, %10
  %18 = getelementptr i8, ptr %0, i32 1432
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr inbounds %struct.dmx_section_feed, ptr %22, i32 0, i32 12
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %24(ptr noundef %22, ptr noundef nonnull %19) #13
  store ptr null, ptr %18, align 4
  br label %26

26:                                               ; preds = %21, %17
  %27 = getelementptr i8, ptr %0, i32 1440
  %28 = load i32, ptr %27, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %42, %26
  %31 = phi i32 [ %43, %42 ], [ %28, %26 ]
  %32 = phi i32 [ %44, %42 ], [ 0, %26 ]
  %33 = getelementptr %struct.dvb_net_priv, ptr %2, i32 0, i32 9, i32 %32
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load ptr, ptr %7, align 4
  %38 = getelementptr inbounds %struct.dmx_section_feed, ptr %37, i32 0, i32 12
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 %39(ptr noundef %37, ptr noundef nonnull %34) #13
  store ptr null, ptr %33, align 4
  %41 = load i32, ptr %27, align 4
  br label %42

42:                                               ; preds = %36, %30
  %43 = phi i32 [ %31, %30 ], [ %41, %36 ]
  %44 = add nuw nsw i32 %32, 1
  %45 = icmp slt i32 %44, %43
  br i1 %45, label %30, label %46

46:                                               ; preds = %42, %26
  %47 = getelementptr i8, ptr %0, i32 1424
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.dmx_demux, ptr %48, i32 0, i32 9
  %50 = load ptr, ptr %49, align 4
  %51 = load ptr, ptr %7, align 4
  %52 = tail call i32 %50(ptr noundef %48, ptr noundef %51) #13
  store ptr null, ptr %7, align 4
  br label %76

53:                                               ; preds = %6
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %0) #14
  br label %76

55:                                               ; preds = %1
  %56 = getelementptr i8, ptr %0, i32 1436
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %74, label %59

59:                                               ; preds = %55
  %60 = load i32, ptr %57, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.dmx_ts_feed, ptr %57, i32 0, i32 5
  %64 = load ptr, ptr %63, align 4
  %65 = tail call i32 %64(ptr noundef nonnull %57) #13
  %66 = load ptr, ptr %56, align 4
  br label %67

67:                                               ; preds = %62, %59
  %68 = phi ptr [ %66, %62 ], [ %57, %59 ]
  %69 = getelementptr i8, ptr %0, i32 1424
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.dmx_demux, ptr %70, i32 0, i32 7
  %72 = load ptr, ptr %71, align 4
  %73 = tail call i32 %72(ptr noundef %70, ptr noundef %68) #13
  store ptr null, ptr %56, align 4
  br label %76

74:                                               ; preds = %55
  %75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %0) #14
  br label %76

76:                                               ; preds = %74, %67, %53, %46, %1
  %77 = phi i32 [ 0, %46 ], [ 0, %53 ], [ 0, %67 ], [ 0, %74 ], [ -22, %1 ]
  tail call void @mutex_unlock(ptr noundef %3) #13
  ret i32 %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_net_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @dvb_usercopy(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @dvb_net_do_ioctl) #13
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_generic_open(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_net_close(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dvb_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @dvb_generic_release(ptr noundef %0, ptr noundef %1) #13
  %8 = getelementptr inbounds %struct.dvb_device, ptr %4, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.dvb_net, ptr %6, i32 0, i32 3
  %13 = load i8, ptr %12, align 4
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.dvb_device, ptr %4, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %17, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %18

18:                                               ; preds = %16, %11, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usercopy(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_net_do_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.dvb_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %107, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.dvb_net, ptr %7, i32 0, i32 5
  %14 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %107

16:                                               ; preds = %12
  switch i32 %1, label %105 [
    i32 -1073320140, label %17
    i32 -1073320138, label %38
    i32 28469, label %57
    i32 -1073451212, label %70
    i32 -1073451210, label %89
  ]

17:                                               ; preds = %16
  %18 = tail call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %18, label %19, label %105

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.dvb_device, ptr %5, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.dvb_adapter, ptr %21, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = tail call zeroext i1 @try_module_get(ptr noundef %23) #13
  br i1 %24, label %25, label %105

25:                                               ; preds = %19
  %26 = load i16, ptr %2, align 2
  %27 = getelementptr inbounds %struct.dvb_net_if, ptr %2, i32 0, i32 2
  %28 = load i8, ptr %27, align 2
  %29 = tail call fastcc i32 @dvb_net_add_if(ptr noundef %7, i16 noundef zeroext %26, i8 noundef zeroext %28)
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load ptr, ptr %20, align 4
  %33 = getelementptr inbounds %struct.dvb_adapter, ptr %32, i32 0, i32 7
  %34 = load ptr, ptr %33, align 4
  tail call void @module_put(ptr noundef %34) #13
  br label %105

35:                                               ; preds = %25
  %36 = trunc i32 %29 to i16
  %37 = getelementptr inbounds %struct.dvb_net_if, ptr %2, i32 0, i32 1
  store i16 %36, ptr %37, align 2
  br label %105

38:                                               ; preds = %16
  %39 = getelementptr inbounds %struct.dvb_net_if, ptr %2, i32 0, i32 1
  %40 = load i16, ptr %39, align 2
  %41 = icmp ugt i16 %40, 9
  br i1 %41, label %105, label %42

42:                                               ; preds = %38
  %43 = zext i16 %40 to i32
  %44 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %43, i32 10) #13, !srcloc !9
  %45 = and i32 %44, %43
  %46 = getelementptr %struct.dvb_net, ptr %7, i32 0, i32 2, i32 %45
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %105, label %49

49:                                               ; preds = %42
  %50 = getelementptr %struct.dvb_net, ptr %7, i32 0, i32 1, i32 %45
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 1412
  %53 = load i16, ptr %52, align 4
  store i16 %53, ptr %2, align 2
  %54 = getelementptr i8, ptr %51, i32 1580
  %55 = load i8, ptr %54, align 4
  %56 = getelementptr inbounds %struct.dvb_net_if, ptr %2, i32 0, i32 2
  store i8 %55, ptr %56, align 2
  br label %105

57:                                               ; preds = %16
  %58 = tail call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %58, label %59, label %105

59:                                               ; preds = %57
  %60 = icmp ugt ptr %2, inttoptr (i32 9 to ptr)
  br i1 %60, label %105, label %61

61:                                               ; preds = %59
  %62 = ptrtoint ptr %2 to i32
  %63 = tail call fastcc i32 @dvb_net_remove_if(ptr noundef %7, i32 noundef %62)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %105

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.dvb_device, ptr %5, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.dvb_adapter, ptr %67, i32 0, i32 7
  %69 = load ptr, ptr %68, align 4
  tail call void @module_put(ptr noundef %69) #13
  br label %105

70:                                               ; preds = %16
  %71 = tail call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %71, label %72, label %105

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.dvb_device, ptr %5, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.dvb_adapter, ptr %74, i32 0, i32 7
  %76 = load ptr, ptr %75, align 4
  %77 = tail call zeroext i1 @try_module_get(ptr noundef %76) #13
  br i1 %77, label %78, label %105

78:                                               ; preds = %72
  %79 = load i16, ptr %2, align 2
  %80 = tail call fastcc i32 @dvb_net_add_if(ptr noundef %7, i16 noundef zeroext %79, i8 noundef zeroext 0)
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load ptr, ptr %73, align 4
  %84 = getelementptr inbounds %struct.dvb_adapter, ptr %83, i32 0, i32 7
  %85 = load ptr, ptr %84, align 4
  tail call void @module_put(ptr noundef %85) #13
  br label %105

86:                                               ; preds = %78
  %87 = trunc i32 %80 to i16
  %88 = getelementptr inbounds %struct.__dvb_net_if_old, ptr %2, i32 0, i32 1
  store i16 %87, ptr %88, align 2
  br label %105

89:                                               ; preds = %16
  %90 = getelementptr inbounds %struct.__dvb_net_if_old, ptr %2, i32 0, i32 1
  %91 = load i16, ptr %90, align 2
  %92 = icmp ugt i16 %91, 9
  br i1 %92, label %105, label %93

93:                                               ; preds = %89
  %94 = zext i16 %91 to i32
  %95 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %94, i32 10) #13, !srcloc !9
  %96 = and i32 %95, %94
  %97 = getelementptr %struct.dvb_net, ptr %7, i32 0, i32 2, i32 %96
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %93
  %101 = getelementptr %struct.dvb_net, ptr %7, i32 0, i32 1, i32 %96
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr i8, ptr %102, i32 1412
  %104 = load i16, ptr %103, align 4
  store i16 %104, ptr %2, align 2
  br label %105

105:                                              ; preds = %100, %93, %89, %86, %82, %72, %70, %65, %61, %59, %57, %49, %42, %38, %35, %31, %19, %17, %16
  %106 = phi i32 [ %63, %61 ], [ 0, %65 ], [ -1, %57 ], [ -22, %59 ], [ -25, %16 ], [ %29, %31 ], [ 0, %35 ], [ -1, %17 ], [ -1, %19 ], [ 0, %49 ], [ -22, %38 ], [ -22, %42 ], [ %80, %82 ], [ 0, %86 ], [ -1, %70 ], [ -1, %72 ], [ 0, %100 ], [ -22, %89 ], [ -22, %93 ]
  tail call void @mutex_unlock(ptr noundef %13) #13
  br label %107

107:                                              ; preds = %105, %12, %3
  %108 = phi i32 [ %106, %105 ], [ -1, %3 ], [ -512, %12 ]
  ret i32 %108
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dvb_net_add_if(ptr nocapture noundef %0, i16 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = icmp ugt i8 %2, 1
  br i1 %4, label %98, label %5

5:                                                ; preds = %3
  %6 = getelementptr %struct.dvb_net, ptr %0, i32 0, i32 2, i32 0
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %45, label %9

9:                                                ; preds = %5
  %10 = getelementptr %struct.dvb_net, ptr %0, i32 0, i32 2, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %45, label %13

13:                                               ; preds = %9
  %14 = getelementptr %struct.dvb_net, ptr %0, i32 0, i32 2, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %45, label %17

17:                                               ; preds = %13
  %18 = getelementptr %struct.dvb_net, ptr %0, i32 0, i32 2, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %45, label %21

21:                                               ; preds = %17
  %22 = getelementptr %struct.dvb_net, ptr %0, i32 0, i32 2, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %21
  %26 = getelementptr %struct.dvb_net, ptr %0, i32 0, i32 2, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %25
  %30 = getelementptr %struct.dvb_net, ptr %0, i32 0, i32 2, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %29
  %34 = getelementptr %struct.dvb_net, ptr %0, i32 0, i32 2, i32 7
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = getelementptr %struct.dvb_net, ptr %0, i32 0, i32 2, i32 8
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr %struct.dvb_net, ptr %0, i32 0, i32 2, i32 9
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %98

45:                                               ; preds = %41, %37, %33, %29, %25, %21, %17, %13, %9, %5
  %46 = phi i32 [ 0, %5 ], [ 1, %9 ], [ 2, %13 ], [ 3, %17 ], [ 4, %21 ], [ 5, %25 ], [ 6, %29 ], [ 7, %33 ], [ 8, %37 ], [ 9, %41 ]
  %47 = getelementptr %struct.dvb_net, ptr %0, i32 0, i32 2, i32 %46
  store i32 1, ptr %47, align 4
  %48 = tail call ptr @alloc_netdev_mqs(i32 noundef 228, ptr noundef nonnull @.str.4, i8 noundef zeroext 0, ptr noundef nonnull @dvb_net_setup, i32 noundef 1, i32 noundef 1) #13
  %49 = icmp eq ptr %48, null
  br i1 %49, label %98, label %50

50:                                               ; preds = %45
  %51 = load ptr, ptr %0, align 4
  %52 = getelementptr inbounds %struct.dvb_device, ptr %51, i32 0, i32 5
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  %55 = getelementptr inbounds %struct.dvb_device, ptr %51, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = load i32, ptr %56, align 4
  br i1 %54, label %60, label %58

58:                                               ; preds = %50
  %59 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %48, i32 noundef 16, ptr noundef nonnull @.str.5, i32 noundef %57, i32 noundef %53, i32 noundef %46)
  br label %62

60:                                               ; preds = %50
  %61 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %48, i32 noundef 16, ptr noundef nonnull @.str.6, i32 noundef %57, i32 noundef %46)
  br label %62

62:                                               ; preds = %60, %58
  %63 = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 51
  store i8 6, ptr %63, align 1
  %64 = load ptr, ptr %0, align 4
  %65 = getelementptr inbounds %struct.dvb_device, ptr %64, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.dvb_adapter, ptr %66, i32 0, i32 4
  tail call void @dev_addr_mod(ptr noundef nonnull %48, i32 noundef 0, ptr noundef %67, i32 noundef 6) #13
  %68 = getelementptr %struct.dvb_net, ptr %0, i32 0, i32 1, i32 %46
  store ptr %48, ptr %68, align 4
  %69 = getelementptr i8, ptr %48, i32 1416
  store ptr %48, ptr %69, align 4
  %70 = getelementptr inbounds %struct.dvb_net, ptr %0, i32 0, i32 4
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr i8, ptr %48, i32 1424
  store ptr %71, ptr %72, align 4
  %73 = getelementptr i8, ptr %48, i32 1412
  store i16 %1, ptr %73, align 4
  %74 = getelementptr i8, ptr %48, i32 1544
  store i32 0, ptr %74, align 4
  %75 = getelementptr i8, ptr %48, i32 1584
  store i32 1, ptr %75, align 4
  %76 = getelementptr i8, ptr %48, i32 1588
  store i8 0, ptr %76, align 4
  %77 = getelementptr i8, ptr %48, i32 1580
  store i8 %2, ptr %77, align 4
  %78 = getelementptr i8, ptr %48, i32 1592
  %79 = getelementptr i8, ptr %48, i32 1608
  store i32 0, ptr %79, align 4
  %80 = getelementptr i8, ptr %48, i32 1605
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(13) %78, i8 0, i64 13, i1 false) #13
  store i8 -1, ptr %80, align 1
  %81 = getelementptr i8, ptr %48, i32 1606
  store i8 0, ptr %81, align 2
  %82 = getelementptr i8, ptr %48, i32 1548
  store i32 -32, ptr %82, align 4
  %83 = getelementptr i8, ptr %48, i32 1552
  store volatile ptr %83, ptr %83, align 4
  %84 = getelementptr i8, ptr %48, i32 1556
  store ptr %83, ptr %84, align 4
  %85 = getelementptr i8, ptr %48, i32 1560
  store ptr @wq_set_multicast_list, ptr %85, align 4
  %86 = getelementptr i8, ptr %48, i32 1564
  store i32 -32, ptr %86, align 4
  %87 = getelementptr i8, ptr %48, i32 1568
  store volatile ptr %87, ptr %87, align 4
  %88 = getelementptr i8, ptr %48, i32 1572
  store ptr %87, ptr %88, align 4
  %89 = getelementptr i8, ptr %48, i32 1576
  store ptr @wq_restart_net_feed, ptr %89, align 4
  %90 = getelementptr i8, ptr %48, i32 1616
  tail call void @__mutex_init(ptr noundef %90, ptr noundef nonnull @.str.7, ptr noundef nonnull @dvb_net_add_if.__key) #13
  %91 = zext i16 %1 to i32
  %92 = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 5
  store i32 %91, ptr %92, align 32
  %93 = tail call i32 @register_netdev(ptr noundef nonnull %48) #13
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %62
  store ptr null, ptr %68, align 4
  tail call void @free_netdev(ptr noundef nonnull %48) #13
  br label %98

96:                                               ; preds = %62
  %97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %48) #14
  br label %98

98:                                               ; preds = %96, %95, %45, %41, %3
  %99 = phi i32 [ %93, %95 ], [ %46, %96 ], [ -22, %3 ], [ -12, %45 ], [ -22, %41 ]
  ret i32 %99
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dvb_net_setup(ptr noundef %0) #0 {
  tail call void @ether_setup(ptr noundef %0) #13
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 44
  store ptr @dvb_header_ops, ptr %2, align 16
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 16
  store ptr @dvb_netdev_ops, ptr %3, align 8
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  store i32 4096, ptr %4, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 31
  store i32 4096, ptr %5, align 4
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %7 = load i32, ptr %6, align 8
  %8 = or i32 %7, 128
  store i32 %8, ptr %6, align 8
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wq_set_multicast_list(ptr nocapture noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -132
  %3 = load ptr, ptr %2, align 4
  %4 = tail call fastcc i32 @dvb_net_feed_stop(ptr noundef %3)
  %5 = getelementptr i8, ptr %0, i32 -4
  store i32 0, ptr %5, align 4
  %6 = tail call ptr @llvm.thread.pointer() #13
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %8 = load volatile i32, ptr %7, align 4
  %9 = add i32 %8, 512
  store volatile i32 %9, ptr %7, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %10 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 58
  tail call void @_raw_spin_lock(ptr noundef %10) #13
  %11 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 14
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %44

15:                                               ; preds = %1
  %16 = and i32 %12, 512
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 61
  %20 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 61, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %46, label %23

23:                                               ; preds = %18
  store i32 1, ptr %5, align 4
  %24 = getelementptr i8, ptr %0, i32 -108
  store i32 0, ptr %24, align 4
  %25 = load ptr, ptr %19, align 4
  %26 = icmp eq ptr %25, %19
  br i1 %26, label %46, label %27

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %3, i32 1440
  %29 = getelementptr i8, ptr %3, i32 1408
  %30 = load i32, ptr %28, align 4
  br label %31

31:                                               ; preds = %40, %27
  %32 = phi i32 [ %30, %27 ], [ %41, %40 ]
  %33 = phi ptr [ %25, %27 ], [ %42, %40 ]
  %34 = icmp eq i32 %32, 10
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.netdev_hw_addr, ptr %33, i32 0, i32 2
  %37 = getelementptr %struct.dvb_net_priv, ptr %29, i32 0, i32 10, i32 %32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %37, ptr noundef align 1 dereferenceable(6) %36, i32 6, i1 false) #13
  %38 = load i32, ptr %28, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %28, align 4
  br label %40

40:                                               ; preds = %35, %31
  %41 = phi i32 [ 10, %31 ], [ %39, %35 ]
  %42 = load ptr, ptr %33, align 4
  %43 = icmp eq ptr %42, %19
  br i1 %43, label %46, label %31

44:                                               ; preds = %15, %1
  %45 = phi i32 [ 3, %1 ], [ 2, %15 ]
  store i32 %45, ptr %5, align 4
  br label %46

46:                                               ; preds = %44, %40, %23, %18
  tail call void @_raw_spin_unlock_bh(ptr noundef %10) #13
  tail call fastcc void @dvb_net_feed_start(ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wq_restart_net_feed(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -148
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call fastcc i32 @dvb_net_feed_stop(ptr noundef %3)
  tail call fastcc void @dvb_net_feed_start(ptr noundef %3)
  br label %10

10:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_header(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_header_parse(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_net_open(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 4
  tail call fastcc void @dvb_net_feed_start(ptr noundef %0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_net_tx(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @consume_skb(ptr noundef %0) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dvb_net_set_multicast_list(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1548
  %3 = load ptr, ptr @system_wq, align 4
  %4 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %3, ptr noundef %2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_net_set_mac(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sockaddr, ptr %1, i32 0, i32 1
  tail call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef %3, i32 noundef 6) #13
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 1564
  %10 = load ptr, ptr @system_wq, align 4
  %11 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %10, ptr noundef %9) #13
  br label %12

12:                                               ; preds = %8, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dvb_net_feed_start(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 1424
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %6 = load ptr, ptr %5, align 32
  %7 = getelementptr i8, ptr %0, i32 1616
  tail call void @mutex_lock(ptr noundef %7) #13
  %8 = getelementptr i8, ptr %0, i32 1436
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = getelementptr i8, ptr %0, i32 1428
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %0, i32 1432
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %0, i32 1444
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19, %15, %11, %1
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.dvb_net_feed_start, i32 noundef 1060) #14
  br label %25

25:                                               ; preds = %23, %19
  %26 = getelementptr i8, ptr %0, i32 1428
  store ptr null, ptr %26, align 4
  %27 = getelementptr i8, ptr %0, i32 1432
  store ptr null, ptr %27, align 4
  store ptr null, ptr %8, align 4
  %28 = getelementptr i8, ptr %0, i32 1580
  %29 = load i8, ptr %28, align 4
  switch i8 %29, label %108 [
    i8 0, label %30
    i8 1, label %79
  ]

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.dmx_demux, ptr %4, i32 0, i32 8
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 %32(ptr noundef %4, ptr noundef %26, ptr noundef nonnull @dvb_net_sec_callback) #13
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %0) #14
  br label %108

37:                                               ; preds = %30
  %38 = load ptr, ptr %26, align 4
  %39 = getelementptr inbounds %struct.dmx_section_feed, ptr %38, i32 0, i32 10
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %0, i32 1412
  %42 = load i16, ptr %41, align 4
  %43 = tail call i32 %40(ptr noundef %38, i16 noundef zeroext %42, i32 noundef 1) #13
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %37
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %0) #14
  %47 = load ptr, ptr %3, align 4
  %48 = getelementptr inbounds %struct.dmx_demux, ptr %47, i32 0, i32 9
  %49 = load ptr, ptr %48, align 4
  %50 = load ptr, ptr %26, align 4
  %51 = tail call i32 %49(ptr noundef %47, ptr noundef %50) #13
  store ptr null, ptr %26, align 4
  br label %108

52:                                               ; preds = %37
  %53 = getelementptr i8, ptr %0, i32 1544
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %72, label %56

56:                                               ; preds = %52
  tail call fastcc void @dvb_net_filter_sec_set(ptr noundef %0, ptr noundef %27, ptr noundef %6, ptr noundef nonnull @mask_normal)
  %57 = load i32, ptr %53, align 4
  switch i32 %57, label %74 [
    i32 1, label %58
    i32 2, label %69
    i32 3, label %72
  ]

58:                                               ; preds = %56
  %59 = getelementptr i8, ptr %0, i32 1440
  %60 = load i32, ptr %59, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %62, %58
  %63 = phi i32 [ %66, %62 ], [ 0, %58 ]
  %64 = getelementptr %struct.dvb_net_priv, ptr %2, i32 0, i32 9, i32 %63
  %65 = getelementptr %struct.dvb_net_priv, ptr %2, i32 0, i32 10, i32 %63
  tail call fastcc void @dvb_net_filter_sec_set(ptr noundef %0, ptr noundef %64, ptr noundef %65, ptr noundef nonnull @mask_normal)
  %66 = add nuw nsw i32 %63, 1
  %67 = load i32, ptr %59, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %62, label %74

69:                                               ; preds = %56
  %70 = getelementptr i8, ptr %0, i32 1440
  store i32 1, ptr %70, align 4
  %71 = getelementptr i8, ptr %0, i32 1444
  tail call fastcc void @dvb_net_filter_sec_set(ptr noundef %0, ptr noundef %71, ptr noundef nonnull @mac_allmulti, ptr noundef nonnull @mask_allmulti)
  br label %74

72:                                               ; preds = %56, %52
  %73 = getelementptr i8, ptr %0, i32 1440
  store i32 0, ptr %73, align 4
  tail call fastcc void @dvb_net_filter_sec_set(ptr noundef %0, ptr noundef %27, ptr noundef %6, ptr noundef nonnull @mask_promisc)
  br label %74

74:                                               ; preds = %72, %69, %62, %58, %56
  %75 = load ptr, ptr %26, align 4
  %76 = getelementptr inbounds %struct.dmx_section_feed, ptr %75, i32 0, i32 13
  %77 = load ptr, ptr %76, align 4
  %78 = tail call i32 %77(ptr noundef %75) #13
  br label %108

79:                                               ; preds = %25
  %80 = getelementptr inbounds %struct.dmx_demux, ptr %4, i32 0, i32 6
  %81 = load ptr, ptr %80, align 4
  %82 = tail call i32 %81(ptr noundef %4, ptr noundef %8, ptr noundef nonnull @dvb_net_ts_callback) #13
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %0) #14
  br label %108

86:                                               ; preds = %79
  %87 = load ptr, ptr %8, align 4
  %88 = getelementptr inbounds %struct.dmx_ts_feed, ptr %87, i32 0, i32 2
  store ptr %0, ptr %88, align 4
  %89 = load ptr, ptr %8, align 4
  %90 = getelementptr inbounds %struct.dmx_ts_feed, ptr %89, i32 0, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr i8, ptr %0, i32 1412
  %93 = load i16, ptr %92, align 4
  %94 = tail call i32 %91(ptr noundef %89, i16 noundef zeroext %93, i32 noundef 1, i32 noundef 20, i64 noundef 10000000) #13
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %86
  %97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %0) #14
  %98 = load ptr, ptr %3, align 4
  %99 = getelementptr inbounds %struct.dmx_demux, ptr %98, i32 0, i32 7
  %100 = load ptr, ptr %99, align 4
  %101 = load ptr, ptr %8, align 4
  %102 = tail call i32 %100(ptr noundef %98, ptr noundef %101) #13
  store ptr null, ptr %8, align 4
  br label %108

103:                                              ; preds = %86
  %104 = load ptr, ptr %8, align 4
  %105 = getelementptr inbounds %struct.dmx_ts_feed, ptr %104, i32 0, i32 4
  %106 = load ptr, ptr %105, align 4
  %107 = tail call i32 %106(ptr noundef %104) #13
  br label %108

108:                                              ; preds = %103, %96, %84, %74, %45, %35, %25
  tail call void @mutex_unlock(ptr noundef %7) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_net_sec_callback(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readnone %5) #0 {
  %7 = getelementptr inbounds %struct.dmx_section_filter, ptr %4, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36
  %10 = icmp slt i32 %1, 16
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %8, i32 noundef %1) #14
  %13 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 10
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  br label %173

19:                                               ; preds = %6
  %20 = getelementptr i8, ptr %0, i32 5
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, 60
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 4
  %29 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 12
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %29, align 4
  br label %173

32:                                               ; preds = %19
  %33 = and i32 %22, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %32
  %36 = icmp ult i32 %1, 24
  br i1 %36, label %41, label %37

37:                                               ; preds = %35
  %38 = getelementptr i8, ptr %0, i32 12
  %39 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %38, ptr noundef nonnull dereferenceable(6) @.str.15, i32 6) #13
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37, %35
  %42 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 4
  br label %173

45:                                               ; preds = %37, %32
  %46 = phi i32 [ 0, %32 ], [ 8, %37 ]
  %47 = getelementptr i8, ptr %0, i32 7
  %48 = load i8, ptr %47, align 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, 1
  store i32 %53, ptr %51, align 4
  %54 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 13
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %54, align 4
  br label %173

57:                                               ; preds = %45
  %58 = sub nuw nsw i32 %1, %46
  %59 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %58, i32 noundef 2592) #13
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 6
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr %62, align 4
  br label %173

65:                                               ; preds = %57
  %66 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 17
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr i8, ptr %67, i32 2
  store ptr %68, ptr %66, align 4
  %69 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 14
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr i8, ptr %70, i32 2
  store ptr %71, ptr %69, align 8
  %72 = getelementptr inbounds %struct.anon.41, ptr %59, i32 0, i32 2
  store ptr %8, ptr %72, align 8
  %73 = add nsw i32 %1, -16
  %74 = add nsw i32 %1, -2
  %75 = sub nuw nsw i32 %74, %46
  %76 = tail call ptr @skb_put(ptr noundef nonnull %59, i32 noundef %75) #13
  %77 = getelementptr i8, ptr %76, i32 14
  %78 = getelementptr i8, ptr %0, i32 12
  %79 = getelementptr i8, ptr %78, i32 %46
  %80 = sub nsw i32 %73, %46
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %77, ptr align 1 %79, i32 %80, i1 false) #13
  %81 = getelementptr i8, ptr %0, i32 11
  %82 = load i8, ptr %81, align 1
  store i8 %82, ptr %76, align 1
  %83 = getelementptr i8, ptr %0, i32 10
  %84 = load i8, ptr %83, align 1
  %85 = getelementptr i8, ptr %76, i32 1
  store i8 %84, ptr %85, align 1
  %86 = getelementptr i8, ptr %0, i32 9
  %87 = load i8, ptr %86, align 1
  %88 = getelementptr i8, ptr %76, i32 2
  store i8 %87, ptr %88, align 1
  %89 = getelementptr i8, ptr %0, i32 8
  %90 = load i8, ptr %89, align 1
  %91 = getelementptr i8, ptr %76, i32 3
  store i8 %90, ptr %91, align 1
  %92 = getelementptr i8, ptr %0, i32 4
  %93 = load i8, ptr %92, align 1
  %94 = getelementptr i8, ptr %76, i32 4
  store i8 %93, ptr %94, align 1
  %95 = getelementptr i8, ptr %0, i32 3
  %96 = load i8, ptr %95, align 1
  %97 = getelementptr i8, ptr %76, i32 5
  store i8 %96, ptr %97, align 1
  %98 = getelementptr i8, ptr %76, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(6) %98, i8 0, i64 6, i1 false) #13
  br i1 %34, label %105, label %99

99:                                               ; preds = %65
  %100 = getelementptr i8, ptr %0, i32 18
  %101 = load i8, ptr %100, align 1
  %102 = getelementptr i8, ptr %76, i32 12
  store i8 %101, ptr %102, align 1
  %103 = getelementptr i8, ptr %0, i32 19
  %104 = load i8, ptr %103, align 1
  br label %112

105:                                              ; preds = %65
  %106 = load i8, ptr %78, align 1
  %107 = and i8 %106, -16
  %108 = icmp eq i8 %107, 96
  %109 = getelementptr i8, ptr %76, i32 12
  br i1 %108, label %110, label %111

110:                                              ; preds = %105
  store i8 -122, ptr %109, align 1
  br label %112

111:                                              ; preds = %105
  store i8 8, ptr %109, align 1
  br label %112

112:                                              ; preds = %111, %110, %99
  %113 = phi i8 [ -35, %110 ], [ 0, %111 ], [ %104, %99 ]
  %114 = getelementptr i8, ptr %76, i32 13
  store i8 %113, ptr %114, align 1
  %115 = load ptr, ptr %66, align 4
  %116 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 16
  %117 = load ptr, ptr %116, align 8
  %118 = ptrtoint ptr %115 to i32
  %119 = ptrtoint ptr %117 to i32
  %120 = sub i32 %118, %119
  %121 = trunc i32 %120 to i16
  %122 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 13, i32 0, i32 19
  store i16 %121, ptr %122, align 2
  %123 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 19
  %124 = load i16, ptr %123, align 2
  %125 = zext i16 %124 to i32
  %126 = tail call ptr @skb_pull(ptr noundef nonnull %59, i32 noundef %125) #13
  %127 = load ptr, ptr %116, align 8
  %128 = load i16, ptr %122, align 2
  %129 = zext i16 %128 to i32
  %130 = getelementptr i8, ptr %127, i32 %129
  %131 = load i8, ptr %130, align 1
  %132 = and i8 %131, 1
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %152, label %134

134:                                              ; preds = %112
  %135 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 83
  %136 = load i32, ptr %130, align 4
  %137 = load i32, ptr %135, align 4
  %138 = xor i32 %137, %136
  %139 = getelementptr i8, ptr %130, i32 4
  %140 = load i16, ptr %139, align 2
  %141 = getelementptr %struct.net_device, ptr %8, i32 0, i32 83, i32 4
  %142 = load i16, ptr %141, align 2
  %143 = xor i16 %142, %140
  %144 = zext i16 %143 to i32
  %145 = or i32 %138, %144
  %146 = icmp eq i32 %145, 0
  %147 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 13
  %148 = load i16, ptr %147, align 8
  %149 = and i16 %148, -8
  %150 = select i1 %146, i16 1, i16 2
  %151 = or i16 %150, %149
  store i16 %151, ptr %147, align 8
  br label %152

152:                                              ; preds = %134, %112
  %153 = getelementptr inbounds %struct.ethhdr, ptr %130, i32 0, i32 2
  %154 = load i16, ptr %153, align 1
  %155 = shl i16 %154, 8
  %156 = icmp ugt i16 %155, 1535
  br i1 %156, label %162, label %157

157:                                              ; preds = %152
  %158 = load ptr, ptr %66, align 4
  %159 = load i16, ptr %158, align 2
  %160 = icmp eq i16 %159, -1
  %161 = select i1 %160, i16 256, i16 1024
  br label %162

162:                                              ; preds = %157, %152
  %163 = phi i16 [ %154, %152 ], [ %161, %157 ]
  %164 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 13, i32 0, i32 16
  store i16 %163, ptr %164, align 8
  %165 = load i32, ptr %9, align 4
  %166 = add i32 %165, 1
  store i32 %166, ptr %9, align 4
  %167 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 5
  %168 = load i32, ptr %167, align 8
  %169 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 2
  %170 = load i32, ptr %169, align 4
  %171 = add i32 %170, %168
  store i32 %171, ptr %169, align 4
  %172 = tail call i32 @netif_rx(ptr noundef nonnull %59) #13
  br label %173

173:                                              ; preds = %162, %61, %50, %41, %25, %11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dvb_net_filter_sec_set(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  store ptr null, ptr %1, align 4
  %5 = getelementptr i8, ptr %0, i32 1428
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dmx_section_feed, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %6, ptr noundef %1) #13
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %0) #14
  br label %70

13:                                               ; preds = %4
  %14 = load ptr, ptr %1, align 4
  %15 = getelementptr inbounds %struct.dmx_section_filter, ptr %14, i32 0, i32 4
  store ptr %0, ptr %15, align 4
  %16 = load ptr, ptr %1, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(18) %16, i8 0, i32 18, i1 false)
  %17 = load ptr, ptr %1, align 4
  %18 = getelementptr inbounds %struct.dmx_section_filter, ptr %17, i32 0, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(18) %18, i8 0, i32 18, i1 false)
  %19 = load ptr, ptr %1, align 4
  %20 = getelementptr inbounds %struct.dmx_section_filter, ptr %19, i32 0, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(18) %20, i8 -1, i32 18, i1 false)
  %21 = load ptr, ptr %1, align 4
  store i8 62, ptr %21, align 4
  %22 = getelementptr i8, ptr %2, i32 5
  %23 = load i8, ptr %22, align 1
  %24 = load ptr, ptr %1, align 4
  %25 = getelementptr [18 x i8], ptr %24, i32 0, i32 3
  store i8 %23, ptr %25, align 1
  %26 = getelementptr i8, ptr %2, i32 4
  %27 = load i8, ptr %26, align 1
  %28 = load ptr, ptr %1, align 4
  %29 = getelementptr [18 x i8], ptr %28, i32 0, i32 4
  store i8 %27, ptr %29, align 4
  %30 = getelementptr i8, ptr %2, i32 3
  %31 = load i8, ptr %30, align 1
  %32 = load ptr, ptr %1, align 4
  %33 = getelementptr [18 x i8], ptr %32, i32 0, i32 8
  store i8 %31, ptr %33, align 4
  %34 = getelementptr i8, ptr %2, i32 2
  %35 = load i8, ptr %34, align 1
  %36 = load ptr, ptr %1, align 4
  %37 = getelementptr [18 x i8], ptr %36, i32 0, i32 9
  store i8 %35, ptr %37, align 1
  %38 = getelementptr i8, ptr %2, i32 1
  %39 = load i8, ptr %38, align 1
  %40 = load ptr, ptr %1, align 4
  %41 = getelementptr [18 x i8], ptr %40, i32 0, i32 10
  store i8 %39, ptr %41, align 2
  %42 = load i8, ptr %2, align 1
  %43 = load ptr, ptr %1, align 4
  %44 = getelementptr [18 x i8], ptr %43, i32 0, i32 11
  store i8 %42, ptr %44, align 1
  %45 = load ptr, ptr %1, align 4
  %46 = getelementptr inbounds %struct.dmx_section_filter, ptr %45, i32 0, i32 1
  store i8 -1, ptr %46, align 2
  %47 = getelementptr i8, ptr %3, i32 5
  %48 = load i8, ptr %47, align 1
  %49 = load ptr, ptr %1, align 4
  %50 = getelementptr %struct.dmx_section_filter, ptr %49, i32 0, i32 1, i32 3
  store i8 %48, ptr %50, align 1
  %51 = getelementptr i8, ptr %3, i32 4
  %52 = load i8, ptr %51, align 1
  %53 = load ptr, ptr %1, align 4
  %54 = getelementptr %struct.dmx_section_filter, ptr %53, i32 0, i32 1, i32 4
  store i8 %52, ptr %54, align 2
  %55 = getelementptr i8, ptr %3, i32 3
  %56 = load i8, ptr %55, align 1
  %57 = load ptr, ptr %1, align 4
  %58 = getelementptr %struct.dmx_section_filter, ptr %57, i32 0, i32 1, i32 8
  store i8 %56, ptr %58, align 2
  %59 = getelementptr i8, ptr %3, i32 2
  %60 = load i8, ptr %59, align 1
  %61 = load ptr, ptr %1, align 4
  %62 = getelementptr %struct.dmx_section_filter, ptr %61, i32 0, i32 1, i32 9
  store i8 %60, ptr %62, align 1
  %63 = getelementptr i8, ptr %3, i32 1
  %64 = load i8, ptr %63, align 1
  %65 = load ptr, ptr %1, align 4
  %66 = getelementptr %struct.dmx_section_filter, ptr %65, i32 0, i32 1, i32 10
  store i8 %64, ptr %66, align 2
  %67 = load i8, ptr %3, align 1
  %68 = load ptr, ptr %1, align 4
  %69 = getelementptr %struct.dmx_section_filter, ptr %68, i32 0, i32 1, i32 11
  store i8 %67, ptr %69, align 1
  br label %70

70:                                               ; preds = %13, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_net_ts_callback(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readnone %5) #0 {
  %7 = alloca [6 x i8], align 1
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = getelementptr inbounds %struct.dmx_ts_feed, ptr %4, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %2, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %6
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull %2) #14
  br label %15

15:                                               ; preds = %13, %6
  %16 = icmp ugt i32 %1, 32768
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %1) #14
  br label %19

19:                                               ; preds = %17, %15
  %20 = getelementptr i8, ptr %11, i32 1408
  %21 = getelementptr i8, ptr %0, i32 %1
  %22 = icmp ugt ptr %21, %0
  br i1 %22, label %23, label %605

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %11, i32 1612
  %25 = getelementptr i8, ptr %11, i32 1592
  %26 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 36, i32 4
  %27 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 36, i32 13
  %28 = getelementptr i8, ptr %11, i32 1608
  %29 = getelementptr i8, ptr %11, i32 1605
  %30 = getelementptr i8, ptr %11, i32 1606
  %31 = getelementptr i8, ptr %11, i32 1584
  %32 = getelementptr i8, ptr %11, i32 1588
  %33 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 36, i32 10
  %34 = getelementptr i8, ptr %11, i32 1600
  %35 = getelementptr i8, ptr %11, i32 1602
  %36 = getelementptr i8, ptr %11, i32 1604
  %37 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 36, i32 12
  %38 = getelementptr i8, ptr %11, i32 1544
  %39 = getelementptr i8, ptr %11, i32 1440
  %40 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 72
  %41 = getelementptr i8, ptr %11, i32 1596
  %42 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 19
  %43 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 83
  %44 = getelementptr %struct.net_device, ptr %11, i32 0, i32 83, i32 4
  %45 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 36
  %46 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 36, i32 2
  br label %47

47:                                               ; preds = %304, %23
  %48 = phi i8 [ 1, %23 ], [ %305, %304 ]
  %49 = phi i8 [ 0, %23 ], [ %306, %304 ]
  %50 = phi ptr [ null, %23 ], [ %307, %304 ]
  %51 = phi ptr [ %0, %23 ], [ %308, %304 ]
  %52 = icmp eq i8 %48, 0
  br label %53

53:                                               ; preds = %198, %47
  %54 = phi i8 [ %49, %47 ], [ %201, %198 ]
  %55 = phi ptr [ %50, %47 ], [ %200, %198 ]
  %56 = phi ptr [ %51, %47 ], [ %199, %198 ]
  br i1 %52, label %91, label %57

57:                                               ; preds = %86, %53
  %58 = phi ptr [ %87, %86 ], [ %56, %53 ]
  %59 = load i8, ptr %58, align 1
  %60 = icmp eq i8 %59, 71
  %61 = getelementptr i8, ptr %58, i32 1
  %62 = load i8, ptr %61, align 1
  %63 = icmp sgt i8 %62, -1
  %64 = select i1 %60, i1 %63, i1 false
  %65 = getelementptr i8, ptr %58, i32 3
  %66 = load i8, ptr %65, align 1
  %67 = icmp ult i8 %66, 64
  %68 = select i1 %64, i1 %67, i1 false
  br i1 %68, label %84, label %69

69:                                               ; preds = %57
  %70 = load i32, ptr %24, align 4
  %71 = zext i8 %59 to i32
  %72 = lshr i8 %62, 7
  %73 = zext i8 %72 to i32
  %74 = lshr i8 %66, 6
  %75 = zext i8 %74 to i32
  %76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %70, i32 noundef %71, i32 noundef %73, i32 noundef %75) #14
  %77 = load ptr, ptr %25, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %86, label %79

79:                                               ; preds = %69
  call void @consume_skb(ptr noundef nonnull %77) #13
  %80 = load i32, ptr %26, align 8
  %81 = add i32 %80, 1
  store i32 %81, ptr %26, align 8
  %82 = load i32, ptr %27, align 4
  %83 = add i32 %82, 1
  store i32 %83, ptr %27, align 4
  br label %86

84:                                               ; preds = %57
  %85 = getelementptr i8, ptr %58, i32 4
  br label %91

86:                                               ; preds = %79, %69
  store i32 0, ptr %28, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(13) %25, i8 0, i64 13, i1 false) #13
  store i8 -1, ptr %29, align 1
  store i8 0, ptr %30, align 2
  store i32 1, ptr %31, align 4
  %87 = getelementptr i8, ptr %58, i32 188
  %88 = load i32, ptr %24, align 4
  %89 = add i32 %88, 1
  store i32 %89, ptr %24, align 4
  %90 = icmp ult ptr %87, %21
  br i1 %90, label %57, label %605

91:                                               ; preds = %84, %53
  %92 = phi ptr [ %58, %84 ], [ %56, %53 ]
  %93 = phi ptr [ %85, %84 ], [ %55, %53 ]
  %94 = phi i8 [ -72, %84 ], [ %54, %53 ]
  %95 = load i32, ptr %31, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %122, label %97

97:                                               ; preds = %91
  %98 = getelementptr i8, ptr %92, i32 1
  %99 = load i8, ptr %98, align 1
  %100 = and i8 %99, 64
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %118, label %102

102:                                              ; preds = %97
  %103 = getelementptr i8, ptr %92, i32 3
  %104 = load i8, ptr %103, align 1
  %105 = and i8 %104, 15
  store i8 %105, ptr %32, align 4
  %106 = getelementptr i8, ptr %92, i32 4
  %107 = load i8, ptr %106, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp ugt i8 %107, %94
  br i1 %109, label %110, label %113

110:                                              ; preds = %102
  %111 = load i32, ptr %24, align 4
  %112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %111, i32 noundef %108) #14
  br label %118

113:                                              ; preds = %102
  %114 = getelementptr i8, ptr %92, i32 5
  %115 = getelementptr i8, ptr %114, i32 %108
  %116 = xor i8 %107, -1
  %117 = add i8 %94, %116
  br label %122

118:                                              ; preds = %110, %97
  %119 = load i32, ptr %24, align 4
  %120 = add i32 %119, 1
  store i32 %120, ptr %24, align 4
  %121 = getelementptr i8, ptr %92, i32 188
  br label %198

122:                                              ; preds = %113, %91
  %123 = phi ptr [ %93, %91 ], [ %115, %113 ]
  %124 = phi i8 [ %94, %91 ], [ %117, %113 ]
  br i1 %52, label %203, label %125

125:                                              ; preds = %122
  %126 = getelementptr i8, ptr %92, i32 3
  %127 = load i8, ptr %126, align 1
  %128 = and i8 %127, 15
  %129 = load i8, ptr %32, align 4
  %130 = icmp eq i8 %128, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %125
  %132 = add i8 %127, 1
  %133 = and i8 %132, 15
  store i8 %133, ptr %32, align 4
  %134 = getelementptr i8, ptr %92, i32 1
  %135 = load i8, ptr %134, align 1
  %136 = and i8 %135, 64
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %203, label %145

138:                                              ; preds = %125
  %139 = zext i8 %129 to i32
  %140 = zext i8 %128 to i32
  %141 = load i32, ptr %24, align 4
  %142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %141, i32 noundef %140, i32 noundef %139) #14
  %143 = load ptr, ptr %25, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %197, label %190

145:                                              ; preds = %131
  br i1 %96, label %146, label %167

146:                                              ; preds = %145
  %147 = load i8, ptr %123, align 1
  %148 = zext i8 %147 to i32
  %149 = zext i8 %124 to i32
  %150 = add nsw i32 %149, -1
  %151 = icmp sgt i32 %150, %148
  br i1 %151, label %152, label %155

152:                                              ; preds = %146
  %153 = load i32, ptr %28, align 4
  %154 = icmp eq i32 %153, %148
  br i1 %154, label %163, label %155

155:                                              ; preds = %152, %146
  %156 = load i32, ptr %24, align 4
  %157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %156, i32 noundef %148) #14
  %158 = load ptr, ptr %25, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %160, label %190

160:                                              ; preds = %155
  %161 = load i32, ptr %28, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %197, label %192

163:                                              ; preds = %152
  %164 = zext i8 %147 to i32
  %165 = getelementptr i8, ptr %123, i32 1
  %166 = add i8 %124, -1
  br label %169

167:                                              ; preds = %145
  store i32 0, ptr %31, align 4
  %168 = load i32, ptr %28, align 4
  br label %169

169:                                              ; preds = %167, %163
  %170 = phi i32 [ %164, %163 ], [ %168, %167 ]
  %171 = phi ptr [ %165, %163 ], [ %123, %167 ]
  %172 = phi i8 [ %166, %163 ], [ %124, %167 ]
  %173 = icmp sgt i32 %170, 183
  br i1 %173, label %174, label %203

174:                                              ; preds = %169
  %175 = load i32, ptr %26, align 8
  %176 = add i32 %175, 1
  store i32 %176, ptr %26, align 8
  %177 = load i32, ptr %33, align 8
  %178 = add i32 %177, 1
  store i32 %178, ptr %33, align 8
  %179 = load i32, ptr %24, align 4
  %180 = getelementptr i8, ptr %92, i32 4
  %181 = load i8, ptr %180, align 1
  %182 = zext i8 %181 to i32
  %183 = zext i8 %172 to i32
  %184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %179, i32 noundef %170, i32 noundef %182, i32 noundef %183) #14
  %185 = load ptr, ptr %25, align 4
  call void @consume_skb(ptr noundef %185) #13
  store i32 0, ptr %28, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(13) %25, i8 0, i64 13, i1 false) #13
  store i8 -1, ptr %29, align 1
  store i8 0, ptr %30, align 2
  %186 = load i8, ptr %180, align 1
  %187 = zext i8 %186 to i32
  %188 = getelementptr i8, ptr %171, i32 %187
  %189 = sub i8 %172, %186
  br label %203

190:                                              ; preds = %155, %138
  %191 = phi ptr [ %143, %138 ], [ %158, %155 ]
  call void @consume_skb(ptr noundef nonnull %191) #13
  br label %192

192:                                              ; preds = %190, %160
  %193 = load i32, ptr %26, align 8
  %194 = add i32 %193, 1
  store i32 %194, ptr %26, align 8
  %195 = load i32, ptr %27, align 4
  %196 = add i32 %195, 1
  store i32 %196, ptr %27, align 4
  br label %197

197:                                              ; preds = %192, %160, %138
  store i32 0, ptr %28, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(13) %25, i8 0, i64 13, i1 false) #13
  store i8 -1, ptr %29, align 1
  store i8 0, ptr %30, align 2
  store i32 1, ptr %31, align 4
  br label %198

198:                                              ; preds = %197, %118
  %199 = phi ptr [ %121, %118 ], [ %92, %197 ]
  %200 = phi ptr [ %93, %118 ], [ %123, %197 ]
  %201 = phi i8 [ %94, %118 ], [ %124, %197 ]
  %202 = icmp ult ptr %199, %21
  br i1 %202, label %53, label %605

203:                                              ; preds = %174, %169, %131, %122
  %204 = phi ptr [ %171, %169 ], [ %188, %174 ], [ %123, %122 ], [ %123, %131 ]
  %205 = phi i8 [ %172, %169 ], [ %189, %174 ], [ %124, %122 ], [ %124, %131 ]
  %206 = load ptr, ptr %25, align 4
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %309

208:                                              ; preds = %203
  %209 = icmp ult i8 %205, 2
  br i1 %209, label %210, label %213

210:                                              ; preds = %208
  %211 = zext i8 %205 to i32
  %212 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %211) #14
  store i16 0, ptr %34, align 4
  store i32 1, ptr %31, align 4
  br label %298

213:                                              ; preds = %208
  %214 = load i16, ptr %34, align 4
  %215 = icmp eq i16 %214, 0
  br i1 %215, label %216, label %240

216:                                              ; preds = %213
  %217 = load i8, ptr %204, align 1
  %218 = zext i8 %217 to i16
  %219 = shl nuw i16 %218, 8
  %220 = getelementptr i8, ptr %204, i32 1
  %221 = load i8, ptr %220, align 1
  %222 = zext i8 %221 to i16
  %223 = and i16 %219, 32512
  %224 = or i16 %223, %222
  %225 = lshr i8 %217, 7
  store i16 %224, ptr %34, align 4
  store i8 %225, ptr %29, align 1
  %226 = icmp ult i16 %224, 5
  br i1 %226, label %227, label %237

227:                                              ; preds = %216
  %228 = zext i16 %224 to i32
  %229 = load i32, ptr %24, align 4
  %230 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %229, i32 noundef %228) #14
  %231 = load i32, ptr %26, align 8
  %232 = add i32 %231, 1
  store i32 %232, ptr %26, align 8
  %233 = load i32, ptr %33, align 8
  %234 = add i32 %233, 1
  store i32 %234, ptr %33, align 8
  store i16 0, ptr %34, align 4
  store i32 1, ptr %31, align 4
  %235 = load i32, ptr %24, align 4
  %236 = add i32 %235, 1
  store i32 %236, ptr %24, align 4
  br label %298

237:                                              ; preds = %216
  %238 = add i8 %205, -2
  %239 = getelementptr i8, ptr %204, i32 2
  br label %240

240:                                              ; preds = %237, %213
  %241 = phi ptr [ %239, %237 ], [ %204, %213 ]
  %242 = phi i8 [ %238, %237 ], [ %205, %213 ]
  %243 = phi i16 [ %224, %237 ], [ %214, %213 ]
  %244 = zext i16 %243 to i32
  %245 = add nuw nsw i32 %244, 2
  store i32 %245, ptr %28, align 4
  switch i8 %242, label %256 [
    i8 1, label %246
    i8 0, label %252
  ]

246:                                              ; preds = %240
  %247 = add nuw nsw i32 %244, 1
  store i32 %247, ptr %28, align 4
  %248 = load i8, ptr %241, align 1
  %249 = zext i8 %248 to i16
  %250 = shl nuw i16 %249, 8
  store i16 %250, ptr %35, align 2
  store i8 1, ptr %36, align 4
  %251 = getelementptr i8, ptr %241, i32 1
  br label %252

252:                                              ; preds = %246, %240
  %253 = phi ptr [ %241, %240 ], [ %251, %246 ]
  %254 = load i32, ptr %24, align 4
  %255 = add i32 %254, 1
  store i32 %255, ptr %24, align 4
  br label %298

256:                                              ; preds = %240
  %257 = load i8, ptr %36, align 4
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %264, label %259

259:                                              ; preds = %256
  store i8 0, ptr %36, align 4
  %260 = load i8, ptr %241, align 1
  %261 = zext i8 %260 to i16
  %262 = load i16, ptr %35, align 2
  %263 = or i16 %262, %261
  br label %272

264:                                              ; preds = %256
  %265 = load i8, ptr %241, align 1
  %266 = zext i8 %265 to i16
  %267 = shl nuw i16 %266, 8
  %268 = getelementptr i8, ptr %241, i32 1
  %269 = load i8, ptr %268, align 1
  %270 = zext i8 %269 to i16
  %271 = or i16 %267, %270
  br label %272

272:                                              ; preds = %264, %259
  %273 = phi i16 [ %263, %259 ], [ %271, %264 ]
  %274 = phi i32 [ 1, %259 ], [ 2, %264 ]
  %275 = phi i8 [ -1, %259 ], [ -2, %264 ]
  store i16 %273, ptr %35, align 2
  %276 = add nuw nsw i32 %244, 20
  %277 = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %276, i32 noundef 2592) #13
  store ptr %277, ptr %25, align 4
  %278 = icmp eq ptr %277, null
  br i1 %278, label %293, label %279

279:                                              ; preds = %272
  %280 = add i8 %275, %242
  %281 = getelementptr i8, ptr %241, i32 %274
  %282 = load i16, ptr %34, align 4
  %283 = zext i16 %282 to i32
  store i32 %283, ptr %28, align 4
  %284 = getelementptr inbounds %struct.anon.41, ptr %277, i32 0, i32 2
  store ptr %11, ptr %284, align 8
  %285 = load ptr, ptr %25, align 4
  %286 = getelementptr inbounds %struct.sk_buff, ptr %285, i32 0, i32 17
  %287 = load ptr, ptr %286, align 4
  %288 = getelementptr i8, ptr %287, i32 20
  store ptr %288, ptr %286, align 4
  %289 = getelementptr inbounds %struct.sk_buff, ptr %285, i32 0, i32 14
  %290 = load ptr, ptr %289, align 8
  %291 = getelementptr i8, ptr %290, i32 20
  store ptr %291, ptr %289, align 8
  %292 = load ptr, ptr %25, align 4
  br label %309

293:                                              ; preds = %272
  %294 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %11) #14
  %295 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 36, i32 6
  %296 = load i32, ptr %295, align 8
  %297 = add i32 %296, 1
  store i32 %297, ptr %295, align 8
  br label %605

298:                                              ; preds = %252, %227, %210
  %299 = phi ptr [ %253, %252 ], [ %204, %227 ], [ %204, %210 ]
  %300 = phi i8 [ 0, %252 ], [ %205, %227 ], [ %205, %210 ]
  %301 = phi i8 [ 1, %252 ], [ 1, %227 ], [ %48, %210 ]
  %302 = getelementptr i8, ptr %92, i32 188
  %303 = icmp ult ptr %302, %21
  br i1 %303, label %304, label %605

304:                                              ; preds = %601, %298
  %305 = phi i8 [ %301, %298 ], [ %603, %601 ]
  %306 = phi i8 [ %300, %298 ], [ %321, %601 ]
  %307 = phi ptr [ %299, %298 ], [ %322, %601 ]
  %308 = phi ptr [ %302, %298 ], [ %602, %601 ]
  br label %47

309:                                              ; preds = %279, %203
  %310 = phi ptr [ %292, %279 ], [ %206, %203 ]
  %311 = phi ptr [ %281, %279 ], [ %204, %203 ]
  %312 = phi i8 [ %280, %279 ], [ %205, %203 ]
  %313 = load i32, ptr %28, align 4
  %314 = zext i8 %312 to i32
  %315 = call i32 @llvm.smin.i32(i32 %313, i32 %314) #13
  %316 = trunc i32 %315 to i8
  %317 = and i32 %315, 255
  %318 = call ptr @skb_put(ptr noundef %310, i32 noundef %317) #13
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %318, ptr align 1 %311, i32 %317, i1 false) #13
  %319 = load i32, ptr %28, align 4
  %320 = sub i32 %319, %317
  store i32 %320, ptr %28, align 4
  %321 = sub i8 %312, %316
  %322 = getelementptr i8, ptr %311, i32 %317
  %323 = icmp slt i32 %320, 1
  br i1 %323, label %324, label %585

324:                                              ; preds = %309
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #13
  %325 = load i16, ptr %34, align 4
  %326 = call i16 @llvm.bswap.i16(i16 %325) #13
  store i16 %326, ptr %8, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #13
  %327 = load i16, ptr %35, align 2
  %328 = call i16 @llvm.bswap.i16(i16 %327) #13
  store i16 %328, ptr %9, align 2
  %329 = load ptr, ptr %25, align 4
  %330 = getelementptr inbounds %struct.sk_buff, ptr %329, i32 0, i32 17
  %331 = load ptr, ptr %330, align 4
  %332 = getelementptr inbounds %struct.sk_buff, ptr %329, i32 0, i32 5
  %333 = load i32, ptr %332, align 8
  %334 = add i32 %333, -4
  %335 = load i8, ptr %29, align 1
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %339, label %337

337:                                              ; preds = %324
  %338 = or i16 %326, 128
  store i16 %338, ptr %8, align 2
  br label %339

339:                                              ; preds = %337, %324
  %340 = call i32 @crc32_be(i32 noundef -1, ptr noundef nonnull %8, i32 noundef 2) #15
  %341 = call i32 @crc32_be(i32 noundef %340, ptr noundef nonnull %9, i32 noundef 2) #15
  %342 = call i32 @crc32_be(i32 noundef %341, ptr noundef %331, i32 noundef %334) #15
  %343 = getelementptr inbounds %struct.sk_buff, ptr %329, i32 0, i32 14
  %344 = load ptr, ptr %343, align 8
  %345 = getelementptr i8, ptr %344, i32 -4
  %346 = load i8, ptr %345, align 1
  %347 = zext i8 %346 to i32
  %348 = shl nuw i32 %347, 24
  %349 = getelementptr i8, ptr %344, i32 -3
  %350 = load i8, ptr %349, align 1
  %351 = zext i8 %350 to i32
  %352 = shl nuw nsw i32 %351, 16
  %353 = or i32 %352, %348
  %354 = getelementptr i8, ptr %344, i32 -2
  %355 = load i8, ptr %354, align 1
  %356 = zext i8 %355 to i32
  %357 = shl nuw nsw i32 %356, 8
  %358 = or i32 %353, %357
  %359 = getelementptr i8, ptr %344, i32 -1
  %360 = load i8, ptr %359, align 1
  %361 = zext i8 %360 to i32
  %362 = or i32 %358, %361
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7)
  %363 = icmp eq i32 %342, %362
  br i1 %363, label %381, label %364

364:                                              ; preds = %339
  %365 = load i32, ptr %24, align 4
  %366 = zext i16 %325 to i32
  %367 = zext i16 %327 to i32
  %368 = zext i8 %321 to i32
  %369 = icmp ugt i8 %321, 2
  br i1 %369, label %370, label %373

370:                                              ; preds = %364
  %371 = load i16, ptr %322, align 2
  %372 = zext i16 %371 to i32
  br label %373

373:                                              ; preds = %370, %364
  %374 = phi i32 [ %372, %370 ], [ 0, %364 ]
  %375 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %365, i32 noundef %342, i32 noundef %362, i32 noundef %366, i32 noundef %367, i32 noundef %368, i32 noundef %374) #14
  %376 = load i32, ptr %26, align 8
  %377 = add i32 %376, 1
  store i32 %377, ptr %26, align 8
  %378 = load i32, ptr %37, align 8
  %379 = add i32 %378, 1
  store i32 %379, ptr %37, align 8
  %380 = load ptr, ptr %25, align 4
  call void @consume_skb(ptr noundef %380) #13
  br label %584

381:                                              ; preds = %339
  store ptr %345, ptr %343, align 8
  %382 = load ptr, ptr %25, align 4
  %383 = getelementptr inbounds %struct.sk_buff, ptr %382, i32 0, i32 5
  %384 = load i32, ptr %383, align 8
  %385 = add i32 %384, -4
  store i32 %385, ptr %383, align 8
  %386 = load i8, ptr %29, align 1
  %387 = icmp eq i8 %386, 0
  br i1 %387, label %388, label %444

388:                                              ; preds = %381
  %389 = load i32, ptr %38, align 4
  %390 = icmp eq i32 %389, 3
  %391 = load ptr, ptr %25, align 4
  %392 = getelementptr inbounds %struct.sk_buff, ptr %391, i32 0, i32 17
  %393 = load ptr, ptr %392, align 4
  br i1 %390, label %442, label %394

394:                                              ; preds = %388
  %395 = load i8, ptr %393, align 1
  %396 = and i8 %395, 1
  %397 = icmp eq i8 %396, 0
  br i1 %397, label %428, label %398

398:                                              ; preds = %394
  %399 = load i32, ptr %393, align 4
  %400 = xor i32 %399, -1
  %401 = getelementptr i8, ptr %393, i32 4
  %402 = load i16, ptr %401, align 2
  %403 = xor i16 %402, -1
  %404 = zext i16 %403 to i32
  %405 = or i32 %404, %400
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %442, label %407

407:                                              ; preds = %398
  switch i32 %389, label %441 [
    i32 1, label %408
    i32 2, label %442
  ]

408:                                              ; preds = %407
  %409 = load i32, ptr %39, align 4
  %410 = icmp sgt i32 %409, 0
  br i1 %410, label %411, label %425

411:                                              ; preds = %422, %408
  %412 = phi i32 [ %423, %422 ], [ 0, %408 ]
  %413 = getelementptr %struct.dvb_net_priv, ptr %20, i32 0, i32 10, i32 %412
  %414 = load i32, ptr %413, align 4
  %415 = xor i32 %414, %399
  %416 = getelementptr i8, ptr %413, i32 4
  %417 = load i16, ptr %416, align 2
  %418 = xor i16 %417, %402
  %419 = zext i16 %418 to i32
  %420 = or i32 %415, %419
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %425, label %422

422:                                              ; preds = %411
  %423 = add nuw nsw i32 %412, 1
  %424 = icmp eq i32 %423, %409
  br i1 %424, label %441, label %411

425:                                              ; preds = %411, %408
  %426 = phi i32 [ 0, %408 ], [ %412, %411 ]
  %427 = icmp eq i32 %426, %409
  br i1 %427, label %441, label %442

428:                                              ; preds = %394
  %429 = load ptr, ptr %40, align 32
  %430 = load i32, ptr %393, align 4
  %431 = load i32, ptr %429, align 4
  %432 = xor i32 %431, %430
  %433 = getelementptr i8, ptr %393, i32 4
  %434 = load i16, ptr %433, align 2
  %435 = getelementptr i8, ptr %429, i32 4
  %436 = load i16, ptr %435, align 2
  %437 = xor i16 %436, %434
  %438 = zext i16 %437 to i32
  %439 = or i32 %432, %438
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %442, label %441

441:                                              ; preds = %428, %425, %422, %407
  call void @consume_skb(ptr noundef %391) #13
  br label %584

442:                                              ; preds = %428, %425, %407, %398, %388
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %7, ptr noundef align 1 dereferenceable(6) %393, i32 6, i1 false) #13
  %443 = call ptr @skb_pull(ptr noundef %391, i32 noundef 6) #13
  br label %445

444:                                              ; preds = %381
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %7, i8 0, i32 6, i1 false)
  br label %445

445:                                              ; preds = %444, %442
  %446 = load i16, ptr %35, align 2
  %447 = icmp ult i16 %446, 1536
  br i1 %447, label %448, label %512

448:                                              ; preds = %445
  %449 = load ptr, ptr %25, align 4
  %450 = getelementptr inbounds %struct.sk_buff, ptr %449, i32 0, i32 17
  %451 = load ptr, ptr %450, align 4
  store ptr %451, ptr %41, align 4
  br label %452

452:                                              ; preds = %499, %448
  %453 = phi ptr [ %451, %448 ], [ %500, %499 ]
  %454 = phi i16 [ %446, %448 ], [ %501, %499 ]
  %455 = phi i32 [ 0, %448 ], [ %503, %499 ]
  %456 = icmp ult i16 %454, 256
  br i1 %456, label %457, label %481

457:                                              ; preds = %452
  %458 = zext i16 %454 to i32
  %459 = getelementptr [255 x ptr], ptr @handle_one_ule_extension.ule_mandatory_ext_handlers, i32 0, i32 %458
  %460 = load ptr, ptr %459, align 4
  %461 = icmp eq ptr %460, null
  br i1 %461, label %507, label %462

462:                                              ; preds = %457
  %463 = call i32 %460(ptr noundef %20) #13
  %464 = icmp sgt i32 %463, -1
  br i1 %464, label %465, label %507

465:                                              ; preds = %462
  %466 = load ptr, ptr %41, align 4
  %467 = getelementptr i8, ptr %466, i32 %463
  store ptr %467, ptr %41, align 4
  %468 = load i8, ptr %30, align 2
  %469 = icmp eq i8 %468, 0
  br i1 %469, label %470, label %474

470:                                              ; preds = %465
  %471 = load i16, ptr %467, align 2
  %472 = call i16 @llvm.bswap.i16(i16 %471) #13
  store i16 %472, ptr %35, align 2
  %473 = getelementptr i8, ptr %467, i32 2
  store ptr %473, ptr %41, align 4
  br label %499

474:                                              ; preds = %465
  %475 = load i8, ptr %29, align 1
  %476 = icmp eq i8 %475, 0
  %477 = select i1 %476, i32 18, i32 12
  %478 = getelementptr i8, ptr %467, i32 %477
  %479 = load i16, ptr %478, align 2
  %480 = call i16 @llvm.bswap.i16(i16 %479) #13
  store i16 %480, ptr %35, align 2
  br label %499

481:                                              ; preds = %452
  %482 = lshr i16 %454, 7
  %483 = and i16 %482, 510
  %484 = zext i16 %483 to i32
  %485 = and i16 %454, 255
  %486 = zext i16 %485 to i32
  %487 = getelementptr [255 x ptr], ptr @handle_one_ule_extension.ule_optional_ext_handlers, i32 0, i32 %486
  %488 = load ptr, ptr %487, align 4
  %489 = icmp eq ptr %488, null
  br i1 %489, label %493, label %490

490:                                              ; preds = %481
  %491 = call i32 %488(ptr noundef %20) #13
  %492 = load ptr, ptr %41, align 4
  br label %493

493:                                              ; preds = %490, %481
  %494 = phi ptr [ %492, %490 ], [ %453, %481 ]
  %495 = getelementptr i8, ptr %494, i32 %484
  store ptr %495, ptr %41, align 4
  %496 = getelementptr i8, ptr %495, i32 -2
  %497 = load i16, ptr %496, align 2
  %498 = call i16 @llvm.bswap.i16(i16 %497) #13
  store i16 %498, ptr %35, align 2
  br label %499

499:                                              ; preds = %493, %474, %470
  %500 = phi ptr [ %467, %474 ], [ %473, %470 ], [ %495, %493 ]
  %501 = phi i16 [ %480, %474 ], [ %472, %470 ], [ %498, %493 ]
  %502 = phi i32 [ %463, %474 ], [ %463, %470 ], [ %484, %493 ]
  %503 = add i32 %502, %455
  %504 = icmp ult i16 %501, 1536
  br i1 %504, label %452, label %505

505:                                              ; preds = %499
  %506 = icmp slt i32 %503, 0
  br i1 %506, label %507, label %509

507:                                              ; preds = %505, %462, %457
  %508 = load ptr, ptr %25, align 4
  call void @consume_skb(ptr noundef %508) #13
  br label %584

509:                                              ; preds = %505
  %510 = load ptr, ptr %25, align 4
  %511 = call ptr @skb_pull(ptr noundef %510, i32 noundef %503) #13
  br label %512

512:                                              ; preds = %509, %445
  %513 = load i8, ptr %30, align 2
  %514 = icmp eq i8 %513, 0
  br i1 %514, label %515, label %525

515:                                              ; preds = %512
  %516 = load ptr, ptr %25, align 4
  %517 = call ptr @skb_push(ptr noundef %516, i32 noundef 14) #13
  %518 = load ptr, ptr %25, align 4
  %519 = getelementptr inbounds %struct.sk_buff, ptr %518, i32 0, i32 17
  %520 = load ptr, ptr %519, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %520, ptr noundef nonnull align 1 dereferenceable(6) %7, i32 6, i1 false) #13
  %521 = getelementptr inbounds %struct.ethhdr, ptr %520, i32 0, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %521, i8 0, i32 6, i1 false) #13
  %522 = load i16, ptr %35, align 2
  %523 = call i16 @llvm.bswap.i16(i16 %522) #13
  %524 = getelementptr inbounds %struct.ethhdr, ptr %520, i32 0, i32 2
  store i16 %523, ptr %524, align 1
  br label %525

525:                                              ; preds = %515, %512
  store i8 0, ptr %30, align 2
  %526 = load ptr, ptr %25, align 4
  %527 = getelementptr inbounds %struct.sk_buff, ptr %526, i32 0, i32 17
  %528 = load ptr, ptr %527, align 4
  %529 = getelementptr inbounds %struct.sk_buff, ptr %526, i32 0, i32 16
  %530 = load ptr, ptr %529, align 8
  %531 = ptrtoint ptr %528 to i32
  %532 = ptrtoint ptr %530 to i32
  %533 = sub i32 %531, %532
  %534 = trunc i32 %533 to i16
  %535 = getelementptr inbounds %struct.sk_buff, ptr %526, i32 0, i32 13, i32 0, i32 19
  store i16 %534, ptr %535, align 2
  %536 = load i16, ptr %42, align 2
  %537 = zext i16 %536 to i32
  %538 = call ptr @skb_pull(ptr noundef %526, i32 noundef %537) #13
  %539 = load ptr, ptr %529, align 8
  %540 = load i16, ptr %535, align 2
  %541 = zext i16 %540 to i32
  %542 = getelementptr i8, ptr %539, i32 %541
  %543 = load i8, ptr %542, align 1
  %544 = and i8 %543, 1
  %545 = icmp eq i8 %544, 0
  br i1 %545, label %562, label %546

546:                                              ; preds = %525
  %547 = load i32, ptr %542, align 4
  %548 = load i32, ptr %43, align 4
  %549 = xor i32 %548, %547
  %550 = getelementptr i8, ptr %542, i32 4
  %551 = load i16, ptr %550, align 2
  %552 = load i16, ptr %44, align 2
  %553 = xor i16 %552, %551
  %554 = zext i16 %553 to i32
  %555 = or i32 %549, %554
  %556 = icmp eq i32 %555, 0
  %557 = getelementptr inbounds %struct.sk_buff, ptr %526, i32 0, i32 13
  %558 = load i16, ptr %557, align 8
  %559 = and i16 %558, -8
  %560 = select i1 %556, i16 1, i16 2
  %561 = or i16 %560, %559
  store i16 %561, ptr %557, align 8
  br label %562

562:                                              ; preds = %546, %525
  %563 = getelementptr inbounds %struct.ethhdr, ptr %542, i32 0, i32 2
  %564 = load i16, ptr %563, align 1
  %565 = shl i16 %564, 8
  %566 = icmp ugt i16 %565, 1535
  br i1 %566, label %572, label %567

567:                                              ; preds = %562
  %568 = load ptr, ptr %527, align 4
  %569 = load i16, ptr %568, align 2
  %570 = icmp eq i16 %569, -1
  %571 = select i1 %570, i16 256, i16 1024
  br label %572

572:                                              ; preds = %567, %562
  %573 = phi i16 [ %564, %562 ], [ %571, %567 ]
  %574 = load ptr, ptr %25, align 4
  %575 = getelementptr inbounds %struct.sk_buff, ptr %574, i32 0, i32 13, i32 0, i32 16
  store i16 %573, ptr %575, align 8
  %576 = load i32, ptr %45, align 8
  %577 = add i32 %576, 1
  store i32 %577, ptr %45, align 8
  %578 = load ptr, ptr %25, align 4
  %579 = getelementptr inbounds %struct.sk_buff, ptr %578, i32 0, i32 5
  %580 = load i32, ptr %579, align 8
  %581 = load i32, ptr %46, align 8
  %582 = add i32 %581, %580
  store i32 %582, ptr %46, align 8
  %583 = call i32 @netif_rx(ptr noundef %578) #13
  br label %584

584:                                              ; preds = %572, %507, %441, %373
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7)
  store i32 0, ptr %28, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(13) %25, i8 0, i64 13, i1 false) #13
  store i8 -1, ptr %29, align 1
  store i8 0, ptr %30, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #13
  br label %585

585:                                              ; preds = %584, %309
  %586 = icmp ugt i8 %321, 1
  br i1 %586, label %587, label %591

587:                                              ; preds = %585
  %588 = load i16, ptr %322, align 2
  %589 = icmp eq i16 %588, -1
  br i1 %589, label %591, label %590

590:                                              ; preds = %587
  store ptr null, ptr %25, align 4
  br label %598

591:                                              ; preds = %587, %585
  %592 = getelementptr i8, ptr %92, i32 188
  %593 = load i32, ptr %24, align 4
  %594 = add i32 %593, 1
  store i32 %594, ptr %24, align 4
  %595 = load ptr, ptr %25, align 4
  %596 = icmp eq ptr %595, null
  br i1 %596, label %597, label %601

597:                                              ; preds = %591
  store i32 1, ptr %31, align 4
  br label %598

598:                                              ; preds = %597, %590
  %599 = phi ptr [ %92, %590 ], [ %592, %597 ]
  %600 = phi i8 [ 0, %590 ], [ 1, %597 ]
  store i8 0, ptr %36, align 4
  store i16 0, ptr %34, align 4
  br label %601

601:                                              ; preds = %598, %591
  %602 = phi ptr [ %592, %591 ], [ %599, %598 ]
  %603 = phi i8 [ 1, %591 ], [ %600, %598 ]
  %604 = icmp ult ptr %602, %21
  br i1 %604, label %304, label %605

605:                                              ; preds = %601, %298, %293, %198, %86, %19
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_be(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ule_test_sndu(ptr nocapture noundef readnone %0) #9 {
  ret i32 -1
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @ule_bridged_sndu(ptr nocapture noundef %0) #10 {
  %2 = getelementptr inbounds %struct.dvb_net_priv, ptr %0, i32 0, i32 18
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ethhdr, ptr %3, i32 0, i32 2
  %5 = load i16, ptr %4, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %7 = icmp ult i16 %6, 1536
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = zext i16 %6 to i32
  %10 = getelementptr inbounds %struct.dvb_net_priv, ptr %0, i32 0, i32 19
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = getelementptr i8, ptr %3, i32 14
  %14 = getelementptr inbounds %struct.dvb_net_priv, ptr %0, i32 0, i32 17
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 17
  %17 = load ptr, ptr %16, align 4
  %18 = ptrtoint ptr %13 to i32
  %19 = ptrtoint ptr %17 to i32
  %20 = sub i32 %12, %18
  %21 = add i32 %20, %19
  %22 = icmp eq i32 %21, %9
  br i1 %22, label %23, label %25

23:                                               ; preds = %8, %1
  %24 = getelementptr inbounds %struct.dvb_net_priv, ptr %0, i32 0, i32 23
  store i8 1, ptr %24, align 2
  br label %25

25:                                               ; preds = %23, %8
  %26 = phi i32 [ 0, %23 ], [ -1, %8 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ule_exthdr_padding(ptr nocapture noundef readnone %0) #9 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_generic_release(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readonly willreturn }

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
!9 = !{i64 343927, i64 343944, i64 2147828014}
!10 = !{i64 2148898508}
