; ModuleID = '/llk/IR/drivers/usb/core/message.c_pt.bc'
source_filename = "../drivers/usb/core/message.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_control_msg:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_control_msg\22\09\09\09\09\09"
module asm "__kstrtabns_usb_control_msg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_control_msg_send:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_control_msg_send\22\09\09\09\09\09"
module asm "__kstrtabns_usb_control_msg_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_control_msg_recv:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_control_msg_recv\22\09\09\09\09\09"
module asm "__kstrtabns_usb_control_msg_recv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_interrupt_msg:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_interrupt_msg\22\09\09\09\09\09"
module asm "__kstrtabns_usb_interrupt_msg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_bulk_msg:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_bulk_msg\22\09\09\09\09\09"
module asm "__kstrtabns_usb_bulk_msg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_sg_init:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_sg_init\22\09\09\09\09\09"
module asm "__kstrtabns_usb_sg_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_sg_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_sg_wait\22\09\09\09\09\09"
module asm "__kstrtabns_usb_sg_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_sg_cancel:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_sg_cancel\22\09\09\09\09\09"
module asm "__kstrtabns_usb_sg_cancel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_get_descriptor:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_get_descriptor\22\09\09\09\09\09"
module asm "__kstrtabns_usb_get_descriptor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_string:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_string\22\09\09\09\09\09"
module asm "__kstrtabns_usb_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_get_status:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_get_status\22\09\09\09\09\09"
module asm "__kstrtabns_usb_get_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_clear_halt:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_clear_halt\22\09\09\09\09\09"
module asm "__kstrtabns_usb_clear_halt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_reset_endpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_reset_endpoint\22\09\09\09\09\09"
module asm "__kstrtabns_usb_reset_endpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_set_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_set_interface\22\09\09\09\09\09"
module asm "__kstrtabns_usb_set_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_reset_configuration:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_reset_configuration\22\09\09\09\09\09"
module asm "__kstrtabns_usb_reset_configuration:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_set_configuration:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_set_configuration\22\09\09\09\09\09"
module asm "__kstrtabns_usb_set_configuration:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_driver_set_configuration:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_driver_set_configuration\22\09\09\09\09\09"
module asm "__kstrtabns_usb_driver_set_configuration:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdc_parse_cdc_header:\09\09\09\09\09"
module asm "\09.asciz \09\22cdc_parse_cdc_header\22\09\09\09\09\09"
module asm "__kstrtabns_cdc_parse_cdc_header:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.api_context = type { %struct.completion, i32 }
%struct.usb_sg_request = type { i32, i32, %struct.spinlock, ptr, i32, i32, ptr, i32, %struct.completion }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_host_config = type { %struct.usb_config_descriptor, ptr, [16 x ptr], [32 x ptr], [32 x ptr], ptr, i32 }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.71, i32 }
%union.anon.71 = type { ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_interface_cache = type { i32, %struct.kref, [0 x %struct.usb_host_interface] }
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.set_config_request = type { ptr, i32, %struct.work_struct, %struct.list_head }
%struct.usb_cdc_parsed_header = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }

@__kstrtab_usb_control_msg = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_control_msg = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_control_msg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_control_msg to i32), ptr @__kstrtab_usb_control_msg, ptr @__kstrtabns_usb_control_msg }, section "___ksymtab_gpl+usb_control_msg", align 4
@__kstrtab_usb_control_msg_send = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_control_msg_send = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_control_msg_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_control_msg_send to i32), ptr @__kstrtab_usb_control_msg_send, ptr @__kstrtabns_usb_control_msg_send }, section "___ksymtab_gpl+usb_control_msg_send", align 4
@__kstrtab_usb_control_msg_recv = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_control_msg_recv = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_control_msg_recv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_control_msg_recv to i32), ptr @__kstrtab_usb_control_msg_recv, ptr @__kstrtabns_usb_control_msg_recv }, section "___ksymtab_gpl+usb_control_msg_recv", align 4
@__kstrtab_usb_interrupt_msg = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_interrupt_msg = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_interrupt_msg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_interrupt_msg to i32), ptr @__kstrtab_usb_interrupt_msg, ptr @__kstrtabns_usb_interrupt_msg }, section "___ksymtab_gpl+usb_interrupt_msg", align 4
@__kstrtab_usb_bulk_msg = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_bulk_msg = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_bulk_msg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_bulk_msg to i32), ptr @__kstrtab_usb_bulk_msg, ptr @__kstrtabns_usb_bulk_msg }, section "___ksymtab_gpl+usb_bulk_msg", align 4
@__kstrtab_usb_sg_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_sg_init = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_sg_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_sg_init to i32), ptr @__kstrtab_usb_sg_init, ptr @__kstrtabns_usb_sg_init }, section "___ksymtab_gpl+usb_sg_init", align 4
@__kstrtab_usb_sg_wait = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_sg_wait = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_sg_wait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_sg_wait to i32), ptr @__kstrtab_usb_sg_wait, ptr @__kstrtabns_usb_sg_wait }, section "___ksymtab_gpl+usb_sg_wait", align 4
@.str = private unnamed_addr constant [19 x i8] c"%s, unlink --> %d\0A\00", align 1
@__func__.usb_sg_cancel = private unnamed_addr constant [14 x i8] c"usb_sg_cancel\00", align 1
@__kstrtab_usb_sg_cancel = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_sg_cancel = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_sg_cancel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_sg_cancel to i32), ptr @__kstrtab_usb_sg_cancel, ptr @__kstrtabns_usb_sg_cancel }, section "___ksymtab_gpl+usb_sg_cancel", align 4
@__kstrtab_usb_get_descriptor = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_get_descriptor = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_get_descriptor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_get_descriptor to i32), ptr @__kstrtab_usb_get_descriptor, ptr @__kstrtabns_usb_get_descriptor }, section "___ksymtab_gpl+usb_get_descriptor", align 4
@__kstrtab_usb_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_string = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_string to i32), ptr @__kstrtab_usb_string, ptr @__kstrtabns_usb_string }, section "___ksymtab_gpl+usb_string", align 4
@__kstrtab_usb_get_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_get_status = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_get_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_get_status to i32), ptr @__kstrtab_usb_get_status, ptr @__kstrtabns_usb_get_status }, section "___ksymtab_gpl+usb_get_status", align 4
@__kstrtab_usb_clear_halt = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_clear_halt = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_clear_halt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_clear_halt to i32), ptr @__kstrtab_usb_clear_halt, ptr @__kstrtabns_usb_clear_halt }, section "___ksymtab_gpl+usb_clear_halt", align 4
@__kstrtab_usb_reset_endpoint = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_reset_endpoint = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_reset_endpoint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_reset_endpoint to i32), ptr @__kstrtab_usb_reset_endpoint, ptr @__kstrtabns_usb_reset_endpoint }, section "___ksymtab_gpl+usb_reset_endpoint", align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"selecting invalid altsetting %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"%s Failed to disable LPM\0A\00", align 1
@__func__.usb_set_interface = private unnamed_addr constant [18 x i8] c"usb_set_interface\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Not enough bandwidth for altsetting %d\0A\00", align 1
@__kstrtab_usb_set_interface = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_set_interface = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_set_interface = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_set_interface to i32), ptr @__kstrtab_usb_set_interface, ptr @__kstrtabns_usb_set_interface }, section "___ksymtab_gpl+usb_set_interface", align 4
@__func__.usb_reset_configuration = private unnamed_addr constant [24 x i8] c"usb_reset_configuration\00", align 1
@__kstrtab_usb_reset_configuration = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_reset_configuration = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_reset_configuration = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_reset_configuration to i32), ptr @__kstrtab_usb_reset_configuration, ptr @__kstrtabns_usb_reset_configuration }, section "___ksymtab_gpl+usb_reset_configuration", align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"usb_interface\00", align 1
@usb_if_device_type = dso_local global %struct.device_type { ptr @.str.4, ptr null, ptr @usb_if_uevent, ptr null, ptr @usb_release_interface, ptr null }, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"config 0 descriptor??\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"new config #%d exceeds power limit by %dmA\0A\00", align 1
@__func__.usb_set_configuration = private unnamed_addr constant [22 x i8] c"usb_set_configuration\00", align 1
@usb_bus_type = external dso_local global %struct.bus_type, align 4
@usb_interface_groups = external dso_local global [0 x ptr], align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"%d-%s:%d.%d\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"skipping disabled interface %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"device_add(%s) --> %d\0A\00", align 1
@__kstrtab_usb_set_configuration = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_set_configuration = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_set_configuration = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_set_configuration to i32), ptr @__kstrtab_usb_set_configuration, ptr @__kstrtabns_usb_set_configuration }, section "___ksymtab_gpl+usb_set_configuration", align 4
@set_config_lock = internal global %struct.spinlock zeroinitializer, align 4
@set_config_list = internal global %struct.list_head { ptr @set_config_list, ptr @set_config_list }, align 4
@__kstrtab_usb_driver_set_configuration = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_driver_set_configuration = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_driver_set_configuration = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_driver_set_configuration to i32), ptr @__kstrtab_usb_driver_set_configuration, ptr @__kstrtabns_usb_driver_set_configuration }, section "___ksymtab_gpl+usb_driver_set_configuration", align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"skipping garbage byte\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"invalid descriptor buffer length\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"skipping garbage\0A\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"More than one union descriptor, skipping ...\0A\00", align 1
@__kstrtab_cdc_parse_cdc_header = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdc_parse_cdc_header = external dso_local constant [0 x i8], align 1
@__ksymtab_cdc_parse_cdc_header = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdc_parse_cdc_header to i32), ptr @__kstrtab_cdc_parse_cdc_header, ptr @__kstrtabns_cdc_parse_cdc_header }, section "___ksymtab+cdc_parse_cdc_header", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.14 = private unnamed_addr constant [39 x i8] c"dev %s ep%d%s scatterlist error %d/%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@__func__.sg_complete = private unnamed_addr constant [12 x i8] c"sg_complete\00", align 1
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.18 = private unnamed_addr constant [69 x i8] c"language id specifier not provided by device, defaulting to English\0A\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"string descriptor 0 read error: %d\0A\00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"INTERFACE=%d/%d/%d\00", align 1
@.str.21 = private unnamed_addr constant [73 x i8] c"MODALIAS=usb:v%04Xp%04Xd%04Xdc%02Xdsc%02Xdp%02Xic%02Xisc%02Xip%02Xin%02X\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"Interface #%d referenced by multiple IADs\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [18 x ptr] [ptr @__ksymtab_cdc_parse_cdc_header, ptr @__ksymtab_usb_bulk_msg, ptr @__ksymtab_usb_clear_halt, ptr @__ksymtab_usb_control_msg, ptr @__ksymtab_usb_control_msg_recv, ptr @__ksymtab_usb_control_msg_send, ptr @__ksymtab_usb_driver_set_configuration, ptr @__ksymtab_usb_get_descriptor, ptr @__ksymtab_usb_get_status, ptr @__ksymtab_usb_interrupt_msg, ptr @__ksymtab_usb_reset_configuration, ptr @__ksymtab_usb_reset_endpoint, ptr @__ksymtab_usb_set_configuration, ptr @__ksymtab_usb_set_interface, ptr @__ksymtab_usb_sg_cancel, ptr @__ksymtab_usb_sg_init, ptr @__ksymtab_usb_sg_wait, ptr @__ksymtab_usb_string], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_control_msg(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, ptr noundef %6, i16 noundef zeroext %7, i32 noundef %8) #0 {
  %10 = alloca i32, align 4
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3072, i32 noundef 8) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %42, label %14

14:                                               ; preds = %9
  store i8 %3, ptr %12, align 8
  %15 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %12, i32 0, i32 1
  store i8 %2, ptr %15, align 1
  %16 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %12, i32 0, i32 2
  store i16 %4, ptr %16, align 2
  %17 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %12, i32 0, i32 3
  store i16 %5, ptr %17, align 4
  %18 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %12, i32 0, i32 4
  store i16 %7, ptr %18, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #10
  store i32 0, ptr %10, align 4, !annotation !8
  %19 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3072) #10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %14
  %22 = zext i16 %7 to i32
  %23 = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 8
  store ptr %0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 10
  store i32 %1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 21
  store ptr %12, ptr %25, align 4
  %26 = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 14
  store ptr %6, ptr %26, align 4
  %27 = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 19
  store i32 %22, ptr %27, align 4
  %28 = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 28
  store ptr @usb_api_blocking_completion, ptr %28, align 4
  %29 = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 27
  store ptr null, ptr %29, align 4
  %30 = call fastcc i32 @usb_start_wait_urb(ptr noundef nonnull %19, i32 noundef %8, ptr noundef nonnull %10) #10
  %31 = icmp slt i32 %30, 0
  %32 = load i32, ptr %10, align 4
  %33 = select i1 %31, i32 %30, i32 %32
  br label %34

34:                                               ; preds = %21, %14
  %35 = phi i32 [ -12, %14 ], [ %33, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #10
  %36 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 36
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 8192
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  call void @msleep(i32 noundef 200) #10
  br label %41

41:                                               ; preds = %40, %34
  call void @kfree(ptr noundef nonnull %12) #10
  br label %42

42:                                               ; preds = %41, %9
  %43 = phi i32 [ %35, %41 ], [ -12, %9 ]
  ret i32 %43
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_control_msg_send(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, ptr noundef %6, i16 noundef zeroext %7, i32 noundef %8, i32 noundef %9) #0 {
  %11 = zext i8 %1 to i32
  %12 = load i32, ptr %0, align 8
  %13 = shl i32 %12, 8
  %14 = shl nuw nsw i32 %11, 15
  %15 = or i32 %14, %13
  %16 = or i32 %15, -2147483648
  %17 = icmp eq i16 %7, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %10
  %19 = zext i16 %7 to i32
  %20 = tail call ptr @kmemdup(ptr noundef %6, i32 noundef %19, i32 noundef %9) #10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18, %10
  %23 = phi ptr [ %20, %18 ], [ null, %10 ]
  %24 = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %16, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, ptr noundef %23, i16 noundef zeroext %7, i32 noundef %8)
  tail call void @kfree(ptr noundef %23) #10
  %25 = tail call i32 @llvm.smin.i32(i32 %24, i32 0)
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i32 [ -12, %18 ], [ %25, %22 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_control_msg_recv(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, ptr noundef writeonly %6, i16 noundef zeroext %7, i32 noundef %8, i32 noundef %9) #0 {
  %11 = zext i8 %1 to i32
  %12 = load i32, ptr %0, align 8
  %13 = shl i32 %12, 8
  %14 = shl nuw nsw i32 %11, 15
  %15 = or i32 %14, %13
  %16 = or i32 %15, -2147483520
  %17 = icmp ne i16 %7, 0
  %18 = icmp ne ptr %6, null
  %19 = and i1 %18, %17
  br i1 %19, label %20, label %32

20:                                               ; preds = %10
  %21 = zext i16 %7 to i32
  %22 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %21, i32 noundef %9) #11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %16, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, ptr noundef nonnull %22, i16 noundef zeroext %7, i32 noundef %8)
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = icmp eq i32 %25, %21
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %6, ptr nonnull align 64 %22, i32 %21, i1 false)
  br label %30

30:                                               ; preds = %29, %27, %24
  %31 = phi i32 [ %25, %24 ], [ 0, %29 ], [ -121, %27 ]
  tail call void @kfree(ptr noundef nonnull %22) #10
  br label %32

