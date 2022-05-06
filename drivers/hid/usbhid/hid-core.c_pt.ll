; ModuleID = '/llk/IR/drivers/hid/usbhid/hid-core.c_pt.bc'
source_filename = "../drivers/hid/usbhid/hid-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_hid_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_hid_driver\22\09\09\09\09\09"
module asm "__kstrtabns_usb_hid_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.60 }
%union.anon.60 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.lock_class_key = type {}
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.usbhid_device = type { ptr, ptr, i32, i32, ptr, ptr, i32, ptr, ptr, [256 x %struct.hid_control_fifo], i8, i8, ptr, i32, i32, ptr, [256 x %struct.hid_output_fifo], i8, i8, ptr, i32, i32, %struct.mutex, %struct.spinlock, i32, %struct.timer_list, i32, i32, %struct.work_struct, %struct.wait_queue_head }
%struct.hid_control_fifo = type { i8, ptr, ptr }
%struct.hid_output_fifo = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.hid_collection = type { i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.hid_usage = type { i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i16 }
%struct.hid_descriptor = type <{ i8, i8, i16, i8, i8, [1 x %struct.hid_class_descriptor] }>
%struct.hid_class_descriptor = type <{ i8, i16 }>
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }

@__param_str_mousepoll = internal constant [17 x i8] c"usbhid.mousepoll\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@hid_mousepoll_interval = internal global i32 0, align 4
@__param_mousepoll = internal constant %struct.kernel_param { ptr @__param_str_mousepoll, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.60 { ptr @hid_mousepoll_interval } }, section "__param", align 4
@__UNIQUE_ID_mousepolltype229 = internal constant [31 x i8] c"usbhid.parmtype=mousepoll:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_mousepoll230 = internal constant [47 x i8] c"usbhid.parm=mousepoll:Polling interval of mice\00", section ".modinfo", align 1
@__param_str_jspoll = internal constant [14 x i8] c"usbhid.jspoll\00", align 1
@hid_jspoll_interval = internal global i32 0, align 4
@__param_jspoll = internal constant %struct.kernel_param { ptr @__param_str_jspoll, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.60 { ptr @hid_jspoll_interval } }, section "__param", align 4
@__UNIQUE_ID_jspolltype231 = internal constant [28 x i8] c"usbhid.parmtype=jspoll:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_jspoll232 = internal constant [49 x i8] c"usbhid.parm=jspoll:Polling interval of joysticks\00", section ".modinfo", align 1
@__param_str_kbpoll = internal constant [14 x i8] c"usbhid.kbpoll\00", align 1
@hid_kbpoll_interval = internal global i32 0, align 4
@__param_kbpoll = internal constant %struct.kernel_param { ptr @__param_str_kbpoll, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.60 { ptr @hid_kbpoll_interval } }, section "__param", align 4
@__UNIQUE_ID_kbpolltype233 = internal constant [28 x i8] c"usbhid.parmtype=kbpoll:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_kbpoll234 = internal constant [49 x i8] c"usbhid.parm=kbpoll:Polling interval of keyboards\00", section ".modinfo", align 1
@__param_str_ignoreled = internal constant [17 x i8] c"usbhid.ignoreled\00", align 1
@ignoreled = internal global i32 0, align 4
@__param_ignoreled = internal constant %struct.kernel_param { ptr @__param_str_ignoreled, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.60 { ptr @ignoreled } }, section "__param", align 4
@__UNIQUE_ID_ignoreledtype235 = internal constant [31 x i8] c"usbhid.parmtype=ignoreled:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_ignoreled236 = internal constant [51 x i8] c"usbhid.parm=ignoreled:Autosuspend with active leds\00", section ".modinfo", align 1
@__param_str_quirks = internal constant [14 x i8] c"usbhid.quirks\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_quirks = internal constant %struct.kparam_array { i32 4, i32 4, ptr null, ptr @param_ops_charp, ptr @quirks_param }, align 4
@__param_quirks = internal constant %struct.kernel_param { ptr @__param_str_quirks, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.60 { ptr @__param_arr_quirks } }, section "__param", align 4
@__UNIQUE_ID_quirkstype237 = internal constant [38 x i8] c"usbhid.parmtype=quirks:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_quirks238 = internal constant [158 x i8] c"usbhid.parm=quirks:Add/modify USB HID quirks by specifying  quirks=vendorID:productID:quirks where vendorID, productID, and quirks are all in 0x-prefixed hex\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [30 x i8] c"timeout initializing reports\0A\00", align 1
@usb_hid_driver = dso_local global %struct.hid_ll_driver { ptr @usbhid_start, ptr @usbhid_stop, ptr @usbhid_open, ptr @usbhid_close, ptr @usbhid_power, ptr @usbhid_parse, ptr @usbhid_request, ptr @usbhid_wait_io, ptr @usbhid_raw_request, ptr @usbhid_output_report, ptr @usbhid_idle, ptr @usbhid_may_wakeup }, align 4
@__kstrtab_usb_hid_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_hid_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_hid_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_hid_driver to i32), ptr @__kstrtab_usb_hid_driver, ptr @__kstrtabns_usb_hid_driver }, section "___ksymtab_gpl+usb_hid_driver", align 4
@hid_driver = internal global %struct.usb_driver { ptr @.str.25, ptr @usbhid_probe, ptr @usbhid_disconnect, ptr null, ptr @hid_suspend, ptr @hid_resume, ptr @hid_reset_resume, ptr @hid_pre_reset, ptr @hid_post_reset, ptr @hid_usb_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 2 }, align 4
@__initcall__kmod_usbhid__241_1707_hid_init6 = internal global ptr @hid_init, section ".initcall6.init", align 4
@__exitcall_hid_exit = internal global ptr @hid_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author242 = internal constant [26 x i8] c"usbhid.author=Andreas Gal\00", section ".modinfo", align 1
@__UNIQUE_ID_author243 = internal constant [29 x i8] c"usbhid.author=Vojtech Pavlik\00", section ".modinfo", align 1
@__UNIQUE_ID_author244 = internal constant [26 x i8] c"usbhid.author=Jiri Kosina\00", section ".modinfo", align 1
@__UNIQUE_ID_description245 = internal constant [39 x i8] c"usbhid.description=USB HID core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file246 = internal constant [38 x i8] c"usbhid.file=drivers/hid/usbhid/usbhid\00", section ".modinfo", align 1
@__UNIQUE_ID_license247 = internal constant [19 x i8] c"usbhid.license=GPL\00", section ".modinfo", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@quirks_param = internal global [4 x ptr] zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"output queue full\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"output queueing failed\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.3 = private unnamed_addr constant [20 x i8] c"control queue full\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"control queueing failed\0A\00", align 1
@hid_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"\017%s: submitting out urb\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"drivers/hid/usbhid/hid-core.c\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"usb_submit_urb(out) failed: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [70 x i8] c"\017%s: submitting ctrl urb: %s wValue=0x%04x wIndex=0x%04x wLength=%u\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Set_Report\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Get_Report\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"usb_submit_urb(ctrl) failed: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"include/linux/usb.h\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"\017%s: timeout waiting for ctrl or out queue to clear\0A\00", align 1
@.str.14 = private unnamed_addr constant [56 x i8] c"\016%s: Fixing fullspeed to highspeed interval: %d -> %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"failed to start in urb: %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.16 = private unnamed_addr constant [30 x i8] c"input irq status %d received\0A\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"can't resubmit intr, %s-%s/input%d, status %d\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.18 = private unnamed_addr constant [31 x i8] c"output irq status %d received\0A\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"ctrl urb status %d received\0A\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"\017%s: class descriptor not present\0A\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"\017%s: hid descriptor is too short\0A\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"\017%s: weird size of report descriptor (%u)\0A\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"\017%s: reading report descriptor failed\0A\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"\017%s: parsing report descriptor failed\0A\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"usbhid\00", align 1
@hid_usb_ids = internal constant [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 128, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], align 4
@.str.26 = private unnamed_addr constant [37 x i8] c"\017%s: HID probe called for ifnum %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"couldn't find an input interrupt endpoint\0A\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"HID %04x:%04x\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"/input\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@usbhid_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"&usbhid->wait\00", align 1
@usbhid_probe.__key.33 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"&usbhid->mutex\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"can't add hid device: %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"usb-%s-%s\00", align 1
@.str.37 = private unnamed_addr constant [53 x i8] c"\017%s: reading report descriptor failed (post_reset)\0A\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"\017%s: report descriptor changed\0A\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"\016usbhid: USB HID core driver\0A\00", align 1
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_author244, ptr @__UNIQUE_ID_description245, ptr @__UNIQUE_ID_file246, ptr @__UNIQUE_ID_ignoreled236, ptr @__UNIQUE_ID_ignoreledtype235, ptr @__UNIQUE_ID_jspoll232, ptr @__UNIQUE_ID_jspolltype231, ptr @__UNIQUE_ID_kbpoll234, ptr @__UNIQUE_ID_kbpolltype233, ptr @__UNIQUE_ID_license247, ptr @__UNIQUE_ID_mousepoll230, ptr @__UNIQUE_ID_mousepolltype229, ptr @__UNIQUE_ID_quirks238, ptr @__UNIQUE_ID_quirkstype237, ptr @__exitcall_hid_exit, ptr @__initcall__kmod_usbhid__241_1707_hid_init6, ptr @__ksymtab_usb_hid_driver, ptr @__param_ignoreled, ptr @__param_jspoll, ptr @__param_kbpoll, ptr @__param_mousepoll, ptr @__param_quirks, ptr @hid_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhid_init_reports(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 33
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 15, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %11, label %7

7:                                                ; preds = %7, %1
  %8 = phi ptr [ %9, %7 ], [ %5, %1 ]
  tail call fastcc void @usbhid_submit_report(ptr noundef %0, ptr noundef %8, i8 noundef zeroext -128)
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %4
  br i1 %10, label %11, label %7

11:                                               ; preds = %7, %1
  %12 = getelementptr %struct.hid_device, ptr %0, i32 0, i32 15, i32 2, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %19, label %15

15:                                               ; preds = %15, %11
  %16 = phi ptr [ %17, %15 ], [ %13, %11 ]
  tail call fastcc void @usbhid_submit_report(ptr noundef %0, ptr noundef %16, i8 noundef zeroext -128)
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %12
  br i1 %18, label %19, label %15

19:                                               ; preds = %15, %11
  %20 = tail call i32 @usbhid_wait_io(ptr noundef %0)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %43, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 24
  %24 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 7
  %25 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 15
  br label %26

26:                                               ; preds = %38, %22
  %27 = load volatile i32, ptr %23, align 4
  %28 = and i32 %27, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %24, align 4
  tail call void @usb_kill_urb(ptr noundef %31) #15
  br label %32

32:                                               ; preds = %30, %26
  %33 = load volatile i32, ptr %23, align 4
  %34 = and i32 %33, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %25, align 4
  tail call void @usb_kill_urb(ptr noundef %37) #15
  br label %38

38:                                               ; preds = %36, %32
  %39 = tail call i32 @usbhid_wait_io(ptr noundef %0)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %26

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str) #16
  br label %43

43:                                               ; preds = %41, %19
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @usbhid_submit_report(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 33
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 23
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #15
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 25
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 8
  %12 = icmp ne i32 %11, 0
  %13 = icmp eq i8 %2, -128
  %14 = and i1 %13, %12
  br i1 %14, label %132, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.usbhid_device, ptr %8, i32 0, i32 24
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 128
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %132

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.usbhid_device, ptr %8, i32 0, i32 15
  %22 = load ptr, ptr %21, align 4
  %23 = icmp ne ptr %22, null
  %24 = icmp eq i8 %2, 0
  %25 = and i1 %24, %23
  br i1 %25, label %26, label %79

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.hid_report, ptr %1, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %79

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.usbhid_device, ptr %8, i32 0, i32 17
  %32 = load i8, ptr %31, align 4
  %33 = add i8 %32, 1
  %34 = and i8 %33, 63
  %35 = getelementptr inbounds %struct.usbhid_device, ptr %8, i32 0, i32 18
  %36 = load i8, ptr %35, align 1
  %37 = icmp eq i8 %34, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.1) #16
  br label %132

40:                                               ; preds = %30
  %41 = tail call ptr @hid_alloc_report_buf(ptr noundef %1, i32 noundef 2592) #15
  %42 = load i8, ptr %31, align 4
  %43 = zext i8 %42 to i32
  %44 = getelementptr %struct.usbhid_device, ptr %8, i32 0, i32 16, i32 %43, i32 1
  store ptr %41, ptr %44, align 4
  %45 = icmp eq ptr %41, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %47, ptr noundef nonnull @.str.2) #16
  br label %132

48:                                               ; preds = %40
  tail call void @hid_output_report(ptr noundef %1, ptr noundef nonnull %41) #15
  %49 = load i8, ptr %31, align 4
  %50 = zext i8 %49 to i32
  %51 = getelementptr %struct.usbhid_device, ptr %8, i32 0, i32 16, i32 %50
  store ptr %1, ptr %51, align 4
  store i8 %34, ptr %31, align 4
  %52 = load volatile i32, ptr %16, align 4
  %53 = and i32 %52, 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  tail call fastcc void @usbhid_restart_out_queue(ptr noundef %8) #15
  br label %132

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.usbhid_device, ptr %8, i32 0, i32 21
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, 500
  %60 = load volatile i32, ptr @jiffies, align 64
  %61 = sub i32 %59, %60
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %132

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.usbhid_device, ptr %8, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  tail call void @usb_autopm_get_interface_no_resume(ptr noundef %65) #15
  %66 = load ptr, ptr %21, align 4
  tail call void @usb_block_urb(ptr noundef %66) #15
  %67 = getelementptr inbounds %struct.usbhid_device, ptr %8, i32 0, i32 23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %68 = load i16, ptr %67, align 4
  %69 = add i16 %68, 1
  store i16 %69, ptr %67, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %70 = load ptr, ptr %21, align 4
  %71 = tail call i32 @usb_unlink_urb(ptr noundef %70) #15
  tail call void @_raw_spin_lock(ptr noundef %67) #15
  %72 = load ptr, ptr %21, align 4
  tail call void @usb_unpoison_urb(ptr noundef %72) #15
  %73 = load volatile i32, ptr %16, align 4
  %74 = and i32 %73, 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %63
  tail call fastcc void @usbhid_restart_out_queue(ptr noundef %8) #15
  br label %77

