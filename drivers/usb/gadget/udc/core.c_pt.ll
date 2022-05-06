; ModuleID = '/llk/IR/drivers/usb/gadget/udc/core.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_ep_set_maxpacket_limit:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_ep_set_maxpacket_limit\22\09\09\09\09\09"
module asm "__kstrtabns_usb_ep_set_maxpacket_limit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_ep_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_ep_enable\22\09\09\09\09\09"
module asm "__kstrtabns_usb_ep_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_ep_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_ep_disable\22\09\09\09\09\09"
module asm "__kstrtabns_usb_ep_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_ep_alloc_request:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_ep_alloc_request\22\09\09\09\09\09"
module asm "__kstrtabns_usb_ep_alloc_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_ep_free_request:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_ep_free_request\22\09\09\09\09\09"
module asm "__kstrtabns_usb_ep_free_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_ep_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_ep_queue\22\09\09\09\09\09"
module asm "__kstrtabns_usb_ep_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_ep_dequeue:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_ep_dequeue\22\09\09\09\09\09"
module asm "__kstrtabns_usb_ep_dequeue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_ep_set_halt:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_ep_set_halt\22\09\09\09\09\09"
module asm "__kstrtabns_usb_ep_set_halt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_ep_clear_halt:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_ep_clear_halt\22\09\09\09\09\09"
module asm "__kstrtabns_usb_ep_clear_halt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_ep_set_wedge:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_ep_set_wedge\22\09\09\09\09\09"
module asm "__kstrtabns_usb_ep_set_wedge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_ep_fifo_status:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_ep_fifo_status\22\09\09\09\09\09"
module asm "__kstrtabns_usb_ep_fifo_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_ep_fifo_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_ep_fifo_flush\22\09\09\09\09\09"
module asm "__kstrtabns_usb_ep_fifo_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_gadget_frame_number:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_gadget_frame_number\22\09\09\09\09\09"
module asm "__kstrtabns_usb_gadget_frame_number:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_gadget_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_gadget_wakeup\22\09\09\09\09\09"
module asm "__kstrtabns_usb_gadget_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_gadget_set_selfpowered:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_gadget_set_selfpowered\22\09\09\09\09\09"
module asm "__kstrtabns_usb_gadget_set_selfpowered:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_gadget_clear_selfpowered:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_gadget_clear_selfpowered\22\09\09\09\09\09"
module asm "__kstrtabns_usb_gadget_clear_selfpowered:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_gadget_vbus_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_gadget_vbus_connect\22\09\09\09\09\09"
module asm "__kstrtabns_usb_gadget_vbus_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_gadget_vbus_draw:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_gadget_vbus_draw\22\09\09\09\09\09"
module asm "__kstrtabns_usb_gadget_vbus_draw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_gadget_vbus_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_gadget_vbus_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_usb_gadget_vbus_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_gadget_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_gadget_connect\22\09\09\09\09\09"
module asm "__kstrtabns_usb_gadget_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_gadget_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_gadget_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_usb_gadget_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_gadget_deactivate:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_gadget_deactivate\22\09\09\09\09\09"
module asm "__kstrtabns_usb_gadget_deactivate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_gadget_activate:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_gadget_activate\22\09\09\09\09\09"
module asm "__kstrtabns_usb_gadget_activate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_gadget_map_request_by_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_gadget_map_request_by_dev\22\09\09\09\09\09"
module asm "__kstrtabns_usb_gadget_map_request_by_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_gadget_map_request:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_gadget_map_request\22\09\09\09\09\09"
module asm "__kstrtabns_usb_gadget_map_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_gadget_unmap_request_by_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_gadget_unmap_request_by_dev\22\09\09\09\09\09"
module asm "__kstrtabns_usb_gadget_unmap_request_by_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_gadget_unmap_request:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_gadget_unmap_request\22\09\09\09\09\09"
module asm "__kstrtabns_usb_gadget_unmap_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_gadget_giveback_request:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_gadget_giveback_request\22\09\09\09\09\09"
module asm "__kstrtabns_usb_gadget_giveback_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gadget_find_ep_by_name:\09\09\09\09\09"
module asm "\09.asciz \09\22gadget_find_ep_by_name\22\09\09\09\09\09"
module asm "__kstrtabns_gadget_find_ep_by_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_gadget_ep_match_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_gadget_ep_match_desc\22\09\09\09\09\09"
module asm "__kstrtabns_usb_gadget_ep_match_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_gadget_check_config:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_gadget_check_config\22\09\09\09\09\09"
module asm "__kstrtabns_usb_gadget_check_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_gadget_set_state:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_gadget_set_state\22\09\09\09\09\09"
module asm "__kstrtabns_usb_gadget_set_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_udc_vbus_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_udc_vbus_handler\22\09\09\09\09\09"
module asm "__kstrtabns_usb_udc_vbus_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_gadget_udc_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_gadget_udc_reset\22\09\09\09\09\09"
module asm "__kstrtabns_usb_gadget_udc_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_initialize_gadget:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_initialize_gadget\22\09\09\09\09\09"
module asm "__kstrtabns_usb_initialize_gadget:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_add_gadget:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_add_gadget\22\09\09\09\09\09"
module asm "__kstrtabns_usb_add_gadget:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_add_gadget_udc_release:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_add_gadget_udc_release\22\09\09\09\09\09"
module asm "__kstrtabns_usb_add_gadget_udc_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_get_gadget_udc_name:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_get_gadget_udc_name\22\09\09\09\09\09"
module asm "__kstrtabns_usb_get_gadget_udc_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_add_gadget_udc:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_add_gadget_udc\22\09\09\09\09\09"
module asm "__kstrtabns_usb_add_gadget_udc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_del_gadget:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_del_gadget\22\09\09\09\09\09"
module asm "__kstrtabns_usb_del_gadget:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_del_gadget_udc:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_del_gadget_udc\22\09\09\09\09\09"
module asm "__kstrtabns_usb_del_gadget_udc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_gadget_probe_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_gadget_probe_driver\22\09\09\09\09\09"
module asm "__kstrtabns_usb_gadget_probe_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_gadget_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_gadget_unregister_driver\22\09\09\09\09\09"
module asm "__kstrtabns_usb_gadget_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.lock_class_key = type {}
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.48, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.48 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.page = type { i32, %union.anon.1, %union.anon.58, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.58 = type { %struct.atomic_t }
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_udc = type { ptr, ptr, %struct.device, %struct.list_head, i8, i8 }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_usb_ep_set_maxpacket_limit = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_ep_set_maxpacket_limit = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_ep_set_maxpacket_limit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_ep_set_maxpacket_limit to i32), ptr @__kstrtab_usb_ep_set_maxpacket_limit, ptr @__kstrtabns_usb_ep_set_maxpacket_limit }, section "___ksymtab_gpl+usb_ep_set_maxpacket_limit", align 4
@__kstrtab_usb_ep_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_ep_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_ep_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_ep_enable to i32), ptr @__kstrtab_usb_ep_enable, ptr @__kstrtabns_usb_ep_enable }, section "___ksymtab_gpl+usb_ep_enable", align 4
@__kstrtab_usb_ep_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_ep_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_ep_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_ep_disable to i32), ptr @__kstrtab_usb_ep_disable, ptr @__kstrtabns_usb_ep_disable }, section "___ksymtab_gpl+usb_ep_disable", align 4
@__kstrtab_usb_ep_alloc_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_ep_alloc_request = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_ep_alloc_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_ep_alloc_request to i32), ptr @__kstrtab_usb_ep_alloc_request, ptr @__kstrtabns_usb_ep_alloc_request }, section "___ksymtab_gpl+usb_ep_alloc_request", align 4
@__kstrtab_usb_ep_free_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_ep_free_request = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_ep_free_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_ep_free_request to i32), ptr @__kstrtab_usb_ep_free_request, ptr @__kstrtabns_usb_ep_free_request }, section "___ksymtab_gpl+usb_ep_free_request", align 4
@usb_ep_queue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [30 x i8] c"drivers/usb/gadget/udc/core.c\00", align 1
@__kstrtab_usb_ep_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_ep_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_ep_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_ep_queue to i32), ptr @__kstrtab_usb_ep_queue, ptr @__kstrtabns_usb_ep_queue }, section "___ksymtab_gpl+usb_ep_queue", align 4
@__kstrtab_usb_ep_dequeue = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_ep_dequeue = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_ep_dequeue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_ep_dequeue to i32), ptr @__kstrtab_usb_ep_dequeue, ptr @__kstrtabns_usb_ep_dequeue }, section "___ksymtab_gpl+usb_ep_dequeue", align 4
@__kstrtab_usb_ep_set_halt = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_ep_set_halt = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_ep_set_halt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_ep_set_halt to i32), ptr @__kstrtab_usb_ep_set_halt, ptr @__kstrtabns_usb_ep_set_halt }, section "___ksymtab_gpl+usb_ep_set_halt", align 4
@__kstrtab_usb_ep_clear_halt = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_ep_clear_halt = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_ep_clear_halt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_ep_clear_halt to i32), ptr @__kstrtab_usb_ep_clear_halt, ptr @__kstrtabns_usb_ep_clear_halt }, section "___ksymtab_gpl+usb_ep_clear_halt", align 4
@__kstrtab_usb_ep_set_wedge = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_ep_set_wedge = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_ep_set_wedge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_ep_set_wedge to i32), ptr @__kstrtab_usb_ep_set_wedge, ptr @__kstrtabns_usb_ep_set_wedge }, section "___ksymtab_gpl+usb_ep_set_wedge", align 4
@__kstrtab_usb_ep_fifo_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_ep_fifo_status = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_ep_fifo_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_ep_fifo_status to i32), ptr @__kstrtab_usb_ep_fifo_status, ptr @__kstrtabns_usb_ep_fifo_status }, section "___ksymtab_gpl+usb_ep_fifo_status", align 4
@__kstrtab_usb_ep_fifo_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_ep_fifo_flush = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_ep_fifo_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_ep_fifo_flush to i32), ptr @__kstrtab_usb_ep_fifo_flush, ptr @__kstrtabns_usb_ep_fifo_flush }, section "___ksymtab_gpl+usb_ep_fifo_flush", align 4
@__kstrtab_usb_gadget_frame_number = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_gadget_frame_number = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_gadget_frame_number = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_gadget_frame_number to i32), ptr @__kstrtab_usb_gadget_frame_number, ptr @__kstrtabns_usb_gadget_frame_number }, section "___ksymtab_gpl+usb_gadget_frame_number", align 4
@__kstrtab_usb_gadget_wakeup = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_gadget_wakeup = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_gadget_wakeup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_gadget_wakeup to i32), ptr @__kstrtab_usb_gadget_wakeup, ptr @__kstrtabns_usb_gadget_wakeup }, section "___ksymtab_gpl+usb_gadget_wakeup", align 4
@__kstrtab_usb_gadget_set_selfpowered = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_gadget_set_selfpowered = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_gadget_set_selfpowered = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_gadget_set_selfpowered to i32), ptr @__kstrtab_usb_gadget_set_selfpowered, ptr @__kstrtabns_usb_gadget_set_selfpowered }, section "___ksymtab_gpl+usb_gadget_set_selfpowered", align 4
@__kstrtab_usb_gadget_clear_selfpowered = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_gadget_clear_selfpowered = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_gadget_clear_selfpowered = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_gadget_clear_selfpowered to i32), ptr @__kstrtab_usb_gadget_clear_selfpowered, ptr @__kstrtabns_usb_gadget_clear_selfpowered }, section "___ksymtab_gpl+usb_gadget_clear_selfpowered", align 4
@__kstrtab_usb_gadget_vbus_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_gadget_vbus_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_gadget_vbus_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_gadget_vbus_connect to i32), ptr @__kstrtab_usb_gadget_vbus_connect, ptr @__kstrtabns_usb_gadget_vbus_connect }, section "___ksymtab_gpl+usb_gadget_vbus_connect", align 4
@__kstrtab_usb_gadget_vbus_draw = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_gadget_vbus_draw = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_gadget_vbus_draw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_gadget_vbus_draw to i32), ptr @__kstrtab_usb_gadget_vbus_draw, ptr @__kstrtabns_usb_gadget_vbus_draw }, section "___ksymtab_gpl+usb_gadget_vbus_draw", align 4
@__kstrtab_usb_gadget_vbus_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_gadget_vbus_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_gadget_vbus_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_gadget_vbus_disconnect to i32), ptr @__kstrtab_usb_gadget_vbus_disconnect, ptr @__kstrtabns_usb_gadget_vbus_disconnect }, section "___ksymtab_gpl+usb_gadget_vbus_disconnect", align 4
@__kstrtab_usb_gadget_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_gadget_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_gadget_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_gadget_connect to i32), ptr @__kstrtab_usb_gadget_connect, ptr @__kstrtabns_usb_gadget_connect }, section "___ksymtab_gpl+usb_gadget_connect", align 4
@__kstrtab_usb_gadget_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_gadget_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_gadget_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_gadget_disconnect to i32), ptr @__kstrtab_usb_gadget_disconnect, ptr @__kstrtabns_usb_gadget_disconnect }, section "___ksymtab_gpl+usb_gadget_disconnect", align 4
@__kstrtab_usb_gadget_deactivate = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_gadget_deactivate = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_gadget_deactivate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_gadget_deactivate to i32), ptr @__kstrtab_usb_gadget_deactivate, ptr @__kstrtabns_usb_gadget_deactivate }, section "___ksymtab_gpl+usb_gadget_deactivate", align 4
@__kstrtab_usb_gadget_activate = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_gadget_activate = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_gadget_activate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_gadget_activate to i32), ptr @__kstrtab_usb_gadget_activate, ptr @__kstrtabns_usb_gadget_activate }, section "___ksymtab_gpl+usb_gadget_activate", align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"failed to map SGs\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"buffer is not dma capable\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"buffer is on stack\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"failed to map buffer\0A\00", align 1
@__kstrtab_usb_gadget_map_request_by_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_gadget_map_request_by_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_gadget_map_request_by_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_gadget_map_request_by_dev to i32), ptr @__kstrtab_usb_gadget_map_request_by_dev, ptr @__kstrtabns_usb_gadget_map_request_by_dev }, section "___ksymtab_gpl+usb_gadget_map_request_by_dev", align 4
@__kstrtab_usb_gadget_map_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_gadget_map_request = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_gadget_map_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_gadget_map_request to i32), ptr @__kstrtab_usb_gadget_map_request, ptr @__kstrtabns_usb_gadget_map_request }, section "___ksymtab_gpl+usb_gadget_map_request", align 4
@__kstrtab_usb_gadget_unmap_request_by_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_gadget_unmap_request_by_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_gadget_unmap_request_by_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_gadget_unmap_request_by_dev to i32), ptr @__kstrtab_usb_gadget_unmap_request_by_dev, ptr @__kstrtabns_usb_gadget_unmap_request_by_dev }, section "___ksymtab_gpl+usb_gadget_unmap_request_by_dev", align 4
@__kstrtab_usb_gadget_unmap_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_gadget_unmap_request = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_gadget_unmap_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_gadget_unmap_request to i32), ptr @__kstrtab_usb_gadget_unmap_request, ptr @__kstrtabns_usb_gadget_unmap_request }, section "___ksymtab_gpl+usb_gadget_unmap_request", align 4
@__kstrtab_usb_gadget_giveback_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_gadget_giveback_request = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_gadget_giveback_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_gadget_giveback_request to i32), ptr @__kstrtab_usb_gadget_giveback_request, ptr @__kstrtabns_usb_gadget_giveback_request }, section "___ksymtab_gpl+usb_gadget_giveback_request", align 4
@__kstrtab_gadget_find_ep_by_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_gadget_find_ep_by_name = external dso_local constant [0 x i8], align 1
@__ksymtab_gadget_find_ep_by_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gadget_find_ep_by_name to i32), ptr @__kstrtab_gadget_find_ep_by_name, ptr @__kstrtabns_gadget_find_ep_by_name }, section "___ksymtab_gpl+gadget_find_ep_by_name", align 4
@__kstrtab_usb_gadget_ep_match_desc = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_gadget_ep_match_desc = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_gadget_ep_match_desc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_gadget_ep_match_desc to i32), ptr @__kstrtab_usb_gadget_ep_match_desc, ptr @__kstrtabns_usb_gadget_ep_match_desc }, section "___ksymtab_gpl+usb_gadget_ep_match_desc", align 4
@__kstrtab_usb_gadget_check_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_gadget_check_config = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_gadget_check_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_gadget_check_config to i32), ptr @__kstrtab_usb_gadget_check_config, ptr @__kstrtabns_usb_gadget_check_config }, section "___ksymtab_gpl+usb_gadget_check_config", align 4
@__kstrtab_usb_gadget_set_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_gadget_set_state = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_gadget_set_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_gadget_set_state to i32), ptr @__kstrtab_usb_gadget_set_state, ptr @__kstrtabns_usb_gadget_set_state }, section "___ksymtab_gpl+usb_gadget_set_state", align 4
@__kstrtab_usb_udc_vbus_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_udc_vbus_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_udc_vbus_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_udc_vbus_handler to i32), ptr @__kstrtab_usb_udc_vbus_handler, ptr @__kstrtabns_usb_udc_vbus_handler }, section "___ksymtab_gpl+usb_udc_vbus_handler", align 4
@__kstrtab_usb_gadget_udc_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_gadget_udc_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_gadget_udc_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_gadget_udc_reset to i32), ptr @__kstrtab_usb_gadget_udc_reset, ptr @__kstrtabns_usb_gadget_udc_reset }, section "___ksymtab_gpl+usb_gadget_udc_reset", align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"gadget\00", align 1
@__kstrtab_usb_initialize_gadget = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_initialize_gadget = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_initialize_gadget = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_initialize_gadget to i32), ptr @__kstrtab_usb_initialize_gadget, ptr @__kstrtabns_usb_initialize_gadget }, section "___ksymtab_gpl+usb_initialize_gadget", align 4
@udc_class = internal unnamed_addr global ptr null, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@udc_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @udc_lock, i64 12), ptr getelementptr (i8, ptr @udc_lock, i64 12) } }, align 4
@udc_list = internal global %struct.list_head { ptr @udc_list, ptr @udc_list }, align 4
@__kstrtab_usb_add_gadget = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_add_gadget = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_add_gadget = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_add_gadget to i32), ptr @__kstrtab_usb_add_gadget, ptr @__kstrtabns_usb_add_gadget }, section "___ksymtab_gpl+usb_add_gadget", align 4
@__kstrtab_usb_add_gadget_udc_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_add_gadget_udc_release = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_add_gadget_udc_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_add_gadget_udc_release to i32), ptr @__kstrtab_usb_add_gadget_udc_release, ptr @__kstrtabns_usb_add_gadget_udc_release }, section "___ksymtab_gpl+usb_add_gadget_udc_release", align 4
@__kstrtab_usb_get_gadget_udc_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_get_gadget_udc_name = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_get_gadget_udc_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_get_gadget_udc_name to i32), ptr @__kstrtab_usb_get_gadget_udc_name, ptr @__kstrtabns_usb_get_gadget_udc_name }, section "___ksymtab_gpl+usb_get_gadget_udc_name", align 4
@__kstrtab_usb_add_gadget_udc = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_add_gadget_udc = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_add_gadget_udc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_add_gadget_udc to i32), ptr @__kstrtab_usb_add_gadget_udc, ptr @__kstrtabns_usb_add_gadget_udc }, section "___ksymtab_gpl+usb_add_gadget_udc", align 4
@gadget_driver_pending_list = internal global %struct.list_head { ptr @gadget_driver_pending_list, ptr @gadget_driver_pending_list }, align 4
@__kstrtab_usb_del_gadget = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_del_gadget = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_del_gadget = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_del_gadget to i32), ptr @__kstrtab_usb_del_gadget, ptr @__kstrtabns_usb_del_gadget }, section "___ksymtab_gpl+usb_del_gadget", align 4
@__kstrtab_usb_del_gadget_udc = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_del_gadget_udc = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_del_gadget_udc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_del_gadget_udc to i32), ptr @__kstrtab_usb_del_gadget_udc, ptr @__kstrtabns_usb_del_gadget_udc }, section "___ksymtab_gpl+usb_del_gadget_udc", align 4
@.str.7 = private unnamed_addr constant [84 x i8] c"\016UDC core: couldn't find an available UDC - added [%s] to list of pending drivers\0A\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"\014UDC core: couldn't find an available UDC or it's busy: %d\0A\00", align 1
@__kstrtab_usb_gadget_probe_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_gadget_probe_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_gadget_probe_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_gadget_probe_driver to i32), ptr @__kstrtab_usb_gadget_probe_driver, ptr @__kstrtabns_usb_gadget_probe_driver }, section "___ksymtab_gpl+usb_gadget_probe_driver", align 4
@__kstrtab_usb_gadget_unregister_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_gadget_unregister_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_gadget_unregister_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_gadget_unregister_driver to i32), ptr @__kstrtab_usb_gadget_unregister_driver, ptr @__kstrtabns_usb_gadget_unregister_driver }, section "___ksymtab_gpl+usb_gadget_unregister_driver", align 4
@__initcall__kmod_udc_core__282_1768_usb_udc_init4 = internal global ptr @usb_udc_init, section ".initcall4.init", align 4
@__exitcall_usb_udc_exit = internal global ptr @usb_udc_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description283 = internal constant [35 x i8] c"udc_core.description=UDC Framework\00", section ".modinfo", align 1
@__UNIQUE_ID_author284 = internal constant [44 x i8] c"udc_core.author=Felipe Balbi <balbi@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file285 = internal constant [46 x i8] c"udc_core.file=drivers/usb/gadget/udc/udc-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license286 = internal constant [24 x i8] c"udc_core.license=GPL v2\00", section ".modinfo", align 1
@__tracepoint_usb_ep_set_maxpacket_limit = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_usb_ep_enable = external dso_local global %struct.tracepoint, align 4
@__tracepoint_usb_ep_disable = external dso_local global %struct.tracepoint, align 4
@__tracepoint_usb_ep_alloc_request = external dso_local global %struct.tracepoint, align 4
@__tracepoint_usb_ep_free_request = external dso_local global %struct.tracepoint, align 4
@__tracepoint_usb_ep_queue = external dso_local global %struct.tracepoint, align 4
@__tracepoint_usb_ep_dequeue = external dso_local global %struct.tracepoint, align 4
@__tracepoint_usb_ep_set_halt = external dso_local global %struct.tracepoint, align 4
@__tracepoint_usb_ep_clear_halt = external dso_local global %struct.tracepoint, align 4
@__tracepoint_usb_ep_set_wedge = external dso_local global %struct.tracepoint, align 4
@__tracepoint_usb_ep_fifo_status = external dso_local global %struct.tracepoint, align 4
@__tracepoint_usb_ep_fifo_flush = external dso_local global %struct.tracepoint, align 4
@__tracepoint_usb_gadget_frame_number = external dso_local global %struct.tracepoint, align 4
@__tracepoint_usb_gadget_wakeup = external dso_local global %struct.tracepoint, align 4
@__tracepoint_usb_gadget_set_selfpowered = external dso_local global %struct.tracepoint, align 4
@__tracepoint_usb_gadget_clear_selfpowered = external dso_local global %struct.tracepoint, align 4
@__tracepoint_usb_gadget_vbus_connect = external dso_local global %struct.tracepoint, align 4
@__tracepoint_usb_gadget_vbus_draw = external dso_local global %struct.tracepoint, align 4
@__tracepoint_usb_gadget_vbus_disconnect = external dso_local global %struct.tracepoint, align 4
@__tracepoint_usb_gadget_connect = external dso_local global %struct.tracepoint, align 4
@__tracepoint_usb_gadget_disconnect = external dso_local global %struct.tracepoint, align 4
@__tracepoint_usb_gadget_deactivate = external dso_local global %struct.tracepoint, align 4
@__tracepoint_usb_gadget_activate = external dso_local global %struct.tracepoint, align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_usb_gadget_giveback_request = external dso_local global %struct.tracepoint, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.13 = private unnamed_addr constant [25 x i8] c"UDC had already stopped\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"failed to start %s: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"UDC had already started\0A\00", align 1
@usb_udc_attr_groups = internal global [2 x ptr] [ptr @usb_udc_attr_group, ptr null], align 4
@usb_udc_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @usb_udc_attrs, ptr null }, align 4
@usb_udc_attrs = internal global [13 x ptr] [ptr @dev_attr_srp, ptr @dev_attr_soft_connect, ptr @dev_attr_state, ptr @dev_attr_function, ptr @dev_attr_current_speed, ptr @dev_attr_maximum_speed, ptr @dev_attr_is_otg, ptr @dev_attr_is_a_peripheral, ptr @dev_attr_b_hnp_enable, ptr @dev_attr_a_hnp_support, ptr @dev_attr_a_alt_hnp_support, ptr @dev_attr_is_selfpowered, ptr null], align 4
@dev_attr_srp = internal global %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 128 }, ptr null, ptr @srp_store }, align 4
@dev_attr_soft_connect = internal global %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 128 }, ptr null, ptr @soft_connect_store }, align 4
@dev_attr_state = internal global %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292 }, ptr @state_show, ptr null }, align 4
@dev_attr_function = internal global %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292 }, ptr @function_show, ptr null }, align 4
@dev_attr_current_speed = internal global %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292 }, ptr @current_speed_show, ptr null }, align 4
@dev_attr_maximum_speed = internal global %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292 }, ptr @maximum_speed_show, ptr null }, align 4
@dev_attr_is_otg = internal global %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292 }, ptr @is_otg_show, ptr null }, align 4
@dev_attr_is_a_peripheral = internal global %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292 }, ptr @is_a_peripheral_show, ptr null }, align 4
@dev_attr_b_hnp_enable = internal global %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292 }, ptr @b_hnp_enable_show, ptr null }, align 4
@dev_attr_a_hnp_support = internal global %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292 }, ptr @a_hnp_support_show, ptr null }, align 4
@dev_attr_a_alt_hnp_support = internal global %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292 }, ptr @a_alt_hnp_support_show, ptr null }, align 4
@dev_attr_is_selfpowered = internal global %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292 }, ptr @is_selfpowered_show, ptr null }, align 4
@.str.17 = private unnamed_addr constant [4 x i8] c"srp\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"soft_connect\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"soft-connect without a gadget driver\0A\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"disconnect\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"unsupported command '%s'\0A\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"current_speed\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"maximum_speed\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"is_otg\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"is_a_peripheral\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"b_hnp_enable\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"a_hnp_support\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"a_alt_hnp_support\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"is_selfpowered\00", align 1
@usb_udc_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"udc\00", align 1
@.str.36 = private unnamed_addr constant [48 x i8] c"\013UDC core: failed to create udc class --> %ld\0A\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"USB_UDC_NAME=%s\00", align 1
@.str.38 = private unnamed_addr constant [35 x i8] c"failed to add uevent USB_UDC_NAME\0A\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"USB_UDC_DRIVER=%s\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"failed to add uevent USB_UDC_DRIVER\0A\00", align 1
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author284, ptr @__UNIQUE_ID_description283, ptr @__UNIQUE_ID_file285, ptr @__UNIQUE_ID_license286, ptr @__exitcall_usb_udc_exit, ptr @__initcall__kmod_udc_core__282_1768_usb_udc_init4, ptr @__ksymtab_gadget_find_ep_by_name, ptr @__ksymtab_usb_add_gadget, ptr @__ksymtab_usb_add_gadget_udc, ptr @__ksymtab_usb_add_gadget_udc_release, ptr @__ksymtab_usb_del_gadget, ptr @__ksymtab_usb_del_gadget_udc, ptr @__ksymtab_usb_ep_alloc_request, ptr @__ksymtab_usb_ep_clear_halt, ptr @__ksymtab_usb_ep_dequeue, ptr @__ksymtab_usb_ep_disable, ptr @__ksymtab_usb_ep_enable, ptr @__ksymtab_usb_ep_fifo_flush, ptr @__ksymtab_usb_ep_fifo_status, ptr @__ksymtab_usb_ep_free_request, ptr @__ksymtab_usb_ep_queue, ptr @__ksymtab_usb_ep_set_halt, ptr @__ksymtab_usb_ep_set_maxpacket_limit, ptr @__ksymtab_usb_ep_set_wedge, ptr @__ksymtab_usb_gadget_activate, ptr @__ksymtab_usb_gadget_check_config, ptr @__ksymtab_usb_gadget_clear_selfpowered, ptr @__ksymtab_usb_gadget_connect, ptr @__ksymtab_usb_gadget_deactivate, ptr @__ksymtab_usb_gadget_disconnect, ptr @__ksymtab_usb_gadget_ep_match_desc, ptr @__ksymtab_usb_gadget_frame_number, ptr @__ksymtab_usb_gadget_giveback_request, ptr @__ksymtab_usb_gadget_map_request, ptr @__ksymtab_usb_gadget_map_request_by_dev, ptr @__ksymtab_usb_gadget_probe_driver, ptr @__ksymtab_usb_gadget_set_selfpowered, ptr @__ksymtab_usb_gadget_set_state, ptr @__ksymtab_usb_gadget_udc_reset, ptr @__ksymtab_usb_gadget_unmap_request, ptr @__ksymtab_usb_gadget_unmap_request_by_dev, ptr @__ksymtab_usb_gadget_unregister_driver, ptr @__ksymtab_usb_gadget_vbus_connect, ptr @__ksymtab_usb_gadget_vbus_disconnect, ptr @__ksymtab_usb_gadget_vbus_draw, ptr @__ksymtab_usb_gadget_wakeup, ptr @__ksymtab_usb_get_gadget_udc_name, ptr @__ksymtab_usb_initialize_gadget, ptr @__ksymtab_usb_udc_vbus_handler, ptr @usb_udc_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_ep_set_maxpacket_limit(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 7
  %4 = load i56, ptr %3, align 2
  %5 = and i32 %1, 65535
  %6 = zext i32 %5 to i56
  %7 = shl nuw nsw i56 %6, 16
  %8 = and i56 %4, -4294967296
  %9 = or i56 %8, %7
  %10 = or i56 %9, %6
  store i56 %10, ptr %3, align 2
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_ep_set_maxpacket_limit, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = tail call ptr @llvm.thread.pointer() #12
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !8
  %25 = tail call i32 @__traceiter_usb_ep_set_maxpacket_limit(ptr noundef null, ptr noundef %0, i32 noundef 0) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !9
  br label %26

26:                                               ; preds = %24, %13, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_ep_enable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 6
  %3 = load i8, ptr %2, align 1, !range !10
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 4
  %9 = load i16, ptr %8, align 1
  %10 = and i16 %9, 2047
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %0, ptr noundef %7) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i8 1, ptr %2, align 1
  br label %19

