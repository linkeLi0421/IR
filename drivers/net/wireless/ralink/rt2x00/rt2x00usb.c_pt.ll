; ModuleID = '/llk/IR/drivers/net/wireless/ralink/rt2x00/rt2x00usb.c_pt.bc'
source_filename = "../drivers/net/wireless/ralink/rt2x00/rt2x00usb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt2x00usb_vendor_request:\09\09\09\09\09"
module asm "\09.asciz \09\22rt2x00usb_vendor_request\22\09\09\09\09\09"
module asm "__kstrtabns_rt2x00usb_vendor_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt2x00usb_vendor_req_buff_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22rt2x00usb_vendor_req_buff_lock\22\09\09\09\09\09"
module asm "__kstrtabns_rt2x00usb_vendor_req_buff_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt2x00usb_vendor_request_buff:\09\09\09\09\09"
module asm "\09.asciz \09\22rt2x00usb_vendor_request_buff\22\09\09\09\09\09"
module asm "__kstrtabns_rt2x00usb_vendor_request_buff:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt2x00usb_regbusy_read:\09\09\09\09\09"
module asm "\09.asciz \09\22rt2x00usb_regbusy_read\22\09\09\09\09\09"
module asm "__kstrtabns_rt2x00usb_regbusy_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt2x00usb_register_read_async:\09\09\09\09\09"
module asm "\09.asciz \09\22rt2x00usb_register_read_async\22\09\09\09\09\09"
module asm "__kstrtabns_rt2x00usb_register_read_async:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt2x00usb_kick_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22rt2x00usb_kick_queue\22\09\09\09\09\09"
module asm "__kstrtabns_rt2x00usb_kick_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt2x00usb_flush_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22rt2x00usb_flush_queue\22\09\09\09\09\09"
module asm "__kstrtabns_rt2x00usb_flush_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt2x00usb_watchdog:\09\09\09\09\09"
module asm "\09.asciz \09\22rt2x00usb_watchdog\22\09\09\09\09\09"
module asm "__kstrtabns_rt2x00usb_watchdog:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt2x00usb_disable_radio:\09\09\09\09\09"
module asm "\09.asciz \09\22rt2x00usb_disable_radio\22\09\09\09\09\09"
module asm "__kstrtabns_rt2x00usb_disable_radio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt2x00usb_clear_entry:\09\09\09\09\09"
module asm "\09.asciz \09\22rt2x00usb_clear_entry\22\09\09\09\09\09"
module asm "__kstrtabns_rt2x00usb_clear_entry:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt2x00usb_initialize:\09\09\09\09\09"
module asm "\09.asciz \09\22rt2x00usb_initialize\22\09\09\09\09\09"
module asm "__kstrtabns_rt2x00usb_initialize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt2x00usb_uninitialize:\09\09\09\09\09"
module asm "\09.asciz \09\22rt2x00usb_uninitialize\22\09\09\09\09\09"
module asm "__kstrtabns_rt2x00usb_uninitialize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt2x00usb_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22rt2x00usb_probe\22\09\09\09\09\09"
module asm "__kstrtabns_rt2x00usb_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt2x00usb_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22rt2x00usb_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_rt2x00usb_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt2x00usb_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22rt2x00usb_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_rt2x00usb_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt2x00usb_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22rt2x00usb_resume\22\09\09\09\09\09"
module asm "__kstrtabns_rt2x00usb_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type {}
%struct.rt2x00_dev = type { ptr, ptr, ptr, ptr, [6 x %struct.ieee80211_supported_band], ptr, i32, i32, %struct.rt2x00_led, %struct.rt2x00_led, %struct.rt2x00_led, i16, i32, i32, i32, ptr, %struct.rt2x00_chip, %struct.hw_mode_spec, %struct.antenna_setup, %union.csr, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, %struct.ieee80211_iface_limit, [1 x %struct.ieee80211_iface_combination], %struct.link, ptr, ptr, i16, i16, i8, i8, i8, i8, i16, i16, i32, %struct.ieee80211_low_level_stats, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.work_struct, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.130, %struct.hrtimer, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, i32, ptr, i32, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.rt2x00_led = type { ptr, %struct.led_classdev, i32, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rt2x00_chip = type { i16, i16, i16, i32 }
%struct.hw_mode_spec = type { i32, i32, i32, ptr, ptr, %struct.ieee80211_sta_ht_cap }
%struct.antenna_setup = type { i32, i32, i8, i8 }
%union.csr = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ieee80211_iface_limit = type { i16, i16 }
%struct.ieee80211_iface_combination = type { ptr, i32, i16, i8, i8, i8, i8, i32 }
%struct.link = type { i32, %struct.link_qual, %struct.link_ant, %struct.ewma_rssi, %struct.delayed_work, %struct.delayed_work, i32, i8, %struct.delayed_work, %struct.delayed_work }
%struct.link_qual = type { i32, i32, i8, i8, i32, i32, i32, i32 }
%struct.link_ant = type { i32, %struct.antenna_setup, i32, %struct.ewma_rssi }
%struct.ewma_rssi = type { i32 }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.anon.130 = type { %union.anon.131, [0 x i32] }
%union.anon.131 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.91, i32 }
%union.anon.91 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.121, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.121 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.120, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type {}
%struct.anon.120 = type { i64, i64, i8 }
%struct.rt2x00_async_read_data = type { i32, %struct.usb_ctrlrequest, ptr, ptr }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.data_queue = type { ptr, ptr, i32, i32, %struct.mutex, %struct.spinlock, %struct.spinlock, i32, i16, i16, i16, [3 x i16], i16, i32, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16 }
%struct.queue_entry = type { i32, i32, ptr, ptr, i32, ptr }
%struct.rt2x00_ops = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.rt2x00lib_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.queue_entry_priv_usb_bcn = type { ptr, i32, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@rt2x00usb_vendor_request._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.rt2x00usb_vendor_request = private unnamed_addr constant [25 x i8] c"rt2x00usb_vendor_request\00", align 1
@.str = private unnamed_addr constant [74 x i8] c"%s: Error - Vendor Request 0x%02x failed for offset 0x%04x with error %d\0A\00", align 1
@__kstrtab_rt2x00usb_vendor_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt2x00usb_vendor_request = external dso_local constant [0 x i8], align 1
@__ksymtab_rt2x00usb_vendor_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt2x00usb_vendor_request to i32), ptr @__kstrtab_rt2x00usb_vendor_request, ptr @__kstrtabns_rt2x00usb_vendor_request }, section "___ksymtab_gpl+rt2x00usb_vendor_request", align 4
@rt2x00usb_vendor_req_buff_lock._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.rt2x00usb_vendor_req_buff_lock = private unnamed_addr constant [31 x i8] c"rt2x00usb_vendor_req_buff_lock\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"%s: Error - CSR cache not available\0A\00", align 1
@__kstrtab_rt2x00usb_vendor_req_buff_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt2x00usb_vendor_req_buff_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_rt2x00usb_vendor_req_buff_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt2x00usb_vendor_req_buff_lock to i32), ptr @__kstrtab_rt2x00usb_vendor_req_buff_lock, ptr @__kstrtabns_rt2x00usb_vendor_req_buff_lock }, section "___ksymtab_gpl+rt2x00usb_vendor_req_buff_lock", align 4
@__kstrtab_rt2x00usb_vendor_request_buff = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt2x00usb_vendor_request_buff = external dso_local constant [0 x i8], align 1
@__ksymtab_rt2x00usb_vendor_request_buff = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt2x00usb_vendor_request_buff to i32), ptr @__kstrtab_rt2x00usb_vendor_request_buff, ptr @__kstrtabns_rt2x00usb_vendor_request_buff }, section "___ksymtab_gpl+rt2x00usb_vendor_request_buff", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rt2x00usb_regbusy_read._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.rt2x00usb_regbusy_read = private unnamed_addr constant [23 x i8] c"rt2x00usb_regbusy_read\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"%s: Error - Indirect register access failed: offset=0x%.08x, value=0x%.08x\0A\00", align 1
@__kstrtab_rt2x00usb_regbusy_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt2x00usb_regbusy_read = external dso_local constant [0 x i8], align 1
@__ksymtab_rt2x00usb_regbusy_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt2x00usb_regbusy_read to i32), ptr @__kstrtab_rt2x00usb_regbusy_read, ptr @__kstrtabns_rt2x00usb_regbusy_read }, section "___ksymtab_gpl+rt2x00usb_regbusy_read", align 4
@__kstrtab_rt2x00usb_register_read_async = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt2x00usb_register_read_async = external dso_local constant [0 x i8], align 1
@__ksymtab_rt2x00usb_register_read_async = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt2x00usb_register_read_async to i32), ptr @__kstrtab_rt2x00usb_register_read_async, ptr @__kstrtabns_rt2x00usb_register_read_async }, section "___ksymtab_gpl+rt2x00usb_register_read_async", align 4
@__kstrtab_rt2x00usb_kick_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt2x00usb_kick_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_rt2x00usb_kick_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt2x00usb_kick_queue to i32), ptr @__kstrtab_rt2x00usb_kick_queue, ptr @__kstrtabns_rt2x00usb_kick_queue }, section "___ksymtab_gpl+rt2x00usb_kick_queue", align 4
@__kstrtab_rt2x00usb_flush_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt2x00usb_flush_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_rt2x00usb_flush_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt2x00usb_flush_queue to i32), ptr @__kstrtab_rt2x00usb_flush_queue, ptr @__kstrtabns_rt2x00usb_flush_queue }, section "___ksymtab_gpl+rt2x00usb_flush_queue", align 4
@__kstrtab_rt2x00usb_watchdog = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt2x00usb_watchdog = external dso_local constant [0 x i8], align 1
@__ksymtab_rt2x00usb_watchdog = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt2x00usb_watchdog to i32), ptr @__kstrtab_rt2x00usb_watchdog, ptr @__kstrtabns_rt2x00usb_watchdog }, section "___ksymtab_gpl+rt2x00usb_watchdog", align 4
@__kstrtab_rt2x00usb_disable_radio = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt2x00usb_disable_radio = external dso_local constant [0 x i8], align 1
@__ksymtab_rt2x00usb_disable_radio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt2x00usb_disable_radio to i32), ptr @__kstrtab_rt2x00usb_disable_radio, ptr @__kstrtabns_rt2x00usb_disable_radio }, section "___ksymtab_gpl+rt2x00usb_disable_radio", align 4
@__kstrtab_rt2x00usb_clear_entry = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt2x00usb_clear_entry = external dso_local constant [0 x i8], align 1
@__ksymtab_rt2x00usb_clear_entry = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt2x00usb_clear_entry to i32), ptr @__kstrtab_rt2x00usb_clear_entry, ptr @__kstrtabns_rt2x00usb_clear_entry }, section "___ksymtab_gpl+rt2x00usb_clear_entry", align 4
@__kstrtab_rt2x00usb_initialize = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt2x00usb_initialize = external dso_local constant [0 x i8], align 1
@__ksymtab_rt2x00usb_initialize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt2x00usb_initialize to i32), ptr @__kstrtab_rt2x00usb_initialize, ptr @__kstrtabns_rt2x00usb_initialize }, section "___ksymtab_gpl+rt2x00usb_initialize", align 4
@__kstrtab_rt2x00usb_uninitialize = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt2x00usb_uninitialize = external dso_local constant [0 x i8], align 1
@__ksymtab_rt2x00usb_uninitialize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt2x00usb_uninitialize to i32), ptr @__kstrtab_rt2x00usb_uninitialize, ptr @__kstrtabns_rt2x00usb_uninitialize }, section "___ksymtab_gpl+rt2x00usb_uninitialize", align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"\013rt2x00usb: %s: Error - Failed to allocate hardware\0A\00", align 1
@__func__.rt2x00usb_probe = private unnamed_addr constant [16 x i8] c"rt2x00usb_probe\00", align 1
@__kstrtab_rt2x00usb_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt2x00usb_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_rt2x00usb_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt2x00usb_probe to i32), ptr @__kstrtab_rt2x00usb_probe, ptr @__kstrtabns_rt2x00usb_probe }, section "___ksymtab_gpl+rt2x00usb_probe", align 4
@__kstrtab_rt2x00usb_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt2x00usb_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_rt2x00usb_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt2x00usb_disconnect to i32), ptr @__kstrtab_rt2x00usb_disconnect, ptr @__kstrtabns_rt2x00usb_disconnect }, section "___ksymtab_gpl+rt2x00usb_disconnect", align 4
@__kstrtab_rt2x00usb_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt2x00usb_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_rt2x00usb_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt2x00usb_suspend to i32), ptr @__kstrtab_rt2x00usb_suspend, ptr @__kstrtabns_rt2x00usb_suspend }, section "___ksymtab_gpl+rt2x00usb_suspend", align 4
@__kstrtab_rt2x00usb_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt2x00usb_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_rt2x00usb_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt2x00usb_resume to i32), ptr @__kstrtab_rt2x00usb_resume, ptr @__kstrtabns_rt2x00usb_resume }, section "___ksymtab_gpl+rt2x00usb_resume", align 4
@__UNIQUE_ID_author351 = internal constant [38 x i8] c"author=http://rt2x00.serialmonkey.com\00", section ".modinfo", align 1
@__UNIQUE_ID_version352 = internal constant [14 x i8] c"version=2.3.0\00", section ".modinfo", align 1
@__UNIQUE_ID_description353 = internal constant [31 x i8] c"description=rt2x00 usb library\00", section ".modinfo", align 1
@__UNIQUE_ID_license354 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@rt2x00usb_kick_tx_entry._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.rt2x00usb_kick_tx_entry = private unnamed_addr constant [24 x i8] c"rt2x00usb_kick_tx_entry\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"%s: Warning - TX SKB padding error, out of memory\0A\00", align 1
@rt2x00usb_watchdog_tx_dma._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.rt2x00usb_watchdog_tx_dma = private unnamed_addr constant [26 x i8] c"rt2x00usb_watchdog_tx_dma\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"%s: Warning - TX queue %d DMA timed out, invoke forced reset\0A\00", align 1
@rt2x00usb_find_endpoints._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.rt2x00usb_find_endpoints = private unnamed_addr constant [25 x i8] c"rt2x00usb_find_endpoints\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"%s: Error - Bulk-in/Bulk-out endpoints not found\0A\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"\013rt2x00usb: %s: Error - Failed to allocate registers\0A\00", align 1
@__func__.rt2x00usb_alloc_reg = private unnamed_addr constant [20 x i8] c"rt2x00usb_alloc_reg\00", align 1
@init_usb_anchor.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"&anchor->wait\00", align 1
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author351, ptr @__UNIQUE_ID_description353, ptr @__UNIQUE_ID_license354, ptr @__UNIQUE_ID_version352, ptr @__ksymtab_rt2x00usb_clear_entry, ptr @__ksymtab_rt2x00usb_disable_radio, ptr @__ksymtab_rt2x00usb_disconnect, ptr @__ksymtab_rt2x00usb_flush_queue, ptr @__ksymtab_rt2x00usb_initialize, ptr @__ksymtab_rt2x00usb_kick_queue, ptr @__ksymtab_rt2x00usb_probe, ptr @__ksymtab_rt2x00usb_regbusy_read, ptr @__ksymtab_rt2x00usb_register_read_async, ptr @__ksymtab_rt2x00usb_resume, ptr @__ksymtab_rt2x00usb_suspend, ptr @__ksymtab_rt2x00usb_uninitialize, ptr @__ksymtab_rt2x00usb_vendor_req_buff_lock, ptr @__ksymtab_rt2x00usb_vendor_request, ptr @__ksymtab_rt2x00usb_vendor_request_buff, ptr @__ksymtab_rt2x00usb_watchdog], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rt2x00usb_vendor_request(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, ptr noundef %5, i16 noundef zeroext %6, i32 noundef %7) #0 {
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr i8, ptr %9, i32 36
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 -128
  %13 = icmp eq i8 %2, -64
  %14 = load i32, ptr %12, align 8
  %15 = shl i32 %14, 8
  %16 = select i1 %13, i32 -2147483520, i32 -2147483648
  %17 = or i32 %15, %16
  %18 = load volatile i32, ptr @jiffies, align 64
  %19 = tail call i32 @__msecs_to_jiffies(i32 noundef %7) #9
  %20 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 12
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %58, label %24

