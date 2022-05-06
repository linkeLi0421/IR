; ModuleID = '/llk/IR/drivers/usb/storage/uas.c_pt.bc'
source_filename = "../drivers/usb/storage/uas.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
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
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.lock_class_key = type {}
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.79, i32 }
%union.anon.79 = type { ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.uas_dev_info = type { ptr, ptr, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, i32, i32, i32, i32, i32, i32, i32, i8, [256 x ptr], %struct.spinlock, %struct.work_struct, %struct.work_struct }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.scsi_target = type { ptr, %struct.list_head, %struct.list_head, %struct.device, %struct.kref, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, i32, ptr, [0 x i32] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.command_iu = type { i8, i8, i16, i8, i8, i8, i8, %struct.scsi_lun, [16 x i8] }
%struct.scsi_lun = type { [8 x i8] }
%struct.iu = type { i8, i8, i16 }
%struct.sense_iu = type { i8, i8, i16, i16, i8, [7 x i8], i16, [96 x i8] }
%struct.response_iu = type { i8, i8, i16, [3 x i8], i8 }

@uas_usb_ids = internal global [20 x %struct.usb_device_id] [%struct.usb_device_id { i16 15, i16 1356, i16 2173, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 67108864 }, %struct.usb_device_id { i16 15, i16 1439, i16 4191, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1140850688 }, %struct.usb_device_id { i16 15, i16 1439, i16 4193, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1140850688 }, %struct.usb_device_id { i16 15, i16 2436, i16 769, i16 296, i16 296, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8388608 }, %struct.usb_device_id { i16 15, i16 3010, i16 13082, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 268435456 }, %struct.usb_device_id { i16 15, i16 5117, i16 14656, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 33554464 }, %struct.usb_device_id { i16 15, i16 5421, i16 1337, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 67108864 }, %struct.usb_device_id { i16 15, i16 5421, i16 1383, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 83886080 }, %struct.usb_device_id { i16 15, i16 5421, i16 1400, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 16777216 }, %struct.usb_device_id { i16 15, i16 5451, i16 -4085, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 33554432 }, %struct.usb_device_id { i16 15, i16 5451, i16 -4083, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 33554432 }, %struct.usb_device_id { i16 15, i16 8457, i16 1809, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 33554432 }, %struct.usb_device_id { i16 15, i16 9527, i16 4200, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8388608 }, %struct.usb_device_id { i16 15, i16 13693, i16 30600, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 75497472 }, %struct.usb_device_id { i16 15, i16 18801, i16 4114, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8388608 }, %struct.usb_device_id { i16 15, i16 18801, i16 -32745, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 67108864 }, %struct.usb_device_id { i16 15, i16 18801, i16 -32732, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 536870912 }, %struct.usb_device_id { i16 896, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 8, i8 6, i8 80, i8 0, i32 0 }, %struct.usb_device_id { i16 896, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 8, i8 6, i8 98, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], align 4
@__UNIQUE_ID_license285 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns286 = internal constant [22 x i8] c"import_ns=USB_STORAGE\00", section ".modinfo", align 1
@__UNIQUE_ID_author287 = internal constant [75 x i8] c"author=Hans de Goede <hdegoede@redhat.com>, Matthew Wilcox and Sarah Sharp\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [4 x i8] c"uas\00", align 1
@workqueue = internal unnamed_addr global ptr null, align 4
@uas_driver = internal global %struct.usb_driver { ptr @.str, ptr @uas_probe, ptr @uas_disconnect, ptr null, ptr @uas_suspend, ptr @uas_resume, ptr @uas_reset_resume, ptr @uas_pre_reset, ptr @uas_post_reset, ptr @uas_usb_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap { %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uas_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 0 }, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@uas_host_template = internal global %struct.scsi_host_template { i32 0, ptr @uas_queuecommand, ptr null, ptr @__this_module, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr @uas_eh_abort_handler, ptr @uas_eh_device_reset_handler, ptr null, ptr null, ptr null, ptr @uas_slave_alloc, ptr @uas_slave_configure, ptr null, ptr @uas_target_alloc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 -1, i16 0, i16 0, i32 0, i32 0, i32 4095, i32 0, i16 0, i8 0, i32 0, i8 16, i32 0, ptr null, ptr null, i64 0, ptr null, i32 0 }, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"UAS is ignored for this device, using usb-storage instead\0A\00", align 1
@.str.2 = private unnamed_addr constant [79 x i8] c"The driver for the USB controller %s does not support scatter-gather which is\0A\00", align 1
@.str.3 = private unnamed_addr constant [88 x i8] c"required by the UAS driver. Please try an other USB controller if you wish to use UAS.\0A\00", align 1
@.str.4 = private unnamed_addr constant [83 x i8] c"USB controller %s does not support streams, which are required by the UAS driver.\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"Please try an other USB controller if you wish to use UAS.\0A\00", align 1
@usb_stor_sense_invalidCDB = external dso_local local_unnamed_addr global [18 x i8], align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"data in submit err\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"data out submit err\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"cmd submit err\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"sense submit err\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"stat urb: status %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"stat urb: no pending cmd for uas-tag %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"unexpected status cmplt\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"unexpected read rdy\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"unexpected write rdy\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"bogus IU\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.17 = private unnamed_addr constant [88 x i8] c"%s: urb length %d disagrees with IU sense data length %d, using %d bytes of sense data\0A\00", align 1
@__func__.uas_sense = private unnamed_addr constant [10 x i8] c"uas_sense\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"response iu\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"unexpected data cmplt\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"data cmplt err\00", align 1
@.str.21 = private unnamed_addr constant [52 x i8] c"%s %d uas-tag %d inflight:%s%s%s%s%s%s%s%s%s%s%s%s \00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c" s-st\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [6 x i8] c" a-in\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c" s-in\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c" a-out\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c" s-out\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c" a-cmd\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c" s-cmd\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c" CMD\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c" IN\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c" OUT\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c" abort\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c" work\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"cmd cmplt err %d\0A\00", align 1
@__func__.uas_eh_abort_handler = private unnamed_addr constant [21 x i8] c"uas_eh_abort_handler\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"%s FAILED to get lock err %d\0A\00", align 1
@__func__.uas_eh_device_reset_handler = private unnamed_addr constant [28 x i8] c"uas_eh_device_reset_handler\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"%s start\0A\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"%s FAILED err %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"%s success\0A\00", align 1
@__func__.uas_zap_pending = private unnamed_addr constant [16 x i8] c"uas_zap_pending\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"drivers/usb/storage/uas.c\00", align 1
@init_usb_anchor.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"&anchor->wait\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.43 = private unnamed_addr constant [15 x i8] c"%s: timed out\0A\00", align 1
@__func__.uas_suspend = private unnamed_addr constant [12 x i8] c"uas_suspend\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.44 = private unnamed_addr constant [39 x i8] c"%s: alloc streams error %d after reset\00", align 1
@__func__.uas_reset_resume = private unnamed_addr constant [17 x i8] c"uas_reset_resume\00", align 1
@__func__.uas_pre_reset = private unnamed_addr constant [14 x i8] c"uas_pre_reset\00", align 1
@__func__.uas_post_reset = private unnamed_addr constant [15 x i8] c"uas_post_reset\00", align 1
@system_state = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author287, ptr @__UNIQUE_ID_import_ns286, ptr @__UNIQUE_ID_license285], section "llvm.metadata"

@__mod_usb__uas_usb_ids_device_table = dso_local alias [20 x %struct.usb_device_id], ptr @uas_usb_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 8, i32 noundef 0) #11
  store ptr %1, ptr @workqueue, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @usb_register_driver(ptr noundef nonnull @uas_driver, ptr noundef nonnull @__this_module, ptr noundef nonnull @.str) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %7) #11
  br label %8

8:                                                ; preds = %6, %3, %0
  %9 = phi i32 [ -12, %6 ], [ -12, %0 ], [ 0, %3 ]
  ret i32 %9
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @usb_deregister(ptr noundef nonnull @uas_driver) #11
  %1 = load ptr, ptr @workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uas_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = alloca [3 x ptr], align 4
  %4 = alloca [4 x ptr], align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 -128
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #11
  %9 = getelementptr i8, ptr %7, i32 -64
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  %11 = getelementptr inbounds %struct.usb_device_id, ptr %1, i32 0, i32 12
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %5, align 4
  %13 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %159, label %16

16:                                               ; preds = %2
  %17 = load ptr, ptr %0, align 8
  br label %18

18:                                               ; preds = %32, %16
  %19 = phi i32 [ 0, %16 ], [ %33, %32 ]
  %20 = getelementptr %struct.usb_host_interface, ptr %17, i32 %19
  %21 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %20, i32 0, i32 5
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 8
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %20, i32 0, i32 6
  %26 = load i8, ptr %25, align 2
  %27 = icmp eq i8 %26, 6
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %20, i32 0, i32 7
  %30 = load i8, ptr %29, align 1
  %31 = icmp eq i8 %30, 98
  br i1 %31, label %35, label %32

32:                                               ; preds = %28, %24, %18
  %33 = add nuw i32 %19, 1
  %34 = icmp eq i32 %33, %14
  br i1 %34, label %159, label %18

35:                                               ; preds = %28
  %36 = icmp eq ptr %20, null
  br i1 %36, label %159, label %37

37:                                               ; preds = %35
  %38 = getelementptr %struct.usb_host_interface, ptr %17, i32 %19, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %20, i32 0, i32 4
  %41 = load i8, ptr %40, align 4
  %42 = zext i8 %41 to i32
  %43 = icmp eq i8 %41, 0
  br i1 %43, label %159, label %44

44:                                               ; preds = %74, %37
  %45 = phi i32 [ %75, %74 ], [ 0, %37 ]
  %46 = getelementptr %struct.usb_host_endpoint, ptr %39, i32 %45
  %47 = getelementptr %struct.usb_host_endpoint, ptr %39, i32 %45, i32 8
  %48 = load i32, ptr %47, align 4
  %49 = icmp sgt i32 %48, 2
  br i1 %49, label %50, label %74

50:                                               ; preds = %44
  %51 = getelementptr %struct.usb_host_endpoint, ptr %39, i32 %45, i32 7
  %52 = load ptr, ptr %51, align 4
  br label %53

53:                                               ; preds = %68, %50
  %54 = phi i32 [ %71, %68 ], [ %48, %50 ]
  %55 = phi ptr [ %72, %68 ], [ %52, %50 ]
  %56 = getelementptr i8, ptr %55, i32 1
  %57 = load i8, ptr %56, align 1
  %58 = icmp eq i8 %57, 36
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = getelementptr i8, ptr %55, i32 2
  %61 = load i8, ptr %60, align 1
  %62 = add i8 %61, -1
  %63 = icmp ult i8 %62, 4
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = zext i8 %61 to i32
  %66 = add nsw i32 %65, -1
  %67 = getelementptr ptr, ptr %4, i32 %66
  store ptr %46, ptr %67, align 4
  br label %74

68:                                               ; preds = %53
  %69 = load i8, ptr %55, align 1
  %70 = zext i8 %69 to i32
  %71 = sub nsw i32 %54, %70
  %72 = getelementptr i8, ptr %55, i32 %70
  %73 = icmp sgt i32 %71, 2
  br i1 %73, label %53, label %74

74:                                               ; preds = %68, %64, %59, %44
  %75 = add nuw nsw i32 %45, 1
  %76 = icmp eq i32 %75, %42
  br i1 %76, label %77, label %44

77:                                               ; preds = %74
  %78 = load ptr, ptr %4, align 4
  %79 = getelementptr inbounds ptr, ptr %4, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds ptr, ptr %4, i32 2
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds ptr, ptr %4, i32 3
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %78, null
  %86 = icmp eq ptr %82, null
  %87 = icmp eq ptr %84, null
  %88 = icmp eq ptr %80, null
  %89 = select i1 %85, i1 true, i1 %88
  %90 = select i1 %89, i1 true, i1 %86
  %91 = select i1 %90, i1 true, i1 %87
  br i1 %91, label %159, label %92

92:                                               ; preds = %77
  %93 = getelementptr i8, ptr %7, i32 480
  %94 = load i16, ptr %93, align 8
  %95 = icmp eq i16 %94, 5964
  br i1 %95, label %96, label %123

96:                                               ; preds = %92
  %97 = getelementptr i8, ptr %7, i32 482
  %98 = load i16, ptr %97, align 2
  switch i16 %98, label %129 [
    i16 20742, label %99
    i16 21930, label %99
  ]

99:                                               ; preds = %96, %96
  %100 = getelementptr i8, ptr %7, i32 500
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.usb_config_descriptor, ptr %101, i32 0, i32 7
  %103 = load i8, ptr %102, align 4
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %120, label %105

105:                                              ; preds = %99
  %106 = getelementptr i8, ptr %7, i32 -100
  %107 = load i32, ptr %106, align 4
  %108 = icmp ult i32 %107, 5
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = or i32 %12, 8388608
  store i32 %110, ptr %5, align 4
  br label %120

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.usb_host_endpoint, ptr %80, i32 0, i32 1, i32 3
  %113 = load i8, ptr %112, align 1
  %114 = and i8 %113, 31
  %115 = icmp eq i8 %114, 5
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = or i32 %12, 8388608
  store i32 %117, ptr %5, align 4
  br label %120

118:                                              ; preds = %111
  %119 = or i32 %12, 134217728
  store i32 %119, ptr %5, align 4
  br label %120

120:                                              ; preds = %118, %116, %109, %99
  %121 = phi i32 [ %110, %109 ], [ %119, %118 ], [ %117, %116 ], [ %12, %99 ]
  %122 = load i16, ptr %93, align 8
  br label %123

123:                                              ; preds = %120, %92
  %124 = phi i32 [ %121, %120 ], [ %12, %92 ]
  %125 = phi i16 [ %122, %120 ], [ %94, %92 ]
  %126 = icmp eq i16 %125, 3010
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = or i32 %124, 33554432
  store i32 %128, ptr %5, align 4
  br label %129

129:                                              ; preds = %127, %123, %96
  call void @usb_stor_adjust_quirks(ptr noundef %8, ptr noundef nonnull %5) #11
  %130 = load i32, ptr %5, align 4
  %131 = and i32 %130, 8388608
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %157

133:                                              ; preds = %129
  %134 = load ptr, ptr %9, align 8
  %135 = getelementptr inbounds %struct.usb_bus, ptr %134, i32 0, i32 7
  %136 = load i32, ptr %135, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 0, i32 9
  %140 = load ptr, ptr %139, align 4
  br label %152

141:                                              ; preds = %133
  %142 = getelementptr i8, ptr %7, i32 -100
  %143 = load i32, ptr %142, align 4
  %144 = icmp ugt i32 %143, 4
  br i1 %144, label %145, label %160

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 0, i32 14
  %147 = load i16, ptr %146, align 8
  %148 = and i16 %147, 512
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.usb_bus, ptr %10, i32 0, i32 3
  br label %152

152:                                              ; preds = %150, %138
  %153 = phi ptr [ %151, %150 ], [ %140, %138 ]
  %154 = phi ptr [ @.str.4, %150 ], [ @.str.2, %138 ]
  %155 = phi ptr [ @.str.5, %150 ], [ @.str.3, %138 ]
  %156 = load ptr, ptr %153, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull %154, ptr noundef %156) #12
  br label %157