32:                                               ; preds = %30, %20, %10
  %33 = phi i32 [ %31, %30 ], [ -22, %10 ], [ -12, %20 ]
  ret i32 %33
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_interrupt_msg(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = tail call i32 @usb_bulk_msg(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_bulk_msg(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = and i32 %1, 128
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 21
  %10 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 22
  %11 = select i1 %8, ptr %10, ptr %9
  %12 = lshr i32 %1, 15
  %13 = and i32 %12, 15
  %14 = getelementptr ptr, ptr %11, i32 %13
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  %17 = icmp slt i32 %3, 0
  %18 = or i1 %17, %16
  br i1 %18, label %62, label %19

19:                                               ; preds = %6
  %20 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %62, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %15, i32 0, i32 3
  %24 = load i8, ptr %23, align 1
  %25 = and i8 %24, 3
  %26 = icmp eq i8 %25, 3
  br i1 %26, label %27, label %53

27:                                               ; preds = %22
  %28 = and i32 %1, 1073741823
  %29 = or i32 %28, 1073741824
  %30 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %15, i32 0, i32 5
  %31 = load i8, ptr %30, align 2
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 8
  store ptr %0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 10
  store i32 %29, ptr %34, align 4
  %35 = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 14
  store ptr %2, ptr %35, align 4
  %36 = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 19
  store i32 %3, ptr %36, align 4
  %37 = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 28
  store ptr @usb_api_blocking_completion, ptr %37, align 4
  %38 = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 27
  store ptr null, ptr %38, align 4
  %39 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 3
  %42 = icmp ugt i32 %40, 4
  %43 = or i1 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %27
  %45 = tail call i32 @llvm.smax.i32(i32 %32, i32 1) #10
  %46 = tail call i32 @llvm.umin.i32(i32 %45, i32 16) #10
  %47 = add nsw i32 %46, -1
  %48 = shl nuw nsw i32 1, %47
  br label %49

49:                                               ; preds = %44, %27
  %50 = phi i32 [ %48, %44 ], [ %32, %27 ]
  %51 = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 25
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 23
  store i32 -1, ptr %52, align 4
  br label %60

53:                                               ; preds = %22
  %54 = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 8
  store ptr %0, ptr %54, align 4
  %55 = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 10
  store i32 %1, ptr %55, align 4
  %56 = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 14
  store ptr %2, ptr %56, align 4
  %57 = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 19
  store i32 %3, ptr %57, align 4
  %58 = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 28
  store ptr @usb_api_blocking_completion, ptr %58, align 4
  %59 = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 27
  store ptr null, ptr %59, align 4
  br label %60

60:                                               ; preds = %53, %49
  %61 = tail call fastcc i32 @usb_start_wait_urb(ptr noundef nonnull %20, i32 noundef %5, ptr noundef %4)
  br label %62

62:                                               ; preds = %60, %19, %6
  %63 = phi i32 [ %61, %60 ], [ -22, %6 ], [ -12, %19 ]
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usb_api_blocking_completion(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.api_context, ptr %3, i32 0, i32 1
  store i32 %5, ptr %6, align 4
  tail call void @complete(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @usb_start_wait_urb(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca %struct.api_context, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #10
  %5 = getelementptr inbounds %struct.completion, ptr %4, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i64 20, i1 false)
  call void @__init_swait_queue_head(ptr noundef %5, ptr noundef nonnull @.str.17, ptr noundef nonnull @init_completion.__key) #10
  %6 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 27
  store ptr %4, ptr %6, align 4
  %7 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 20
  store i32 0, ptr %7, align 4
  %8 = call i32 @usb_submit_urb(ptr noundef %0, i32 noundef 3072) #10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %26, !prof !9

10:                                               ; preds = %3
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %10
  %13 = call i32 @__msecs_to_jiffies(i32 noundef %1) #10
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ 2147483647, %10 ], [ %13, %12 ]
  %16 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %4, i32 noundef %15) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  call void @usb_kill_urb(ptr noundef %0) #10
  %19 = getelementptr inbounds %struct.api_context, ptr %4, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, -2
  %22 = select i1 %21, i32 -110, i32 %20
  br label %26

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.api_context, ptr %4, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  br label %26

26:                                               ; preds = %23, %18, %3
  %27 = phi i32 [ %8, %3 ], [ %25, %23 ], [ %22, %18 ]
  %28 = icmp eq ptr %2, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = load i32, ptr %7, align 4
  store i32 %30, ptr %2, align 4
  br label %31

31:                                               ; preds = %29, %26
  call void @usb_free_urb(ptr noundef %0) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #10
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_sg_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = icmp ne ptr %0, null
  %10 = icmp ne ptr %1, null
  %11 = and i1 %9, %10
  %12 = icmp ne ptr %4, null
  %13 = and i1 %11, %12
  %14 = and i32 %2, -1073741824
  %15 = icmp ne i32 %14, -2147483648
  %16 = and i1 %15, %13
  br i1 %16, label %17, label %149

17:                                               ; preds = %8
  %18 = icmp ult i32 %2, 1073741824
  %19 = icmp slt i32 %5, 1
  %20 = or i1 %18, %19
  br i1 %20, label %149, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.usb_sg_request, ptr %0, i32 0, i32 2
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.usb_sg_request, ptr %0, i32 0, i32 3
  store ptr %1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.usb_sg_request, ptr %0, i32 0, i32 4
  store i32 %2, ptr %24, align 4
  %25 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 12
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.usb_bus, ptr %26, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 %5, i32 1
  %31 = getelementptr inbounds %struct.usb_sg_request, ptr %0, i32 0, i32 5
  store i32 %30, ptr %31, align 4
  %32 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %30, i32 4) #10
  %33 = extractvalue { i32, i1 } %32, 1
  br i1 %33, label %34, label %36, !prof !10

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.usb_sg_request, ptr %0, i32 0, i32 6
  br label %146

36:                                               ; preds = %21
  %37 = extractvalue { i32, i1 } %32, 0
  %38 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %37, i32 noundef %7) #11
  %39 = getelementptr inbounds %struct.usb_sg_request, ptr %0, i32 0, i32 6
  store ptr %38, ptr %39, align 4
  %40 = icmp eq ptr %38, null
  br i1 %40, label %148, label %41

41:                                               ; preds = %36
  %42 = load i32, ptr %31, align 4
  %43 = and i32 %2, 128
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, i32 128, i32 129
  %46 = icmp sgt i32 %42, 0
  br i1 %46, label %47, label %116

47:                                               ; preds = %106, %41
  %48 = phi ptr [ %111, %106 ], [ %4, %41 ]
  %49 = phi i32 [ %108, %106 ], [ %6, %41 ]
  %50 = phi i32 [ %110, %106 ], [ 0, %41 ]
  %51 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef %7) #10
  %52 = icmp eq ptr %51, null
  br i1 %52, label %129, label %53

53:                                               ; preds = %47
  %54 = load ptr, ptr %39, align 4
  %55 = getelementptr ptr, ptr %54, i32 %50
  store ptr %51, ptr %55, align 4
  %56 = getelementptr inbounds %struct.urb, ptr %51, i32 0, i32 8
  store ptr null, ptr %56, align 4
  %57 = getelementptr inbounds %struct.urb, ptr %51, i32 0, i32 10
  store i32 %2, ptr %57, align 4
  %58 = getelementptr inbounds %struct.urb, ptr %51, i32 0, i32 25
  store i32 %3, ptr %58, align 4
  %59 = getelementptr inbounds %struct.urb, ptr %51, i32 0, i32 13
  store i32 %45, ptr %59, align 4
  %60 = getelementptr inbounds %struct.urb, ptr %51, i32 0, i32 28
  store ptr @sg_complete, ptr %60, align 4
  %61 = getelementptr inbounds %struct.urb, ptr %51, i32 0, i32 27
  store ptr %0, ptr %61, align 4
  %62 = getelementptr inbounds %struct.urb, ptr %51, i32 0, i32 16
  store ptr %48, ptr %62, align 4
  br i1 %29, label %77, label %63

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.urb, ptr %51, i32 0, i32 14
  store ptr null, ptr %64, align 4
  %65 = getelementptr inbounds %struct.urb, ptr %51, i32 0, i32 18
  store i32 %5, ptr %65, align 4
  %66 = icmp eq i32 %49, 0
  br i1 %66, label %67, label %106

67:                                               ; preds = %67, %63
  %68 = phi i32 [ %74, %67 ], [ 0, %63 ]
  %69 = phi ptr [ %75, %67 ], [ %48, %63 ]
  %70 = phi i32 [ %73, %67 ], [ 0, %63 ]
  %71 = getelementptr inbounds %struct.scatterlist, ptr %69, i32 0, i32 2
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %72, %70
  %74 = add nuw nsw i32 %68, 1
  %75 = tail call ptr @sg_next(ptr noundef %69) #10
  %76 = icmp eq i32 %74, %5
  br i1 %76, label %106, label %67

77:                                               ; preds = %53
  %78 = load i32, ptr %48, align 4
  %79 = and i32 %78, -4
  %80 = inttoptr i32 %79 to ptr
  %81 = load i32, ptr %80, align 4
  %82 = lshr i32 %81, 30
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %94, label %84

84:                                               ; preds = %77
  %85 = icmp ne i32 %82, 3
  %86 = load i32, ptr @movable_zone, align 4
  %87 = icmp ne i32 %86, 2
  %88 = select i1 %85, i1 true, i1 %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = tail call ptr @page_address(ptr noundef %80) #10
  %91 = getelementptr inbounds %struct.scatterlist, ptr %48, i32 0, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr i8, ptr %90, i32 %92
  br label %94

94:                                               ; preds = %89, %84, %77
  %95 = phi ptr [ %93, %89 ], [ null, %77 ], [ null, %84 ]
  %96 = getelementptr inbounds %struct.urb, ptr %51, i32 0, i32 14
  store ptr %95, ptr %96, align 4
  %97 = getelementptr inbounds %struct.scatterlist, ptr %48, i32 0, i32 2
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %49, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %94
  %101 = tail call i32 @llvm.umin.i32(i32 %98, i32 %49)
  %102 = sub i32 %49, %101
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = add nuw nsw i32 %50, 1
  store i32 %105, ptr %31, align 4
  br label %106

106:                                              ; preds = %104, %100, %94, %67, %63
  %107 = phi i32 [ %49, %63 ], [ %101, %104 ], [ %101, %100 ], [ %98, %94 ], [ %73, %67 ]
  %108 = phi i32 [ %49, %63 ], [ 0, %104 ], [ %102, %100 ], [ 0, %94 ], [ 0, %67 ]
  %109 = getelementptr inbounds %struct.urb, ptr %51, i32 0, i32 19
  store i32 %107, ptr %109, align 4
  %110 = add nuw nsw i32 %50, 1
  %111 = tail call ptr @sg_next(ptr noundef %48) #10
  %112 = load i32, ptr %31, align 4
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %47, label %114

114:                                              ; preds = %106
  %115 = load ptr, ptr %39, align 4
  br label %116

116:                                              ; preds = %114, %41
  %117 = phi ptr [ %38, %41 ], [ %115, %114 ]
  %118 = phi i32 [ -1, %41 ], [ %50, %114 ]
  %119 = getelementptr ptr, ptr %117, i32 %118
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.urb, ptr %120, i32 0, i32 13
  %122 = load i32, ptr %121, align 4
  %123 = and i32 %122, -129
  store i32 %123, ptr %121, align 4
  %124 = load i32, ptr %31, align 4
  %125 = getelementptr inbounds %struct.usb_sg_request, ptr %0, i32 0, i32 7
  store i32 %124, ptr %125, align 4
  store i32 0, ptr %0, align 4
  %126 = getelementptr inbounds %struct.usb_sg_request, ptr %0, i32 0, i32 1
  store i32 0, ptr %126, align 4
  %127 = getelementptr inbounds %struct.usb_sg_request, ptr %0, i32 0, i32 8
  store i32 0, ptr %127, align 4
  %128 = getelementptr inbounds %struct.usb_sg_request, ptr %0, i32 0, i32 8, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %128, ptr noundef nonnull @.str.17, ptr noundef nonnull @init_completion.__key) #10
  br label %149

129:                                              ; preds = %47
  store i32 %50, ptr %31, align 4
  %130 = load ptr, ptr %39, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %148, label %132

132:                                              ; preds = %129
  %133 = add nsw i32 %50, -1
  store i32 %133, ptr %31, align 4
  %134 = icmp eq i32 %50, 0
  br i1 %134, label %144, label %135

135:                                              ; preds = %135, %132
  %136 = phi ptr [ %143, %135 ], [ %130, %132 ]
  %137 = phi i32 [ %141, %135 ], [ %133, %132 ]
  %138 = getelementptr ptr, ptr %136, i32 %137
  %139 = load ptr, ptr %138, align 4
  tail call void @usb_free_urb(ptr noundef %139) #10
  %140 = load i32, ptr %31, align 4
  %141 = add i32 %140, -1
  store i32 %141, ptr %31, align 4
  %142 = icmp eq i32 %140, 0
  %143 = load ptr, ptr %39, align 4
  br i1 %142, label %144, label %135

144:                                              ; preds = %135, %132
  %145 = phi ptr [ %130, %132 ], [ %143, %135 ]
  tail call void @kfree(ptr noundef %145) #10
  br label %146

146:                                              ; preds = %144, %34
  %147 = phi ptr [ %35, %34 ], [ %39, %144 ]
  store ptr null, ptr %147, align 4
  br label %148

148:                                              ; preds = %146, %129, %36
  store ptr null, ptr %23, align 4
  br label %149

149:                                              ; preds = %148, %116, %17, %8
  %150 = phi i32 [ -12, %148 ], [ 0, %116 ], [ -22, %17 ], [ -22, %8 ]
  ret i32 %150
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sg_complete(ptr noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_sg_request, ptr %3, i32 0, i32 2
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #10
  %8 = load i32, ptr %3, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %41, label %10

10:                                               ; preds = %1
  %11 = icmp ne i32 %8, -104
  %12 = icmp ne i32 %5, -104
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %14, label %76

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 20
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %37, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.usb_sg_request, ptr %3, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 12
  %22 = load ptr, ptr %21, align 8
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 1
  %25 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 9
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %26, i32 0, i32 2
  %28 = load i8, ptr %27, align 1
  %29 = and i8 %28, 15
  %30 = zext i8 %29 to i32
  %31 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 13
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 512
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, ptr @.str.16, ptr @.str.15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.14, ptr noundef %24, i32 noundef %30, ptr noundef nonnull %35, i32 noundef %5, i32 noundef %8) #12
  %36 = load i32, ptr %3, align 4
  br label %37

37:                                               ; preds = %18, %14
  %38 = phi i32 [ %36, %18 ], [ %8, %14 ]
  %39 = freeze i32 %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %76

41:                                               ; preds = %37, %1
  switch i32 %5, label %42 [
    i32 -104, label %76
    i32 0, label %76
  ]

42:                                               ; preds = %41
  store i32 %5, ptr %3, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #10
  %43 = getelementptr inbounds %struct.usb_sg_request, ptr %3, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %74

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.usb_sg_request, ptr %3, i32 0, i32 6
  %48 = getelementptr inbounds %struct.usb_sg_request, ptr %3, i32 0, i32 3
  br label %49

49:                                               ; preds = %69, %46
  %50 = phi i32 [ 0, %46 ], [ %70, %69 ]
  %51 = phi i32 [ 0, %46 ], [ %71, %69 ]
  %52 = load ptr, ptr %47, align 4
  %53 = getelementptr ptr, ptr %52, i32 %51
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %69, label %56

56:                                               ; preds = %49
  %57 = icmp eq i32 %50, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %56
  tail call void @usb_block_urb(ptr noundef nonnull %54) #10
  %59 = load ptr, ptr %47, align 4
  %60 = getelementptr ptr, ptr %59, i32 %51
  %61 = load ptr, ptr %60, align 4
  %62 = tail call i32 @usb_unlink_urb(ptr noundef %61) #10
  switch i32 %62, label %63 [
    i32 -16, label %69
    i32 -19, label %69
    i32 -43, label %69
    i32 -115, label %69
  ]

63:                                               ; preds = %58
  %64 = load ptr, ptr %48, align 4
  %65 = getelementptr inbounds %struct.usb_device, ptr %64, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.sg_complete, i32 noundef %62) #12
  br label %69

66:                                               ; preds = %56
  %67 = icmp eq ptr %54, %0
  %68 = zext i1 %67 to i32
  br label %69

69:                                               ; preds = %66, %63, %58, %58, %58, %58, %49
  %70 = phi i32 [ 1, %63 ], [ 1, %58 ], [ %50, %49 ], [ 1, %58 ], [ 1, %58 ], [ 1, %58 ], [ %68, %66 ]
  %71 = add nuw nsw i32 %51, 1
  %72 = load i32, ptr %43, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %49, label %74

74:                                               ; preds = %69, %42
  %75 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #10
  br label %76

76:                                               ; preds = %74, %41, %41, %37, %10
  %77 = phi i32 [ %75, %74 ], [ %7, %41 ], [ %7, %37 ], [ %7, %41 ], [ %7, %10 ]
  %78 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 20
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.usb_sg_request, ptr %3, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = add i32 %81, %79
  store i32 %82, ptr %80, align 4
  %83 = getelementptr inbounds %struct.usb_sg_request, ptr %3, i32 0, i32 7
  %84 = load i32, ptr %83, align 4
  %85 = add i32 %84, -1
  store i32 %85, ptr %83, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %76
  %88 = getelementptr inbounds %struct.usb_sg_request, ptr %3, i32 0, i32 8
  tail call void @complete(ptr noundef %88) #10
  br label %89