77:                                               ; preds = %76, %63
  %78 = load ptr, ptr %64, align 4
  tail call void @usb_autopm_put_interface_async(ptr noundef %78) #15
  br label %132

79:                                               ; preds = %26, %20
  %80 = getelementptr inbounds %struct.usbhid_device, ptr %8, i32 0, i32 10
  %81 = load i8, ptr %80, align 4
  %82 = add i8 %81, 1
  %83 = getelementptr inbounds %struct.usbhid_device, ptr %8, i32 0, i32 11
  %84 = load i8, ptr %83, align 1
  %85 = icmp eq i8 %82, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %87, ptr noundef nonnull @.str.3) #16
  br label %132

88:                                               ; preds = %79
  br i1 %24, label %89, label %99

89:                                               ; preds = %88
  %90 = tail call ptr @hid_alloc_report_buf(ptr noundef %1, i32 noundef 2592) #15
  %91 = load i8, ptr %80, align 4
  %92 = zext i8 %91 to i32
  %93 = getelementptr %struct.usbhid_device, ptr %8, i32 0, i32 9, i32 %92, i32 2
  store ptr %90, ptr %93, align 4
  %94 = icmp eq ptr %90, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %96, ptr noundef nonnull @.str.4) #16
  br label %132

97:                                               ; preds = %89
  tail call void @hid_output_report(ptr noundef %1, ptr noundef nonnull %90) #15
  %98 = load i8, ptr %80, align 4
  br label %99

99:                                               ; preds = %97, %88
  %100 = phi i8 [ %98, %97 ], [ %81, %88 ]
  %101 = zext i8 %100 to i32
  %102 = getelementptr %struct.usbhid_device, ptr %8, i32 0, i32 9, i32 %101, i32 1
  store ptr %1, ptr %102, align 4
  %103 = getelementptr %struct.usbhid_device, ptr %8, i32 0, i32 9, i32 %101
  store i8 %2, ptr %103, align 4
  store i8 %82, ptr %80, align 4
  %104 = load volatile i32, ptr %16, align 4
  %105 = and i32 %104, 2
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  tail call fastcc void @usbhid_restart_ctrl_queue(ptr noundef %8) #15
  br label %132

108:                                              ; preds = %99
  %109 = getelementptr inbounds %struct.usbhid_device, ptr %8, i32 0, i32 14
  %110 = load i32, ptr %109, align 4
  %111 = add i32 %110, 500
  %112 = load volatile i32, ptr @jiffies, align 64
  %113 = sub i32 %111, %112
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %108
  %116 = getelementptr inbounds %struct.usbhid_device, ptr %8, i32 0, i32 1
  %117 = load ptr, ptr %116, align 4
  tail call void @usb_autopm_get_interface_no_resume(ptr noundef %117) #15
  %118 = getelementptr inbounds %struct.usbhid_device, ptr %8, i32 0, i32 7
  %119 = load ptr, ptr %118, align 4
  tail call void @usb_block_urb(ptr noundef %119) #15
  %120 = getelementptr inbounds %struct.usbhid_device, ptr %8, i32 0, i32 23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %121 = load i16, ptr %120, align 4
  %122 = add i16 %121, 1
  store i16 %122, ptr %120, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %123 = load ptr, ptr %118, align 4
  %124 = tail call i32 @usb_unlink_urb(ptr noundef %123) #15
  tail call void @_raw_spin_lock(ptr noundef %120) #15
  %125 = load ptr, ptr %118, align 4
  tail call void @usb_unpoison_urb(ptr noundef %125) #15
  %126 = load volatile i32, ptr %16, align 4
  %127 = and i32 %126, 2
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %115
  tail call fastcc void @usbhid_restart_ctrl_queue(ptr noundef %8) #15
  br label %130

130:                                              ; preds = %129, %115
  %131 = load ptr, ptr %116, align 4
  tail call void @usb_autopm_put_interface_async(ptr noundef %131) #15
  br label %132

132:                                              ; preds = %130, %108, %107, %95, %86, %77, %56, %55, %46, %38, %15, %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhid_wait_io(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 33
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.usbhid_device, ptr %4, i32 0, i32 24
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load volatile i32, ptr %5, align 4
  %11 = and i32 %10, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %41, label %13

13:                                               ; preds = %9, %1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !12
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #15
  %14 = getelementptr inbounds %struct.usbhid_device, ptr %4, i32 0, i32 29
  br label %15

15:                                               ; preds = %33, %13
  %16 = phi i32 [ 1000, %13 ], [ %34, %33 ]
  %17 = call i32 @prepare_to_wait_event(ptr noundef %14, ptr noundef nonnull %2, i32 noundef 2) #15
  %18 = load volatile i32, ptr %5, align 4
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load volatile i32, ptr %5, align 4
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  br label %25

25:                                               ; preds = %21, %15
  %26 = phi i1 [ false, %15 ], [ %24, %21 ]
  %27 = xor i1 %26, true
  %28 = icmp ne i32 %16, 0
  %29 = select i1 %27, i1 true, i1 %28
  %30 = select i1 %29, i32 %16, i32 1
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %26, i1 true, i1 %31
  br i1 %32, label %35, label %33

33:                                               ; preds = %25
  %34 = call i32 @schedule_timeout(i32 noundef %30) #15
  br label %15

35:                                               ; preds = %25
  call void @finish_wait(ptr noundef %14, ptr noundef nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #15
  br i1 %31, label %36, label %41

36:                                               ; preds = %35
  %37 = load i32, ptr @hid_debug, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.6) #16
  br label %41

41:                                               ; preds = %39, %36, %35, %9
  %42 = phi i32 [ -1, %39 ], [ -1, %36 ], [ 0, %35 ], [ 0, %9 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhid_start(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18
  %3 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -28
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %4, i32 36
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 -128
  %10 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 33
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.usbhid_device, ptr %11, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %12) #15
  %13 = getelementptr inbounds %struct.usbhid_device, ptr %11, i32 0, i32 24
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %13) #15
  %14 = getelementptr inbounds %struct.usbhid_device, ptr %11, i32 0, i32 3
  store i32 64, ptr %14, align 4
  %15 = getelementptr %struct.hid_device, ptr %0, i32 0, i32 15, i32 0
  %16 = getelementptr %struct.hid_device, ptr %0, i32 0, i32 15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %35, label %19

19:                                               ; preds = %31, %1
  %20 = phi i32 [ %32, %31 ], [ 64, %1 ]
  %21 = phi ptr [ %33, %31 ], [ %17, %1 ]
  %22 = getelementptr inbounds %struct.hid_report, ptr %21, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, -1
  %25 = lshr i32 %24, 3
  %26 = load i32, ptr %15, align 4
  %27 = add i32 %26, 1
  %28 = add i32 %27, %25
  %29 = icmp ult i32 %20, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  store i32 %28, ptr %14, align 4
  br label %31

31:                                               ; preds = %30, %19
  %32 = phi i32 [ %20, %19 ], [ %28, %30 ]
  %33 = load ptr, ptr %21, align 4
  %34 = icmp eq ptr %33, %16
  br i1 %34, label %35, label %19

35:                                               ; preds = %31, %1
  %36 = phi i32 [ 64, %1 ], [ %32, %31 ]
  %37 = getelementptr %struct.hid_device, ptr %0, i32 0, i32 15, i32 1
  %38 = getelementptr %struct.hid_device, ptr %0, i32 0, i32 15, i32 1, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, %38
  br i1 %40, label %57, label %41

41:                                               ; preds = %53, %35
  %42 = phi i32 [ %54, %53 ], [ %36, %35 ]
  %43 = phi ptr [ %55, %53 ], [ %39, %35 ]
  %44 = getelementptr inbounds %struct.hid_report, ptr %43, i32 0, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, -1
  %47 = lshr i32 %46, 3
  %48 = load i32, ptr %37, align 4
  %49 = add i32 %48, 1
  %50 = add i32 %49, %47
  %51 = icmp ult i32 %42, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  store i32 %50, ptr %14, align 4
  br label %53

53:                                               ; preds = %52, %41
  %54 = phi i32 [ %42, %41 ], [ %50, %52 ]
  %55 = load ptr, ptr %43, align 4
  %56 = icmp eq ptr %55, %38
  br i1 %56, label %57, label %41

57:                                               ; preds = %53, %35
  %58 = phi i32 [ %36, %35 ], [ %54, %53 ]
  %59 = getelementptr %struct.hid_device, ptr %0, i32 0, i32 15, i32 2
  %60 = getelementptr %struct.hid_device, ptr %0, i32 0, i32 15, i32 2, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %79, label %63

63:                                               ; preds = %75, %57
  %64 = phi i32 [ %76, %75 ], [ %58, %57 ]
  %65 = phi ptr [ %77, %75 ], [ %61, %57 ]
  %66 = getelementptr inbounds %struct.hid_report, ptr %65, i32 0, i32 7
  %67 = load i32, ptr %66, align 4
  %68 = add i32 %67, -1
  %69 = lshr i32 %68, 3
  %70 = load i32, ptr %59, align 4
  %71 = add i32 %70, 1
  %72 = add i32 %71, %69
  %73 = icmp ult i32 %64, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  store i32 %72, ptr %14, align 4
  br label %75

75:                                               ; preds = %74, %63
  %76 = phi i32 [ %64, %63 ], [ %72, %74 ]
  %77 = load ptr, ptr %65, align 4
  %78 = icmp eq ptr %77, %60
  br i1 %78, label %79, label %63

79:                                               ; preds = %75, %57
  %80 = phi i32 [ %58, %57 ], [ %76, %75 ]
  %81 = icmp ugt i32 %80, 16384
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 16384, ptr %14, align 4
  br label %83

83:                                               ; preds = %82, %79
  %84 = load ptr, ptr %16, align 4
  %85 = icmp eq ptr %84, %16
  br i1 %85, label %105, label %86

86:                                               ; preds = %83
  %87 = load i32, ptr %15, align 4
  %88 = add i32 %87, 1
  br label %89

89:                                               ; preds = %89, %86
  %90 = phi i32 [ %99, %89 ], [ 0, %86 ]
  %91 = phi i32 [ %100, %89 ], [ 0, %86 ]
  %92 = phi ptr [ %101, %89 ], [ %84, %86 ]
  %93 = getelementptr inbounds %struct.hid_report, ptr %92, i32 0, i32 7
  %94 = load i32, ptr %93, align 4
  %95 = add i32 %94, -1
  %96 = lshr i32 %95, 3
  %97 = add i32 %88, %96
  %98 = icmp ult i32 %91, %97
  %99 = select i1 %98, i32 %97, i32 %90
  %100 = tail call i32 @llvm.umax.i32(i32 %91, i32 %97)
  %101 = load ptr, ptr %92, align 4
  %102 = icmp eq ptr %101, %16
  br i1 %102, label %103, label %89

103:                                              ; preds = %89
  %104 = tail call i32 @llvm.umin.i32(i32 %99, i32 16384)
  br label %105

105:                                              ; preds = %103, %83
  %106 = phi i32 [ 0, %83 ], [ %104, %103 ]
  %107 = load ptr, ptr %10, align 8
  %108 = getelementptr inbounds %struct.usbhid_device, ptr %107, i32 0, i32 3
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr inbounds %struct.usbhid_device, ptr %107, i32 0, i32 6
  %111 = tail call ptr @usb_alloc_coherent(ptr noundef %9, i32 noundef %109, i32 noundef 3264, ptr noundef %110) #15
  %112 = getelementptr inbounds %struct.usbhid_device, ptr %107, i32 0, i32 5
  store ptr %111, ptr %112, align 4
  %113 = load i32, ptr %108, align 4
  %114 = getelementptr inbounds %struct.usbhid_device, ptr %107, i32 0, i32 20
  %115 = tail call ptr @usb_alloc_coherent(ptr noundef %9, i32 noundef %113, i32 noundef 3264, ptr noundef %114) #15
  %116 = getelementptr inbounds %struct.usbhid_device, ptr %107, i32 0, i32 19
  store ptr %115, ptr %116, align 4
  %117 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %118 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %117, i32 noundef 3264, i32 noundef 8) #17
  %119 = getelementptr inbounds %struct.usbhid_device, ptr %107, i32 0, i32 8
  store ptr %118, ptr %119, align 4
  %120 = load i32, ptr %108, align 4
  %121 = getelementptr inbounds %struct.usbhid_device, ptr %107, i32 0, i32 13
  %122 = tail call ptr @usb_alloc_coherent(ptr noundef %9, i32 noundef %120, i32 noundef 3264, ptr noundef %121) #15
  %123 = getelementptr inbounds %struct.usbhid_device, ptr %107, i32 0, i32 12
  store ptr %122, ptr %123, align 4
  %124 = load ptr, ptr %112, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %367, label %126

126:                                              ; preds = %105
  %127 = load ptr, ptr %116, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %367, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr %119, align 4
  %131 = icmp ne ptr %130, null
  %132 = icmp ne ptr %122, null
  %133 = select i1 %131, i1 %132, i1 false
  br i1 %133, label %134, label %367

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 4
  %136 = load i8, ptr %135, align 4
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %276, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.usb_host_interface, ptr %6, i32 0, i32 3
  %140 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 25
  %141 = getelementptr i8, ptr %8, i32 -100
  %142 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 30
  %143 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 4
  %144 = getelementptr inbounds %struct.usbhid_device, ptr %11, i32 0, i32 4
  %145 = getelementptr inbounds %struct.usbhid_device, ptr %11, i32 0, i32 5
  %146 = getelementptr inbounds %struct.usbhid_device, ptr %11, i32 0, i32 6
  %147 = getelementptr inbounds %struct.usbhid_device, ptr %11, i32 0, i32 15
  %148 = getelementptr inbounds %struct.usbhid_device, ptr %11, i32 0, i32 19
  %149 = getelementptr inbounds %struct.usbhid_device, ptr %11, i32 0, i32 20
  br label %150

150:                                              ; preds = %271, %138
  %151 = phi i32 [ 0, %138 ], [ %272, %271 ]
  %152 = load ptr, ptr %139, align 4
  %153 = getelementptr %struct.usb_host_endpoint, ptr %152, i32 %151
  %154 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %153, i32 0, i32 3
  %155 = load i8, ptr %154, align 1
  %156 = and i8 %155, 3
  %157 = icmp eq i8 %156, 3
  br i1 %157, label %158, label %271