19:                                               ; preds = %18, %12, %5, %1
  %20 = phi i32 [ 0, %1 ], [ %16, %12 ], [ 0, %18 ], [ -22, %5 ]
  %21 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_ep_enable, i32 0, i32 1), align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = tail call ptr @llvm.thread.pointer() #12
  %25 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %26 = load i32, ptr %25, align 8
  %27 = lshr i32 %26, 5
  %28 = getelementptr i32, ptr @__cpu_online_mask, i32 %27
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %26, 31
  %31 = shl nuw i32 1, %30
  %32 = and i32 %31, %29
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %23
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %35 = tail call i32 @__traceiter_usb_ep_enable(ptr noundef null, ptr noundef %0, i32 noundef %20) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  br label %36

36:                                               ; preds = %34, %23, %19
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_ep_disable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 6
  %3 = load i8, ptr %2, align 1, !range !10
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_ep_ops, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %0) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  store i8 0, ptr %2, align 1
  br label %13

13:                                               ; preds = %12, %5, %1
  %14 = phi i32 [ %10, %5 ], [ 0, %12 ], [ 0, %1 ]
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_ep_disable, i32 0, i32 1), align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = tail call ptr @llvm.thread.pointer() #12
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 5
  %22 = getelementptr i32, ptr @__cpu_online_mask, i32 %21
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %20, 31
  %25 = shl nuw i32 1, %24
  %26 = and i32 %25, %23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %29 = tail call i32 @__traceiter_usb_ep_disable(ptr noundef null, ptr noundef %0, i32 noundef %14) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  br label %30