89:                                               ; preds = %87, %76
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %77) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_sg_wait(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_sg_request, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_sg_request, ptr %0, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #10
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %40

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.usb_sg_request, ptr %0, i32 0, i32 3
  %8 = getelementptr inbounds %struct.usb_sg_request, ptr %0, i32 0, i32 6
  br label %9

9:                                                ; preds = %37, %6
  %10 = phi i32 [ 0, %6 ], [ %38, %37 ]
  %11 = load i32, ptr %0, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %9
  %14 = load ptr, ptr %7, align 4
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr ptr, ptr %15, i32 %10
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 8
  store ptr %14, ptr %18, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %19 = load i16, ptr %4, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  %21 = load ptr, ptr %8, align 4
  %22 = getelementptr ptr, ptr %21, i32 %10
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @usb_submit_urb(ptr noundef %23, i32 noundef 3072) #10
  switch i32 %24, label %30 [
    i32 -6, label %25
    i32 -11, label %25
    i32 -12, label %25
    i32 0, label %26
  ]

25:                                               ; preds = %13, %13, %13
  tail call void @yield() #10
  br label %28

26:                                               ; preds = %13
  %27 = add nsw i32 %10, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !17
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i32 [ %10, %25 ], [ %27, %26 ]
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #10
  br label %37

30:                                               ; preds = %13
  %31 = load ptr, ptr %8, align 4
  %32 = getelementptr ptr, ptr %31, i32 %10
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.urb, ptr %33, i32 0, i32 12
  store i32 %24, ptr %34, align 4
  tail call void @usb_sg_cancel(ptr noundef %0)
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #10
  %35 = load i32, ptr %0, align 4
  switch i32 %35, label %37 [
    i32 0, label %36
    i32 -104, label %36
  ]

36:                                               ; preds = %30, %30
  store i32 %24, ptr %0, align 4
  br label %37

37:                                               ; preds = %36, %30, %28
  %38 = phi i32 [ %29, %28 ], [ %10, %30 ], [ %10, %36 ]
  %39 = icmp slt i32 %38, %3
  br i1 %39, label %9, label %40

40:                                               ; preds = %37, %9, %1
  %41 = phi i32 [ 0, %1 ], [ %38, %37 ], [ %10, %9 ]
  %42 = sub i32 %41, %3
  %43 = getelementptr inbounds %struct.usb_sg_request, ptr %0, i32 0, i32 7
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, %42
  store i32 %45, ptr %43, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.usb_sg_request, ptr %0, i32 0, i32 8
  tail call void @complete(ptr noundef %48) #10
  br label %49

49:                                               ; preds = %47, %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %50 = load i16, ptr %4, align 4
  %51 = add i16 %50, 1
  store i16 %51, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  %52 = getelementptr inbounds %struct.usb_sg_request, ptr %0, i32 0, i32 8
  tail call void @wait_for_completion(ptr noundef %52) #10
  %53 = getelementptr inbounds %struct.usb_sg_request, ptr %0, i32 0, i32 6
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %71, label %56

56:                                               ; preds = %49
  %57 = load i32, ptr %2, align 4
  %58 = add i32 %57, -1
  store i32 %58, ptr %2, align 4
  %59 = icmp eq i32 %57, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %60, %56
  %61 = phi ptr [ %68, %60 ], [ %54, %56 ]
  %62 = phi i32 [ %66, %60 ], [ %58, %56 ]
  %63 = getelementptr ptr, ptr %61, i32 %62
  %64 = load ptr, ptr %63, align 4
  tail call void @usb_free_urb(ptr noundef %64) #10
  %65 = load i32, ptr %2, align 4
  %66 = add i32 %65, -1
  store i32 %66, ptr %2, align 4
  %67 = icmp eq i32 %65, 0
  %68 = load ptr, ptr %53, align 4
  br i1 %67, label %69, label %60

69:                                               ; preds = %60, %56
  %70 = phi ptr [ %54, %56 ], [ %68, %60 ]
  tail call void @kfree(ptr noundef %70) #10
  store ptr null, ptr %53, align 4
  br label %71

71:                                               ; preds = %69, %49
  %72 = getelementptr inbounds %struct.usb_sg_request, ptr %0, i32 0, i32 3
  store ptr null, ptr %72, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @yield() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_sg_cancel(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_sg_request, ptr %0, i32 0, i32 2
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #10
  %4 = load i32, ptr %0, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %41

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.usb_sg_request, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %41, label %10

10:                                               ; preds = %6
  store i32 -104, ptr %0, align 4
  %11 = add i32 %8, 1
  store i32 %11, ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #10
  %12 = getelementptr inbounds %struct.usb_sg_request, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -1
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %34

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.usb_sg_request, ptr %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.usb_sg_request, ptr %0, i32 0, i32 3
  br label %19

19:                                               ; preds = %31, %16
  %20 = phi i32 [ %14, %16 ], [ %32, %31 ]
  %21 = load ptr, ptr %17, align 4
  %22 = getelementptr ptr, ptr %21, i32 %20
  %23 = load ptr, ptr %22, align 4
  tail call void @usb_block_urb(ptr noundef %23) #10
  %24 = load ptr, ptr %17, align 4
  %25 = getelementptr ptr, ptr %24, i32 %20
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @usb_unlink_urb(ptr noundef %26) #10
  switch i32 %27, label %28 [
    i32 -16, label %31
    i32 -19, label %31
    i32 -43, label %31
    i32 -115, label %31
  ]

28:                                               ; preds = %19
  %29 = load ptr, ptr %18, align 4
  %30 = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.usb_sg_cancel, i32 noundef %27) #12
  br label %31

31:                                               ; preds = %28, %19, %19, %19, %19
  %32 = add i32 %20, -1
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %19, label %34

34:                                               ; preds = %31, %10
  %35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #10
  %36 = load i32, ptr %7, align 4
  %37 = add i32 %36, -1
  store i32 %37, ptr %7, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.usb_sg_request, ptr %0, i32 0, i32 8
  tail call void @complete(ptr noundef %40) #10
  br label %41

41:                                               ; preds = %39, %34, %6, %1
  %42 = phi i32 [ %3, %6 ], [ %3, %1 ], [ %35, %39 ], [ %35, %34 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %42) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_block_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_get_descriptor(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = icmp slt i32 %4, 1
  br i1 %6, label %54, label %7

7:                                                ; preds = %5
  tail call void @llvm.memset.p0.i32(ptr align 1 %3, i8 0, i32 %4, i1 false)
  %8 = getelementptr i8, ptr %3, i32 1
  %9 = zext i8 %1 to i16
  %10 = shl nuw i16 %9, 8
  %11 = zext i8 %2 to i16
  %12 = or i16 %10, %11
  %13 = trunc i32 %4 to i16
  %14 = load i32, ptr %0, align 8
  %15 = shl i32 %14, 8
  %16 = or i32 %15, -2147483520
  %17 = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %16, i8 noundef zeroext 6, i8 noundef zeroext -128, i16 noundef zeroext %12, i16 noundef zeroext 0, ptr noundef %3, i16 noundef zeroext %13, i32 noundef 5000)
  %18 = icmp slt i32 %17, 1
  %19 = icmp ne i32 %17, -110
  %20 = and i1 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %7
  %22 = icmp sgt i32 %17, 1
  br i1 %22, label %23, label %54

23:                                               ; preds = %21
  %24 = load i8, ptr %8, align 1
  %25 = icmp eq i8 %24, %1
  br i1 %25, label %54, label %26

26:                                               ; preds = %23, %7
  %27 = load i32, ptr %0, align 8
  %28 = shl i32 %27, 8
  %29 = or i32 %28, -2147483520
  %30 = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %29, i8 noundef zeroext 6, i8 noundef zeroext -128, i16 noundef zeroext %12, i16 noundef zeroext 0, ptr noundef %3, i16 noundef zeroext %13, i32 noundef 5000)
  %31 = icmp slt i32 %30, 1
  %32 = icmp ne i32 %30, -110
  %33 = and i1 %31, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %26
  %35 = icmp sgt i32 %30, 1
  br i1 %35, label %36, label %54

36:                                               ; preds = %34
  %37 = load i8, ptr %8, align 1
  %38 = icmp eq i8 %37, %1
  br i1 %38, label %54, label %39

39:                                               ; preds = %36, %26
  %40 = load i32, ptr %0, align 8
  %41 = shl i32 %40, 8
  %42 = or i32 %41, -2147483520
  %43 = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %42, i8 noundef zeroext 6, i8 noundef zeroext -128, i16 noundef zeroext %12, i16 noundef zeroext 0, ptr noundef %3, i16 noundef zeroext %13, i32 noundef 5000)
  %44 = icmp slt i32 %43, 1
  %45 = icmp ne i32 %43, -110
  %46 = and i1 %44, %45
  br i1 %46, label %52, label %47

47:                                               ; preds = %39
  %48 = icmp sgt i32 %43, 1
  br i1 %48, label %49, label %54

49:                                               ; preds = %47
  %50 = load i8, ptr %8, align 1
  %51 = icmp eq i8 %50, %1
  br i1 %51, label %54, label %52

52:                                               ; preds = %49, %39
  %53 = phi i32 [ %43, %39 ], [ -61, %49 ]
  br label %54

54:                                               ; preds = %52, %49, %47, %36, %34, %23, %21, %5
  %55 = phi i32 [ -22, %5 ], [ %17, %23 ], [ %17, %21 ], [ %30, %34 ], [ %30, %36 ], [ %43, %47 ], [ %43, %49 ], [ %53, %52 ]
  ret i32 %55
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_string(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 8
  br i1 %7, label %63, label %8

8:                                                ; preds = %4
  %9 = icmp ne i32 %3, 0
  %10 = icmp ne ptr %2, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %63

12:                                               ; preds = %8
  store i8 0, ptr %2, align 1
  %13 = add i32 %1, -256
  %14 = icmp ult i32 %13, -255
  br i1 %14, label %63, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3072, i32 noundef 256) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %63, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 28
  %21 = load i16, ptr %20, align 1
  %22 = and i16 %21, 4
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 30
  %26 = load i32, ptr %25, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %61, label %28

28:                                               ; preds = %24
  %29 = tail call fastcc i32 @usb_string_sub(ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %17) #10
  switch i32 %29, label %34 [
    i32 -61, label %30
    i32 3, label %30
    i32 2, label %30
    i32 1, label %30
  ]

30:                                               ; preds = %28, %28, %28, %28
  store i32 1033, ptr %25, align 4
  %31 = load i16, ptr %20, align 1
  %32 = or i16 %31, 4
  store i16 %32, ptr %20, align 1
  %33 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.18) #12
  br label %49

34:                                               ; preds = %28
  %35 = icmp slt i32 %29, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.19, i32 noundef %29) #12
  store i32 -1, ptr %25, align 4
  br label %61

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %17, i32 2
  %40 = load i8, ptr %39, align 2
  %41 = zext i8 %40 to i32
  %42 = getelementptr i8, ptr %17, i32 3
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = shl nuw nsw i32 %44, 8
  %46 = or i32 %45, %41
  store i32 %46, ptr %25, align 4
  %47 = load i16, ptr %20, align 1
  %48 = or i16 %47, 4
  store i16 %48, ptr %20, align 1
  br label %49

49:                                               ; preds = %38, %30, %19
  %50 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 30
  %51 = load i32, ptr %50, align 4
  %52 = tail call fastcc i32 @usb_string_sub(ptr noundef %0, i32 noundef %51, i32 noundef %1, ptr noundef nonnull %17)
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %49
  %55 = add i32 %3, -1
  %56 = getelementptr i8, ptr %17, i32 2
  %57 = add nsw i32 %52, -2
  %58 = sdiv i32 %57, 2
  %59 = tail call i32 @utf16s_to_utf8s(ptr noundef %56, i32 noundef %58, i32 noundef 1, ptr noundef nonnull %2, i32 noundef %55) #10
  %60 = getelementptr i8, ptr %2, i32 %59
  store i8 0, ptr %60, align 1
  br label %61

61:                                               ; preds = %54, %49, %36, %24
  %62 = phi i32 [ %52, %49 ], [ %59, %54 ], [ -32, %36 ], [ -32, %24 ]
  tail call void @kfree(ptr noundef nonnull %17) #10
  br label %63

63:                                               ; preds = %61, %15, %12, %8, %4
  %64 = phi i32 [ %62, %61 ], [ -113, %4 ], [ -22, %8 ], [ -22, %12 ], [ -12, %15 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @usb_string_sub(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 36
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  %9 = trunc i32 %1 to i16
  %10 = trunc i32 %2 to i8
  br i1 %8, label %11, label %14

11:                                               ; preds = %4
  %12 = tail call fastcc i32 @usb_get_string(ptr noundef %0, i16 noundef zeroext %9, i8 noundef zeroext %10, ptr noundef %3, i32 noundef 255)
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %24

14:                                               ; preds = %11, %4
  %15 = tail call fastcc i32 @usb_get_string(ptr noundef %0, i16 noundef zeroext %9, i8 noundef zeroext %10, ptr noundef %3, i32 noundef 2)
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i8, ptr %3, align 1
  %19 = zext i8 %18 to i32
  %20 = tail call fastcc i32 @usb_get_string(ptr noundef %0, i16 noundef zeroext %9, i8 noundef zeroext %10, ptr noundef %3, i32 noundef %19)
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i32 [ %20, %17 ], [ %15, %14 ]
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %64

24:                                               ; preds = %21, %11
  %25 = phi i32 [ %22, %21 ], [ %12, %11 ]
  %26 = load i8, ptr %3, align 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %3, i32 1
  %30 = load i8, ptr %29, align 1
  %31 = icmp eq i8 %30, 0
  %32 = icmp ugt i32 %25, 3
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %34, label %57

34:                                               ; preds = %48, %28
  %35 = phi i32 [ %50, %48 ], [ 3, %28 ]
  %36 = phi i32 [ %49, %48 ], [ 2, %28 ]
  %37 = getelementptr i8, ptr %3, i32 %36
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %39
  %41 = load i8, ptr %40, align 1
  %42 = and i8 %41, -105
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %34
  %45 = getelementptr i8, ptr %3, i32 %35
  %46 = load i8, ptr %45, align 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = add i32 %36, 2
  %50 = or i32 %49, 1
  %51 = icmp slt i32 %50, %25
  br i1 %51, label %34, label %52

52:                                               ; preds = %48, %44, %34
  %53 = phi i32 [ %49, %48 ], [ %36, %44 ], [ %36, %34 ]
  %54 = icmp sgt i32 %53, 2
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = trunc i32 %53 to i8
  store i8 %56, ptr %3, align 1
  br label %57

57:                                               ; preds = %55, %52, %28, %24
  %58 = phi i8 [ 0, %28 ], [ %26, %24 ], [ %56, %55 ], [ 0, %52 ]
  %59 = phi i32 [ %25, %28 ], [ %25, %24 ], [ %53, %55 ], [ %25, %52 ]
  %60 = zext i8 %58 to i32
  %61 = tail call i32 @llvm.smin.i32(i32 %59, i32 %60)
  %62 = and i32 %61, -2
  %63 = icmp slt i32 %62, 2
  br i1 %63, label %64, label %68

64:                                               ; preds = %57, %21
  %65 = phi i32 [ %62, %57 ], [ %22, %21 ]
  %66 = icmp slt i32 %65, 0
  %67 = select i1 %66, i32 %65, i32 -22
  br label %68

68:                                               ; preds = %64, %57
  %69 = phi i32 [ %67, %64 ], [ %62, %57 ]
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf16s_to_utf8s(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @usb_cache_string(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %1, 1
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3072, i32 noundef 382) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @usb_string(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %6, i32 noundef 382)
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = add nuw i32 %9, 1
  %13 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %12, i32 noundef 3072) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %13, ptr nonnull align 8 %6, i32 %12, i1 false)
  br label %16

16:                                               ; preds = %15, %8
  %17 = phi ptr [ %13, %15 ], [ null, %8 ]
  tail call void @kfree(ptr noundef nonnull %6) #10
  br label %18

18:                                               ; preds = %16, %11, %4, %2
  %19 = phi ptr [ null, %2 ], [ %6, %11 ], [ %17, %16 ], [ null, %4 ]
  ret ptr %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_get_device_descriptor(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ugt i32 %1, 18
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3072, i32 noundef 18) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @usb_get_descriptor(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %6, i32 noundef %1)
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %12, ptr nonnull align 8 %6, i32 %1, i1 false)
  br label %13

13:                                               ; preds = %11, %8
  tail call void @kfree(ptr noundef nonnull %6) #10
  br label %14