158:                                              ; preds = %150
  %159 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %153, i32 0, i32 5
  %160 = load i8, ptr %159, align 1
  %161 = zext i8 %160 to i32
  %162 = load i32, ptr %140, align 8
  %163 = and i32 %162, 268435456
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %175, label %165

165:                                              ; preds = %158
  %166 = load i32, ptr %141, align 4
  %167 = icmp eq i32 %166, 3
  br i1 %167, label %168, label %175

168:                                              ; preds = %165
  %169 = shl nuw nsw i32 %161, 3
  %170 = icmp eq i8 %160, 0
  %171 = tail call i32 @llvm.ctlz.i32(i32 %169, i1 false) #15, !range !13
  %172 = sub nuw nsw i32 32, %171
  %173 = select i1 %170, i32 0, i32 %172
  %174 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %142, i32 noundef %161, i32 noundef %173) #16
  br label %175

175:                                              ; preds = %168, %165, %158
  %176 = phi i32 [ %173, %168 ], [ %161, %165 ], [ %161, %158 ]
  %177 = load ptr, ptr %143, align 8
  %178 = getelementptr inbounds %struct.hid_collection, ptr %177, i32 0, i32 2
  %179 = load i32, ptr %178, align 4
  switch i32 %179, label %192 [
    i32 65538, label %180
    i32 65540, label %184
    i32 65542, label %188
  ]

180:                                              ; preds = %175
  %181 = load i32, ptr @hid_mousepoll_interval, align 4
  %182 = icmp eq i32 %181, 0
  %183 = select i1 %182, i32 %176, i32 %181
  br label %192

184:                                              ; preds = %175
  %185 = load i32, ptr @hid_jspoll_interval, align 4
  %186 = icmp eq i32 %185, 0
  %187 = select i1 %186, i32 %176, i32 %185
  br label %192

188:                                              ; preds = %175
  %189 = load i32, ptr @hid_kbpoll_interval, align 4
  %190 = icmp eq i32 %189, 0
  %191 = select i1 %190, i32 %176, i32 %189
  br label %192

192:                                              ; preds = %188, %184, %180, %175
  %193 = phi i32 [ %176, %175 ], [ %183, %180 ], [ %187, %184 ], [ %191, %188 ]
  %194 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %153, i32 0, i32 2
  %195 = load i8, ptr %194, align 1
  %196 = icmp sgt i8 %195, -1
  br i1 %196, label %227, label %197

197:                                              ; preds = %192
  %198 = load ptr, ptr %144, align 4
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %271

200:                                              ; preds = %197
  %201 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #15
  store ptr %201, ptr %144, align 4
  %202 = icmp eq ptr %201, null
  br i1 %202, label %367, label %203

203:                                              ; preds = %200
  %204 = load i8, ptr %194, align 1
  %205 = zext i8 %204 to i32
  %206 = load i32, ptr %9, align 8
  %207 = shl i32 %206, 8
  %208 = shl nuw nsw i32 %205, 15
  %209 = or i32 %208, %207
  %210 = or i32 %209, 1073741952
  %211 = load ptr, ptr %145, align 4
  %212 = getelementptr inbounds %struct.urb, ptr %201, i32 0, i32 8
  store ptr %9, ptr %212, align 4
  %213 = getelementptr inbounds %struct.urb, ptr %201, i32 0, i32 10
  store i32 %210, ptr %213, align 4
  %214 = getelementptr inbounds %struct.urb, ptr %201, i32 0, i32 14
  store ptr %211, ptr %214, align 4
  %215 = getelementptr inbounds %struct.urb, ptr %201, i32 0, i32 19
  store i32 %106, ptr %215, align 4
  %216 = getelementptr inbounds %struct.urb, ptr %201, i32 0, i32 28
  store ptr @hid_irq_in, ptr %216, align 4
  %217 = getelementptr inbounds %struct.urb, ptr %201, i32 0, i32 27
  store ptr %0, ptr %217, align 4
  %218 = load i32, ptr %141, align 4
  %219 = icmp eq i32 %218, 3
  %220 = icmp ugt i32 %218, 4
  %221 = or i1 %219, %220
  br i1 %221, label %222, label %257

222:                                              ; preds = %203
  %223 = tail call i32 @llvm.smax.i32(i32 %193, i32 1) #15
  %224 = tail call i32 @llvm.umin.i32(i32 %223, i32 16) #15
  %225 = add nsw i32 %224, -1
  %226 = shl nuw nsw i32 1, %225
  br label %257

227:                                              ; preds = %192
  %228 = load ptr, ptr %147, align 4
  %229 = icmp eq ptr %228, null
  br i1 %229, label %230, label %271

230:                                              ; preds = %227
  %231 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #15
  store ptr %231, ptr %147, align 4
  %232 = icmp eq ptr %231, null
  br i1 %232, label %367, label %233

233:                                              ; preds = %230
  %234 = load i8, ptr %194, align 1
  %235 = zext i8 %234 to i32
  %236 = load i32, ptr %9, align 8
  %237 = shl i32 %236, 8
  %238 = shl nuw nsw i32 %235, 15
  %239 = or i32 %238, %237
  %240 = or i32 %239, 1073741824
  %241 = load ptr, ptr %148, align 4
  %242 = getelementptr inbounds %struct.urb, ptr %231, i32 0, i32 8
  store ptr %9, ptr %242, align 4
  %243 = getelementptr inbounds %struct.urb, ptr %231, i32 0, i32 10
  store i32 %240, ptr %243, align 4
  %244 = getelementptr inbounds %struct.urb, ptr %231, i32 0, i32 14
  store ptr %241, ptr %244, align 4
  %245 = getelementptr inbounds %struct.urb, ptr %231, i32 0, i32 19
  store i32 0, ptr %245, align 4
  %246 = getelementptr inbounds %struct.urb, ptr %231, i32 0, i32 28
  store ptr @hid_irq_out, ptr %246, align 4
  %247 = getelementptr inbounds %struct.urb, ptr %231, i32 0, i32 27
  store ptr %0, ptr %247, align 4
  %248 = load i32, ptr %141, align 4
  %249 = icmp eq i32 %248, 3
  %250 = icmp ugt i32 %248, 4
  %251 = or i1 %249, %250
  br i1 %251, label %252, label %257

252:                                              ; preds = %233
  %253 = tail call i32 @llvm.smax.i32(i32 %193, i32 1) #15
  %254 = tail call i32 @llvm.umin.i32(i32 %253, i32 16) #15
  %255 = add nsw i32 %254, -1
  %256 = shl nuw nsw i32 1, %255
  br label %257

257:                                              ; preds = %252, %233, %222, %203
  %258 = phi ptr [ %201, %203 ], [ %201, %222 ], [ %231, %233 ], [ %231, %252 ]
  %259 = phi i32 [ %193, %203 ], [ %226, %222 ], [ %193, %233 ], [ %256, %252 ]
  %260 = phi ptr [ %146, %203 ], [ %146, %222 ], [ %149, %233 ], [ %149, %252 ]
  %261 = phi ptr [ %144, %203 ], [ %144, %222 ], [ %147, %233 ], [ %147, %252 ]
  %262 = getelementptr inbounds %struct.urb, ptr %258, i32 0, i32 25
  store i32 %259, ptr %262, align 4
  %263 = getelementptr inbounds %struct.urb, ptr %258, i32 0, i32 23
  store i32 -1, ptr %263, align 4
  %264 = load i32, ptr %260, align 4
  %265 = load ptr, ptr %261, align 4
  %266 = getelementptr inbounds %struct.urb, ptr %265, i32 0, i32 15
  store i32 %264, ptr %266, align 4
  %267 = load ptr, ptr %261, align 4
  %268 = getelementptr inbounds %struct.urb, ptr %267, i32 0, i32 13
  %269 = load i32, ptr %268, align 4
  %270 = or i32 %269, 4
  store i32 %270, ptr %268, align 4
  br label %271

271:                                              ; preds = %257, %227, %197, %150
  %272 = add nuw nsw i32 %151, 1
  %273 = load i8, ptr %135, align 4
  %274 = zext i8 %273 to i32
  %275 = icmp ult i32 %272, %274
  br i1 %275, label %150, label %276

276:                                              ; preds = %271, %134
  %277 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #15
  %278 = getelementptr inbounds %struct.usbhid_device, ptr %11, i32 0, i32 7
  store ptr %277, ptr %278, align 4
  %279 = icmp eq ptr %277, null
  br i1 %279, label %367, label %280

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.usbhid_device, ptr %11, i32 0, i32 8
  %282 = load ptr, ptr %281, align 4
  %283 = getelementptr inbounds %struct.usbhid_device, ptr %11, i32 0, i32 12
  %284 = load ptr, ptr %283, align 4
  %285 = getelementptr inbounds %struct.urb, ptr %277, i32 0, i32 8
  store ptr %9, ptr %285, align 4
  %286 = getelementptr inbounds %struct.urb, ptr %277, i32 0, i32 10
  store i32 0, ptr %286, align 4
  %287 = getelementptr inbounds %struct.urb, ptr %277, i32 0, i32 21
  store ptr %282, ptr %287, align 4
  %288 = getelementptr inbounds %struct.urb, ptr %277, i32 0, i32 14
  store ptr %284, ptr %288, align 4
  %289 = getelementptr inbounds %struct.urb, ptr %277, i32 0, i32 19
  store i32 1, ptr %289, align 4
  %290 = getelementptr inbounds %struct.urb, ptr %277, i32 0, i32 28
  store ptr @hid_ctrl, ptr %290, align 4
  %291 = getelementptr inbounds %struct.urb, ptr %277, i32 0, i32 27
  store ptr %0, ptr %291, align 4
  %292 = getelementptr inbounds %struct.usbhid_device, ptr %11, i32 0, i32 13
  %293 = load i32, ptr %292, align 4
  %294 = load ptr, ptr %278, align 4
  %295 = getelementptr inbounds %struct.urb, ptr %294, i32 0, i32 15
  store i32 %293, ptr %295, align 4
  %296 = load ptr, ptr %278, align 4
  %297 = getelementptr inbounds %struct.urb, ptr %296, i32 0, i32 13
  %298 = load i32, ptr %297, align 4
  %299 = or i32 %298, 4
  store i32 %299, ptr %297, align 4
  tail call void @_set_bit(i32 noundef 8, ptr noundef %13) #15
  %300 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 25
  %301 = load i32, ptr %300, align 8
  %302 = and i32 %301, 1024
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %319, label %304

304:                                              ; preds = %280
  %305 = getelementptr inbounds %struct.usbhid_device, ptr %11, i32 0, i32 1
  %306 = load ptr, ptr %305, align 4
  %307 = tail call i32 @usb_autopm_get_interface(ptr noundef %306) #15
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %367

309:                                              ; preds = %304
  tail call void @_set_bit(i32 noundef 14, ptr noundef %13) #15
  %310 = load ptr, ptr %305, align 4
  %311 = getelementptr inbounds %struct.usb_interface, ptr %310, i32 0, i32 6
  %312 = load i8, ptr %311, align 8
  %313 = or i8 %312, 8
  store i8 %313, ptr %311, align 8
  %314 = tail call fastcc i32 @hid_start_in(ptr noundef %0)
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %317, label %316

316:                                              ; preds = %309
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.15, i32 noundef %314) #16
  br label %317

317:                                              ; preds = %316, %309
  %318 = load ptr, ptr %305, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %318) #15
  br label %319

319:                                              ; preds = %317, %280
  %320 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 6
  %321 = load i8, ptr %320, align 2
  %322 = icmp eq i8 %321, 1
  br i1 %322, label %323, label %394

323:                                              ; preds = %319
  %324 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 7
  %325 = load i8, ptr %324, align 1
  %326 = icmp eq i8 %325, 1
  br i1 %326, label %327, label %394

327:                                              ; preds = %323
  %328 = load ptr, ptr %38, align 4
  %329 = icmp eq ptr %328, %38
  br i1 %329, label %365, label %333

330:                                              ; preds = %356, %333
  %331 = load ptr, ptr %334, align 4
  %332 = icmp eq ptr %331, %38
  br i1 %332, label %365, label %333

333:                                              ; preds = %330, %327
  %334 = phi ptr [ %331, %330 ], [ %328, %327 ]
  %335 = getelementptr inbounds %struct.hid_report, ptr %334, i32 0, i32 6
  %336 = load i32, ptr %335, align 4
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %330, label %338

338:                                              ; preds = %356, %333
  %339 = phi i32 [ %357, %356 ], [ 0, %333 ]
  %340 = getelementptr %struct.hid_report, ptr %334, i32 0, i32 5, i32 %339
  %341 = load ptr, ptr %340, align 4
  %342 = getelementptr inbounds %struct.hid_field, ptr %341, i32 0, i32 4
  %343 = load i32, ptr %342, align 4
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %356, label %345

345:                                              ; preds = %338
  %346 = getelementptr inbounds %struct.hid_field, ptr %341, i32 0, i32 3
  %347 = load ptr, ptr %346, align 4
  br label %348

348:                                              ; preds = %353, %345
  %349 = phi i32 [ 0, %345 ], [ %354, %353 ]
  %350 = getelementptr %struct.hid_usage, ptr %347, i32 %349
  %351 = load i32, ptr %350, align 4
  %352 = icmp eq i32 %351, 524289
  br i1 %352, label %359, label %353

353:                                              ; preds = %348
  %354 = add nuw i32 %349, 1
  %355 = icmp eq i32 %354, %343
  br i1 %355, label %356, label %348

356:                                              ; preds = %353, %338
  %357 = add nuw i32 %339, 1
  %358 = icmp eq i32 %357, %336
  br i1 %358, label %330, label %338

359:                                              ; preds = %348
  %360 = icmp eq i32 %349, -1
  br i1 %360, label %365, label %361

361:                                              ; preds = %359
  %362 = tail call i32 @hid_set_field(ptr noundef %341, i32 noundef %349, i32 noundef 0) #15
  %363 = getelementptr inbounds %struct.hid_field, ptr %341, i32 0, i32 17
  %364 = load ptr, ptr %363, align 4
  tail call fastcc void @usbhid_submit_report(ptr noundef %0, ptr noundef %364, i8 noundef zeroext 0) #15
  br label %365

365:                                              ; preds = %361, %359, %330, %327
  %366 = tail call i32 @device_set_wakeup_enable(ptr noundef %8, i1 noundef zeroext true) #15
  br label %394