157:                                              ; preds = %152, %129
  %158 = phi ptr [ @.str.1, %129 ], [ %155, %152 ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull %158) #12
  br label %159

159:                                              ; preds = %157, %77, %37, %35, %32, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %296

160:                                              ; preds = %145, %141
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  %161 = load i32, ptr %13, align 8
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %296, label %163

163:                                              ; preds = %160
  %164 = load ptr, ptr %0, align 8
  br label %165

165:                                              ; preds = %179, %163
  %166 = phi i32 [ 0, %163 ], [ %180, %179 ]
  %167 = getelementptr %struct.usb_host_interface, ptr %164, i32 %166
  %168 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %167, i32 0, i32 5
  %169 = load i8, ptr %168, align 1
  %170 = icmp eq i8 %169, 8
  br i1 %170, label %171, label %179

171:                                              ; preds = %165
  %172 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %167, i32 0, i32 6
  %173 = load i8, ptr %172, align 2
  %174 = icmp eq i8 %173, 6
  br i1 %174, label %175, label %179

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %167, i32 0, i32 7
  %177 = load i8, ptr %176, align 1
  %178 = icmp eq i8 %177, 98
  br i1 %178, label %182, label %179

179:                                              ; preds = %175, %171, %165
  %180 = add nuw i32 %166, 1
  %181 = icmp eq i32 %180, %161
  br i1 %181, label %296, label %165

182:                                              ; preds = %175
  %183 = icmp eq ptr %167, null
  br i1 %183, label %296, label %184

184:                                              ; preds = %182
  %185 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %167, i32 0, i32 2
  %186 = load i8, ptr %185, align 2
  %187 = zext i8 %186 to i32
  %188 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %167, i32 0, i32 3
  %189 = load i8, ptr %188, align 1
  %190 = zext i8 %189 to i32
  %191 = call i32 @usb_set_interface(ptr noundef %8, i32 noundef %187, i32 noundef %190) #11
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %296

193:                                              ; preds = %184
  %194 = call ptr @scsi_host_alloc(ptr noundef nonnull @uas_host_template, i32 noundef 1196) #11
  %195 = icmp eq ptr %194, null
  br i1 %195, label %283, label %196

196:                                              ; preds = %193
  %197 = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 0, i32 24
  store i16 268, ptr %197, align 4
  %198 = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 0, i32 21
  store i32 1, ptr %198, align 4
  %199 = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 0, i32 22
  store i64 256, ptr %199, align 8
  %200 = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 0, i32 20
  store i32 0, ptr %200, align 8
  %201 = load ptr, ptr %9, align 8
  %202 = getelementptr inbounds %struct.usb_bus, ptr %201, i32 0, i32 7
  %203 = load i32, ptr %202, align 4
  %204 = trunc i32 %203 to i16
  %205 = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 0, i32 28
  store i16 %204, ptr %205, align 2
  %206 = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 0, i32 53
  store ptr %0, ptr %206, align 4
  %207 = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 1, i32 0, i32 1
  store ptr %8, ptr %207, align 4
  %208 = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 1, i32 13, i32 0, i32 1, i32 1
  store i32 0, ptr %208, align 4
  %209 = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 1, i32 13, i32 1
  %210 = load i8, ptr %209, align 4
  %211 = and i8 %210, -3
  store i8 %211, ptr %209, align 4
  %212 = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 1, i32 13, i32 0, i32 0, i32 2
  store i32 %130, ptr %212, align 4
  %213 = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 1, i32 1
  %214 = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 1, i32 2
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %214, i8 0, i32 24, i1 false) #11
  store volatile ptr %213, ptr %213, align 4
  %215 = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 1, i32 1, i32 1
  store ptr %213, ptr %215, align 4
  call void @__init_waitqueue_head(ptr noundef %214, ptr noundef nonnull @.str.42, ptr noundef nonnull @init_usb_anchor.__key) #11
  %216 = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 1, i32 4
  store i32 0, ptr %216, align 4
  %217 = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 1, i32 5, i32 2
  %218 = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 1, i32 5, i32 3, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %218, i8 0, i32 24, i1 false) #11
  store volatile ptr %217, ptr %217, align 4
  %219 = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 1, i32 5, i32 3
  store ptr %217, ptr %219, align 4
  call void @__init_waitqueue_head(ptr noundef %218, ptr noundef nonnull @.str.42, ptr noundef nonnull @init_usb_anchor.__key) #11
  %220 = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 1, i32 7
  store i32 0, ptr %220, align 4
  %221 = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 1, i32 9
  %222 = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 1, i32 10, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %222, i8 0, i32 24, i1 false) #11
  store volatile ptr %221, ptr %221, align 4
  %223 = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 1, i32 10
  store ptr %221, ptr %223, align 4
  call void @__init_waitqueue_head(ptr noundef %222, ptr noundef nonnull @.str.42, ptr noundef nonnull @init_usb_anchor.__key) #11
  %224 = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 1, i32 12
  store i32 0, ptr %224, align 4
  %225 = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 1, i32 50, i32 11, i32 26
  store i32 0, ptr %225, align 4
  %226 = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 1, i32 50, i32 11, i32 27
  store i32 -32, ptr %226, align 4
  %227 = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 1, i32 50, i32 11, i32 28
  store volatile ptr %227, ptr %227, align 4
  %228 = getelementptr inbounds %struct.list_head, ptr %227, i32 0, i32 1
  store ptr %227, ptr %228, align 4
  %229 = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 1, i32 50, i32 12
  store ptr @uas_do_work, ptr %229, align 4
  %230 = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 1, i32 50, i32 13
  store i32 -32, ptr %230, align 4
  %231 = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 1, i32 50, i32 14
  store volatile ptr %231, ptr %231, align 4
  %232 = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 1, i32 50, i32 14, i32 1
  store ptr %231, ptr %232, align 4
  %233 = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 1, i32 50, i32 15
  store ptr @uas_scan_work, ptr %233, align 4
  %234 = call fastcc i32 @uas_configure_endpoints(ptr noundef %206)
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %289

236:                                              ; preds = %196
  %237 = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 1, i32 13, i32 0, i32 1
  %238 = load i32, ptr %237, align 4
  %239 = add i32 %238, -2
  %240 = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 0, i32 26
  store i32 %239, ptr %240, align 4
  %241 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  store ptr %194, ptr %241, align 8
  %242 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7
  %243 = call i32 @scsi_add_host_with_dma(ptr noundef nonnull %194, ptr noundef %242, ptr noundef %242) #11
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %236
  %246 = load ptr, ptr @system_wq, align 4
  %247 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %246, ptr noundef %230) #11
  br label %296

248:                                              ; preds = %236
  %249 = load ptr, ptr %207, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  %250 = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 1, i32 13, i32 0, i32 2
  %251 = load i32, ptr %250, align 4
  %252 = and i32 %251, 128
  %253 = icmp eq i32 %252, 0
  %254 = getelementptr inbounds %struct.usb_device, ptr %249, i32 0, i32 21
  %255 = getelementptr inbounds %struct.usb_device, ptr %249, i32 0, i32 22
  %256 = select i1 %253, ptr %255, ptr %254
  %257 = lshr i32 %251, 15
  %258 = and i32 %257, 15
  %259 = getelementptr ptr, ptr %256, i32 %258
  %260 = load ptr, ptr %259, align 4
  store ptr %260, ptr %3, align 4
  %261 = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 1, i32 13, i32 0, i32 2, i32 1
  %262 = load i32, ptr %261, align 4
  %263 = and i32 %262, 128
  %264 = icmp eq i32 %263, 0
  %265 = select i1 %264, ptr %255, ptr %254
  %266 = lshr i32 %262, 15
  %267 = and i32 %266, 15
  %268 = getelementptr ptr, ptr %265, i32 %267
  %269 = load ptr, ptr %268, align 4
  %270 = getelementptr inbounds [3 x ptr], ptr %3, i32 0, i32 1
  store ptr %269, ptr %270, align 4
  %271 = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 1, i32 13, i32 0, i32 2, i32 2
  %272 = load i32, ptr %271, align 4
  %273 = and i32 %272, 128
  %274 = icmp eq i32 %273, 0
  %275 = select i1 %274, ptr %255, ptr %254
  %276 = lshr i32 %272, 15
  %277 = and i32 %276, 15
  %278 = getelementptr ptr, ptr %275, i32 %277
  %279 = load ptr, ptr %278, align 4
  %280 = getelementptr inbounds [3 x ptr], ptr %3, i32 0, i32 2
  store ptr %279, ptr %280, align 4
  %281 = load ptr, ptr %206, align 4
  %282 = call i32 @usb_free_streams(ptr noundef %281, ptr noundef nonnull %3, i32 noundef 3, i32 noundef 3072) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  store ptr null, ptr %241, align 8
  br label %289