24:                                               ; preds = %8
  %25 = sdiv i32 %7, 2
  %26 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 67
  %27 = add i32 %19, %18
  br label %28

28:                                               ; preds = %43, %24
  %29 = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %17, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %4, i16 noundef zeroext %3, ptr noundef %5, i16 noundef zeroext %6, i32 noundef %25) #9
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %58, label %31

31:                                               ; preds = %28
  switch i32 %29, label %32 [
    i32 -2, label %42
    i32 -19, label %42
  ]

32:                                               ; preds = %31
  %33 = load volatile i32, ptr %20, align 4
  %34 = and i32 %33, 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %32
  switch i32 %29, label %37 [
    i32 -71, label %38
    i32 -110, label %38
  ]

37:                                               ; preds = %36
  store i32 0, ptr %26, align 4
  br label %43

38:                                               ; preds = %36, %36
  %39 = load i32, ptr %26, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr %26, align 4
  %41 = icmp ugt i32 %40, 3
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %31, %31
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %20) #9
  br label %47

43:                                               ; preds = %38, %37, %32
  %44 = load volatile i32, ptr @jiffies, align 64
  %45 = sub i32 %44, %27
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %28, label %47

47:                                               ; preds = %43, %42
  %48 = tail call i32 @___ratelimit(ptr noundef nonnull @rt2x00usb_vendor_request._rs, ptr noundef nonnull @__func__.rt2x00usb_vendor_request) #9
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.ieee80211_hw, ptr %52, i32 0, i32 1
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.wiphy, ptr %54, i32 0, i32 56
  %56 = zext i8 %1 to i32
  %57 = zext i16 %3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.rt2x00usb_vendor_request, i32 noundef %56, i32 noundef %57, i32 noundef %29) #10
  br label %58

58:                                               ; preds = %50, %47, %28, %8
  %59 = phi i32 [ -19, %8 ], [ %29, %50 ], [ %29, %47 ], [ 0, %28 ]
  ret i32 %59
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3, ptr nocapture noundef %4, i16 noundef zeroext %5, i32 noundef %6) #0 {
  %8 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 20
  %9 = tail call zeroext i1 @mutex_is_locked(ptr noundef %8) #9
  br i1 %9, label %11, label %10, !prof !8

10:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00usb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #9, !srcloc !9
  unreachable

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 19
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  %15 = zext i16 %5 to i32
  %16 = icmp ugt i16 %5, 64
  %17 = or i1 %16, %14
  br i1 %17, label %18, label %27, !prof !10

18:                                               ; preds = %11
  %19 = tail call i32 @___ratelimit(ptr noundef nonnull @rt2x00usb_vendor_req_buff_lock._rs, ptr noundef nonnull @__func__.rt2x00usb_vendor_req_buff_lock) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ieee80211_hw, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.wiphy, ptr %25, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rt2x00usb_vendor_req_buff_lock) #10
  br label %39

27:                                               ; preds = %11
  %28 = icmp eq i8 %2, 64
  br i1 %28, label %29, label %31

29:                                               ; preds = %27
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %13, ptr align 1 %4, i32 %15, i1 false)
  %30 = load ptr, ptr %12, align 8
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi ptr [ %30, %29 ], [ %13, %27 ]
  %33 = tail call i32 @rt2x00usb_vendor_request(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext 0, ptr noundef %32, i16 noundef zeroext %5, i32 noundef %6)
  %34 = icmp eq i32 %33, 0
  %35 = icmp eq i8 %2, -64
  %36 = and i1 %35, %34
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load ptr, ptr %12, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %4, ptr align 1 %38, i32 %15, i1 false)
  br label %39

39:                                               ; preds = %37, %31, %21, %18
  %40 = phi i32 [ -12, %21 ], [ -12, %18 ], [ 0, %37 ], [ %33, %31 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rt2x00usb_vendor_request_buff(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3, ptr nocapture noundef %4, i16 noundef zeroext %5) #0 {
  %7 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %7) #9
  %8 = icmp eq i16 %5, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %16, %9 ], [ %4, %6 ]
  %11 = phi i16 [ %18, %9 ], [ %3, %6 ]
  %12 = phi i16 [ %17, %9 ], [ %5, %6 ]
  %13 = tail call i16 @llvm.umin.i16(i16 %12, i16 64)
  %14 = zext i16 %13 to i32
  %15 = tail call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %11, ptr noundef %10, i16 noundef zeroext %13, i32 noundef 100)
  %16 = getelementptr i8, ptr %10, i32 %14
  %17 = sub i16 %12, %13
  %18 = add i16 %11, %13
  %19 = icmp ne i16 %17, 0
  %20 = icmp eq i32 %15, 0
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %9, label %22

22:                                               ; preds = %9, %6
  %23 = phi i32 [ 0, %6 ], [ %15, %9 ]
  tail call void @mutex_unlock(ptr noundef %7) #9
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rt2x00usb_regbusy_read(ptr noundef %0, i32 noundef %1, [2 x i32] %2, ptr nocapture noundef %3) #0 {
  %5 = extractvalue [2 x i32] %2, 0
  %6 = extractvalue [2 x i32] %2, 1
  %7 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 12
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %56, label %11

11:                                               ; preds = %4
  %12 = trunc i32 %1 to i16
  %13 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 20
  %14 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 19
  %15 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 3
  br label %16

16:                                               ; preds = %42, %11
  %17 = phi i32 [ 0, %11 ], [ %44, %42 ]
  %18 = tail call zeroext i1 @mutex_is_locked(ptr noundef %13) #9
  br i1 %18, label %20, label %19, !prof !8

19:                                               ; preds = %16
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2x00usb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #9, !srcloc !9
  unreachable

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %31, !prof !10

23:                                               ; preds = %20
  %24 = tail call i32 @___ratelimit(ptr noundef nonnull @rt2x00usb_vendor_req_buff_lock._rs, ptr noundef nonnull @__func__.rt2x00usb_vendor_req_buff_lock) #9
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %15, align 4
  %28 = getelementptr inbounds %struct.ieee80211_hw, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.wiphy, ptr %29, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rt2x00usb_vendor_req_buff_lock) #10
  br label %37

31:                                               ; preds = %20
  %32 = tail call i32 @rt2x00usb_vendor_request(ptr noundef %0, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext %12, i16 noundef zeroext 0, ptr noundef nonnull %21, i16 noundef zeroext 4, i32 noundef 100) #9
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load ptr, ptr %14, align 8
  %36 = load i32, ptr %35, align 1
  br label %37

37:                                               ; preds = %34, %31, %26, %23
  %38 = phi i32 [ 0, %23 ], [ 0, %26 ], [ %36, %34 ], [ 0, %31 ]
  store i32 %38, ptr %3, align 4
  %39 = and i32 %38, %6
  %40 = lshr i32 %39, %5
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %37
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 21474800) #9
  %44 = add nuw nsw i32 %17, 1
  %45 = icmp eq i32 %44, 20
  br i1 %45, label %46, label %16

46:                                               ; preds = %42
  %47 = tail call i32 @___ratelimit(ptr noundef nonnull @rt2x00usb_regbusy_read._rs, ptr noundef nonnull @__func__.rt2x00usb_regbusy_read) #9
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %15, align 4
  %51 = getelementptr inbounds %struct.ieee80211_hw, ptr %50, i32 0, i32 1
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.wiphy, ptr %52, i32 0, i32 56
  %54 = load i32, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.rt2x00usb_regbusy_read, i32 noundef %1, i32 noundef %54) #10
  br label %55

55:                                               ; preds = %49, %46
  store i32 -1, ptr %3, align 4
  br label %56

56:                                               ; preds = %55, %37, %4
  %57 = phi i32 [ 0, %55 ], [ -19, %4 ], [ 1, %37 ]
  ret i32 %57
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt2x00usb_register_read_async(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr i8, ptr %4, i32 36
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 -128
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 2592, i32 noundef 20) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %40, label %11

11:                                               ; preds = %3
  %12 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call void @kfree(ptr noundef nonnull %9) #9
  br label %40

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rt2x00_async_read_data, ptr %9, i32 0, i32 2
  store ptr %0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.rt2x00_async_read_data, ptr %9, i32 0, i32 3
  store ptr %2, ptr %17, align 8
  %18 = getelementptr inbounds %struct.rt2x00_async_read_data, ptr %9, i32 0, i32 1
  store i8 -64, ptr %18, align 4
  %19 = getelementptr inbounds %struct.rt2x00_async_read_data, ptr %9, i32 0, i32 1, i32 1
  store i8 7, ptr %19, align 1
  %20 = getelementptr inbounds %struct.rt2x00_async_read_data, ptr %9, i32 0, i32 1, i32 2
  store i16 0, ptr %20, align 2
  %21 = trunc i32 %1 to i16
  %22 = getelementptr inbounds %struct.rt2x00_async_read_data, ptr %9, i32 0, i32 1, i32 3
  store i16 %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.rt2x00_async_read_data, ptr %9, i32 0, i32 1, i32 4
  store i16 4, ptr %23, align 2
  %24 = load i32, ptr %7, align 8
  %25 = shl i32 %24, 8
  %26 = or i32 %25, -2147483520
  %27 = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 8
  store ptr %7, ptr %27, align 4
  %28 = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 10
  store i32 %26, ptr %28, align 4
  %29 = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 21
  store ptr %18, ptr %29, align 4
  %30 = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 14
  store ptr %9, ptr %30, align 4
  %31 = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 19
  store i32 4, ptr %31, align 4
  %32 = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 28
  store ptr @rt2x00usb_register_read_async_cb, ptr %32, align 4
  %33 = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 27
  store ptr %9, ptr %33, align 4
  %34 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 66
  %35 = load ptr, ptr %34, align 8
  tail call void @usb_anchor_urb(ptr noundef nonnull %12, ptr noundef %35) #9
  %36 = tail call i32 @usb_submit_urb(ptr noundef nonnull %12, i32 noundef 2592) #9
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %15
  tail call void @usb_unanchor_urb(ptr noundef nonnull %12) #9
  tail call void @kfree(ptr noundef nonnull %9) #9
  br label %39

39:                                               ; preds = %38, %15
  tail call void @usb_free_urb(ptr noundef nonnull %12) #9
  br label %40