30:                                               ; preds = %28, %17, %13
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @usb_ep_alloc_request(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_ep_ops, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr %6(ptr noundef %0, i32 noundef %1) #12
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, i32 -12, i32 0
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_ep_alloc_request, i32 0, i32 1), align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = tail call ptr @llvm.thread.pointer() #12
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 5
  %17 = getelementptr i32, ptr @__cpu_online_mask, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %15, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, %18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  %24 = tail call i32 @__traceiter_usb_ep_alloc_request(ptr noundef null, ptr noundef %0, ptr noundef %7, i32 noundef %9) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  br label %25

25:                                               ; preds = %23, %12, %2
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_ep_free_request(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_ep_free_request, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = tail call ptr @llvm.thread.pointer() #12
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 5
  %10 = getelementptr i32, ptr @__cpu_online_mask, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %8, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  %17 = tail call i32 @__traceiter_usb_ep_free_request(ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef 0) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !18
  br label %18

18:                                               ; preds = %16, %5, %2
  %19 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.usb_ep_ops, ptr %20, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  tail call void %22(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_ep_queue(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 6
  %5 = load i8, ptr %4, align 1, !range !10
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 8
  %9 = load i8, ptr %8, align 1
  %10 = icmp ne i8 %9, 0
  %11 = load i1, ptr @usb_ep_queue.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !19

14:                                               ; preds = %7
  store i1 true, ptr @usb_ep_queue.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 280, i32 noundef 9, ptr noundef null) #12
  br label %22

15:                                               ; preds = %7
  br i1 %10, label %22, label %16

16:                                               ; preds = %15, %3
  %17 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.usb_ep_ops, ptr %18, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef %0, ptr noundef %1, i32 noundef %2) #12
  br label %22

22:                                               ; preds = %16, %15, %14
  %23 = phi i32 [ %21, %16 ], [ -108, %15 ], [ -108, %14 ]
  %24 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_ep_queue, i32 0, i32 1), align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = tail call ptr @llvm.thread.pointer() #12
  %28 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %29 = load i32, ptr %28, align 8
  %30 = lshr i32 %29, 5
  %31 = getelementptr i32, ptr @__cpu_online_mask, i32 %30
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %29, 31
  %34 = shl nuw i32 1, %33
  %35 = and i32 %34, %32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %26
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !20
  %38 = tail call i32 @__traceiter_usb_ep_queue(ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef %23) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !21
  br label %39

39:                                               ; preds = %37, %26, %22
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_ep_dequeue(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_ep_ops, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %0, ptr noundef %1) #12
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_ep_dequeue, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = tail call ptr @llvm.thread.pointer() #12
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 5
  %15 = getelementptr i32, ptr @__cpu_online_mask, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %13, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !22
  %22 = tail call i32 @__traceiter_usb_ep_dequeue(ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef %7) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !23
  br label %23

23:                                               ; preds = %21, %10, %2
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_ep_set_halt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_ep_ops, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %0, i32 noundef 1) #12
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_ep_set_halt, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = tail call ptr @llvm.thread.pointer() #12
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr @__cpu_online_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %12, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !24
  %21 = tail call i32 @__traceiter_usb_ep_set_halt(ptr noundef null, ptr noundef %0, i32 noundef %6) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !25
  br label %22