367:                                              ; preds = %304, %276, %230, %200, %129, %126, %105
  %368 = phi i32 [ %307, %304 ], [ -12, %129 ], [ -12, %276 ], [ -12, %126 ], [ -12, %105 ], [ -12, %230 ], [ -12, %200 ]
  %369 = getelementptr inbounds %struct.usbhid_device, ptr %11, i32 0, i32 4
  %370 = load ptr, ptr %369, align 4
  tail call void @usb_free_urb(ptr noundef %370) #15
  %371 = getelementptr inbounds %struct.usbhid_device, ptr %11, i32 0, i32 15
  %372 = load ptr, ptr %371, align 4
  tail call void @usb_free_urb(ptr noundef %372) #15
  %373 = getelementptr inbounds %struct.usbhid_device, ptr %11, i32 0, i32 7
  %374 = load ptr, ptr %373, align 4
  tail call void @usb_free_urb(ptr noundef %374) #15
  store ptr null, ptr %369, align 4
  store ptr null, ptr %371, align 4
  store ptr null, ptr %373, align 4
  %375 = load ptr, ptr %10, align 8
  %376 = getelementptr inbounds %struct.usbhid_device, ptr %375, i32 0, i32 3
  %377 = load i32, ptr %376, align 4
  %378 = getelementptr inbounds %struct.usbhid_device, ptr %375, i32 0, i32 5
  %379 = load ptr, ptr %378, align 4
  %380 = getelementptr inbounds %struct.usbhid_device, ptr %375, i32 0, i32 6
  %381 = load i32, ptr %380, align 4
  tail call void @usb_free_coherent(ptr noundef %9, i32 noundef %377, ptr noundef %379, i32 noundef %381) #15
  %382 = load i32, ptr %376, align 4
  %383 = getelementptr inbounds %struct.usbhid_device, ptr %375, i32 0, i32 19
  %384 = load ptr, ptr %383, align 4
  %385 = getelementptr inbounds %struct.usbhid_device, ptr %375, i32 0, i32 20
  %386 = load i32, ptr %385, align 4
  tail call void @usb_free_coherent(ptr noundef %9, i32 noundef %382, ptr noundef %384, i32 noundef %386) #15
  %387 = getelementptr inbounds %struct.usbhid_device, ptr %375, i32 0, i32 8
  %388 = load ptr, ptr %387, align 4
  tail call void @kfree(ptr noundef %388) #15
  %389 = load i32, ptr %376, align 4
  %390 = getelementptr inbounds %struct.usbhid_device, ptr %375, i32 0, i32 12
  %391 = load ptr, ptr %390, align 4
  %392 = getelementptr inbounds %struct.usbhid_device, ptr %375, i32 0, i32 13
  %393 = load i32, ptr %392, align 4
  tail call void @usb_free_coherent(ptr noundef %9, i32 noundef %389, ptr noundef %391, i32 noundef %393) #15
  br label %394

394:                                              ; preds = %367, %365, %323, %319
  %395 = phi i32 [ %368, %367 ], [ 0, %365 ], [ 0, %323 ], [ 0, %319 ]
  tail call void @mutex_unlock(ptr noundef %12) #15
  ret i32 %395
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usbhid_stop(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 33
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !14

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1211, i32 noundef 9, ptr noundef null) #15
  br label %87

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 25
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 1024
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 24
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %12) #15
  %13 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 6
  %16 = load i8, ptr %15, align 8
  %17 = and i8 %16, -9
  store i8 %17, ptr %15, align 8
  br label %18

18:                                               ; preds = %11, %6
  %19 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %19) #15
  %20 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 24
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %20) #15
  %21 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 23
  tail call void @_raw_spin_lock_irq(ptr noundef %21) #15
  tail call void @_set_bit(i32 noundef 7, ptr noundef %20) #15
  %22 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 11
  %23 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 10
  %24 = load i8, ptr %22, align 1
  %25 = load i8, ptr %23, align 4
  %26 = icmp eq i8 %24, %25
  br i1 %26, label %46, label %27

27:                                               ; preds = %41, %18
  %28 = phi i8 [ %42, %41 ], [ %25, %18 ]
  %29 = phi i8 [ %44, %41 ], [ %24, %18 ]
  %30 = zext i8 %29 to i32
  %31 = getelementptr %struct.usbhid_device, ptr %3, i32 0, i32 9, i32 %30
  %32 = load i8, ptr %31, align 4
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = getelementptr %struct.usbhid_device, ptr %3, i32 0, i32 9, i32 %30, i32 2
  %36 = load ptr, ptr %35, align 4
  tail call void @kfree(ptr noundef %36) #15
  %37 = load i8, ptr %22, align 1
  %38 = zext i8 %37 to i32
  %39 = getelementptr %struct.usbhid_device, ptr %3, i32 0, i32 9, i32 %38, i32 2
  store ptr null, ptr %39, align 4
  %40 = load i8, ptr %23, align 4
  br label %41

41:                                               ; preds = %34, %27
  %42 = phi i8 [ %40, %34 ], [ %28, %27 ]
  %43 = phi i8 [ %37, %34 ], [ %29, %27 ]
  %44 = add i8 %43, 1
  store i8 %44, ptr %22, align 1
  %45 = icmp eq i8 %44, %42
  br i1 %45, label %46, label %27

46:                                               ; preds = %41, %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %47 = load i16, ptr %21, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  %49 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 4
  %50 = load ptr, ptr %49, align 4
  tail call void @usb_kill_urb(ptr noundef %50) #15
  %51 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 15
  %52 = load ptr, ptr %51, align 4
  tail call void @usb_kill_urb(ptr noundef %52) #15
  %53 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 7
  %54 = load ptr, ptr %53, align 4
  tail call void @usb_kill_urb(ptr noundef %54) #15
  %55 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 25
  %56 = tail call i32 @del_timer_sync(ptr noundef %55) #15
  %57 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 28
  %58 = tail call zeroext i1 @cancel_work_sync(ptr noundef %57) #15
  %59 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 24
  store i32 0, ptr %59, align 4
  %60 = load ptr, ptr %49, align 4
  tail call void @usb_free_urb(ptr noundef %60) #15
  %61 = load ptr, ptr %53, align 4
  tail call void @usb_free_urb(ptr noundef %61) #15
  %62 = load ptr, ptr %51, align 4
  tail call void @usb_free_urb(ptr noundef %62) #15
  store ptr null, ptr %49, align 4
  store ptr null, ptr %53, align 4
  store ptr null, ptr %51, align 4
  %63 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.device, ptr %64, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr i8, ptr %66, i32 -128
  %68 = load ptr, ptr %2, align 8
  %69 = getelementptr inbounds %struct.usbhid_device, ptr %68, i32 0, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.usbhid_device, ptr %68, i32 0, i32 5
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.usbhid_device, ptr %68, i32 0, i32 6
  %74 = load i32, ptr %73, align 4
  tail call void @usb_free_coherent(ptr noundef %67, i32 noundef %70, ptr noundef %72, i32 noundef %74) #15
  %75 = load i32, ptr %69, align 4
  %76 = getelementptr inbounds %struct.usbhid_device, ptr %68, i32 0, i32 19
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.usbhid_device, ptr %68, i32 0, i32 20
  %79 = load i32, ptr %78, align 4
  tail call void @usb_free_coherent(ptr noundef %67, i32 noundef %75, ptr noundef %77, i32 noundef %79) #15
  %80 = getelementptr inbounds %struct.usbhid_device, ptr %68, i32 0, i32 8
  %81 = load ptr, ptr %80, align 4
  tail call void @kfree(ptr noundef %81) #15
  %82 = load i32, ptr %69, align 4
  %83 = getelementptr inbounds %struct.usbhid_device, ptr %68, i32 0, i32 12
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.usbhid_device, ptr %68, i32 0, i32 13
  %86 = load i32, ptr %85, align 4
  tail call void @usb_free_coherent(ptr noundef %67, i32 noundef %82, ptr noundef %84, i32 noundef %86) #15
  tail call void @mutex_unlock(ptr noundef %19) #15
  br label %87

87:                                               ; preds = %46, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhid_open(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 33
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %4) #15
  %5 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 24
  tail call void @_set_bit(i32 noundef 13, ptr noundef %5) #15
  %6 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 25
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 1024
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @usb_autopm_get_interface(ptr noundef %12) #15
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr %11, align 4
  %17 = getelementptr inbounds %struct.usb_interface, ptr %16, i32 0, i32 6
  %18 = load i8, ptr %17, align 8
  %19 = or i8 %18, 8
  store i8 %19, ptr %17, align 8
  tail call void @_set_bit(i32 noundef 12, ptr noundef %5) #15
  tail call void @_set_bit(i32 noundef 14, ptr noundef %5) #15
  %20 = tail call fastcc i32 @hid_start_in(ptr noundef %0)
  switch i32 %20, label %21 [
    i32 0, label %28
    i32 -28, label %22
  ]

21:                                               ; preds = %15
  tail call fastcc void @hid_io_error(ptr noundef %0)
  br label %28

22:                                               ; preds = %15
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %5) #15
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %5) #15
  %23 = load ptr, ptr %11, align 4
  %24 = getelementptr inbounds %struct.usb_interface, ptr %23, i32 0, i32 6
  %25 = load i8, ptr %24, align 8
  %26 = and i8 %25, -9
  store i8 %26, ptr %24, align 8
  %27 = load ptr, ptr %11, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %27) #15
  br label %30

28:                                               ; preds = %21, %15
  %29 = load ptr, ptr %11, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %29) #15
  tail call void @msleep(i32 noundef 50) #15
  br label %30

30:                                               ; preds = %28, %22, %10
  %31 = phi i32 [ 13, %10 ], [ 12, %22 ], [ 12, %28 ]
  %32 = phi i32 [ -5, %10 ], [ -16, %22 ], [ 0, %28 ]
  tail call void @_clear_bit(i32 noundef %31, ptr noundef %5) #15
  br label %33

33:                                               ; preds = %30, %1
  %34 = phi i32 [ 0, %1 ], [ %32, %30 ]
  tail call void @mutex_unlock(ptr noundef %4) #15
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usbhid_close(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 33
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %4) #15
  %5 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 23
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #15
  %6 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 24
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %6) #15
  %7 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 25
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 1024
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %6) #15
  br label %12

12:                                               ; preds = %11, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %13 = load i16, ptr %5, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  %15 = load i32, ptr %7, align 8
  %16 = and i32 %15, 1024
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 25
  %20 = tail call i32 @del_timer_sync(ptr noundef %19) #15
  %21 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 28
  %22 = tail call zeroext i1 @cancel_work_sync(ptr noundef %21) #15
  %23 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  tail call void @usb_kill_urb(ptr noundef %24) #15
  %25 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.usb_interface, ptr %26, i32 0, i32 6
  %28 = load i8, ptr %27, align 8
  %29 = and i8 %28, -9
  store i8 %29, ptr %27, align 8
  br label %30