40:                                               ; preds = %39, %14, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rt2x00usb_register_read_async_cb(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rt2x00_async_read_data, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rt2x00_async_read_data, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 12
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %3, align 4
  %11 = tail call zeroext i1 %5(ptr noundef %7, i32 noundef %9, i32 noundef %10) #9
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr inbounds %struct.rt2x00_dev, ptr %13, i32 0, i32 66
  %15 = load ptr, ptr %14, align 8
  tail call void @usb_anchor_urb(ptr noundef %0, ptr noundef %15) #9
  %16 = tail call i32 @usb_submit_urb(ptr noundef %0, i32 noundef 2592) #9
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  tail call void @usb_unanchor_urb(ptr noundef %0) #9
  br label %19

19:                                               ; preds = %18, %1
  tail call void @kfree(ptr noundef %3) #9
  br label %20

20:                                               ; preds = %19, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unanchor_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt2x00usb_kick_queue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.data_queue, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %18 [
    i32 0, label %4
    i32 1, label %4
    i32 2, label %4
    i32 3, label %4
    i32 14, label %10
  ]

4:                                                ; preds = %1, %1, %1, %1
  %5 = getelementptr inbounds %struct.data_queue, ptr %0, i32 0, i32 10
  %6 = load i16, ptr %5, align 4
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %4
  %9 = tail call zeroext i1 @rt2x00queue_for_each_entry(ptr noundef %0, i32 noundef 2, i32 noundef 0, ptr noundef null, ptr noundef nonnull @rt2x00usb_kick_tx_entry) #9
  br label %18

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.data_queue, ptr %0, i32 0, i32 10
  %12 = load i16, ptr %11, align 4
  %13 = getelementptr inbounds %struct.data_queue, ptr %0, i32 0, i32 8
  %14 = load i16, ptr %13, align 4
  %15 = icmp eq i16 %12, %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = tail call zeroext i1 @rt2x00queue_for_each_entry(ptr noundef %0, i32 noundef 0, i32 noundef 2, ptr noundef null, ptr noundef nonnull @rt2x00usb_kick_rx_entry) #9
  br label %18

18:                                               ; preds = %16, %10, %8, %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rt2x00queue_for_each_entry(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @rt2x00usb_kick_tx_entry(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.queue_entry, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 36
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 -128
  %10 = getelementptr inbounds %struct.queue_entry, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %0) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %84, label %14

14:                                               ; preds = %2
  %15 = load volatile i32, ptr %0, align 4
  %16 = and i32 %15, 32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %84

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.rt2x00_dev, ptr %5, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.rt2x00_ops, ptr %20, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.rt2x00lib_ops, ptr %22, i32 0, i32 31
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %24(ptr noundef %0) #9
  %26 = getelementptr inbounds %struct.queue_entry, ptr %0, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 5
  %29 = load i32, ptr %28, align 8
  %30 = icmp ugt i32 %25, %29
  br i1 %30, label %31, label %46, !prof !10

31:                                               ; preds = %18
  %32 = sub i32 %25, %29
  %33 = tail call i32 @__skb_pad(ptr noundef %27, i32 noundef %32, i1 noundef zeroext true) #9
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37, !prof !8

35:                                               ; preds = %31
  %36 = load ptr, ptr %26, align 4
  br label %46

37:                                               ; preds = %31
  %38 = tail call i32 @___ratelimit(ptr noundef nonnull @rt2x00usb_kick_tx_entry._rs, ptr noundef nonnull @__func__.rt2x00usb_kick_tx_entry) #9
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %83, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.rt2x00_dev, ptr %5, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.ieee80211_hw, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.wiphy, ptr %44, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.rt2x00usb_kick_tx_entry) #10
  br label %83

46:                                               ; preds = %35, %18
  %47 = phi ptr [ %36, %35 ], [ %27, %18 ]
  %48 = load ptr, ptr %11, align 4
  %49 = load ptr, ptr %3, align 4
  %50 = getelementptr inbounds %struct.data_queue, ptr %49, i32 0, i32 22
  %51 = load i16, ptr %50, align 2
  %52 = zext i16 %51 to i32
  %53 = load i32, ptr %9, align 8
  %54 = shl i32 %53, 8
  %55 = shl nuw nsw i32 %52, 15
  %56 = or i32 %55, %54
  %57 = or i32 %56, -1073741824
  %58 = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 17
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 8
  store ptr %9, ptr %60, align 4
  %61 = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 10
  store i32 %57, ptr %61, align 4
  %62 = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 14
  store ptr %59, ptr %62, align 4
  %63 = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 19
  store i32 %25, ptr %63, align 4
  %64 = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 28
  store ptr @rt2x00usb_interrupt_txdone, ptr %64, align 4
  %65 = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 27
  store ptr %0, ptr %65, align 4
  %66 = load ptr, ptr %11, align 4
  %67 = tail call i32 @usb_submit_urb(ptr noundef %66, i32 noundef 2592) #9
  switch i32 %67, label %68 [
    i32 0, label %84
    i32 -2, label %81
    i32 -19, label %81
  ]

68:                                               ; preds = %46
  %69 = getelementptr inbounds %struct.rt2x00_dev, ptr %5, i32 0, i32 12
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %70, 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %68
  switch i32 %67, label %74 [
    i32 -71, label %76
    i32 -110, label %76
  ]

74:                                               ; preds = %73
  %75 = getelementptr inbounds %struct.rt2x00_dev, ptr %5, i32 0, i32 67
  store i32 0, ptr %75, align 4
  br label %83

76:                                               ; preds = %73, %73
  %77 = getelementptr inbounds %struct.rt2x00_dev, ptr %5, i32 0, i32 67
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %78, 1
  store i32 %79, ptr %77, align 4
  %80 = icmp ugt i32 %79, 3
  br i1 %80, label %81, label %83

81:                                               ; preds = %76, %46, %46
  %82 = getelementptr inbounds %struct.rt2x00_dev, ptr %5, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %82) #9
  br label %83

83:                                               ; preds = %81, %76, %74, %68, %40, %37
  tail call void @_set_bit(i32 noundef 4, ptr noundef %0) #9
  tail call void @rt2x00lib_dmadone(ptr noundef %0) #9
  br label %84

84:                                               ; preds = %83, %46, %14, %2
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @rt2x00usb_kick_rx_entry(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.queue_entry, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 36
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.queue_entry, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %0) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %55

13:                                               ; preds = %2
  %14 = getelementptr i8, ptr %8, i32 -128
  tail call void @rt2x00lib_dmastart(ptr noundef %0) #9
  %15 = load ptr, ptr %10, align 4
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr inbounds %struct.data_queue, ptr %16, i32 0, i32 22
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  %20 = load i32, ptr %14, align 8
  %21 = shl i32 %20, 8
  %22 = shl nuw nsw i32 %19, 15
  %23 = or i32 %22, %21
  %24 = or i32 %23, -1073741696
  %25 = getelementptr inbounds %struct.queue_entry, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 17
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 5
  %30 = load i32, ptr %29, align 8
  %31 = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 8
  store ptr %14, ptr %31, align 4
  %32 = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 10
  store i32 %24, ptr %32, align 4
  %33 = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 14
  store ptr %28, ptr %33, align 4
  %34 = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 19
  store i32 %30, ptr %34, align 4
  %35 = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 28
  store ptr @rt2x00usb_interrupt_rxdone, ptr %35, align 4
  %36 = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 27
  store ptr %0, ptr %36, align 4
  %37 = load ptr, ptr %10, align 4
  %38 = tail call i32 @usb_submit_urb(ptr noundef %37, i32 noundef 2592) #9
  switch i32 %38, label %39 [
    i32 0, label %55
    i32 -2, label %52
    i32 -19, label %52
  ]

39:                                               ; preds = %13
  %40 = getelementptr inbounds %struct.rt2x00_dev, ptr %5, i32 0, i32 12
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %39
  switch i32 %38, label %45 [
    i32 -71, label %47
    i32 -110, label %47
  ]

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct.rt2x00_dev, ptr %5, i32 0, i32 67
  store i32 0, ptr %46, align 4
  br label %54

47:                                               ; preds = %44, %44
  %48 = getelementptr inbounds %struct.rt2x00_dev, ptr %5, i32 0, i32 67
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %48, align 4
  %51 = icmp ugt i32 %50, 3
  br i1 %51, label %52, label %54

52:                                               ; preds = %47, %13, %13
  %53 = getelementptr inbounds %struct.rt2x00_dev, ptr %5, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %53) #9
  br label %54

54:                                               ; preds = %52, %47, %45, %39
  tail call void @_set_bit(i32 noundef 4, ptr noundef %0) #9
  tail call void @rt2x00lib_dmadone(ptr noundef %0) #9
  br label %55

55:                                               ; preds = %54, %13, %2
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt2x00usb_flush_queue(ptr noundef %0, i1 noundef zeroext %1) #0 {
  br i1 %1, label %3, label %5

3:                                                ; preds = %2
  %4 = tail call zeroext i1 @rt2x00queue_for_each_entry(ptr noundef %0, i32 noundef 2, i32 noundef 0, ptr noundef null, ptr noundef nonnull @rt2x00usb_flush_entry) #9
  br label %5

5:                                                ; preds = %3, %2
  %6 = getelementptr inbounds %struct.data_queue, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %87 [
    i32 0, label %8
    i32 1, label %8
    i32 2, label %8
    i32 3, label %8
    i32 14, label %11
  ]

8:                                                ; preds = %5, %5, %5, %5
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.rt2x00_dev, ptr %9, i32 0, i32 45
  br label %14

11:                                               ; preds = %5
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.rt2x00_dev, ptr %12, i32 0, i32 44
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi ptr [ %12, %11 ], [ %9, %8 ]
  %16 = phi ptr [ %13, %11 ], [ %10, %8 ]
  %17 = getelementptr inbounds %struct.data_queue, ptr %0, i32 0, i32 10
  %18 = load i16, ptr %17, align 4
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %87, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.rt2x00_dev, ptr %15, i32 0, i32 42
  %22 = load ptr, ptr %21, align 4
  %23 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %22, ptr noundef %16) #9
  tail call void @msleep(i32 noundef 50) #9
  %24 = load i16, ptr %17, align 4
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %87, label %26

26:                                               ; preds = %20
  %27 = load ptr, ptr %0, align 4
  %28 = getelementptr inbounds %struct.rt2x00_dev, ptr %27, i32 0, i32 42
  %29 = load ptr, ptr %28, align 4
  %30 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %29, ptr noundef %16) #9
  tail call void @msleep(i32 noundef 50) #9
  %31 = load i16, ptr %17, align 4
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %87, label %33