22:                                               ; preds = %20, %9, %1
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_ep_clear_halt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_ep_ops, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %0, i32 noundef 0) #12
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_ep_clear_halt, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = tail call ptr @llvm.thread.pointer() #12
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr @__cpu_online_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %12, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !26
  %21 = tail call i32 @__traceiter_usb_ep_clear_halt(ptr noundef null, ptr noundef %0, i32 noundef %6) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !27
  br label %22

22:                                               ; preds = %20, %9, %1
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_ep_set_wedge(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_ep_ops, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 %5(ptr noundef %0) #12
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.usb_ep_ops, ptr %3, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %0, i32 noundef 1) #12
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_ep_set_wedge, i32 0, i32 1), align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = tail call ptr @llvm.thread.pointer() #12
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 5
  %22 = getelementptr i32, ptr @__cpu_online_mask, i32 %21
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %20, 31
  %25 = shl nuw i32 1, %24
  %26 = and i32 %25, %23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !28
  %29 = tail call i32 @__traceiter_usb_ep_set_wedge(ptr noundef null, ptr noundef %0, i32 noundef %14) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !29
  br label %30

30:                                               ; preds = %28, %17, %13
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_ep_fifo_status(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_ep_ops, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 %5(ptr noundef %0) #12
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ -95, %1 ]
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_ep_fifo_status, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #12
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !30
  %25 = tail call i32 @__traceiter_usb_ep_fifo_status(ptr noundef null, ptr noundef %0, i32 noundef %10) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !31
  br label %26

26:                                               ; preds = %24, %13, %9
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_ep_fifo_flush(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_ep_ops, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %0) #12
  br label %8

8:                                                ; preds = %7, %1
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_ep_fifo_flush, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = tail call ptr @llvm.thread.pointer() #12
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 5
  %16 = getelementptr i32, ptr @__cpu_online_mask, i32 %15
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %14, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !32
  %23 = tail call i32 @__traceiter_usb_ep_fifo_flush(ptr noundef null, ptr noundef %0, i32 noundef 0) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !33
  br label %24

24:                                               ; preds = %22, %11, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_gadget_frame_number(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 %4(ptr noundef %0) #12
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_gadget_frame_number, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = tail call ptr @llvm.thread.pointer() #12
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !34
  %20 = tail call i32 @__traceiter_usb_gadget_frame_number(ptr noundef null, ptr noundef %0, i32 noundef %5) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !35
  br label %21

21:                                               ; preds = %19, %8, %1
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_gadget_wakeup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_gadget_ops, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 %5(ptr noundef %0) #12
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ -95, %1 ]
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_gadget_wakeup, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #12
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !36
  %25 = tail call i32 @__traceiter_usb_gadget_wakeup(ptr noundef null, ptr noundef %0, i32 noundef %10) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !37
  br label %26

26:                                               ; preds = %24, %13, %9
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_gadget_set_selfpowered(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_gadget_ops, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 %5(ptr noundef %0, i32 noundef 1) #12
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ -95, %1 ]
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_gadget_set_selfpowered, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #12
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !38
  %25 = tail call i32 @__traceiter_usb_gadget_set_selfpowered(ptr noundef null, ptr noundef %0, i32 noundef %10) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !39
  br label %26

26:                                               ; preds = %24, %13, %9
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_gadget_clear_selfpowered(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_gadget_ops, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 %5(ptr noundef %0, i32 noundef 0) #12
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ -95, %1 ]
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_gadget_clear_selfpowered, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #12
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !40
  %25 = tail call i32 @__traceiter_usb_gadget_clear_selfpowered(ptr noundef null, ptr noundef %0, i32 noundef %10) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !41
  br label %26

26:                                               ; preds = %24, %13, %9
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_gadget_vbus_connect(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_gadget_ops, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 %5(ptr noundef %0, i32 noundef 1) #12
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ -95, %1 ]
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_gadget_vbus_connect, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #12
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !42
  %25 = tail call i32 @__traceiter_usb_gadget_vbus_connect(ptr noundef null, ptr noundef %0, i32 noundef %10) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !43
  br label %26

26:                                               ; preds = %24, %13, %9
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_gadget_vbus_draw(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_gadget_ops, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = tail call i32 %6(ptr noundef %0, i32 noundef %1) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 15
  store i32 %1, ptr %12, align 4
  br label %13

13:                                               ; preds = %11, %8, %2
  %14 = phi i32 [ %9, %8 ], [ 0, %11 ], [ -95, %2 ]
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_gadget_vbus_draw, i32 0, i32 1), align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = tail call ptr @llvm.thread.pointer() #12
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 5
  %22 = getelementptr i32, ptr @__cpu_online_mask, i32 %21
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %20, 31
  %25 = shl nuw i32 1, %24
  %26 = and i32 %25, %23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !44
  %29 = tail call i32 @__traceiter_usb_gadget_vbus_draw(ptr noundef null, ptr noundef %0, i32 noundef %14) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !45
  br label %30

30:                                               ; preds = %28, %17, %13
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_gadget_vbus_disconnect(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_gadget_ops, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 %5(ptr noundef %0, i32 noundef 0) #12
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ -95, %1 ]
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_gadget_vbus_disconnect, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #12
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !46
  %25 = tail call i32 @__traceiter_usb_gadget_vbus_disconnect(ptr noundef null, ptr noundef %0, i32 noundef %10) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !47
  br label %26

26:                                               ; preds = %24, %13, %9
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_gadget_connect(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_gadget_ops, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 17
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 16384
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = tail call i32 %5(ptr noundef %0, i32 noundef 1) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i32, ptr %8, align 4
  br label %17

17:                                               ; preds = %15, %7
  %18 = phi i32 [ %16, %15 ], [ %9, %7 ]
  %19 = or i32 %18, 32768
  store i32 %19, ptr %8, align 4
  br label %20

20:                                               ; preds = %17, %12, %1
  %21 = phi i32 [ %13, %12 ], [ -95, %1 ], [ 0, %17 ]
  %22 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_gadget_connect, i32 0, i32 1), align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = tail call ptr @llvm.thread.pointer() #12
  %26 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = lshr i32 %27, 5
  %29 = getelementptr i32, ptr @__cpu_online_mask, i32 %28
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %27, 31
  %32 = shl nuw i32 1, %31
  %33 = and i32 %32, %30
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %24
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !48
  %36 = tail call i32 @__traceiter_usb_gadget_connect(ptr noundef null, ptr noundef %0, i32 noundef %21) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !49
  br label %37

37:                                               ; preds = %35, %24, %20
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_gadget_disconnect(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_gadget_ops, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 17
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 32768
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %7
  %13 = and i32 %9, 16384
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = and i32 %9, -32769
  store i32 %16, ptr %8, align 4
  br label %28

17:                                               ; preds = %12
  %18 = tail call i32 %5(ptr noundef %0, i32 noundef 0) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i32, ptr %8, align 4
  %22 = and i32 %21, -32769
  store i32 %22, ptr %8, align 4
  %23 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.usb_gadget_driver, ptr %25, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  tail call void %27(ptr noundef %0) #12
  br label %28

28:                                               ; preds = %20, %17, %15, %7, %1
  %29 = phi i32 [ 0, %15 ], [ %18, %17 ], [ 0, %20 ], [ 0, %7 ], [ -95, %1 ]
  %30 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_gadget_disconnect, i32 0, i32 1), align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = tail call ptr @llvm.thread.pointer() #12
  %34 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = lshr i32 %35, 5
  %37 = getelementptr i32, ptr @__cpu_online_mask, i32 %36
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %35, 31
  %40 = shl nuw i32 1, %39
  %41 = and i32 %40, %38
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %32
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !50
  %44 = tail call i32 @__traceiter_usb_gadget_disconnect(ptr noundef null, ptr noundef %0, i32 noundef %29) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !51
  br label %45

45:                                               ; preds = %43, %32, %28
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_gadget_deactivate(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 17
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 16384
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %51

6:                                                ; preds = %1
  %7 = and i32 %3, 32768
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %48, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.usb_gadget_ops, ptr %11, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %9
  %16 = tail call i32 %13(ptr noundef %0, i32 noundef 0) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i32, ptr %2, align 4
  %20 = and i32 %19, -32769
  store i32 %20, ptr %2, align 4
  %21 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.usb_gadget_driver, ptr %23, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  tail call void %25(ptr noundef %0) #12
  br label %26

26:                                               ; preds = %18, %15, %9
  %27 = phi i32 [ %16, %15 ], [ 0, %18 ], [ -95, %9 ]
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_gadget_disconnect, i32 0, i32 1), align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = tail call ptr @llvm.thread.pointer() #12
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = lshr i32 %33, 5
  %35 = getelementptr i32, ptr @__cpu_online_mask, i32 %34
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %33, 31
  %38 = shl nuw i32 1, %37
  %39 = and i32 %38, %36
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %30
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !50
  %42 = tail call i32 @__traceiter_usb_gadget_disconnect(ptr noundef null, ptr noundef %0, i32 noundef %27) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !51
  br label %43

43:                                               ; preds = %41, %30, %26
  %44 = icmp eq i32 %27, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %43
  %46 = load i32, ptr %2, align 4
  %47 = or i32 %46, 32768
  br label %48

48:                                               ; preds = %45, %6
  %49 = phi i32 [ %47, %45 ], [ %3, %6 ]
  %50 = or i32 %49, 16384
  store i32 %50, ptr %2, align 4
  br label %51

51:                                               ; preds = %48, %43, %1
  %52 = phi i32 [ 0, %1 ], [ %27, %43 ], [ 0, %48 ]
  %53 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_gadget_deactivate, i32 0, i32 1), align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  %56 = tail call ptr @llvm.thread.pointer() #12
  %57 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %58 = load i32, ptr %57, align 8
  %59 = lshr i32 %58, 5
  %60 = getelementptr i32, ptr @__cpu_online_mask, i32 %59
  %61 = load volatile i32, ptr %60, align 4
  %62 = and i32 %58, 31
  %63 = shl nuw i32 1, %62
  %64 = and i32 %63, %61
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %55
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !52
  %67 = tail call i32 @__traceiter_usb_gadget_deactivate(ptr noundef null, ptr noundef %0, i32 noundef %52) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !53
  br label %68

68:                                               ; preds = %66, %55, %51
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_gadget_activate(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 17
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 16384
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %39, label %6

6:                                                ; preds = %1
  %7 = and i32 %3, -16385
  store i32 %7, ptr %2, align 4
  %8 = and i32 %3, 32768
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %39, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.usb_gadget_ops, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = tail call i32 %14(ptr noundef %0, i32 noundef 1) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, ptr %2, align 4
  %21 = or i32 %20, 32768
  store i32 %21, ptr %2, align 4
  br label %22

22:                                               ; preds = %19, %16, %10
  %23 = phi i32 [ %17, %16 ], [ -95, %10 ], [ 0, %19 ]
  %24 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_gadget_connect, i32 0, i32 1), align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = tail call ptr @llvm.thread.pointer() #12
  %28 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %29 = load i32, ptr %28, align 8
  %30 = lshr i32 %29, 5
  %31 = getelementptr i32, ptr @__cpu_online_mask, i32 %30
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %29, 31
  %34 = shl nuw i32 1, %33
  %35 = and i32 %34, %32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %26
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !48
  %38 = tail call i32 @__traceiter_usb_gadget_connect(ptr noundef null, ptr noundef %0, i32 noundef %23) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !49
  br label %39

39:                                               ; preds = %37, %26, %22, %6, %1
  %40 = phi i32 [ 0, %6 ], [ 0, %1 ], [ %23, %22 ], [ %23, %26 ], [ %23, %37 ]
  %41 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_gadget_activate, i32 0, i32 1), align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  %44 = tail call ptr @llvm.thread.pointer() #12
  %45 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %46 = load i32, ptr %45, align 8
  %47 = lshr i32 %46, 5
  %48 = getelementptr i32, ptr @__cpu_online_mask, i32 %47
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %46, 31
  %51 = shl nuw i32 1, %50
  %52 = and i32 %51, %49
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %43
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !54
  %55 = tail call i32 @__traceiter_usb_gadget_activate(ptr noundef null, ptr noundef %0, i32 noundef %40) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !55
  br label %56