283:                                              ; preds = %193
  %284 = load ptr, ptr %0, align 8
  %285 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %284, i32 0, i32 2
  %286 = load i8, ptr %285, align 2
  %287 = zext i8 %286 to i32
  %288 = call i32 @usb_set_interface(ptr noundef %8, i32 noundef %287, i32 noundef 0) #11
  br label %296

289:                                              ; preds = %248, %196
  %290 = phi i32 [ %243, %248 ], [ %234, %196 ]
  %291 = load ptr, ptr %0, align 8
  %292 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %291, i32 0, i32 2
  %293 = load i8, ptr %292, align 2
  %294 = zext i8 %293 to i32
  %295 = call i32 @usb_set_interface(ptr noundef %8, i32 noundef %294, i32 noundef 0) #11
  call void @scsi_host_put(ptr noundef nonnull %194) #11
  br label %296

296:                                              ; preds = %289, %283, %245, %184, %182, %179, %160, %159
  %297 = phi i32 [ 0, %245 ], [ -19, %184 ], [ %290, %289 ], [ -12, %283 ], [ -19, %159 ], [ -19, %182 ], [ -19, %160 ], [ -19, %179 ]
  ret i32 %297
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uas_disconnect(ptr nocapture noundef readonly %0) #3 {
  %2 = alloca [3 x ptr], align 4
  %3 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 53
  %6 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 1, i32 50, i32 11, i32 26
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #11
  %8 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 1, i32 13, i32 0, i32 1, i32 1
  store i32 1, ptr %8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #11
  %9 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 1, i32 50, i32 11, i32 27
  %10 = tail call zeroext i1 @cancel_work_sync(ptr noundef %9) #11
  %11 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 1, i32 1
  tail call void @usb_kill_anchored_urbs(ptr noundef %11) #11
  %12 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 1, i32 5, i32 2
  tail call void @usb_kill_anchored_urbs(ptr noundef %12) #11
  %13 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 1, i32 9
  tail call void @usb_kill_anchored_urbs(ptr noundef %13) #11
  tail call fastcc void @uas_zap_pending(ptr noundef %5, i32 noundef 1)
  %14 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 1, i32 50, i32 13
  %15 = tail call zeroext i1 @cancel_work_sync(ptr noundef %14) #11
  tail call void @scsi_remove_host(ptr noundef %4) #11
  %16 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 1, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #11
  %18 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 1, i32 13, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 128
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 21
  %23 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 22
  %24 = select i1 %21, ptr %23, ptr %22
  %25 = lshr i32 %19, 15
  %26 = and i32 %25, 15
  %27 = getelementptr ptr, ptr %24, i32 %26
  %28 = load ptr, ptr %27, align 4
  store ptr %28, ptr %2, align 4
  %29 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 1, i32 13, i32 0, i32 2, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 128
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, ptr %23, ptr %22
  %34 = lshr i32 %30, 15
  %35 = and i32 %34, 15
  %36 = getelementptr ptr, ptr %33, i32 %35
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds [3 x ptr], ptr %2, i32 0, i32 1
  store ptr %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 1, i32 13, i32 0, i32 2, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 128
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, ptr %23, ptr %22
  %44 = lshr i32 %40, 15
  %45 = and i32 %44, 15
  %46 = getelementptr ptr, ptr %43, i32 %45
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds [3 x ptr], ptr %2, i32 0, i32 2
  store ptr %47, ptr %48, align 4
  %49 = load ptr, ptr %5, align 4
  %50 = call i32 @usb_free_streams(ptr noundef %49, ptr noundef nonnull %2, i32 noundef 3, i32 noundef 3072) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #11
  call void @scsi_host_put(ptr noundef %4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uas_suspend(ptr nocapture noundef readonly %0, [1 x i32] %1) #3 {
  %3 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 53
  %6 = tail call fastcc i32 @uas_wait_for_pending_cmnds(ptr noundef %5)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.36, ptr noundef %9, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.uas_suspend) #12
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ -62, %8 ], [ 0, %2 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @uas_resume(ptr nocapture noundef readnone %0) #4 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uas_reset_resume(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %5 = tail call fastcc i32 @uas_configure_endpoints(ptr noundef %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.36, ptr noundef %8, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.uas_reset_resume, i32 noundef %5) #12
  br label %14

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #11
  tail call void @scsi_report_bus_reset(ptr noundef %3, i32 noundef 0) #11
  %13 = load ptr, ptr %10, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %12) #11
  br label %14

14:                                               ; preds = %9, %7
  %15 = phi i32 [ -5, %7 ], [ 0, %9 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uas_pre_reset(ptr nocapture noundef readonly %0) #3 {
  %2 = alloca [3 x ptr], align 4
  %3 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 53
  %6 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 1, i32 13, i32 1
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 2
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %55

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #11
  tail call void @scsi_block_requests(ptr noundef %4) #11
  %14 = load ptr, ptr %11, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %13) #11
  %15 = tail call fastcc i32 @uas_wait_for_pending_cmnds(ptr noundef %5)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.36, ptr noundef %18, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.uas_pre_reset) #12
  tail call void @scsi_unblock_requests(ptr noundef %4) #11
  br label %55

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 1, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #11
  %22 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 1, i32 13, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 128
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds %struct.usb_device, ptr %21, i32 0, i32 21
  %27 = getelementptr inbounds %struct.usb_device, ptr %21, i32 0, i32 22
  %28 = select i1 %25, ptr %27, ptr %26
  %29 = lshr i32 %23, 15
  %30 = and i32 %29, 15
  %31 = getelementptr ptr, ptr %28, i32 %30
  %32 = load ptr, ptr %31, align 4
  store ptr %32, ptr %2, align 4
  %33 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 1, i32 13, i32 0, i32 2, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 128
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, ptr %27, ptr %26
  %38 = lshr i32 %34, 15
  %39 = and i32 %38, 15
  %40 = getelementptr ptr, ptr %37, i32 %39
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds [3 x ptr], ptr %2, i32 0, i32 1
  store ptr %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 1, i32 13, i32 0, i32 2, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 128
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, ptr %27, ptr %26
  %48 = lshr i32 %44, 15
  %49 = and i32 %48, 15
  %50 = getelementptr ptr, ptr %47, i32 %49
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds [3 x ptr], ptr %2, i32 0, i32 2
  store ptr %51, ptr %52, align 4
  %53 = load ptr, ptr %5, align 4
  %54 = call i32 @usb_free_streams(ptr noundef %53, ptr noundef nonnull %2, i32 noundef 3, i32 noundef 3072) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #11
  br label %55

55:                                               ; preds = %19, %17, %1
  %56 = phi i32 [ 1, %17 ], [ 0, %19 ], [ 0, %1 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uas_post_reset(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 1
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %10 = tail call fastcc i32 @uas_configure_endpoints(ptr noundef %9)
  %11 = icmp ne i32 %10, 0
  switch i32 %10, label %12 [
    i32 -19, label %14
    i32 0, label %14
  ]

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.36, ptr noundef %13, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.uas_post_reset, i32 noundef %10) #12
  br label %14

14:                                               ; preds = %12, %8, %8
  %15 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #11
  tail call void @scsi_report_bus_reset(ptr noundef %3, i32 noundef 0) #11
  %18 = load ptr, ptr %15, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %17) #11
  tail call void @scsi_unblock_requests(ptr noundef %3) #11
  %19 = zext i1 %11 to i32
  br label %20