33:                                               ; preds = %26
  %34 = load ptr, ptr %0, align 4
  %35 = getelementptr inbounds %struct.rt2x00_dev, ptr %34, i32 0, i32 42
  %36 = load ptr, ptr %35, align 4
  %37 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %36, ptr noundef %16) #9
  tail call void @msleep(i32 noundef 50) #9
  %38 = load i16, ptr %17, align 4
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %87, label %40

40:                                               ; preds = %33
  %41 = load ptr, ptr %0, align 4
  %42 = getelementptr inbounds %struct.rt2x00_dev, ptr %41, i32 0, i32 42
  %43 = load ptr, ptr %42, align 4
  %44 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %43, ptr noundef %16) #9
  tail call void @msleep(i32 noundef 50) #9
  %45 = load i16, ptr %17, align 4
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %87, label %47

47:                                               ; preds = %40
  %48 = load ptr, ptr %0, align 4
  %49 = getelementptr inbounds %struct.rt2x00_dev, ptr %48, i32 0, i32 42
  %50 = load ptr, ptr %49, align 4
  %51 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %50, ptr noundef %16) #9
  tail call void @msleep(i32 noundef 50) #9
  %52 = load i16, ptr %17, align 4
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %87, label %54

54:                                               ; preds = %47
  %55 = load ptr, ptr %0, align 4
  %56 = getelementptr inbounds %struct.rt2x00_dev, ptr %55, i32 0, i32 42
  %57 = load ptr, ptr %56, align 4
  %58 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %57, ptr noundef %16) #9
  tail call void @msleep(i32 noundef 50) #9
  %59 = load i16, ptr %17, align 4
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %87, label %61

61:                                               ; preds = %54
  %62 = load ptr, ptr %0, align 4
  %63 = getelementptr inbounds %struct.rt2x00_dev, ptr %62, i32 0, i32 42
  %64 = load ptr, ptr %63, align 4
  %65 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %64, ptr noundef %16) #9
  tail call void @msleep(i32 noundef 50) #9
  %66 = load i16, ptr %17, align 4
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %87, label %68

68:                                               ; preds = %61
  %69 = load ptr, ptr %0, align 4
  %70 = getelementptr inbounds %struct.rt2x00_dev, ptr %69, i32 0, i32 42
  %71 = load ptr, ptr %70, align 4
  %72 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %71, ptr noundef %16) #9
  tail call void @msleep(i32 noundef 50) #9
  %73 = load i16, ptr %17, align 4
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %87, label %75

75:                                               ; preds = %68
  %76 = load ptr, ptr %0, align 4
  %77 = getelementptr inbounds %struct.rt2x00_dev, ptr %76, i32 0, i32 42
  %78 = load ptr, ptr %77, align 4
  %79 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %78, ptr noundef %16) #9
  tail call void @msleep(i32 noundef 50) #9
  %80 = load i16, ptr %17, align 4
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %75
  %83 = load ptr, ptr %0, align 4
  %84 = getelementptr inbounds %struct.rt2x00_dev, ptr %83, i32 0, i32 42
  %85 = load ptr, ptr %84, align 4
  %86 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %85, ptr noundef %16) #9
  tail call void @msleep(i32 noundef 50) #9
  br label %87

87:                                               ; preds = %82, %75, %68, %61, %54, %47, %40, %33, %26, %20, %14, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @rt2x00usb_flush_entry(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.queue_entry, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.queue_entry, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = load volatile i32, ptr %0, align 4
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %7, align 4
  tail call void @usb_kill_urb(ptr noundef %12) #9
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr inbounds %struct.data_queue, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 16
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.rt2x00_dev, ptr %5, i32 0, i32 13
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.queue_entry_priv_usb_bcn, ptr %7, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  tail call void @usb_kill_urb(ptr noundef %24) #9
  br label %25

25:                                               ; preds = %22, %17, %11, %2
  ret i1 false
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt2x00usb_watchdog(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 50
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr %struct.data_queue, ptr %3, i32 1
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %4) #9, !srcloc !11
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rt2x00_ops, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.data_queue, ptr %5, i32 %9
  %11 = icmp eq ptr %3, %10
  br i1 %11, label %51, label %12

12:                                               ; preds = %43, %1
  %13 = phi ptr [ %44, %43 ], [ %4, %1 ]
  %14 = phi ptr [ %13, %43 ], [ %3, %1 ]
  %15 = getelementptr inbounds %struct.data_queue, ptr %14, i32 0, i32 10
  %16 = load i16, ptr %15, align 4
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %43, label %18

18:                                               ; preds = %12
  %19 = tail call ptr @rt2x00queue_get_entry(ptr noundef %14, i32 noundef 1) #9
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %43, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.queue_entry, ptr %19, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 10
  %27 = load volatile i32, ptr @jiffies, align 64
  %28 = sub i32 %26, %27
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %43, label %30

30:                                               ; preds = %23
  %31 = tail call i32 @___ratelimit(ptr noundef nonnull @rt2x00usb_watchdog_tx_dma._rs, ptr noundef nonnull @__func__.rt2x00usb_watchdog_tx_dma) #9
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %14, align 4
  %35 = getelementptr inbounds %struct.rt2x00_dev, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ieee80211_hw, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.wiphy, ptr %38, i32 0, i32 56
  %40 = getelementptr inbounds %struct.data_queue, ptr %14, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.rt2x00usb_watchdog_tx_dma, i32 noundef %41) #10
  br label %42

42:                                               ; preds = %33, %30
  tail call void @rt2x00queue_stop_queue(ptr noundef %14) #9
  tail call void @rt2x00queue_flush_queue(ptr noundef %14, i1 noundef zeroext true) #9
  tail call void @rt2x00queue_start_queue(ptr noundef %14) #9
  br label %43

43:                                               ; preds = %42, %23, %18, %12
  %44 = getelementptr %struct.data_queue, ptr %13, i32 1
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %44) #9, !srcloc !11
  %45 = load ptr, ptr %2, align 4
  %46 = load ptr, ptr %6, align 4
  %47 = getelementptr inbounds %struct.rt2x00_ops, ptr %46, i32 0, i32 5
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr %struct.data_queue, ptr %45, i32 %48
  %50 = icmp eq ptr %13, %49
  br i1 %50, label %51, label %12