56:                                               ; preds = %54, %43, %39
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_gadget_map_request_by_dev(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %70, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq i32 %2, 0
  %15 = select i1 %14, i32 2, i32 1
  %16 = tail call i32 @dma_map_sg_attrs(ptr noundef %0, ptr noundef %13, i32 noundef %9, i32 noundef %15, i32 noundef 0) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 5
  store i32 %16, ptr %19, align 4
  br label %70

20:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1) #13
  br label %70

21:                                               ; preds = %7
  %22 = load ptr, ptr %1, align 4
  %23 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %22) #12
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2) #13
  br label %70

25:                                               ; preds = %21
  %26 = load ptr, ptr %1, align 4
  %27 = tail call ptr @llvm.thread.pointer() #12
  %28 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = icmp ugt ptr %29, %26
  %31 = getelementptr i8, ptr %29, i32 8192
  %32 = icmp ule ptr %31, %26
  %33 = or i1 %30, %32
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3) #13
  br label %70

35:                                               ; preds = %25
  %36 = load i32, ptr %4, align 4
  %37 = icmp eq i32 %2, 0
  %38 = select i1 %37, i32 2, i32 1
  %39 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %26) #12
  %40 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %41 = xor i1 %40, true
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %52, !prof !19

43:                                               ; preds = %35
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %44 = tail call ptr @dev_driver_string(ptr noundef %0) #12
  %45 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load ptr, ptr %0, align 4
  br label %50

50:                                               ; preds = %48, %43
  %51 = phi ptr [ %49, %48 ], [ %46, %43 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %44, ptr noundef %51) #12
  br label %52

52:                                               ; preds = %50, %35
  br i1 %39, label %53, label %55

53:                                               ; preds = %52
  %54 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 2
  store i32 -1, ptr %54, align 4
  br label %65

55:                                               ; preds = %52
  %56 = load ptr, ptr @mem_map, align 4
  %57 = ptrtoint ptr %26 to i32
  %58 = add i32 %57, 1073741824
  %59 = lshr i32 %58, 12
  %60 = getelementptr %struct.page, ptr %56, i32 %59
  %61 = and i32 %57, 4095
  %62 = tail call i32 @dma_map_page_attrs(ptr noundef %0, ptr noundef %60, i32 noundef %61, i32 noundef %36, i32 noundef %38, i32 noundef 0) #12
  %63 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 2
  store i32 %62, ptr %63, align 4
  %64 = icmp eq i32 %62, -1
  br i1 %64, label %65, label %66

65:                                               ; preds = %55, %53
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4) #13
  br label %70

66:                                               ; preds = %55
  %67 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 6
  %68 = load i32, ptr %67, align 4
  %69 = or i32 %68, 1048576
  store i32 %69, ptr %67, align 4
  br label %70

70:                                               ; preds = %66, %65, %34, %24, %20, %18, %3
  %71 = phi i32 [ -14, %20 ], [ -14, %24 ], [ -14, %34 ], [ -14, %65 ], [ 0, %3 ], [ 0, %18 ], [ 0, %66 ]
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_gadget_map_request(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @usb_gadget_map_request_by_dev(ptr noundef %5, ptr noundef %1, i32 noundef %2)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_gadget_unmap_request_by_dev(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %30, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %2, 0
  %17 = select i1 %16, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %0, ptr noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef 0) #12
  store i32 0, ptr %8, align 4
  br label %30

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 1048576
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %2, 0
  %27 = select i1 %26, i32 2, i32 1
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %25, i32 noundef %5, i32 noundef %27, i32 noundef 0) #12
  %28 = load i32, ptr %19, align 4
  %29 = and i32 %28, -1048577
  store i32 %29, ptr %19, align 4
  br label %30

30:                                               ; preds = %23, %18, %11, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_gadget_unmap_request(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %32, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %2, 0
  %19 = select i1 %18, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %5, ptr noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef 0) #12
  store i32 0, ptr %10, align 4
  br label %32

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 1048576
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %2, 0
  %29 = select i1 %28, i32 2, i32 1
  tail call void @dma_unmap_page_attrs(ptr noundef %5, i32 noundef %27, i32 noundef %7, i32 noundef %29, i32 noundef 0) #12
  %30 = load i32, ptr %21, align 4
  %31 = and i32 %30, -1048577
  store i32 %31, ptr %21, align 4
  br label %32