20:                                               ; preds = %14, %1
  %21 = phi i32 [ %19, %14 ], [ 0, %1 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uas_shutdown(ptr nocapture noundef readonly %0) #3 {
  %2 = alloca [3 x ptr], align 4
  %3 = load i32, ptr @system_state, align 4
  %4 = icmp eq i32 %3, 6
  br i1 %4, label %5, label %57

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 64
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %0, i32 -32
  %9 = getelementptr i8, ptr %0, i32 36
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 -128
  %12 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 53
  %13 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 13, i32 1
  %14 = load i8, ptr %13, align 4
  %15 = or i8 %14, 2
  store i8 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #11
  %18 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 13, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 128
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 21
  %23 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 22
  %24 = select i1 %21, ptr %23, ptr %22
  %25 = lshr i32 %19, 15
  %26 = and i32 %25, 15
  %27 = getelementptr ptr, ptr %24, i32 %26
  %28 = load ptr, ptr %27, align 4
  store ptr %28, ptr %2, align 4
  %29 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 13, i32 0, i32 2, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 128
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, ptr %23, ptr %22
  %34 = lshr i32 %30, 15
  %35 = and i32 %34, 15
  %36 = getelementptr ptr, ptr %33, i32 %35
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds [3 x ptr], ptr %2, i32 0, i32 1
  store ptr %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 13, i32 0, i32 2, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 128
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, ptr %23, ptr %22
  %44 = lshr i32 %40, 15
  %45 = and i32 %44, 15
  %46 = getelementptr ptr, ptr %43, i32 %45
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds [3 x ptr], ptr %2, i32 0, i32 2
  store ptr %47, ptr %48, align 4
  %49 = load ptr, ptr %12, align 4
  %50 = call i32 @usb_free_streams(ptr noundef %49, ptr noundef nonnull %2, i32 noundef 3, i32 noundef 3072) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #11
  %51 = load ptr, ptr %8, align 8
  %52 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %51, i32 0, i32 2
  %53 = load i8, ptr %52, align 2
  %54 = zext i8 %53 to i32
  %55 = call i32 @usb_set_interface(ptr noundef %11, i32 noundef %54, i32 noundef 0) #11
  %56 = call i32 @usb_reset_device(ptr noundef %11) #11
  br label %57

57:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uas_do_work(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #11
  %4 = getelementptr i8, ptr %0, i32 -1052
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %40

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -1056
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %0, i32 -1028
  br label %13

13:                                               ; preds = %36, %11
  %14 = phi i32 [ 0, %11 ], [ %37, %36 ]
  %15 = getelementptr [256 x ptr], ptr %12, i32 0, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %36, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.scsi_cmnd, ptr %16, i32 0, i32 22
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 4096
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.scsi_cmnd, ptr %16, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.scsi_device, ptr %25, i32 0, i32 21
  %27 = load ptr, ptr %26, align 8
  %28 = tail call fastcc i32 @uas_submit_urbs(ptr noundef nonnull %16, ptr noundef %27)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, ptr %19, align 4
  %32 = and i32 %31, -4097
  store i32 %32, ptr %19, align 4
  br label %36

33:                                               ; preds = %23
  %34 = load ptr, ptr @workqueue, align 4
  %35 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %34, ptr noundef %0) #11
  br label %36

36:                                               ; preds = %33, %30, %18, %13
  %37 = add nuw nsw i32 %14, 1
  %38 = load i32, ptr %8, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %13, label %40

40:                                               ; preds = %36, %7, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uas_scan_work(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -1180
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7, i32 8
  %5 = load ptr, ptr %4, align 8
  tail call void @scsi_scan_host(ptr noundef %5) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uas_configure_endpoints(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = alloca [4 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false)
  %3 = getelementptr inbounds %struct.uas_dev_info, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_host_interface, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %7, i32 0, i32 4
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = icmp eq i8 %11, 0
  br i1 %13, label %55, label %14

14:                                               ; preds = %44, %1
  %15 = phi i32 [ %45, %44 ], [ 0, %1 ]
  %16 = getelementptr %struct.usb_host_endpoint, ptr %9, i32 %15
  %17 = getelementptr %struct.usb_host_endpoint, ptr %9, i32 %15, i32 8
  %18 = load i32, ptr %17, align 4
  %19 = icmp sgt i32 %18, 2
  br i1 %19, label %20, label %44

20:                                               ; preds = %14
  %21 = getelementptr %struct.usb_host_endpoint, ptr %9, i32 %15, i32 7
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %38, %20
  %24 = phi i32 [ %41, %38 ], [ %18, %20 ]
  %25 = phi ptr [ %42, %38 ], [ %22, %20 ]
  %26 = getelementptr i8, ptr %25, i32 1
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 36
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = getelementptr i8, ptr %25, i32 2
  %31 = load i8, ptr %30, align 1
  %32 = add i8 %31, -1
  %33 = icmp ult i8 %32, 4
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = zext i8 %31 to i32
  %36 = add nsw i32 %35, -1
  %37 = getelementptr ptr, ptr %2, i32 %36
  store ptr %16, ptr %37, align 4
  br label %44

38:                                               ; preds = %23
  %39 = load i8, ptr %25, align 1
  %40 = zext i8 %39 to i32
  %41 = sub nsw i32 %24, %40
  %42 = getelementptr i8, ptr %25, i32 %40
  %43 = icmp sgt i32 %41, 2
  br i1 %43, label %23, label %44

44:                                               ; preds = %38, %34, %29, %14
  %45 = add nuw nsw i32 %15, 1
  %46 = icmp eq i32 %45, %12
  br i1 %46, label %47, label %14

47:                                               ; preds = %44
  %48 = load ptr, ptr %2, align 4
  %49 = getelementptr inbounds ptr, ptr %2, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds ptr, ptr %2, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds ptr, ptr %2, i32 3
  %54 = load ptr, ptr %53, align 4
  br label %55

55:                                               ; preds = %47, %1
  %56 = phi ptr [ %54, %47 ], [ null, %1 ]
  %57 = phi ptr [ %52, %47 ], [ null, %1 ]
  %58 = phi ptr [ %50, %47 ], [ null, %1 ]
  %59 = phi ptr [ %48, %47 ], [ null, %1 ]
  %60 = icmp eq ptr %59, null
  %61 = getelementptr inbounds ptr, ptr %2, i32 1
  %62 = icmp eq ptr %58, null
  %63 = select i1 %60, i1 true, i1 %62
  %64 = icmp eq ptr %57, null
  %65 = select i1 %63, i1 true, i1 %64
  %66 = icmp eq ptr %56, null
  %67 = select i1 %65, i1 true, i1 %66
  br i1 %67, label %125, label %68

68:                                               ; preds = %55
  %69 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %59, i32 0, i32 2
  %70 = load i8, ptr %69, align 1
  %71 = and i8 %70, 15
  %72 = zext i8 %71 to i32
  %73 = load i32, ptr %4, align 8
  %74 = shl i32 %73, 8
  %75 = shl nuw nsw i32 %72, 15
  %76 = or i32 %74, %75
  %77 = or i32 %76, -1073741824
  %78 = getelementptr inbounds %struct.uas_dev_info, ptr %0, i32 0, i32 8
  store i32 %77, ptr %78, align 4
  %79 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %58, i32 0, i32 2
  %80 = load i8, ptr %79, align 1
  %81 = and i8 %80, 15
  %82 = zext i8 %81 to i32
  %83 = load i32, ptr %4, align 8
  %84 = shl i32 %83, 8
  %85 = shl nuw nsw i32 %82, 15
  %86 = or i32 %84, %85
  %87 = or i32 %86, -1073741696
  %88 = getelementptr inbounds %struct.uas_dev_info, ptr %0, i32 0, i32 9
  store i32 %87, ptr %88, align 4
  %89 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %57, i32 0, i32 2
  %90 = load i8, ptr %89, align 1
  %91 = and i8 %90, 15
  %92 = zext i8 %91 to i32
  %93 = load i32, ptr %4, align 8
  %94 = shl i32 %93, 8
  %95 = shl nuw nsw i32 %92, 15
  %96 = or i32 %94, %95
  %97 = or i32 %96, -1073741696
  %98 = getelementptr inbounds %struct.uas_dev_info, ptr %0, i32 0, i32 10
  store i32 %97, ptr %98, align 4
  %99 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %56, i32 0, i32 2
  %100 = load i8, ptr %99, align 1
  %101 = and i8 %100, 15
  %102 = zext i8 %101 to i32
  %103 = load i32, ptr %4, align 8
  %104 = shl i32 %103, 8
  %105 = shl nuw nsw i32 %102, 15
  %106 = or i32 %104, %105
  %107 = or i32 %106, -1073741824
  %108 = getelementptr inbounds %struct.uas_dev_info, ptr %0, i32 0, i32 11
  store i32 %107, ptr %108, align 4
  %109 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 4
  %110 = load i32, ptr %109, align 4
  %111 = icmp ult i32 %110, 5
  br i1 %111, label %112, label %117

112:                                              ; preds = %68
  %113 = getelementptr inbounds %struct.uas_dev_info, ptr %0, i32 0, i32 6
  store i32 32, ptr %113, align 4
  %114 = getelementptr inbounds %struct.uas_dev_info, ptr %0, i32 0, i32 12
  %115 = load i8, ptr %114, align 4
  %116 = and i8 %115, -2
  store i8 %116, ptr %114, align 4
  br label %125

117:                                              ; preds = %68
  %118 = call i32 @usb_alloc_streams(ptr noundef %5, ptr noundef %61, i32 noundef 3, i32 noundef 256, i32 noundef 3072) #11
  %119 = getelementptr inbounds %struct.uas_dev_info, ptr %0, i32 0, i32 6
  store i32 %118, ptr %119, align 4
  %120 = icmp slt i32 %118, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.uas_dev_info, ptr %0, i32 0, i32 12
  %123 = load i8, ptr %122, align 4
  %124 = or i8 %123, 1
  store i8 %124, ptr %122, align 4
  br label %125

125:                                              ; preds = %121, %117, %112, %55
  %126 = phi i32 [ %118, %117 ], [ 0, %121 ], [ 0, %112 ], [ -19, %55 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  ret i32 %126
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_adjust_quirks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uas_queuecommand(ptr nocapture noundef readonly %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #11
  %6 = getelementptr %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 21
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22
  %11 = load ptr, ptr %7, align 8
  %12 = getelementptr inbounds %struct.Scsi_Host, ptr %11, i32 0, i32 36
  %13 = load i16, ptr %12, align 8
  %14 = and i16 %13, 4
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %94

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.uas_dev_info, ptr %9, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 33554432
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 16
  %23 = load ptr, ptr %22, align 4
  %24 = load i8, ptr %23, align 1
  switch i8 %24, label %29 [
    i8 -95, label %25
    i8 -123, label %25
  ]

25:                                               ; preds = %21, %21
  %26 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 21
  %27 = load ptr, ptr %26, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(18) %27, ptr noundef nonnull align 1 dereferenceable(18) @usb_stor_sense_invalidCDB, i32 18, i1 false) #11
  %28 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 24
  store i32 2, ptr %28, align 4
  tail call void @scsi_done(ptr noundef %1) #11
  br label %94

29:                                               ; preds = %21, %16
  %30 = getelementptr inbounds %struct.uas_dev_info, ptr %9, i32 0, i32 14
  %31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %30) #11
  %32 = getelementptr inbounds %struct.uas_dev_info, ptr %9, i32 0, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.uas_dev_info, ptr %9, i32 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %44, label %52

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 24
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, -16711681
  %43 = or i32 %42, 458752
  store i32 %43, ptr %40, align 4
  tail call void @scsi_done(ptr noundef %1) #11
  br label %93

44:                                               ; preds = %49, %35
  %45 = phi i32 [ %50, %49 ], [ 0, %35 ]
  %46 = getelementptr %struct.uas_dev_info, ptr %9, i32 0, i32 13, i32 %45
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = add nuw nsw i32 %45, 1
  %51 = icmp eq i32 %50, %37
  br i1 %51, label %55, label %44

52:                                               ; preds = %44, %35
  %53 = phi i32 [ 0, %35 ], [ %45, %44 ]
  %54 = icmp eq i32 %53, %37
  br i1 %54, label %55, label %56

55:                                               ; preds = %52, %49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %30, i32 noundef %31) #11
  br label %94

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %57, i8 0, i32 12, i1 false) #11
  %58 = add nuw i32 %53, 1
  %59 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 1
  store i32 %58, ptr %59, align 4
  store i32 194, ptr %10, align 4
  %60 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 15
  %61 = load i32, ptr %60, align 4
  switch i32 %61, label %67 [
    i32 2, label %65
    i32 0, label %62
    i32 1, label %63
  ]

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62, %56
  %64 = phi i32 [ 242, %56 ], [ 254, %62 ]
  br label %65

65:                                               ; preds = %63, %56
  %66 = phi i32 [ %64, %63 ], [ 206, %56 ]
  store i32 %66, ptr %10, align 4
  br label %67

67:                                               ; preds = %65, %56
  %68 = phi i32 [ 194, %56 ], [ %66, %65 ]
  %69 = getelementptr inbounds %struct.uas_dev_info, ptr %9, i32 0, i32 12
  %70 = load i8, ptr %69, align 4
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = and i32 %68, -41
  store i32 %74, ptr %10, align 4
  br label %75

75:                                               ; preds = %73, %67
  %76 = tail call fastcc i32 @uas_submit_urbs(ptr noundef %1, ptr noundef %9) #11
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %91, label %78

78:                                               ; preds = %75
  %79 = load i32, ptr %10, align 4
  %80 = and i32 %79, 2
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %30, i32 noundef %31) #11
  br label %94

83:                                               ; preds = %78
  %84 = load ptr, ptr %6, align 4
  %85 = getelementptr inbounds %struct.scsi_device, ptr %84, i32 0, i32 21
  %86 = load ptr, ptr %85, align 8
  %87 = or i32 %79, 4096
  store i32 %87, ptr %10, align 4
  %88 = load ptr, ptr @workqueue, align 4
  %89 = getelementptr inbounds %struct.uas_dev_info, ptr %86, i32 0, i32 15
  %90 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %88, ptr noundef %89) #11
  br label %91

91:                                               ; preds = %83, %75
  %92 = getelementptr %struct.uas_dev_info, ptr %9, i32 0, i32 13, i32 %53
  store ptr %1, ptr %92, align 4
  br label %93

93:                                               ; preds = %91, %39
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %30, i32 noundef %31) #11
  br label %94

94:                                               ; preds = %93, %82, %55, %25, %2
  %95 = phi i32 [ 0, %25 ], [ 0, %93 ], [ 4182, %55 ], [ 4182, %82 ], [ 4182, %2 ]
  %96 = load ptr, ptr %3, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %96, i32 noundef %5) #11
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uas_eh_abort_handler(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 22
  %3 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.uas_dev_info, ptr %6, i32 0, i32 14
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #11
  %9 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 22, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr %2, align 4
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, ptr @.str.23, ptr @.str.22
  %15 = and i32 %11, 4
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, ptr @.str.23, ptr @.str.24
  %18 = and i32 %11, 8
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, ptr @.str.23, ptr @.str.25
  %21 = and i32 %11, 16
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, ptr @.str.23, ptr @.str.26
  %24 = and i32 %11, 32
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, ptr @.str.23, ptr @.str.27
  %27 = and i32 %11, 64
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, ptr @.str.23, ptr @.str.28
  %30 = and i32 %11, 128
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, ptr @.str.23, ptr @.str.29
  %33 = and i32 %11, 256
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, ptr @.str.23, ptr @.str.30
  %36 = and i32 %11, 512
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, ptr @.str.23, ptr @.str.31
  %39 = and i32 %11, 1024
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, ptr @.str.23, ptr @.str.32
  %42 = and i32 %11, 2048
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, ptr @.str.23, ptr @.str.33
  %45 = and i32 %11, 4096
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, ptr @.str.23, ptr @.str.34
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.16, ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.uas_eh_abort_handler, i32 noundef 0, i32 noundef %10, ptr noundef nonnull %14, ptr noundef nonnull %17, ptr noundef nonnull %20, ptr noundef nonnull %23, ptr noundef nonnull %26, ptr noundef nonnull %29, ptr noundef nonnull %32, ptr noundef nonnull %35, ptr noundef nonnull %38, ptr noundef nonnull %41, ptr noundef nonnull %44, ptr noundef nonnull %47) #11
  tail call void @scsi_print_command(ptr noundef %0) #11
  %48 = load i32, ptr %2, align 4
  %49 = or i32 %48, 2048
  store i32 %49, ptr %2, align 4
  %50 = load i32, ptr %9, align 4
  %51 = add i32 %50, -1
  %52 = getelementptr %struct.uas_dev_info, ptr %6, i32 0, i32 13, i32 %51
  store ptr null, ptr %52, align 4
  %53 = load i32, ptr %2, align 4
  %54 = and i32 %53, 512
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %1
  %57 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 22, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = tail call ptr @usb_get_urb(ptr noundef %58) #11
  %60 = load i32, ptr %2, align 4
  br label %61