51:                                               ; preds = %43, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt2x00usb_disable_radio(ptr noundef %0) #0 {
  %2 = tail call i32 @rt2x00usb_vendor_request(ptr noundef %0, i8 noundef zeroext 12, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt2x00usb_clear_entry(ptr noundef %0) #0 {
  store i32 0, ptr %0, align 4
  %2 = getelementptr inbounds %struct.queue_entry, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.data_queue, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 14
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call zeroext i1 @rt2x00usb_kick_rx_entry(ptr noundef %0, ptr noundef null)
  br label %9

9:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rt2x00usb_initialize(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 -28
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 50
  %6 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %4, i32 0, i32 4
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %118, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr inbounds %struct.usb_host_interface, ptr %4, i32 0, i32 3
  %12 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 49
  %13 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 48
  br label %14

14:                                               ; preds = %111, %9
  %15 = phi i32 [ 0, %9 ], [ %114, %111 ]
  %16 = phi ptr [ null, %9 ], [ %113, %111 ]
  %17 = phi ptr [ %10, %9 ], [ %112, %111 ]
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr %struct.usb_host_endpoint, ptr %18, i32 %15
  %20 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %19, i32 0, i32 3
  %21 = load i8, ptr %20, align 1
  %22 = and i8 %21, 3
  %23 = icmp eq i8 %22, 2
  br i1 %23, label %24, label %111

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %19, i32 0, i32 2
  %26 = load i8, ptr %25, align 1
  %27 = icmp sgt i8 %26, -1
  %28 = load ptr, ptr %12, align 8
  br i1 %27, label %67, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %28, align 4
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr i8, ptr %31, i32 36
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 -128
  %35 = and i8 %26, 15
  %36 = zext i8 %26 to i32
  %37 = zext i8 %35 to i16
  %38 = getelementptr inbounds %struct.data_queue, ptr %28, i32 0, i32 22
  store i16 %37, ptr %38, align 2
  %39 = getelementptr inbounds %struct.data_queue, ptr %28, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 14
  %42 = load i32, ptr %34, align 8
  %43 = shl i32 %42, 8
  %44 = shl nuw nsw i32 %36, 15
  %45 = or i32 %43, %44
  %46 = lshr i32 %45, 15
  %47 = and i32 %46, 15
  br i1 %41, label %48, label %52

48:                                               ; preds = %29
  %49 = getelementptr %struct.usb_device, ptr %34, i32 0, i32 21, i32 %47
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %58

52:                                               ; preds = %29
  %53 = getelementptr %struct.usb_device, ptr %34, i32 0, i32 22, i32 %47
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %52, %48
  %57 = getelementptr inbounds %struct.data_queue, ptr %28, i32 0, i32 23
  store i16 0, ptr %57, align 4
  br label %65

58:                                               ; preds = %52, %48
  %59 = phi ptr [ %50, %48 ], [ %54, %52 ]
  %60 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %59, i32 0, i32 4
  %61 = load i16, ptr %60, align 1
  %62 = and i16 %61, 2047
  %63 = getelementptr inbounds %struct.data_queue, ptr %28, i32 0, i32 23
  store i16 %62, ptr %63, align 4
  %64 = icmp eq i16 %62, 0
  br i1 %64, label %65, label %111

65:                                               ; preds = %58, %56
  %66 = phi ptr [ %57, %56 ], [ %63, %58 ]
  store i16 1, ptr %66, align 4
  br label %111

67:                                               ; preds = %24
  %68 = load i32, ptr %13, align 4
  %69 = getelementptr %struct.data_queue, ptr %28, i32 %68
  %70 = icmp eq ptr %17, %69
  br i1 %70, label %111, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %17, align 4
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr i8, ptr %73, i32 36
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr i8, ptr %75, i32 -128
  %77 = and i8 %26, 15
  %78 = zext i8 %26 to i32
  %79 = zext i8 %77 to i16
  %80 = getelementptr inbounds %struct.data_queue, ptr %17, i32 0, i32 22
  store i16 %79, ptr %80, align 2
  %81 = getelementptr inbounds %struct.data_queue, ptr %17, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 14
  %84 = load i32, ptr %76, align 8
  %85 = shl i32 %84, 8
  %86 = shl nuw nsw i32 %78, 15
  %87 = or i32 %85, %86
  %88 = lshr i32 %87, 15
  %89 = and i32 %88, 15
  br i1 %83, label %90, label %94

90:                                               ; preds = %71
  %91 = getelementptr %struct.usb_device, ptr %76, i32 0, i32 21, i32 %89
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %98, label %100

94:                                               ; preds = %71
  %95 = getelementptr %struct.usb_device, ptr %76, i32 0, i32 22, i32 %89
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %94, %90
  %99 = getelementptr inbounds %struct.data_queue, ptr %17, i32 0, i32 23
  store i16 0, ptr %99, align 4
  br label %107

100:                                              ; preds = %94, %90
  %101 = phi ptr [ %92, %90 ], [ %96, %94 ]
  %102 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %101, i32 0, i32 4
  %103 = load i16, ptr %102, align 1
  %104 = and i16 %103, 2047
  %105 = getelementptr inbounds %struct.data_queue, ptr %17, i32 0, i32 23
  store i16 %104, ptr %105, align 4
  %106 = icmp eq i16 %104, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %100, %98
  %108 = phi ptr [ %99, %98 ], [ %105, %100 ]
  store i16 1, ptr %108, align 4
  br label %109

109:                                              ; preds = %107, %100
  %110 = getelementptr %struct.data_queue, ptr %17, i32 1
  br label %111

111:                                              ; preds = %109, %67, %65, %58, %14
  %112 = phi ptr [ %110, %109 ], [ %17, %67 ], [ %17, %58 ], [ %17, %65 ], [ %17, %14 ]
  %113 = phi ptr [ %19, %109 ], [ %16, %67 ], [ %16, %58 ], [ %16, %65 ], [ %16, %14 ]
  %114 = add nuw nsw i32 %15, 1
  %115 = load i8, ptr %6, align 4
  %116 = zext i8 %115 to i32
  %117 = icmp ult i32 %114, %116
  br i1 %117, label %14, label %118

118:                                              ; preds = %111, %1
  %119 = phi ptr [ null, %1 ], [ %113, %111 ]
  %120 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 49
  %121 = load ptr, ptr %120, align 8
  %122 = getelementptr inbounds %struct.data_queue, ptr %121, i32 0, i32 22
  %123 = load i16, ptr %122, align 2
  %124 = icmp eq i16 %123, 0
  br i1 %124, label %139, label %125

125:                                              ; preds = %118
  %126 = load ptr, ptr %5, align 4
  %127 = getelementptr inbounds %struct.data_queue, ptr %126, i32 0, i32 22
  %128 = load i16, ptr %127, align 2
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %139, label %130

130:                                              ; preds = %125
  %131 = getelementptr %struct.data_queue, ptr %126, i32 1
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %131) #9, !srcloc !11
  %132 = load ptr, ptr %120, align 8
  %133 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 48
  %134 = load i32, ptr %133, align 4
  %135 = getelementptr %struct.data_queue, ptr %132, i32 %134
  %136 = icmp eq ptr %126, %135
  br i1 %136, label %198, label %137

137:                                              ; preds = %130
  %138 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %119, i32 0, i32 2
  br label %148

139:                                              ; preds = %125, %118
  %140 = tail call i32 @___ratelimit(ptr noundef nonnull @rt2x00usb_find_endpoints._rs, ptr noundef nonnull @__func__.rt2x00usb_find_endpoints) #9
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %258, label %142

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 3
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.ieee80211_hw, ptr %144, i32 0, i32 1
  %146 = load ptr, ptr %145, align 8
  %147 = getelementptr inbounds %struct.wiphy, ptr %146, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %147, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.rt2x00usb_find_endpoints) #10
  br label %258

148:                                              ; preds = %192, %137
  %149 = phi ptr [ %131, %137 ], [ %193, %192 ]
  %150 = phi ptr [ %126, %137 ], [ %149, %192 ]
  %151 = getelementptr inbounds %struct.data_queue, ptr %150, i32 0, i32 22
  %152 = load i16, ptr %151, align 2
  %153 = icmp eq i16 %152, 0
  br i1 %153, label %154, label %192

154:                                              ; preds = %148
  %155 = load ptr, ptr %150, align 4
  %156 = load ptr, ptr %155, align 8
  %157 = getelementptr i8, ptr %156, i32 36
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr i8, ptr %158, i32 -128
  %160 = load i8, ptr %138, align 1
  %161 = and i8 %160, 15
  %162 = zext i8 %160 to i32
  %163 = zext i8 %161 to i16
  store i16 %163, ptr %151, align 2
  %164 = getelementptr inbounds %struct.data_queue, ptr %150, i32 0, i32 2
  %165 = load i32, ptr %164, align 4
  %166 = icmp eq i32 %165, 14
  %167 = load i32, ptr %159, align 8
  %168 = shl i32 %167, 8
  %169 = shl nuw nsw i32 %162, 15
  %170 = or i32 %168, %169
  %171 = lshr i32 %170, 15
  %172 = and i32 %171, 15
  br i1 %166, label %173, label %177

173:                                              ; preds = %154
  %174 = getelementptr %struct.usb_device, ptr %159, i32 0, i32 21, i32 %172
  %175 = load ptr, ptr %174, align 4
  %176 = icmp eq ptr %175, null
  br i1 %176, label %181, label %183

177:                                              ; preds = %154
  %178 = getelementptr %struct.usb_device, ptr %159, i32 0, i32 22, i32 %172
  %179 = load ptr, ptr %178, align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %183

181:                                              ; preds = %177, %173
  %182 = getelementptr inbounds %struct.data_queue, ptr %150, i32 0, i32 23
  store i16 0, ptr %182, align 4
  br label %190

183:                                              ; preds = %177, %173
  %184 = phi ptr [ %175, %173 ], [ %179, %177 ]
  %185 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %184, i32 0, i32 4
  %186 = load i16, ptr %185, align 1
  %187 = and i16 %186, 2047
  %188 = getelementptr inbounds %struct.data_queue, ptr %150, i32 0, i32 23
  store i16 %187, ptr %188, align 4
  %189 = icmp eq i16 %187, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %183, %181
  %191 = phi ptr [ %182, %181 ], [ %188, %183 ]
  store i16 1, ptr %191, align 4
  br label %192

192:                                              ; preds = %190, %183, %148
  %193 = getelementptr %struct.data_queue, ptr %149, i32 1
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %193) #9, !srcloc !11
  %194 = load ptr, ptr %120, align 8
  %195 = load i32, ptr %133, align 4
  %196 = getelementptr %struct.data_queue, ptr %194, i32 %195
  %197 = icmp eq ptr %149, %196
  br i1 %197, label %198, label %148

198:                                              ; preds = %192, %130
  %199 = phi ptr [ %132, %130 ], [ %194, %192 ]
  %200 = getelementptr %struct.data_queue, ptr %199, i32 1
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %200) #9, !srcloc !11
  %201 = load ptr, ptr %120, align 8
  %202 = load i32, ptr %133, align 4
  %203 = getelementptr %struct.data_queue, ptr %201, i32 %202
  %204 = icmp eq ptr %199, %203
  br i1 %204, label %260, label %205

205:                                              ; preds = %252, %198
  %206 = phi ptr [ %253, %252 ], [ %200, %198 ]
  %207 = phi ptr [ %206, %252 ], [ %199, %198 ]
  %208 = load ptr, ptr %207, align 4
  %209 = getelementptr inbounds %struct.data_queue, ptr %207, i32 0, i32 8
  %210 = load i16, ptr %209, align 4
  %211 = icmp eq i16 %210, 0
  br i1 %211, label %226, label %212

212:                                              ; preds = %205
  %213 = getelementptr inbounds %struct.data_queue, ptr %207, i32 0, i32 1
  br label %219

214:                                              ; preds = %219
  %215 = add nuw nsw i32 %220, 1
  %216 = load i16, ptr %209, align 4
  %217 = zext i16 %216 to i32
  %218 = icmp ult i32 %215, %217
  br i1 %218, label %219, label %226

219:                                              ; preds = %214, %212
  %220 = phi i32 [ 0, %212 ], [ %215, %214 ]
  %221 = load ptr, ptr %213, align 4
  %222 = getelementptr %struct.queue_entry, ptr %221, i32 %220, i32 5
  %223 = load ptr, ptr %222, align 4
  %224 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  store ptr %224, ptr %223, align 4
  %225 = icmp eq ptr %224, null
  br i1 %225, label %258, label %214