32:                                               ; preds = %25, %20, %13, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_gadget_giveback_request(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_gadget_giveback_request, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = tail call ptr @llvm.thread.pointer() #12
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 5
  %10 = getelementptr i32, ptr @__cpu_online_mask, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %8, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !56
  %17 = tail call i32 @__traceiter_usb_gadget_giveback_request(ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef 0) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !57
  br label %18

18:                                               ; preds = %16, %5, %2
  %19 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  tail call void %20(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @gadget_find_ep_by_name(ptr noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 4
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %6, i32 -8
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @strcmp(ptr noundef %10, ptr noundef %1)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %4

13:                                               ; preds = %8
  %14 = getelementptr i8, ptr %6, i32 -12
  br label %15

15:                                               ; preds = %13, %4
  %16 = phi ptr [ %14, %13 ], [ null, %4 ]
  ret ptr %16
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @usb_gadget_ep_match_desc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3) #5 {
  %5 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 5
  %6 = load i8, ptr %5, align 4, !range !10
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %78

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %2, i32 0, i32 3
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %2, i32 0, i32 4
  %12 = load i16, ptr %11, align 1
  %13 = and i16 %12, 2047
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %2, i32 0, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = icmp sgt i8 %16, -1
  %18 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 4
  %19 = load i8, ptr %18, align 4
  br i1 %17, label %23, label %20

20:                                               ; preds = %8
  %21 = and i8 %19, 16
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %78, label %26

23:                                               ; preds = %8
  %24 = and i8 %19, 32
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %78, label %26

26:                                               ; preds = %23, %20
  %27 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 7
  %28 = load i56, ptr %27, align 2
  %29 = trunc i56 %28 to i32
  %30 = lshr i32 %29, 16
  %31 = icmp ult i32 %30, %14
  br i1 %31, label %78, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 6
  %34 = load i32, ptr %33, align 8
  %35 = icmp ult i32 %34, 3
  %36 = xor i1 %35, true
  %37 = and i16 %12, 6144
  %38 = icmp eq i16 %37, 0
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %40, label %78

40:                                               ; preds = %32
  %41 = trunc i8 %10 to i2
  switch i2 %41, label %76 [
    i2 0, label %78
    i2 1, label %42
    i2 -2, label %50
    i2 -1, label %68
  ]

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 4
  %44 = load i8, ptr %43, align 4
  %45 = and i8 %44, 2
  %46 = icmp eq i8 %45, 0
  %47 = icmp ugt i16 %13, 1023
  %48 = select i1 %35, i1 %47, i1 false
  %49 = select i1 %46, i1 true, i1 %48
  br i1 %49, label %78, label %77

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 4
  %52 = load i8, ptr %51, align 4
  %53 = and i8 %52, 4
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %78, label %55

55:                                               ; preds = %50
  %56 = icmp eq ptr %3, null
  %57 = icmp ult i32 %34, 5
  %58 = select i1 %56, i1 true, i1 %57
  br i1 %58, label %77, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %3, i32 0, i32 3
  %61 = load i8, ptr %60, align 1
  %62 = and i8 %61, 31
  %63 = zext i8 %62 to i32
  %64 = lshr i56 %28, 32
  %65 = trunc i56 %64 to i32
  %66 = and i32 %65, 65535
  %67 = icmp ult i32 %66, %63
  br i1 %67, label %78, label %77

68:                                               ; preds = %40
  %69 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 4
  %70 = load i8, ptr %69, align 4
  %71 = and i8 %70, 12
  %72 = icmp eq i8 %71, 0
  %73 = icmp ugt i16 %13, 64
  %74 = select i1 %35, i1 %73, i1 false
  %75 = select i1 %72, i1 true, i1 %74
  br i1 %75, label %78, label %77

76:                                               ; preds = %40
  unreachable

77:                                               ; preds = %68, %59, %55, %42
  br label %78

78:                                               ; preds = %77, %68, %59, %50, %42, %40, %32, %26, %23, %20, %4
  %79 = phi i32 [ 1, %77 ], [ 0, %4 ], [ 0, %20 ], [ 0, %23 ], [ 0, %26 ], [ 0, %40 ], [ 0, %42 ], [ 0, %50 ], [ 0, %59 ], [ 0, %68 ], [ 0, %32 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_gadget_check_config(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_gadget_ops, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 %5(ptr noundef %0) #12
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_gadget_set_state(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 9
  store i32 %1, ptr %3, align 4
  %4 = load ptr, ptr @system_wq, align 4
  %5 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %4, ptr noundef %0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_udc_vbus_handler(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = zext i1 %1 to i8
  %8 = getelementptr inbounds %struct.usb_udc, ptr %4, i32 0, i32 4
  store i8 %7, ptr %8, align 8
  tail call fastcc void @usb_udc_connect_control(ptr noundef nonnull %4)
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @usb_udc_connect_control(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_udc, ptr %0, i32 0, i32 4
  %3 = load i8, ptr %2, align 8, !range !10
  %4 = icmp eq i8 %3, 0
  %5 = getelementptr inbounds %struct.usb_udc, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_gadget, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_gadget_ops, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %4, label %43, label %12

12:                                               ; preds = %1
  br i1 %11, label %26, label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.usb_gadget, ptr %6, i32 0, i32 17
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 16384
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = tail call i32 %10(ptr noundef %6, i32 noundef 1) #12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, ptr %14, align 4
  br label %23

23:                                               ; preds = %21, %13
  %24 = phi i32 [ %22, %21 ], [ %15, %13 ]
  %25 = or i32 %24, 32768
  store i32 %25, ptr %14, align 4
  br label %26

26:                                               ; preds = %23, %18, %12
  %27 = phi i32 [ %19, %18 ], [ -95, %12 ], [ 0, %23 ]
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_gadget_connect, i32 0, i32 1), align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %82

30:                                               ; preds = %26
  %31 = tail call ptr @llvm.thread.pointer() #12
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = lshr i32 %33, 5
  %35 = getelementptr i32, ptr @__cpu_online_mask, i32 %34
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %33, 31
  %38 = shl nuw i32 1, %37
  %39 = and i32 %38, %36
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %82, label %41

41:                                               ; preds = %30
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !48
  %42 = tail call i32 @__traceiter_usb_gadget_connect(ptr noundef null, ptr noundef %6, i32 noundef %27) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !49
  br label %82

43:                                               ; preds = %1
  br i1 %11, label %65, label %44

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.usb_gadget, ptr %6, i32 0, i32 17
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 32768
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %65, label %49

49:                                               ; preds = %44
  %50 = and i32 %46, 16384
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = and i32 %46, -32769
  store i32 %53, ptr %45, align 4
  br label %65

54:                                               ; preds = %49
  %55 = tail call i32 %10(ptr noundef %6, i32 noundef 0) #12
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load i32, ptr %45, align 4
  %59 = and i32 %58, -32769
  store i32 %59, ptr %45, align 4
  %60 = getelementptr inbounds %struct.usb_gadget, ptr %6, i32 0, i32 1
  %61 = load ptr, ptr %60, align 8
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.usb_gadget_driver, ptr %62, i32 0, i32 5
  %64 = load ptr, ptr %63, align 4
  tail call void %64(ptr noundef %6) #12
  br label %65

65:                                               ; preds = %57, %54, %52, %44, %43
  %66 = phi i32 [ 0, %52 ], [ %55, %54 ], [ 0, %57 ], [ 0, %44 ], [ -95, %43 ]
  %67 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_gadget_disconnect, i32 0, i32 1), align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %65
  %70 = tail call ptr @llvm.thread.pointer() #12
  %71 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 2
  %72 = load i32, ptr %71, align 8
  %73 = lshr i32 %72, 5
  %74 = getelementptr i32, ptr @__cpu_online_mask, i32 %73
  %75 = load volatile i32, ptr %74, align 4
  %76 = and i32 %72, 31
  %77 = shl nuw i32 1, %76
  %78 = and i32 %77, %75
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %69
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !50
  %81 = tail call i32 @__traceiter_usb_gadget_disconnect(ptr noundef null, ptr noundef %6, i32 noundef %66) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !51
  br label %82

82:                                               ; preds = %80, %69, %65, %41, %30, %26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_gadget_udc_reset(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.usb_gadget_driver, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  tail call void %4(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 9
  store i32 5, ptr %5, align 4
  %6 = load ptr, ptr @system_wq, align 4
  %7 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %6, ptr noundef %0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_initialize_gadget(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 11
  %5 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %4, ptr noundef nonnull @.str.5) #12
  store i32 -32, ptr %1, align 8
  %6 = getelementptr inbounds %struct.work_struct, ptr %1, i32 0, i32 1
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.work_struct, ptr %1, i32 0, i32 1, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.work_struct, ptr %1, i32 0, i32 2
  store ptr @usb_gadget_state_work, ptr %8, align 4
  %9 = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 11, i32 1
  store ptr %0, ptr %9, align 4
  %10 = icmp eq ptr %2, null
  %11 = select i1 %10, ptr @usb_udc_nop_release, ptr %2
  %12 = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 11, i32 33
  store ptr %11, ptr %12, align 4
  tail call void @device_initialize(ptr noundef %4) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usb_gadget_state_work(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_udc, ptr %3, i32 0, i32 2
  tail call void @sysfs_notify(ptr noundef %6, ptr noundef null, ptr noundef nonnull @.str.12) #12
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @usb_udc_nop_release(ptr nocapture noundef %0) #6 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_add_gadget(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 496) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %73, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_udc, ptr %3, i32 0, i32 2
  tail call void @device_initialize(ptr noundef %6) #12
  %7 = getelementptr inbounds %struct.usb_udc, ptr %3, i32 0, i32 2, i32 33
  store ptr @usb_udc_release, ptr %7, align 4
  %8 = load ptr, ptr @udc_class, align 4
  %9 = getelementptr inbounds %struct.usb_udc, ptr %3, i32 0, i32 2, i32 31
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.usb_udc, ptr %3, i32 0, i32 2, i32 32
  store ptr @usb_udc_attr_groups, ptr %10, align 8
  %11 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11
  %12 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.usb_udc, ptr %3, i32 0, i32 2, i32 1
  store ptr %13, ptr %14, align 4
  %15 = load ptr, ptr %13, align 4
  %16 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %6, ptr noundef nonnull @.str.6, ptr noundef %15) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %71

18:                                               ; preds = %5
  %19 = tail call i32 @device_add(ptr noundef %11) #12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %71

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.usb_udc, ptr %3, i32 0, i32 1
  store ptr %0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 1
  store ptr %3, ptr %23, align 8
  %24 = getelementptr inbounds %struct.usb_udc, ptr %3, i32 0, i32 5
  store i8 0, ptr %24, align 1
  tail call void @mutex_lock(ptr noundef nonnull @udc_lock) #12
  %25 = getelementptr inbounds %struct.usb_udc, ptr %3, i32 0, i32 3
  %26 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @udc_list, i32 0, i32 1), align 4
  store ptr %25, ptr getelementptr inbounds (%struct.list_head, ptr @udc_list, i32 0, i32 1), align 4
  store ptr @udc_list, ptr %25, align 8
  %27 = getelementptr inbounds %struct.usb_udc, ptr %3, i32 0, i32 3, i32 1
  store ptr %26, ptr %27, align 4
  store volatile ptr %25, ptr %26, align 4
  %28 = tail call i32 @device_add(ptr noundef %6) #12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %66

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 9
  store i32 0, ptr %31, align 4
  %32 = load ptr, ptr @system_wq, align 4
  %33 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %32, ptr noundef %0) #12
  %34 = getelementptr inbounds %struct.usb_udc, ptr %3, i32 0, i32 4
  store i8 1, ptr %34, align 8
  %35 = getelementptr inbounds %struct.usb_udc, ptr %3, i32 0, i32 2, i32 3
  br label %36

36:                                               ; preds = %49, %30
  %37 = phi ptr [ @gadget_driver_pending_list, %30 ], [ %38, %49 ]
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, @gadget_driver_pending_list
  br i1 %39, label %63, label %40

40:                                               ; preds = %36
  %41 = getelementptr i8, ptr %38, i32 -4
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %35, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load ptr, ptr %6, align 8
  br label %49

49:                                               ; preds = %47, %44
  %50 = phi ptr [ %48, %47 ], [ %45, %44 ]
  %51 = tail call i32 @strcmp(ptr noundef nonnull %42, ptr noundef %50) #12
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %36

53:                                               ; preds = %49, %40
  %54 = getelementptr i8, ptr %38, i32 -116
  %55 = tail call fastcc i32 @udc_bind_to_driver(ptr noundef nonnull %3, ptr noundef %54) #12
  %56 = icmp eq i32 %55, -517
  br i1 %56, label %64, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = load ptr, ptr %38, align 4
  %61 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  store ptr %59, ptr %61, align 4
  store volatile ptr %60, ptr %59, align 4
  store volatile ptr %38, ptr %38, align 4
  store ptr %38, ptr %58, align 4
  %62 = icmp eq i32 %55, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57, %36
  tail call void @mutex_unlock(ptr noundef nonnull @udc_lock) #12
  br label %73

64:                                               ; preds = %57, %53
  %65 = tail call zeroext i1 @flush_work(ptr noundef %0) #12
  tail call void @device_del(ptr noundef %6) #12
  br label %66

66:                                               ; preds = %64, %21
  %67 = phi i32 [ %28, %21 ], [ %55, %64 ]
  %68 = load ptr, ptr %27, align 4
  %69 = load ptr, ptr %25, align 8
  %70 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  store ptr %68, ptr %70, align 4
  store volatile ptr %69, ptr %68, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %25, align 8
  store ptr inttoptr (i32 290 to ptr), ptr %27, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @udc_lock) #12
  tail call void @device_del(ptr noundef %11) #12
  br label %71

71:                                               ; preds = %66, %18, %5
  %72 = phi i32 [ %16, %5 ], [ %19, %18 ], [ %67, %66 ]
  tail call void @put_device(ptr noundef %6) #12
  br label %73

73:                                               ; preds = %71, %63, %1
  %74 = phi i32 [ 0, %63 ], [ %72, %71 ], [ -12, %1 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usb_udc_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  tail call void @kfree(ptr noundef %2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_add_gadget_udc_release(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 11
  %5 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %4, ptr noundef nonnull @.str.5) #12
  store i32 -32, ptr %1, align 8
  %6 = getelementptr inbounds %struct.work_struct, ptr %1, i32 0, i32 1
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.work_struct, ptr %1, i32 0, i32 1, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.work_struct, ptr %1, i32 0, i32 2
  store ptr @usb_gadget_state_work, ptr %8, align 4
  %9 = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 11, i32 1
  store ptr %0, ptr %9, align 4
  %10 = icmp eq ptr %2, null
  %11 = select i1 %10, ptr @usb_udc_nop_release, ptr %2
  %12 = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 11, i32 33
  store ptr %11, ptr %12, align 4
  tail call void @device_initialize(ptr noundef %4) #12
  %13 = tail call i32 @usb_add_gadget(ptr noundef %1)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  tail call void @put_device(ptr noundef %4) #12
  br label %16

16:                                               ; preds = %15, %3
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @usb_get_gadget_udc_name() #0 {
  tail call void @mutex_lock(ptr noundef nonnull @udc_lock) #12
  br label %1

1:                                                ; preds = %5, %0
  %2 = phi ptr [ @udc_list, %0 ], [ %3, %5 ]
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, @udc_list
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %3, i32 -480
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %1

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %3, i32 -476
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.usb_gadget, ptr %11, i32 0, i32 10
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noalias ptr @kstrdup(ptr noundef %13, i32 noundef 3264) #12
  br label %15

15:                                               ; preds = %9, %1
  %16 = phi ptr [ %14, %9 ], [ null, %1 ]
  tail call void @mutex_unlock(ptr noundef nonnull @udc_lock) #12
  ret ptr %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_add_gadget_udc(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 11
  %4 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %3, ptr noundef nonnull @.str.5) #12
  store i32 -32, ptr %1, align 8
  %5 = getelementptr inbounds %struct.work_struct, ptr %1, i32 0, i32 1
  store volatile ptr %5, ptr %5, align 4
  %6 = getelementptr inbounds %struct.work_struct, ptr %1, i32 0, i32 1, i32 1
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.work_struct, ptr %1, i32 0, i32 2
  store ptr @usb_gadget_state_work, ptr %7, align 4
  %8 = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 11, i32 1
  store ptr %0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 11, i32 33
  store ptr @usb_udc_nop_release, ptr %9, align 4
  tail call void @device_initialize(ptr noundef %3) #12
  %10 = tail call i32 @usb_add_gadget(ptr noundef %1) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  tail call void @put_device(ptr noundef %3) #12
  br label %13

13:                                               ; preds = %12, %2
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_del_gadget(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @udc_lock) #12
  %6 = getelementptr inbounds %struct.usb_udc, ptr %3, i32 0, i32 3
  %7 = getelementptr inbounds %struct.usb_udc, ptr %3, i32 0, i32 3, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  %11 = load ptr, ptr %3, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %5
  tail call fastcc void @usb_gadget_remove_driver(ptr noundef nonnull %3)
  %14 = getelementptr inbounds %struct.usb_gadget_driver, ptr %11, i32 0, i32 11
  %15 = load ptr, ptr @gadget_driver_pending_list, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  store ptr %15, ptr %14, align 4
  %17 = getelementptr inbounds %struct.usb_gadget_driver, ptr %11, i32 0, i32 11, i32 1
  store ptr @gadget_driver_pending_list, ptr %17, align 4
  store volatile ptr %14, ptr @gadget_driver_pending_list, align 4
  br label %18

18:                                               ; preds = %13, %5
  tail call void @mutex_unlock(ptr noundef nonnull @udc_lock) #12
  %19 = getelementptr inbounds %struct.usb_udc, ptr %3, i32 0, i32 2
  %20 = tail call i32 @kobject_uevent(ptr noundef %19, i32 noundef 1) #12
  %21 = tail call zeroext i1 @flush_work(ptr noundef %0) #12
  tail call void @device_unregister(ptr noundef %19) #12
  %22 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11
  tail call void @device_del(ptr noundef %22) #12
  br label %23

23:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @usb_gadget_remove_driver(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_udc, ptr %0, i32 0, i32 2
  %3 = tail call i32 @kobject_uevent(ptr noundef %2, i32 noundef 2) #12
  %4 = getelementptr inbounds %struct.usb_udc, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_gadget_ops, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 17
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 32768
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %11
  %17 = and i32 %13, 16384
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = and i32 %13, -32769
  store i32 %20, ptr %12, align 4
  br label %32

21:                                               ; preds = %16
  %22 = tail call i32 %9(ptr noundef %5, i32 noundef 0) #12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i32, ptr %12, align 4
  %26 = and i32 %25, -32769
  store i32 %26, ptr %12, align 4
  %27 = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.usb_gadget_driver, ptr %29, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  tail call void %31(ptr noundef %5) #12
  br label %32

32:                                               ; preds = %24, %21, %19, %11, %1
  %33 = phi i32 [ 0, %19 ], [ %22, %21 ], [ 0, %24 ], [ 0, %11 ], [ -95, %1 ]
  %34 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_gadget_disconnect, i32 0, i32 1), align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = tail call ptr @llvm.thread.pointer() #12
  %38 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %39 = load i32, ptr %38, align 8
  %40 = lshr i32 %39, 5
  %41 = getelementptr i32, ptr @__cpu_online_mask, i32 %40
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %39, 31
  %44 = shl nuw i32 1, %43
  %45 = and i32 %44, %42
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %36
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !50
  %48 = tail call i32 @__traceiter_usb_gadget_disconnect(ptr noundef null, ptr noundef %5, i32 noundef %33) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !51
  br label %49

49:                                               ; preds = %47, %36, %32
  %50 = load ptr, ptr %4, align 4
  %51 = getelementptr inbounds %struct.usb_gadget, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.usb_gadget_ops, ptr %52, i32 0, i32 12
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %49
  tail call void %54(ptr noundef %50, i1 noundef zeroext false) #12
  %57 = load ptr, ptr %4, align 4
  br label %58

58:                                               ; preds = %56, %49
  %59 = phi ptr [ %50, %49 ], [ %57, %56 ]
  %60 = getelementptr inbounds %struct.usb_gadget, ptr %59, i32 0, i32 18
  %61 = load i32, ptr %60, align 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %58
  tail call void @synchronize_irq(i32 noundef %61) #12
  %64 = load ptr, ptr %4, align 4
  br label %65

65:                                               ; preds = %63, %58
  %66 = phi ptr [ %64, %63 ], [ %59, %58 ]
  %67 = load ptr, ptr %0, align 8
  %68 = getelementptr inbounds %struct.usb_gadget_driver, ptr %67, i32 0, i32 3
  %69 = load ptr, ptr %68, align 4
  tail call void %69(ptr noundef %66) #12
  %70 = getelementptr inbounds %struct.usb_udc, ptr %0, i32 0, i32 5
  %71 = load i8, ptr %70, align 1, !range !10
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.13) #13
  br label %81

74:                                               ; preds = %65
  %75 = load ptr, ptr %4, align 4
  %76 = getelementptr inbounds %struct.usb_gadget, ptr %75, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.usb_gadget_ops, ptr %77, i32 0, i32 9
  %79 = load ptr, ptr %78, align 4
  %80 = tail call i32 %79(ptr noundef %75) #12
  store i8 0, ptr %70, align 1
  br label %81

81:                                               ; preds = %74, %73
  store ptr null, ptr %0, align 8
  %82 = load ptr, ptr %4, align 4
  %83 = getelementptr inbounds %struct.usb_gadget, ptr %82, i32 0, i32 11, i32 6
  store ptr null, ptr %83, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_del_gadget_udc(ptr noundef %0) #0 {
  tail call void @usb_del_gadget(ptr noundef %0)
  %2 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11
  tail call void @put_device(ptr noundef %2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_gadget_probe_driver(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %61, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.usb_gadget_driver, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %61, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.usb_gadget_driver, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %61, label %11

11:                                               ; preds = %7
  tail call void @mutex_lock(ptr noundef nonnull @udc_lock) #12
  %12 = getelementptr inbounds %struct.usb_gadget_driver, ptr %0, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %34, label %15

15:                                               ; preds = %26, %11
  %16 = phi ptr [ %17, %26 ], [ @udc_list, %11 ]
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, @udc_list
  br i1 %18, label %42, label %19

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %17, i32 -428
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %17, i32 -472
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi ptr [ %25, %23 ], [ %21, %19 ]
  %28 = tail call i32 @strcmp(ptr noundef nonnull %13, ptr noundef %27)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %15

30:                                               ; preds = %26
  %31 = getelementptr i8, ptr %17, i32 -480
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %58, label %42

34:                                               ; preds = %38, %11
  %35 = phi ptr [ %36, %38 ], [ @udc_list, %11 ]
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, @udc_list
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %36, i32 -480
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %56, label %34

42:                                               ; preds = %34, %30, %15
  %43 = phi i32 [ -16, %30 ], [ -19, %34 ], [ -19, %15 ]
  %44 = getelementptr inbounds %struct.usb_gadget_driver, ptr %0, i32 0, i32 12
  %45 = load i8, ptr %44, align 4
  %46 = and i8 %45, 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.usb_gadget_driver, ptr %0, i32 0, i32 11
  %50 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @gadget_driver_pending_list, i32 0, i32 1), align 4
  store ptr %49, ptr getelementptr inbounds (%struct.list_head, ptr @gadget_driver_pending_list, i32 0, i32 1), align 4
  store ptr @gadget_driver_pending_list, ptr %49, align 4
  %51 = getelementptr inbounds %struct.usb_gadget_driver, ptr %0, i32 0, i32 11, i32 1
  store ptr %50, ptr %51, align 4
  store volatile ptr %49, ptr %50, align 4
  %52 = load ptr, ptr %0, align 4
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %52) #13
  tail call void @mutex_unlock(ptr noundef nonnull @udc_lock) #12
  br label %61

54:                                               ; preds = %42
  tail call void @mutex_unlock(ptr noundef nonnull @udc_lock) #12
  %55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %43) #13
  br label %61

56:                                               ; preds = %38
  %57 = getelementptr i8, ptr %36, i32 -480
  br label %58

58:                                               ; preds = %56, %30
  %59 = phi ptr [ %31, %30 ], [ %57, %56 ]
  %60 = tail call fastcc i32 @udc_bind_to_driver(ptr noundef %59, ptr noundef nonnull %0)
  tail call void @mutex_unlock(ptr noundef nonnull @udc_lock) #12
  br label %61

61:                                               ; preds = %58, %54, %48, %7, %3, %1
  %62 = phi i32 [ %60, %58 ], [ -22, %7 ], [ -22, %3 ], [ -22, %1 ], [ %43, %54 ], [ 0, %48 ]
  ret i32 %62
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @udc_bind_to_driver(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  store ptr %1, ptr %0, align 8
  %3 = getelementptr inbounds %struct.usb_gadget_driver, ptr %1, i32 0, i32 9
  %4 = getelementptr inbounds %struct.usb_udc, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 11, i32 6
  store ptr %3, ptr %6, align 8
  %7 = getelementptr inbounds %struct.usb_gadget_driver, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr %4, align 4
  %10 = icmp eq i32 %8, 0
  %11 = getelementptr inbounds %struct.usb_gadget, ptr %9, i32 0, i32 6
  %12 = load i32, ptr %11, align 8
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 %8) #12
  %14 = select i1 %10, i32 %12, i32 %13
  %15 = icmp eq i32 %14, 6
  %16 = getelementptr inbounds %struct.usb_gadget, ptr %9, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  br i1 %15, label %18, label %25

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.usb_gadget_ops, ptr %17, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.usb_gadget, ptr %9, i32 0, i32 8
  %24 = load i32, ptr %23, align 8
  tail call void %20(ptr noundef %9, i32 noundef %24) #12
  br label %30

25:                                               ; preds = %18, %2
  %26 = getelementptr inbounds %struct.usb_gadget_ops, ptr %17, i32 0, i32 10
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void %27(ptr noundef %9, i32 noundef %14) #12
  br label %30

30:                                               ; preds = %29, %25, %22
  %31 = getelementptr inbounds %struct.usb_gadget_driver, ptr %1, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %4, align 4
  %34 = tail call i32 %32(ptr noundef %33, ptr noundef %1) #12
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %67

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.usb_udc, ptr %0, i32 0, i32 5
  %38 = load i8, ptr %37, align 1, !range !10
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.usb_udc, ptr %0, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.15) #13
  br label %51

42:                                               ; preds = %36
  %43 = load ptr, ptr %4, align 4
  %44 = getelementptr inbounds %struct.usb_gadget, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.usb_gadget_ops, ptr %45, i32 0, i32 8
  %47 = load ptr, ptr %46, align 4
  %48 = load ptr, ptr %0, align 8
  %49 = tail call i32 %47(ptr noundef %43, ptr noundef %48) #12
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %42, %40
  %52 = phi i32 [ %49, %42 ], [ -16, %40 ]
  %53 = getelementptr inbounds %struct.usb_gadget_driver, ptr %1, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = load ptr, ptr %4, align 4
  tail call void %54(ptr noundef %55) #12
  br label %67

56:                                               ; preds = %42
  store i8 1, ptr %37, align 1
  %57 = load ptr, ptr %4, align 4
  %58 = getelementptr inbounds %struct.usb_gadget, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.usb_gadget_ops, ptr %59, i32 0, i32 12
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  tail call void %61(ptr noundef %57, i1 noundef zeroext true) #12
  br label %64

64:                                               ; preds = %63, %56
  tail call fastcc void @usb_udc_connect_control(ptr noundef %0)
  %65 = getelementptr inbounds %struct.usb_udc, ptr %0, i32 0, i32 2
  %66 = tail call i32 @kobject_uevent(ptr noundef %65, i32 noundef 2) #12
  br label %77

67:                                               ; preds = %51, %30
  %68 = phi i32 [ %34, %30 ], [ %52, %51 ]
  %69 = icmp eq i32 %68, -120
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.usb_udc, ptr %0, i32 0, i32 2
  %72 = load ptr, ptr %0, align 8
  %73 = load ptr, ptr %72, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.14, ptr noundef %73, i32 noundef %68) #13
  br label %74

74:                                               ; preds = %70, %67
  store ptr null, ptr %0, align 8
  %75 = load ptr, ptr %4, align 4
  %76 = getelementptr inbounds %struct.usb_gadget, ptr %75, i32 0, i32 11, i32 6
  store ptr null, ptr %76, align 8
  br label %77

77:                                               ; preds = %74, %64
  %78 = phi i32 [ %68, %74 ], [ 0, %64 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_gadget_unregister_driver(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %58, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.usb_gadget_driver, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %58, label %7

7:                                                ; preds = %3
  tail call void @mutex_lock(ptr noundef nonnull @udc_lock) #12
  br label %8

8:                                                ; preds = %12, %7
  %9 = phi ptr [ @udc_list, %7 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, @udc_list
  br i1 %11, label %51, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %10, i32 -480
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %8

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %10, i32 -480
  tail call fastcc void @usb_gadget_remove_driver(ptr noundef %17)
  %18 = getelementptr i8, ptr %10, i32 -476
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.usb_gadget, ptr %19, i32 0, i32 9
  store i32 0, ptr %20, align 4
  %21 = load ptr, ptr @system_wq, align 4
  %22 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %21, ptr noundef %19) #12
  %23 = getelementptr i8, ptr %10, i32 -428
  %24 = getelementptr i8, ptr %10, i32 -472
  br label %25

25:                                               ; preds = %38, %16
  %26 = phi ptr [ @gadget_driver_pending_list, %16 ], [ %27, %38 ]
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, @gadget_driver_pending_list
  br i1 %28, label %57, label %29

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %27, i32 -4
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %23, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load ptr, ptr %24, align 4
  br label %38

38:                                               ; preds = %36, %33
  %39 = phi ptr [ %37, %36 ], [ %34, %33 ]
  %40 = tail call i32 @strcmp(ptr noundef nonnull %31, ptr noundef %39) #12
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %25

42:                                               ; preds = %38, %29
  %43 = getelementptr i8, ptr %27, i32 -116
  %44 = tail call fastcc i32 @udc_bind_to_driver(ptr noundef %17, ptr noundef %43) #12
  %45 = icmp eq i32 %44, -517
  br i1 %45, label %57, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %27, align 4
  %50 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  store ptr %48, ptr %50, align 4
  store volatile ptr %49, ptr %48, align 4
  store volatile ptr %27, ptr %27, align 4
  store ptr %27, ptr %47, align 4
  br label %57

51:                                               ; preds = %8
  %52 = getelementptr inbounds %struct.usb_gadget_driver, ptr %0, i32 0, i32 11
  %53 = getelementptr inbounds %struct.usb_gadget_driver, ptr %0, i32 0, i32 11, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = load ptr, ptr %52, align 4
  %56 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  store ptr %54, ptr %56, align 4
  store volatile ptr %55, ptr %54, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %52, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %53, align 4
  br label %57

57:                                               ; preds = %51, %46, %42, %25
  tail call void @mutex_unlock(ptr noundef nonnull @udc_lock) #12
  br label %58

58:                                               ; preds = %57, %3, %1
  %59 = phi i32 [ 0, %57 ], [ -22, %3 ], [ -22, %1 ]
  ret i32 %59
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @usb_udc_init() #7 section ".init.text" {
  %1 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef nonnull @usb_udc_init.__key) #12
  store ptr %1, ptr @udc_class, align 4
  %2 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = ptrtoint ptr %1 to i32
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %4) #13
  %6 = load ptr, ptr @udc_class, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %10

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.class, ptr %1, i32 0, i32 5
  store ptr @usb_udc_uevent, ptr %9, align 4
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi i32 [ %7, %3 ], [ 0, %8 ]
  ret i32 %11
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @usb_udc_exit() #7 section ".exit.text" {
  %1 = load ptr, ptr @udc_class, align 4
  tail call void @class_destroy(ptr noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_usb_ep_set_maxpacket_limit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_usb_ep_enable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_usb_ep_disable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_usb_ep_alloc_request(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_usb_ep_free_request(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_usb_ep_queue(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_usb_ep_dequeue(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_usb_ep_set_halt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_usb_ep_clear_halt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_usb_ep_set_wedge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_usb_ep_fifo_status(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_usb_ep_fifo_flush(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_usb_gadget_frame_number(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_usb_gadget_wakeup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_usb_gadget_set_selfpowered(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_usb_gadget_clear_selfpowered(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_usb_gadget_vbus_connect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_usb_gadget_vbus_draw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_usb_gadget_vbus_disconnect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_usb_gadget_connect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_usb_gadget_disconnect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_usb_gadget_deactivate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_usb_gadget_activate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_usb_gadget_giveback_request(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @srp_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef returned %3) #0 {
  %5 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.18) #12
  br i1 %5, label %6, label %33

6:                                                ; preds = %4
  %7 = getelementptr i8, ptr %0, i32 -4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_gadget, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.usb_gadget_ops, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %6
  %15 = tail call i32 %12(ptr noundef %8) #12
  br label %16

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %15, %14 ], [ -95, %6 ]
  %18 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_gadget_wakeup, i32 0, i32 1), align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = tail call ptr @llvm.thread.pointer() #12
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = lshr i32 %23, 5
  %25 = getelementptr i32, ptr @__cpu_online_mask, i32 %24
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %23, 31
  %28 = shl nuw i32 1, %27
  %29 = and i32 %28, %26
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %20
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !36
  %32 = tail call i32 @__traceiter_usb_gadget_wakeup(ptr noundef null, ptr noundef %8, i32 noundef %17) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !37
  br label %33

33:                                               ; preds = %31, %20, %16, %4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @soft_connect_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 -8
  tail call void @mutex_lock(ptr noundef nonnull @udc_lock) #12
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.20) #13
  br label %126

9:                                                ; preds = %4
  %10 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.21) #12
  br i1 %10, label %11, label %65

11:                                               ; preds = %9
  %12 = getelementptr i8, ptr %0, i32 481
  %13 = load i8, ptr %12, align 1, !range !10
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.15) #13
  br label %27

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %0, i32 -4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.usb_gadget, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.usb_gadget_ops, ptr %20, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %5, align 8
  %24 = tail call i32 %22(ptr noundef %18, ptr noundef %23) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store i8 1, ptr %12, align 1
  br label %27

27:                                               ; preds = %26, %16, %15
  %28 = getelementptr i8, ptr %0, i32 -4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.usb_gadget, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.usb_gadget_ops, ptr %31, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.usb_gadget, ptr %29, i32 0, i32 17
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 16384
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = tail call i32 %33(ptr noundef %29, i32 noundef 1) #12
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, ptr %36, align 4
  br label %45

45:                                               ; preds = %43, %35
  %46 = phi i32 [ %44, %43 ], [ %37, %35 ]
  %47 = or i32 %46, 32768
  store i32 %47, ptr %36, align 4
  br label %48

48:                                               ; preds = %45, %40, %27
  %49 = phi i32 [ %41, %40 ], [ -95, %27 ], [ 0, %45 ]
  %50 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_gadget_connect, i32 0, i32 1), align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %126

52:                                               ; preds = %48
  %53 = tail call ptr @llvm.thread.pointer() #12
  %54 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %55 = load i32, ptr %54, align 8
  %56 = lshr i32 %55, 5
  %57 = getelementptr i32, ptr @__cpu_online_mask, i32 %56
  %58 = load volatile i32, ptr %57, align 4
  %59 = and i32 %55, 31
  %60 = shl nuw i32 1, %59
  %61 = and i32 %60, %58
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %126, label %63

63:                                               ; preds = %52
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !48
  %64 = tail call i32 @__traceiter_usb_gadget_connect(ptr noundef null, ptr noundef %29, i32 noundef %49) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !49
  br label %126

65:                                               ; preds = %9
  %66 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.22) #12
  br i1 %66, label %67, label %125

67:                                               ; preds = %65
  %68 = getelementptr i8, ptr %0, i32 -4
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.usb_gadget, ptr %69, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.usb_gadget_ops, ptr %71, i32 0, i32 5
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %96, label %75

75:                                               ; preds = %67
  %76 = getelementptr inbounds %struct.usb_gadget, ptr %69, i32 0, i32 17
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %77, 32768
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %96, label %80

80:                                               ; preds = %75
  %81 = and i32 %77, 16384
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = and i32 %77, -32769
  store i32 %84, ptr %76, align 4
  br label %96

85:                                               ; preds = %80
  %86 = tail call i32 %73(ptr noundef %69, i32 noundef 0) #12
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load i32, ptr %76, align 4
  %90 = and i32 %89, -32769
  store i32 %90, ptr %76, align 4
  %91 = getelementptr inbounds %struct.usb_gadget, ptr %69, i32 0, i32 1
  %92 = load ptr, ptr %91, align 8
  %93 = load ptr, ptr %92, align 8
  %94 = getelementptr inbounds %struct.usb_gadget_driver, ptr %93, i32 0, i32 5
  %95 = load ptr, ptr %94, align 4
  tail call void %95(ptr noundef %69) #12
  br label %96

96:                                               ; preds = %88, %85, %83, %75, %67
  %97 = phi i32 [ 0, %83 ], [ %86, %85 ], [ 0, %88 ], [ 0, %75 ], [ -95, %67 ]
  %98 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_gadget_disconnect, i32 0, i32 1), align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %96
  %101 = tail call ptr @llvm.thread.pointer() #12
  %102 = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 2
  %103 = load i32, ptr %102, align 8
  %104 = lshr i32 %103, 5
  %105 = getelementptr i32, ptr @__cpu_online_mask, i32 %104
  %106 = load volatile i32, ptr %105, align 4
  %107 = and i32 %103, 31
  %108 = shl nuw i32 1, %107
  %109 = and i32 %108, %106
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %100
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !50
  %112 = tail call i32 @__traceiter_usb_gadget_disconnect(ptr noundef null, ptr noundef %69, i32 noundef %97) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !51
  br label %113

113:                                              ; preds = %111, %100, %96
  %114 = getelementptr i8, ptr %0, i32 481
  %115 = load i8, ptr %114, align 1, !range !10
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.13) #13
  br label %126

118:                                              ; preds = %113
  %119 = load ptr, ptr %68, align 4
  %120 = getelementptr inbounds %struct.usb_gadget, ptr %119, i32 0, i32 2
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.usb_gadget_ops, ptr %121, i32 0, i32 9
  %123 = load ptr, ptr %122, align 4
  %124 = tail call i32 %123(ptr noundef %119) #12
  store i8 0, ptr %114, align 1
  br label %126

125:                                              ; preds = %65
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef %2) #13
  br label %126

126:                                              ; preds = %125, %118, %117, %63, %52, %48, %8
  %127 = phi i32 [ -22, %125 ], [ -95, %8 ], [ %3, %48 ], [ %3, %52 ], [ %3, %63 ], [ %3, %117 ], [ %3, %118 ]
  tail call void @mutex_unlock(ptr noundef nonnull @udc_lock) #12
  ret i32 %127
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @state_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = tail call ptr @usb_state_string(i32 noundef %7) #12
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.24, ptr noundef %8)
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_state_string(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @function_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.24, ptr noundef nonnull %8) #12
  br label %12

