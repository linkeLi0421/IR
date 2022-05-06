; ModuleID = '/llk/IR/drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.90 }
%union.anon.90 = type { ptr }
%struct.kparam_string = type { i32, ptr }
%struct.brcmf_mp_global_t = type { [256 x i8] }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcmf_join_pref_params = type { i8, i8, i8, i8 }
%struct.brcmf_pub = type { ptr, ptr, ptr, ptr, ptr, i32, [32 x i8], [6 x i8], [16 x %struct.mac_address], [16 x ptr], [16 x i32], ptr, %struct.mutex, [8192 x i8], %struct.brcmf_fweh_info, [256 x ptr], i32, i32, %struct.brcmf_rev_info, %struct.notifier_block, %struct.notifier_block, ptr, %struct.work_struct, [256 x i8] }
%struct.mac_address = type { [6 x i8] }
%struct.brcmf_fweh_info = type { i8, %struct.work_struct, %struct.spinlock, %struct.list_head, [139 x ptr] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.brcmf_rev_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i8], i32, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.116, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type {}
%struct.anon.116 = type { i64, i64, i8 }
%struct.brcmf_rev_info_le = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.brcmf_if = type { ptr, ptr, ptr, %struct.work_struct, %struct.work_struct, ptr, i32, i32, [6 x i8], i8, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, [8 x %struct.in6_addr], i8, i8 }
%struct.in6_addr = type { %union.anon.39 }
%union.anon.39 = type { [4 x i32] }
%struct.brcmf_bus = type { %union.anon.118, i32, ptr, ptr, i32, %struct.brcmf_bus_stats, i32, i32, i32, i8, i8, ptr, ptr }
%union.anon.118 = type { ptr }
%struct.brcmf_bus_stats = type { %struct.atomic_t, %struct.atomic_t }
%struct.brcmf_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcmf_dload_data_le = type { i16, i16, i32, i32, [1 x i8] }
%struct.firmware = type { i32, ptr, ptr }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.brcmf_mp_device = type { i8, i32, i32, i8, i8, i8, ptr, ptr, %union.anon.124 }
%union.anon.124 = type { %struct.brcmfmac_sdio_pd }
%struct.brcmfmac_sdio_pd = type { i32, i32, i8, i32, i32, i8, i16, i16, ptr }
%struct.brcmfmac_platform_data = type { ptr, ptr, ptr, i32, [0 x %struct.brcmfmac_pd_device] }
%struct.brcmfmac_pd_device = type { i32, i32, i32, i32, ptr, %union.anon.125 }
%union.anon.125 = type { %struct.brcmfmac_sdio_pd }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__UNIQUE_ID_author325 = internal constant [28 x i8] c"author=Broadcom Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description326 = internal constant [57 x i8] c"description=Broadcom 802.11 wireless LAN fullmac driver.\00", section ".modinfo", align 1
@__UNIQUE_ID_license327 = internal constant [21 x i8] c"license=Dual BSD/GPL\00", section ".modinfo", align 1
@__param_str_txglomsz = internal constant [9 x i8] c"txglomsz\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@brcmf_sdiod_txglomsz = internal global i32 32, align 4
@__param_txglomsz = internal constant %struct.kernel_param { ptr @__param_str_txglomsz, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.90 { ptr @brcmf_sdiod_txglomsz } }, section "__param", align 4
@__UNIQUE_ID_txglomsztype328 = internal constant [22 x i8] c"parmtype=txglomsz:int\00", section ".modinfo", align 1
@__UNIQUE_ID_txglomsz329 = internal constant [50 x i8] c"parm=txglomsz:Maximum tx packet chain size [SDIO]\00", section ".modinfo", align 1
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@brcmf_msg_level = dso_local global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 384, i8 -1, i8 0, %union.anon.90 { ptr @brcmf_msg_level } }, section "__param", align 4
@__UNIQUE_ID_debugtype330 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug331 = internal constant [33 x i8] c"parm=debug:Level of debug output\00", section ".modinfo", align 1
@__param_str_p2pon = internal constant [6 x i8] c"p2pon\00", align 1
@brcmf_p2p_enable = internal global i32 0, align 4
@__param_p2pon = internal constant %struct.kernel_param { ptr @__param_str_p2pon, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.90 { ptr @brcmf_p2p_enable } }, section "__param", align 4
@__UNIQUE_ID_p2pontype332 = internal constant [19 x i8] c"parmtype=p2pon:int\00", section ".modinfo", align 1
@__UNIQUE_ID_p2pon333 = internal constant [54 x i8] c"parm=p2pon:Enable legacy p2p management functionality\00", section ".modinfo", align 1
@__param_str_feature_disable = internal constant [16 x i8] c"feature_disable\00", align 1
@brcmf_feature_disable = internal global i32 0, align 4
@__param_feature_disable = internal constant %struct.kernel_param { ptr @__param_str_feature_disable, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.90 { ptr @brcmf_feature_disable } }, section "__param", align 4
@__UNIQUE_ID_feature_disabletype334 = internal constant [29 x i8] c"parmtype=feature_disable:int\00", section ".modinfo", align 1
@__UNIQUE_ID_feature_disable335 = internal constant [38 x i8] c"parm=feature_disable:Disable features\00", section ".modinfo", align 1
@__param_str_alternative_fw_path = internal constant [20 x i8] c"alternative_fw_path\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_alternative_fw_path = internal constant %struct.kparam_string { i32 256, ptr @brcmf_firmware_path }, align 4
@__param_alternative_fw_path = internal constant %struct.kernel_param { ptr @__param_str_alternative_fw_path, ptr @__this_module, ptr @param_ops_string, i16 256, i8 -1, i8 0, %union.anon.90 { ptr @__param_string_alternative_fw_path } }, section "__param", align 4
@__UNIQUE_ID_alternative_fw_pathtype336 = internal constant [36 x i8] c"parmtype=alternative_fw_path:string\00", section ".modinfo", align 1
@__UNIQUE_ID_alternative_fw_path337 = internal constant [51 x i8] c"parm=alternative_fw_path:Alternative firmware path\00", section ".modinfo", align 1
@__param_str_fcmode = internal constant [7 x i8] c"fcmode\00", align 1
@brcmf_fcmode = internal global i32 0, align 4
@__param_fcmode = internal constant %struct.kernel_param { ptr @__param_str_fcmode, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.90 { ptr @brcmf_fcmode } }, section "__param", align 4
@__UNIQUE_ID_fcmodetype338 = internal constant [20 x i8] c"parmtype=fcmode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_fcmode339 = internal constant [52 x i8] c"parm=fcmode:Mode of firmware signalled flow control\00", section ".modinfo", align 1
@__param_str_roamoff = internal constant [8 x i8] c"roamoff\00", align 1
@brcmf_roamoff = internal global i32 0, align 4
@__param_roamoff = internal constant %struct.kernel_param { ptr @__param_str_roamoff, ptr @__this_module, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.90 { ptr @brcmf_roamoff } }, section "__param", align 4
@__UNIQUE_ID_roamofftype340 = internal constant [21 x i8] c"parmtype=roamoff:int\00", section ".modinfo", align 1
@__UNIQUE_ID_roamoff341 = internal constant [48 x i8] c"parm=roamoff:Do not use internal roaming engine\00", section ".modinfo", align 1
@__param_str_iapp = internal constant [5 x i8] c"iapp\00", align 1
@brcmf_iapp_enable = internal global i32 0, align 4
@__param_iapp = internal constant %struct.kernel_param { ptr @__param_str_iapp, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.90 { ptr @brcmf_iapp_enable } }, section "__param", align 4
@__UNIQUE_ID_iapptype342 = internal constant [18 x i8] c"parmtype=iapp:int\00", section ".modinfo", align 1
@__UNIQUE_ID_iapp343 = internal constant [79 x i8] c"parm=iapp:Enable partial support for the obsoleted Inter-Access Point Protocol\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"join_pref\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: Set join_pref error (%d)\0A\00", align 1
@__func__.brcmf_c_set_joinpref_default = private unnamed_addr constant [29 x i8] c"brcmf_c_set_joinpref_default\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"cur_etheraddr\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"%s: Retrieving cur_etheraddr failed, %d\0A\00", align 1
@__func__.brcmf_c_preinit_dcmds = private unnamed_addr constant [22 x i8] c"brcmf_c_preinit_dcmds\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"%s: retrieving revision info failed, %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"%s: download CLM blob file failed, %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ver\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"%s: Retrieving version information failed, %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"\016brcmfmac: %s: Firmware: %s %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"clmver\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"mpc\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"%s: failed setting mpc\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"event_msgs\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"%s: Get event_msgs error (%d)\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"%s: Set event_msgs error (%d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"%s: BRCMF_C_SET_SCAN_CHANNEL_TIME error (%d)\0A\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"%s: BRCMF_C_SET_SCAN_UNASSOC_TIME error (%d)\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"txbf\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"%s: %pV\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"\013brcmfmac: %s: %pV\00", align 1
@brcmfmac_pdata = internal unnamed_addr global ptr null, align 4
@brcmf_mp_global = dso_local global %struct.brcmf_mp_global_t zeroinitializer, align 1
@brcmf_firmware_path = internal global [256 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [10 x i8] c".clm_blob\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"%s: get CLM blob file name failed (%d)\0A\00", align 1
@__func__.brcmf_c_process_clm_blob = private unnamed_addr constant [25 x i8] c"brcmf_c_process_clm_blob\00", align 1
@.str.24 = private unnamed_addr constant [92 x i8] c"\016brcmfmac: %s: no clm_blob available (err=%d), device may have limited channels available\0A\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"%s: clmload (%zu byte file) failed (%d)\0A\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"clmload_status\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"%s: get clmload_status failed (%d)\0A\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"clmload\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@brcmf_pd = internal global %struct.platform_driver { ptr null, ptr @brcmf_common_pd_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.29, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.29 = private unnamed_addr constant [9 x i8] c"brcmfmac\00", align 1
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_alternative_fw_path337, ptr @__UNIQUE_ID_alternative_fw_pathtype336, ptr @__UNIQUE_ID_author325, ptr @__UNIQUE_ID_debug331, ptr @__UNIQUE_ID_debugtype330, ptr @__UNIQUE_ID_description326, ptr @__UNIQUE_ID_fcmode339, ptr @__UNIQUE_ID_fcmodetype338, ptr @__UNIQUE_ID_feature_disable335, ptr @__UNIQUE_ID_feature_disabletype334, ptr @__UNIQUE_ID_iapp343, ptr @__UNIQUE_ID_iapptype342, ptr @__UNIQUE_ID_license327, ptr @__UNIQUE_ID_p2pon333, ptr @__UNIQUE_ID_p2pontype332, ptr @__UNIQUE_ID_roamoff341, ptr @__UNIQUE_ID_roamofftype340, ptr @__UNIQUE_ID_txglomsz329, ptr @__UNIQUE_ID_txglomsztype328, ptr @__param_alternative_fw_path, ptr @__param_debug, ptr @__param_fcmode, ptr @__param_feature_disable, ptr @__param_iapp, ptr @__param_p2pon, ptr @__param_roamoff, ptr @__param_txglomsz], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_c_set_joinpref_default(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [2 x %struct.brcmf_join_pref_params], align 8
  %3 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store i64 2203335524868, ptr %2, align 8, !annotation !8
  %4 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %2, i32 noundef 8) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = call i32 @net_ratelimit() #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.wiphy, ptr %11, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.brcmf_c_set_joinpref_default, i32 noundef %4) #13
  br label %13