226:                                              ; preds = %214, %205
  %227 = phi i16 [ 0, %205 ], [ %216, %214 ]
  %228 = getelementptr inbounds %struct.data_queue, ptr %207, i32 0, i32 2
  %229 = load i32, ptr %228, align 4
  %230 = icmp eq i32 %229, 16
  br i1 %230, label %231, label %252

231:                                              ; preds = %226
  %232 = getelementptr inbounds %struct.rt2x00_dev, ptr %208, i32 0, i32 13
  %233 = load volatile i32, ptr %232, align 4
  %234 = and i32 %233, 2
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %252, label %236

236:                                              ; preds = %231
  %237 = getelementptr inbounds %struct.data_queue, ptr %207, i32 0, i32 1
  %238 = icmp eq i16 %227, 0
  br i1 %238, label %252, label %244

239:                                              ; preds = %244
  %240 = add nuw nsw i32 %245, 1
  %241 = load i16, ptr %209, align 4
  %242 = zext i16 %241 to i32
  %243 = icmp ult i32 %240, %242
  br i1 %243, label %244, label %252

244:                                              ; preds = %239, %236
  %245 = phi i32 [ %240, %239 ], [ 0, %236 ]
  %246 = load ptr, ptr %237, align 4
  %247 = getelementptr %struct.queue_entry, ptr %246, i32 %245, i32 5
  %248 = load ptr, ptr %247, align 4
  %249 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %250 = getelementptr inbounds %struct.queue_entry_priv_usb_bcn, ptr %248, i32 0, i32 2
  store ptr %249, ptr %250, align 4
  %251 = icmp eq ptr %249, null
  br i1 %251, label %258, label %239

252:                                              ; preds = %239, %236, %231, %226
  %253 = getelementptr %struct.data_queue, ptr %206, i32 1
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %253) #9, !srcloc !11
  %254 = load ptr, ptr %120, align 8
  %255 = load i32, ptr %133, align 4
  %256 = getelementptr %struct.data_queue, ptr %254, i32 %255
  %257 = icmp eq ptr %206, %256
  br i1 %257, label %260, label %205

258:                                              ; preds = %244, %219, %142, %139
  %259 = phi i32 [ -32, %142 ], [ -32, %139 ], [ -12, %244 ], [ -12, %219 ]
  tail call void @rt2x00usb_uninitialize(ptr noundef %0)
  br label %260

260:                                              ; preds = %258, %252, %198
  %261 = phi i32 [ %259, %258 ], [ 0, %198 ], [ 0, %252 ]
  ret i32 %261
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt2x00usb_uninitialize(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 66
  %3 = load ptr, ptr %2, align 8
  tail call void @usb_kill_anchored_urbs(ptr noundef %3) #9
  %4 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 55
  %5 = tail call i32 @hrtimer_cancel(ptr noundef %4) #9
  %6 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 44
  %7 = tail call zeroext i1 @cancel_work_sync(ptr noundef %6) #9
  %8 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 45
  %9 = tail call zeroext i1 @cancel_work_sync(ptr noundef %8) #9
  %10 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 49
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr %struct.data_queue, ptr %11, i32 1
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %12) #9, !srcloc !11
  %13 = load ptr, ptr %10, align 8
  %14 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 48
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.data_queue, ptr %13, i32 %15
  %17 = icmp eq ptr %11, %16
  br i1 %17, label %77, label %18

18:                                               ; preds = %71, %1
  %19 = phi ptr [ %72, %71 ], [ %12, %1 ]
  %20 = phi ptr [ %19, %71 ], [ %11, %1 ]
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.data_queue, ptr %20, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %71, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.data_queue, ptr %20, i32 0, i32 8
  %27 = load i16, ptr %26, align 4
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %47, label %29

29:                                               ; preds = %25
  %30 = getelementptr %struct.queue_entry, ptr %23, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %31, align 4
  tail call void @usb_kill_urb(ptr noundef %32) #9
  %33 = load ptr, ptr %31, align 4
  tail call void @usb_free_urb(ptr noundef %33) #9
  %34 = load i16, ptr %26, align 4
  %35 = icmp ugt i16 %34, 1
  br i1 %35, label %36, label %47

36:                                               ; preds = %36, %29
  %37 = phi i32 [ %43, %36 ], [ 1, %29 ]
  %38 = load ptr, ptr %22, align 4
  %39 = getelementptr %struct.queue_entry, ptr %38, i32 %37, i32 5
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %40, align 4
  tail call void @usb_kill_urb(ptr noundef %41) #9
  %42 = load ptr, ptr %40, align 4
  tail call void @usb_free_urb(ptr noundef %42) #9
  %43 = add nuw nsw i32 %37, 1
  %44 = load i16, ptr %26, align 4
  %45 = zext i16 %44 to i32
  %46 = icmp ult i32 %43, %45
  br i1 %46, label %36, label %47

47:                                               ; preds = %36, %29, %25
  %48 = phi i16 [ 0, %25 ], [ %34, %29 ], [ %44, %36 ]
  %49 = getelementptr inbounds %struct.data_queue, ptr %20, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 16
  br i1 %51, label %52, label %71

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.rt2x00_dev, ptr %21, i32 0, i32 13
  %54 = load volatile i32, ptr %53, align 4
  %55 = and i32 %54, 2
  %56 = icmp eq i32 %55, 0
  %57 = icmp eq i16 %48, 0
  %58 = select i1 %56, i1 true, i1 %57
  br i1 %58, label %71, label %59

59:                                               ; preds = %59, %52
  %60 = phi i32 [ %67, %59 ], [ 0, %52 ]
  %61 = load ptr, ptr %22, align 4
  %62 = getelementptr %struct.queue_entry, ptr %61, i32 %60, i32 5
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.queue_entry_priv_usb_bcn, ptr %63, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  tail call void @usb_kill_urb(ptr noundef %65) #9
  %66 = load ptr, ptr %64, align 4
  tail call void @usb_free_urb(ptr noundef %66) #9
  %67 = add nuw nsw i32 %60, 1
  %68 = load i16, ptr %26, align 4
  %69 = zext i16 %68 to i32
  %70 = icmp ult i32 %67, %69
  br i1 %70, label %59, label %71

71:                                               ; preds = %59, %52, %47, %18
  %72 = getelementptr %struct.data_queue, ptr %19, i32 1
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %72) #9, !srcloc !11
  %73 = load ptr, ptr %10, align 8
  %74 = load i32, ptr %14, align 4
  %75 = getelementptr %struct.data_queue, ptr %73, i32 %74
  %76 = icmp eq ptr %19, %75
  br i1 %76, label %77, label %18

77:                                               ; preds = %71, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_anchored_urbs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rt2x00usb_probe(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -128
  %6 = tail call ptr @usb_get_dev(ptr noundef %5) #9
  %7 = tail call i32 @usb_reset_device(ptr noundef %6) #9
  %8 = getelementptr inbounds %struct.rt2x00_ops, ptr %1, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @ieee80211_alloc_hw_nm(i32 noundef 2016, ptr noundef %9, ptr noundef null) #9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.rt2x00usb_probe) #10
  br label %71

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  store ptr %10, ptr %15, align 8
  %16 = getelementptr inbounds %struct.ieee80211_hw, ptr %10, i32 0, i32 3
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7
  store ptr %18, ptr %17, align 8
  %19 = getelementptr inbounds %struct.rt2x00_dev, ptr %17, i32 0, i32 1
  store ptr %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.rt2x00_dev, ptr %17, i32 0, i32 3
  store ptr %10, ptr %20, align 4
  %21 = getelementptr inbounds %struct.rt2x00_dev, ptr %17, i32 0, i32 16, i32 3
  store i32 2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.rt2x00_dev, ptr %17, i32 0, i32 44
  store i32 -32, ptr %22, align 8
  %23 = getelementptr inbounds %struct.rt2x00_dev, ptr %17, i32 0, i32 44, i32 1
  store volatile ptr %23, ptr %23, align 4
  %24 = getelementptr inbounds %struct.rt2x00_dev, ptr %17, i32 0, i32 44, i32 1, i32 1
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.rt2x00_dev, ptr %17, i32 0, i32 44, i32 2
  store ptr @rt2x00usb_work_rxdone, ptr %25, align 4
  %26 = getelementptr inbounds %struct.rt2x00_dev, ptr %17, i32 0, i32 45
  store i32 -32, ptr %26, align 8
  %27 = getelementptr inbounds %struct.rt2x00_dev, ptr %17, i32 0, i32 45, i32 1
  store volatile ptr %27, ptr %27, align 4
  %28 = getelementptr inbounds %struct.rt2x00_dev, ptr %17, i32 0, i32 45, i32 1, i32 1
  store ptr %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.rt2x00_dev, ptr %17, i32 0, i32 45, i32 2
  store ptr @rt2x00usb_work_txdone, ptr %29, align 4
  %30 = getelementptr inbounds %struct.rt2x00_dev, ptr %17, i32 0, i32 55
  tail call void @hrtimer_init(ptr noundef %30, i32 noundef 1, i32 noundef 1) #9
  %31 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %32 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 64) #11
  %33 = getelementptr inbounds %struct.rt2x00_dev, ptr %17, i32 0, i32 19
  store ptr %32, ptr %33, align 8
  %34 = icmp eq ptr %32, null
  br i1 %34, label %49, label %35