30:                                               ; preds = %18, %12
  tail call void @mutex_unlock(ptr noundef %4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhid_power(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 33
  %4 = load ptr, ptr %3, align 8
  switch i32 %1, label %12 [
    i32 32, label %5
    i32 2, label %9
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.usbhid_device, ptr %4, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @usb_autopm_get_interface(ptr noundef %7) #15
  br label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.usbhid_device, ptr %4, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %11) #15
  br label %12

12:                                               ; preds = %9, %5, %2
  %13 = phi i32 [ 0, %2 ], [ 0, %9 ], [ %8, %5 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhid_parse(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -28
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %4, i32 36
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 -128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store ptr null, ptr %2, align 4, !annotation !12
  %10 = tail call i32 @hid_lookup_quirk(ptr noundef %0) #15
  %11 = and i32 %10, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %157

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 6
  %15 = load i8, ptr %14, align 2
  %16 = icmp eq i8 %15, 1
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 7
  %19 = load i8, ptr %18, align 1
  %20 = add i8 %19, -1
  %21 = icmp ult i8 %20, 2
  %22 = or i32 %10, 8
  %23 = select i1 %21, i32 %22, i32 %10
  br label %24

24:                                               ; preds = %17, %13
  %25 = phi i32 [ %10, %13 ], [ %23, %17 ]
  %26 = getelementptr inbounds %struct.usb_host_interface, ptr %6, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.usb_host_interface, ptr %6, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = call i32 @__usb_get_extra_descriptor(ptr noundef %27, i32 noundef %29, i8 noundef zeroext 33, ptr noundef nonnull %2, i32 noundef 9) #15
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 4
  %34 = load i8, ptr %33, align 4
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.usb_host_interface, ptr %6, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.usb_host_endpoint, ptr %38, i32 0, i32 7
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.usb_host_endpoint, ptr %38, i32 0, i32 8
  %42 = load i32, ptr %41, align 4
  %43 = call i32 @__usb_get_extra_descriptor(ptr noundef %40, i32 noundef %42, i8 noundef zeroext 33, ptr noundef nonnull %2, i32 noundef 9) #15
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %36, %32
  %46 = load i32, ptr @hid_debug, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %157, label %48

48:                                               ; preds = %45
  %49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.6) #16
  br label %157

50:                                               ; preds = %36, %24
  %51 = load ptr, ptr %2, align 4
  %52 = load i8, ptr %51, align 1
  %53 = icmp ult i8 %52, 9
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, ptr @hid_debug, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %157, label %57

57:                                               ; preds = %54
  %58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.6) #16
  br label %157

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct.hid_descriptor, ptr %51, i32 0, i32 2
  %61 = load i16, ptr %60, align 1
  %62 = zext i16 %61 to i32
  %63 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 12
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.hid_descriptor, ptr %51, i32 0, i32 3
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 14
  store i32 %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.hid_descriptor, ptr %51, i32 0, i32 4
  %69 = load i8, ptr %68, align 1
  %70 = zext i8 %69 to i32
  %71 = load i8, ptr %51, align 1
  %72 = zext i8 %71 to i32
  %73 = add nsw i32 %72, -6
  %74 = udiv i32 %73, 3
  %75 = call i32 @llvm.smin.i32(i32 %74, i32 %70)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %94, label %77

77:                                               ; preds = %87, %59
  %78 = phi i32 [ %88, %87 ], [ 0, %59 ]
  %79 = phi i32 [ %89, %87 ], [ 0, %59 ]
  %80 = getelementptr %struct.hid_descriptor, ptr %51, i32 0, i32 5, i32 %79
  %81 = load i8, ptr %80, align 1
  %82 = icmp eq i8 %81, 34
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = getelementptr %struct.hid_descriptor, ptr %51, i32 0, i32 5, i32 %79, i32 1
  %85 = load i16, ptr %84, align 1
  %86 = zext i16 %85 to i32
  br label %87

87:                                               ; preds = %83, %77
  %88 = phi i32 [ %86, %83 ], [ %78, %77 ]
  %89 = add nuw nsw i32 %79, 1
  %90 = icmp eq i32 %89, %75
  br i1 %90, label %91, label %77

91:                                               ; preds = %87
  %92 = add i32 %88, -4097
  %93 = icmp ult i32 %92, -4096
  br i1 %93, label %94, label %100

94:                                               ; preds = %91, %59
  %95 = phi i32 [ %88, %91 ], [ 0, %59 ]
  %96 = load i32, ptr @hid_debug, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %157, label %98

98:                                               ; preds = %94
  %99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.6, i32 noundef %95) #16
  br label %157

100:                                              ; preds = %91
  %101 = call noalias align 64 ptr @__kmalloc(i32 noundef %88, i32 noundef 3264) #18
  %102 = icmp eq ptr %101, null
  br i1 %102, label %157, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 2
  %105 = load i8, ptr %104, align 2
  %106 = load i32, ptr %9, align 8
  %107 = shl i32 %106, 8
  %108 = or i32 %107, -2147483648
  %109 = zext i8 %105 to i16
  %110 = call i32 @usb_control_msg(ptr noundef %9, i32 noundef %108, i8 noundef zeroext 10, i8 noundef zeroext 33, i16 noundef zeroext 0, i16 noundef zeroext %109, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #15
  %111 = load i8, ptr %104, align 2
  call void @llvm.memset.p0.i32(ptr nonnull align 64 %101, i8 0, i32 %88, i1 false) #15
  %112 = zext i8 %111 to i16
  %113 = trunc i32 %88 to i16
  %114 = load i32, ptr %9, align 8
  %115 = shl i32 %114, 8
  %116 = or i32 %115, -2147483520
  %117 = call i32 @usb_control_msg(ptr noundef %9, i32 noundef %116, i8 noundef zeroext 6, i8 noundef zeroext -127, i16 noundef zeroext 8704, i16 noundef zeroext %112, ptr noundef nonnull %101, i16 noundef zeroext %113, i32 noundef 5000) #15
  %118 = icmp slt i32 %117, %88
  br i1 %118, label %119, label %136

119:                                              ; preds = %103
  %120 = load i32, ptr %9, align 8
  %121 = shl i32 %120, 8
  %122 = or i32 %121, -2147483520
  %123 = call i32 @usb_control_msg(ptr noundef %9, i32 noundef %122, i8 noundef zeroext 6, i8 noundef zeroext -127, i16 noundef zeroext 8704, i16 noundef zeroext %112, ptr noundef nonnull %101, i16 noundef zeroext %113, i32 noundef 5000) #15
  %124 = icmp slt i32 %123, %88
  br i1 %124, label %125, label %136

125:                                              ; preds = %119
  %126 = load i32, ptr %9, align 8
  %127 = shl i32 %126, 8
  %128 = or i32 %127, -2147483520
  %129 = call i32 @usb_control_msg(ptr noundef %9, i32 noundef %128, i8 noundef zeroext 6, i8 noundef zeroext -127, i16 noundef zeroext 8704, i16 noundef zeroext %112, ptr noundef nonnull %101, i16 noundef zeroext %113, i32 noundef 5000) #15
  %130 = icmp slt i32 %129, %88
  br i1 %130, label %131, label %136

131:                                              ; preds = %125
  %132 = load i32, ptr %9, align 8
  %133 = shl i32 %132, 8
  %134 = or i32 %133, -2147483520
  %135 = call i32 @usb_control_msg(ptr noundef %9, i32 noundef %134, i8 noundef zeroext 6, i8 noundef zeroext -127, i16 noundef zeroext 8704, i16 noundef zeroext %112, ptr noundef nonnull %101, i16 noundef zeroext %113, i32 noundef 5000) #15
  br label %136

136:                                              ; preds = %131, %125, %119, %103
  %137 = phi i32 [ %117, %103 ], [ %123, %119 ], [ %129, %125 ], [ %135, %131 ]
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load i32, ptr @hid_debug, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %139
  %143 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.6) #16
  br label %144

144:                                              ; preds = %142, %139
  call void @kfree(ptr noundef nonnull %101) #15
  br label %157

145:                                              ; preds = %136
  %146 = call i32 @hid_parse_report(ptr noundef %0, ptr noundef nonnull %101, i32 noundef %88) #15
  call void @kfree(ptr noundef nonnull %101) #15
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %145
  %149 = load i32, ptr @hid_debug, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %148
  %152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.6) #16
  br label %157

153:                                              ; preds = %145
  %154 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 25
  %155 = load i32, ptr %154, align 8
  %156 = or i32 %155, %25
  store i32 %156, ptr %154, align 8
  br label %157