13:                                               ; preds = %9, %6, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_data_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_c_preinit_dcmds(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 4
  %3 = alloca [320 x i8], align 1
  %4 = alloca i32, align 4
  %5 = alloca [18 x i8], align 1
  %6 = alloca [256 x i8], align 1
  %7 = alloca %struct.brcmf_rev_info_le, align 4
  %8 = alloca ptr, align 4
  %9 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(18) %5, i8 0, i32 18, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %7) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %7, i8 0, i32 68, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  %10 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 8
  %11 = tail call i32 @brcmf_fil_iovar_data_get(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %10, i32 noundef 6) #12
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = tail call i32 @net_ratelimit() #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %279, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.brcmf_pub, ptr %9, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.wiphy, ptr %18, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.brcmf_c_preinit_dcmds, i32 noundef %11) #13
  br label %279

20:                                               ; preds = %1
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr inbounds %struct.brcmf_pub, ptr %21, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %22, ptr noundef align 4 dereferenceable(6) %10, i32 6, i1 false)
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr inbounds %struct.brcmf_pub, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.wiphy, ptr %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.brcmf_pub, ptr %23, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %26, ptr noundef align 4 dereferenceable(6) %27, i32 6, i1 false)
  %28 = load ptr, ptr %0, align 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.brcmf_pub, ptr %28, i32 0, i32 18
  %31 = call i32 @brcmf_fil_cmd_data_get(ptr noundef %0, i32 noundef 98, ptr noundef nonnull %7, i32 noundef 68) #12
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %20
  %34 = call i32 @net_ratelimit() #12
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.brcmf_pub, ptr %9, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.wiphy, ptr %38, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.brcmf_c_preinit_dcmds, i32 noundef %31) #13
  br label %40