35:                                               ; preds = %14
  %36 = load ptr, ptr %19, align 4
  %37 = getelementptr inbounds %struct.rt2x00_ops, ptr %36, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %38, i32 noundef 3520) #12
  %40 = getelementptr inbounds %struct.rt2x00_dev, ptr %17, i32 0, i32 30
  store ptr %39, ptr %40, align 4
  %41 = icmp eq ptr %39, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = load ptr, ptr %19, align 4
  %44 = getelementptr inbounds %struct.rt2x00_ops, ptr %43, i32 0, i32 4
  %45 = load i32, ptr %44, align 4
  %46 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %45, i32 noundef 3520) #12
  %47 = getelementptr inbounds %struct.rt2x00_dev, ptr %17, i32 0, i32 31
  store ptr %46, ptr %47, align 8
  %48 = icmp eq ptr %46, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %42, %35, %14
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.rt2x00usb_alloc_reg) #10
  br label %64

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  %53 = tail call noalias ptr @devm_kmalloc(ptr noundef %52, i32 noundef 32, i32 noundef 3264) #9
  %54 = getelementptr inbounds %struct.rt2x00_dev, ptr %17, i32 0, i32 66
  store ptr %53, ptr %54, align 8
  %55 = icmp eq ptr %53, null
  br i1 %55, label %64, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds i8, ptr %53, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %57, i8 0, i32 24, i1 false) #9
  store volatile ptr %53, ptr %53, align 4
  %58 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  store ptr %53, ptr %58, align 4
  tail call void @__init_waitqueue_head(ptr noundef %57, ptr noundef nonnull @.str.9, ptr noundef nonnull @init_usb_anchor.__key) #9
  %59 = getelementptr inbounds %struct.usb_anchor, ptr %53, i32 0, i32 2
  store i32 0, ptr %59, align 4
  %60 = tail call i32 @rt2x00lib_probe_dev(ptr noundef %17) #9
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %56
  %63 = load ptr, ptr %54, align 8
  tail call void @usb_kill_anchored_urbs(ptr noundef %63) #9
  br label %64

64:                                               ; preds = %62, %51, %49
  %65 = phi i32 [ -12, %49 ], [ %60, %62 ], [ -12, %51 ]
  %66 = getelementptr inbounds %struct.rt2x00_dev, ptr %17, i32 0, i32 31
  %67 = load ptr, ptr %66, align 8
  tail call void @kfree(ptr noundef %67) #9
  store ptr null, ptr %66, align 8
  %68 = getelementptr inbounds %struct.rt2x00_dev, ptr %17, i32 0, i32 30
  %69 = load ptr, ptr %68, align 4
  tail call void @kfree(ptr noundef %69) #9
  store ptr null, ptr %68, align 4
  %70 = load ptr, ptr %33, align 8
  tail call void @kfree(ptr noundef %70) #9
  store ptr null, ptr %33, align 8
  tail call void @ieee80211_free_hw(ptr noundef nonnull %10) #9
  br label %71

71:                                               ; preds = %64, %12
  %72 = phi i32 [ %65, %64 ], [ -12, %12 ]
  tail call void @usb_put_dev(ptr noundef %6) #9
  %73 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  store ptr null, ptr %73, align 8
  br label %74

74:                                               ; preds = %71, %56
  %75 = phi i32 [ %72, %71 ], [ 0, %56 ]
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rt2x00usb_work_rxdone(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !12
  %3 = getelementptr i8, ptr %0, i32 96
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.data_queue, ptr %4, i32 0, i32 10
  %6 = load i16, ptr %5, align 4
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %14, %1
  %9 = phi ptr [ %23, %14 ], [ %4, %1 ]
  %10 = call ptr @rt2x00queue_get_entry(ptr noundef %9, i32 noundef 2) #9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.queue_entry, ptr %10, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 3, i32 12
  store ptr %2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.queue_entry, ptr %10, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.data_queue, ptr %19, i32 0, i32 19
  %21 = load i8, ptr %20, align 2
  %22 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 3, i32 9
  store i8 %21, ptr %22, align 1
  call void @rt2x00lib_rxdone(ptr noundef %10, i32 noundef 3264) #9
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds %struct.data_queue, ptr %23, i32 0, i32 10
  %25 = load i16, ptr %24, align 4
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %8

27:                                               ; preds = %14, %8, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rt2x00usb_work_txdone(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 84
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr %struct.data_queue, ptr %3, i32 1
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %4) #9, !srcloc !11
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %0, i32 -1684
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rt2x00_ops, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.data_queue, ptr %5, i32 %9
  %11 = icmp eq ptr %3, %10
  br i1 %11, label %42, label %12

12:                                               ; preds = %34, %1
  %13 = phi ptr [ %35, %34 ], [ %4, %1 ]
  %14 = phi ptr [ %13, %34 ], [ %3, %1 ]
  %15 = getelementptr inbounds %struct.data_queue, ptr %14, i32 0, i32 10
  %16 = load i16, ptr %15, align 4
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %27, %12
  %19 = tail call ptr @rt2x00queue_get_entry(ptr noundef %14, i32 noundef 2) #9
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load volatile i32, ptr %19, align 4
  %25 = and i32 %24, 32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = load volatile i32, ptr %19, align 4
  %29 = and i32 %28, 16
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 0, i32 3
  tail call void @rt2x00lib_txdone_noinfo(ptr noundef %19, i32 noundef %31) #9
  %32 = load i16, ptr %15, align 4
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %18

34:                                               ; preds = %27, %23, %18, %12
  %35 = getelementptr %struct.data_queue, ptr %13, i32 1
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %35) #9, !srcloc !11
  %36 = load ptr, ptr %2, align 4
  %37 = load ptr, ptr %6, align 4
  %38 = getelementptr inbounds %struct.rt2x00_ops, ptr %37, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr %struct.data_queue, ptr %36, i32 %39
  %41 = icmp eq ptr %13, %40
  br i1 %41, label %42, label %12

42:                                               ; preds = %34, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00lib_probe_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt2x00usb_disconnect(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  tail call void @rt2x00lib_remove_dev(ptr noundef %5) #9
  %6 = getelementptr inbounds %struct.rt2x00_dev, ptr %5, i32 0, i32 31
  %7 = load ptr, ptr %6, align 8
  tail call void @kfree(ptr noundef %7) #9
  store ptr null, ptr %6, align 8
  %8 = getelementptr inbounds %struct.rt2x00_dev, ptr %5, i32 0, i32 30
  %9 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %9) #9
  store ptr null, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rt2x00_dev, ptr %5, i32 0, i32 19
  %11 = load ptr, ptr %10, align 8
  tail call void @kfree(ptr noundef %11) #9
  store ptr null, ptr %10, align 8
  tail call void @ieee80211_free_hw(ptr noundef %3) #9
  store ptr null, ptr %2, align 8
  %12 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 -128
  tail call void @usb_put_dev(ptr noundef %14) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00lib_remove_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rt2x00usb_suspend(ptr nocapture noundef readonly %0, [1 x i32] %1) #0 {
  %3 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @rt2x00lib_suspend(ptr noundef %6) #9
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00lib_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rt2x00usb_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @rt2x00lib_resume(ptr noundef %5) #9
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00lib_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00lib_dmadone(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rt2x00usb_interrupt_txdone(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.queue_entry, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = load volatile i32, ptr %3, align 4
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %40, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 12
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @_set_bit(i32 noundef 4, ptr noundef %3) #9
  br label %15

15:                                               ; preds = %14, %10
  tail call void @rt2x00lib_dmadone(ptr noundef %3) #9
  %16 = getelementptr inbounds %struct.rt2x00_dev, ptr %6, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.rt2x00_ops, ptr %17, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.rt2x00lib_ops, ptr %19, i32 0, i32 26
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  tail call void %21(ptr noundef %3) #9
  br label %24

24:                                               ; preds = %23, %15
  %25 = getelementptr inbounds %struct.rt2x00_dev, ptr %6, i32 0, i32 13
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 64
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.rt2x00_dev, ptr %6, i32 0, i32 54
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.rt2x00_dev, ptr %6, i32 0, i32 54, i32 0, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %29, %24
  %36 = getelementptr inbounds %struct.rt2x00_dev, ptr %6, i32 0, i32 42
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.rt2x00_dev, ptr %6, i32 0, i32 45
  %39 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %37, ptr noundef %38) #9
  br label %40

40:                                               ; preds = %35, %29, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00lib_dmastart(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rt2x00usb_interrupt_rxdone(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.queue_entry, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = load volatile i32, ptr %3, align 4
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 20
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.data_queue, ptr %5, i32 0, i32 19
  %14 = load i8, ptr %13, align 2
  %15 = zext i8 %14 to i32
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 12
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17, %10
  tail call void @_set_bit(i32 noundef 4, ptr noundef %3) #9
  br label %22

22:                                               ; preds = %21, %17
  tail call void @rt2x00lib_dmadone(ptr noundef %3) #9
  %23 = getelementptr inbounds %struct.rt2x00_dev, ptr %6, i32 0, i32 42
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.rt2x00_dev, ptr %6, i32 0, i32 44
  %26 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %24, ptr noundef %25) #9
  br label %27

27:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rt2x00queue_get_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00queue_stop_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00queue_flush_queue(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00queue_start_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_alloc_hw_nm(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00lib_rxdone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00lib_txdone_noinfo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2156395305, i64 2156395815, i64 2156395342, i64 2156395398, i64 2156395432, i64 2156395456, i64 2156395497, i64 2156395518, i64 2156395546, i64 2156395580}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 430956}
!12 = !{!"auto-init"}