157:                                              ; preds = %153, %151, %148, %144, %100, %98, %94, %57, %54, %48, %45, %1
  %158 = phi i32 [ 0, %153 ], [ -19, %1 ], [ -19, %48 ], [ -19, %45 ], [ -22, %57 ], [ -22, %54 ], [ -22, %98 ], [ -22, %94 ], [ -12, %100 ], [ %137, %144 ], [ %146, %151 ], [ %146, %148 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  ret i32 %158
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usbhid_request(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  switch i32 %2, label %7 [
    i32 1, label %5
    i32 9, label %4
  ]

4:                                                ; preds = %3
  br label %5

5:                                                ; preds = %4, %3
  %6 = phi i8 [ 0, %4 ], [ -128, %3 ]
  tail call fastcc void @usbhid_submit_report(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %6)
  br label %7

7:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhid_raw_request(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4, i32 noundef %5) #0 {
  switch i32 %5, label %84 [
    i32 1, label %7
    i32 9, label %41
  ]

7:                                                ; preds = %6
  %8 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 33
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 -128
  %15 = getelementptr inbounds %struct.usbhid_device, ptr %9, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.usb_interface, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  store i8 %1, ptr %2, align 1
  %19 = zext i8 %1 to i16
  %20 = icmp eq i8 %1, 0
  %21 = sext i1 %20 to i32
  %22 = add i32 %21, %3
  %23 = zext i1 %20 to i32
  %24 = getelementptr i8, ptr %2, i32 %23
  %25 = load i32, ptr %14, align 8
  %26 = shl i32 %25, 8
  %27 = or i32 %26, -2147483520
  %28 = zext i8 %4 to i16
  %29 = shl nuw i16 %28, 8
  %30 = add i16 %29, 256
  %31 = or i16 %30, %19
  %32 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %18, i32 0, i32 2
  %33 = load i8, ptr %32, align 2
  %34 = zext i8 %33 to i16
  %35 = trunc i32 %22 to i16
  %36 = tail call i32 @usb_control_msg(ptr noundef %14, i32 noundef %27, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext %31, i16 noundef zeroext %34, ptr noundef %24, i16 noundef zeroext %35, i32 noundef 5000) #15
  %37 = icmp sgt i32 %36, 0
  %38 = and i1 %20, %37
  %39 = zext i1 %38 to i32
  %40 = add i32 %36, %39
  br label %84

41:                                               ; preds = %6
  %42 = zext i8 %1 to i16
  %43 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 33
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.device, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.usbhid_device, ptr %44, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.usb_interface, ptr %50, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq i8 %4, 1
  br i1 %53, label %54, label %59

54:                                               ; preds = %41
  %55 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 25
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 131072
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54, %41
  br label %60

60:                                               ; preds = %59, %54
  %61 = phi i8 [ %1, %59 ], [ 0, %54 ]
  %62 = zext i8 %4 to i16
  %63 = getelementptr i8, ptr %48, i32 -128
  store i8 %61, ptr %2, align 1
  %64 = icmp eq i8 %61, 0
  %65 = sext i1 %64 to i32
  %66 = add i32 %65, %3
  %67 = zext i1 %64 to i32
  %68 = getelementptr i8, ptr %2, i32 %67
  %69 = load i32, ptr %63, align 8
  %70 = shl i32 %69, 8
  %71 = or i32 %70, -2147483648
  %72 = shl nuw i16 %62, 8
  %73 = add i16 %72, 256
  %74 = or i16 %73, %42
  %75 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %52, i32 0, i32 2
  %76 = load i8, ptr %75, align 2
  %77 = zext i8 %76 to i16
  %78 = trunc i32 %66 to i16
  %79 = tail call i32 @usb_control_msg(ptr noundef %63, i32 noundef %71, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext %74, i16 noundef zeroext %77, ptr noundef %68, i16 noundef zeroext %78, i32 noundef 5000) #15
  %80 = icmp sgt i32 %79, 0
  %81 = and i1 %64, %80
  %82 = zext i1 %81 to i32
  %83 = add i32 %79, %82
  br label %84

84:                                               ; preds = %60, %7, %6
  %85 = phi i32 [ %83, %60 ], [ %40, %7 ], [ -5, %6 ]
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhid_output_report(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 33
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !annotation !12
  %11 = getelementptr inbounds %struct.usbhid_device, ptr %6, i32 0, i32 15
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %3
  %15 = getelementptr i8, ptr %10, i32 -128
  %16 = load i8, ptr %1, align 1
  %17 = icmp eq i8 %16, 0
  %18 = sext i1 %17 to i32
  %19 = add i32 %18, %2
  %20 = zext i1 %17 to i32
  %21 = getelementptr i8, ptr %1, i32 %20
  %22 = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 10
  %23 = load i32, ptr %22, align 4
  %24 = call i32 @usb_interrupt_msg(ptr noundef %15, i32 noundef %23, ptr noundef %21, i32 noundef %19, ptr noundef nonnull %4, i32 noundef 5000) #15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %14
  %27 = load i32, ptr %4, align 4
  %28 = add i32 %27, %20
  br label %29

29:                                               ; preds = %26, %14, %3
  %30 = phi i32 [ -38, %3 ], [ %24, %14 ], [ %28, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhid_idle(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq i32 %3, 10
  br i1 %5, label %6, label %24

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 -28
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %10, i32 0, i32 2
  %12 = load i8, ptr %11, align 2
  %13 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 -128
  %16 = load i32, ptr %15, align 8
  %17 = shl i32 %16, 8
  %18 = or i32 %17, -2147483648
  %19 = shl i32 %2, 8
  %20 = or i32 %19, %1
  %21 = trunc i32 %20 to i16
  %22 = zext i8 %12 to i16
  %23 = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %18, i8 noundef zeroext 10, i8 noundef zeroext 33, i16 noundef zeroext %21, i16 noundef zeroext %22, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #15
  br label %24

24:                                               ; preds = %6, %4
  %25 = phi i32 [ %23, %6 ], [ -22, %4 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @usbhid_may_wakeup(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 11, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 11, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = icmp ne ptr %12, null
  br label %14

14:                                               ; preds = %10, %1
  %15 = phi i1 [ false, %1 ], [ %13, %10 ]
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @usbhid_find_interface(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @usb_find_interface(ptr noundef nonnull @hid_driver, i32 noundef %0) #15
  ret ptr %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_find_interface(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @hid_exit() #5 section ".exit.text" {
  tail call void @usb_deregister(ptr noundef nonnull @hid_driver) #15
  tail call void @hid_quirks_exit(i16 noundef zeroext 3) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_quirks_exit(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @hid_init() #5 section ".init.text" {
  %1 = tail call i32 @hid_quirks_init(ptr noundef nonnull @quirks_param, i16 noundef zeroext 3, i32 noundef 4) #15
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  %4 = tail call i32 @usb_register_driver(ptr noundef nonnull @hid_driver, ptr noundef null, ptr noundef nonnull @.str.25) #15
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #16
  br label %9

8:                                                ; preds = %3
  tail call void @hid_quirks_exit(i16 noundef zeroext 3) #15
  br label %9

9:                                                ; preds = %8, %6, %0
  %10 = phi i32 [ 0, %6 ], [ %1, %0 ], [ %4, %8 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hid_alloc_report_buf(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_output_report(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @usbhid_restart_out_queue(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usbhid_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %38, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.usbhid_device, ptr %0, i32 0, i32 24
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %7
  %13 = load volatile i32, ptr %8, align 4
  %14 = and i32 %13, 32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.usbhid_device, ptr %0, i32 0, i32 17
  %18 = load i8, ptr %17, align 4
  %19 = getelementptr inbounds %struct.usbhid_device, ptr %0, i32 0, i32 18
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %18, %20
  br i1 %21, label %38, label %22

22:                                               ; preds = %16
  %23 = tail call i32 @usb_autopm_get_interface_async(ptr noundef %3) #15
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %22
  %26 = load volatile i32, ptr %8, align 4
  %27 = and i32 %26, 32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %2, align 4
  tail call void @usb_autopm_put_interface_no_suspend(ptr noundef %30) #15
  br label %38

31:                                               ; preds = %25
  tail call void @_set_bit(i32 noundef 2, ptr noundef %8) #15
  %32 = tail call fastcc i32 @hid_submit_out(ptr noundef nonnull %5)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %8) #15
  %35 = load ptr, ptr %2, align 4
  tail call void @usb_autopm_put_interface_async(ptr noundef %35) #15
  br label %36

36:                                               ; preds = %34, %31
  %37 = getelementptr inbounds %struct.usbhid_device, ptr %0, i32 0, i32 29
  tail call void @__wake_up(ptr noundef %37, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %38

38:                                               ; preds = %36, %29, %22, %16, %12, %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_get_interface_no_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_block_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unpoison_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface_async(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @usbhid_restart_ctrl_queue(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usbhid_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !14

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 234, i32 noundef 9, ptr noundef null) #15
  br label %39

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.usbhid_device, ptr %0, i32 0, i32 24
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %8
  %14 = load volatile i32, ptr %9, align 4
  %15 = and i32 %14, 32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.usbhid_device, ptr %0, i32 0, i32 10
  %19 = load i8, ptr %18, align 4
  %20 = getelementptr inbounds %struct.usbhid_device, ptr %0, i32 0, i32 11
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %19, %21
  br i1 %22, label %39, label %23

23:                                               ; preds = %17
  %24 = tail call i32 @usb_autopm_get_interface_async(ptr noundef %3) #15
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %23
  %27 = load volatile i32, ptr %9, align 4
  %28 = and i32 %27, 32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %2, align 4
  tail call void @usb_autopm_put_interface_no_suspend(ptr noundef %31) #15
  br label %39

32:                                               ; preds = %26
  tail call void @_set_bit(i32 noundef 1, ptr noundef %9) #15
  %33 = tail call fastcc i32 @hid_submit_ctrl(ptr noundef nonnull %5)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %9) #15
  %36 = load ptr, ptr %2, align 4
  tail call void @usb_autopm_put_interface_async(ptr noundef %36) #15
  br label %37

37:                                               ; preds = %35, %32
  %38 = getelementptr inbounds %struct.usbhid_device, ptr %0, i32 0, i32 29
  tail call void @__wake_up(ptr noundef %38, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %39

39:                                               ; preds = %37, %30, %23, %17, %13, %8, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface_async(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface_no_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hid_submit_out(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 33
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 18
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr %struct.usbhid_device, ptr %3, i32 0, i32 16, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.usbhid_device, ptr %3, i32 0, i32 16, i32 %6, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.hid_report, ptr %8, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 7
  %14 = lshr i32 %13, 3
  %15 = getelementptr inbounds %struct.hid_report, ptr %8, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = add nuw nsw i32 %14, %18
  %20 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 15
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 19
  store i32 %19, ptr %22, align 4
  %23 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18
  %24 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 -128
  %29 = load ptr, ptr %20, align 4
  %30 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 8
  store ptr %28, ptr %30, align 4
  %31 = icmp eq ptr %10, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %1
  %33 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 19
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %20, align 4
  %36 = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 19
  %37 = load i32, ptr %36, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %34, ptr nonnull align 1 %10, i32 %37, i1 false)
  tail call void @kfree(ptr noundef nonnull %10) #15
  %38 = load i8, ptr %4, align 1
  %39 = zext i8 %38 to i32
  %40 = getelementptr %struct.usbhid_device, ptr %3, i32 0, i32 16, i32 %39, i32 1
  store ptr null, ptr %40, align 4
  br label %41

41:                                               ; preds = %32, %1
  %42 = load i32, ptr @hid_debug, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #16
  br label %46

46:                                               ; preds = %44, %41
  %47 = load ptr, ptr %20, align 4
  %48 = tail call i32 @usb_submit_urb(ptr noundef %47, i32 noundef 2592) #15
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.7, i32 noundef %48) #16
  br label %54

51:                                               ; preds = %46
  %52 = load volatile i32, ptr @jiffies, align 64
  %53 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 21
  store i32 %52, ptr %53, align 4
  br label %54

54:                                               ; preds = %51, %50
  %55 = phi i32 [ %48, %50 ], [ 0, %51 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hid_submit_ctrl(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 33
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 11
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr %struct.usbhid_device, ptr %3, i32 0, i32 9, i32 %6
  %8 = getelementptr %struct.usbhid_device, ptr %3, i32 0, i32 9, i32 %6, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.usbhid_device, ptr %3, i32 0, i32 9, i32 %6, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %7, align 4
  %13 = getelementptr inbounds %struct.hid_report, ptr %9, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 7
  %16 = lshr i32 %15, 3
  %17 = getelementptr inbounds %struct.hid_report, ptr %9, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = add nuw nsw i32 %16, %20
  %22 = icmp eq i8 %12, 0
  %23 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 -128
  %28 = load i32, ptr %27, align 8
  %29 = shl i32 %28, 8
  br i1 %22, label %30, label %42

30:                                               ; preds = %1
  %31 = or i32 %29, -2147483648
  %32 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 7
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.urb, ptr %33, i32 0, i32 10
  store i32 %31, ptr %34, align 4
  %35 = icmp eq ptr %11, null
  br i1 %35, label %80, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 12
  %38 = load ptr, ptr %37, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %38, ptr nonnull align 1 %11, i32 %21, i1 false)
  tail call void @kfree(ptr noundef nonnull %11) #15
  %39 = load i8, ptr %4, align 1
  %40 = zext i8 %39 to i32
  %41 = getelementptr %struct.usbhid_device, ptr %3, i32 0, i32 9, i32 %40, i32 2
  store ptr null, ptr %41, align 4
  br label %80

42:                                               ; preds = %1
  %43 = or i32 %29, -2147483520
  %44 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 7
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.urb, ptr %45, i32 0, i32 10
  store i32 %43, ptr %46, align 4
  %47 = load ptr, ptr %23, align 4
  %48 = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr i8, ptr %49, i32 -128
  %51 = load ptr, ptr %44, align 4
  %52 = getelementptr inbounds %struct.urb, ptr %51, i32 0, i32 10
  %53 = load i32, ptr %52, align 4
  %54 = lshr i32 %53, 15
  %55 = and i32 %54, 15
  %56 = and i32 %53, 128
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59, !prof !14

58:                                               ; preds = %42
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1984, i32 noundef 9, ptr noundef null) #15
  br label %59

59:                                               ; preds = %58, %42
  %60 = getelementptr %struct.usb_device, ptr %50, i32 0, i32 21, i32 %55
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %61, i32 0, i32 4
  %65 = load i16, ptr %64, align 1
  %66 = and i16 %65, 2047
  %67 = zext i16 %66 to i32
  %68 = add nsw i32 %67, -1
  br label %69

69:                                               ; preds = %63, %59
  %70 = phi i32 [ %68, %63 ], [ -1, %59 ]
  %71 = icmp eq i32 %21, 0
  %72 = zext i1 %71 to i32
  %73 = add nsw i32 %21, -1
  %74 = add nsw i32 %73, %72
  %75 = or i32 %70, %74
  %76 = add i32 %75, 1
  %77 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = tail call i32 @llvm.umin.i32(i32 %76, i32 %78)
  br label %80

80:                                               ; preds = %69, %36, %30
  %81 = phi i8 [ 9, %30 ], [ 9, %36 ], [ 1, %69 ]
  %82 = phi i32 [ %21, %30 ], [ %21, %36 ], [ %79, %69 ]
  %83 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 7
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.urb, ptr %84, i32 0, i32 19
  store i32 %82, ptr %85, align 4
  %86 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18
  %87 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.device, ptr %88, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr i8, ptr %90, i32 -128
  %92 = load ptr, ptr %83, align 4
  %93 = getelementptr inbounds %struct.urb, ptr %92, i32 0, i32 8
  store ptr %91, ptr %93, align 4
  %94 = or i8 %12, 33
  %95 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 8
  %96 = load ptr, ptr %95, align 4
  store i8 %94, ptr %96, align 1
  %97 = load ptr, ptr %95, align 4
  %98 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %97, i32 0, i32 1
  store i8 %81, ptr %98, align 1
  %99 = getelementptr inbounds %struct.hid_report, ptr %9, i32 0, i32 3
  %100 = load i32, ptr %99, align 4
  %101 = shl i32 %100, 8
  %102 = add i32 %101, 256
  %103 = load i32, ptr %17, align 4
  %104 = or i32 %102, %103
  %105 = trunc i32 %104 to i16
  %106 = load ptr, ptr %95, align 4
  %107 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %106, i32 0, i32 2
  store i16 %105, ptr %107, align 1
  %108 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 2
  %109 = load i32, ptr %108, align 4
  %110 = trunc i32 %109 to i16
  %111 = load ptr, ptr %95, align 4
  %112 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %111, i32 0, i32 3
  store i16 %110, ptr %112, align 1
  %113 = trunc i32 %82 to i16
  %114 = load ptr, ptr %95, align 4
  %115 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %114, i32 0, i32 4
  store i16 %113, ptr %115, align 1
  %116 = load i32, ptr @hid_debug, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %134, label %118

118:                                              ; preds = %80
  %119 = load ptr, ptr %95, align 4
  %120 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %119, i32 0, i32 1
  %121 = load i8, ptr %120, align 1
  %122 = icmp eq i8 %121, 9
  %123 = select i1 %122, ptr @.str.9, ptr @.str.10
  %124 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %119, i32 0, i32 2
  %125 = load i16, ptr %124, align 1
  %126 = zext i16 %125 to i32
  %127 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %119, i32 0, i32 3
  %128 = load i16, ptr %127, align 1
  %129 = zext i16 %128 to i32
  %130 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %119, i32 0, i32 4
  %131 = load i16, ptr %130, align 1
  %132 = zext i16 %131 to i32
  %133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, ptr noundef nonnull %123, i32 noundef %126, i32 noundef %129, i32 noundef %132) #16
  br label %134

134:                                              ; preds = %118, %80
  %135 = load ptr, ptr %83, align 4
  %136 = tail call i32 @usb_submit_urb(ptr noundef %135, i32 noundef 2592) #15
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.11, i32 noundef %136) #16
  br label %142

139:                                              ; preds = %134
  %140 = load volatile i32, ptr @jiffies, align 64
  %141 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 14
  store i32 %140, ptr %141, align 4
  br label %142

142:                                              ; preds = %139, %138
  %143 = phi i32 [ %136, %138 ], [ 0, %139 ]
  ret i32 %143
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hid_irq_in(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 33
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %56 [
    i32 0, label %8
    i32 -32, label %35
    i32 -104, label %46
    i32 -2, label %46
    i32 -108, label %46
    i32 -84, label %48
    i32 -71, label %48
    i32 -62, label %48
    i32 -110, label %48
  ]

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 27
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 24
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 8192
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %60, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.usb_interface, ptr %16, i32 0, i32 7, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i64 @ktime_get_mono_fast_ns() #15
  %20 = getelementptr i8, ptr %18, i32 296
  store volatile i64 %19, ptr %20, align 8
  %21 = load volatile i32, ptr %10, align 4
  %22 = and i32 %21, 4096
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %60

24:                                               ; preds = %14
  %25 = load ptr, ptr %2, align 4
  %26 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 14
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 20
  %29 = load i32, ptr %28, align 4
  %30 = tail call i32 @hid_input_report(ptr noundef %25, i32 noundef 0, ptr noundef %27, i32 noundef %29, i32 noundef 1) #15
  %31 = tail call i32 @hid_check_keys_pressed(ptr noundef %3) #15
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  tail call void @_set_bit(i32 noundef 10, ptr noundef %10) #15
  br label %60

34:                                               ; preds = %24
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %10) #15
  br label %60

35:                                               ; preds = %1
  %36 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.usb_interface, ptr %37, i32 0, i32 7, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i64 @ktime_get_mono_fast_ns() #15
  %41 = getelementptr i8, ptr %39, i32 296
  store volatile i64 %40, ptr %41, align 8
  %42 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 24
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %42) #15
  tail call void @_set_bit(i32 noundef 6, ptr noundef %42) #15
  %43 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 28
  %44 = load ptr, ptr @system_wq, align 4
  %45 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %44, ptr noundef %43) #15
  br label %79

46:                                               ; preds = %1, %1, %1
  %47 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 24
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %47) #15
  br label %79

48:                                               ; preds = %1, %1, %1, %1
  %49 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.usb_interface, ptr %50, i32 0, i32 7, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i64 @ktime_get_mono_fast_ns() #15
  %54 = getelementptr i8, ptr %52, i32 296
  store volatile i64 %53, ptr %54, align 8
  %55 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 24
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %55) #15
  tail call fastcc void @hid_io_error(ptr noundef %3)
  br label %79

56:                                               ; preds = %1
  %57 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 8
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.usb_device, ptr %58, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %59, ptr noundef nonnull @.str.16, i32 noundef %7) #16
  br label %60

60:                                               ; preds = %56, %34, %33, %14, %8
  %61 = tail call i32 @usb_submit_urb(ptr noundef %0, i32 noundef 2592) #15
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %79, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 24
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %64) #15
  %65 = icmp eq i32 %61, -1
  br i1 %65, label %79, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  %68 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.device, ptr %69, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr i8, ptr %71, i32 -64
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %struct.usb_bus, ptr %73, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr i8, ptr %71, i32 -124
  %77 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 2
  %78 = load i32, ptr %77, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.17, ptr noundef %75, ptr noundef %76, i32 noundef %78, i32 noundef %61) #16
  tail call fastcc void @hid_io_error(ptr noundef %3)
  br label %79

79:                                               ; preds = %66, %63, %60, %48, %46, %35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hid_irq_out(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 33
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %8 [
    i32 0, label %18
    i32 -108, label %12
    i32 -84, label %18
    i32 -71, label %18
    i32 -104, label %18
    i32 -2, label %18
  ]

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.18, i32 noundef %7) #16
  br label %18

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 23
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #15
  %15 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 17
  %16 = load i8, ptr %15, align 4
  %17 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 18
  store i8 %16, ptr %17, align 1
  br label %32

18:                                               ; preds = %8, %1, %1, %1, %1, %1
  %19 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 23
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #15
  %21 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 18
  %22 = load i8, ptr %21, align 1
  %23 = add i8 %22, 1
  %24 = and i8 %23, 63
  store i8 %24, ptr %21, align 1
  %25 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 17
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, %24
  br i1 %27, label %32, label %28

28:                                               ; preds = %18
  %29 = tail call fastcc i32 @hid_submit_out(ptr noundef %3)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %20) #15
  br label %39

32:                                               ; preds = %28, %18, %12
  %33 = phi i32 [ %20, %18 ], [ %20, %28 ], [ %14, %12 ]
  %34 = phi ptr [ %19, %18 ], [ %19, %28 ], [ %13, %12 ]
  %35 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 24
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %35) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %33) #15
  %36 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  tail call void @usb_autopm_put_interface_async(ptr noundef %37) #15
  %38 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 29
  tail call void @__wake_up(ptr noundef %38, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %39

39:                                               ; preds = %32, %31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hid_ctrl(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 33
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %25 [
    i32 0, label %8
    i32 -108, label %29
    i32 -84, label %35
    i32 -71, label %35
    i32 -104, label %35
    i32 -2, label %35
    i32 -32, label %35
  ]

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 11
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = getelementptr %struct.usbhid_device, ptr %5, i32 0, i32 9, i32 %11
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, -128
  br i1 %14, label %15, label %35

15:                                               ; preds = %8
  %16 = getelementptr %struct.usbhid_device, ptr %5, i32 0, i32 9, i32 %11, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.hid_report, ptr %17, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 14
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 20
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @hid_input_report(ptr noundef %3, i32 noundef %19, ptr noundef %21, i32 noundef %23, i32 noundef 0) #15
  br label %35

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.usb_device, ptr %27, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.19, i32 noundef %7) #16
  br label %35

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 23
  %31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %30) #15
  %32 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 10
  %33 = load i8, ptr %32, align 4
  %34 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 11
  store i8 %33, ptr %34, align 1
  br label %50

35:                                               ; preds = %25, %15, %8, %1, %1, %1, %1, %1
  %36 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 23
  %37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %36) #15
  %38 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 10
  %39 = load i8, ptr %38, align 4
  %40 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 11
  %41 = load i8, ptr %40, align 1
  %42 = icmp eq i8 %39, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %35
  %44 = add i8 %41, 1
  store i8 %44, ptr %40, align 1
  %45 = icmp eq i8 %39, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = tail call fastcc i32 @hid_submit_ctrl(ptr noundef %3)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %36, i32 noundef %37) #15
  br label %57

50:                                               ; preds = %46, %43, %35, %29
  %51 = phi i32 [ %37, %35 ], [ %37, %46 ], [ %37, %43 ], [ %31, %29 ]
  %52 = phi ptr [ %36, %35 ], [ %36, %46 ], [ %36, %43 ], [ %30, %29 ]
  %53 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 24
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %53) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %52, i32 noundef %51) #15
  %54 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  tail call void @usb_autopm_put_interface_async(ptr noundef %55) #15
  %56 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 29
  tail call void @__wake_up(ptr noundef %56, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %57

57:                                               ; preds = %50, %49
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hid_start_in(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 33
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 23
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #15
  %6 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 24
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 16384
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %1
  %11 = load volatile i32, ptr %6, align 4
  %12 = and i32 %11, 128
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %10
  %15 = load volatile i32, ptr %6, align 4
  %16 = and i32 %15, 32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %6) #15
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @usb_submit_urb(ptr noundef %23, i32 noundef 2592) #15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %6) #15
  %27 = icmp eq i32 %24, -28
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  tail call void @_set_bit(i32 noundef 11, ptr noundef %6) #15
  br label %30

29:                                               ; preds = %21
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %6) #15
  br label %30