40:                                               ; preds = %36, %33
  %41 = getelementptr inbounds %struct.brcmf_pub, ptr %28, i32 0, i32 18, i32 11
  %42 = call i32 @strlcpy(ptr noundef %41, ptr noundef nonnull @.str.5, i32 noundef 12) #12
  br label %97

43:                                               ; preds = %20
  %44 = load i32, ptr %7, align 4
  %45 = getelementptr inbounds %struct.brcmf_pub, ptr %28, i32 0, i32 18, i32 1
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.brcmf_rev_info_le, ptr %7, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.brcmf_pub, ptr %28, i32 0, i32 18, i32 2
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.brcmf_rev_info_le, ptr %7, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.brcmf_pub, ptr %28, i32 0, i32 18, i32 3
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.brcmf_rev_info_le, ptr %7, i32 0, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.brcmf_pub, ptr %28, i32 0, i32 18, i32 4
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.brcmf_rev_info_le, ptr %7, i32 0, i32 5
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.brcmf_pub, ptr %28, i32 0, i32 18, i32 5
  store i32 %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.brcmf_rev_info_le, ptr %7, i32 0, i32 6
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.brcmf_pub, ptr %28, i32 0, i32 18, i32 6
  store i32 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.brcmf_rev_info_le, ptr %7, i32 0, i32 7
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.brcmf_pub, ptr %28, i32 0, i32 18, i32 7
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.brcmf_rev_info_le, ptr %7, i32 0, i32 8
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.brcmf_pub, ptr %28, i32 0, i32 18, i32 8
  store i32 %65, ptr %66, align 4
  %67 = getelementptr inbounds %struct.brcmf_rev_info_le, ptr %7, i32 0, i32 9
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.brcmf_pub, ptr %28, i32 0, i32 18, i32 9
  store i32 %68, ptr %69, align 4
  %70 = getelementptr inbounds %struct.brcmf_rev_info_le, ptr %7, i32 0, i32 10
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.brcmf_pub, ptr %28, i32 0, i32 18, i32 10
  store i32 %71, ptr %72, align 4
  %73 = getelementptr inbounds %struct.brcmf_rev_info_le, ptr %7, i32 0, i32 12
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr inbounds %struct.brcmf_pub, ptr %28, i32 0, i32 18, i32 12
  store i32 %74, ptr %75, align 4
  %76 = getelementptr inbounds %struct.brcmf_rev_info_le, ptr %7, i32 0, i32 13
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.brcmf_pub, ptr %28, i32 0, i32 18, i32 13
  store i32 %77, ptr %78, align 4
  %79 = getelementptr inbounds %struct.brcmf_rev_info_le, ptr %7, i32 0, i32 14
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds %struct.brcmf_pub, ptr %28, i32 0, i32 18, i32 14
  store i32 %80, ptr %81, align 4
  %82 = getelementptr inbounds %struct.brcmf_rev_info_le, ptr %7, i32 0, i32 15
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.brcmf_pub, ptr %28, i32 0, i32 18, i32 15
  store i32 %83, ptr %84, align 4
  %85 = getelementptr inbounds %struct.brcmf_rev_info_le, ptr %7, i32 0, i32 16
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr inbounds %struct.brcmf_pub, ptr %28, i32 0, i32 18, i32 16
  store i32 %86, ptr %87, align 4
  %88 = getelementptr inbounds %struct.brcmf_bus, ptr %29, i32 0, i32 7
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %43
  %92 = getelementptr inbounds %struct.brcmf_rev_info_le, ptr %7, i32 0, i32 11
  %93 = load i32, ptr %92, align 4
  store i32 %93, ptr %88, align 4
  %94 = getelementptr inbounds %struct.brcmf_rev_info_le, ptr %7, i32 0, i32 3
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr inbounds %struct.brcmf_bus, ptr %29, i32 0, i32 8
  store i32 %95, ptr %96, align 4
  br label %97