14:                                               ; preds = %13, %4, %2
  %15 = phi i32 [ %9, %13 ], [ -22, %2 ], [ -12, %4 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_set_isoch_delay(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16, i32 3
  %3 = load i8, ptr %2, align 4
  %4 = icmp eq i8 %3, 9
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, 5
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 48
  %11 = load i16, ptr %10, align 8
  %12 = load i32, ptr %0, align 8
  %13 = shl i32 %12, 8
  %14 = or i32 %13, -2147483648
  %15 = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %14, i8 noundef zeroext 49, i8 noundef zeroext 0, i16 noundef zeroext %11, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef null) #10
  %16 = tail call i32 @llvm.smin.i32(i32 %15, i32 0) #10
  br label %17

17:                                               ; preds = %9, %5, %1
  %18 = phi i32 [ %16, %9 ], [ 0, %1 ], [ 0, %5 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_get_status(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #0 {
  switch i32 %2, label %31 [
    i32 0, label %8
    i32 1, label %6
  ]

6:                                                ; preds = %5
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %6, %5
  %9 = phi i32 [ 2, %5 ], [ 4, %6 ]
  %10 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %9, i32 noundef 3264) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %8
  %13 = load i32, ptr %0, align 8
  %14 = shl i32 %13, 8
  %15 = or i32 %14, -2147483520
  %16 = trunc i32 %1 to i8
  %17 = or i8 %16, -128
  %18 = trunc i32 %3 to i16
  %19 = trunc i32 %9 to i16
  %20 = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %15, i8 noundef zeroext 0, i8 noundef zeroext %17, i16 noundef zeroext 0, i16 noundef zeroext %18, ptr noundef nonnull %10, i16 noundef zeroext %19, i32 noundef 5000)
  switch i32 %20, label %29 [
    i32 4, label %21
    i32 2, label %25
  ]

21:                                               ; preds = %12
  %22 = icmp eq i32 %2, 1
  br i1 %22, label %23, label %29

23:                                               ; preds = %21
  %24 = load i32, ptr %10, align 64
  store i32 %24, ptr %4, align 4
  br label %29

25:                                               ; preds = %12
  %26 = icmp eq i32 %2, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  %28 = load i16, ptr %10, align 64
  store i16 %28, ptr %4, align 2
  br label %29

29:                                               ; preds = %27, %25, %23, %21, %12
  %30 = phi i32 [ 0, %27 ], [ 0, %23 ], [ -5, %21 ], [ -5, %25 ], [ -5, %12 ]
  tail call void @kfree(ptr noundef nonnull %10) #10
  br label %31

31:                                               ; preds = %29, %8, %6, %5
  %32 = phi i32 [ %30, %29 ], [ -22, %6 ], [ -22, %5 ], [ -12, %8 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_clear_halt(ptr noundef %0, i32 noundef %1) #0 {
  %3 = lshr i32 %1, 15
  %4 = and i32 %3, 15
  %5 = and i32 %1, 128
  %6 = or i32 %4, %5
  %7 = trunc i32 %6 to i16
  %8 = load i32, ptr %0, align 8
  %9 = shl i32 %8, 8
  %10 = or i32 %9, -2147483648
  %11 = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %10, i8 noundef zeroext 1, i8 noundef zeroext 2, i16 noundef zeroext 0, i16 noundef zeroext %7, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef null) #10
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = icmp eq i32 %5, 0
  %15 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 21, i32 %4
  %16 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 22, i32 %4
  %17 = select i1 %14, ptr %16, ptr %15
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  tail call void @usb_hcd_reset_endpoint(ptr noundef %0, ptr noundef nonnull %18) #10
  br label %21

21:                                               ; preds = %20, %13, %2
  %22 = tail call i32 @llvm.smin.i32(i32 %11, i32 0) #10
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_reset_endpoint(ptr noundef %0, i32 noundef %1) #0 {
  %3 = and i32 %1, 15
  %4 = and i32 %1, 128
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 21, i32 %3
  %7 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 22, i32 %3
  %8 = select i1 %5, ptr %7, ptr %6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  tail call void @usb_hcd_reset_endpoint(ptr noundef %0, ptr noundef nonnull %9) #10
  br label %12

12:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_disable_endpoint(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = and i32 %1, 15
  %5 = icmp eq ptr %0, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %3
  %7 = and i32 %1, 128
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 22, i32 %4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp ne i32 %4, 0
  %13 = and i1 %12, %2
  br i1 %13, label %19, label %22

14:                                               ; preds = %6
  %15 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 21, i32 %4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp ne i32 %4, 0
  %18 = and i1 %17, %2
  br i1 %18, label %19, label %22

19:                                               ; preds = %14, %9
  %20 = phi ptr [ %10, %9 ], [ %15, %14 ]
  %21 = phi ptr [ %11, %9 ], [ %16, %14 ]
  store ptr null, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %14, %9
  %23 = phi ptr [ %16, %14 ], [ %11, %9 ], [ %21, %19 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.usb_host_endpoint, ptr %23, i32 0, i32 9
  store i32 0, ptr %26, align 4
  tail call void @usb_hcd_flush_endpoint(ptr noundef nonnull %0, ptr noundef nonnull %23) #10
  br i1 %2, label %27, label %28

27:                                               ; preds = %25
  tail call void @usb_hcd_disable_endpoint(ptr noundef nonnull %0, ptr noundef nonnull %23) #10
  br label %28

28:                                               ; preds = %27, %25, %22, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_flush_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_disable_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_reset_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_disable_interface(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %5, i32 0, i32 4
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.usb_host_interface, ptr %5, i32 0, i32 3
  %11 = icmp eq ptr %0, null
  br label %12

12:                                               ; preds = %41, %9
  %13 = phi i32 [ 0, %9 ], [ %42, %41 ]
  %14 = load ptr, ptr %10, align 4
  %15 = getelementptr %struct.usb_host_endpoint, ptr %14, i32 %13, i32 0, i32 2
  %16 = load i8, ptr %15, align 2
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 15
  br i1 %11, label %41, label %19

19:                                               ; preds = %12
  %20 = and i32 %17, 128
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 22, i32 %18
  %24 = load ptr, ptr %23, align 4
  %25 = icmp ne i32 %18, 0
  %26 = and i1 %25, %2
  br i1 %26, label %32, label %35

27:                                               ; preds = %19
  %28 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 21, i32 %18
  %29 = load ptr, ptr %28, align 4
  %30 = icmp ne i32 %18, 0
  %31 = and i1 %30, %2
  br i1 %31, label %32, label %35

32:                                               ; preds = %27, %22
  %33 = phi ptr [ %23, %22 ], [ %28, %27 ]
  %34 = phi ptr [ %24, %22 ], [ %29, %27 ]
  store ptr null, ptr %33, align 4
  br label %35

35:                                               ; preds = %32, %27, %22
  %36 = phi ptr [ %29, %27 ], [ %24, %22 ], [ %34, %32 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.usb_host_endpoint, ptr %36, i32 0, i32 9
  store i32 0, ptr %39, align 4
  tail call void @usb_hcd_flush_endpoint(ptr noundef nonnull %0, ptr noundef nonnull %36) #10
  br i1 %2, label %40, label %41

40:                                               ; preds = %38
  tail call void @usb_hcd_disable_endpoint(ptr noundef nonnull %0, ptr noundef nonnull %36) #10
  br label %41

41:                                               ; preds = %40, %38, %35, %12
  %42 = add nuw nsw i32 %13, 1
  %43 = load i8, ptr %6, align 4
  %44 = zext i8 %43 to i32
  %45 = icmp ult i32 %42, %44
  br i1 %45, label %12, label %46

46:                                               ; preds = %41, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_disable_device(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 20
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %95, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.usb_config_descriptor, ptr %4, i32 0, i32 3
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %87, label %12

10:                                               ; preds = %12
  %11 = icmp eq i8 %23, 0
  br i1 %11, label %87, label %28

12:                                               ; preds = %12, %6
  %13 = phi ptr [ %21, %12 ], [ %4, %6 ]
  %14 = phi i32 [ %20, %12 ], [ 0, %6 ]
  %15 = getelementptr %struct.usb_host_config, ptr %13, i32 0, i32 3, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.usb_interface, ptr %16, i32 0, i32 6
  %18 = load i8, ptr %17, align 8
  %19 = or i8 %18, 4
  store i8 %19, ptr %17, align 8
  %20 = add nuw nsw i32 %14, 1
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr inbounds %struct.usb_config_descriptor, ptr %21, i32 0, i32 3
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i32
  %25 = icmp ult i32 %20, %24
  br i1 %25, label %12, label %10

26:                                               ; preds = %66
  %27 = icmp eq i8 %70, 0
  br i1 %27, label %87, label %73

28:                                               ; preds = %66, %10
  %29 = phi ptr [ %67, %66 ], [ %21, %10 ]
  %30 = phi i32 [ %68, %66 ], [ 0, %10 ]
  %31 = getelementptr %struct.usb_host_config, ptr %29, i32 0, i32 3, i32 %30
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.usb_interface, ptr %32, i32 0, i32 7
  %34 = getelementptr inbounds %struct.usb_interface, ptr %32, i32 0, i32 7, i32 0, i32 7
  %35 = load i8, ptr %34, align 8
  %36 = and i8 %35, 2
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %66, label %38

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.usb_interface, ptr %32, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.usb_interface, ptr %32, i32 0, i32 6
  %42 = load i8, ptr %41, align 8
  %43 = and i8 %42, 2
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %64, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %40, i32 0, i32 4
  %47 = load i8, ptr %46, align 4
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.usb_host_interface, ptr %40, i32 0, i32 3
  br label %51

51:                                               ; preds = %51, %49
  %52 = phi i32 [ 0, %49 ], [ %55, %51 ]
  %53 = load ptr, ptr %50, align 4
  %54 = getelementptr %struct.usb_host_endpoint, ptr %53, i32 %52
  tail call void @usb_remove_ep_devs(ptr noundef %54) #10
  %55 = add nuw nsw i32 %52, 1
  %56 = load i8, ptr %46, align 4
  %57 = zext i8 %56 to i32
  %58 = icmp ult i32 %55, %57
  br i1 %58, label %51, label %59

59:                                               ; preds = %51
  %60 = load i8, ptr %41, align 8
  br label %61

61:                                               ; preds = %59, %45
  %62 = phi i8 [ %60, %59 ], [ %42, %45 ]
  %63 = and i8 %62, -3
  store i8 %63, ptr %41, align 8
  br label %64

64:                                               ; preds = %61, %38
  tail call void @device_del(ptr noundef %33) #10
  %65 = load ptr, ptr %3, align 4
  br label %66

66:                                               ; preds = %64, %28
  %67 = phi ptr [ %29, %28 ], [ %65, %64 ]
  %68 = add nuw nsw i32 %30, 1
  %69 = getelementptr inbounds %struct.usb_config_descriptor, ptr %67, i32 0, i32 3
  %70 = load i8, ptr %69, align 4
  %71 = zext i8 %70 to i32
  %72 = icmp ult i32 %68, %71
  br i1 %72, label %28, label %26

73:                                               ; preds = %73, %26
  %74 = phi ptr [ %82, %73 ], [ %67, %26 ]
  %75 = phi i32 [ %81, %73 ], [ 0, %26 ]
  %76 = getelementptr %struct.usb_host_config, ptr %74, i32 0, i32 3, i32 %75
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.usb_interface, ptr %77, i32 0, i32 7
  tail call void @put_device(ptr noundef %78) #10
  %79 = load ptr, ptr %3, align 4
  %80 = getelementptr %struct.usb_host_config, ptr %79, i32 0, i32 3, i32 %75
  store ptr null, ptr %80, align 4
  %81 = add nuw nsw i32 %75, 1
  %82 = load ptr, ptr %3, align 4
  %83 = getelementptr inbounds %struct.usb_config_descriptor, ptr %82, i32 0, i32 3
  %84 = load i8, ptr %83, align 4
  %85 = zext i8 %84 to i32
  %86 = icmp ult i32 %81, %85
  br i1 %86, label %73, label %87

87:                                               ; preds = %73, %26, %10, %6
  %88 = tail call i32 @usb_disable_usb2_hardware_lpm(ptr noundef %0) #10
  %89 = tail call i32 @usb_unlocked_disable_lpm(ptr noundef %0) #10
  %90 = tail call i32 @usb_disable_ltm(ptr noundef %0) #10
  store ptr null, ptr %3, align 4
  %91 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 3
  %92 = load i32, ptr %91, align 8
  %93 = icmp eq i32 %92, 7
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  tail call void @usb_set_device_state(ptr noundef %0, i32 noundef 6) #10
  br label %95

95:                                               ; preds = %94, %87, %2
  tail call fastcc void @usb_disable_device_endpoints(ptr noundef %0, i32 noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disable_usb2_hardware_lpm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlocked_disable_lpm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disable_ltm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_set_device_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @usb_disable_device_endpoints(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.hc_driver, ptr %6, i32 0, i32 33
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %41, label %10

10:                                               ; preds = %2
  %11 = icmp slt i32 %1, 16
  br i1 %11, label %12, label %36

12:                                               ; preds = %10
  %13 = icmp eq ptr %0, null
  br label %14

14:                                               ; preds = %33, %12
  %15 = phi i32 [ %1, %12 ], [ %34, %33 ]
  br i1 %13, label %33, label %16

16:                                               ; preds = %14
  %17 = and i32 %15, 15
  %18 = and i32 %15, 128
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 21, i32 %17
  %21 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 22, i32 %17
  %22 = select i1 %19, ptr %21, ptr %20
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.usb_host_endpoint, ptr %23, i32 0, i32 9
  store i32 0, ptr %26, align 4
  tail call void @usb_hcd_flush_endpoint(ptr noundef nonnull %0, ptr noundef nonnull %23) #10
  br label %27

27:                                               ; preds = %25, %16
  %28 = select i1 %19, ptr %20, ptr %21
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.usb_host_endpoint, ptr %29, i32 0, i32 9
  store i32 0, ptr %32, align 4
  tail call void @usb_hcd_flush_endpoint(ptr noundef nonnull %0, ptr noundef nonnull %29) #10
  br label %33

33:                                               ; preds = %31, %27, %14
  %34 = add i32 %15, 1
  %35 = icmp eq i32 %34, 16
  br i1 %35, label %36, label %14

36:                                               ; preds = %33, %10
  %37 = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 0, i32 23
  %38 = load ptr, ptr %37, align 4
  tail call void @mutex_lock(ptr noundef %38) #10
  %39 = tail call i32 @usb_hcd_alloc_bandwidth(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null) #10
  %40 = load ptr, ptr %37, align 4
  tail call void @mutex_unlock(ptr noundef %40) #10
  br label %41

41:                                               ; preds = %36, %2
  %42 = icmp slt i32 %1, 16
  br i1 %42, label %43, label %87

43:                                               ; preds = %41
  %44 = icmp eq ptr %0, null
  br label %45

45:                                               ; preds = %84, %43
  %46 = phi i32 [ %1, %43 ], [ %85, %84 ]
  %47 = and i32 %46, 15
  br i1 %44, label %84, label %48

48:                                               ; preds = %45
  %49 = and i32 %46, 128
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 22, i32 %47
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq i32 %47, 0
  br i1 %54, label %62, label %59

55:                                               ; preds = %48
  %56 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 21, i32 %47
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq i32 %47, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55, %51
  %60 = phi ptr [ %52, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %53, %51 ], [ %57, %55 ]
  store ptr null, ptr %60, align 4
  br label %62

62:                                               ; preds = %59, %55, %51
  %63 = phi ptr [ %57, %55 ], [ %53, %51 ], [ %61, %59 ]
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.usb_host_endpoint, ptr %63, i32 0, i32 9
  store i32 0, ptr %66, align 4
  tail call void @usb_hcd_flush_endpoint(ptr noundef nonnull %0, ptr noundef nonnull %63) #10
  tail call void @usb_hcd_disable_endpoint(ptr noundef nonnull %0, ptr noundef nonnull %63) #10
  br label %67

67:                                               ; preds = %65, %62
  br i1 %50, label %72, label %68

68:                                               ; preds = %67
  %69 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 22, i32 %47
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq i32 %47, 0
  br i1 %71, label %79, label %76

72:                                               ; preds = %67
  %73 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 21, i32 %47
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq i32 %47, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72, %68
  %77 = phi ptr [ %69, %68 ], [ %73, %72 ]
  %78 = phi ptr [ %70, %68 ], [ %74, %72 ]
  store ptr null, ptr %77, align 4
  br label %79

79:                                               ; preds = %76, %72, %68
  %80 = phi ptr [ %74, %72 ], [ %70, %68 ], [ %78, %76 ]
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.usb_host_endpoint, ptr %80, i32 0, i32 9
  store i32 0, ptr %83, align 4
  tail call void @usb_hcd_flush_endpoint(ptr noundef nonnull %0, ptr noundef nonnull %80) #10
  tail call void @usb_hcd_disable_endpoint(ptr noundef nonnull %0, ptr noundef nonnull %80) #10
  br label %84

84:                                               ; preds = %82, %79, %45
  %85 = add i32 %46, 1
  %86 = icmp eq i32 %85, 16
  br i1 %86, label %87, label %45

87:                                               ; preds = %84, %41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_enable_endpoint(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 2
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, 15
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 3
  %9 = load i8, ptr %8, align 1
  %10 = and i8 %9, 3
  %11 = icmp eq i8 %10, 0
  br i1 %2, label %12, label %13

12:                                               ; preds = %3
  tail call void @usb_hcd_reset_endpoint(ptr noundef %0, ptr noundef %1) #10
  br label %13

13:                                               ; preds = %12, %3
  %14 = icmp sgt i8 %5, -1
  %15 = select i1 %14, i1 true, i1 %11
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 22, i32 %7
  store ptr %1, ptr %17, align 4
  %18 = icmp slt i8 %5, 0
  %19 = select i1 %18, i1 true, i1 %11
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %13
  %21 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 21, i32 %7
  store ptr %1, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %16
  %23 = getelementptr inbounds %struct.usb_host_endpoint, ptr %1, i32 0, i32 9
  store i32 1, ptr %23, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_enable_interface(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %5, i32 0, i32 4
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %39, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.usb_host_interface, ptr %5, i32 0, i32 3
  br label %11

11:                                               ; preds = %33, %9
  %12 = phi i32 [ 0, %9 ], [ %35, %33 ]
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr %struct.usb_host_endpoint, ptr %13, i32 %12
  %15 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %14, i32 0, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = and i8 %16, 15
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %14, i32 0, i32 3
  %20 = load i8, ptr %19, align 1
  %21 = and i8 %20, 3
  %22 = icmp eq i8 %21, 0
  br i1 %2, label %23, label %24

23:                                               ; preds = %11
  tail call void @usb_hcd_reset_endpoint(ptr noundef %0, ptr noundef %14) #10
  br label %24

24:                                               ; preds = %23, %11
  %25 = icmp sgt i8 %16, -1
  %26 = select i1 %25, i1 true, i1 %22
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 22, i32 %18
  store ptr %14, ptr %28, align 4
  %29 = icmp slt i8 %16, 0
  %30 = select i1 %29, i1 true, i1 %22
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %24
  %32 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 21, i32 %18
  store ptr %14, ptr %32, align 4
  br label %33

33:                                               ; preds = %31, %27
  %34 = getelementptr %struct.usb_host_endpoint, ptr %13, i32 %12, i32 9
  store i32 1, ptr %34, align 4
  %35 = add nuw nsw i32 %12, 1
  %36 = load i8, ptr %6, align 4
  %37 = zext i8 %36 to i32
  %38 = icmp ult i32 %35, %37
  br i1 %38, label %11, label %39

39:                                               ; preds = %33, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_set_interface(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 8
  br i1 %8, label %283, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @usb_ifnum_to_if(ptr noundef %0, i32 noundef %1) #10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %283, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 6
  %14 = load i8, ptr %13, align 8
  %15 = and i8 %14, 4
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %283

17:                                               ; preds = %12
  %18 = tail call ptr @usb_altnum_to_altsetting(ptr noundef nonnull %10, i32 noundef %2) #10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.1, i32 noundef %2) #12
  br label %283

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %24, i32 0, i32 4
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %55, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.usb_host_interface, ptr %24, i32 0, i32 3
  %30 = icmp eq ptr %0, null
  br label %31

31:                                               ; preds = %50, %28
  %32 = phi i8 [ %26, %28 ], [ %51, %50 ]
  %33 = phi i32 [ 0, %28 ], [ %52, %50 ]
  br i1 %30, label %50, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %29, align 4
  %36 = getelementptr %struct.usb_host_endpoint, ptr %35, i32 %33, i32 0, i32 2
  %37 = load i8, ptr %36, align 2
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 15
  %40 = and i32 %38, 128
  %41 = icmp eq i32 %40, 0
  %42 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 21, i32 %39
  %43 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 22, i32 %39
  %44 = select i1 %41, ptr %43, ptr %42
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.usb_host_endpoint, ptr %45, i32 0, i32 9
  store i32 0, ptr %48, align 4
  tail call void @usb_hcd_flush_endpoint(ptr noundef nonnull %0, ptr noundef nonnull %45) #10
  %49 = load i8, ptr %25, align 4
  br label %50

50:                                               ; preds = %47, %34, %31
  %51 = phi i8 [ %49, %47 ], [ %32, %34 ], [ %32, %31 ]
  %52 = add nuw nsw i32 %33, 1
  %53 = zext i8 %51 to i32
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %31, label %55

55:                                               ; preds = %50, %22
  %56 = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 0, i32 23
  %57 = load ptr, ptr %56, align 4
  tail call void @mutex_lock(ptr noundef %57) #10
  %58 = tail call i32 @usb_disable_lpm(ptr noundef %0) #10
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load ptr, ptr %23, align 4
  %62 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %61, i32 0, i32 4
  %63 = load i8, ptr %62, align 4
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %80, label %68

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.usb_set_interface) #12
  %67 = load ptr, ptr %56, align 4
  tail call void @mutex_unlock(ptr noundef %67) #10
  br label %283

68:                                               ; preds = %68, %60
  %69 = phi ptr [ %75, %68 ], [ %61, %60 ]
  %70 = phi i32 [ %74, %68 ], [ 0, %60 ]
  %71 = getelementptr inbounds %struct.usb_host_interface, ptr %69, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr %struct.usb_host_endpoint, ptr %72, i32 %70, i32 10
  store i32 0, ptr %73, align 4
  %74 = add nuw nsw i32 %70, 1
  %75 = load ptr, ptr %23, align 4
  %76 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %75, i32 0, i32 4
  %77 = load i8, ptr %76, align 4
  %78 = zext i8 %77 to i32
  %79 = icmp ult i32 %74, %78
  br i1 %79, label %68, label %80

80:                                               ; preds = %68, %60
  %81 = phi ptr [ %61, %60 ], [ %75, %68 ]
  %82 = tail call i32 @usb_hcd_alloc_bandwidth(ptr noundef %0, ptr noundef null, ptr noundef %81, ptr noundef nonnull %18) #10
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %85, ptr noundef nonnull @.str.3, i32 noundef %2) #12
  tail call void @usb_enable_lpm(ptr noundef %0) #10
  %86 = load ptr, ptr %56, align 4
  tail call void @mutex_unlock(ptr noundef %86) #10
  br label %283

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 36
  %89 = load i32, ptr %88, align 8
  %90 = and i32 %89, 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = trunc i32 %2 to i16
  %94 = trunc i32 %1 to i16
  %95 = load i32, ptr %0, align 8
  %96 = shl i32 %95, 8
  %97 = or i32 %96, -2147483648
  %98 = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %97, i8 noundef zeroext 11, i8 noundef zeroext 1, i16 noundef zeroext %93, i16 noundef zeroext %94, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef null) #10
  %99 = tail call i32 @llvm.smin.i32(i32 %98, i32 0) #10
  switch i32 %99, label %104 [
    i32 -32, label %100
    i32 0, label %109
  ]

100:                                              ; preds = %92, %87
  %101 = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 2
  %102 = load i32, ptr %101, align 8
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %109, label %104

104:                                              ; preds = %100, %92
  %105 = phi i32 [ %99, %92 ], [ -32, %100 ]
  %106 = load ptr, ptr %23, align 4
  %107 = tail call i32 @usb_hcd_alloc_bandwidth(ptr noundef %0, ptr noundef null, ptr noundef nonnull %18, ptr noundef %106) #10
  tail call void @usb_enable_lpm(ptr noundef %0) #10
  %108 = load ptr, ptr %56, align 4
  tail call void @mutex_unlock(ptr noundef %108) #10
  br label %283

109:                                              ; preds = %100, %92
  %110 = phi i1 [ false, %100 ], [ true, %92 ]
  %111 = load ptr, ptr %56, align 4
  tail call void @mutex_unlock(ptr noundef %111) #10
  %112 = load ptr, ptr %23, align 4
  %113 = icmp eq ptr %112, %18
  br i1 %113, label %139, label %114

114:                                              ; preds = %109
  %115 = load i8, ptr %13, align 8
  %116 = and i8 %115, 2
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %137, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %112, i32 0, i32 4
  %120 = load i8, ptr %119, align 4
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %134, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.usb_host_interface, ptr %112, i32 0, i32 3
  br label %124

124:                                              ; preds = %124, %122
  %125 = phi i32 [ 0, %122 ], [ %128, %124 ]
  %126 = load ptr, ptr %123, align 4
  %127 = getelementptr %struct.usb_host_endpoint, ptr %126, i32 %125
  tail call void @usb_remove_ep_devs(ptr noundef %127) #10
  %128 = add nuw nsw i32 %125, 1
  %129 = load i8, ptr %119, align 4
  %130 = zext i8 %129 to i32
  %131 = icmp ult i32 %128, %130
  br i1 %131, label %124, label %132

132:                                              ; preds = %124
  %133 = load i8, ptr %13, align 8
  br label %134

134:                                              ; preds = %132, %118
  %135 = phi i8 [ %133, %132 ], [ %115, %118 ]
  %136 = and i8 %135, -3
  store i8 %136, ptr %13, align 8
  br label %137

137:                                              ; preds = %134, %114
  tail call void @usb_remove_sysfs_intf_files(ptr noundef nonnull %10) #10
  %138 = load ptr, ptr %23, align 4
  br label %139

139:                                              ; preds = %137, %109
  %140 = phi ptr [ %138, %137 ], [ %18, %109 ]
  %141 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %140, i32 0, i32 4
  %142 = load i8, ptr %141, align 4
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %178, label %144

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.usb_host_interface, ptr %140, i32 0, i32 3
  %146 = icmp eq ptr %0, null
  br label %147

147:                                              ; preds = %173, %144
  %148 = phi i32 [ 0, %144 ], [ %174, %173 ]
  %149 = load ptr, ptr %145, align 4
  %150 = getelementptr %struct.usb_host_endpoint, ptr %149, i32 %148, i32 0, i32 2
  %151 = load i8, ptr %150, align 2
  %152 = zext i8 %151 to i32
  %153 = and i32 %152, 15
  br i1 %146, label %173, label %154

154:                                              ; preds = %147
  %155 = and i32 %152, 128
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 22, i32 %153
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq i32 %153, 0
  br i1 %160, label %168, label %165

161:                                              ; preds = %154
  %162 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 21, i32 %153
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq i32 %153, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %161, %157
  %166 = phi ptr [ %158, %157 ], [ %162, %161 ]
  %167 = phi ptr [ %159, %157 ], [ %163, %161 ]
  store ptr null, ptr %166, align 4
  br label %168

168:                                              ; preds = %165, %161, %157
  %169 = phi ptr [ %163, %161 ], [ %159, %157 ], [ %167, %165 ]
  %170 = icmp eq ptr %169, null
  br i1 %170, label %173, label %171

171:                                              ; preds = %168
  %172 = getelementptr inbounds %struct.usb_host_endpoint, ptr %169, i32 0, i32 9
  store i32 0, ptr %172, align 4
  tail call void @usb_hcd_flush_endpoint(ptr noundef nonnull %0, ptr noundef nonnull %169) #10
  tail call void @usb_hcd_disable_endpoint(ptr noundef nonnull %0, ptr noundef nonnull %169) #10
  br label %173

173:                                              ; preds = %171, %168, %147
  %174 = add nuw nsw i32 %148, 1
  %175 = load i8, ptr %141, align 4
  %176 = zext i8 %175 to i32
  %177 = icmp ult i32 %174, %176
  br i1 %177, label %147, label %178

178:                                              ; preds = %173, %139
  store ptr %18, ptr %23, align 4
  tail call void @usb_unlocked_enable_lpm(ptr noundef %0) #10
  br i1 %110, label %216, label %179

179:                                              ; preds = %178
  %180 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %18, i32 0, i32 4
  %181 = load i8, ptr %180, align 4
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %216, label %183

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.usb_host_interface, ptr %18, i32 0, i32 3
  br label %185

185:                                              ; preds = %211, %183
  %186 = phi i32 [ 0, %183 ], [ %212, %211 ]
  %187 = load ptr, ptr %184, align 4
  %188 = getelementptr %struct.usb_host_endpoint, ptr %187, i32 %186, i32 0, i32 2
  %189 = load i8, ptr %188, align 2
  %190 = zext i8 %189 to i32
  %191 = load i32, ptr %0, align 8
  %192 = shl i32 %191, 8
  %193 = shl nuw nsw i32 %190, 15
  %194 = or i32 %192, %193
  %195 = lshr i32 %194, 15
  %196 = and i32 %195, 15
  %197 = and i32 %190, 128
  %198 = or i32 %196, %197
  %199 = trunc i32 %198 to i16
  %200 = or i32 %192, -2147483648
  %201 = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %200, i8 noundef zeroext 1, i8 noundef zeroext 2, i16 noundef zeroext 0, i16 noundef zeroext %199, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef null) #10
  %202 = icmp sgt i32 %201, -1
  br i1 %202, label %203, label %211

203:                                              ; preds = %185
  %204 = icmp eq i32 %197, 0
  %205 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 21, i32 %196
  %206 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 22, i32 %196
  %207 = select i1 %204, ptr %206, ptr %205
  %208 = load ptr, ptr %207, align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %211, label %210

210:                                              ; preds = %203
  tail call void @usb_hcd_reset_endpoint(ptr noundef %0, ptr noundef nonnull %208) #10
  br label %211

211:                                              ; preds = %210, %203, %185
  %212 = add nuw nsw i32 %186, 1
  %213 = load i8, ptr %180, align 4
  %214 = zext i8 %213 to i32
  %215 = icmp ult i32 %212, %214
  br i1 %215, label %185, label %216

216:                                              ; preds = %211, %179, %178
  %217 = load ptr, ptr %23, align 4
  %218 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %217, i32 0, i32 4
  %219 = load i8, ptr %218, align 4
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %249, label %221

221:                                              ; preds = %216
  %222 = getelementptr inbounds %struct.usb_host_interface, ptr %217, i32 0, i32 3
  br label %223

223:                                              ; preds = %243, %221
  %224 = phi i32 [ 0, %221 ], [ %245, %243 ]
  %225 = load ptr, ptr %222, align 4
  %226 = getelementptr %struct.usb_host_endpoint, ptr %225, i32 %224
  %227 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %226, i32 0, i32 2
  %228 = load i8, ptr %227, align 1
  %229 = and i8 %228, 15
  %230 = zext i8 %229 to i32
  %231 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %226, i32 0, i32 3
  %232 = load i8, ptr %231, align 1
  %233 = and i8 %232, 3
  %234 = icmp eq i8 %233, 0
  tail call void @usb_hcd_reset_endpoint(ptr noundef %0, ptr noundef %226) #10
  %235 = icmp sgt i8 %228, -1
  %236 = select i1 %235, i1 true, i1 %234
  br i1 %236, label %237, label %241

237:                                              ; preds = %223
  %238 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 22, i32 %230
  store ptr %226, ptr %238, align 4
  %239 = icmp slt i8 %228, 0
  %240 = select i1 %239, i1 true, i1 %234
  br i1 %240, label %241, label %243

241:                                              ; preds = %237, %223
  %242 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 21, i32 %230
  store ptr %226, ptr %242, align 4
  br label %243

243:                                              ; preds = %241, %237
  %244 = getelementptr %struct.usb_host_endpoint, ptr %225, i32 %224, i32 9
  store i32 1, ptr %244, align 4
  %245 = add nuw nsw i32 %224, 1
  %246 = load i8, ptr %218, align 4
  %247 = zext i8 %246 to i32
  %248 = icmp ult i32 %245, %247
  br i1 %248, label %223, label %249

249:                                              ; preds = %243, %216
  %250 = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7
  %251 = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7, i32 0, i32 7
  %252 = load i8, ptr %251, align 8
  %253 = and i8 %252, 2
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %283, label %255

255:                                              ; preds = %249
  tail call void @usb_create_sysfs_intf_files(ptr noundef nonnull %10) #10
  %256 = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7, i32 1
  %257 = load ptr, ptr %256, align 4
  %258 = getelementptr i8, ptr %257, i32 -128
  %259 = load ptr, ptr %23, align 4
  %260 = load i8, ptr %13, align 8
  %261 = and i8 %260, 6
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %263, label %283

263:                                              ; preds = %255
  %264 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %259, i32 0, i32 4
  %265 = load i8, ptr %264, align 4
  %266 = icmp eq i8 %265, 0
  br i1 %266, label %280, label %267

267:                                              ; preds = %263
  %268 = getelementptr inbounds %struct.usb_host_interface, ptr %259, i32 0, i32 3
  br label %269

269:                                              ; preds = %269, %267
  %270 = phi i32 [ 0, %267 ], [ %274, %269 ]
  %271 = load ptr, ptr %268, align 4
  %272 = getelementptr %struct.usb_host_endpoint, ptr %271, i32 %270
  %273 = tail call i32 @usb_create_ep_devs(ptr noundef %250, ptr noundef %272, ptr noundef %258) #10
  %274 = add nuw nsw i32 %270, 1
  %275 = load i8, ptr %264, align 4
  %276 = zext i8 %275 to i32
  %277 = icmp ult i32 %274, %276
  br i1 %277, label %269, label %278

278:                                              ; preds = %269
  %279 = load i8, ptr %13, align 8
  br label %280

280:                                              ; preds = %278, %263
  %281 = phi i8 [ %279, %278 ], [ %260, %263 ]
  %282 = or i8 %281, 2
  store i8 %282, ptr %13, align 8
  br label %283

283:                                              ; preds = %280, %255, %249, %104, %84, %65, %20, %12, %9, %3
  %284 = phi i32 [ -12, %65 ], [ %82, %84 ], [ %105, %104 ], [ -22, %20 ], [ -113, %3 ], [ -22, %9 ], [ -19, %12 ], [ 0, %249 ], [ 0, %255 ], [ 0, %280 ]
  ret i32 %284
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_altnum_to_altsetting(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disable_lpm(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_alloc_bandwidth(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_enable_lpm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_sysfs_intf_files(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unlocked_enable_lpm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_create_sysfs_intf_files(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_reset_configuration(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 8
  br i1 %4, label %150, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 12
  %7 = load ptr, ptr %6, align 8
  tail call fastcc void @usb_disable_device_endpoints(ptr noundef %0, i32 noundef 1)
  %8 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 20
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 0, i32 23
  %11 = load ptr, ptr %10, align 4
  tail call void @mutex_lock(ptr noundef %11) #10
  %12 = tail call i32 @usb_disable_lpm(ptr noundef %0) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.usb_reset_configuration) #12
  %16 = load ptr, ptr %10, align 4
  tail call void @mutex_unlock(ptr noundef %16) #10
  br label %150

17:                                               ; preds = %5
  %18 = tail call i32 @usb_hcd_alloc_bandwidth(ptr noundef %0, ptr noundef %9, ptr noundef null, ptr noundef null) #10
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  tail call void @usb_enable_lpm(ptr noundef %0) #10
  %21 = load ptr, ptr %10, align 4
  tail call void @mutex_unlock(ptr noundef %21) #10
  br label %150

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.usb_config_descriptor, ptr %9, i32 0, i32 4
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i16
  %26 = load i32, ptr %0, align 8
  %27 = shl i32 %26, 8
  %28 = or i32 %27, -2147483648
  %29 = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %28, i8 noundef zeroext 9, i8 noundef zeroext 0, i16 noundef zeroext %25, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef null) #10
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = tail call i32 @usb_hcd_alloc_bandwidth(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null) #10
  tail call void @usb_enable_lpm(ptr noundef %0) #10
  %33 = load ptr, ptr %10, align 4
  tail call void @mutex_unlock(ptr noundef %33) #10
  br label %150

34:                                               ; preds = %22
  %35 = load ptr, ptr %10, align 4
  tail call void @mutex_unlock(ptr noundef %35) #10
  %36 = getelementptr inbounds %struct.usb_config_descriptor, ptr %9, i32 0, i32 3
  %37 = load i8, ptr %36, align 4
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %149, label %39

39:                                               ; preds = %144, %34
  %40 = phi i32 [ %145, %144 ], [ 0, %34 ]
  %41 = getelementptr %struct.usb_host_config, ptr %9, i32 0, i32 3, i32 %40
  %42 = load ptr, ptr %41, align 4
  %43 = tail call ptr @usb_altnum_to_altsetting(ptr noundef %42, i32 noundef 0) #10
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load ptr, ptr %42, align 8
  br label %47

47:                                               ; preds = %45, %39
  %48 = phi ptr [ %43, %39 ], [ %46, %45 ]
  %49 = getelementptr inbounds %struct.usb_interface, ptr %42, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %48, %50
  br i1 %51, label %77, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.usb_interface, ptr %42, i32 0, i32 6
  %54 = load i8, ptr %53, align 8
  %55 = and i8 %54, 2
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %76, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %50, i32 0, i32 4
  %59 = load i8, ptr %58, align 4
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.usb_host_interface, ptr %50, i32 0, i32 3
  br label %63

63:                                               ; preds = %63, %61
  %64 = phi i32 [ 0, %61 ], [ %67, %63 ]
  %65 = load ptr, ptr %62, align 4
  %66 = getelementptr %struct.usb_host_endpoint, ptr %65, i32 %64
  tail call void @usb_remove_ep_devs(ptr noundef %66) #10
  %67 = add nuw nsw i32 %64, 1
  %68 = load i8, ptr %58, align 4
  %69 = zext i8 %68 to i32
  %70 = icmp ult i32 %67, %69
  br i1 %70, label %63, label %71

71:                                               ; preds = %63
  %72 = load i8, ptr %53, align 8
  br label %73

73:                                               ; preds = %71, %57
  %74 = phi i8 [ %72, %71 ], [ %54, %57 ]
  %75 = and i8 %74, -3
  store i8 %75, ptr %53, align 8
  br label %76

76:                                               ; preds = %73, %52
  tail call void @usb_remove_sysfs_intf_files(ptr noundef %42) #10
  br label %77

77:                                               ; preds = %76, %47
  store ptr %48, ptr %49, align 4
  %78 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %48, i32 0, i32 4
  %79 = load i8, ptr %78, align 4
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %109, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.usb_host_interface, ptr %48, i32 0, i32 3
  br label %83

83:                                               ; preds = %103, %81
  %84 = phi i32 [ 0, %81 ], [ %105, %103 ]
  %85 = load ptr, ptr %82, align 4
  %86 = getelementptr %struct.usb_host_endpoint, ptr %85, i32 %84
  %87 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %86, i32 0, i32 2
  %88 = load i8, ptr %87, align 1
  %89 = and i8 %88, 15
  %90 = zext i8 %89 to i32
  %91 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %86, i32 0, i32 3
  %92 = load i8, ptr %91, align 1
  %93 = and i8 %92, 3
  %94 = icmp eq i8 %93, 0
  tail call void @usb_hcd_reset_endpoint(ptr noundef %0, ptr noundef %86) #10
  %95 = icmp sgt i8 %88, -1
  %96 = select i1 %95, i1 true, i1 %94
  br i1 %96, label %97, label %101

97:                                               ; preds = %83
  %98 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 22, i32 %90
  store ptr %86, ptr %98, align 4
  %99 = icmp slt i8 %88, 0
  %100 = select i1 %99, i1 true, i1 %94
  br i1 %100, label %101, label %103

101:                                              ; preds = %97, %83
  %102 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 21, i32 %90
  store ptr %86, ptr %102, align 4
  br label %103

103:                                              ; preds = %101, %97
  %104 = getelementptr %struct.usb_host_endpoint, ptr %85, i32 %84, i32 9
  store i32 1, ptr %104, align 4
  %105 = add nuw nsw i32 %84, 1
  %106 = load i8, ptr %78, align 4
  %107 = zext i8 %106 to i32
  %108 = icmp ult i32 %105, %107
  br i1 %108, label %83, label %109

109:                                              ; preds = %103, %77
  %110 = getelementptr inbounds %struct.usb_interface, ptr %42, i32 0, i32 7
  %111 = getelementptr inbounds %struct.usb_interface, ptr %42, i32 0, i32 7, i32 0, i32 7
  %112 = load i8, ptr %111, align 8
  %113 = and i8 %112, 2
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %144, label %115

115:                                              ; preds = %109
  tail call void @usb_create_sysfs_intf_files(ptr noundef %42) #10
  %116 = getelementptr inbounds %struct.usb_interface, ptr %42, i32 0, i32 7, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr i8, ptr %117, i32 -128
  %119 = load ptr, ptr %49, align 4
  %120 = getelementptr inbounds %struct.usb_interface, ptr %42, i32 0, i32 6
  %121 = load i8, ptr %120, align 8
  %122 = and i8 %121, 6
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %124, label %144

124:                                              ; preds = %115
  %125 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %119, i32 0, i32 4
  %126 = load i8, ptr %125, align 4
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %141, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.usb_host_interface, ptr %119, i32 0, i32 3
  br label %130

130:                                              ; preds = %130, %128
  %131 = phi i32 [ 0, %128 ], [ %135, %130 ]
  %132 = load ptr, ptr %129, align 4
  %133 = getelementptr %struct.usb_host_endpoint, ptr %132, i32 %131
  %134 = tail call i32 @usb_create_ep_devs(ptr noundef %110, ptr noundef %133, ptr noundef %118) #10
  %135 = add nuw nsw i32 %131, 1
  %136 = load i8, ptr %125, align 4
  %137 = zext i8 %136 to i32
  %138 = icmp ult i32 %135, %137
  br i1 %138, label %130, label %139

139:                                              ; preds = %130
  %140 = load i8, ptr %120, align 8
  br label %141

141:                                              ; preds = %139, %124
  %142 = phi i8 [ %140, %139 ], [ %121, %124 ]
  %143 = or i8 %142, 2
  store i8 %143, ptr %120, align 8
  br label %144

144:                                              ; preds = %141, %115, %109
  %145 = add nuw nsw i32 %40, 1
  %146 = load i8, ptr %36, align 4
  %147 = zext i8 %146 to i32
  %148 = icmp ult i32 %145, %147
  br i1 %148, label %39, label %149

149:                                              ; preds = %144, %34
  tail call void @usb_unlocked_enable_lpm(ptr noundef %0) #10
  br label %150

150:                                              ; preds = %149, %31, %20, %14, %1
  %151 = phi i32 [ -12, %14 ], [ %18, %20 ], [ %29, %31 ], [ 0, %149 ], [ -113, %1 ]
  ret i32 %151
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_deauthorize_interface(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 6
  %6 = load i8, ptr %5, align 8
  %7 = icmp sgt i8 %6, -1
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 9
  tail call void @mutex_lock(ptr noundef %9) #10
  %10 = load i8, ptr %5, align 8
  %11 = and i8 %10, 127
  store i8 %11, ptr %5, align 8
  tail call void @mutex_unlock(ptr noundef %9) #10
  tail call void @usb_forced_unbind_intf(ptr noundef %0) #10
  br label %12

12:                                               ; preds = %8, %1
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %14) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_forced_unbind_intf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_authorize_interface(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 6
  %3 = load i8, ptr %2, align 8
  %4 = icmp sgt i8 %3, -1
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 9
  tail call void @mutex_lock(ptr noundef %6) #10
  %7 = load i8, ptr %2, align 8
  %8 = or i8 %7, -128
  store i8 %8, ptr %2, align 8
  tail call void @mutex_unlock(ptr noundef %6) #10
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_if_uevent(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 36
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -28
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 5
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 6
  %11 = load i8, ptr %10, align 2
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 7
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %9, i32 noundef %12, i32 noundef %15) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %2
  %19 = getelementptr i8, ptr %4, i32 480
  %20 = load i16, ptr %19, align 8
  %21 = zext i16 %20 to i32
  %22 = getelementptr i8, ptr %4, i32 482
  %23 = load i16, ptr %22, align 2
  %24 = zext i16 %23 to i32
  %25 = getelementptr i8, ptr %4, i32 484
  %26 = load i16, ptr %25, align 4
  %27 = zext i16 %26 to i32
  %28 = getelementptr i8, ptr %4, i32 476
  %29 = load i8, ptr %28, align 4
  %30 = zext i8 %29 to i32
  %31 = getelementptr i8, ptr %4, i32 477
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr i8, ptr %4, i32 478
  %35 = load i8, ptr %34, align 2
  %36 = zext i8 %35 to i32
  %37 = load i8, ptr %7, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, ptr %10, align 2
  %40 = zext i8 %39 to i32
  %41 = load i8, ptr %13, align 1
  %42 = zext i8 %41 to i32
  %43 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 2
  %44 = load i8, ptr %43, align 2
  %45 = zext i8 %44 to i32
  %46 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef %21, i32 noundef %24, i32 noundef %27, i32 noundef %30, i32 noundef %33, i32 noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef %45) #10
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 0, i32 -12
  br label %49

49:                                               ; preds = %18, %2
  %50 = phi i32 [ -12, %2 ], [ %48, %18 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usb_release_interface(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -32
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #10, !srcloc !19
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #10, !srcloc !20
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %12, label %10, !prof !9

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #10
  br label %12

11:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  tail call void @usb_release_interface_cache(ptr noundef %4) #10
  br label %12

12:                                               ; preds = %11, %10, %8
  %13 = getelementptr i8, ptr %0, i32 36
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 -128
  tail call void @usb_put_dev(ptr noundef %15) #10
  %16 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %17 = load ptr, ptr %16, align 8
  tail call void @of_node_put(ptr noundef %17) #10
  tail call void @kfree(ptr noundef %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_set_configuration(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 28
  %6 = load i16, ptr %5, align 1
  %7 = and i16 %6, 8
  %8 = icmp eq i16 %7, 0
  %9 = icmp eq i32 %1, -1
  %10 = or i1 %9, %8
  br i1 %10, label %90, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16, i32 13
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp eq i8 %13, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 19
  %18 = load ptr, ptr %17, align 8
  br label %22

19:                                               ; preds = %22
  %20 = add nuw nsw i32 %23, 1
  %21 = icmp eq i32 %20, %14
  br i1 %21, label %29, label %22

22:                                               ; preds = %19, %16
  %23 = phi i32 [ 0, %16 ], [ %20, %19 ]
  %24 = getelementptr %struct.usb_host_config, ptr %18, i32 %23
  %25 = getelementptr inbounds %struct.usb_config_descriptor, ptr %24, i32 0, i32 4
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %27, %1
  br i1 %28, label %29, label %19

29:                                               ; preds = %22, %19, %11
  %30 = phi ptr [ null, %11 ], [ %24, %22 ], [ null, %19 ]
  %31 = icmp eq ptr %30, null
  %32 = icmp ne i32 %1, 0
  %33 = and i1 %32, %31
  br i1 %33, label %423, label %34

34:                                               ; preds = %29
  %35 = icmp ne ptr %30, null
  %36 = icmp eq i32 %1, 0
  %37 = and i1 %36, %35
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.5) #12
  br label %41

40:                                               ; preds = %34
  br i1 %35, label %41, label %90

41:                                               ; preds = %40, %38
  %42 = getelementptr inbounds %struct.usb_config_descriptor, ptr %30, i32 0, i32 3
  %43 = load i8, ptr %42, align 4
  %44 = zext i8 %43 to i32
  %45 = shl nuw nsw i32 %44, 2
  %46 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %45, i32 noundef 3072) #11
  %47 = icmp eq ptr %46, null
  br i1 %47, label %423, label %48

48:                                               ; preds = %41
  %49 = icmp eq i8 %43, 0
  br i1 %49, label %72, label %50

50:                                               ; preds = %69, %48
  %51 = phi i32 [ %70, %69 ], [ 0, %48 ]
  %52 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %53 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3328, i32 noundef 528) #9
  %54 = getelementptr ptr, ptr %46, i32 %51
  store ptr %53, ptr %54, align 4
  %55 = icmp eq ptr %53, null
  br i1 %55, label %56, label %69

56:                                               ; preds = %145, %128, %90, %50
  %57 = phi i32 [ %97, %90 ], [ -12, %128 ], [ %132, %145 ], [ -12, %50 ]
  %58 = phi ptr [ %94, %90 ], [ %94, %128 ], [ %94, %145 ], [ %46, %50 ]
  %59 = phi i32 [ %95, %90 ], [ %95, %128 ], [ %95, %145 ], [ %51, %50 ]
  %60 = add i32 %59, -1
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %62, label %68

62:                                               ; preds = %62, %56
  %63 = phi i32 [ %66, %62 ], [ %60, %56 ]
  %64 = getelementptr ptr, ptr %58, i32 %63
  %65 = load ptr, ptr %64, align 4
  tail call void @kfree(ptr noundef %65) #10
  %66 = add nsw i32 %63, -1
  %67 = icmp eq i32 %63, 0
  br i1 %67, label %68, label %62

68:                                               ; preds = %62, %56
  tail call void @kfree(ptr noundef %58) #10
  br label %423

69:                                               ; preds = %50
  %70 = add nuw nsw i32 %51, 1
  %71 = icmp eq i32 %70, %44
  br i1 %71, label %72, label %50

72:                                               ; preds = %69, %48
  %73 = phi i32 [ 0, %48 ], [ %44, %69 ]
  %74 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 24
  %75 = load i16, ptr %74, align 4
  %76 = zext i16 %75 to i32
  %77 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 4
  %78 = load i32, ptr %77, align 4
  %79 = icmp ugt i32 %78, 4
  %80 = select i1 %79, i32 -8, i32 -2
  %81 = getelementptr inbounds %struct.usb_config_descriptor, ptr %30, i32 0, i32 7
  %82 = load i8, ptr %81, align 4
  %83 = zext i8 %82 to i32
  %84 = mul nsw i32 %80, %83
  %85 = add nsw i32 %84, %76
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %72
  %88 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  %89 = sub nsw i32 0, %85
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %88, ptr noundef nonnull @.str.6, i32 noundef %1, i32 noundef %89) #12
  br label %90

90:                                               ; preds = %87, %72, %40, %2
  %91 = phi ptr [ %30, %87 ], [ %30, %72 ], [ null, %40 ], [ null, %2 ]
  %92 = phi i1 [ true, %87 ], [ true, %72 ], [ false, %40 ], [ false, %2 ]
  %93 = phi i32 [ %1, %87 ], [ %1, %72 ], [ %1, %40 ], [ 0, %2 ]
  %94 = phi ptr [ %46, %87 ], [ %46, %72 ], [ null, %40 ], [ null, %2 ]
  %95 = phi i32 [ %73, %87 ], [ %73, %72 ], [ 0, %40 ], [ 0, %2 ]
  %96 = phi i32 [ %44, %87 ], [ %44, %72 ], [ 0, %40 ], [ 0, %2 ]
  %97 = tail call i32 @usb_autoresume_device(ptr noundef %0) #10
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %56

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 3
  %101 = load i32, ptr %100, align 8
  %102 = icmp eq i32 %101, 6
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  tail call void @usb_disable_device(ptr noundef %0, i32 noundef 1)
  br label %104

104:                                              ; preds = %103, %99
  tail call void @_raw_spin_lock(ptr noundef nonnull @set_config_lock) #10
  %105 = load ptr, ptr @set_config_list, align 4
  %106 = icmp eq ptr %105, @set_config_list
  br i1 %106, label %117, label %107

107:                                              ; preds = %114, %104
  %108 = phi ptr [ %115, %114 ], [ %105, %104 ]
  %109 = getelementptr i8, ptr %108, i32 -24
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, %0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = getelementptr i8, ptr %108, i32 -20
  store i32 -999, ptr %113, align 4
  br label %114

114:                                              ; preds = %112, %107
  %115 = load ptr, ptr %108, align 4
  %116 = icmp eq ptr %115, @set_config_list
  br i1 %116, label %117, label %107

117:                                              ; preds = %114, %104
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %118 = load i16, ptr @set_config_lock, align 4
  %119 = add i16 %118, 1
  store i16 %119, ptr @set_config_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !22
  %120 = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 0, i32 23
  %121 = load ptr, ptr %120, align 4
  tail call void @mutex_lock(ptr noundef %121) #10
  %122 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 20
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %131, label %125

125:                                              ; preds = %117
  %126 = tail call i32 @usb_disable_lpm(ptr noundef %0) #10
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %129, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.usb_set_configuration) #12
  %130 = load ptr, ptr %120, align 4
  tail call void @mutex_unlock(ptr noundef %130) #10
  br label %56

131:                                              ; preds = %125, %117
  %132 = tail call i32 @usb_hcd_alloc_bandwidth(ptr noundef %0, ptr noundef %91, ptr noundef null, ptr noundef null) #10
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %131
  %135 = icmp eq i32 %96, 0
  br i1 %135, label %271, label %136

136:                                              ; preds = %134
  %137 = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 0, i32 12
  %138 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  %139 = trunc i32 %93 to i8
  %140 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 1
  br label %147

141:                                              ; preds = %131
  %142 = load ptr, ptr %122, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %141
  tail call void @usb_enable_lpm(ptr noundef %0) #10
  br label %145

145:                                              ; preds = %144, %141
  %146 = load ptr, ptr %120, align 4
  tail call void @mutex_unlock(ptr noundef %146) #10
  tail call void @usb_autosuspend_device(ptr noundef %0) #10
  br label %56

147:                                              ; preds = %254, %136
  %148 = phi i32 [ 0, %136 ], [ %269, %254 ]
  %149 = getelementptr ptr, ptr %94, i32 %148
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr %struct.usb_host_config, ptr %91, i32 0, i32 3, i32 %148
  store ptr %150, ptr %151, align 4
  %152 = getelementptr %struct.usb_host_config, ptr %91, i32 0, i32 4, i32 %148
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.usb_interface_cache, ptr %153, i32 0, i32 2
  store ptr %154, ptr %150, align 8
  %155 = load i32, ptr %153, align 4
  %156 = getelementptr inbounds %struct.usb_interface, ptr %150, i32 0, i32 2
  store i32 %155, ptr %156, align 8
  %157 = load i32, ptr %137, align 8
  %158 = getelementptr inbounds %struct.usb_interface, ptr %150, i32 0, i32 6
  %159 = trunc i32 %157 to i8
  %160 = and i8 %159, -128
  %161 = load i8, ptr %158, align 8
  %162 = and i8 %161, 127
  %163 = or i8 %162, %160
  store i8 %163, ptr %158, align 8
  %164 = getelementptr inbounds %struct.usb_interface_cache, ptr %153, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %164) #10, !srcloc !19
  %165 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %164, ptr %164, i32 1, ptr elementtype(i32) %164) #10, !srcloc !23
  %166 = extractvalue { i32, i32, i32 } %165, 0
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %172, label %168, !prof !10

168:                                              ; preds = %147
  %169 = add i32 %166, 1
  %170 = or i32 %169, %166
  %171 = icmp sgt i32 %170, -1
  br i1 %171, label %174, label %172, !prof !9

172:                                              ; preds = %168, %147
  %173 = phi i32 [ 2, %147 ], [ 1, %168 ]
  tail call void @refcount_warn_saturate(ptr noundef %164, i32 noundef %173) #10
  br label %174

174:                                              ; preds = %172, %168
  %175 = tail call ptr @usb_altnum_to_altsetting(ptr noundef %150, i32 noundef 0) #10
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %179

177:                                              ; preds = %174
  %178 = load ptr, ptr %150, align 8
  br label %179

179:                                              ; preds = %177, %174
  %180 = phi ptr [ %175, %174 ], [ %178, %177 ]
  %181 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %180, i32 0, i32 2
  %182 = load i8, ptr %181, align 2
  %183 = zext i8 %182 to i32
  br label %184

184:                                              ; preds = %207, %179
  %185 = phi i32 [ 0, %179 ], [ %209, %207 ]
  %186 = phi ptr [ null, %179 ], [ %208, %207 ]
  %187 = getelementptr %struct.usb_host_config, ptr %91, i32 0, i32 2, i32 %185
  %188 = load ptr, ptr %187, align 4
  %189 = icmp eq ptr %188, null
  br i1 %189, label %211, label %190

190:                                              ; preds = %184
  %191 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %188, i32 0, i32 3
  %192 = load i8, ptr %191, align 1
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %207, label %194

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %188, i32 0, i32 2
  %196 = load i8, ptr %195, align 1
  %197 = icmp ugt i8 %196, %182
  br i1 %197, label %207, label %198

198:                                              ; preds = %194
  %199 = zext i8 %196 to i32
  %200 = zext i8 %192 to i32
  %201 = add nsw i32 %200, -1
  %202 = add nuw nsw i32 %201, %199
  %203 = icmp ult i32 %202, %183
  br i1 %203, label %207, label %204

204:                                              ; preds = %198
  %205 = icmp eq ptr %186, null
  br i1 %205, label %207, label %206

206:                                              ; preds = %204
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %138, ptr noundef nonnull @.str.22, i32 noundef %183) #12
  br label %207

207:                                              ; preds = %206, %204, %198, %194, %190
  %208 = phi ptr [ %186, %190 ], [ %186, %206 ], [ %186, %198 ], [ %186, %194 ], [ %188, %204 ]
  %209 = add nuw nsw i32 %185, 1
  %210 = icmp eq i32 %209, 16
  br i1 %210, label %211, label %184

211:                                              ; preds = %207, %184
  %212 = phi ptr [ %208, %207 ], [ %186, %184 ]
  %213 = getelementptr inbounds %struct.usb_interface, ptr %150, i32 0, i32 3
  store ptr %212, ptr %213, align 4
  %214 = getelementptr inbounds %struct.usb_interface, ptr %150, i32 0, i32 1
  store ptr %180, ptr %214, align 4
  %215 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %180, i32 0, i32 4
  %216 = load i8, ptr %215, align 4
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %246, label %218

218:                                              ; preds = %211
  %219 = getelementptr inbounds %struct.usb_host_interface, ptr %180, i32 0, i32 3
  br label %220

220:                                              ; preds = %240, %218
  %221 = phi i32 [ 0, %218 ], [ %242, %240 ]
  %222 = load ptr, ptr %219, align 4
  %223 = getelementptr %struct.usb_host_endpoint, ptr %222, i32 %221
  %224 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %223, i32 0, i32 2
  %225 = load i8, ptr %224, align 1
  %226 = and i8 %225, 15
  %227 = zext i8 %226 to i32
  %228 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %223, i32 0, i32 3
  %229 = load i8, ptr %228, align 1
  %230 = and i8 %229, 3
  %231 = icmp eq i8 %230, 0
  tail call void @usb_hcd_reset_endpoint(ptr noundef %0, ptr noundef %223) #10
  %232 = icmp sgt i8 %225, -1
  %233 = select i1 %232, i1 true, i1 %231
  br i1 %233, label %234, label %238

234:                                              ; preds = %220
  %235 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 22, i32 %227
  store ptr %223, ptr %235, align 4
  %236 = icmp slt i8 %225, 0
  %237 = select i1 %236, i1 true, i1 %231
  br i1 %237, label %238, label %240

238:                                              ; preds = %234, %220
  %239 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 21, i32 %227
  store ptr %223, ptr %239, align 4
  br label %240

240:                                              ; preds = %238, %234
  %241 = getelementptr %struct.usb_host_endpoint, ptr %222, i32 %221, i32 9
  store i32 1, ptr %241, align 4
  %242 = add nuw nsw i32 %221, 1
  %243 = load i8, ptr %215, align 4
  %244 = zext i8 %243 to i32
  %245 = icmp ult i32 %242, %244
  br i1 %245, label %220, label %246

246:                                              ; preds = %240, %211
  %247 = getelementptr inbounds %struct.usb_interface, ptr %150, i32 0, i32 7
  %248 = getelementptr inbounds %struct.usb_interface, ptr %150, i32 0, i32 7, i32 1
  store ptr %138, ptr %248, align 4
  %249 = tail call zeroext i1 @usb_of_has_combined_node(ptr noundef %0) #10
  br i1 %249, label %250, label %251

250:                                              ; preds = %246
  tail call void @device_set_of_node_from_dev(ptr noundef %247, ptr noundef %138) #10
  br label %254

251:                                              ; preds = %246
  %252 = tail call ptr @usb_of_get_interface_node(ptr noundef %0, i8 noundef zeroext %139, i8 noundef zeroext %182) #10
  %253 = getelementptr inbounds %struct.usb_interface, ptr %150, i32 0, i32 7, i32 25
  store ptr %252, ptr %253, align 8
  br label %254

254:                                              ; preds = %251, %250
  %255 = getelementptr inbounds %struct.usb_interface, ptr %150, i32 0, i32 7, i32 6
  store ptr null, ptr %255, align 8
  %256 = getelementptr inbounds %struct.usb_interface, ptr %150, i32 0, i32 7, i32 5
  store ptr @usb_bus_type, ptr %256, align 4
  %257 = getelementptr inbounds %struct.usb_interface, ptr %150, i32 0, i32 7, i32 4
  store ptr @usb_if_device_type, ptr %257, align 8
  %258 = getelementptr inbounds %struct.usb_interface, ptr %150, i32 0, i32 7, i32 32
  store ptr @usb_interface_groups, ptr %258, align 8
  %259 = getelementptr inbounds %struct.usb_interface, ptr %150, i32 0, i32 9
  store i32 -32, ptr %259, align 4
  %260 = getelementptr inbounds %struct.usb_interface, ptr %150, i32 0, i32 9, i32 1
  store volatile ptr %260, ptr %260, align 4
  %261 = getelementptr inbounds %struct.usb_interface, ptr %150, i32 0, i32 9, i32 1, i32 1
  store ptr %260, ptr %261, align 4
  %262 = getelementptr inbounds %struct.usb_interface, ptr %150, i32 0, i32 9, i32 2
  store ptr @__usb_queue_reset_device, ptr %262, align 4
  %263 = getelementptr inbounds %struct.usb_interface, ptr %150, i32 0, i32 4
  store i32 -1, ptr %263, align 8
  tail call void @device_initialize(ptr noundef %247) #10
  tail call void @pm_runtime_no_callbacks(ptr noundef %247) #10
  %264 = load ptr, ptr %3, align 8
  %265 = getelementptr inbounds %struct.usb_bus, ptr %264, i32 0, i32 2
  %266 = load i32, ptr %265, align 4
  %267 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %247, ptr noundef nonnull @.str.7, i32 noundef %266, ptr noundef %140, i32 noundef %93, i32 noundef %183) #10
  %268 = tail call ptr @usb_get_dev(ptr noundef %0) #10
  %269 = add nuw nsw i32 %148, 1
  %270 = icmp eq i32 %269, %96
  br i1 %270, label %271, label %147

271:                                              ; preds = %254, %134
  tail call void @kfree(ptr noundef %94) #10
  %272 = trunc i32 %93 to i16
  %273 = load i32, ptr %0, align 8
  %274 = shl i32 %273, 8
  %275 = or i32 %274, -2147483648
  %276 = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %275, i8 noundef zeroext 9, i8 noundef zeroext 0, i16 noundef zeroext %272, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef null) #10
  %277 = tail call i32 @llvm.smin.i32(i32 %276, i32 0) #10
  %278 = icmp slt i32 %276, 0
  %279 = and i1 %278, %92
  br i1 %279, label %280, label %333

280:                                              ; preds = %271
  %281 = tail call i32 @usb_hcd_alloc_bandwidth(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null) #10
  br i1 %135, label %333, label %282

282:                                              ; preds = %280
  %283 = icmp eq ptr %0, null
  br label %284

284:                                              ; preds = %328, %282
  %285 = phi i32 [ 0, %282 ], [ %331, %328 ]
  %286 = getelementptr %struct.usb_host_config, ptr %91, i32 0, i32 3, i32 %285
  %287 = load ptr, ptr %286, align 4
  %288 = getelementptr inbounds %struct.usb_interface, ptr %287, i32 0, i32 1
  %289 = load ptr, ptr %288, align 4
  %290 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %289, i32 0, i32 4
  %291 = load i8, ptr %290, align 4
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %328, label %293

293:                                              ; preds = %284
  %294 = getelementptr inbounds %struct.usb_host_interface, ptr %289, i32 0, i32 3
  br label %295

295:                                              ; preds = %321, %293
  %296 = phi i32 [ 0, %293 ], [ %322, %321 ]
  %297 = load ptr, ptr %294, align 4
  %298 = getelementptr %struct.usb_host_endpoint, ptr %297, i32 %296, i32 0, i32 2
  %299 = load i8, ptr %298, align 2
  %300 = zext i8 %299 to i32
  %301 = and i32 %300, 15
  br i1 %283, label %321, label %302

302:                                              ; preds = %295
  %303 = and i32 %300, 128
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %309

305:                                              ; preds = %302
  %306 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 22, i32 %301
  %307 = load ptr, ptr %306, align 4
  %308 = icmp eq i32 %301, 0
  br i1 %308, label %316, label %313

309:                                              ; preds = %302
  %310 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 21, i32 %301
  %311 = load ptr, ptr %310, align 4
  %312 = icmp eq i32 %301, 0
  br i1 %312, label %316, label %313

313:                                              ; preds = %309, %305
  %314 = phi ptr [ %306, %305 ], [ %310, %309 ]
  %315 = phi ptr [ %307, %305 ], [ %311, %309 ]
  store ptr null, ptr %314, align 4
  br label %316

316:                                              ; preds = %313, %309, %305
  %317 = phi ptr [ %311, %309 ], [ %307, %305 ], [ %315, %313 ]
  %318 = icmp eq ptr %317, null
  br i1 %318, label %321, label %319

319:                                              ; preds = %316
  %320 = getelementptr inbounds %struct.usb_host_endpoint, ptr %317, i32 0, i32 9
  store i32 0, ptr %320, align 4
  tail call void @usb_hcd_flush_endpoint(ptr noundef nonnull %0, ptr noundef nonnull %317) #10
  tail call void @usb_hcd_disable_endpoint(ptr noundef nonnull %0, ptr noundef nonnull %317) #10
  br label %321

321:                                              ; preds = %319, %316, %295
  %322 = add nuw nsw i32 %296, 1
  %323 = load i8, ptr %290, align 4
  %324 = zext i8 %323 to i32
  %325 = icmp ult i32 %322, %324
  br i1 %325, label %295, label %326

326:                                              ; preds = %321
  %327 = load ptr, ptr %286, align 4
  br label %328

328:                                              ; preds = %326, %284
  %329 = phi ptr [ %327, %326 ], [ %287, %284 ]
  %330 = getelementptr inbounds %struct.usb_interface, ptr %329, i32 0, i32 7
  tail call void @put_device(ptr noundef %330) #10
  store ptr null, ptr %286, align 4
  %331 = add nuw nsw i32 %285, 1
  %332 = icmp eq i32 %331, %96
  br i1 %332, label %333, label %284

333:                                              ; preds = %328, %280, %271
  %334 = phi ptr [ %91, %271 ], [ null, %280 ], [ null, %328 ]
  store ptr %334, ptr %122, align 4
  %335 = load ptr, ptr %120, align 4
  tail call void @mutex_unlock(ptr noundef %335) #10
  %336 = icmp eq ptr %334, null
  br i1 %336, label %337, label %338

337:                                              ; preds = %333
  tail call void @usb_set_device_state(ptr noundef %0, i32 noundef 6) #10
  tail call void @usb_autosuspend_device(ptr noundef %0) #10
  br label %423

338:                                              ; preds = %333
  tail call void @usb_set_device_state(ptr noundef %0, i32 noundef 7) #10
  %339 = getelementptr inbounds %struct.usb_host_config, ptr %334, i32 0, i32 1
  %340 = load ptr, ptr %339, align 4
  %341 = icmp eq ptr %340, null
  br i1 %341, label %342, label %352

342:                                              ; preds = %338
  %343 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 36
  %344 = load i32, ptr %343, align 8
  %345 = and i32 %344, 8
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %352

347:                                              ; preds = %342
  %348 = getelementptr inbounds %struct.usb_config_descriptor, ptr %334, i32 0, i32 5
  %349 = load i8, ptr %348, align 2
  %350 = zext i8 %349 to i32
  %351 = tail call ptr @usb_cache_string(ptr noundef %0, i32 noundef %350)
  store ptr %351, ptr %339, align 4
  br label %352

352:                                              ; preds = %347, %342, %338
  tail call void @usb_unlocked_enable_lpm(ptr noundef %0) #10
  tail call void @usb_enable_ltm(ptr noundef %0) #10
  br i1 %135, label %422, label %353

353:                                              ; preds = %352
  %354 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  br label %355

355:                                              ; preds = %419, %353
  %356 = phi i32 [ 0, %353 ], [ %420, %419 ]
  %357 = getelementptr %struct.usb_host_config, ptr %334, i32 0, i32 3, i32 %356
  %358 = load ptr, ptr %357, align 4
  %359 = getelementptr inbounds %struct.usb_interface, ptr %358, i32 0, i32 7
  %360 = getelementptr inbounds %struct.usb_interface, ptr %358, i32 0, i32 7, i32 25
  %361 = load ptr, ptr %360, align 8
  %362 = icmp eq ptr %361, null
  br i1 %362, label %371, label %363

363:                                              ; preds = %355
  %364 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %361) #10
  br i1 %364, label %371, label %365

365:                                              ; preds = %363
  %366 = getelementptr inbounds %struct.usb_interface, ptr %358, i32 0, i32 1
  %367 = load ptr, ptr %366, align 4
  %368 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %367, i32 0, i32 2
  %369 = load i8, ptr %368, align 2
  %370 = zext i8 %369 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %354, ptr noundef nonnull @.str.8, i32 noundef %370) #12
  br label %419

371:                                              ; preds = %363, %355
  %372 = getelementptr inbounds %struct.usb_interface, ptr %358, i32 0, i32 7, i32 11, i32 1
  %373 = load i16, ptr %372, align 4
  %374 = and i16 %373, 8
  %375 = icmp eq i16 %374, 0
  br i1 %375, label %376, label %378

376:                                              ; preds = %371
  %377 = or i16 %373, 2
  store i16 %377, ptr %372, align 4
  br label %378

378:                                              ; preds = %376, %371
  %379 = tail call i32 @device_add(ptr noundef %359) #10
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %389, label %381

381:                                              ; preds = %378
  %382 = getelementptr inbounds %struct.usb_interface, ptr %358, i32 0, i32 7, i32 3
  %383 = load ptr, ptr %382, align 4
  %384 = icmp eq ptr %383, null
  br i1 %384, label %385, label %387

385:                                              ; preds = %381
  %386 = load ptr, ptr %359, align 4
  br label %387

387:                                              ; preds = %385, %381
  %388 = phi ptr [ %386, %385 ], [ %383, %381 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %354, ptr noundef nonnull @.str.9, ptr noundef %388, i32 noundef %379) #12
  br label %419

389:                                              ; preds = %378
  %390 = getelementptr inbounds %struct.usb_interface, ptr %358, i32 0, i32 7, i32 1
  %391 = load ptr, ptr %390, align 4
  %392 = getelementptr i8, ptr %391, i32 -128
  %393 = getelementptr inbounds %struct.usb_interface, ptr %358, i32 0, i32 1
  %394 = load ptr, ptr %393, align 4
  %395 = getelementptr inbounds %struct.usb_interface, ptr %358, i32 0, i32 6
  %396 = load i8, ptr %395, align 8
  %397 = and i8 %396, 6
  %398 = icmp eq i8 %397, 0
  br i1 %398, label %399, label %419

399:                                              ; preds = %389
  %400 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %394, i32 0, i32 4
  %401 = load i8, ptr %400, align 4
  %402 = icmp eq i8 %401, 0
  br i1 %402, label %416, label %403

403:                                              ; preds = %399
  %404 = getelementptr inbounds %struct.usb_host_interface, ptr %394, i32 0, i32 3
  br label %405

405:                                              ; preds = %405, %403
  %406 = phi i32 [ 0, %403 ], [ %410, %405 ]
  %407 = load ptr, ptr %404, align 4
  %408 = getelementptr %struct.usb_host_endpoint, ptr %407, i32 %406
  %409 = tail call i32 @usb_create_ep_devs(ptr noundef %359, ptr noundef %408, ptr noundef %392) #10
  %410 = add nuw nsw i32 %406, 1
  %411 = load i8, ptr %400, align 4
  %412 = zext i8 %411 to i32
  %413 = icmp ult i32 %410, %412
  br i1 %413, label %405, label %414

414:                                              ; preds = %405
  %415 = load i8, ptr %395, align 8
  br label %416

416:                                              ; preds = %414, %399
  %417 = phi i8 [ %415, %414 ], [ %396, %399 ]
  %418 = or i8 %417, 2
  store i8 %418, ptr %395, align 8
  br label %419

419:                                              ; preds = %416, %389, %387, %365
  %420 = add nuw nsw i32 %356, 1
  %421 = icmp eq i32 %420, %96
  br i1 %421, label %422, label %355

422:                                              ; preds = %419, %352
  tail call void @usb_autosuspend_device(ptr noundef %0) #10
  br label %423

423:                                              ; preds = %422, %337, %68, %41, %29
  %424 = phi i32 [ %57, %68 ], [ 0, %422 ], [ %277, %337 ], [ -22, %29 ], [ -12, %41 ]
  ret i32 %424
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autoresume_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autosuspend_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @usb_of_has_combined_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_of_node_from_dev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_of_get_interface_node(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__usb_queue_reset_device(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -508
  %3 = getelementptr i8, ptr %0, i32 -440
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -128
  %6 = tail call i32 @usb_lock_device_for_reset(ptr noundef %5, ptr noundef %2) #10
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = tail call i32 @usb_reset_device(ptr noundef %5) #10
  %10 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %10) #10
  br label %11

11:                                               ; preds = %8, %1
  tail call void @usb_put_intf(ptr noundef %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_no_callbacks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_enable_ltm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_driver_set_configuration(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 32) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  store ptr %0, ptr %4, align 8
  %7 = getelementptr inbounds %struct.set_config_request, ptr %4, i32 0, i32 1
  store i32 %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.set_config_request, ptr %4, i32 0, i32 2
  store i32 -32, ptr %8, align 8
  %9 = getelementptr inbounds %struct.set_config_request, ptr %4, i32 0, i32 2, i32 1
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.set_config_request, ptr %4, i32 0, i32 2, i32 1, i32 1
  store ptr %9, ptr %10, align 8
  %11 = getelementptr inbounds %struct.set_config_request, ptr %4, i32 0, i32 2, i32 2
  store ptr @driver_set_config_work, ptr %11, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @set_config_lock) #10
  %12 = getelementptr inbounds %struct.set_config_request, ptr %4, i32 0, i32 3
  %13 = load ptr, ptr @set_config_list, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store ptr %13, ptr %12, align 8
  %15 = getelementptr inbounds %struct.set_config_request, ptr %4, i32 0, i32 3, i32 1
  store ptr @set_config_list, ptr %15, align 4
  store volatile ptr %12, ptr @set_config_list, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %16 = load i16, ptr @set_config_lock, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr @set_config_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !22
  %18 = tail call ptr @usb_get_dev(ptr noundef %0) #10
  %19 = load ptr, ptr @system_wq, align 4
  %20 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %19, ptr noundef %8) #10
  br label %21

21:                                               ; preds = %6, %2
  %22 = phi i32 [ 0, %6 ], [ -12, %2 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @driver_set_config_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15, i32 9
  tail call void @mutex_lock(ptr noundef %4) #10
  tail call void @_raw_spin_lock(ptr noundef nonnull @set_config_lock) #10
  %5 = getelementptr i8, ptr %0, i32 16
  %6 = getelementptr i8, ptr %0, i32 20
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %7, ptr %9, align 4
  store volatile ptr %8, ptr %7, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %6, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %10 = load i16, ptr @set_config_lock, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr @set_config_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !22
  %12 = getelementptr i8, ptr %0, i32 -4
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, -2
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = tail call i32 @usb_set_configuration(ptr noundef %3, i32 noundef %13)
  br label %17

17:                                               ; preds = %15, %1
  tail call void @mutex_unlock(ptr noundef %4) #10
  tail call void @usb_put_dev(ptr noundef %3) #10
  tail call void @kfree(ptr noundef %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cdc_parse_cdc_header(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.usb_cdc_parsed_header, ptr %0, i32 0, i32 14
  %6 = icmp sgt i32 %3, 0
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(60) %0, i8 0, i64 60, i1 false)
  br i1 %6, label %7, label %103

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %9 = getelementptr inbounds %struct.usb_cdc_parsed_header, ptr %0, i32 0, i32 13
  %10 = getelementptr inbounds %struct.usb_cdc_parsed_header, ptr %0, i32 0, i32 12
  %11 = getelementptr inbounds %struct.usb_cdc_parsed_header, ptr %0, i32 0, i32 11
  %12 = getelementptr inbounds %struct.usb_cdc_parsed_header, ptr %0, i32 0, i32 7
  %13 = getelementptr inbounds %struct.usb_cdc_parsed_header, ptr %0, i32 0, i32 2
  %14 = getelementptr inbounds %struct.usb_cdc_parsed_header, ptr %0, i32 0, i32 3
  %15 = getelementptr inbounds %struct.usb_cdc_parsed_header, ptr %0, i32 0, i32 4
  br label %16

16:                                               ; preds = %92, %7
  %17 = phi i32 [ 0, %7 ], [ %99, %92 ]
  %18 = phi ptr [ null, %7 ], [ %97, %92 ]
  %19 = phi ptr [ null, %7 ], [ %96, %92 ]
  %20 = phi ptr [ null, %7 ], [ %95, %92 ]
  %21 = phi ptr [ null, %7 ], [ %94, %92 ]
  %22 = phi ptr [ null, %7 ], [ %93, %92 ]
  %23 = phi i32 [ %3, %7 ], [ %100, %92 ]
  %24 = phi ptr [ %2, %7 ], [ %101, %92 ]
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i8 %25, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.10) #12
  br label %92

29:                                               ; preds = %16
  %30 = icmp ult i32 %23, %26
  %31 = icmp ult i8 %25, 3
  %32 = or i1 %31, %30
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.11) #12
  br label %103

34:                                               ; preds = %29
  %35 = getelementptr i8, ptr %24, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = icmp eq i8 %36, 36
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.12) #12
  br label %92

39:                                               ; preds = %34
  %40 = getelementptr i8, ptr %24, i32 2
  %41 = load i8, ptr %40, align 1
  switch i8 %41, label %92 [
    i8 6, label %42
    i8 7, label %47
    i8 0, label %50
    i8 2, label %54
    i8 15, label %57
    i8 1, label %61
    i8 20, label %64
    i8 18, label %67
    i8 19, label %71
    i8 26, label %75
    i8 27, label %78
    i8 28, label %81
    i8 -85, label %84
  ]

42:                                               ; preds = %39
  %43 = icmp ult i8 %25, 5
  br i1 %43, label %92, label %44

44:                                               ; preds = %42
  %45 = icmp eq ptr %22, null
  br i1 %45, label %85, label %46

46:                                               ; preds = %44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.13) #12
  br label %92

47:                                               ; preds = %39
  %48 = icmp ult i8 %25, 6
  br i1 %48, label %92, label %49

49:                                               ; preds = %47
  store ptr %24, ptr %15, align 4
  br label %85

50:                                               ; preds = %39
  %51 = icmp eq i8 %25, 5
  br i1 %51, label %52, label %92

52:                                               ; preds = %50
  %53 = icmp eq ptr %21, null
  br i1 %53, label %85, label %114

54:                                               ; preds = %39
  %55 = icmp ult i8 %25, 4
  br i1 %55, label %92, label %56

56:                                               ; preds = %54
  store ptr %24, ptr %14, align 4
  br label %85

57:                                               ; preds = %39
  %58 = icmp eq i8 %25, 13
  br i1 %58, label %59, label %92

59:                                               ; preds = %57
  %60 = icmp eq ptr %20, null
  br i1 %60, label %85, label %114

61:                                               ; preds = %39
  %62 = icmp ult i8 %25, 5
  br i1 %62, label %92, label %63

63:                                               ; preds = %61
  store ptr %24, ptr %13, align 4
  br label %85

64:                                               ; preds = %39
  %65 = icmp ult i8 %25, 7
  br i1 %65, label %92, label %66

66:                                               ; preds = %64
  store ptr %24, ptr %12, align 4
  br label %85

67:                                               ; preds = %39
  %68 = icmp ult i8 %25, 21
  br i1 %68, label %92, label %69

69:                                               ; preds = %67
  %70 = icmp eq ptr %18, null
  br i1 %70, label %85, label %114

71:                                               ; preds = %39
  %72 = icmp ult i8 %25, 4
  br i1 %72, label %92, label %73

73:                                               ; preds = %71
  %74 = icmp eq ptr %19, null
  br i1 %74, label %85, label %114

75:                                               ; preds = %39
  %76 = icmp ult i8 %25, 6
  br i1 %76, label %92, label %77

77:                                               ; preds = %75
  store ptr %24, ptr %11, align 4
  br label %85

78:                                               ; preds = %39
  %79 = icmp ult i8 %25, 12
  br i1 %79, label %92, label %80

80:                                               ; preds = %78
  store ptr %24, ptr %10, align 4
  br label %85

81:                                               ; preds = %39
  %82 = icmp ult i8 %25, 8
  br i1 %82, label %85, label %83

83:                                               ; preds = %81
  store ptr %24, ptr %9, align 4
  br label %85

84:                                               ; preds = %39
  store i8 1, ptr %5, align 4
  br label %85

85:                                               ; preds = %84, %83, %81, %80, %77, %73, %69, %66, %63, %59, %56, %52, %49, %44
  %86 = phi ptr [ %22, %84 ], [ %22, %81 ], [ %22, %83 ], [ %22, %80 ], [ %22, %77 ], [ %22, %66 ], [ %22, %63 ], [ %22, %56 ], [ %22, %49 ], [ %24, %44 ], [ %22, %52 ], [ %22, %59 ], [ %22, %69 ], [ %22, %73 ]
  %87 = phi ptr [ %21, %84 ], [ %21, %81 ], [ %21, %83 ], [ %21, %80 ], [ %21, %77 ], [ %21, %66 ], [ %21, %63 ], [ %21, %56 ], [ %21, %49 ], [ %21, %44 ], [ %24, %52 ], [ %21, %59 ], [ %21, %69 ], [ %21, %73 ]
  %88 = phi ptr [ %20, %84 ], [ %20, %81 ], [ %20, %83 ], [ %20, %80 ], [ %20, %77 ], [ %20, %66 ], [ %20, %63 ], [ %20, %56 ], [ %20, %49 ], [ %20, %44 ], [ %20, %52 ], [ %24, %59 ], [ %20, %69 ], [ %20, %73 ]
  %89 = phi ptr [ %19, %84 ], [ %19, %81 ], [ %19, %83 ], [ %19, %80 ], [ %19, %77 ], [ %19, %66 ], [ %19, %63 ], [ %19, %56 ], [ %19, %49 ], [ %19, %44 ], [ %19, %52 ], [ %19, %59 ], [ %19, %69 ], [ %24, %73 ]
  %90 = phi ptr [ %18, %84 ], [ %18, %81 ], [ %18, %83 ], [ %18, %80 ], [ %18, %77 ], [ %18, %66 ], [ %18, %63 ], [ %18, %56 ], [ %18, %49 ], [ %18, %44 ], [ %18, %52 ], [ %18, %59 ], [ %24, %69 ], [ %18, %73 ]
  %91 = add i32 %17, 1
  br label %92

92:                                               ; preds = %85, %78, %75, %71, %67, %64, %61, %57, %54, %50, %47, %46, %42, %39, %38, %28
  %93 = phi ptr [ %22, %38 ], [ %22, %39 ], [ %86, %85 ], [ %22, %78 ], [ %22, %75 ], [ %22, %71 ], [ %22, %67 ], [ %22, %64 ], [ %22, %61 ], [ %22, %57 ], [ %22, %54 ], [ %22, %50 ], [ %22, %47 ], [ %22, %42 ], [ %22, %46 ], [ %22, %28 ]
  %94 = phi ptr [ %21, %38 ], [ %21, %39 ], [ %87, %85 ], [ %21, %78 ], [ %21, %75 ], [ %21, %71 ], [ %21, %67 ], [ %21, %64 ], [ %21, %61 ], [ %21, %57 ], [ %21, %54 ], [ %21, %50 ], [ %21, %47 ], [ %21, %42 ], [ %21, %46 ], [ %21, %28 ]
  %95 = phi ptr [ %20, %38 ], [ %20, %39 ], [ %88, %85 ], [ %20, %78 ], [ %20, %75 ], [ %20, %71 ], [ %20, %67 ], [ %20, %64 ], [ %20, %61 ], [ %20, %57 ], [ %20, %54 ], [ %20, %50 ], [ %20, %47 ], [ %20, %42 ], [ %20, %46 ], [ %20, %28 ]
  %96 = phi ptr [ %19, %38 ], [ %19, %39 ], [ %89, %85 ], [ %19, %78 ], [ %19, %75 ], [ %19, %71 ], [ %19, %67 ], [ %19, %64 ], [ %19, %61 ], [ %19, %57 ], [ %19, %54 ], [ %19, %50 ], [ %19, %47 ], [ %19, %42 ], [ %19, %46 ], [ %19, %28 ]
  %97 = phi ptr [ %18, %38 ], [ %18, %39 ], [ %90, %85 ], [ %18, %78 ], [ %18, %75 ], [ %18, %71 ], [ %18, %67 ], [ %18, %64 ], [ %18, %61 ], [ %18, %57 ], [ %18, %54 ], [ %18, %50 ], [ %18, %47 ], [ %18, %42 ], [ %18, %46 ], [ %18, %28 ]
  %98 = phi i32 [ %26, %38 ], [ %26, %39 ], [ %26, %85 ], [ %26, %78 ], [ %26, %75 ], [ 3, %71 ], [ %26, %67 ], [ %26, %64 ], [ %26, %61 ], [ %26, %57 ], [ 3, %54 ], [ %26, %50 ], [ %26, %47 ], [ %26, %42 ], [ %26, %46 ], [ 1, %28 ]
  %99 = phi i32 [ %17, %38 ], [ %17, %39 ], [ %91, %85 ], [ %17, %78 ], [ %17, %75 ], [ %17, %71 ], [ %17, %67 ], [ %17, %64 ], [ %17, %61 ], [ %17, %57 ], [ %17, %54 ], [ %17, %50 ], [ %17, %47 ], [ %17, %42 ], [ %17, %46 ], [ %17, %28 ]
  %100 = sub nsw i32 %23, %98
  %101 = getelementptr i8, ptr %24, i32 %98
  %102 = icmp sgt i32 %100, 0
  br i1 %102, label %16, label %103

103:                                              ; preds = %92, %33, %4
  %104 = phi ptr [ %22, %33 ], [ null, %4 ], [ %93, %92 ]
  %105 = phi ptr [ %21, %33 ], [ null, %4 ], [ %94, %92 ]
  %106 = phi ptr [ %20, %33 ], [ null, %4 ], [ %95, %92 ]
  %107 = phi ptr [ %19, %33 ], [ null, %4 ], [ %96, %92 ]
  %108 = phi ptr [ %18, %33 ], [ null, %4 ], [ %97, %92 ]
  %109 = phi i32 [ %17, %33 ], [ 0, %4 ], [ %99, %92 ]
  store ptr %104, ptr %0, align 4
  %110 = getelementptr inbounds %struct.usb_cdc_parsed_header, ptr %0, i32 0, i32 1
  store ptr %105, ptr %110, align 4
  %111 = getelementptr inbounds %struct.usb_cdc_parsed_header, ptr %0, i32 0, i32 9
  store ptr %107, ptr %111, align 4
  %112 = getelementptr inbounds %struct.usb_cdc_parsed_header, ptr %0, i32 0, i32 8
  store ptr %108, ptr %112, align 4
  %113 = getelementptr inbounds %struct.usb_cdc_parsed_header, ptr %0, i32 0, i32 6
  store ptr %106, ptr %113, align 4
  br label %114

114:                                              ; preds = %103, %73, %69, %59, %52
  %115 = phi i32 [ %109, %103 ], [ -22, %52 ], [ -22, %59 ], [ -22, %69 ], [ -22, %73 ]
  ret i32 %115
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @usb_get_string(ptr noundef %0, i16 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = icmp slt i32 %4, 1
  br i1 %6, label %43, label %7

7:                                                ; preds = %5
  %8 = getelementptr i8, ptr %3, i32 1
  %9 = zext i8 %2 to i16
  %10 = or i16 %9, 768
  %11 = trunc i32 %4 to i16
  %12 = load i32, ptr %0, align 8
  %13 = shl i32 %12, 8
  %14 = or i32 %13, -2147483520
  %15 = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %14, i8 noundef zeroext 6, i8 noundef zeroext -128, i16 noundef zeroext %10, i16 noundef zeroext %1, ptr noundef %3, i16 noundef zeroext %11, i32 noundef 5000)
  switch i32 %15, label %16 [
    i32 -32, label %21
    i32 0, label %21
  ]

16:                                               ; preds = %7
  %17 = icmp sgt i32 %15, 1
  br i1 %17, label %18, label %43

18:                                               ; preds = %16
  %19 = load i8, ptr %8, align 1
  %20 = icmp eq i8 %19, 3
  br i1 %20, label %43, label %21

21:                                               ; preds = %18, %7, %7
  %22 = load i32, ptr %0, align 8
  %23 = shl i32 %22, 8
  %24 = or i32 %23, -2147483520
  %25 = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %24, i8 noundef zeroext 6, i8 noundef zeroext -128, i16 noundef zeroext %10, i16 noundef zeroext %1, ptr noundef %3, i16 noundef zeroext %11, i32 noundef 5000)
  switch i32 %25, label %26 [
    i32 -32, label %31
    i32 0, label %31
  ]