30:                                               ; preds = %29, %28, %26, %18, %14, %10, %1
  %31 = phi i32 [ 0, %10 ], [ 0, %14 ], [ 0, %18 ], [ -28, %28 ], [ %24, %26 ], [ 0, %29 ], [ 0, %1 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #15
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_input_report(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_check_keys_pressed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hid_io_error(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 33
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 23
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #15
  %6 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 24
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 128
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %57

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 26
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 50
  %14 = load volatile i32, ptr @jiffies, align 64
  %15 = sub i32 %13, %14
  %16 = icmp slt i32 %15, 0
  %17 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 27
  br i1 %16, label %22, label %18

18:                                               ; preds = %10
  %19 = load i32, ptr %17, align 4
  %20 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 27
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18, %10
  %23 = phi ptr [ %20, %18 ], [ %17, %10 ]
  store i32 13, ptr %23, align 4
  %24 = load volatile i32, ptr @jiffies, align 64
  %25 = add i32 %24, 100
  store i32 %25, ptr %11, align 4
  br label %30

26:                                               ; preds = %18
  %27 = icmp ult i32 %19, 100
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  %29 = shl nuw nsw i32 %19, 1
  store i32 %29, ptr %20, align 4
  br label %30

30:                                               ; preds = %28, %26, %22
  %31 = phi ptr [ %20, %26 ], [ %20, %28 ], [ %23, %22 ]
  %32 = phi i32 [ %19, %26 ], [ %29, %28 ], [ 13, %22 ]
  %33 = phi i32 [ %12, %26 ], [ %12, %28 ], [ %25, %22 ]
  %34 = load volatile i32, ptr @jiffies, align 64
  %35 = sub i32 %33, %34
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %30
  %38 = load volatile i32, ptr %6, align 4
  %39 = and i32 %38, 2048
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %6) #15
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = load i32, ptr %31, align 4
  br label %50

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 28
  %48 = load ptr, ptr @system_wq, align 4
  %49 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %48, ptr noundef %47) #15
  br label %57

50:                                               ; preds = %44, %37, %30
  %51 = phi i32 [ %45, %44 ], [ %32, %37 ], [ %32, %30 ]
  %52 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 25
  %53 = load volatile i32, ptr @jiffies, align 64
  %54 = tail call i32 @__msecs_to_jiffies(i32 noundef %51) #15
  %55 = add i32 %54, %53
  %56 = tail call i32 @mod_timer(ptr noundef %52, i32 noundef %55) #15
  br label %57

57:                                               ; preds = %50, %46, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_set_field(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_lookup_quirk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usb_get_extra_descriptor(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_parse_report(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interrupt_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhid_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 -128
  %8 = load i32, ptr @hid_debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %11, i32 0, i32 2
  %13 = load i8, ptr %12, align 2
  %14 = zext i8 %13 to i32
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.6, i32 noundef %14) #16
  br label %16

16:                                               ; preds = %10, %2
  %17 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %4, i32 0, i32 4
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i32
  %20 = icmp eq i8 %18, 0
  br i1 %20, label %44, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.usb_host_interface, ptr %4, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  br label %24

24:                                               ; preds = %38, %21
  %25 = phi i32 [ 0, %21 ], [ %39, %38 ]
  %26 = phi i32 [ 0, %21 ], [ %40, %38 ]
  %27 = getelementptr %struct.usb_host_endpoint, ptr %23, i32 %26
  %28 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %27, i32 0, i32 3
  %29 = load i8, ptr %28, align 1
  %30 = and i8 %29, 3
  %31 = icmp eq i8 %30, 3
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %27, i32 0, i32 2
  %34 = load i8, ptr %33, align 1
  %35 = icmp sgt i8 %34, -1
  %36 = add i32 %25, 1
  br i1 %35, label %37, label %38

37:                                               ; preds = %32, %24
  br label %38

38:                                               ; preds = %37, %32
  %39 = phi i32 [ %25, %37 ], [ %36, %32 ]
  %40 = add nuw nsw i32 %26, 1
  %41 = icmp eq i32 %40, %19
  br i1 %41, label %42, label %24

42:                                               ; preds = %38
  %43 = icmp eq i32 %39, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %42, %16
  %45 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.27) #16
  br label %157

46:                                               ; preds = %42
  %47 = tail call ptr @hid_allocate_device() #15
  %48 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = ptrtoint ptr %47 to i32
  br label %157

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  store ptr %47, ptr %52, align 8
  %53 = getelementptr inbounds %struct.hid_device, ptr %47, i32 0, i32 20
  store ptr @usb_hid_driver, ptr %53, align 4
  %54 = getelementptr inbounds %struct.hid_device, ptr %47, i32 0, i32 34
  store ptr null, ptr %54, align 4
  %55 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7
  %56 = getelementptr inbounds %struct.hid_device, ptr %47, i32 0, i32 18, i32 1
  store ptr %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.hid_device, ptr %47, i32 0, i32 8
  store i16 3, ptr %57, align 8
  %58 = getelementptr i8, ptr %6, i32 480
  %59 = load i16, ptr %58, align 8
  %60 = zext i16 %59 to i32
  %61 = getelementptr inbounds %struct.hid_device, ptr %47, i32 0, i32 10
  store i32 %60, ptr %61, align 4
  %62 = getelementptr i8, ptr %6, i32 482
  %63 = load i16, ptr %62, align 2
  %64 = zext i16 %63 to i32
  %65 = getelementptr inbounds %struct.hid_device, ptr %47, i32 0, i32 11
  store i32 %64, ptr %65, align 8
  %66 = getelementptr i8, ptr %6, i32 484
  %67 = load i16, ptr %66, align 4
  %68 = zext i16 %67 to i32
  %69 = getelementptr inbounds %struct.hid_device, ptr %47, i32 0, i32 12
  store i32 %68, ptr %69, align 4
  %70 = getelementptr inbounds %struct.hid_device, ptr %47, i32 0, i32 30
  store i8 0, ptr %70, align 8
  %71 = load ptr, ptr %3, align 4
  %72 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %71, i32 0, i32 7
  %73 = load i8, ptr %72, align 1
  switch i8 %73, label %78 [
    i8 2, label %75
    i8 0, label %74
  ]

74:                                               ; preds = %51
  br label %75

75:                                               ; preds = %74, %51
  %76 = phi i32 [ 2, %74 ], [ 1, %51 ]
  %77 = getelementptr inbounds %struct.hid_device, ptr %47, i32 0, i32 13
  store i32 %76, ptr %77, align 8
  br label %78

78:                                               ; preds = %75, %51
  %79 = getelementptr i8, ptr %6, i32 652
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = tail call i32 @strlcpy(ptr noundef %70, ptr noundef nonnull %80, i32 noundef 128) #15
  br label %84

84:                                               ; preds = %82, %78
  %85 = getelementptr i8, ptr %6, i32 648
  %86 = load ptr, ptr %85, align 8
  %87 = icmp eq ptr %86, null
  br i1 %87, label %97, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr %79, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = tail call i32 @strlcat(ptr noundef %70, ptr noundef nonnull @.str.28, i32 noundef 128) #15
  %93 = load ptr, ptr %85, align 8
  br label %94

94:                                               ; preds = %91, %88
  %95 = phi ptr [ %93, %91 ], [ %86, %88 ]
  %96 = tail call i32 @strlcat(ptr noundef %70, ptr noundef %95, i32 noundef 128) #15
  br label %97

97:                                               ; preds = %94, %84
  %98 = load i8, ptr %70, align 1
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load i16, ptr %58, align 8
  %102 = zext i16 %101 to i32
  %103 = load i16, ptr %62, align 2
  %104 = zext i16 %103 to i32
  %105 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %70, i32 noundef 128, ptr noundef nonnull @.str.29, i32 noundef %102, i32 noundef %104)
  br label %106

106:                                              ; preds = %100, %97
  %107 = getelementptr inbounds %struct.hid_device, ptr %47, i32 0, i32 31
  %108 = getelementptr i8, ptr %6, i32 -64
  %109 = load ptr, ptr %108, align 8
  %110 = getelementptr inbounds %struct.usb_bus, ptr %109, i32 0, i32 3
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr i8, ptr %6, i32 -124
  %113 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %107, i32 noundef 64, ptr noundef nonnull @.str.36, ptr noundef %111, ptr noundef %112) #15
  %114 = tail call i32 @strlcat(ptr noundef %107, ptr noundef nonnull @.str.30, i32 noundef 64) #15
  %115 = tail call i32 @strlen(ptr noundef %107)
  %116 = icmp ult i32 %115, 63
  br i1 %116, label %117, label %125

117:                                              ; preds = %106
  %118 = getelementptr i8, ptr %107, i32 %115
  %119 = sub nuw nsw i32 64, %115
  %120 = load ptr, ptr %0, align 8
  %121 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %120, i32 0, i32 2
  %122 = load i8, ptr %121, align 2
  %123 = zext i8 %122 to i32
  %124 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %118, i32 noundef %119, ptr noundef nonnull @.str.31, i32 noundef %123)
  br label %125

125:                                              ; preds = %117, %106
  %126 = getelementptr i8, ptr %6, i32 488
  %127 = load i8, ptr %126, align 8
  %128 = zext i8 %127 to i32
  %129 = getelementptr inbounds %struct.hid_device, ptr %47, i32 0, i32 32
  %130 = tail call i32 @usb_string(ptr noundef %7, i32 noundef %128, ptr noundef %129, i32 noundef 64) #15
  %131 = icmp slt i32 %130, 1
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  store i8 0, ptr %129, align 8
  br label %133

133:                                              ; preds = %132, %125
  %134 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %135 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %134, i32 noundef 3520, i32 noundef 5276) #17
  %136 = icmp eq ptr %135, null
  br i1 %136, label %155, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.hid_device, ptr %47, i32 0, i32 33
  store ptr %135, ptr %138, align 8
  store ptr %47, ptr %135, align 8
  %139 = getelementptr inbounds %struct.usbhid_device, ptr %135, i32 0, i32 1
  store ptr %0, ptr %139, align 4
  %140 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %4, i32 0, i32 2
  %141 = load i8, ptr %140, align 2
  %142 = zext i8 %141 to i32
  %143 = getelementptr inbounds %struct.usbhid_device, ptr %135, i32 0, i32 2
  store i32 %142, ptr %143, align 8
  %144 = getelementptr inbounds %struct.usbhid_device, ptr %135, i32 0, i32 29
  tail call void @__init_waitqueue_head(ptr noundef %144, ptr noundef nonnull @.str.32, ptr noundef nonnull @usbhid_probe.__key) #15
  %145 = getelementptr inbounds %struct.usbhid_device, ptr %135, i32 0, i32 28
  store i32 -32, ptr %145, align 8
  %146 = getelementptr inbounds %struct.usbhid_device, ptr %135, i32 0, i32 28, i32 1
  store volatile ptr %146, ptr %146, align 4
  %147 = getelementptr inbounds %struct.usbhid_device, ptr %135, i32 0, i32 28, i32 1, i32 1
  store ptr %146, ptr %147, align 8
  %148 = getelementptr inbounds %struct.usbhid_device, ptr %135, i32 0, i32 28, i32 2
  store ptr @hid_reset, ptr %148, align 4
  %149 = getelementptr inbounds %struct.usbhid_device, ptr %135, i32 0, i32 25
  tail call void @init_timer_key(ptr noundef %149, ptr noundef nonnull @hid_retry_timeout, i32 noundef 0, ptr noundef null, ptr noundef null) #15
  %150 = getelementptr inbounds %struct.usbhid_device, ptr %135, i32 0, i32 23
  store i32 0, ptr %150, align 4
  %151 = getelementptr inbounds %struct.usbhid_device, ptr %135, i32 0, i32 22
  tail call void @__mutex_init(ptr noundef %151, ptr noundef nonnull @.str.34, ptr noundef nonnull @usbhid_probe.__key.33) #15
  %152 = tail call i32 @hid_add_device(ptr noundef %47) #15
  switch i32 %152, label %153 [
    i32 0, label %157
    i32 -19, label %154
  ]

153:                                              ; preds = %137
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.35, i32 noundef %152) #16
  br label %154

154:                                              ; preds = %153, %137
  tail call void @kfree(ptr noundef nonnull %135) #15
  br label %155

155:                                              ; preds = %154, %133
  %156 = phi i32 [ %152, %154 ], [ -12, %133 ]
  tail call void @hid_destroy_device(ptr noundef %47) #15
  br label %157