97:                                               ; preds = %91, %43, %40
  store i32 %31, ptr %30, align 4
  %98 = getelementptr inbounds %struct.brcmf_bus, ptr %29, i32 0, i32 7
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.brcmf_bus, ptr %29, i32 0, i32 8
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr inbounds %struct.brcmf_pub, ptr %28, i32 0, i32 18, i32 11
  %105 = call ptr @brcmf_chip_name(i32 noundef %99, i32 noundef %103, ptr noundef %104, i32 noundef 12) #12
  br label %106

106:                                              ; preds = %101, %97
  %107 = load ptr, ptr %0, align 4
  %108 = load ptr, ptr %107, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store ptr null, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(320) %3, i8 0, i32 320, i1 false) #12
  %109 = getelementptr inbounds %struct.brcmf_bus, ptr %108, i32 0, i32 11
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.brcmf_bus_ops, ptr %110, i32 0, i32 9
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.brcmf_bus, ptr %108, i32 0, i32 2
  %114 = load ptr, ptr %113, align 4
  %115 = call i32 %112(ptr noundef %114, ptr noundef nonnull @.str.22, ptr noundef nonnull %3) #12
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %106
  %118 = call i32 @net_ratelimit() #12
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %189, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.brcmf_pub, ptr %107, i32 0, i32 2
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.wiphy, ptr %122, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.brcmf_c_process_clm_blob, i32 noundef %115) #13
  br label %189