12:                                               ; preds = %10, %7, %3
  %13 = phi i32 [ %11, %10 ], [ 0, %7 ], [ 0, %3 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @current_speed_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = tail call ptr @usb_speed_string(i32 noundef %7) #12
  %9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.24, ptr noundef %8) #12
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_speed_string(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @maximum_speed_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = tail call ptr @usb_speed_string(i32 noundef %7) #12
  %9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.24, ptr noundef %8) #12
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @is_otg_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 17
  %7 = load i32, ptr %6, align 4
  %8 = lshr i32 %7, 1
  %9 = and i32 %8, 1
  %10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.29, i32 noundef %9) #12
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @is_a_peripheral_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 17
  %7 = load i32, ptr %6, align 4
  %8 = lshr i32 %7, 2
  %9 = and i32 %8, 1
  %10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.29, i32 noundef %9) #12
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b_hnp_enable_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 17
  %7 = load i32, ptr %6, align 4
  %8 = lshr i32 %7, 3
  %9 = and i32 %8, 1
  %10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.29, i32 noundef %9) #12
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a_hnp_support_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 17
  %7 = load i32, ptr %6, align 4
  %8 = lshr i32 %7, 4
  %9 = and i32 %8, 1
  %10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.29, i32 noundef %9) #12
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a_alt_hnp_support_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 17
  %7 = load i32, ptr %6, align 4
  %8 = lshr i32 %7, 5
  %9 = and i32 %8, 1
  %10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.29, i32 noundef %9) #12
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @is_selfpowered_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 17
  %7 = load i32, ptr %6, align 4
  %8 = lshr i32 %7, 13
  %9 = and i32 %8, 1
  %10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.29, i32 noundef %9) #12
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_udc_uevent(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_gadget, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.37, ptr noundef %6) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %0, i32 -8
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 4
  %15 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.39, ptr noundef %14) #12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13, %2
  %18 = phi ptr [ @.str.38, %2 ], [ @.str.40, %13 ]
  %19 = phi i32 [ %7, %2 ], [ %15, %13 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull %18) #13
  br label %20