157:                                              ; preds = %155, %137, %49, %44
  %158 = phi i32 [ %50, %49 ], [ %156, %155 ], [ -19, %44 ], [ %152, %137 ]
  ret i32 %158
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usbhid_disconnect(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !14

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1444, i32 noundef 9, ptr noundef null) #15
  br label %13

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 33
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.usbhid_device, ptr %8, i32 0, i32 23
  tail call void @_raw_spin_lock_irq(ptr noundef %9) #15
  %10 = getelementptr inbounds %struct.usbhid_device, ptr %8, i32 0, i32 24
  tail call void @_set_bit(i32 noundef 7, ptr noundef %10) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %11 = load i16, ptr %9, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  tail call void @hid_destroy_device(ptr noundef nonnull %3) #15
  tail call void @kfree(ptr noundef %8) #15
  br label %13

13:                                               ; preds = %6, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hid_suspend(ptr nocapture noundef readonly %0, [1 x i32] %1) #0 {
  %3 = extractvalue [1 x i32] %1, 0
  %4 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.hid_device, ptr %5, i32 0, i32 33
  %7 = load ptr, ptr %6, align 8
  %8 = and i32 %3, 1024
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %52, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @hidinput_count_leds(ptr noundef %5) #15
  %12 = getelementptr inbounds %struct.usbhid_device, ptr %7, i32 0, i32 23
  tail call void @_raw_spin_lock_irq(ptr noundef %12) #15
  %13 = getelementptr inbounds %struct.usbhid_device, ptr %7, i32 0, i32 24
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %10
  %18 = load volatile i32, ptr %13, align 4
  %19 = and i32 %18, 64
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %17
  %22 = load volatile i32, ptr %13, align 4
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = load volatile i32, ptr %13, align 4
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load volatile i32, ptr %13, align 4
  %31 = and i32 %30, 1024
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = icmp eq i32 %11, 0
  %35 = load i32, ptr @ignoreled, align 4
  %36 = icmp ne i32 %35, 0
  %37 = select i1 %34, i1 true, i1 %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  tail call void @_set_bit(i32 noundef 5, ptr noundef %13) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %39 = load i16, ptr %12, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  %41 = tail call i32 @hid_driver_suspend(ptr noundef %5, [1 x i32] %1) #15
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %79, label %61

43:                                               ; preds = %33, %29, %25, %21, %17, %10
  %44 = getelementptr inbounds %struct.usbhid_device, ptr %7, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.usb_interface, ptr %45, i32 0, i32 7, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i64 @ktime_get_mono_fast_ns() #15
  %49 = getelementptr i8, ptr %47, i32 296
  store volatile i64 %48, ptr %49, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %50 = load i16, ptr %12, align 4
  %51 = add i16 %50, 1
  store i16 %51, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  br label %82

52:                                               ; preds = %2
  %53 = tail call i32 @hid_driver_suspend(ptr noundef %5, [1 x i32] %1) #15
  %54 = getelementptr inbounds %struct.usbhid_device, ptr %7, i32 0, i32 23
  tail call void @_raw_spin_lock_irq(ptr noundef %54) #15
  %55 = getelementptr inbounds %struct.usbhid_device, ptr %7, i32 0, i32 24
  tail call void @_set_bit(i32 noundef 5, ptr noundef %55) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %56 = load i16, ptr %54, align 4
  %57 = add i16 %56, 1
  store i16 %57, ptr %54, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  %58 = tail call i32 @usbhid_wait_io(ptr noundef %5)
  %59 = icmp slt i32 %58, 0
  %60 = select i1 %59, i32 -5, i32 %53
  br label %61

61:                                               ; preds = %52, %38
  %62 = phi i32 [ %41, %38 ], [ %60, %52 ]
  %63 = getelementptr inbounds %struct.usbhid_device, ptr %7, i32 0, i32 25
  %64 = tail call i32 @del_timer_sync(ptr noundef %63) #15
  %65 = getelementptr inbounds %struct.usbhid_device, ptr %7, i32 0, i32 28
  %66 = tail call zeroext i1 @cancel_work_sync(ptr noundef %65) #15
  %67 = tail call i32 @del_timer_sync(ptr noundef %63) #15
  %68 = getelementptr inbounds %struct.usbhid_device, ptr %7, i32 0, i32 4
  %69 = load ptr, ptr %68, align 4
  tail call void @usb_kill_urb(ptr noundef %69) #15
  %70 = getelementptr inbounds %struct.usbhid_device, ptr %7, i32 0, i32 7
  %71 = load ptr, ptr %70, align 4
  tail call void @usb_kill_urb(ptr noundef %71) #15
  %72 = getelementptr inbounds %struct.usbhid_device, ptr %7, i32 0, i32 15
  %73 = load ptr, ptr %72, align 4
  tail call void @usb_kill_urb(ptr noundef %73) #15
  br i1 %9, label %82, label %74

74:                                               ; preds = %61
  %75 = getelementptr inbounds %struct.usbhid_device, ptr %7, i32 0, i32 24
  %76 = load volatile i32, ptr %75, align 4
  %77 = and i32 %76, 1024
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %80

79:                                               ; preds = %38
  tail call fastcc void @hid_restart_io(ptr noundef %5) #15
  br label %82

80:                                               ; preds = %74
  tail call fastcc void @hid_restart_io(ptr noundef %5) #15
  %81 = tail call i32 @hid_driver_resume(ptr noundef %5) #15
  br label %82

82:                                               ; preds = %80, %79, %74, %61, %43
  %83 = phi i32 [ -16, %43 ], [ %62, %74 ], [ %62, %61 ], [ %41, %79 ], [ -16, %80 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hid_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @hid_restart_io(ptr noundef %3) #15
  %4 = tail call i32 @hid_driver_resume(ptr noundef %3) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hid_reset_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @hid_post_reset(ptr noundef %0)
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = tail call i32 @hid_driver_reset_resume(ptr noundef %3) #15
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 0)
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i32 [ %8, %6 ], [ %4, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hid_pre_reset(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 33
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 23
  tail call void @_raw_spin_lock_irq(ptr noundef %6) #15
  %7 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 24
  tail call void @_set_bit(i32 noundef 4, ptr noundef %7) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %8 = load i16, ptr %6, align 4
  %9 = add i16 %8, 1
  store i16 %9, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  %10 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 25
  %11 = tail call i32 @del_timer_sync(ptr noundef %10) #15
  %12 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  tail call void @usb_kill_urb(ptr noundef %13) #15
  %14 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  tail call void @usb_kill_urb(ptr noundef %15) #15
  %16 = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 15
  %17 = load ptr, ptr %16, align 4
  tail call void @usb_kill_urb(ptr noundef %17) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hid_post_reset(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -128
  %5 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.hid_device, ptr %6, i32 0, i32 33
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.hid_device, ptr %6, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %12, i32 noundef 3264) #18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %75, label %15

15:                                               ; preds = %1
  %16 = load i32, ptr %11, align 4
  %17 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %10, i32 0, i32 2
  %18 = load i8, ptr %17, align 2
  tail call void @llvm.memset.p0.i32(ptr nonnull align 64 %13, i8 0, i32 %16, i1 false) #15
  %19 = zext i8 %18 to i16
  %20 = trunc i32 %16 to i16
  %21 = load i32, ptr %4, align 8
  %22 = shl i32 %21, 8
  %23 = or i32 %22, -2147483520
  %24 = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %23, i8 noundef zeroext 6, i8 noundef zeroext -127, i16 noundef zeroext 8704, i16 noundef zeroext %19, ptr noundef nonnull %13, i16 noundef zeroext %20, i32 noundef 5000) #15
  %25 = icmp slt i32 %24, %16
  br i1 %25, label %26, label %43

26:                                               ; preds = %15
  %27 = load i32, ptr %4, align 8
  %28 = shl i32 %27, 8
  %29 = or i32 %28, -2147483520
  %30 = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %29, i8 noundef zeroext 6, i8 noundef zeroext -127, i16 noundef zeroext 8704, i16 noundef zeroext %19, ptr noundef nonnull %13, i16 noundef zeroext %20, i32 noundef 5000) #15
  %31 = icmp slt i32 %30, %16
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load i32, ptr %4, align 8
  %34 = shl i32 %33, 8
  %35 = or i32 %34, -2147483520
  %36 = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %35, i8 noundef zeroext 6, i8 noundef zeroext -127, i16 noundef zeroext 8704, i16 noundef zeroext %19, ptr noundef nonnull %13, i16 noundef zeroext %20, i32 noundef 5000) #15
  %37 = icmp slt i32 %36, %16
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i32, ptr %4, align 8
  %40 = shl i32 %39, 8
  %41 = or i32 %40, -2147483520
  %42 = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %41, i8 noundef zeroext 6, i8 noundef zeroext -127, i16 noundef zeroext 8704, i16 noundef zeroext %19, ptr noundef nonnull %13, i16 noundef zeroext %20, i32 noundef 5000) #15
  br label %43

43:                                               ; preds = %38, %32, %26, %15
  %44 = phi i32 [ %24, %15 ], [ %30, %26 ], [ %36, %32 ], [ %42, %38 ]
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32, ptr @hid_debug, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.6) #16
  br label %51

51:                                               ; preds = %49, %46
  tail call void @kfree(ptr noundef nonnull %13) #15
  br label %75

52:                                               ; preds = %43
  %53 = load ptr, ptr %6, align 8
  %54 = load i32, ptr %11, align 4
  %55 = tail call i32 @bcmp(ptr nonnull %13, ptr %53, i32 %54)
  tail call void @kfree(ptr noundef nonnull %13) #15
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load i32, ptr @hid_debug, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %75, label %60

60:                                               ; preds = %57
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.6) #16
  br label %75

62:                                               ; preds = %52
  %63 = getelementptr inbounds %struct.usbhid_device, ptr %8, i32 0, i32 23
  tail call void @_raw_spin_lock_irq(ptr noundef %63) #15
  %64 = getelementptr inbounds %struct.usbhid_device, ptr %8, i32 0, i32 24
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %64) #15
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %64) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %65 = load i16, ptr %63, align 4
  %66 = add i16 %65, 1
  store i16 %66, ptr %63, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  %67 = load ptr, ptr %9, align 4
  %68 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %67, i32 0, i32 2
  %69 = load i8, ptr %68, align 2
  %70 = load i32, ptr %4, align 8
  %71 = shl i32 %70, 8
  %72 = or i32 %71, -2147483648
  %73 = zext i8 %69 to i16
  %74 = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %72, i8 noundef zeroext 10, i8 noundef zeroext 33, i16 noundef zeroext 0, i16 noundef zeroext %73, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #15
  tail call fastcc void @hid_restart_io(ptr noundef %6)
  br label %75

75:                                               ; preds = %62, %60, %57, %51, %1
  %76 = phi i32 [ %44, %51 ], [ 0, %62 ], [ -12, %1 ], [ -1, %60 ], [ -1, %57 ]
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hid_allocate_device() local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hid_reset(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -5248
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 -32
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 -128
  %14 = getelementptr i8, ptr %0, i32 -5232
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 10
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @usb_clear_halt(ptr noundef %13, i32 noundef %17) #15
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %4) #15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %8
  %21 = tail call fastcc i32 @hid_start_in(ptr noundef %3)
  br label %23

22:                                               ; preds = %8
  tail call void @_set_bit(i32 noundef 4, ptr noundef %4) #15
  br label %23

23:                                               ; preds = %22, %20, %1
  %24 = load volatile i32, ptr %4, align 4
  %25 = and i32 %24, 16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %0, i32 -5244
  %29 = load ptr, ptr %28, align 4
  tail call void @usb_queue_reset_device(ptr noundef %29) #15
  br label %30

30:                                               ; preds = %27, %23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hid_retry_timeout(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -5220
  %3 = load ptr, ptr %2, align 4
  %4 = tail call fastcc i32 @hid_start_in(ptr noundef %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call fastcc void @hid_io_error(ptr noundef %3)
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_add_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_destroy_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_queue_reset_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hidinput_count_leds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_driver_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hid_restart_io(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 33
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 24
  %5 = load volatile i32, ptr %4, align 4
  %6 = load volatile i32, ptr %4, align 4
  %7 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 23
  tail call void @_raw_spin_lock_irq(ptr noundef %7) #15
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %4) #15
  %8 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usb_interface, ptr %9, i32 0, i32 7, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i64 @ktime_get_mono_fast_ns() #15
  %13 = getelementptr i8, ptr %11, i32 296
  store volatile i64 %12, ptr %13, align 8
  %14 = and i32 %5, 64
  %15 = icmp ne i32 %14, 0
  %16 = and i32 %6, 16
  %17 = icmp ne i32 %16, 0
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 28
  %21 = load ptr, ptr @system_wq, align 4
  %22 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %21, ptr noundef %20) #15
  br label %23

23:                                               ; preds = %19, %1
  %24 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 27
  store i32 0, ptr %24, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %25 = load i16, ptr %7, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  br i1 %17, label %53, label %27

27:                                               ; preds = %23
  %28 = load volatile i32, ptr %4, align 4
  %29 = and i32 %28, 256
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %53, label %31

31:                                               ; preds = %27
  br i1 %15, label %36, label %32

32:                                               ; preds = %31
  %33 = tail call fastcc i32 @hid_start_in(ptr noundef %0)
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  tail call fastcc void @hid_io_error(ptr noundef %0)
  br label %36

36:                                               ; preds = %35, %32, %31
  tail call void @_raw_spin_lock_irq(ptr noundef %7) #15
  %37 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 15
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = load volatile i32, ptr %4, align 4
  %42 = and i32 %41, 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  tail call fastcc void @usbhid_restart_out_queue(ptr noundef %3)
  br label %45

45:                                               ; preds = %44, %40, %36
  %46 = load volatile i32, ptr %4, align 4
  %47 = and i32 %46, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  tail call fastcc void @usbhid_restart_ctrl_queue(ptr noundef %3)
  br label %50

50:                                               ; preds = %49, %45
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %51 = load i16, ptr %7, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  br label %53

53:                                               ; preds = %50, %27, %23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_driver_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_driver_reset_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_quirks_init(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }

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
!8 = !{i64 2148970769}
!9 = !{i64 2148966593}
!10 = !{i64 2148966668, i64 2148966695, i64 2148966742, i64 2148966764, i64 2148966792, i64 2148966812}
!11 = !{i64 2148993772}
!12 = !{!"auto-init"}
!13 = !{i32 0, i32 33}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 492167}
!16 = !{i64 2148994913}