124:                                              ; preds = %106
  %125 = load ptr, ptr %113, align 4
  %126 = call i32 @firmware_request_nowarn(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %125) #12
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %124
  %129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.brcmf_c_process_clm_blob, i32 noundef %126) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  br label %199

130:                                              ; preds = %124
  %131 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %132 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %131, i32 noundef 3520, i32 noundef 1415) #14
  %133 = icmp eq ptr %132, null
  br i1 %133, label %186, label %134

134:                                              ; preds = %130
  %135 = load ptr, ptr %2, align 4
  %136 = load i32, ptr %135, align 4
  %137 = getelementptr inbounds %struct.brcmf_dload_data_le, ptr %132, i32 0, i32 4
  %138 = getelementptr inbounds %struct.brcmf_dload_data_le, ptr %132, i32 0, i32 1
  %139 = getelementptr inbounds %struct.brcmf_dload_data_le, ptr %132, i32 0, i32 2
  %140 = getelementptr inbounds %struct.brcmf_dload_data_le, ptr %132, i32 0, i32 3
  br label %141

141:                                              ; preds = %160, %134
  %142 = phi ptr [ %135, %134 ], [ %163, %160 ]
  %143 = phi i32 [ %136, %134 ], [ %156, %160 ]
  %144 = phi i32 [ 0, %134 ], [ %161, %160 ]
  %145 = phi i16 [ 2, %134 ], [ %162, %160 ]
  %146 = icmp ugt i32 %143, 1400
  %147 = or i16 %145, 4
  %148 = call i32 @llvm.umin.i32(i32 %143, i32 1400) #12
  %149 = select i1 %146, i16 %145, i16 %147
  %150 = getelementptr inbounds %struct.firmware, ptr %142, i32 0, i32 1
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr i8, ptr %151, i32 %144
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %137, ptr align 1 %152, i32 %148, i1 false) #12
  %153 = or i16 %149, 4096
  store i16 %153, ptr %132, align 8
  store i16 2, ptr %138, align 2
  store i32 %148, ptr %139, align 4
  store i32 0, ptr %140, align 8
  %154 = add nuw nsw i32 %148, 15
  %155 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %132, i32 noundef %154) #12
  %156 = sub i32 %143, %148
  %157 = icmp ne i32 %156, 0
  %158 = icmp eq i32 %155, 0
  %159 = select i1 %157, i1 %158, i1 false
  br i1 %159, label %160, label %164

160:                                              ; preds = %141
  %161 = add i32 %144, %148
  %162 = and i16 %149, -3
  %163 = load ptr, ptr %2, align 4
  br label %141

164:                                              ; preds = %141
  br i1 %158, label %184, label %165

165:                                              ; preds = %164
  %166 = call i32 @net_ratelimit() #12
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %165
  %169 = getelementptr inbounds %struct.brcmf_pub, ptr %107, i32 0, i32 2
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.wiphy, ptr %170, i32 0, i32 56
  %172 = load ptr, ptr %2, align 4
  %173 = load i32, ptr %172, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %171, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.brcmf_c_process_clm_blob, i32 noundef %173, i32 noundef %155) #13
  br label %174

174:                                              ; preds = %168, %165
  %175 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull %4) #12
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %184, label %177

177:                                              ; preds = %174
  %178 = call i32 @net_ratelimit() #12
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %177
  %181 = getelementptr inbounds %struct.brcmf_pub, ptr %107, i32 0, i32 2
  %182 = load ptr, ptr %181, align 4
  %183 = getelementptr inbounds %struct.wiphy, ptr %182, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %183, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.brcmf_c_process_clm_blob, i32 noundef %175) #13
  br label %184

184:                                              ; preds = %180, %177, %174, %164
  %185 = phi i32 [ 0, %164 ], [ -5, %174 ], [ -5, %177 ], [ -5, %180 ]
  call void @kfree(ptr noundef nonnull %132) #12
  br label %186