20:                                               ; preds = %17, %13, %9
  %21 = phi i32 [ 0, %13 ], [ 0, %9 ], [ %19, %17 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 2153374611}
!9 = !{i64 2153374789}
!10 = !{i8 0, i8 2}
!11 = !{i64 2153395148}
!12 = !{i64 2153395300}
!13 = !{i64 2153410960}
!14 = !{i64 2153411114}
!15 = !{i64 2153512036}
!16 = !{i64 2153512212}
!17 = !{i64 2153532962}
!18 = !{i64 2153533136}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 2153549507}
!21 = !{i64 2153549667}
!22 = !{i64 2153565750}
!23 = !{i64 2153565914}
!24 = !{i64 2153426864}
!25 = !{i64 2153427020}
!26 = !{i64 2153442898}
!27 = !{i64 2153443058}
!28 = !{i64 2153463063}
!29 = !{i64 2153463221}
!30 = !{i64 2153479189}
!31 = !{i64 2153479351}
!32 = !{i64 2153495385}
!33 = !{i64 2153495545}
!34 = !{i64 2153179389}
!35 = !{i64 2153179559}
!36 = !{i64 2153195884}
!37 = !{i64 2153196042}
!38 = !{i64 2153216458}
!39 = !{i64 2153216634}
!40 = !{i64 2153233534}
!41 = !{i64 2153233714}
!42 = !{i64 2153250529}
!43 = !{i64 2153250699}
!44 = !{i64 2153271201}
!45 = !{i64 2153271365}
!46 = !{i64 2153287878}
!47 = !{i64 2153288054}
!48 = !{i64 2153304575}
!49 = !{i64 2153304735}
!50 = !{i64 2153325015}
!51 = !{i64 2153325181}
!52 = !{i64 2153341556}
!53 = !{i64 2153341722}
!54 = !{i64 2153358021}
!55 = !{i64 2153358183}
!56 = !{i64 2153586656}
!57 = !{i64 2153586846}
