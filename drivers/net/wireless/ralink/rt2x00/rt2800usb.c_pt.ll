; ModuleID = '/llk/IR/drivers/net/wireless/ralink/rt2x00/rt2800usb.c_pt.bc'
source_filename = "../drivers/net/wireless/ralink/rt2x00/rt2800usb.c"
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
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rt2x00_ops = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.rt2x00lib_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rt2800_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.data_queue = type { ptr, ptr, i32, i32, %struct.mutex, %struct.spinlock, %struct.spinlock, i32, i16, i16, i16, [3 x i16], i16, i32, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16 }
%struct.rt2x00_dev = type { ptr, ptr, ptr, ptr, [6 x %struct.ieee80211_supported_band], ptr, i32, i32, %struct.rt2x00_led, %struct.rt2x00_led, %struct.rt2x00_led, i16, i32, i32, i32, ptr, %struct.rt2x00_chip, %struct.hw_mode_spec, %struct.antenna_setup, %union.csr, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, %struct.ieee80211_iface_limit, [1 x %struct.ieee80211_iface_combination], %struct.link, ptr, ptr, i16, i16, i8, i8, i8, i8, i16, i16, i32, %struct.ieee80211_low_level_stats, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.work_struct, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.119, %struct.hrtimer, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, i32, ptr, i32, ptr }
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
%struct.rt2x00_chip = type { i16, i16, i16, i32 }
%struct.hw_mode_spec = type { i32, i32, i32, ptr, ptr, %struct.ieee80211_sta_ht_cap }
%struct.antenna_setup = type { i32, i32, i8, i8 }
%union.csr = type { ptr }
%struct.ieee80211_iface_limit = type { i16, i16 }
%struct.ieee80211_iface_combination = type { ptr, i32, i16, i8, i8, i8, i8, i32 }
%struct.link = type { i32, %struct.link_qual, %struct.link_ant, %struct.ewma_rssi, %struct.delayed_work, %struct.delayed_work, i32, i8, %struct.delayed_work, %struct.delayed_work }
%struct.link_qual = type { i32, i32, i8, i8, i32, i32, i32, i32 }
%struct.link_ant = type { i32, %struct.antenna_setup, i32, %struct.ewma_rssi }
%struct.ewma_rssi = type { i32 }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.anon.119 = type { %union.anon.120, [0 x i32] }
%union.anon.120 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.121, i32 }
%union.anon.121 = type { ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.118, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.118 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.116, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type {}
%struct.anon.116 = type { i64, i64, i8 }
%struct.queue_entry = type { i32, i32, ptr, ptr, i32, ptr }
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
%struct.rxdone_entry_desc = type { i64, i32, i32, i32, i32, i32, i16, i16, i32, i32, i8, i8, [2 x i32], i32 }

@__param_str_nohwcrypt = internal constant [10 x i8] c"nohwcrypt\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@modparam_nohwcrypt = internal global i8 0, align 1
@__param_nohwcrypt = internal constant %struct.kernel_param { ptr @__param_str_nohwcrypt, ptr @__this_module, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.90 { ptr @modparam_nohwcrypt } }, section "__param", align 4
@__UNIQUE_ID_nohwcrypttype349 = internal constant [24 x i8] c"parmtype=nohwcrypt:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nohwcrypt350 = internal constant [44 x i8] c"parm=nohwcrypt:Disable hardware encryption.\00", section ".modinfo", align 1
@__UNIQUE_ID_author380 = internal constant [38 x i8] c"author=http://rt2x00.serialmonkey.com\00", section ".modinfo", align 1
@__UNIQUE_ID_version381 = internal constant [14 x i8] c"version=2.3.0\00", section ".modinfo", align 1
@__UNIQUE_ID_description382 = internal constant [51 x i8] c"description=Ralink RT2800 USB Wireless LAN driver.\00", section ".modinfo", align 1
@rt2800usb_device_table = internal constant [222 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1976, i16 10352, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 10096, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 12400, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 12401, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 12402, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5250, i16 15369, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7898, i16 8210, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7898, i16 8720, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7898, i16 8976, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -31466, i16 8304, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -31466, i16 10096, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -31466, i16 10352, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -31466, i16 12400, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -31466, i16 12401, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -31466, i16 12402, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5298, i16 15366, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5298, i16 15367, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5298, i16 15369, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5298, i16 15378, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5298, i16 15395, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5298, i16 15397, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5298, i16 15399, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5298, i16 15400, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5298, i16 15404, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5573, i16 8, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5776, i16 1856, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2821, i16 5937, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2821, i16 5938, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2821, i16 5954, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2821, i16 6020, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5985, i16 2821, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 12871, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 12915, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 13061, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 13063, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 13089, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 -32685, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 -32676, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 -32420, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 -32166, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 -32165, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 -27814, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 -27813, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 232, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 344, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 349, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 367, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 418, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 494, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 424, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 509, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1962, i16 47, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1962, i16 60, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1962, i16 63, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6341, i16 18, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2001, i16 15369, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2001, i16 15370, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2001, i16 15373, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2001, i16 15374, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2001, i16 15375, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2001, i16 15377, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2001, i16 15379, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2001, i16 15381, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2001, i16 15382, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2001, i16 15383, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 13079, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 15387, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 15397, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2042, i16 30482, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4073, i16 -19705, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 29586, i16 16517, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 29586, i16 30481, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 29586, i16 30487, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 29586, i16 30488, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 29586, i16 30498, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8253, i16 5248, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8253, i16 5289, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5952, i16 -26879, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5952, i16 -26878, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5952, i16 -26877, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5952, i16 -26875, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5952, i16 -26874, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5952, i16 -26873, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5952, i16 -26872, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5952, i16 -26871, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5545, i16 18, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4164, i16 -32757, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4164, i16 -32755, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3686, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3686, i16 3, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3686, i16 9, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3686, i16 11, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3686, i16 19, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3686, i16 23, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3686, i16 24, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1211, i16 2373, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1211, i16 2375, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1211, i16 2376, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5041, i16 49, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5943, i16 112, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5943, i16 113, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5943, i16 119, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5943, i16 120, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1929, i16 354, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1929, i16 355, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1929, i16 356, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1929, i16 358, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4109, i16 -28623, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 14368, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 14369, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 14370, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 14448, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 14449, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 26777, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 -32230, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 -32214, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 -32213, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 -32212, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 -30966, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 -30950, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 -30949, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 -30948, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 -30310, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7029, i16 12400, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7029, i16 12401, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7029, i16 12402, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7029, i16 -24064, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8376, i16 -30584, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7501, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7501, i16 12, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7501, i16 14, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7501, i16 17, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1137, i16 8207, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8217, i16 20993, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8217, i16 -21723, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8217, i16 -4858, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6706, i16 772, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5263, i16 8304, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5263, i16 10096, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5263, i16 10352, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5263, i16 12400, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5263, i16 12401, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5263, i16 12402, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1256, i16 8216, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4763, i16 6184, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 23, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 43, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 44, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 45, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 57, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 59, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 61, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 62, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 63, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 64, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 66, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 71, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 72, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 81, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 95, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 96, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 26136, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 29969, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 29970, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 29986, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 -31454, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 -23016, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 -22783, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 -22782, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 -22781, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 -19166, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5545, i16 6, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6015, i16 339, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6015, i16 356, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6015, i16 770, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6015, i16 787, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6015, i16 803, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6015, i16 804, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6015, i16 4451, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5502, i16 12302, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5502, i16 12307, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3294, i16 34, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3294, i16 37, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 23127, i16 640, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 23127, i16 642, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 23127, i16 643, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 23127, i16 21079, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1414, i16 13334, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1414, i16 13336, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1414, i16 13338, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1414, i16 13342, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1414, i16 13374, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 -27557, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 15383, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 -19183, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 -19182, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1137, i16 8413, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5263, i16 13168, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5263, i16 -32656, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 80, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6015, i16 355, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6015, i16 357, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -31466, i16 13682, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5776, i16 1860, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5776, i16 1889, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5776, i16 1892, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2821, i16 6045, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5755, i16 16385, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5952, i16 -26623, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1211, i16 2372, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5041, i16 47, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5943, i16 121, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1929, i16 368, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5263, i16 13682, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 65, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 98, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 101, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 102, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 104, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2352, i16 2567, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 23127, i16 644, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], align 4
@__UNIQUE_ID_firmware383 = internal constant [20 x i8] c"firmware=rt2870.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_license384 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@rt2800usb_driver = internal global %struct.usb_driver { ptr @.str, ptr @rt2800usb_probe, ptr @rt2x00usb_disconnect, ptr null, ptr @rt2x00usb_suspend, ptr @rt2x00usb_resume, ptr @rt2x00usb_resume, ptr null, ptr null, ptr @rt2800usb_device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 4 }, align 4
@.str = private unnamed_addr constant [10 x i8] c"rt2800usb\00", align 1
@rt2800usb_ops = internal constant %struct.rt2x00_ops { ptr @.str, i32 820, i32 8, i32 512, i32 16, i32 4, ptr @rt2800usb_queue_init, ptr @rt2800usb_rt2x00_ops, ptr @rt2800usb_rt2800_ops, ptr @rt2800usb_mac80211_ops }, align 4
@rt2800usb_rt2x00_ops = internal constant %struct.rt2x00lib_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt2800usb_probe_hw, ptr @rt2800usb_get_firmware_name, ptr @rt2800_check_firmware, ptr @rt2800_load_firmware, ptr @rt2x00usb_initialize, ptr @rt2x00usb_uninitialize, ptr null, ptr @rt2x00usb_clear_entry, ptr @rt2800usb_set_device_state, ptr @rt2800_rfkill_poll, ptr @rt2800_link_stats, ptr @rt2800_reset_tuner, ptr @rt2800_link_tuner, ptr @rt2800_gain_calibration, ptr @rt2800_vco_calibration, ptr @rt2800_watchdog, ptr @rt2800usb_start_queue, ptr @rt2x00usb_kick_queue, ptr @rt2800usb_stop_queue, ptr @rt2x00usb_flush_queue, ptr @rt2800usb_tx_dma_done, ptr @rt2800usb_write_tx_desc, ptr @rt2800_write_tx_data, ptr @rt2800_write_beacon, ptr @rt2800_clear_beacon, ptr @rt2800usb_get_tx_data_len, ptr @rt2800usb_fill_rxdone, ptr @rt2800_config_shared_key, ptr @rt2800_config_pairwise_key, ptr @rt2800_config_filter, ptr @rt2800_config_intf, ptr @rt2800_config_erp, ptr @rt2800_config_ant, ptr @rt2800_config, ptr @rt2800_pre_reset_hw, ptr null, ptr null }, align 4
@rt2800usb_rt2800_ops = internal constant %struct.rt2800_ops { ptr @rt2x00usb_register_read, ptr @rt2x00usb_register_read_lock, ptr @rt2x00usb_register_write, ptr @rt2x00usb_register_write_lock, ptr @rt2x00usb_register_multiread, ptr @rt2x00usb_register_multiwrite, ptr @rt2x00usb_regbusy_read, ptr @rt2800usb_read_eeprom, ptr @rt2800usb_hwcrypt_disabled, ptr @rt2800usb_write_firmware, ptr @rt2800usb_init_registers, ptr @rt2800usb_get_txwi, ptr @rt2800usb_get_dma_done }, align 4
@rt2800usb_mac80211_ops = internal constant %struct.ieee80211_ops { ptr @rt2x00mac_tx, ptr @rt2x00mac_start, ptr @rt2x00mac_stop, ptr null, ptr null, ptr null, ptr @rt2x00mac_add_interface, ptr null, ptr @rt2x00mac_remove_interface, ptr @rt2x00mac_config, ptr @rt2x00mac_bss_info_changed, ptr null, ptr null, ptr null, ptr @rt2x00mac_configure_filter, ptr null, ptr @rt2x00mac_set_tim, ptr @rt2x00mac_set_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt2x00mac_sw_scan_start, ptr @rt2x00mac_sw_scan_complete, ptr @rt2x00mac_get_stats, ptr @rt2800_get_key_seq, ptr null, ptr @rt2800_set_rts_threshold, ptr @rt2800_sta_add, ptr @rt2800_sta_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt2800_conf_tx, ptr @rt2800_get_tsf, ptr null, ptr null, ptr null, ptr null, ptr @rt2800_ampdu_action, ptr @rt2800_get_survey, ptr @rt2x00mac_rfkill_poll, ptr null, ptr @rt2x00mac_flush, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt2x00mac_get_ringparam, ptr @rt2x00mac_tx_frames_pending, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt2x00mac_reconfig_complete, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@rt2800usb_tx_sta_fifo_read_completed._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.rt2800usb_tx_sta_fifo_read_completed = private unnamed_addr constant [37 x i8] c"rt2800usb_tx_sta_fifo_read_completed\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"%s: Warning - TX status read failed %d\0A\00", align 1
@rt2800usb_tx_sta_fifo_read_completed._rs.2 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"%s: Warning - TX status FIFO overrun\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"rt2870.bin\00", align 1
@rt2800usb_set_device_state._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.rt2800usb_set_device_state = private unnamed_addr constant [27 x i8] c"rt2800usb_set_device_state\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"%s: Error - Device failed to enter state %d (%d)\0A\00", align 1
@rt2800usb_fill_rxdone._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.rt2800usb_fill_rxdone = private unnamed_addr constant [22 x i8] c"rt2800usb_fill_rxdone\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"%s: Error - Bad frame size %d, forcing to 0\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.7 = private unnamed_addr constant [64 x i8] c"%s: Info - Firmware loading not required - NIC in AutoRun mode\0A\00", align 1
@__func__.rt2800usb_write_firmware = private unnamed_addr constant [25 x i8] c"rt2800usb_write_firmware\00", align 1
@rt2800usb_write_firmware._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.8 = private unnamed_addr constant [48 x i8] c"%s: Error - Failed to write Firmware to device\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author380, ptr @__UNIQUE_ID_description382, ptr @__UNIQUE_ID_firmware383, ptr @__UNIQUE_ID_license384, ptr @__UNIQUE_ID_nohwcrypt350, ptr @__UNIQUE_ID_nohwcrypttype349, ptr @__UNIQUE_ID_version381, ptr @__param_nohwcrypt], section "llvm.metadata"

@__mod_usb__rt2800usb_device_table_device_table = dso_local alias [222 x %struct.usb_device_id], ptr @rt2800usb_device_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @usb_register_driver(ptr noundef nonnull @rt2800usb_driver, ptr noundef nonnull @__this_module, ptr noundef nonnull @.str) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @usb_deregister(ptr noundef nonnull @rt2800usb_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt2800usb_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = tail call i32 @rt2x00usb_probe(ptr noundef %0, ptr noundef nonnull @rt2800usb_ops) #11
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00usb_disconnect(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00usb_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00usb_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00usb_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rt2800usb_queue_init(ptr nocapture noundef %0) #2 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #11
  store i16 0, ptr %2, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #11
  store i16 0, ptr %3, align 2, !annotation !8
  call void @rt2800_get_txwi_rxwi_size(ptr noundef %4, ptr noundef nonnull %2, ptr noundef nonnull %3) #11
  %5 = getelementptr inbounds %struct.data_queue, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %9 [
    i32 14, label %10
    i32 0, label %7
    i32 1, label %7
    i32 2, label %7
    i32 3, label %7
    i32 16, label %8
  ]

7:                                                ; preds = %1, %1, %1, %1
  br label %10

8:                                                ; preds = %1
  br label %10

9:                                                ; preds = %1
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ralink/rt2x00/rt2800usb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 750, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

10:                                               ; preds = %8, %7, %1
  %11 = phi i16 [ 8, %8 ], [ 16, %7 ], [ 128, %1 ]
  %12 = phi i16 [ 256, %8 ], [ 3840, %7 ], [ 3840, %1 ]
  %13 = phi ptr [ %2, %8 ], [ %2, %7 ], [ %3, %1 ]
  %14 = getelementptr inbounds %struct.data_queue, ptr %0, i32 0, i32 8
  store i16 %11, ptr %14, align 4
  %15 = getelementptr inbounds %struct.data_queue, ptr %0, i32 0, i32 18
  store i16 %12, ptr %15, align 4
  %16 = getelementptr inbounds %struct.data_queue, ptr %0, i32 0, i32 19
  store i8 4, ptr %16, align 2
  %17 = load i16, ptr %13, align 2
  %18 = trunc i16 %17 to i8
  %19 = getelementptr inbounds %struct.data_queue, ptr %0, i32 0, i32 20
  store i8 %18, ptr %19, align 1
  %20 = getelementptr inbounds %struct.data_queue, ptr %0, i32 0, i32 21
  store i16 4, ptr %20, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_get_txwi_rxwi_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt2800usb_probe_hw(ptr noundef %0) #2 {
  %2 = tail call i32 @rt2800_probe_hw(ptr noundef %0) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 55, i32 2
  store ptr @rt2800usb_tx_sta_fifo_timeout, ptr %5, align 8
  %6 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 45
  store i32 -32, ptr %6, align 8
  %7 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 45, i32 1
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 45, i32 1, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 45, i32 2
  store ptr @rt2800usb_work_txdone, ptr %9, align 4
  br label %10

10:                                               ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @rt2800usb_get_firmware_name(ptr nocapture noundef readnone %0) #4 {
  ret ptr @.str.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_check_firmware(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_load_firmware(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00usb_initialize(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00usb_uninitialize(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00usb_clear_entry(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt2800usb_set_device_state(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  switch i32 %1, label %23 [
    i32 4, label %4
    i32 5, label %7
    i32 6, label %33
    i32 7, label %33
    i32 3, label %8
    i32 0, label %9
    i32 1, label %9
    i32 2, label %9
  ]

4:                                                ; preds = %2
  tail call void @rt2800_mcu_request(ptr noundef %0, i8 noundef zeroext 49, i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext 2) #11
  tail call void @msleep(i32 noundef 1) #11
  %5 = tail call i32 @rt2800_wait_wpdma_ready(ptr noundef %0) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %23, !prof !10

7:                                                ; preds = %2
  tail call void @rt2800_disable_radio(ptr noundef %0) #11
  tail call void @rt2800_mcu_request(ptr noundef %0, i8 noundef zeroext 48, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 2) #11
  br label %33

8:                                                ; preds = %2
  tail call void @rt2800_mcu_request(ptr noundef %0, i8 noundef zeroext 49, i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext 2) #11
  br label %33

9:                                                ; preds = %2, %2, %2
  tail call void @rt2800_mcu_request(ptr noundef %0, i8 noundef zeroext 48, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 2) #11
  br label %33

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 49
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.data_queue, ptr %12, i32 0, i32 8
  %14 = load i16, ptr %13, align 4
  %15 = mul i16 %14, 608
  %16 = add i16 %15, -768
  %17 = and i16 %16, -256
  %18 = zext i16 %17 to i32
  %19 = or i32 %18, 12583040
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 %19, ptr %3, align 4
  %20 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %0, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 672, ptr noundef nonnull %3, i16 noundef zeroext 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  %21 = call i32 @rt2800_enable_radio(ptr noundef %0) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %33, label %23, !prof !10

23:                                               ; preds = %10, %4, %2
  %24 = phi i32 [ %21, %10 ], [ -5, %4 ], [ -524, %2 ]
  %25 = call i32 @___ratelimit(ptr noundef nonnull @rt2800usb_set_device_state._rs, ptr noundef nonnull @__func__.rt2800usb_set_device_state) #11
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ieee80211_hw, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.wiphy, ptr %31, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.rt2800usb_set_device_state, i32 noundef %1, i32 noundef %24) #12
  br label %33

33:                                               ; preds = %27, %23, %10, %9, %8, %7, %2, %2
  %34 = phi i32 [ %24, %23 ], [ %24, %27 ], [ 0, %10 ], [ 0, %2 ], [ 0, %2 ], [ 0, %7 ], [ 0, %8 ], [ 0, %9 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_rfkill_poll(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_link_stats(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_reset_tuner(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_link_tuner(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_gain_calibration(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_vco_calibration(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_watchdog(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rt2800usb_start_queue(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.data_queue, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %19 [
    i32 14, label %9
    i32 16, label %14
  ]

9:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4
  %10 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %6, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 4100, ptr noundef nonnull %5, i16 noundef zeroext 4) #11
  %11 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  %12 = or i32 %11, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 %12, ptr %4, align 4
  %13 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %6, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 4100, ptr noundef nonnull %4, i16 noundef zeroext 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %19

14:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4
  %15 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %6, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 4372, ptr noundef nonnull %3, i16 noundef zeroext 4) #11
  %16 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  %17 = or i32 %16, 1638400
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 %17, ptr %2, align 4
  %18 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %6, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 4372, ptr noundef nonnull %2, i16 noundef zeroext 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %19

19:                                               ; preds = %14, %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00usb_kick_queue(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rt2800usb_stop_queue(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.data_queue, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %19 [
    i32 14, label %9
    i32 16, label %14
  ]

9:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4
  %10 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %6, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 4100, ptr noundef nonnull %5, i16 noundef zeroext 4) #11
  %11 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  %12 = and i32 %11, -9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 %12, ptr %4, align 4
  %13 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %6, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 4100, ptr noundef nonnull %4, i16 noundef zeroext 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %19

14:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4
  %15 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %6, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 4372, ptr noundef nonnull %3, i16 noundef zeroext 4) #11
  %16 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  %17 = and i32 %16, -1638401
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 %17, ptr %2, align 4
  %18 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %6, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 4372, ptr noundef nonnull %2, i16 noundef zeroext 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %19

19:                                               ; preds = %14, %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00usb_flush_queue(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rt2800usb_tx_dma_done(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.queue_entry, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rt2x00_dev, ptr %4, i32 0, i32 12
  %6 = tail call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %5) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.rt2x00_dev, ptr %4, i32 0, i32 55
  tail call void @hrtimer_start_range_ns(ptr noundef %9, i64 noundef 2000000, i64 noundef 0, i32 noundef 1) #11
  br label %10

10:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @rt2800usb_write_tx_desc(ptr nocapture noundef readonly %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.queue_entry, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3, i32 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 822018048
  %10 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 5
  %11 = load i32, ptr %10, align 8
  %12 = add i32 %11, 65535
  %13 = and i32 %12, 65532
  %14 = or i32 %13, %9
  %15 = load volatile i32, ptr %1, align 4
  %16 = shl i32 %15, 13
  %17 = and i32 %16, 16777216
  %18 = or i32 %14, %17
  %19 = load volatile i32, ptr %1, align 4
  %20 = shl i32 %19, 25
  %21 = and i32 %20, -2147483648
  %22 = or i32 %18, %21
  %23 = xor i32 %22, 83886080
  store i32 %23, ptr %7, align 4
  %24 = load i8, ptr %5, align 4
  %25 = or i8 %24, 16
  store i8 %25, ptr %5, align 4
  %26 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3, i32 12
  store ptr %7, ptr %26, align 4
  %27 = getelementptr inbounds %struct.queue_entry, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.data_queue, ptr %28, i32 0, i32 20
  %30 = load i8, ptr %29, align 1
  %31 = add i8 %30, 4
  %32 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3, i32 9
  store i8 %31, ptr %32, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_write_tx_data(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_write_beacon(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_clear_beacon(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @rt2800usb_get_tx_data_len(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.queue_entry, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = add i32 %5, 7
  %7 = and i32 %6, -4
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rt2800usb_fill_rxdone(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.queue_entry, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3, i32 12
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3, i32 9
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %8, ptr align 4 %6, i32 %11, i1 false)
  %12 = load i32, ptr %6, align 4
  %13 = and i32 %12, 65535
  %14 = load ptr, ptr %3, align 4
  %15 = tail call ptr @skb_pull(ptr noundef %14, i32 noundef 4) #11
  %16 = icmp eq i32 %13, 0
  br i1 %16, label %24, label %17, !prof !11

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.queue_entry, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.data_queue, ptr %19, i32 0, i32 18
  %21 = load i16, ptr %20, align 4
  %22 = zext i16 %21 to i32
  %23 = icmp ugt i32 %13, %22
  br i1 %23, label %24, label %36, !prof !11

24:                                               ; preds = %17, %2
  %25 = tail call i32 @___ratelimit(ptr noundef nonnull @rt2800usb_fill_rxdone._rs, ptr noundef nonnull @__func__.rt2800usb_fill_rxdone) #11
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %80, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.queue_entry, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.rt2x00_dev, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.ieee80211_hw, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.wiphy, ptr %34, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.rt2800usb_fill_rxdone, i32 noundef %13) #12
  br label %80

36:                                               ; preds = %17
  %37 = load ptr, ptr %3, align 4
  %38 = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 17
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 %13
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 256
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.rxdone_entry_desc, ptr %1, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = or i32 %46, 32
  store i32 %47, ptr %45, align 4
  br label %48

48:                                               ; preds = %44, %36
  %49 = lshr i32 %41, 9
  %50 = trunc i32 %49 to i8
  %51 = and i8 %50, 3
  %52 = getelementptr inbounds %struct.rxdone_entry_desc, ptr %1, i32 0, i32 11
  store i8 %51, ptr %52, align 1
  %53 = and i32 %41, 65536
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.rxdone_entry_desc, ptr %1, i32 0, i32 4
  %57 = load i32, ptr %56, align 4
  %58 = or i32 %57, 24
  store i32 %58, ptr %56, align 4
  %59 = trunc i32 %49 to i2
  switch i2 %59, label %64 [
    i2 0, label %61
    i2 -2, label %60
  ]

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60, %55
  %62 = phi i32 [ 27, %60 ], [ 26, %55 ]
  %63 = or i32 %57, %62
  store i32 %63, ptr %56, align 4
  br label %64

64:                                               ; preds = %61, %55, %48
  %65 = and i32 %41, 128
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.rxdone_entry_desc, ptr %1, i32 0, i32 5
  %69 = load i32, ptr %68, align 8
  %70 = or i32 %69, 8
  store i32 %70, ptr %68, align 8
  br label %71

71:                                               ; preds = %67, %64
  %72 = and i32 %41, 16384
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.rxdone_entry_desc, ptr %1, i32 0, i32 5
  %76 = load i32, ptr %75, align 8
  %77 = or i32 %76, 64
  store i32 %77, ptr %75, align 8
  br label %78

78:                                               ; preds = %74, %71
  %79 = load ptr, ptr %3, align 4
  tail call void @skb_trim(ptr noundef %79, i32 noundef %13) #11
  tail call void @rt2800_process_rxwi(ptr noundef %0, ptr noundef %1) #11
  br label %80

80:                                               ; preds = %78, %27, %24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_config_shared_key(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_config_pairwise_key(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_config_filter(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_config_intf(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_config_erp(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_config_ant(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_config(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_pre_reset_hw(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_probe_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt2800usb_tx_sta_fifo_timeout(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -1808
  tail call void @rt2x00usb_register_read_async(ptr noundef %2, i32 noundef 5912, ptr noundef nonnull @rt2800usb_tx_sta_fifo_read_completed) #11
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rt2800usb_work_txdone(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -1688
  %3 = getelementptr i8, ptr %0, i32 100
  %4 = getelementptr i8, ptr %0, i32 104
  %5 = getelementptr i8, ptr %0, i32 -492
  %6 = getelementptr i8, ptr %0, i32 120
  br label %7

7:                                                ; preds = %19, %1
  %8 = load i32, ptr %3, align 4
  %9 = load i32, ptr %4, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call zeroext i1 @rt2800_txstatus_timeout(ptr noundef %2) #11
  br i1 %12, label %13, label %20

13:                                               ; preds = %11, %7
  tail call void @rt2800_txdone(ptr noundef %2, i32 noundef -1) #11
  tail call void @rt2800_txdone_nostatus(ptr noundef %2) #11
  %14 = tail call zeroext i1 @rt2800_txstatus_pending(ptr noundef %2) #11
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = tail call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %5) #11
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call void @hrtimer_start_range_ns(ptr noundef %6, i64 noundef 2000000, i64 noundef 0, i32 noundef 1) #11
  br label %19

19:                                               ; preds = %18, %15, %13
  br label %7

20:                                               ; preds = %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00usb_register_read_async(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @rt2800usb_tx_sta_fifo_read_completed(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %3
  %6 = tail call i32 @___ratelimit(ptr noundef nonnull @rt2800usb_tx_sta_fifo_read_completed._rs, ptr noundef nonnull @__func__.rt2800usb_tx_sta_fifo_read_completed) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %58, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ieee80211_hw, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.wiphy, ptr %12, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rt2800usb_tx_sta_fifo_read_completed, i32 noundef %1) #12
  br label %58

14:                                               ; preds = %3
  %15 = and i32 %2, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %47, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 54
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 54, i32 0, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = sub i32 %19, %21
  %23 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 54, i32 0, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = icmp ugt i32 %22, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 54, i32 0, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = and i32 %24, %19
  %30 = getelementptr i32, ptr %28, i32 %29
  store i32 %2, ptr %30, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !12
  %31 = load i32, ptr %18, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %18, align 4
  br label %42

33:                                               ; preds = %17
  %34 = tail call i32 @___ratelimit(ptr noundef nonnull @rt2800usb_tx_sta_fifo_read_completed._rs.2, ptr noundef nonnull @__func__.rt2800usb_tx_sta_fifo_read_completed) #11
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.ieee80211_hw, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.wiphy, ptr %40, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.rt2800usb_tx_sta_fifo_read_completed) #12
  br label %42

42:                                               ; preds = %36, %33, %26
  %43 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 42
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 45
  %46 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %44, ptr noundef %45) #11
  br label %65

47:                                               ; preds = %14
  %48 = tail call zeroext i1 @rt2800_txstatus_timeout(ptr noundef %0) #11
  br i1 %48, label %49, label %54

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 42
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 45
  %53 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %51, ptr noundef %52) #11
  br label %54

54:                                               ; preds = %49, %47
  %55 = tail call zeroext i1 @rt2800_txstatus_pending(ptr noundef %0) #11
  br i1 %55, label %56, label %58

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 55
  tail call void @hrtimer_start_range_ns(ptr noundef %57, i64 noundef 1000000, i64 noundef 0, i32 noundef 1) #11
  br label %65

58:                                               ; preds = %54, %8, %5
  %59 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %59) #11
  %60 = tail call zeroext i1 @rt2800_txstatus_pending(ptr noundef %0) #11
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = tail call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %59) #11
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61, %58
  br label %65

65:                                               ; preds = %64, %61, %56, %42
  %66 = phi i1 [ false, %64 ], [ true, %42 ], [ false, %56 ], [ true, %61 ]
  ret i1 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rt2800_txstatus_timeout(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rt2800_txstatus_pending(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_txdone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_txdone_nostatus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_mcu_request(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_wait_wpdma_ready(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rt2x00usb_register_write(ptr noundef %0, i32 noundef %1, i32 noundef %2) #9 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 %2, ptr %4, align 4
  %5 = trunc i32 %1 to i16
  %6 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %0, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext %5, ptr noundef nonnull %4, i16 noundef zeroext 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_enable_radio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00usb_vendor_request_buff(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_disable_radio(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt2x00usb_register_read(ptr noundef %0, i32 noundef %1) #9 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4
  %4 = trunc i32 %1 to i16
  %5 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %0, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext %4, ptr noundef nonnull %3, i16 noundef zeroext 4) #11
  %6 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_process_rxwi(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt2x00usb_register_read_lock(ptr noundef %0, i32 noundef %1) #9 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4
  %4 = trunc i32 %1 to i16
  %5 = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %0, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext %4, ptr noundef nonnull %3, i16 noundef zeroext 4, i32 noundef 100) #11
  %6 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %6
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rt2x00usb_register_write_lock(ptr noundef %0, i32 noundef %1, i32 noundef %2) #9 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 %2, ptr %4, align 4
  %5 = trunc i32 %1 to i16
  %6 = call i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef %0, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext %5, ptr noundef nonnull %4, i16 noundef zeroext 4, i32 noundef 100) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rt2x00usb_register_multiread(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #9 {
  %5 = trunc i32 %1 to i16
  %6 = trunc i32 %3 to i16
  %7 = tail call i32 @rt2x00usb_vendor_request_buff(ptr noundef %0, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext %5, ptr noundef %2, i16 noundef zeroext %6) #11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rt2x00usb_register_multiwrite(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #9 {
  %5 = trunc i32 %1 to i16
  %6 = trunc i32 %3 to i16
  %7 = tail call i32 @rt2x00usb_vendor_request_buff(ptr noundef %0, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext %5, ptr noundef %2, i16 noundef zeroext %6) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00usb_regbusy_read(ptr noundef, i32 noundef, [2 x i32], ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt2800usb_read_eeprom(ptr noundef %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 4) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @rt2x00usb_vendor_request(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 17, ptr noundef nonnull %3, i16 noundef zeroext 4, i32 noundef 1000) #11
  %7 = load i32, ptr %3, align 8
  tail call void @kfree(ptr noundef nonnull %3) #11
  %8 = icmp slt i32 %6, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = and i32 %7, 3
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @rt2800_efuse_detect(ptr noundef %0) #11
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %12
  %16 = icmp eq i32 %13, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %15, %9
  %18 = tail call i32 @rt2800_read_eeprom_efuse(ptr noundef %0) #11
  br label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 30
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @rt2x00usb_vendor_request(ptr noundef %0, i8 noundef zeroext 9, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %21, i16 noundef zeroext 512, i32 noundef 2000) #11
  br label %23

23:                                               ; preds = %19, %17, %12, %5, %1
  %24 = phi i32 [ %13, %12 ], [ %18, %17 ], [ %22, %19 ], [ -12, %1 ], [ %6, %5 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt2800usb_hwcrypt_disabled(ptr nocapture noundef readnone %0) #6 {
  %2 = load i8, ptr @modparam_nohwcrypt, align 1, !range !13
  %3 = icmp ne i8 %2, 0
  ret i1 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt2800usb_write_firmware(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 16
  %8 = load i16, ptr %7, align 4
  switch i16 %8, label %9 [
    i16 10336, label %12
    i16 10354, label %12
  ]

9:                                                ; preds = %3
  %10 = icmp eq i16 %8, 12400
  %11 = select i1 %10, i32 0, i32 4096
  br label %12

12:                                               ; preds = %9, %3, %3
  %13 = phi i32 [ 0, %3 ], [ %11, %9 ], [ 0, %3 ]
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 4) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %52, label %17

17:                                               ; preds = %12
  %18 = tail call i32 @rt2x00usb_vendor_request(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 17, ptr noundef nonnull %15, i16 noundef zeroext 4, i32 noundef 1000) #11
  %19 = load i32, ptr %15, align 8
  tail call void @kfree(ptr noundef nonnull %15) #11
  %20 = icmp slt i32 %18, 0
  br i1 %20, label %52, label %21

21:                                               ; preds = %17
  %22 = and i32 %19, 3
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ieee80211_hw, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.wiphy, ptr %28, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %29, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rt2800usb_write_firmware) #12
  %30 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 13
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, -2
  store i32 %32, ptr %30, align 4
  br label %36

33:                                               ; preds = %21
  %34 = getelementptr i8, ptr %1, i32 %13
  %35 = tail call i32 @rt2x00usb_vendor_request_buff(ptr noundef %0, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 12288, ptr noundef %34, i16 noundef zeroext 4096) #11
  br label %36

36:                                               ; preds = %33, %24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 -1, ptr %6, align 4
  %37 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %0, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 28692, ptr noundef nonnull %6, i16 noundef zeroext 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 -1, ptr %5, align 4
  %38 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %0, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 28700, ptr noundef nonnull %5, i16 noundef zeroext 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  %39 = call i32 @rt2x00usb_vendor_request(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #11
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = call i32 @___ratelimit(ptr noundef nonnull @rt2800usb_write_firmware._rs, ptr noundef nonnull @__func__.rt2800usb_write_firmware) #11
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.ieee80211_hw, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.wiphy, ptr %48, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.rt2800usb_write_firmware) #12
  br label %52

50:                                               ; preds = %36
  call void @msleep(i32 noundef 10) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4
  %51 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %0, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 28688, ptr noundef nonnull %4, i16 noundef zeroext 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %52

52:                                               ; preds = %50, %44, %41, %17, %12
  %53 = phi i32 [ 0, %50 ], [ %39, %44 ], [ %39, %41 ], [ %18, %17 ], [ -12, %12 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt2800usb_init_registers(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call i32 @rt2800_wait_csr_ready(ptr noundef %0) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4
  %9 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %0, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 1024, ptr noundef nonnull %5, i16 noundef zeroext 4) #11
  %10 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  %11 = and i32 %10, -8193
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 %11, ptr %4, align 4
  %12 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %0, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 1024, ptr noundef nonnull %4, i16 noundef zeroext 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 3, ptr %3, align 4
  %13 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %0, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 4100, ptr noundef nonnull %3, i16 noundef zeroext 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  %14 = call i32 @rt2x00usb_vendor_request(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4
  %15 = call i32 @rt2x00usb_vendor_request_buff(ptr noundef %0, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 4100, ptr noundef nonnull %2, i16 noundef zeroext 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %16

16:                                               ; preds = %8, %1
  %17 = phi i32 [ 0, %8 ], [ -16, %1 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @rt2800usb_get_txwi(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.queue_entry, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.data_queue, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 16
  %7 = getelementptr inbounds %struct.queue_entry, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = select i1 %6, i32 0, i32 4
  %12 = getelementptr i8, ptr %10, i32 %11
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt2800usb_get_dma_done(ptr noundef %0) #2 {
  %2 = tail call ptr @rt2x00queue_get_entry(ptr noundef %0, i32 noundef 1) #11
  %3 = getelementptr inbounds %struct.queue_entry, ptr %2, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00usb_vendor_req_buff_lock(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_read_eeprom_efuse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_efuse_detect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00usb_vendor_request(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_wait_csr_ready(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rt2x00queue_get_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mac_tx(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00mac_start(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mac_stop(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00mac_add_interface(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mac_remove_interface(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00mac_config(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mac_bss_info_changed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mac_configure_filter(ptr noundef, i32 noundef, ptr noundef, i64 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00mac_set_tim(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00mac_set_key(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mac_sw_scan_start(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mac_sw_scan_complete(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2x00mac_get_stats(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2800_get_key_seq(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_set_rts_threshold(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_sta_add(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_sta_remove(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_conf_tx(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rt2800_get_tsf(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_ampdu_action(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt2800_get_survey(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mac_rfkill_poll(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mac_flush(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mac_get_ringparam(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rt2x00mac_tx_frames_pending(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00mac_reconfig_complete(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

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
!9 = !{i64 2157315224, i64 2157315735, i64 2157315261, i64 2157315317, i64 2157315351, i64 2157315375, i64 2157315416, i64 2157315437, i64 2157315465, i64 2157315499}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2156766317}
!13 = !{i8 0, i8 2}