186:                                              ; preds = %184, %130
  %187 = phi i32 [ %185, %184 ], [ -12, %130 ]
  %188 = load ptr, ptr %2, align 4
  call void @release_firmware(ptr noundef %188) #12
  br label %189

189:                                              ; preds = %186, %120, %117
  %190 = phi i32 [ %187, %186 ], [ %115, %120 ], [ %115, %117 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %189
  %193 = call i32 @net_ratelimit() #12
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %279, label %195

195:                                              ; preds = %192
  %196 = getelementptr inbounds %struct.brcmf_pub, ptr %9, i32 0, i32 2
  %197 = load ptr, ptr %196, align 4
  %198 = getelementptr inbounds %struct.wiphy, ptr %197, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %198, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.brcmf_c_preinit_dcmds, i32 noundef %190) #13
  br label %279

199:                                              ; preds = %189, %128
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %6, i8 0, i32 256, i1 false)
  %200 = call i32 @brcmf_fil_iovar_data_get(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %6, i32 noundef 256) #12
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %199
  %203 = call i32 @net_ratelimit() #12
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %279, label %205

205:                                              ; preds = %202
  %206 = getelementptr inbounds %struct.brcmf_pub, ptr %9, i32 0, i32 2
  %207 = load ptr, ptr %206, align 4
  %208 = getelementptr inbounds %struct.wiphy, ptr %207, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %208, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.brcmf_c_preinit_dcmds, i32 noundef %200) #13
  br label %279

209:                                              ; preds = %199
  store ptr %6, ptr %8, align 4
  %210 = call ptr @strsep(ptr noundef nonnull %8, ptr noundef nonnull @.str.9) #12
  %211 = getelementptr inbounds %struct.brcmf_pub, ptr %28, i32 0, i32 18, i32 11
  %212 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.brcmf_c_preinit_dcmds, ptr noundef %211, ptr noundef nonnull %6) #13
  %213 = call ptr @strrchr(ptr noundef nonnull %6, i32 noundef 32)
  %214 = getelementptr i8, ptr %213, i32 1
  store ptr %214, ptr %8, align 4
  %215 = load ptr, ptr %0, align 4
  %216 = getelementptr inbounds %struct.brcmf_pub, ptr %215, i32 0, i32 6
  %217 = call i32 @strlcpy(ptr noundef %216, ptr noundef %214, i32 noundef 32) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %6, i8 0, i32 256, i1 false)
  %218 = call i32 @brcmf_fil_iovar_data_get(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull %6, i32 noundef 256) #12
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %209
  %221 = load ptr, ptr %0, align 4
  %222 = getelementptr inbounds %struct.brcmf_pub, ptr %221, i32 0, i32 23
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(256) %222, ptr noundef nonnull align 1 dereferenceable(256) %6, i32 256, i1 false)
  %223 = call ptr @strreplace(ptr noundef nonnull %6, i8 noundef zeroext 10, i8 noundef zeroext 32) #12
  br label %224

224:                                              ; preds = %220, %209
  %225 = call i32 @brcmf_fil_iovar_int_set(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef 1) #12
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %234, label %227

227:                                              ; preds = %224
  %228 = call i32 @net_ratelimit() #12
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %279, label %230

230:                                              ; preds = %227
  %231 = getelementptr inbounds %struct.brcmf_pub, ptr %9, i32 0, i32 2
  %232 = load ptr, ptr %231, align 4
  %233 = getelementptr inbounds %struct.wiphy, ptr %232, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %233, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.brcmf_c_preinit_dcmds) #13
  br label %279

234:                                              ; preds = %224
  call void @brcmf_c_set_joinpref_default(ptr noundef %0)
  %235 = call i32 @brcmf_fil_iovar_data_get(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull %5, i32 noundef 18) #12
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %244, label %237

237:                                              ; preds = %234
  %238 = call i32 @net_ratelimit() #12
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %279, label %240

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct.brcmf_pub, ptr %9, i32 0, i32 2
  %242 = load ptr, ptr %241, align 4
  %243 = getelementptr inbounds %struct.wiphy, ptr %242, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %243, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.brcmf_c_preinit_dcmds, i32 noundef %235) #13
  br label %279

244:                                              ; preds = %234
  %245 = getelementptr inbounds i8, ptr %5, i32 6
  %246 = load i8, ptr %245, align 1
  %247 = or i8 %246, 64
  store i8 %247, ptr %245, align 1
  %248 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull %5, i32 noundef 18) #12
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %257, label %250