61:                                               ; preds = %56, %1
  %62 = phi i32 [ %60, %56 ], [ %53, %1 ]
  %63 = phi ptr [ %59, %56 ], [ null, %1 ]
  %64 = and i32 %62, 1024
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 22, i32 4
  %68 = load ptr, ptr %67, align 4
  %69 = tail call ptr @usb_get_urb(ptr noundef %68) #11
  br label %70

70:                                               ; preds = %66, %61
  %71 = phi ptr [ %69, %66 ], [ null, %61 ]
  %72 = icmp eq ptr %0, null
  br i1 %72, label %96, label %73

73:                                               ; preds = %70
  %74 = load i32, ptr %2, align 4
  %75 = and i32 %74, 128
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 22, i32 2
  %79 = load ptr, ptr %78, align 4
  tail call void @usb_free_urb(ptr noundef %79) #11
  %80 = load i32, ptr %2, align 4
  br label %81

81:                                               ; preds = %77, %73
  %82 = phi i32 [ %80, %77 ], [ %74, %73 ]
  %83 = and i32 %82, 512
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 22, i32 3
  %87 = load ptr, ptr %86, align 4
  tail call void @usb_free_urb(ptr noundef %87) #11
  %88 = load i32, ptr %2, align 4
  br label %89

89:                                               ; preds = %85, %81
  %90 = phi i32 [ %88, %85 ], [ %82, %81 ]
  %91 = and i32 %90, 1024
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 22, i32 4
  %95 = load ptr, ptr %94, align 4
  tail call void @usb_free_urb(ptr noundef %95) #11
  br label %96

96:                                               ; preds = %93, %89, %70
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #11
  %97 = icmp eq ptr %63, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %96
  tail call void @usb_kill_urb(ptr noundef nonnull %63) #11
  tail call void @usb_free_urb(ptr noundef nonnull %63) #11
  br label %99

99:                                               ; preds = %98, %96
  %100 = icmp eq ptr %71, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %99
  tail call void @usb_kill_urb(ptr noundef nonnull %71) #11
  tail call void @usb_free_urb(ptr noundef nonnull %71) #11
  br label %102

102:                                              ; preds = %101, %99
  ret i32 8195
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uas_eh_device_reset_handler(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 21
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.uas_dev_info, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = tail call i32 @usb_lock_device_for_reset(ptr noundef %7, ptr noundef %8) #11
  %10 = icmp eq i32 %9, 0
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct.Scsi_Host, ptr %11, i32 0, i32 49
  br i1 %10, label %14, label %13

13:                                               ; preds = %1
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.36, ptr noundef %12, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.uas_eh_device_reset_handler, i32 noundef %9) #12
  br label %29

14:                                               ; preds = %1
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %12, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.uas_eh_device_reset_handler) #12
  %15 = getelementptr inbounds %struct.uas_dev_info, ptr %5, i32 0, i32 14
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #11
  %17 = getelementptr inbounds %struct.uas_dev_info, ptr %5, i32 0, i32 7
  store i32 1, ptr %17, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #11
  %18 = getelementptr inbounds %struct.uas_dev_info, ptr %5, i32 0, i32 2
  tail call void @usb_kill_anchored_urbs(ptr noundef %18) #11
  %19 = getelementptr inbounds %struct.uas_dev_info, ptr %5, i32 0, i32 3
  tail call void @usb_kill_anchored_urbs(ptr noundef %19) #11
  %20 = getelementptr inbounds %struct.uas_dev_info, ptr %5, i32 0, i32 4
  tail call void @usb_kill_anchored_urbs(ptr noundef %20) #11
  tail call fastcc void @uas_zap_pending(ptr noundef %5, i32 noundef 8)
  %21 = tail call i32 @usb_reset_device(ptr noundef %7) #11
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #11
  store i32 0, ptr %17, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %22) #11
  %23 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15, i32 9
  tail call void @mutex_unlock(ptr noundef %23) #11
  %24 = icmp eq i32 %21, 0
  %25 = load ptr, ptr %3, align 8
  %26 = getelementptr inbounds %struct.Scsi_Host, ptr %25, i32 0, i32 49
  br i1 %24, label %28, label %27

27:                                               ; preds = %14
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %26, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.uas_eh_device_reset_handler, i32 noundef %21) #12
  br label %29

28:                                               ; preds = %14
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %26, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.uas_eh_device_reset_handler) #12
  br label %29