26:                                               ; preds = %21
  %27 = icmp sgt i32 %25, 1
  br i1 %27, label %28, label %43

28:                                               ; preds = %26
  %29 = load i8, ptr %8, align 1
  %30 = icmp eq i8 %29, 3
  br i1 %30, label %43, label %31

31:                                               ; preds = %28, %21, %21
  %32 = load i32, ptr %0, align 8
  %33 = shl i32 %32, 8
  %34 = or i32 %33, -2147483520
  %35 = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %34, i8 noundef zeroext 6, i8 noundef zeroext -128, i16 noundef zeroext %10, i16 noundef zeroext %1, ptr noundef %3, i16 noundef zeroext %11, i32 noundef 5000)
  switch i32 %35, label %36 [
    i32 -32, label %41
    i32 0, label %41
  ]

36:                                               ; preds = %31
  %37 = icmp sgt i32 %35, 1
  br i1 %37, label %38, label %43

38:                                               ; preds = %36
  %39 = load i8, ptr %8, align 1
  %40 = icmp eq i8 %39, 3
  br i1 %40, label %43, label %41

41:                                               ; preds = %38, %31, %31
  %42 = phi i32 [ %35, %31 ], [ %35, %31 ], [ -61, %38 ]
  br label %43

43:                                               ; preds = %41, %38, %36, %28, %26, %18, %16, %5
  %44 = phi i32 [ -22, %5 ], [ %15, %18 ], [ %15, %16 ], [ %25, %26 ], [ %25, %28 ], [ %35, %36 ], [ %35, %38 ], [ %42, %41 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_ep_devs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_create_ep_devs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_release_interface_cache(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_lock_device_for_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_intf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2149181897}
!12 = !{i64 2149177721}
!13 = !{i64 2149177796, i64 2149177823, i64 2149177870, i64 2149177892, i64 2149177920, i64 2149177940}
!14 = !{i64 471599}
!15 = !{i64 2149206041}
!16 = !{i64 2154727134}
!17 = !{i64 2154726976}
!18 = !{i64 2148179966}
!19 = !{i64 576115, i64 2148066086, i64 2148066112, i64 2148066159, i64 2148066181, i64 2148066209, i64 2148066229}
!20 = !{i64 2148082113, i64 2148082145, i64 2148082174, i64 2148082208, i64 2148082239, i64 2148082262}
!21 = !{i64 2149518992}
!22 = !{i64 2149204900}
!23 = !{i64 2148079756, i64 2148079788, i64 2148079817, i64 2148079851, i64 2148079882, i64 2148079905}