250:                                              ; preds = %244
  %251 = call i32 @net_ratelimit() #12
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %279, label %253

253:                                              ; preds = %250
  %254 = getelementptr inbounds %struct.brcmf_pub, ptr %9, i32 0, i32 2
  %255 = load ptr, ptr %254, align 4
  %256 = getelementptr inbounds %struct.wiphy, ptr %255, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %256, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.brcmf_c_preinit_dcmds, i32 noundef %248) #13
  br label %279

257:                                              ; preds = %244
  %258 = call i32 @brcmf_fil_cmd_int_set(ptr noundef %0, i32 noundef 185, i32 noundef 40) #12
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %267, label %260

260:                                              ; preds = %257
  %261 = call i32 @net_ratelimit() #12
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %279, label %263

263:                                              ; preds = %260
  %264 = getelementptr inbounds %struct.brcmf_pub, ptr %9, i32 0, i32 2
  %265 = load ptr, ptr %264, align 4
  %266 = getelementptr inbounds %struct.wiphy, ptr %265, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %266, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.brcmf_c_preinit_dcmds, i32 noundef %258) #13
  br label %279

267:                                              ; preds = %257
  %268 = call i32 @brcmf_fil_cmd_int_set(ptr noundef %0, i32 noundef 187, i32 noundef 40) #12
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %277, label %270

270:                                              ; preds = %267
  %271 = call i32 @net_ratelimit() #12
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %279, label %273

273:                                              ; preds = %270
  %274 = getelementptr inbounds %struct.brcmf_pub, ptr %9, i32 0, i32 2
  %275 = load ptr, ptr %274, align 4
  %276 = getelementptr inbounds %struct.wiphy, ptr %275, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %276, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.brcmf_c_preinit_dcmds, i32 noundef %268) #13
  br label %279

277:                                              ; preds = %267
  %278 = call i32 @brcmf_fil_iovar_int_set(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef 1) #12
  br label %279