29:                                               ; preds = %28, %27, %13
  %30 = phi i32 [ 8195, %13 ], [ 8195, %27 ], [ 8194, %28 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uas_slave_alloc(ptr nocapture noundef %0) #3 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 0, i32 53
  %4 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 21
  store ptr %3, ptr %4, align 8
  %5 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void @blk_queue_update_dma_alignment(ptr noundef %6, i32 noundef 511) #11
  %7 = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 1, i32 13, i32 0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1024
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = and i32 %8, 134217728
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11, %1
  %15 = phi i32 [ 64, %1 ], [ 240, %11 ]
  %16 = load ptr, ptr %5, align 4
  tail call void @blk_queue_max_hw_sectors(ptr noundef %16, i32 noundef %15) #11
  br label %17

17:                                               ; preds = %14, %11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uas_slave_configure(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 21
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uas_dev_info, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 67108864
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 41
  %10 = load i64, ptr %9, align 4
  %11 = or i64 %10, 262144
  store i64 %11, ptr %9, align 4
  %12 = load i32, ptr %4, align 4
  br label %13

13:                                               ; preds = %8, %1
  %14 = phi i32 [ %12, %8 ], [ %5, %1 ]
  %15 = and i32 %14, 16777216
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 41
  %19 = load i64, ptr %18, align 4
  %20 = or i64 %19, 8796093022208
  store i64 %20, ptr %18, align 4
  %21 = load i32, ptr %4, align 4
  br label %22

22:                                               ; preds = %17, %13
  %23 = phi i32 [ %21, %17 ], [ %14, %13 ]
  %24 = and i32 %23, 536870912
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 41
  %28 = load i64, ptr %27, align 4
  %29 = or i64 %28, 2199029547008
  store i64 %29, ptr %27, align 4
  %30 = load i32, ptr %4, align 4
  br label %31

31:                                               ; preds = %26, %22
  %32 = phi i32 [ %30, %26 ], [ %23, %22 ]
  %33 = and i32 %32, 524288
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 41
  %37 = load i64, ptr %36, align 4
  %38 = or i64 %37, 137438953472
  store i64 %38, ptr %36, align 4
  %39 = load i32, ptr %4, align 4
  br label %40

40:                                               ; preds = %35, %31
  %41 = phi i32 [ %39, %35 ], [ %32, %31 ]
  %42 = and i32 %41, 1073741824
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 41
  %46 = load i64, ptr %45, align 4
  %47 = or i64 %46, 524288
  store i64 %47, ptr %45, align 4
  %48 = load i32, ptr %4, align 4
  br label %49

49:                                               ; preds = %44, %40
  %50 = phi i32 [ %48, %44 ], [ %41, %40 ]
  %51 = and i32 %50, 16
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 41
  %55 = load i64, ptr %54, align 4
  %56 = or i64 %55, 4294967296
  store i64 %56, ptr %54, align 4
  %57 = load i32, ptr %4, align 4
  br label %58

58:                                               ; preds = %53, %49
  %59 = phi i32 [ %57, %53 ], [ %50, %49 ]
  %60 = and i32 %59, 4096
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 41
  %64 = load i64, ptr %63, align 4
  %65 = or i64 %64, 8589934592
  store i64 %65, ptr %63, align 4
  %66 = load i32, ptr %4, align 4
  br label %67

67:                                               ; preds = %62, %58
  %68 = phi i32 [ %66, %62 ], [ %59, %58 ]
  %69 = and i32 %68, 512
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 41
  %73 = load i64, ptr %72, align 4
  %74 = or i64 %73, 4194304
  store i64 %74, ptr %72, align 4
  br label %75

75:                                               ; preds = %71, %67
  %76 = getelementptr inbounds %struct.uas_dev_info, ptr %3, i32 0, i32 6
  %77 = load i32, ptr %76, align 4
  %78 = add i32 %77, -2
  %79 = tail call i32 @scsi_change_queue_depth(ptr noundef %0, i32 noundef %78) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uas_target_alloc(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.scsi_target, ptr %0, i32 0, i32 3, i32 1
  %3 = load ptr, ptr %2, align 4
  br label %4

4:                                                ; preds = %8, %1
  %5 = phi ptr [ %3, %1 ], [ %10, %8 ]
  %6 = tail call i32 @scsi_is_host_device(ptr noundef %5) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %4

12:                                               ; preds = %4
  %13 = getelementptr i8, ptr %5, i32 -360
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi ptr [ %13, %12 ], [ null, %8 ]
  %16 = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 1, i32 13, i32 0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 268435456
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.scsi_target, ptr %0, i32 0, i32 7
  %22 = load i8, ptr %21, align 4
  %23 = or i8 %22, 8
  store i8 %23, ptr %21, align 4
  br label %24

24:                                               ; preds = %20, %14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uas_submit_urbs(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 22
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %51, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.scsi_device, ptr %9, i32 0, i32 21
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.uas_dev_info, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %253, label %16

16:                                               ; preds = %7
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 2848, i32 noundef 112) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %47, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.uas_dev_info, ptr %11, i32 0, i32 9
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %8, align 4
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 8
  store ptr %13, ptr %25, align 4
  %26 = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 10
  store i32 %22, ptr %26, align 4
  %27 = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 14
  store ptr %18, ptr %27, align 4
  %28 = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 19
  store i32 112, ptr %28, align 4
  %29 = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 28
  store ptr @uas_stat_cmplt, ptr %29, align 4
  %30 = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 27
  store ptr %24, ptr %30, align 4
  %31 = getelementptr inbounds %struct.uas_dev_info, ptr %11, i32 0, i32 12
  %32 = load i8, ptr %31, align 4
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %20
  %36 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 22, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 11
  store i32 %37, ptr %38, align 4
  br label %39

39:                                               ; preds = %35, %20
  %40 = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 13
  %41 = load i32, ptr %40, align 4
  %42 = or i32 %41, 256
  store i32 %42, ptr %40, align 4
  %43 = getelementptr inbounds %struct.uas_dev_info, ptr %11, i32 0, i32 3
  tail call void @usb_anchor_urb(ptr noundef nonnull %14, ptr noundef %43) #11
  %44 = tail call i32 @usb_submit_urb(ptr noundef nonnull %14, i32 noundef 2592) #11
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  tail call void @usb_unanchor_urb(ptr noundef nonnull %14) #11
  tail call fastcc void @uas_log_cmd_state(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %44) #11
  br label %47

47:                                               ; preds = %46, %16
  tail call void @usb_free_urb(ptr noundef nonnull %14) #11
  br label %253

48:                                               ; preds = %39
  %49 = load i32, ptr %3, align 4
  %50 = and i32 %49, -3
  store i32 %50, ptr %3, align 4
  br label %51

51:                                               ; preds = %48, %2
  %52 = phi i32 [ %50, %48 ], [ %4, %2 ]
  %53 = and i32 %52, 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %99, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.uas_dev_info, ptr %1, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #11
  %59 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17
  %60 = icmp eq ptr %58, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 22, i32 3
  store ptr null, ptr %62, align 4
  br label %253

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.uas_dev_info, ptr %1, i32 0, i32 10
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.urb, ptr %58, i32 0, i32 8
  store ptr %57, ptr %68, align 4
  %69 = getelementptr inbounds %struct.urb, ptr %58, i32 0, i32 10
  store i32 %65, ptr %69, align 4
  %70 = getelementptr inbounds %struct.urb, ptr %58, i32 0, i32 14
  store ptr null, ptr %70, align 4
  %71 = getelementptr inbounds %struct.urb, ptr %58, i32 0, i32 19
  store i32 %67, ptr %71, align 4
  %72 = getelementptr inbounds %struct.urb, ptr %58, i32 0, i32 28
  store ptr @uas_data_cmplt, ptr %72, align 4
  %73 = getelementptr inbounds %struct.urb, ptr %58, i32 0, i32 27
  store ptr %0, ptr %73, align 4
  %74 = getelementptr inbounds %struct.uas_dev_info, ptr %1, i32 0, i32 12
  %75 = load i8, ptr %74, align 4
  %76 = and i8 %75, 1
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %63
  %79 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 22, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds %struct.urb, ptr %58, i32 0, i32 11
  store i32 %80, ptr %81, align 4
  br label %82

82:                                               ; preds = %78, %63
  %83 = getelementptr inbounds %struct.usb_device, ptr %57, i32 0, i32 12
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.usb_bus, ptr %84, i32 0, i32 7
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17, i32 0, i32 1
  %90 = load i32, ptr %89, align 4
  br label %91

91:                                               ; preds = %88, %82
  %92 = phi i32 [ %90, %88 ], [ 0, %82 ]
  %93 = getelementptr inbounds %struct.urb, ptr %58, i32 0, i32 18
  store i32 %92, ptr %93, align 4
  %94 = load ptr, ptr %59, align 4
  %95 = getelementptr inbounds %struct.urb, ptr %58, i32 0, i32 16
  store ptr %94, ptr %95, align 4
  %96 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 22, i32 3
  store ptr %58, ptr %96, align 4
  %97 = load i32, ptr %3, align 4
  %98 = and i32 %97, -5
  store i32 %98, ptr %3, align 4
  br label %99

99:                                               ; preds = %91, %51
  %100 = phi i32 [ %98, %91 ], [ %52, %51 ]
  %101 = and i32 %100, 8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %116, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 22, i32 3
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.uas_dev_info, ptr %1, i32 0, i32 4
  tail call void @usb_anchor_urb(ptr noundef %105, ptr noundef %106) #11
  %107 = load ptr, ptr %104, align 4
  %108 = tail call i32 @usb_submit_urb(ptr noundef %107, i32 noundef 2592) #11
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %103
  %111 = load ptr, ptr %104, align 4
  tail call void @usb_unanchor_urb(ptr noundef %111) #11
  tail call fastcc void @uas_log_cmd_state(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %108)
  br label %253

112:                                              ; preds = %103
  %113 = load i32, ptr %3, align 4
  %114 = and i32 %113, -521
  %115 = or i32 %114, 512
  store i32 %115, ptr %3, align 4
  br label %116

116:                                              ; preds = %112, %99
  %117 = phi i32 [ %115, %112 ], [ %100, %99 ]
  %118 = and i32 %117, 16
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %164, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.uas_dev_info, ptr %1, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  %123 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #11
  %124 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17
  %125 = icmp eq ptr %123, null
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 22, i32 4
  store ptr null, ptr %127, align 4
  br label %253

128:                                              ; preds = %120
  %129 = getelementptr inbounds %struct.uas_dev_info, ptr %1, i32 0, i32 11
  %130 = load i32, ptr %129, align 4
  %131 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17, i32 1
  %132 = load i32, ptr %131, align 4
  %133 = getelementptr inbounds %struct.urb, ptr %123, i32 0, i32 8
  store ptr %122, ptr %133, align 4
  %134 = getelementptr inbounds %struct.urb, ptr %123, i32 0, i32 10
  store i32 %130, ptr %134, align 4
  %135 = getelementptr inbounds %struct.urb, ptr %123, i32 0, i32 14
  store ptr null, ptr %135, align 4
  %136 = getelementptr inbounds %struct.urb, ptr %123, i32 0, i32 19
  store i32 %132, ptr %136, align 4
  %137 = getelementptr inbounds %struct.urb, ptr %123, i32 0, i32 28
  store ptr @uas_data_cmplt, ptr %137, align 4
  %138 = getelementptr inbounds %struct.urb, ptr %123, i32 0, i32 27
  store ptr %0, ptr %138, align 4
  %139 = getelementptr inbounds %struct.uas_dev_info, ptr %1, i32 0, i32 12
  %140 = load i8, ptr %139, align 4
  %141 = and i8 %140, 1
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %128
  %144 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 22, i32 1
  %145 = load i32, ptr %144, align 4
  %146 = getelementptr inbounds %struct.urb, ptr %123, i32 0, i32 11
  store i32 %145, ptr %146, align 4
  br label %147

147:                                              ; preds = %143, %128
  %148 = getelementptr inbounds %struct.usb_device, ptr %122, i32 0, i32 12
  %149 = load ptr, ptr %148, align 8
  %150 = getelementptr inbounds %struct.usb_bus, ptr %149, i32 0, i32 7
  %151 = load i32, ptr %150, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17, i32 0, i32 1
  %155 = load i32, ptr %154, align 4
  br label %156

156:                                              ; preds = %153, %147
  %157 = phi i32 [ %155, %153 ], [ 0, %147 ]
  %158 = getelementptr inbounds %struct.urb, ptr %123, i32 0, i32 18
  store i32 %157, ptr %158, align 4
  %159 = load ptr, ptr %124, align 4
  %160 = getelementptr inbounds %struct.urb, ptr %123, i32 0, i32 16
  store ptr %159, ptr %160, align 4
  %161 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 22, i32 4
  store ptr %123, ptr %161, align 4
  %162 = load i32, ptr %3, align 4
  %163 = and i32 %162, -17
  store i32 %163, ptr %3, align 4
  br label %164

164:                                              ; preds = %156, %116
  %165 = phi i32 [ %163, %156 ], [ %117, %116 ]
  %166 = and i32 %165, 32
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %181, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 22, i32 4
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.uas_dev_info, ptr %1, i32 0, i32 4
  tail call void @usb_anchor_urb(ptr noundef %170, ptr noundef %171) #11
  %172 = load ptr, ptr %169, align 4
  %173 = tail call i32 @usb_submit_urb(ptr noundef %172, i32 noundef 2592) #11
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %168
  %176 = load ptr, ptr %169, align 4
  tail call void @usb_unanchor_urb(ptr noundef %176) #11
  tail call fastcc void @uas_log_cmd_state(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %173)
  br label %253

177:                                              ; preds = %168
  %178 = load i32, ptr %3, align 4
  %179 = and i32 %178, -1057
  %180 = or i32 %179, 1024
  store i32 %180, ptr %3, align 4
  br label %181

181:                                              ; preds = %177, %164
  %182 = phi i32 [ %180, %177 ], [ %165, %164 ]
  %183 = and i32 %182, 64
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %236, label %185

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.uas_dev_info, ptr %1, i32 0, i32 1
  %187 = load ptr, ptr %186, align 4
  %188 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 1
  %189 = load ptr, ptr %188, align 4
  %190 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #11
  %191 = icmp eq ptr %190, null
  br i1 %191, label %203, label %192

192:                                              ; preds = %185
  %193 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 14
  %194 = load i16, ptr %193, align 4
  %195 = zext i16 %194 to i32
  %196 = tail call i32 @llvm.smax.i32(i32 %195, i32 16) #11
  %197 = add nsw i32 %196, -13
  %198 = and i32 %197, -4
  %199 = add nuw nsw i32 %198, 32
  %200 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %199, i32 noundef 2848) #14
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %205

202:                                              ; preds = %192
  tail call void @usb_free_urb(ptr noundef nonnull %190) #11
  br label %203

203:                                              ; preds = %202, %185
  %204 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 22, i32 2
  store ptr null, ptr %204, align 4
  br label %253

205:                                              ; preds = %192
  store i8 1, ptr %200, align 64
  %206 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 22, i32 1
  %207 = load i32, ptr %206, align 4
  %208 = trunc i32 %207 to i16
  %209 = tail call i16 @llvm.bswap.i16(i16 %208) #11
  %210 = getelementptr inbounds %struct.command_iu, ptr %200, i32 0, i32 2
  store i16 %209, ptr %210, align 2
  %211 = getelementptr inbounds %struct.command_iu, ptr %200, i32 0, i32 3
  store i8 0, ptr %211, align 4
  %212 = trunc i32 %198 to i8
  %213 = getelementptr inbounds %struct.command_iu, ptr %200, i32 0, i32 5
  store i8 %212, ptr %213, align 2
  %214 = getelementptr inbounds %struct.scsi_device, ptr %189, i32 0, i32 18
  %215 = load i64, ptr %214, align 8
  %216 = getelementptr inbounds %struct.command_iu, ptr %200, i32 0, i32 7
  tail call void @int_to_scsilun(i64 noundef %215, ptr noundef %216) #11
  %217 = getelementptr inbounds %struct.command_iu, ptr %200, i32 0, i32 8
  %218 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 16
  %219 = load ptr, ptr %218, align 4
  %220 = load i16, ptr %193, align 4
  %221 = zext i16 %220 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 16 %217, ptr align 1 %219, i32 %221, i1 false) #11
  %222 = getelementptr inbounds %struct.uas_dev_info, ptr %1, i32 0, i32 8
  %223 = load i32, ptr %222, align 4
  %224 = getelementptr inbounds %struct.urb, ptr %190, i32 0, i32 8
  store ptr %187, ptr %224, align 4
  %225 = getelementptr inbounds %struct.urb, ptr %190, i32 0, i32 10
  store i32 %223, ptr %225, align 4
  %226 = getelementptr inbounds %struct.urb, ptr %190, i32 0, i32 14
  store ptr %200, ptr %226, align 4
  %227 = getelementptr inbounds %struct.urb, ptr %190, i32 0, i32 19
  store i32 %199, ptr %227, align 4
  %228 = getelementptr inbounds %struct.urb, ptr %190, i32 0, i32 28
  store ptr @uas_cmd_cmplt, ptr %228, align 4
  %229 = getelementptr inbounds %struct.urb, ptr %190, i32 0, i32 27
  store ptr null, ptr %229, align 4
  %230 = getelementptr inbounds %struct.urb, ptr %190, i32 0, i32 13
  %231 = load i32, ptr %230, align 4
  %232 = or i32 %231, 256
  store i32 %232, ptr %230, align 4
  %233 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 22, i32 2
  store ptr %190, ptr %233, align 4
  %234 = load i32, ptr %3, align 4
  %235 = and i32 %234, -65
  store i32 %235, ptr %3, align 4
  br label %236

236:                                              ; preds = %205, %181
  %237 = phi i32 [ %235, %205 ], [ %182, %181 ]
  %238 = and i32 %237, 128
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %253, label %240

240:                                              ; preds = %236
  %241 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 22, i32 2
  %242 = load ptr, ptr %241, align 4
  %243 = getelementptr inbounds %struct.uas_dev_info, ptr %1, i32 0, i32 2
  tail call void @usb_anchor_urb(ptr noundef %242, ptr noundef %243) #11
  %244 = load ptr, ptr %241, align 4
  %245 = tail call i32 @usb_submit_urb(ptr noundef %244, i32 noundef 2592) #11
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %249, label %247

247:                                              ; preds = %240
  %248 = load ptr, ptr %241, align 4
  tail call void @usb_unanchor_urb(ptr noundef %248) #11
  tail call fastcc void @uas_log_cmd_state(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %245)
  br label %253

249:                                              ; preds = %240
  store ptr null, ptr %241, align 4
  %250 = load i32, ptr %3, align 4
  %251 = and i32 %250, -385
  %252 = or i32 %251, 256
  store i32 %252, ptr %3, align 4
  br label %253

253:                                              ; preds = %249, %247, %236, %203, %175, %126, %110, %61, %47, %7
  %254 = phi i32 [ 4182, %110 ], [ 4182, %175 ], [ 4182, %247 ], [ 0, %249 ], [ 0, %236 ], [ 4182, %61 ], [ 4182, %126 ], [ 4182, %203 ], [ 4182, %7 ], [ 4182, %47 ]
  ret i32 %254
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unanchor_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @uas_log_cmd_state(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = icmp eq i32 %2, -19
  br i1 %4, label %46, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 22
  %7 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 22, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr %6, align 4
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, ptr @.str.23, ptr @.str.22
  %13 = and i32 %9, 4
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, ptr @.str.23, ptr @.str.24
  %16 = and i32 %9, 8
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, ptr @.str.23, ptr @.str.25
  %19 = and i32 %9, 16
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, ptr @.str.23, ptr @.str.26
  %22 = and i32 %9, 32
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, ptr @.str.23, ptr @.str.27
  %25 = and i32 %9, 64
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, ptr @.str.23, ptr @.str.28
  %28 = and i32 %9, 128
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, ptr @.str.23, ptr @.str.29
  %31 = and i32 %9, 256
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, ptr @.str.23, ptr @.str.30
  %34 = and i32 %9, 512
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, ptr @.str.23, ptr @.str.31
  %37 = and i32 %9, 1024
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, ptr @.str.23, ptr @.str.32
  %40 = and i32 %9, 2048
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, ptr @.str.23, ptr @.str.33
  %43 = and i32 %9, 4096
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, ptr @.str.23, ptr @.str.34
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.16, ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %1, i32 noundef %2, i32 noundef %8, ptr noundef nonnull %12, ptr noundef nonnull %15, ptr noundef nonnull %18, ptr noundef nonnull %21, ptr noundef nonnull %24, ptr noundef nonnull %27, ptr noundef nonnull %30, ptr noundef nonnull %33, ptr noundef nonnull %36, ptr noundef nonnull %39, ptr noundef nonnull %42, ptr noundef nonnull %45) #11
  tail call void @scsi_print_command(ptr noundef %0) #11
  br label %46

46:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uas_stat_cmplt(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 50, i32 11, i32 26
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #11
  %10 = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 13, i32 0, i32 1, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %128

13:                                               ; preds = %1
  switch i32 %7, label %14 [
    i32 0, label %18
    i32 -2, label %128
    i32 -104, label %128
    i32 -108, label %128
  ]

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.10, i32 noundef %7) #12
  br label %128

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.iu, ptr %3, i32 0, i32 2
  %20 = load i16, ptr %19, align 2
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #11
  %22 = zext i16 %21 to i32
  %23 = add nsw i32 %22, -1
  %24 = icmp ugt i32 %23, 255
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 13, i32 2
  %27 = getelementptr [256 x ptr], ptr %26, i32 0, i32 %23
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25, %18
  %31 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 8
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.usb_device, ptr %32, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.11, i32 noundef %22) #12
  br label %128

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 22
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 256
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %75

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 22, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %36, 2
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, ptr @.str.23, ptr @.str.22
  %45 = and i32 %36, 4
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, ptr @.str.23, ptr @.str.24
  %48 = and i32 %36, 8
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, ptr @.str.23, ptr @.str.25
  %51 = and i32 %36, 16
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, ptr @.str.23, ptr @.str.26
  %54 = and i32 %36, 32
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, ptr @.str.23, ptr @.str.27
  %57 = and i32 %36, 64
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, ptr @.str.23, ptr @.str.28
  %60 = and i32 %36, 128
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %61, ptr @.str.23, ptr @.str.29
  %63 = and i32 %36, 512
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, ptr @.str.23, ptr @.str.31
  %66 = and i32 %36, 1024
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, ptr @.str.23, ptr @.str.32
  %69 = and i32 %36, 2048
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %70, ptr @.str.23, ptr @.str.33
  %72 = and i32 %36, 4096
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, ptr @.str.23, ptr @.str.34
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull %28, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef %41, ptr noundef nonnull %44, ptr noundef nonnull %47, ptr noundef nonnull %50, ptr noundef nonnull %53, ptr noundef nonnull %56, ptr noundef nonnull %59, ptr noundef nonnull %62, ptr noundef nonnull @.str.23, ptr noundef nonnull %65, ptr noundef nonnull %68, ptr noundef nonnull %71, ptr noundef nonnull %74) #11
  tail call void @scsi_print_command(ptr noundef nonnull %28) #11
  br label %128

