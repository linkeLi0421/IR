; ModuleID = '/llk/IR/drivers/net/usb/zaurus.c_pt.bc'
source_filename = "../drivers/net/usb/zaurus.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.driver_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.usbnet = type { ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, %struct.mutex, i8, i8, i8, i16, i16, i8, i32, i32, ptr, i32, %struct.timer_list, ptr, ptr, i32, [5 x i32], i32, i32, i32, %struct.mii_if_info, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, i32, %struct.mutex, %struct.usb_anchor, %struct.tasklet_struct, %struct.work_struct, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.113, i32, %struct.spinlock }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.115, i32 }
%union.anon.115 = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.95, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.112, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.95 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.112 = type { ptr }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_cdc_mdlm_desc = type <{ i8, i8, i8, i16, [16 x i8] }>
%struct.usb_cdc_mdlm_detail_desc = type { i8, i8, i8, i8, [0 x i8] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@__initcall__kmod_zaurus__323_381_zaurus_driver_init6 = internal global ptr @zaurus_driver_init, section ".initcall6.init", align 4
@zaurus_driver = internal global %struct.usb_driver { ptr @.str, ptr @usbnet_probe, ptr @usbnet_disconnect, ptr null, ptr @usbnet_suspend, ptr @usbnet_resume, ptr null, ptr null, ptr null, ptr @products, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 4 }, align 4
@__exitcall_zaurus_driver_exit = internal global ptr @zaurus_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author324 = internal constant [43 x i8] c"zaurus.author=Pavel Machek, David Brownell\00", section ".modinfo", align 1
@__UNIQUE_ID_description325 = internal constant [61 x i8] c"zaurus.description=Sharp Zaurus PDA, and compatible products\00", section ".modinfo", align 1
@__UNIQUE_ID_file326 = internal constant [35 x i8] c"zaurus.file=drivers/net/usb/zaurus\00", section ".modinfo", align 1
@__UNIQUE_ID_license327 = internal constant [19 x i8] c"zaurus.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [7 x i8] c"zaurus\00", align 1
@products = internal constant [14 x %struct.usb_device_id] [%struct.usb_device_id { i16 899, i16 1245, i16 -32764, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @zaurus_sl5x00_info to i32) }, %struct.usb_device_id { i16 899, i16 1245, i16 -32763, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @zaurus_pxa_info to i32) }, %struct.usb_device_id { i16 899, i16 1245, i16 -32762, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @zaurus_pxa_info to i32) }, %struct.usb_device_id { i16 899, i16 1245, i16 -32761, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @zaurus_pxa_info to i32) }, %struct.usb_device_id { i16 899, i16 1245, i16 -28623, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @zaurus_pxa_info to i32) }, %struct.usb_device_id { i16 899, i16 1245, i16 -28623, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 10, i8 0, i8 0, i32 ptrtoint (ptr @bogus_mdlm_info to i32) }, %struct.usb_device_id { i16 899, i16 1245, i16 -28622, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @zaurus_pxa_info to i32) }, %struct.usb_device_id { i16 899, i16 1245, i16 -28622, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 10, i8 0, i8 0, i32 ptrtoint (ptr @bogus_mdlm_info to i32) }, %struct.usb_device_id { i16 899, i16 1245, i16 -28592, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @zaurus_pxa_info to i32) }, %struct.usb_device_id { i16 899, i16 8888, i16 24615, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 10, i8 0, i8 0, i32 ptrtoint (ptr @bogus_mdlm_info to i32) }, %struct.usb_device_id { i16 899, i16 8888, i16 25637, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 10, i8 0, i8 0, i32 ptrtoint (ptr @bogus_mdlm_info to i32) }, %struct.usb_device_id { i16 899, i16 1972, i16 3842, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @olympus_mxl_info to i32) }, %struct.usb_device_id { i16 899, i16 1133, i16 -16097, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 10, i8 0, i8 0, i32 ptrtoint (ptr @bogus_mdlm_info to i32) }, %struct.usb_device_id zeroinitializer], align 4
@zaurus_sl5x00_info = internal constant %struct.driver_info { ptr @.str.1, i32 4100, ptr @zaurus_bind, ptr @usbnet_cdc_unbind, ptr null, ptr null, ptr @always_connected, ptr null, ptr null, ptr null, ptr null, ptr @zaurus_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, align 4
@zaurus_pxa_info = internal constant %struct.driver_info { ptr @.str.2, i32 4100, ptr @zaurus_bind, ptr @usbnet_cdc_unbind, ptr null, ptr null, ptr @always_connected, ptr null, ptr null, ptr null, ptr null, ptr @zaurus_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, align 4
@bogus_mdlm_info = internal constant %struct.driver_info { ptr @.str.3, i32 4100, ptr @blan_mdlm_bind, ptr null, ptr null, ptr null, ptr @always_connected, ptr null, ptr null, ptr null, ptr null, ptr @zaurus_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, align 4
@olympus_mxl_info = internal constant %struct.driver_info { ptr @.str.5, i32 4100, ptr @zaurus_bind, ptr @usbnet_cdc_unbind, ptr null, ptr null, ptr @always_connected, ptr null, ptr null, ptr null, ptr null, ptr @zaurus_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Sharp Zaurus SL-5x00\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Sharp Zaurus, PXA-2xx based\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"pseudo-MDLM (BLAN) device\00", align 1
@blan_guid = internal constant [16 x i8] c"t\F0=\BD\1E\C1Dp\A3gq4\C9\F5T7", align 1
@safe_guid = internal constant [16 x i8] c"]4\CFf\11\18\11\D6\A2\1A\00\01\02\CA\9A\7F", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"unsupported MDLM descriptors\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Olympus R1000\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author324, ptr @__UNIQUE_ID_description325, ptr @__UNIQUE_ID_file326, ptr @__UNIQUE_ID_license327, ptr @__exitcall_zaurus_driver_exit, ptr @__initcall__kmod_zaurus__323_381_zaurus_driver_init6, ptr @zaurus_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @zaurus_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @usb_register_driver(ptr noundef nonnull @zaurus_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @zaurus_driver_exit() #0 section ".exit.text" {
  tail call void @usb_deregister(ptr noundef nonnull @zaurus_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_probe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_disconnect(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zaurus_bind(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 19
  %6 = load i16, ptr %5, align 2
  %7 = add i16 %6, 6
  store i16 %7, ptr %5, align 2
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 19
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 20
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %11
  %15 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 24
  store i32 %14, ptr %15, align 4
  %16 = tail call i32 @usbnet_generic_cdc_bind(ptr noundef %0, ptr noundef %1) #7
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_cdc_unbind(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @always_connected(ptr nocapture noundef readnone %0) #3 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @zaurus_tx_fixup(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %5 = load i8, ptr %4, align 2
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.skb_shared_info, ptr %10, i32 0, i32 10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %28

15:                                               ; preds = %8, %3
  %16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %23 = load ptr, ptr %22, align 8
  %24 = ptrtoint ptr %21 to i32
  %25 = ptrtoint ptr %23 to i32
  %26 = sub i32 %24, %25
  %27 = icmp sgt i32 %26, 5
  br i1 %27, label %31, label %28

28:                                               ; preds = %19, %15, %8
  %29 = tail call ptr @skb_copy_expand(ptr noundef %1, i32 noundef 0, i32 noundef 6, i32 noundef %2) #7
  tail call void @__dev_kfree_skb_any(ptr noundef %1, i32 noundef 1) #7
  %30 = icmp eq ptr %29, null
  br i1 %30, label %50, label %31

31:                                               ; preds = %28, %19
  %32 = phi ptr [ %1, %19 ], [ %29, %28 ]
  %33 = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 17
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 5
  %36 = load i32, ptr %35, align 8
  %37 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %34, i32 noundef %36) #8
  %38 = xor i32 %37, -1
  %39 = trunc i32 %38 to i8
  %40 = tail call ptr @skb_put(ptr noundef %32, i32 noundef 1) #7
  store i8 %39, ptr %40, align 1
  %41 = lshr i32 %38, 8
  %42 = trunc i32 %41 to i8
  %43 = tail call ptr @skb_put(ptr noundef %32, i32 noundef 1) #7
  store i8 %42, ptr %43, align 1
  %44 = lshr i32 %38, 16
  %45 = trunc i32 %44 to i8
  %46 = tail call ptr @skb_put(ptr noundef %32, i32 noundef 1) #7
  store i8 %45, ptr %46, align 1
  %47 = lshr i32 %38, 24
  %48 = trunc i32 %47 to i8
  %49 = tail call ptr @skb_put(ptr noundef %32, i32 noundef 1) #7
  store i8 %48, ptr %49, align 1
  br label %50

50:                                               ; preds = %31, %28
  %51 = phi ptr [ %32, %31 ], [ null, %28 ]
  ret ptr %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_generic_cdc_bind(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy_expand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blan_mdlm_bind(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_host_interface, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 3
  br i1 %7, label %8, label %78

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.usb_host_interface, ptr %4, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %12 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 24
  br label %13

13:                                               ; preds = %64, %8
  %14 = phi ptr [ null, %8 ], [ %66, %64 ]
  %15 = phi ptr [ null, %8 ], [ %65, %64 ]
  %16 = phi i32 [ %6, %8 ], [ %69, %64 ]
  %17 = phi ptr [ %10, %8 ], [ %70, %64 ]
  %18 = getelementptr i8, ptr %17, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 36
  br i1 %20, label %21, label %64

21:                                               ; preds = %13
  %22 = getelementptr i8, ptr %17, i32 2
  %23 = load i8, ptr %22, align 1
  switch i8 %23, label %64 [
    i8 18, label %24
    i8 19, label %36
  ]

24:                                               ; preds = %21
  %25 = icmp eq ptr %15, null
  br i1 %25, label %26, label %78

26:                                               ; preds = %24
  %27 = load i8, ptr %17, align 1
  %28 = icmp eq i8 %27, 21
  br i1 %28, label %29, label %78

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.usb_cdc_mdlm_desc, ptr %17, i32 0, i32 4
  %31 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %30, ptr noundef nonnull dereferenceable(16) @blan_guid, i32 16)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %64, label %33

33:                                               ; preds = %29
  %34 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %30, ptr noundef nonnull dereferenceable(16) @safe_guid, i32 16)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %64, label %78

36:                                               ; preds = %21
  %37 = icmp eq ptr %14, null
  br i1 %37, label %38, label %78

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.usb_cdc_mdlm_detail_desc, ptr %17, i32 0, i32 3
  %40 = load i8, ptr %39, align 1
  switch i8 %40, label %78 [
    i8 0, label %41
    i8 1, label %44
  ]

41:                                               ; preds = %38
  %42 = load i8, ptr %17, align 1
  %43 = icmp eq i8 %42, 6
  br i1 %43, label %47, label %78

44:                                               ; preds = %38
  %45 = load i8, ptr %17, align 1
  %46 = icmp eq i8 %45, 7
  br i1 %46, label %47, label %78

47:                                               ; preds = %44, %41
  %48 = getelementptr %struct.usb_cdc_mdlm_detail_desc, ptr %17, i32 1, i32 1
  %49 = load i8, ptr %48, align 1
  %50 = and i8 %49, -3
  %51 = icmp eq i8 %50, 1
  br i1 %51, label %52, label %78

52:                                               ; preds = %47
  %53 = load ptr, ptr %11, align 4
  %54 = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 19
  %55 = load i16, ptr %54, align 2
  %56 = add i16 %55, 6
  store i16 %56, ptr %54, align 2
  %57 = load ptr, ptr %11, align 4
  %58 = getelementptr inbounds %struct.net_device, ptr %57, i32 0, i32 19
  %59 = load i16, ptr %58, align 2
  %60 = zext i16 %59 to i32
  %61 = getelementptr inbounds %struct.net_device, ptr %57, i32 0, i32 20
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, %60
  store i32 %63, ptr %12, align 4
  br label %64

64:                                               ; preds = %52, %33, %29, %21, %13
  %65 = phi ptr [ %15, %13 ], [ %15, %21 ], [ %15, %52 ], [ %17, %33 ], [ %17, %29 ]
  %66 = phi ptr [ %14, %13 ], [ %14, %21 ], [ %17, %52 ], [ %14, %33 ], [ %14, %29 ]
  %67 = load i8, ptr %17, align 1
  %68 = zext i8 %67 to i32
  %69 = sub nsw i32 %16, %68
  %70 = getelementptr i8, ptr %17, i32 %68
  %71 = icmp sgt i32 %69, 3
  br i1 %71, label %13, label %72

72:                                               ; preds = %64
  %73 = icmp ne ptr %65, null
  %74 = icmp ne ptr %66, null
  %75 = select i1 %73, i1 %74, i1 false
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = tail call i32 @usbnet_get_endpoints(ptr noundef %0, ptr noundef %1) #7
  br label %81

78:                                               ; preds = %72, %47, %44, %41, %38, %36, %33, %26, %24, %2
  %79 = load ptr, ptr %0, align 4
  %80 = getelementptr inbounds %struct.usb_device, ptr %79, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %80, ptr noundef nonnull @.str.4) #9
  br label %81

81:                                               ; preds = %78, %76
  %82 = phi i32 [ -19, %78 ], [ %77, %76 ]
  ret i32 %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_endpoints(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { cold nounwind }

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