279:                                              ; preds = %277, %273, %270, %263, %260, %253, %250, %240, %237, %230, %227, %205, %202, %195, %192, %16, %13
  %280 = phi i32 [ %11, %16 ], [ %11, %13 ], [ %190, %195 ], [ %190, %192 ], [ %200, %205 ], [ %200, %202 ], [ %225, %230 ], [ %225, %227 ], [ %235, %240 ], [ %235, %237 ], [ %248, %253 ], [ %248, %250 ], [ %258, %263 ], [ %258, %260 ], [ %268, %273 ], [ %268, %270 ], [ 0, %277 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %5) #12
  ret i32 %280
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_data_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_cmd_data_get(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_chip_name(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strreplace(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_cmd_int_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__brcmf_err(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 {
  %4 = alloca %struct.va_format, align 8
  %5 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.va_start(ptr nonnull %5)
  store ptr %2, ptr %4, align 8
  %6 = getelementptr inbounds %struct.va_format, ptr %4, i32 0, i32 1
  store ptr %5, ptr %6, align 4
  %7 = icmp eq ptr %0, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.brcmf_bus, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.20, ptr noundef %1, ptr noundef nonnull %4) #13
  br label %13

11:                                               ; preds = %3
  %12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %1, ptr noundef nonnull %4) #13
  br label %13

13:                                               ; preds = %11, %8
  call void @llvm.va_end(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @brcmf_get_module_param(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2848, i32 noundef 56) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %63, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr @brcmf_p2p_enable, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i8
  store i8 %11, ptr %6, align 8
  %12 = load i32, ptr @brcmf_feature_disable, align 4
  %13 = getelementptr inbounds %struct.brcmf_mp_device, ptr %6, i32 0, i32 1
  store i32 %12, ptr %13, align 4
  %14 = load i32, ptr @brcmf_fcmode, align 4
  %15 = getelementptr inbounds %struct.brcmf_mp_device, ptr %6, i32 0, i32 2
  store i32 %14, ptr %15, align 8
  %16 = load i32, ptr @brcmf_roamoff, align 4
  %17 = icmp ne i32 %16, 0
  %18 = getelementptr inbounds %struct.brcmf_mp_device, ptr %6, i32 0, i32 3
  %19 = zext i1 %17 to i8
  store i8 %19, ptr %18, align 4
  %20 = load i32, ptr @brcmf_iapp_enable, align 4
  %21 = icmp ne i32 %20, 0
  %22 = getelementptr inbounds %struct.brcmf_mp_device, ptr %6, i32 0, i32 4
  %23 = zext i1 %21 to i8
  store i8 %23, ptr %22, align 1
  %24 = icmp eq i32 %1, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %8
  %26 = load i32, ptr @brcmf_sdiod_txglomsz, align 4
  %27 = getelementptr inbounds %struct.brcmf_mp_device, ptr %6, i32 0, i32 8
  store i32 %26, ptr %27, align 8
  br label %28

28:                                               ; preds = %25, %8
  %29 = load ptr, ptr @brcmfmac_pdata, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %62, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.brcmfmac_platform_data, ptr %29, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %59, %31
  %36 = phi i32 [ %60, %59 ], [ 0, %31 ]
  %37 = getelementptr %struct.brcmfmac_platform_data, ptr %29, i32 0, i32 4, i32 %36, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, %1
  br i1 %39, label %40, label %59

40:                                               ; preds = %35
  %41 = getelementptr %struct.brcmfmac_platform_data, ptr %29, i32 0, i32 4, i32 %36
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, %2
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = getelementptr %struct.brcmfmac_platform_data, ptr %29, i32 0, i32 4, i32 %36, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, %3
  %48 = icmp eq i32 %46, -1
  %49 = or i1 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = getelementptr %struct.brcmfmac_platform_data, ptr %29, i32 0, i32 4, i32 %36, i32 4
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.brcmf_mp_device, ptr %6, i32 0, i32 6
  store ptr %52, ptr %53, align 8
  %54 = load i32, ptr %37, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.brcmf_mp_device, ptr %6, i32 0, i32 8
  %58 = getelementptr %struct.brcmfmac_platform_data, ptr %29, i32 0, i32 4, i32 %36, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(32) %57, ptr noundef align 4 dereferenceable(32) %58, i32 32, i1 false)
  br label %63

59:                                               ; preds = %44, %40, %35
  %60 = add nuw nsw i32 %36, 1
  %61 = icmp eq i32 %60, %33
  br i1 %61, label %62, label %35

62:                                               ; preds = %59, %31, %28
  tail call void @brcmf_dmi_probe(ptr noundef nonnull %6, i32 noundef %2, i32 noundef %3) #12
  tail call void @brcmf_of_probe(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %6) #12
  br label %63

63:                                               ; preds = %62, %56, %50, %4
  ret ptr %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_dmi_probe(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_of_probe(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_release_module_param(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @kfree(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #9 section ".init.text" {
  %1 = tail call i32 @__platform_driver_probe(ptr noundef nonnull @brcmf_pd, ptr noundef nonnull @brcmf_common_pd_probe, ptr noundef nonnull @__this_module) #12
  %2 = tail call i32 @strlcpy(ptr noundef nonnull @brcmf_mp_global, ptr noundef nonnull @brcmf_firmware_path, i32 noundef 256) #12
  %3 = load ptr, ptr @brcmfmac_pdata, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.brcmfmac_platform_data, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ne ptr %7, null
  %9 = load i8, ptr @brcmf_mp_global, align 1
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = tail call i32 @strlcpy(ptr noundef nonnull @brcmf_mp_global, ptr noundef nonnull %7, i32 noundef 256) #12
  br label %14

14:                                               ; preds = %12, %5, %0
  %15 = tail call i32 @brcmf_core_init() #13
  %16 = icmp ne i32 %15, 0
  %17 = load ptr, ptr @brcmfmac_pdata, align 4
  %18 = icmp ne ptr %17, null
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  tail call void @platform_driver_unregister(ptr noundef nonnull @brcmf_pd) #12
  br label %21

21:                                               ; preds = %20, %14
  ret i32 %15
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #9 section ".exit.text" {
  tail call void @brcmf_core_exit() #13
  %1 = load ptr, ptr @brcmfmac_pdata, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @platform_driver_unregister(ptr noundef nonnull @brcmf_pd) #12
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @firmware_request_nowarn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_int_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @brcmf_common_pd_probe(ptr nocapture noundef readonly %0) #9 section ".init.text" {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %3 = load ptr, ptr %2, align 4
  store ptr %3, ptr @brcmfmac_pdata, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void %4() #12
  br label %7

7:                                                ; preds = %6, %1
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @brcmf_core_init() local_unnamed_addr #4 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_common_pd_remove(ptr nocapture noundef readnone %0) #0 {
  %2 = load ptr, ptr @brcmfmac_pdata, align 4
  %3 = getelementptr inbounds %struct.brcmfmac_platform_data, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void %4() #12
  br label %7

7:                                                ; preds = %6, %1
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @brcmf_core_exit() local_unnamed_addr #4 section ".exit.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

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