75:                                               ; preds = %34
  %76 = load i8, ptr %3, align 1
  switch i8 %76, label %126 [
    i8 3, label %77
    i8 6, label %94
    i8 7, label %103
    i8 4, label %112
  ]

77:                                               ; preds = %75
  tail call fastcc void @uas_sense(ptr noundef %0, ptr noundef nonnull %28)
  %78 = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 24
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 22, i32 3
  %83 = load ptr, ptr %82, align 4
  %84 = tail call ptr @usb_get_urb(ptr noundef %83) #11
  %85 = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 22, i32 4
  %86 = load ptr, ptr %85, align 4
  %87 = tail call ptr @usb_get_urb(ptr noundef %86) #11
  br label %88

88:                                               ; preds = %81, %77
  %89 = phi ptr [ %84, %81 ], [ null, %77 ]
  %90 = phi ptr [ %87, %81 ], [ null, %77 ]
  %91 = load i32, ptr %35, align 4
  %92 = and i32 %91, -257
  store i32 %92, ptr %35, align 4
  %93 = tail call fastcc i32 @uas_try_complete(ptr noundef nonnull %28)
  br label %128

94:                                               ; preds = %75
  %95 = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 22, i32 3
  %96 = load ptr, ptr %95, align 4
  %97 = icmp ne ptr %96, null
  %98 = and i32 %36, 512
  %99 = icmp eq i32 %98, 0
  %100 = select i1 %97, i1 %99, i1 false
  br i1 %100, label %102, label %101

101:                                              ; preds = %94
  tail call fastcc void @uas_log_cmd_state(ptr noundef nonnull %28, ptr noundef nonnull @.str.13, i32 noundef 0)
  br label %128

102:                                              ; preds = %94
  tail call fastcc void @uas_xfer_data(ptr noundef nonnull %28, i32 noundef 8)
  br label %128

103:                                              ; preds = %75
  %104 = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 22, i32 4
  %105 = load ptr, ptr %104, align 4
  %106 = icmp ne ptr %105, null
  %107 = and i32 %36, 1024
  %108 = icmp eq i32 %107, 0
  %109 = select i1 %106, i1 %108, i1 false
  br i1 %109, label %111, label %110

110:                                              ; preds = %103
  tail call fastcc void @uas_log_cmd_state(ptr noundef nonnull %28, ptr noundef nonnull @.str.14, i32 noundef 0)
  br label %128

111:                                              ; preds = %103
  tail call fastcc void @uas_xfer_data(ptr noundef nonnull %28, i32 noundef 32)
  br label %128

112:                                              ; preds = %75
  %113 = and i32 %36, -257
  store i32 %113, ptr %35, align 4
  %114 = tail call fastcc zeroext i1 @uas_evaluate_response_iu(ptr noundef %3, ptr noundef nonnull %28)
  br i1 %114, label %122, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 22, i32 3
  %117 = load ptr, ptr %116, align 4
  %118 = tail call ptr @usb_get_urb(ptr noundef %117) #11
  %119 = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 22, i32 4
  %120 = load ptr, ptr %119, align 4
  %121 = tail call ptr @usb_get_urb(ptr noundef %120) #11
  br label %122

122:                                              ; preds = %115, %112
  %123 = phi ptr [ null, %112 ], [ %118, %115 ]
  %124 = phi ptr [ null, %112 ], [ %121, %115 ]
  %125 = tail call fastcc i32 @uas_try_complete(ptr noundef nonnull %28)
  br label %128

126:                                              ; preds = %75
  %127 = zext i8 %76 to i32
  tail call fastcc void @uas_log_cmd_state(ptr noundef nonnull %28, ptr noundef nonnull @.str.15, i32 noundef %127)
  br label %128

128:                                              ; preds = %126, %122, %111, %110, %102, %101, %88, %39, %30, %14, %13, %13, %13, %1
  %129 = phi ptr [ null, %1 ], [ null, %14 ], [ null, %30 ], [ null, %126 ], [ %123, %122 ], [ null, %110 ], [ null, %111 ], [ null, %101 ], [ null, %102 ], [ %89, %88 ], [ null, %39 ], [ null, %13 ], [ null, %13 ], [ null, %13 ]
  %130 = phi ptr [ null, %1 ], [ null, %14 ], [ null, %30 ], [ null, %126 ], [ %124, %122 ], [ null, %110 ], [ null, %111 ], [ null, %101 ], [ null, %102 ], [ %90, %88 ], [ null, %39 ], [ null, %13 ], [ null, %13 ], [ null, %13 ]
  tail call void @usb_free_urb(ptr noundef %0) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #11
  %131 = icmp eq ptr %129, null
  br i1 %131, label %134, label %132

132:                                              ; preds = %128
  %133 = tail call i32 @usb_unlink_urb(ptr noundef nonnull %129) #11
  tail call void @usb_free_urb(ptr noundef nonnull %129) #11
  br label %134

134:                                              ; preds = %132, %128
  %135 = icmp eq ptr %130, null
  br i1 %135, label %138, label %136

136:                                              ; preds = %134
  %137 = tail call i32 @usb_unlink_urb(ptr noundef nonnull %130) #11
  tail call void @usb_free_urb(ptr noundef nonnull %130) #11
  br label %138

138:                                              ; preds = %136, %134
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @uas_sense(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 20
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 16
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sense_iu, ptr %4, i32 0, i32 6
  %12 = load i16, ptr %11, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #11
  %14 = zext i16 %13 to i32
  %15 = add nuw nsw i32 %14, 16
  %16 = icmp eq i32 %15, %8
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = tail call i32 @llvm.umin.i32(i32 %15, i32 %8)
  %19 = add nsw i32 %18, -16
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.16, ptr noundef %6, ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.uas_sense, i32 noundef %8, i32 noundef %14, i32 noundef %19) #11
  br label %20

20:                                               ; preds = %17, %10
  %21 = phi i32 [ %19, %17 ], [ %14, %10 ]
  %22 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 21
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.sense_iu, ptr %4, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %23, ptr align 1 %24, i32 %21, i1 false)
  br label %25

25:                                               ; preds = %20, %2
  %26 = getelementptr inbounds %struct.sense_iu, ptr %4, i32 0, i32 4
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 24
  store i32 %28, ptr %29, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uas_try_complete(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 22
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 3840
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %40

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 21
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 22, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -1
  %14 = getelementptr %struct.uas_dev_info, ptr %10, i32 0, i32 13, i32 %13
  store ptr null, ptr %14, align 4
  %15 = icmp eq ptr %0, null
  br i1 %15, label %39, label %16

16:                                               ; preds = %6
  %17 = load i32, ptr %2, align 4
  %18 = and i32 %17, 128
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 22, i32 2
  %22 = load ptr, ptr %21, align 4
  tail call void @usb_free_urb(ptr noundef %22) #11
  %23 = load i32, ptr %2, align 4
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %23, %20 ], [ %17, %16 ]
  %26 = and i32 %25, 512
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 22, i32 3
  %30 = load ptr, ptr %29, align 4
  tail call void @usb_free_urb(ptr noundef %30) #11
  %31 = load i32, ptr %2, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i32 [ %31, %28 ], [ %25, %24 ]
  %34 = and i32 %33, 1024
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 22, i32 4
  %38 = load ptr, ptr %37, align 4
  tail call void @usb_free_urb(ptr noundef %38) #11
  br label %39

39:                                               ; preds = %36, %32, %6
  tail call void @scsi_done(ptr noundef %0) #11
  br label %40

40:                                               ; preds = %39, %1
  %41 = phi i32 [ 0, %39 ], [ -16, %1 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @uas_xfer_data(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 22
  %4 = load i32, ptr %3, align 4
  %5 = or i32 %4, %1
  %6 = or i32 %5, 2
  store i32 %6, ptr %3, align 4
  %7 = getelementptr %struct.scsi_cmnd, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 21
  %10 = load ptr, ptr %9, align 8
  %11 = tail call fastcc i32 @uas_submit_urbs(ptr noundef %0, ptr noundef %10)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr inbounds %struct.scsi_device, ptr %14, i32 0, i32 21
  %16 = load ptr, ptr %15, align 8
  %17 = load i32, ptr %3, align 4
  %18 = or i32 %17, 4096
  store i32 %18, ptr %3, align 4
  %19 = load ptr, ptr @workqueue, align 4
  %20 = getelementptr inbounds %struct.uas_dev_info, ptr %16, i32 0, i32 15
  %21 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %19, ptr noundef %20) #11
  br label %22

22:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @uas_evaluate_response_iu(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.response_iu, ptr %0, i32 0, i32 4
  %4 = load i8, ptr %3, align 1
  switch i8 %4, label %19 [
    i8 9, label %5
    i8 8, label %10
    i8 4, label %14
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 24
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, -16711681
  %9 = or i32 %8, 262144
  store i32 %9, ptr %6, align 4
  br label %25

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 24
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, -16711681
  store i32 %13, ptr %11, align 4
  br label %25

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 24
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, -16711681
  %18 = or i32 %17, 1048576
  store i32 %18, ptr %15, align 4
  br label %25

19:                                               ; preds = %2
  %20 = zext i8 %4 to i32
  tail call fastcc void @uas_log_cmd_state(ptr noundef %1, ptr noundef nonnull @.str.18, i32 noundef %20)
  %21 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 24
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, -16711681
  %24 = or i32 %23, 458752
  store i32 %24, ptr %21, align 4
  br label %25

25:                                               ; preds = %19, %14, %10, %5
  %26 = icmp eq i8 %4, 8
  ret i1 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uas_data_cmplt(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 22
  %5 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 21
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 12
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.uas_dev_info, ptr %8, i32 0, i32 14
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #11
  %13 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 22, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 22, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16, %1
  %21 = phi i32 [ -513, %1 ], [ -1025, %16 ]
  %22 = phi ptr [ %13, %1 ], [ %17, %16 ]
  %23 = load i32, ptr %4, align 4
  %24 = and i32 %23, %21
  store i32 %24, ptr %4, align 4
  store ptr null, ptr %22, align 4
  br label %25

25:                                               ; preds = %20, %16
  %26 = getelementptr inbounds %struct.uas_dev_info, ptr %8, i32 0, i32 7
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %84

29:                                               ; preds = %25
  %30 = load i32, ptr %4, align 4
  %31 = and i32 %30, 128
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %69, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 22, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %30, 2
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, ptr @.str.23, ptr @.str.22
  %39 = and i32 %30, 4
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, ptr @.str.23, ptr @.str.24
  %42 = and i32 %30, 8
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, ptr @.str.23, ptr @.str.25
  %45 = and i32 %30, 16
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, ptr @.str.23, ptr @.str.26
  %48 = and i32 %30, 32
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, ptr @.str.23, ptr @.str.27
  %51 = and i32 %30, 64
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, ptr @.str.23, ptr @.str.28
  %54 = and i32 %30, 256
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, ptr @.str.23, ptr @.str.30
  %57 = and i32 %30, 512
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, ptr @.str.23, ptr @.str.31
  %60 = and i32 %30, 1024
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %61, ptr @.str.23, ptr @.str.32
  %63 = and i32 %30, 2048
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, ptr @.str.23, ptr @.str.33
  %66 = and i32 %30, 4096
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, ptr @.str.23, ptr @.str.34
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.16, ptr noundef %3, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef %35, ptr noundef nonnull %38, ptr noundef nonnull %41, ptr noundef nonnull %44, ptr noundef nonnull %47, ptr noundef nonnull %50, ptr noundef nonnull %53, ptr noundef nonnull @.str.29, ptr noundef nonnull %56, ptr noundef nonnull %59, ptr noundef nonnull %62, ptr noundef nonnull %65, ptr noundef nonnull %68) #11
  tail call void @scsi_print_command(ptr noundef %3) #11
  br label %84

69:                                               ; preds = %29
  switch i32 %10, label %70 [
    i32 0, label %74
    i32 -2, label %71
    i32 -104, label %71
    i32 -108, label %71
  ]

70:                                               ; preds = %69
  tail call fastcc void @uas_log_cmd_state(ptr noundef %3, ptr noundef nonnull @.str.20, i32 noundef %10)
  br label %71

71:                                               ; preds = %70, %69, %69, %69
  %72 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 17, i32 1
  %73 = load i32, ptr %72, align 4
  br label %80

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 17, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 20
  %78 = load i32, ptr %77, align 4
  %79 = sub i32 %76, %78
  br label %80

80:                                               ; preds = %74, %71
  %81 = phi i32 [ %79, %74 ], [ %73, %71 ]
  %82 = getelementptr inbounds %struct.scsi_request, ptr %3, i32 0, i32 5
  store i32 %81, ptr %82, align 4
  %83 = tail call fastcc i32 @uas_try_complete(ptr noundef %3)
  br label %84

84:                                               ; preds = %80, %33, %25
  tail call void @usb_free_urb(ptr noundef %0) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmd_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_print_command(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @int_to_scsilun(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uas_cmd_cmplt(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 12
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.35, i32 noundef %3) #12
  br label %9

9:                                                ; preds = %5, %1
  tail call void @usb_free_urb(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_lock_device_for_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_anchored_urbs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @uas_zap_pending(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.uas_dev_info, ptr %0, i32 0, i32 14
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  %5 = getelementptr inbounds %struct.uas_dev_info, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %66

8:                                                ; preds = %2
  %9 = shl i32 %1, 16
  br label %10

10:                                               ; preds = %62, %8
  %11 = phi i32 [ 0, %8 ], [ %63, %62 ]
  %12 = getelementptr %struct.uas_dev_info, ptr %0, i32 0, i32 13, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %62, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.scsi_cmnd, ptr %13, i32 0, i32 22
  %17 = getelementptr inbounds %struct.scsi_cmnd, ptr %13, i32 0, i32 22, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %16, align 4
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, ptr @.str.23, ptr @.str.22
  %23 = and i32 %19, 4
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, ptr @.str.23, ptr @.str.24
  %26 = and i32 %19, 8
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, ptr @.str.23, ptr @.str.25
  %29 = and i32 %19, 16
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, ptr @.str.23, ptr @.str.26
  %32 = and i32 %19, 32
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, ptr @.str.23, ptr @.str.27
  %35 = and i32 %19, 64
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, ptr @.str.23, ptr @.str.28
  %38 = and i32 %19, 128
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, ptr @.str.23, ptr @.str.29
  %41 = and i32 %19, 256
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, ptr @.str.23, ptr @.str.30
  %44 = and i32 %19, 512
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, ptr @.str.23, ptr @.str.31
  %47 = and i32 %19, 1024
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, ptr @.str.23, ptr @.str.32
  %50 = and i32 %19, 2048
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %51, ptr @.str.23, ptr @.str.33
  %53 = and i32 %19, 4096
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, ptr @.str.23, ptr @.str.34
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull %13, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.uas_zap_pending, i32 noundef 0, i32 noundef %18, ptr noundef nonnull %22, ptr noundef nonnull %25, ptr noundef nonnull %28, ptr noundef nonnull %31, ptr noundef nonnull %34, ptr noundef nonnull %37, ptr noundef nonnull %40, ptr noundef nonnull %43, ptr noundef nonnull %46, ptr noundef nonnull %49, ptr noundef nonnull %52, ptr noundef nonnull %55) #11
  tail call void @scsi_print_command(ptr noundef nonnull %13) #11
  %56 = load i32, ptr %16, align 4
  %57 = and i32 %56, -257
  store i32 %57, ptr %16, align 4
  %58 = getelementptr inbounds %struct.scsi_cmnd, ptr %13, i32 0, i32 24
  store i32 %9, ptr %58, align 4
  %59 = tail call fastcc i32 @uas_try_complete(ptr noundef nonnull %13)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61, !prof !8

61:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 172, i32 noundef 9, ptr noundef null) #11
  br label %62

62:                                               ; preds = %61, %15, %10
  %63 = add nuw nsw i32 %11, 1
  %64 = load i32, ptr %5, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %10, label %66

66:                                               ; preds = %62, %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_update_dma_alignment(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_hw_sectors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_change_queue_depth(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_alloc_streams(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_free_streams(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uas_wait_for_pending_cmnds(ptr noundef %0) unnamed_addr #3 {
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = getelementptr inbounds %struct.uas_dev_info, ptr %0, i32 0, i32 15
  %4 = tail call zeroext i1 @flush_work(ptr noundef %3) #11
  %5 = getelementptr inbounds %struct.uas_dev_info, ptr %0, i32 0, i32 3
  %6 = tail call i32 @usb_wait_anchor_empty_timeout(ptr noundef %5, i32 noundef 5000) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %37, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.uas_dev_info, ptr %0, i32 0, i32 4
  %10 = add i32 %2, 500
  %11 = getelementptr inbounds %struct.uas_dev_info, ptr %0, i32 0, i32 14
  %12 = getelementptr inbounds %struct.uas_dev_info, ptr %0, i32 0, i32 6
  br label %13

13:                                               ; preds = %33, %8
  %14 = tail call i32 @usb_wait_anchor_empty_timeout(ptr noundef %9, i32 noundef 500) #11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %37, label %16

16:                                               ; preds = %13
  %17 = load volatile i32, ptr @jiffies, align 64
  %18 = sub i32 %10, %17
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %37, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #11
  %22 = load i32, ptr %12, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %27, label %32

24:                                               ; preds = %27
  %25 = add nuw nsw i32 %28, 1
  %26 = icmp eq i32 %25, %22
  br i1 %26, label %32, label %27

27:                                               ; preds = %24, %20
  %28 = phi i32 [ %25, %24 ], [ 0, %20 ]
  %29 = getelementptr %struct.uas_dev_info, ptr %0, i32 0, i32 13, i32 %28
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %24, label %33

32:                                               ; preds = %24, %20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %21) #11
  br label %37

33:                                               ; preds = %27
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %21) #11
  %34 = tail call zeroext i1 @flush_work(ptr noundef %3) #11
  %35 = tail call i32 @usb_wait_anchor_empty_timeout(ptr noundef %5, i32 noundef 5000) #11
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %13

37:                                               ; preds = %33, %32, %16, %13, %1
  %38 = phi i32 [ 0, %32 ], [ -62, %1 ], [ -62, %16 ], [ -62, %13 ], [ -62, %33 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_wait_anchor_empty_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_report_bus_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_block_requests(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_unblock_requests(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

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
