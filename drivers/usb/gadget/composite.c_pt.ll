; ModuleID = '/llk/IR/drivers/usb/gadget/composite.c_pt.bc'
source_filename = "../drivers/usb/gadget/composite.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_config_ep_by_speed_and_alt:\09\09\09\09\09"
module asm "\09.asciz \09\22config_ep_by_speed_and_alt\22\09\09\09\09\09"
module asm "__kstrtabns_config_ep_by_speed_and_alt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_config_ep_by_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22config_ep_by_speed\22\09\09\09\09\09"
module asm "__kstrtabns_config_ep_by_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_add_function:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_add_function\22\09\09\09\09\09"
module asm "__kstrtabns_usb_add_function:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_remove_function:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_remove_function\22\09\09\09\09\09"
module asm "__kstrtabns_usb_remove_function:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_function_deactivate:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_function_deactivate\22\09\09\09\09\09"
module asm "__kstrtabns_usb_function_deactivate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_function_activate:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_function_activate\22\09\09\09\09\09"
module asm "__kstrtabns_usb_function_activate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_interface_id:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_interface_id\22\09\09\09\09\09"
module asm "__kstrtabns_usb_interface_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_add_config_only:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_add_config_only\22\09\09\09\09\09"
module asm "__kstrtabns_usb_add_config_only:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_add_config:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_add_config\22\09\09\09\09\09"
module asm "__kstrtabns_usb_add_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_string_id:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_string_id\22\09\09\09\09\09"
module asm "__kstrtabns_usb_string_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_string_ids_tab:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_string_ids_tab\22\09\09\09\09\09"
module asm "__kstrtabns_usb_string_ids_tab:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_gstrings_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_gstrings_attach\22\09\09\09\09\09"
module asm "__kstrtabns_usb_gstrings_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_string_ids_n:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_string_ids_n\22\09\09\09\09\09"
module asm "__kstrtabns_usb_string_ids_n:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_composite_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_composite_probe\22\09\09\09\09\09"
module asm "__kstrtabns_usb_composite_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_composite_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_composite_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_usb_composite_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_composite_setup_continue:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_composite_setup_continue\22\09\09\09\09\09"
module asm "__kstrtabns_usb_composite_setup_continue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_composite_overwrite_options:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_composite_overwrite_options\22\09\09\09\09\09"
module asm "__kstrtabns_usb_composite_overwrite_options:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.uts_namespace = type { %struct.new_utsname, ptr, ptr, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.usb_descriptor_header = type { i8, i8 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.usb_composite_dev = type <{ ptr, ptr, ptr, ptr, [14 x i8], i8, i8, ptr, i8, %struct.usb_device_descriptor, i8, %struct.list_head, %struct.list_head, ptr, i8, [3 x i8], ptr, i32, i32, %struct.spinlock, i8, [3 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_string = type { i8, ptr }
%struct.usb_gadget_string_container = type { %struct.list_head, [0 x ptr] }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.usb_qualifier_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_string_descriptor = type { i8, i8, [1 x i16] }
%struct.usb_composite_driver = type { ptr, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, %struct.usb_gadget_driver }
%struct.usb_os_string = type { i8, i8, [14 x i8], i8, i8 }
%struct.usb_dcd_config_params = type { i8, i16, i8, i8 }
%struct.usb_bos_descriptor = type <{ i8, i8, i16, i8 }>
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_ext_cap_descriptor = type <{ i8, i8, i8, i32 }>
%struct.usb_ss_cap_descriptor = type { i8, i8, i8, i8, i16, i8, i8, i16 }
%struct.usb_ssp_cap_descriptor = type { i8, i8, i8, i8, i32, i16, i16, [1 x i32] }
%struct.usb_os_desc_table = type { i32, ptr }
%struct.usb_os_desc = type { ptr, %struct.list_head, i32, i32, ptr, %struct.config_group, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.usb_os_desc_ext_prop = type { %struct.list_head, i8, i32, ptr, i32, ptr, %struct.config_item }
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_composite_overwrite = type { i16, i16, i16, ptr, ptr, ptr }

@.str = private unnamed_addr constant [51 x i8] c"%s doesn't hold the descriptors for current speed\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"ep0 bMaxBurst must be 0\0A\00", align 1
@__kstrtab_config_ep_by_speed_and_alt = external dso_local constant [0 x i8], align 1
@__kstrtabns_config_ep_by_speed_and_alt = external dso_local constant [0 x i8], align 1
@__ksymtab_config_ep_by_speed_and_alt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @config_ep_by_speed_and_alt to i32), ptr @__kstrtab_config_ep_by_speed_and_alt, ptr @__kstrtabns_config_ep_by_speed_and_alt }, section "___ksymtab_gpl+config_ep_by_speed_and_alt", align 4
@__kstrtab_config_ep_by_speed = external dso_local constant [0 x i8], align 1
@__kstrtabns_config_ep_by_speed = external dso_local constant [0 x i8], align 1
@__ksymtab_config_ep_by_speed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @config_ep_by_speed to i32), ptr @__kstrtab_config_ep_by_speed, ptr @__kstrtabns_config_ep_by_speed }, section "___ksymtab_gpl+config_ep_by_speed", align 4
@__kstrtab_usb_add_function = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_add_function = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_add_function = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_add_function to i32), ptr @__kstrtab_usb_add_function, ptr @__kstrtabns_usb_add_function }, section "___ksymtab_gpl+usb_add_function", align 4
@__kstrtab_usb_remove_function = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_remove_function = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_remove_function = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_remove_function to i32), ptr @__kstrtab_usb_remove_function, ptr @__kstrtabns_usb_remove_function }, section "___ksymtab_gpl+usb_remove_function", align 4
@__kstrtab_usb_function_deactivate = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_function_deactivate = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_function_deactivate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_function_deactivate to i32), ptr @__kstrtab_usb_function_deactivate, ptr @__kstrtabns_usb_function_deactivate }, section "___ksymtab_gpl+usb_function_deactivate", align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"drivers/usb/gadget/composite.c\00", align 1
@__kstrtab_usb_function_activate = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_function_activate = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_function_activate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_function_activate to i32), ptr @__kstrtab_usb_function_activate, ptr @__kstrtabns_usb_function_activate }, section "___ksymtab_gpl+usb_function_activate", align 4
@__kstrtab_usb_interface_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_interface_id = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_interface_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_interface_id to i32), ptr @__kstrtab_usb_interface_id, ptr @__kstrtabns_usb_interface_id }, section "___ksymtab_gpl+usb_interface_id", align 4
@__kstrtab_usb_add_config_only = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_add_config_only = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_add_config_only = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_add_config_only to i32), ptr @__kstrtab_usb_add_config_only, ptr @__kstrtabns_usb_add_config_only }, section "___ksymtab_gpl+usb_add_config_only", align 4
@__kstrtab_usb_add_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_add_config = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_add_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_add_config to i32), ptr @__kstrtab_usb_add_config, ptr @__kstrtabns_usb_add_config }, section "___ksymtab_gpl+usb_add_config", align 4
@__kstrtab_usb_string_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_string_id = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_string_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_string_id to i32), ptr @__kstrtab_usb_string_id, ptr @__kstrtabns_usb_string_id }, section "___ksymtab_gpl+usb_string_id", align 4
@__kstrtab_usb_string_ids_tab = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_string_ids_tab = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_string_ids_tab = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_string_ids_tab to i32), ptr @__kstrtab_usb_string_ids_tab, ptr @__kstrtabns_usb_string_ids_tab }, section "___ksymtab_gpl+usb_string_ids_tab", align 4
@__kstrtab_usb_gstrings_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_gstrings_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_gstrings_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_gstrings_attach to i32), ptr @__kstrtab_usb_gstrings_attach, ptr @__kstrtabns_usb_gstrings_attach }, section "___ksymtab_gpl+usb_gstrings_attach", align 4
@__kstrtab_usb_string_ids_n = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_string_ids_n = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_string_ids_n = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_string_ids_n to i32), ptr @__kstrtab_usb_string_ids_n, ptr @__kstrtabns_usb_string_ids_n }, section "___ksymtab_gpl+usb_string_ids_n", align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"func_suspend() returned error %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"%s: Delayed status not supported for w_length != 0\00", align 1
@__func__.composite_setup = private unnamed_addr constant [16 x i8] c"composite_setup\00", align 1
@dev_attr_suspended = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292 }, ptr @suspended_show, ptr null }, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"composite\00", align 1
@composite_driver_template = internal unnamed_addr constant %struct.usb_gadget_driver { ptr null, i32 0, ptr @composite_bind, ptr @composite_unbind, ptr @composite_setup, ptr @composite_disconnect, ptr @composite_suspend, ptr @composite_resume, ptr @composite_reset, %struct.device_driver { ptr null, ptr null, ptr @__this_module, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.list_head zeroinitializer, i8 0 }, align 4
@__kstrtab_usb_composite_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_composite_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_composite_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_composite_probe to i32), ptr @__kstrtab_usb_composite_probe, ptr @__kstrtabns_usb_composite_probe }, section "___ksymtab_gpl+usb_composite_probe", align 4
@__kstrtab_usb_composite_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_composite_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_composite_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_composite_unregister to i32), ptr @__kstrtab_usb_composite_unregister, ptr @__kstrtabns_usb_composite_unregister }, section "___ksymtab_gpl+usb_composite_unregister", align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"%s: Unexpected call\0A\00", align 1
@__func__.usb_composite_setup_continue = private unnamed_addr constant [29 x i8] c"usb_composite_setup_continue\00", align 1
@__kstrtab_usb_composite_setup_continue = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_composite_setup_continue = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_composite_setup_continue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_composite_setup_continue to i32), ptr @__kstrtab_usb_composite_setup_continue, ptr @__kstrtabns_usb_composite_setup_continue }, section "___ksymtab_gpl+usb_composite_setup_continue", align 4
@__kstrtab_usb_composite_overwrite_options = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_composite_overwrite_options = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_composite_overwrite_options = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_composite_overwrite_options to i32), ptr @__kstrtab_usb_composite_overwrite_options, ptr @__kstrtabns_usb_composite_overwrite_options }, section "___ksymtab_gpl+usb_composite_overwrite_options", align 4
@__UNIQUE_ID_license339 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author340 = internal constant [22 x i8] c"author=David Brownell\00", section ".modinfo", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"unknown request %p\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"suspended\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.11 = private unnamed_addr constant [43 x i8] c"userspace failed to provide iSerialNumber\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"%s ready\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"%s %s with %s\00", align 1
@init_uts_ns = external dso_local global %struct.uts_namespace, align 4
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author340, ptr @__UNIQUE_ID_license339, ptr @__ksymtab_config_ep_by_speed, ptr @__ksymtab_config_ep_by_speed_and_alt, ptr @__ksymtab_usb_add_config, ptr @__ksymtab_usb_add_config_only, ptr @__ksymtab_usb_add_function, ptr @__ksymtab_usb_composite_overwrite_options, ptr @__ksymtab_usb_composite_probe, ptr @__ksymtab_usb_composite_setup_continue, ptr @__ksymtab_usb_composite_unregister, ptr @__ksymtab_usb_function_activate, ptr @__ksymtab_usb_function_deactivate, ptr @__ksymtab_usb_gstrings_attach, ptr @__ksymtab_usb_interface_id, ptr @__ksymtab_usb_remove_function, ptr @__ksymtab_usb_string_id, ptr @__ksymtab_usb_string_ids_n, ptr @__ksymtab_usb_string_ids_tab], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @config_ep_by_speed_and_alt(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3) #0 {
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %230

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %19 [
    i32 6, label %24
    i32 5, label %16
    i32 3, label %13
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 6
  %15 = load i32, ptr %14, align 8
  br label %43

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 6
  %18 = load i32, ptr %17, align 8
  br label %35

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 8
  %23 = load ptr, ptr %22, align 8
  br label %74

24:                                               ; preds = %10
  %25 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 6
  %26 = load i32, ptr %25, align 8
  %27 = icmp ult i32 %26, 6
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 8
  %34 = load ptr, ptr %33, align 8
  br label %74

35:                                               ; preds = %24, %16
  %36 = phi i32 [ %26, %24 ], [ %18, %16 ]
  %37 = icmp ult i32 %36, 5
  br i1 %37, label %43, label %38

38:                                               ; preds = %35, %28
  %39 = phi i1 [ false, %35 ], [ true, %28 ]
  %40 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %61

43:                                               ; preds = %35, %13
  %44 = phi i32 [ %15, %13 ], [ %36, %35 ]
  %45 = icmp ult i32 %44, 3
  br i1 %45, label %56, label %46

46:                                               ; preds = %43, %38
  %47 = phi i1 [ false, %43 ], [ true, %38 ]
  %48 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 8
  %55 = load ptr, ptr %54, align 8
  br label %67

56:                                               ; preds = %43
  %57 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 8
  %60 = load ptr, ptr %59, align 8
  br label %74

61:                                               ; preds = %46, %38
  %62 = phi ptr [ %41, %38 ], [ %49, %46 ]
  %63 = phi i1 [ false, %38 ], [ true, %46 ]
  %64 = phi i1 [ %39, %38 ], [ %47, %46 ]
  %65 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 8
  %66 = load ptr, ptr %65, align 8
  br i1 %64, label %67, label %74

67:                                               ; preds = %61, %51
  %68 = phi ptr [ %66, %61 ], [ %55, %51 ]
  %69 = phi i1 [ %63, %61 ], [ true, %51 ]
  %70 = phi ptr [ %62, %61 ], [ %53, %51 ]
  %71 = load ptr, ptr %68, align 4
  %72 = getelementptr inbounds %struct.usb_gadget, ptr %71, i32 0, i32 11
  %73 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %72, ptr noundef nonnull @.str, ptr noundef %73) #18
  br label %74

74:                                               ; preds = %67, %61, %56, %32, %19
  %75 = phi ptr [ %34, %32 ], [ %68, %67 ], [ %66, %61 ], [ %60, %56 ], [ %23, %19 ]
  %76 = phi i1 [ false, %32 ], [ %69, %67 ], [ %63, %61 ], [ true, %56 ], [ true, %19 ]
  %77 = phi ptr [ %30, %32 ], [ %70, %67 ], [ %62, %61 ], [ %58, %56 ], [ %21, %19 ]
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %230, label %80

80:                                               ; preds = %86, %74
  %81 = phi ptr [ %88, %86 ], [ %78, %74 ]
  %82 = phi ptr [ %87, %86 ], [ %77, %74 ]
  %83 = getelementptr inbounds %struct.usb_descriptor_header, ptr %81, i32 0, i32 1
  %84 = load i8, ptr %83, align 1
  %85 = icmp eq i8 %84, 4
  br i1 %85, label %90, label %86

86:                                               ; preds = %80
  %87 = getelementptr ptr, ptr %82, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %230, label %80

90:                                               ; preds = %80
  %91 = icmp eq ptr %82, null
  br i1 %91, label %230, label %92

92:                                               ; preds = %129, %90
  %93 = phi ptr [ %121, %129 ], [ %82, %90 ]
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %94, i32 0, i32 3
  %96 = load i8, ptr %95, align 1
  %97 = icmp eq i8 %96, %3
  br i1 %97, label %98, label %115

98:                                               ; preds = %92
  %99 = icmp eq ptr %94, null
  br i1 %99, label %230, label %100

100:                                              ; preds = %106, %98
  %101 = phi ptr [ %108, %106 ], [ %94, %98 ]
  %102 = phi ptr [ %107, %106 ], [ %93, %98 ]
  %103 = getelementptr inbounds %struct.usb_descriptor_header, ptr %101, i32 0, i32 1
  %104 = load i8, ptr %103, align 1
  %105 = icmp eq i8 %104, 5
  br i1 %105, label %110, label %106

106:                                              ; preds = %100
  %107 = getelementptr ptr, ptr %102, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %230, label %100

110:                                              ; preds = %100
  %111 = icmp eq ptr %102, null
  br i1 %111, label %230, label %112

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct.usb_ep, ptr %2, i32 0, i32 8
  %114 = load i8, ptr %113, align 1
  br label %131

115:                                              ; preds = %92
  %116 = getelementptr ptr, ptr %93, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %230, label %119

119:                                              ; preds = %125, %115
  %120 = phi ptr [ %127, %125 ], [ %117, %115 ]
  %121 = phi ptr [ %126, %125 ], [ %116, %115 ]
  %122 = getelementptr inbounds %struct.usb_descriptor_header, ptr %120, i32 0, i32 1
  %123 = load i8, ptr %122, align 1
  %124 = icmp eq i8 %123, 4
  br i1 %124, label %129, label %125

125:                                              ; preds = %119
  %126 = getelementptr ptr, ptr %121, i32 1
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %230, label %119

129:                                              ; preds = %119
  %130 = icmp eq ptr %121, null
  br i1 %130, label %230, label %92

131:                                              ; preds = %151, %112
  %132 = phi ptr [ %102, %112 ], [ %143, %151 ]
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %133, i32 0, i32 2
  %135 = load i8, ptr %134, align 1
  %136 = icmp eq i8 %135, %114
  br i1 %136, label %153, label %137

137:                                              ; preds = %131
  %138 = getelementptr ptr, ptr %132, i32 1
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %230, label %141

141:                                              ; preds = %147, %137
  %142 = phi ptr [ %149, %147 ], [ %139, %137 ]
  %143 = phi ptr [ %148, %147 ], [ %138, %137 ]
  %144 = getelementptr inbounds %struct.usb_descriptor_header, ptr %142, i32 0, i32 1
  %145 = load i8, ptr %144, align 1
  %146 = icmp eq i8 %145, 5
  br i1 %146, label %151, label %147

147:                                              ; preds = %141
  %148 = getelementptr ptr, ptr %143, i32 1
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %230, label %141

151:                                              ; preds = %141
  %152 = icmp eq ptr %143, null
  br i1 %152, label %230, label %131

153:                                              ; preds = %131
  %154 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %133, i32 0, i32 4
  %155 = load i16, ptr %154, align 1
  %156 = getelementptr inbounds %struct.usb_ep, ptr %2, i32 0, i32 7
  %157 = load i56, ptr %156, align 2
  %158 = and i56 %157, -35747322042318848
  %159 = getelementptr inbounds %struct.usb_ep, ptr %2, i32 0, i32 9
  store ptr %133, ptr %159, align 4
  %160 = getelementptr inbounds %struct.usb_ep, ptr %2, i32 0, i32 10
  store ptr null, ptr %160, align 4
  %161 = and i16 %155, 2047
  %162 = zext i16 %161 to i56
  %163 = or i56 %158, %162
  %164 = or i56 %163, 281474976710656
  store i56 %164, ptr %156, align 2
  %165 = load i32, ptr %11, align 4
  %166 = icmp eq i32 %165, 3
  br i1 %166, label %167, label %179

167:                                              ; preds = %153
  %168 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %133, i32 0, i32 3
  %169 = load i8, ptr %168, align 1
  %170 = trunc i8 %169 to i2
  switch i2 %170, label %179 [
    i2 1, label %171
    i2 -1, label %171
  ]

171:                                              ; preds = %167, %167
  %172 = load i16, ptr %154, align 1
  %173 = lshr i16 %172, 11
  %174 = add nuw nsw i16 %173, 1
  %175 = and i16 %174, 3
  %176 = zext i16 %175 to i56
  %177 = shl nuw nsw i56 %176, 48
  %178 = or i56 %177, %163
  store i56 %178, ptr %156, align 2
  br label %179

179:                                              ; preds = %171, %167, %153
  %180 = phi i56 [ %164, %167 ], [ %178, %171 ], [ %164, %153 ]
  br i1 %76, label %230, label %181

181:                                              ; preds = %179
  %182 = getelementptr ptr, ptr %132, i32 1
  %183 = load ptr, ptr %182, align 4
  %184 = icmp eq ptr %183, null
  br i1 %184, label %230, label %185

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %183, i32 0, i32 1
  %187 = load i8, ptr %186, align 1
  %188 = icmp eq i8 %187, 48
  br i1 %188, label %189, label %230

189:                                              ; preds = %185
  store ptr %183, ptr %160, align 4
  %190 = load i32, ptr %11, align 4
  %191 = icmp ugt i32 %190, 4
  br i1 %191, label %192, label %230

192:                                              ; preds = %189
  %193 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %133, i32 0, i32 3
  %194 = load i8, ptr %193, align 1
  %195 = and i8 %194, 3
  %196 = zext i8 %195 to i32
  switch i32 %196, label %215 [
    i32 1, label %197
    i32 2, label %206
    i32 3, label %206
  ]

197:                                              ; preds = %192
  %198 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %183, i32 0, i32 3
  %199 = load i8, ptr %198, align 1
  %200 = add i8 %199, 1
  %201 = and i8 %200, 3
  %202 = zext i8 %201 to i56
  %203 = shl nuw nsw i56 %202, 48
  %204 = and i56 %180, -844424930131969
  %205 = or i56 %203, %204
  store i56 %205, ptr %156, align 2
  br label %206

206:                                              ; preds = %197, %192, %192
  %207 = phi i56 [ %180, %192 ], [ %180, %192 ], [ %205, %197 ]
  %208 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %183, i32 0, i32 2
  %209 = load i8, ptr %208, align 1
  %210 = add i8 %209, 1
  %211 = and i8 %210, 31
  %212 = zext i8 %211 to i56
  %213 = shl nuw nsw i56 %212, 50
  %214 = and i56 %207, -34902897112121345
  br label %226

215:                                              ; preds = %192
  %216 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %183, i32 0, i32 2
  %217 = load i8, ptr %216, align 1
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %223, label %219

219:                                              ; preds = %215
  %220 = load ptr, ptr %75, align 4
  %221 = getelementptr inbounds %struct.usb_gadget, ptr %220, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %221, ptr noundef nonnull @.str.1) #18
  %222 = load i56, ptr %156, align 2
  br label %223

223:                                              ; preds = %219, %215
  %224 = phi i56 [ %222, %219 ], [ %180, %215 ]
  %225 = and i56 %224, -34902897112121345
  br label %226

226:                                              ; preds = %223, %206
  %227 = phi i56 [ 1125899906842624, %223 ], [ %214, %206 ]
  %228 = phi i56 [ %225, %223 ], [ %213, %206 ]
  %229 = or i56 %228, %227
  store i56 %229, ptr %156, align 2
  br label %230

230:                                              ; preds = %226, %189, %185, %181, %179, %151, %147, %137, %129, %125, %115, %110, %106, %98, %90, %86, %74, %4
  %231 = phi i32 [ -5, %4 ], [ 0, %179 ], [ -5, %185 ], [ -5, %181 ], [ 0, %189 ], [ -5, %110 ], [ -5, %90 ], [ -5, %74 ], [ -5, %98 ], [ 0, %226 ], [ -5, %147 ], [ -5, %151 ], [ -5, %137 ], [ -5, %106 ], [ -5, %125 ], [ -5, %129 ], [ -5, %115 ], [ -5, %86 ]
  ret i32 %231
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @config_ep_by_speed(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @config_ep_by_speed_and_alt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 0)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_add_function(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %95, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %95, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 6
  store ptr %0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 22
  %13 = getelementptr inbounds %struct.usb_configuration, ptr %0, i32 0, i32 11
  %14 = getelementptr inbounds %struct.usb_configuration, ptr %0, i32 0, i32 11, i32 1
  %15 = load ptr, ptr %14, align 4
  store ptr %12, ptr %14, align 4
  store ptr %13, ptr %12, align 4
  %16 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 22, i32 1
  store ptr %15, ptr %16, align 4
  store volatile ptr %12, ptr %15, align 4
  %17 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 25
  %18 = load i8, ptr %17, align 4
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %42, label %21

21:                                               ; preds = %10
  %22 = load ptr, ptr %11, align 4
  %23 = getelementptr inbounds %struct.usb_configuration, ptr %22, i32 0, i32 9
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.usb_composite_dev, ptr %24, i32 0, i32 19
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %25) #19
  %27 = getelementptr inbounds %struct.usb_composite_dev, ptr %24, i32 0, i32 17
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %26) #19
  %31 = load ptr, ptr %24, align 4
  %32 = tail call i32 @usb_gadget_deactivate(ptr noundef %31) #19
  %33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %25) #19
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i32, ptr %27, align 4
  br label %37

37:                                               ; preds = %35, %21
  %38 = phi i32 [ %36, %35 ], [ %28, %21 ]
  %39 = phi i32 [ %33, %35 ], [ %26, %21 ]
  %40 = add i32 %38, 1
  store i32 %40, ptr %27, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %39) #19
  br label %42

41:                                               ; preds = %30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %33) #19
  br label %95

42:                                               ; preds = %37, %10
  %43 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 9
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = tail call i32 %44(ptr noundef %0, ptr noundef %1) #19
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load ptr, ptr %16, align 4
  %51 = load ptr, ptr %12, align 4
  %52 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %50, ptr %52, align 4
  store volatile ptr %51, ptr %50, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %12, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  store ptr null, ptr %11, align 4
  br label %53

53:                                               ; preds = %49, %46, %42
  %54 = phi i32 [ %47, %49 ], [ %47, %46 ], [ 0, %42 ]
  %55 = getelementptr inbounds %struct.usb_configuration, ptr %0, i32 0, i32 13
  %56 = load i8, ptr %55, align 1
  %57 = and i8 %56, 4
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = or i8 %56, 4
  store i8 %64, ptr %55, align 1
  br label %65

65:                                               ; preds = %63, %59, %53
  %66 = phi i8 [ %64, %63 ], [ %56, %59 ], [ %56, %53 ]
  %67 = and i8 %66, 2
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 3
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = or i8 %66, 2
  store i8 %74, ptr %55, align 1
  br label %75

75:                                               ; preds = %73, %69, %65
  %76 = phi i8 [ %74, %73 ], [ %66, %69 ], [ %66, %65 ]
  %77 = and i8 %76, 1
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 4
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = or i8 %76, 1
  store i8 %84, ptr %55, align 1
  br label %85

85:                                               ; preds = %83, %79, %75
  %86 = phi i8 [ %84, %83 ], [ %76, %79 ], [ %76, %75 ]
  %87 = and i8 %86, 8
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 5
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = or i8 %86, 8
  store i8 %94, ptr %55, align 1
  br label %95

95:                                               ; preds = %93, %89, %85, %41, %6, %2
  %96 = phi i32 [ %32, %41 ], [ %54, %85 ], [ %54, %93 ], [ %54, %89 ], [ -22, %6 ], [ -22, %2 ]
  ret i32 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_function_deactivate(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_configuration, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_composite_dev, ptr %5, i32 0, i32 19
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #19
  %8 = getelementptr inbounds %struct.usb_composite_dev, ptr %5, i32 0, i32 17
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #19
  %12 = load ptr, ptr %5, align 4
  %13 = tail call i32 @usb_gadget_deactivate(ptr noundef %12) #19
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #19
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load i32, ptr %8, align 4
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi i32 [ %17, %16 ], [ %9, %1 ]
  %20 = phi i32 [ %14, %16 ], [ %7, %1 ]
  %21 = add i32 %19, 1
  store i32 %21, ptr %8, align 4
  br label %22

22:                                               ; preds = %18, %11
  %23 = phi i32 [ %20, %18 ], [ %14, %11 ]
  %24 = phi i32 [ 0, %18 ], [ %13, %11 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %23) #19
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_remove_function(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void %4(ptr noundef %1) #19
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 23
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 22
  %10 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 22, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %12, ptr %11, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %10, align 4
  %14 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %7
  tail call void %15(ptr noundef %0, ptr noundef %1) #19
  br label %18

18:                                               ; preds = %17, %7
  %19 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 25
  %20 = load i8, ptr %19, align 4
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = tail call i32 @usb_function_activate(ptr noundef %1)
  br label %25

25:                                               ; preds = %23, %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_function_activate(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_configuration, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_composite_dev, ptr %5, i32 0, i32 19
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #19
  %8 = getelementptr inbounds %struct.usb_composite_dev, ptr %5, i32 0, i32 17
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 440, i32 noundef 9, ptr noundef null) #19
  br label %19

12:                                               ; preds = %1
  %13 = add i32 %9, -1
  store i32 %13, ptr %8, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #19
  %16 = load ptr, ptr %5, align 4
  %17 = tail call i32 @usb_gadget_activate(ptr noundef %16) #19
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #19
  br label %19

19:                                               ; preds = %15, %12, %11
  %20 = phi i32 [ -22, %11 ], [ %17, %15 ], [ 0, %12 ]
  %21 = phi i32 [ %7, %11 ], [ %18, %15 ], [ %7, %12 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %21) #19
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_deactivate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_activate(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @usb_interface_id(ptr nocapture noundef %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.usb_configuration, ptr %0, i32 0, i32 12
  %4 = load i8, ptr %3, align 4
  %5 = icmp ult i8 %4, 16
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = zext i8 %4 to i32
  %8 = getelementptr %struct.usb_configuration, ptr %0, i32 0, i32 14, i32 %7
  store ptr %1, ptr %8, align 4
  %9 = add nuw nsw i8 %4, 1
  store i8 %9, ptr %3, align 4
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ %7, %6 ], [ -19, %2 ]
  ret i32 %11
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_add_config_only(ptr noundef %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 5
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 11
  br label %8

8:                                                ; preds = %12, %6
  %9 = phi ptr [ %7, %6 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %7
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %10, i32 -12
  %14 = load i8, ptr %13, align 4
  %15 = icmp eq i8 %14, %4
  br i1 %15, label %26, label %8

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  store ptr %0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 10
  %19 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 11, i32 1
  %20 = load ptr, ptr %19, align 4
  store ptr %18, ptr %19, align 4
  store ptr %7, ptr %18, align 4
  %21 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 10, i32 1
  store ptr %20, ptr %21, align 4
  store volatile ptr %18, ptr %20, align 4
  %22 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 11
  store volatile ptr %22, ptr %22, align 4
  %23 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 11, i32 1
  store ptr %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 12
  store i8 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 14
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(64) %25, i8 0, i32 64, i1 false)
  br label %26

26:                                               ; preds = %16, %12, %2
  %27 = phi i32 [ 0, %16 ], [ -22, %2 ], [ -16, %12 ]
  ret i32 %27
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_add_config(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %54, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 5
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %54, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 11
  br label %11

11:                                               ; preds = %15, %9
  %12 = phi ptr [ %10, %9 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %13, i32 -12
  %17 = load i8, ptr %16, align 4
  %18 = icmp eq i8 %17, %7
  br i1 %18, label %54, label %11

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  store ptr %0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 10
  %22 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 11, i32 1
  %23 = load ptr, ptr %22, align 4
  store ptr %21, ptr %22, align 4
  store ptr %10, ptr %21, align 4
  %24 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 10, i32 1
  store ptr %23, ptr %24, align 4
  store volatile ptr %21, ptr %23, align 4
  %25 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 11
  store volatile ptr %25, ptr %25, align 4
  %26 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 11, i32 1
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 12
  store i8 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 14
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(64) %28, i8 0, i32 64, i1 false) #19
  %29 = tail call i32 %2(ptr noundef %1) #19
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %19
  %32 = load volatile ptr, ptr %25, align 4
  %33 = icmp eq ptr %32, %25
  br i1 %33, label %48, label %34

34:                                               ; preds = %45, %31
  %35 = phi ptr [ %46, %45 ], [ %32, %31 ]
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %35, align 4
  %39 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  store ptr %37, ptr %39, align 4
  store volatile ptr %38, ptr %37, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %35, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %36, align 4
  %40 = getelementptr i8, ptr %35, i32 -48
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %34
  %44 = getelementptr i8, ptr %35, i32 -88
  tail call void %41(ptr noundef %1, ptr noundef %44) #19
  br label %45

45:                                               ; preds = %43, %34
  %46 = load volatile ptr, ptr %25, align 4
  %47 = icmp eq ptr %46, %25
  br i1 %47, label %48, label %34

48:                                               ; preds = %45, %31
  %49 = load ptr, ptr %24, align 4
  %50 = load ptr, ptr %21, align 4
  %51 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  store ptr %49, ptr %51, align 4
  store volatile ptr %50, ptr %49, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %21, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %24, align 4
  store ptr null, ptr %20, align 4
  br label %52

52:                                               ; preds = %48, %19
  %53 = load ptr, ptr %0, align 4
  tail call void @usb_ep_autoconfig_reset(ptr noundef %53) #19
  br label %54

54:                                               ; preds = %52, %15, %5, %3
  %55 = phi i32 [ %29, %52 ], [ -22, %3 ], [ -22, %5 ], [ -16, %15 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_autoconfig_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_remove_config(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 19
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #19
  %5 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %27

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %25, label %12

12:                                               ; preds = %19, %8
  %13 = phi ptr [ %21, %19 ], [ %10, %8 ]
  %14 = getelementptr i8, ptr %13, i32 -28
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = getelementptr i8, ptr %13, i32 -88
  tail call void %15(ptr noundef %18) #19
  br label %19

19:                                               ; preds = %17, %12
  %20 = getelementptr i8, ptr %13, i32 8
  store i32 0, ptr %20, align 4
  %21 = load ptr, ptr %13, align 4
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr inbounds %struct.usb_configuration, ptr %22, i32 0, i32 11
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %25, label %12

25:                                               ; preds = %19, %8
  store ptr null, ptr %5, align 4
  %26 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 18
  store i32 0, ptr %26, align 4
  br label %27

27:                                               ; preds = %25, %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #19
  %28 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 11
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %58, label %31

31:                                               ; preds = %55, %27
  %32 = phi ptr [ %56, %55 ], [ %29, %27 ]
  %33 = getelementptr i8, ptr %32, i32 -88
  %34 = getelementptr i8, ptr %32, i32 -28
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  tail call void %35(ptr noundef %33) #19
  br label %38

38:                                               ; preds = %37, %31
  %39 = getelementptr i8, ptr %32, i32 8
  store i32 0, ptr %39, align 4
  %40 = getelementptr i8, ptr %32, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %32, align 4
  %43 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  store ptr %41, ptr %43, align 4
  store volatile ptr %42, ptr %41, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %32, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %40, align 4
  %44 = getelementptr i8, ptr %32, i32 -48
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  tail call void %45(ptr noundef %1, ptr noundef %33) #19
  br label %48

48:                                               ; preds = %47, %38
  %49 = getelementptr i8, ptr %32, i32 16
  %50 = load i8, ptr %49, align 4
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = tail call i32 @usb_function_activate(ptr noundef %33) #19
  br label %55

55:                                               ; preds = %53, %48
  %56 = load volatile ptr, ptr %28, align 4
  %57 = icmp eq ptr %56, %28
  br i1 %57, label %58, label %31

58:                                               ; preds = %55, %27
  %59 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 10
  %60 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 10, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = load ptr, ptr %59, align 4
  %63 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  store ptr %61, ptr %63, align 4
  store volatile ptr %62, ptr %61, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %59, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %60, align 4
  %64 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %58
  tail call void %65(ptr noundef %1) #19
  br label %68

68:                                               ; preds = %67, %58
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @usb_string_id(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 14
  %3 = load i8, ptr %2, align 4
  %4 = icmp ult i8 %3, -2
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = add nuw i8 %3, 1
  store i8 %6, ptr %2, align 4
  %7 = zext i8 %6 to i32
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i32 [ %7, %5 ], [ -19, %1 ]
  ret i32 %9
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_string_ids_tab(ptr nocapture noundef %0, ptr nocapture noundef %1) #7 {
  %3 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 14
  %4 = load i8, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_string, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = zext i8 %4 to i32
  %10 = call i32 @llvm.umax.i32(i32 %9, i32 254)
  br label %11

11:                                               ; preds = %15, %8
  %12 = phi i32 [ %16, %15 ], [ %9, %8 ]
  %13 = phi ptr [ %18, %15 ], [ %1, %8 ]
  %14 = icmp eq i32 %12, %10
  br i1 %14, label %26, label %15, !prof !8

15:                                               ; preds = %11
  %16 = add nuw nsw i32 %12, 1
  %17 = trunc i32 %16 to i8
  store i8 %17, ptr %13, align 4
  %18 = getelementptr %struct.usb_string, ptr %13, i32 1
  %19 = getelementptr %struct.usb_string, ptr %13, i32 1, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %11

22:                                               ; preds = %15
  %23 = trunc i32 %16 to i8
  br label %24

24:                                               ; preds = %22, %2
  %25 = phi i8 [ %4, %2 ], [ %23, %22 ]
  store i8 %25, ptr %3, align 4
  br label %26

26:                                               ; preds = %24, %11
  %27 = phi i32 [ 0, %24 ], [ -19, %11 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @usb_gstrings_attach(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %1, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %122, label %6

6:                                                ; preds = %6, %3
  %7 = phi i32 [ %8, %6 ], [ 0, %3 ]
  %8 = add i32 %7, 1
  %9 = getelementptr ptr, ptr %1, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %6

12:                                               ; preds = %6
  %13 = icmp eq i32 %8, 0
  br i1 %13, label %122, label %14

14:                                               ; preds = %12
  %15 = shl i32 %8, 2
  %16 = add i32 %15, 12
  %17 = shl i32 %2, 3
  %18 = add i32 %17, 16
  %19 = mul i32 %8, %18
  %20 = add i32 %16, %19
  %21 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %20, i32 noundef 3264) #20
  %22 = icmp eq ptr %21, null
  br i1 %22, label %122, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.usb_gadget_string_container, ptr %21, i32 0, i32 1
  %25 = add i32 %15, 4
  %26 = getelementptr i8, ptr %24, i32 %25
  %27 = icmp eq i32 %2, 0
  br label %28

28:                                               ; preds = %54, %23
  %29 = phi ptr [ %26, %23 ], [ %57, %54 ]
  %30 = phi i32 [ 0, %23 ], [ %58, %54 ]
  %31 = getelementptr ptr, ptr %24, i32 %30
  store ptr %29, ptr %31, align 4
  %32 = getelementptr i8, ptr %29, i32 8
  %33 = getelementptr ptr, ptr %1, i32 %30
  %34 = load ptr, ptr %33, align 4
  %35 = load i16, ptr %34, align 4
  store i16 %35, ptr %29, align 4
  %36 = getelementptr inbounds %struct.usb_gadget_strings, ptr %29, i32 0, i32 1
  store ptr %32, ptr %36, align 4
  br i1 %27, label %54, label %37

37:                                               ; preds = %28
  %38 = load ptr, ptr %33, align 4
  %39 = getelementptr inbounds %struct.usb_gadget_strings, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  br label %41

41:                                               ; preds = %41, %37
  %42 = phi ptr [ %51, %41 ], [ %40, %37 ]
  %43 = phi ptr [ %45, %41 ], [ %32, %37 ]
  %44 = phi i32 [ %52, %41 ], [ 0, %37 ]
  %45 = getelementptr i8, ptr %43, i32 8
  %46 = getelementptr inbounds %struct.usb_string, ptr %42, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  %49 = select i1 %48, ptr @.str.7, ptr %47
  %50 = getelementptr inbounds %struct.usb_string, ptr %43, i32 0, i32 1
  store ptr %49, ptr %50, align 4
  %51 = getelementptr %struct.usb_string, ptr %42, i32 1
  %52 = add nuw i32 %44, 1
  %53 = icmp eq i32 %52, %2
  br i1 %53, label %54, label %41

54:                                               ; preds = %41, %28
  %55 = phi ptr [ %32, %28 ], [ %45, %41 ]
  %56 = getelementptr inbounds %struct.usb_string, ptr %55, i32 0, i32 1
  store ptr null, ptr %56, align 4
  %57 = getelementptr i8, ptr %55, i32 8
  %58 = add nuw i32 %30, 1
  %59 = icmp eq i32 %30, %7
  br i1 %59, label %60, label %28

60:                                               ; preds = %54
  %61 = getelementptr ptr, ptr %24, i32 %8
  store ptr null, ptr %61, align 4
  %62 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %62, label %122, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %24, align 8
  %65 = getelementptr inbounds %struct.usb_gadget_strings, ptr %64, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 14
  %68 = load i8, ptr %67, align 4
  %69 = getelementptr inbounds %struct.usb_string, ptr %66, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %88, label %72

72:                                               ; preds = %63
  %73 = zext i8 %68 to i32
  %74 = tail call i32 @llvm.umax.i32(i32 %73, i32 254) #19
  br label %75

75:                                               ; preds = %79, %72
  %76 = phi i32 [ %80, %79 ], [ %73, %72 ]
  %77 = phi ptr [ %82, %79 ], [ %66, %72 ]
  %78 = icmp eq i32 %76, %74
  br i1 %78, label %121, label %79, !prof !8

79:                                               ; preds = %75
  %80 = add nuw nsw i32 %76, 1
  %81 = trunc i32 %80 to i8
  store i8 %81, ptr %77, align 4
  %82 = getelementptr %struct.usb_string, ptr %77, i32 1
  %83 = getelementptr %struct.usb_string, ptr %77, i32 1, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %75

86:                                               ; preds = %79
  %87 = trunc i32 %80 to i8
  br label %88

88:                                               ; preds = %86, %63
  %89 = phi i8 [ %68, %63 ], [ %87, %86 ]
  store i8 %89, ptr %67, align 4
  %90 = icmp ugt i32 %8, 1
  br i1 %90, label %91, label %113

91:                                               ; preds = %110, %88
  %92 = phi i32 [ %111, %110 ], [ 1, %88 ]
  br i1 %27, label %110, label %93

93:                                               ; preds = %91
  %94 = getelementptr ptr, ptr %24, i32 %92
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.usb_gadget_strings, ptr %95, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = load ptr, ptr %24, align 8
  %99 = getelementptr inbounds %struct.usb_gadget_strings, ptr %98, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  br label %101

101:                                              ; preds = %101, %93
  %102 = phi i32 [ %108, %101 ], [ 0, %93 ]
  %103 = phi ptr [ %106, %101 ], [ %97, %93 ]
  %104 = phi ptr [ %107, %101 ], [ %100, %93 ]
  %105 = load i8, ptr %104, align 4
  store i8 %105, ptr %103, align 4
  %106 = getelementptr %struct.usb_string, ptr %103, i32 1
  %107 = getelementptr %struct.usb_string, ptr %104, i32 1
  %108 = add nuw i32 %102, 1
  %109 = icmp eq i32 %108, %2
  br i1 %109, label %110, label %101

110:                                              ; preds = %101, %91
  %111 = add nuw i32 %92, 1
  %112 = icmp eq i32 %92, %7
  br i1 %112, label %113, label %91

113:                                              ; preds = %110, %88
  %114 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 12
  %115 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 12, i32 1
  %116 = load ptr, ptr %115, align 4
  store ptr %21, ptr %115, align 4
  store ptr %114, ptr %21, align 64
  %117 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %116, ptr %117, align 4
  store volatile ptr %21, ptr %116, align 4
  %118 = load ptr, ptr %24, align 8
  %119 = getelementptr inbounds %struct.usb_gadget_strings, ptr %118, i32 0, i32 1
  %120 = load ptr, ptr %119, align 4
  br label %122

121:                                              ; preds = %75
  tail call void @kfree(ptr noundef nonnull %21) #19
  br label %122

122:                                              ; preds = %121, %113, %60, %14, %12, %3
  %123 = phi ptr [ inttoptr (i32 -19 to ptr), %121 ], [ %120, %113 ], [ inttoptr (i32 -22 to ptr), %12 ], [ %21, %60 ], [ inttoptr (i32 -12 to ptr), %14 ], [ inttoptr (i32 -22 to ptr), %3 ]
  ret ptr %123
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @usb_string_ids_n(ptr nocapture noundef %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 14
  %4 = load i8, ptr %3, align 4
  %5 = zext i8 %4 to i32
  %6 = icmp ugt i32 %1, 254
  %7 = add i32 %5, %1
  %8 = icmp ugt i32 %7, 254
  %9 = select i1 %6, i1 true, i1 %8, !prof !8
  br i1 %9, label %13, label %10, !prof !8

10:                                               ; preds = %2
  %11 = trunc i32 %7 to i8
  store i8 %11, ptr %3, align 4
  %12 = add nuw nsw i32 %5, 1
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi i32 [ %12, %10 ], [ -19, %2 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @composite_setup(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 3
  %8 = load i16, ptr %7, align 1
  %9 = zext i16 %8 to i32
  %10 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 2
  %11 = load i16, ptr %10, align 1
  %12 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 4
  %13 = load i16, ptr %12, align 1
  %14 = icmp ugt i16 %13, 4096
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i8, ptr %1, align 1
  %17 = icmp sgt i8 %16, -1
  br i1 %17, label %571, label %18

18:                                               ; preds = %15
  store i16 4096, ptr %12, align 2
  br label %19

19:                                               ; preds = %18, %2
  %20 = phi i16 [ 4096, %18 ], [ %13, %2 ]
  %21 = getelementptr inbounds %struct.usb_request, ptr %6, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, -262145
  store i32 %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.usb_request, ptr %6, i32 0, i32 8
  store ptr %4, ptr %24, align 4
  %25 = getelementptr inbounds %struct.usb_request, ptr %6, i32 0, i32 7
  store ptr @composite_setup_complete, ptr %25, align 4
  %26 = getelementptr inbounds %struct.usb_request, ptr %6, i32 0, i32 1
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8
  store ptr %4, ptr %28, align 4
  %29 = load i8, ptr %1, align 1
  %30 = and i8 %29, 96
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %316

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 1
  %34 = load i8, ptr %33, align 1
  switch i8 %34, label %316 [
    i8 6, label %35
    i8 9, label %155
    i8 8, label %163
    i8 11, label %177
    i8 10, label %211
    i8 0, label %238
    i8 1, label %284
    i8 3, label %284
  ]

35:                                               ; preds = %32
  %36 = icmp eq i8 %29, -128
  br i1 %36, label %37, label %316

37:                                               ; preds = %35
  %38 = zext i16 %11 to i32
  %39 = lshr i16 %11, 8
  %40 = trunc i16 %39 to i8
  switch i8 %40, label %571 [
    i8 1, label %41
    i8 6, label %75
    i8 7, label %86
    i8 2, label %94
    i8 3, label %101
    i8 15, label %110
    i8 9, label %124
  ]

41:                                               ; preds = %37
  %42 = tail call fastcc i32 @count_configs(ptr noundef %4, i32 noundef 1)
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 9
  %45 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 9, i32 13
  store i8 %43, ptr %45, align 1
  %46 = load ptr, ptr %4, align 4
  %47 = getelementptr inbounds %struct.usb_gadget, ptr %46, i32 0, i32 3
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.usb_ep, ptr %48, i32 0, i32 7
  %50 = load i56, ptr %49, align 2
  %51 = trunc i56 %50 to i8
  %52 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 9, i32 6
  store i8 %51, ptr %52, align 1
  %53 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 6
  %54 = load i32, ptr %53, align 8
  %55 = icmp ult i32 %54, 5
  br i1 %55, label %63, label %56

56:                                               ; preds = %41
  %57 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 5
  %58 = load i32, ptr %57, align 4
  %59 = icmp ugt i32 %58, 4
  %60 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 9, i32 2
  br i1 %59, label %61, label %62

61:                                               ; preds = %56
  store i16 800, ptr %60, align 1
  store i8 9, ptr %52, align 1
  br label %71

62:                                               ; preds = %56
  store i16 528, ptr %60, align 1
  br label %71

63:                                               ; preds = %41
  %64 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 17
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 65536
  %67 = icmp eq i32 %66, 0
  %68 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 9, i32 2
  br i1 %67, label %70, label %69

69:                                               ; preds = %63
  store i16 513, ptr %68, align 1
  br label %71

70:                                               ; preds = %63
  store i16 512, ptr %68, align 1
  br label %71

71:                                               ; preds = %70, %69, %62, %61
  %72 = tail call i16 @llvm.umin.i16(i16 %20, i16 18)
  %73 = zext i16 %72 to i32
  %74 = load ptr, ptr %6, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %74, ptr align 1 %44, i32 %73, i1 false)
  br label %504

75:                                               ; preds = %37
  %76 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 6
  %77 = load i32, ptr %76, align 8
  %78 = icmp ult i32 %77, 3
  br i1 %78, label %571, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 5
  %81 = load i32, ptr %80, align 4
  %82 = icmp ugt i32 %81, 4
  br i1 %82, label %571, label %83

83:                                               ; preds = %79
  tail call fastcc void @device_qual(ptr noundef %4)
  %84 = tail call i16 @llvm.umin.i16(i16 %20, i16 10)
  %85 = zext i16 %84 to i32
  br label %504

86:                                               ; preds = %37
  %87 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 6
  %88 = load i32, ptr %87, align 8
  %89 = icmp ult i32 %88, 3
  br i1 %89, label %571, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 5
  %92 = load i32, ptr %91, align 4
  %93 = icmp ugt i32 %92, 4
  br i1 %93, label %571, label %94

94:                                               ; preds = %90, %37
  %95 = tail call fastcc i32 @config_desc(ptr noundef %4, i32 noundef %38)
  %96 = icmp sgt i32 %95, -1
  br i1 %96, label %97, label %571

97:                                               ; preds = %94
  %98 = zext i16 %20 to i32
  %99 = and i32 %95, 65535
  %100 = tail call i32 @llvm.umin.i32(i32 %99, i32 %98)
  br label %504

101:                                              ; preds = %37
  %102 = load ptr, ptr %6, align 4
  %103 = and i32 %38, 255
  %104 = tail call fastcc i32 @get_string(ptr noundef %4, ptr noundef %102, i16 noundef zeroext %8, i32 noundef %103)
  %105 = icmp sgt i32 %104, -1
  br i1 %105, label %106, label %571

106:                                              ; preds = %101
  %107 = zext i16 %20 to i32
  %108 = and i32 %104, 65535
  %109 = tail call i32 @llvm.umin.i32(i32 %108, i32 %107)
  br label %504

110:                                              ; preds = %37
  %111 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 6
  %112 = load i32, ptr %111, align 8
  %113 = icmp ult i32 %112, 5
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 17
  %116 = load i32, ptr %115, align 4
  %117 = and i32 %116, 65536
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %571, label %119

119:                                              ; preds = %114, %110
  %120 = tail call fastcc i32 @bos_desc(ptr noundef %4)
  %121 = zext i16 %20 to i32
  %122 = and i32 %120, 65535
  %123 = tail call i32 @llvm.umin.i32(i32 %122, i32 %121)
  br label %504

124:                                              ; preds = %37
  %125 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 17
  %126 = load i32, ptr %125, align 4
  %127 = and i32 %126, 2
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %571, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 3
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %138

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 11
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr i8, ptr %135, i32 -32
  %137 = icmp eq ptr %136, null
  br i1 %137, label %571, label %138

138:                                              ; preds = %133, %129
  %139 = phi ptr [ %136, %133 ], [ %131, %129 ]
  %140 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 16
  %141 = load ptr, ptr %140, align 8
  %142 = icmp eq ptr %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %138
  %144 = load i16, ptr %141, align 2
  %145 = icmp ugt i16 %144, 511
  br i1 %145, label %147, label %146

146:                                              ; preds = %143, %138
  br label %147

147:                                              ; preds = %146, %143
  %148 = phi i32 [ 3, %146 ], [ 5, %143 ]
  %149 = zext i16 %20 to i32
  %150 = tail call i32 @llvm.umin.i32(i32 %148, i32 %149)
  %151 = load ptr, ptr %6, align 4
  %152 = getelementptr inbounds %struct.usb_configuration, ptr %139, i32 0, i32 2
  %153 = load ptr, ptr %152, align 4
  %154 = load ptr, ptr %153, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %151, ptr align 1 %154, i32 %150, i1 false)
  br label %504

155:                                              ; preds = %32
  %156 = icmp eq i8 %29, 0
  br i1 %156, label %157, label %316

157:                                              ; preds = %155
  %158 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %158) #19
  %159 = zext i16 %11 to i32
  %160 = tail call fastcc i32 @set_config(ptr noundef %4, i32 noundef %159)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !9
  %161 = load i16, ptr %158, align 4
  %162 = add i16 %161, 1
  store i16 %162, ptr %158, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !12
  br label %504

163:                                              ; preds = %32
  %164 = icmp eq i8 %29, -128
  br i1 %164, label %165, label %316

165:                                              ; preds = %163
  %166 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 3
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %172, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.usb_configuration, ptr %167, i32 0, i32 5
  %171 = load i8, ptr %170, align 4
  br label %172

172:                                              ; preds = %169, %165
  %173 = phi i8 [ %171, %169 ], [ 0, %165 ]
  %174 = load ptr, ptr %6, align 4
  store i8 %173, ptr %174, align 1
  %175 = icmp ne i16 %20, 0
  %176 = zext i1 %175 to i32
  br label %504

177:                                              ; preds = %32
  %178 = icmp eq i8 %29, 1
  br i1 %178, label %179, label %316

179:                                              ; preds = %177
  %180 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 3
  %181 = load ptr, ptr %180, align 4
  %182 = icmp eq ptr %181, null
  %183 = and i16 %8, 255
  %184 = icmp ugt i16 %183, 15
  %185 = select i1 %182, i1 true, i1 %184
  br i1 %185, label %571, label %186

186:                                              ; preds = %179
  %187 = zext i16 %183 to i32
  %188 = getelementptr %struct.usb_configuration, ptr %181, i32 0, i32 14, i32 %187
  %189 = load ptr, ptr %188, align 4
  %190 = icmp eq ptr %189, null
  br i1 %190, label %571, label %191

191:                                              ; preds = %186
  %192 = zext i16 %11 to i32
  %193 = icmp eq i16 %11, 0
  br i1 %193, label %198, label %194

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.usb_function, ptr %189, i32 0, i32 14
  %196 = load ptr, ptr %195, align 4
  %197 = icmp eq ptr %196, null
  br i1 %197, label %571, label %198

198:                                              ; preds = %194, %191
  %199 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %199) #19
  %200 = getelementptr inbounds %struct.usb_function, ptr %189, i32 0, i32 13
  %201 = load ptr, ptr %200, align 4
  %202 = tail call i32 %201(ptr noundef nonnull %189, i32 noundef %9, i32 noundef %192) #19
  %203 = icmp eq i32 %202, 32767
  br i1 %203, label %204, label %208

204:                                              ; preds = %198
  %205 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 18
  %206 = load i32, ptr %205, align 4
  %207 = add i32 %206, 1
  store i32 %207, ptr %205, align 4
  br label %208

208:                                              ; preds = %204, %198
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !9
  %209 = load i16, ptr %199, align 4
  %210 = add i16 %209, 1
  store i16 %210, ptr %199, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !12
  br label %504

211:                                              ; preds = %32
  %212 = icmp eq i8 %29, -127
  br i1 %212, label %213, label %316

213:                                              ; preds = %211
  %214 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 3
  %215 = load ptr, ptr %214, align 4
  %216 = icmp eq ptr %215, null
  %217 = and i16 %8, 255
  %218 = icmp ugt i16 %217, 15
  %219 = select i1 %216, i1 true, i1 %218
  br i1 %219, label %571, label %220

220:                                              ; preds = %213
  %221 = zext i16 %217 to i32
  %222 = getelementptr %struct.usb_configuration, ptr %215, i32 0, i32 14, i32 %221
  %223 = load ptr, ptr %222, align 4
  %224 = icmp eq ptr %223, null
  br i1 %224, label %571, label %225

225:                                              ; preds = %220
  %226 = getelementptr inbounds %struct.usb_function, ptr %223, i32 0, i32 14
  %227 = load ptr, ptr %226, align 4
  %228 = icmp eq ptr %227, null
  br i1 %228, label %232, label %229

229:                                              ; preds = %225
  %230 = tail call i32 %227(ptr noundef nonnull %223, i32 noundef %9) #19
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %571, label %232

232:                                              ; preds = %229, %225
  %233 = phi i32 [ %230, %229 ], [ 0, %225 ]
  %234 = trunc i32 %233 to i8
  %235 = load ptr, ptr %6, align 4
  store i8 %234, ptr %235, align 1
  %236 = icmp ne i16 %20, 0
  %237 = zext i1 %236 to i32
  br label %504

238:                                              ; preds = %32
  %239 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 17
  %240 = load i32, ptr %239, align 4
  %241 = and i32 %240, 2
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %254, label %243

243:                                              ; preds = %238
  %244 = and i32 %240, 64
  %245 = icmp ne i32 %244, 0
  %246 = icmp eq i16 %8, -4096
  %247 = select i1 %245, i1 %246, i1 false
  br i1 %247, label %248, label %254

248:                                              ; preds = %243
  %249 = icmp eq i8 %29, -128
  br i1 %249, label %250, label %316

250:                                              ; preds = %248
  %251 = trunc i32 %240 to i8
  %252 = lshr i8 %251, 7
  %253 = load ptr, ptr %6, align 4
  store i8 %252, ptr %253, align 1
  br label %504

254:                                              ; preds = %243, %238
  %255 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 6
  %256 = load i32, ptr %255, align 8
  %257 = icmp ugt i32 %256, 4
  %258 = icmp eq i8 %29, -127
  %259 = select i1 %257, i1 %258, i1 false
  br i1 %259, label %260, label %316

260:                                              ; preds = %254
  %261 = load ptr, ptr %6, align 4
  store i16 0, ptr %261, align 1
  %262 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 3
  %263 = load ptr, ptr %262, align 4
  %264 = icmp eq ptr %263, null
  %265 = and i16 %8, 255
  %266 = icmp ugt i16 %265, 15
  %267 = select i1 %264, i1 true, i1 %266
  br i1 %267, label %504, label %268

268:                                              ; preds = %260
  %269 = zext i16 %265 to i32
  %270 = getelementptr %struct.usb_configuration, ptr %263, i32 0, i32 14, i32 %269
  %271 = load ptr, ptr %270, align 4
  %272 = icmp eq ptr %271, null
  br i1 %272, label %504, label %273

273:                                              ; preds = %268
  %274 = getelementptr inbounds %struct.usb_function, ptr %271, i32 0, i32 20
  %275 = load ptr, ptr %274, align 4
  %276 = icmp eq ptr %275, null
  br i1 %276, label %280, label %277

277:                                              ; preds = %273
  %278 = tail call i32 %275(ptr noundef nonnull %271) #19
  %279 = icmp slt i32 %278, 0
  br i1 %279, label %504, label %280

280:                                              ; preds = %277, %273
  %281 = phi i32 [ %278, %277 ], [ 0, %273 ]
  %282 = trunc i32 %281 to i16
  %283 = load ptr, ptr %6, align 4
  store i16 %282, ptr %283, align 1
  br label %504

284:                                              ; preds = %32, %32
  %285 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 6
  %286 = load i32, ptr %285, align 8
  %287 = icmp ugt i32 %286, 4
  %288 = icmp eq i8 %29, 1
  %289 = select i1 %287, i1 %288, i1 false
  br i1 %289, label %290, label %316

290:                                              ; preds = %284
  %291 = icmp eq i16 %11, 0
  br i1 %291, label %292, label %571

292:                                              ; preds = %290
  %293 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 3
  %294 = load ptr, ptr %293, align 4
  %295 = icmp eq ptr %294, null
  %296 = and i16 %8, 255
  %297 = icmp ugt i16 %296, 15
  %298 = select i1 %295, i1 true, i1 %297
  br i1 %298, label %571, label %299

299:                                              ; preds = %292
  %300 = zext i16 %296 to i32
  %301 = getelementptr %struct.usb_configuration, ptr %294, i32 0, i32 14, i32 %300
  %302 = load ptr, ptr %301, align 4
  %303 = icmp eq ptr %302, null
  br i1 %303, label %571, label %304

304:                                              ; preds = %299
  %305 = getelementptr inbounds %struct.usb_function, ptr %302, i32 0, i32 21
  %306 = load ptr, ptr %305, align 4
  %307 = icmp eq ptr %306, null
  br i1 %307, label %504, label %308

308:                                              ; preds = %304
  %309 = lshr i16 %8, 8
  %310 = trunc i16 %309 to i8
  %311 = tail call i32 %306(ptr noundef nonnull %302, i8 noundef zeroext %310) #19
  %312 = icmp slt i32 %311, 0
  br i1 %312, label %313, label %504

313:                                              ; preds = %308
  %314 = load ptr, ptr %4, align 4
  %315 = getelementptr inbounds %struct.usb_gadget, ptr %314, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %315, ptr noundef nonnull @.str.3, i32 noundef %311) #18
  br label %504

316:                                              ; preds = %284, %254, %248, %211, %177, %163, %155, %35, %32, %19
  %317 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 8
  %318 = load i8, ptr %317, align 4
  %319 = and i8 %318, 1
  %320 = icmp eq i8 %319, 0
  br i1 %320, label %386, label %321

321:                                              ; preds = %316
  %322 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 7
  %323 = load ptr, ptr %322, align 4
  %324 = icmp eq ptr %323, null
  %325 = and i8 %29, 64
  %326 = icmp eq i8 %325, 0
  %327 = select i1 %324, i1 true, i1 %326
  br i1 %327, label %386, label %328

328:                                              ; preds = %321
  %329 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 1
  %330 = load i8, ptr %329, align 1
  %331 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 5
  %332 = load i8, ptr %331, align 2
  %333 = icmp eq i8 %330, %332
  br i1 %333, label %334, label %386

334:                                              ; preds = %328
  %335 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 2
  %336 = load ptr, ptr %335, align 4
  %337 = getelementptr inbounds %struct.usb_request, ptr %336, i32 0, i32 8
  store ptr %4, ptr %337, align 4
  %338 = getelementptr inbounds %struct.usb_request, ptr %336, i32 0, i32 7
  store ptr @composite_setup_complete, ptr %338, align 4
  %339 = load ptr, ptr %336, align 4
  %340 = load ptr, ptr %322, align 4
  %341 = zext i16 %20 to i32
  tail call void @llvm.memset.p0.i32(ptr align 1 %339, i8 0, i32 %341, i1 false)
  %342 = getelementptr i8, ptr %339, i32 5
  store i8 1, ptr %342, align 1
  %343 = load i8, ptr %1, align 1
  %344 = and i8 %343, 31
  %345 = zext i8 %344 to i32
  switch i32 %345, label %571 [
    i32 0, label %346
    i32 1, label %362
  ]

346:                                              ; preds = %334
  %347 = icmp ne i16 %8, 4
  %348 = icmp ugt i16 %11, 255
  %349 = select i1 %347, i1 true, i1 %348
  br i1 %349, label %571, label %350

350:                                              ; preds = %346
  %351 = getelementptr i8, ptr %339, i32 6
  store i8 4, ptr %351, align 1
  %352 = tail call fastcc i32 @count_ext_compat(ptr noundef %340)
  %353 = trunc i32 %352 to i8
  %354 = getelementptr i8, ptr %339, i32 8
  store i8 %353, ptr %354, align 1
  %355 = mul i32 %352, 24
  %356 = add i32 %355, 16
  store i32 %356, ptr %339, align 1
  %357 = icmp ugt i16 %20, 16
  br i1 %357, label %358, label %504

358:                                              ; preds = %350
  %359 = tail call fastcc i32 @fill_ext_compat(ptr noundef %340, ptr noundef %339)
  %360 = and i32 %359, 65535
  %361 = tail call i32 @llvm.umin.i32(i32 %360, i32 %341)
  br label %504

362:                                              ; preds = %334
  %363 = icmp ne i16 %8, 5
  %364 = icmp ugt i16 %11, 255
  %365 = select i1 %363, i1 true, i1 %364
  br i1 %365, label %571, label %366

366:                                              ; preds = %362
  %367 = zext i16 %11 to i32
  %368 = icmp ugt i16 %11, 15
  br i1 %368, label %571, label %369

369:                                              ; preds = %366
  %370 = getelementptr %struct.usb_configuration, ptr %340, i32 0, i32 14, i32 %367
  %371 = load ptr, ptr %370, align 4
  %372 = icmp eq ptr %371, null
  br i1 %372, label %571, label %373

373:                                              ; preds = %369
  %374 = getelementptr i8, ptr %339, i32 6
  store i8 5, ptr %374, align 1
  %375 = tail call fastcc i32 @count_ext_prop(ptr noundef %340, i32 noundef %367)
  %376 = trunc i32 %375 to i16
  %377 = getelementptr i8, ptr %339, i32 8
  store i16 %376, ptr %377, align 1
  %378 = tail call fastcc i32 @len_ext_prop(ptr noundef %340, i32 noundef %367)
  store i32 %378, ptr %339, align 1
  %379 = icmp ugt i16 %20, 10
  br i1 %379, label %380, label %504

380:                                              ; preds = %373
  %381 = tail call fastcc i32 @fill_ext_prop(ptr noundef %340, i32 noundef %367, ptr noundef %339)
  %382 = icmp sgt i32 %381, -1
  br i1 %382, label %383, label %571

383:                                              ; preds = %380
  %384 = and i32 %381, 65535
  %385 = tail call i32 @llvm.umin.i32(i32 %384, i32 %341)
  br label %504

386:                                              ; preds = %328, %321, %316
  %387 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 3
  %388 = load ptr, ptr %387, align 4
  %389 = icmp eq ptr %388, null
  br i1 %389, label %410, label %390

390:                                              ; preds = %386
  %391 = getelementptr inbounds %struct.usb_configuration, ptr %388, i32 0, i32 11
  %392 = load ptr, ptr %391, align 4
  %393 = icmp eq ptr %392, %391
  br i1 %393, label %433, label %394

394:                                              ; preds = %405, %390
  %395 = phi ptr [ %406, %405 ], [ %388, %390 ]
  %396 = phi ptr [ %407, %405 ], [ %392, %390 ]
  %397 = getelementptr i8, ptr %396, i32 -20
  %398 = load ptr, ptr %397, align 4
  %399 = icmp eq ptr %398, null
  br i1 %399, label %405, label %400

400:                                              ; preds = %394
  %401 = getelementptr i8, ptr %396, i32 -88
  %402 = tail call zeroext i1 %398(ptr noundef %401, ptr noundef %1, i1 noundef zeroext false) #19
  br i1 %402, label %469, label %403

403:                                              ; preds = %400
  %404 = load ptr, ptr %387, align 4
  br label %405

405:                                              ; preds = %403, %394
  %406 = phi ptr [ %404, %403 ], [ %395, %394 ]
  %407 = load ptr, ptr %396, align 4
  %408 = getelementptr inbounds %struct.usb_configuration, ptr %406, i32 0, i32 11
  %409 = icmp eq ptr %407, %408
  br i1 %409, label %433, label %394

410:                                              ; preds = %386
  %411 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 11
  %412 = load ptr, ptr %411, align 4
  %413 = icmp eq ptr %412, %411
  br i1 %413, label %433, label %417

414:                                              ; preds = %430, %417
  %415 = load ptr, ptr %418, align 4
  %416 = icmp eq ptr %415, %411
  br i1 %416, label %433, label %417

417:                                              ; preds = %414, %410
  %418 = phi ptr [ %415, %414 ], [ %412, %410 ]
  %419 = getelementptr i8, ptr %418, i32 8
  %420 = load ptr, ptr %419, align 4
  %421 = icmp eq ptr %420, %419
  br i1 %421, label %414, label %422

422:                                              ; preds = %430, %417
  %423 = phi ptr [ %431, %430 ], [ %420, %417 ]
  %424 = getelementptr i8, ptr %423, i32 -20
  %425 = load ptr, ptr %424, align 4
  %426 = icmp eq ptr %425, null
  br i1 %426, label %430, label %427

427:                                              ; preds = %422
  %428 = getelementptr i8, ptr %423, i32 -88
  %429 = tail call zeroext i1 %425(ptr noundef %428, ptr noundef %1, i1 noundef zeroext true) #19
  br i1 %429, label %469, label %430

430:                                              ; preds = %427, %422
  %431 = load ptr, ptr %423, align 4
  %432 = icmp eq ptr %431, %419
  br i1 %432, label %414, label %422

433:                                              ; preds = %414, %410, %405, %390
  %434 = load i8, ptr %1, align 1
  %435 = and i8 %434, 31
  %436 = zext i8 %435 to i32
  switch i32 %436, label %478 [
    i32 1, label %437
    i32 2, label %447
  ]

437:                                              ; preds = %433
  %438 = load ptr, ptr %387, align 4
  %439 = icmp eq ptr %438, null
  %440 = and i16 %8, 255
  %441 = icmp ugt i16 %440, 15
  %442 = select i1 %439, i1 true, i1 %441
  br i1 %442, label %480, label %443

443:                                              ; preds = %437
  %444 = zext i16 %440 to i32
  %445 = getelementptr %struct.usb_configuration, ptr %438, i32 0, i32 14, i32 %444
  %446 = load ptr, ptr %445, align 4
  br label %469

447:                                              ; preds = %433
  %448 = load ptr, ptr %387, align 4
  %449 = icmp eq ptr %448, null
  br i1 %449, label %571, label %450

450:                                              ; preds = %447
  %451 = lshr i16 %8, 3
  %452 = and i16 %451, 16
  %453 = and i16 %8, 15
  %454 = or i16 %452, %453
  %455 = zext i16 %454 to i32
  %456 = getelementptr inbounds %struct.usb_configuration, ptr %448, i32 0, i32 11
  %457 = shl nuw i32 1, %455
  br label %458

458:                                              ; preds = %462, %450
  %459 = phi ptr [ %456, %450 ], [ %460, %462 ]
  %460 = load ptr, ptr %459, align 4
  %461 = icmp eq ptr %460, %456
  br i1 %461, label %478, label %462

462:                                              ; preds = %458
  %463 = getelementptr i8, ptr %460, i32 8
  %464 = load volatile i32, ptr %463, align 4
  %465 = and i32 %464, %457
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %458, label %467

467:                                              ; preds = %462
  %468 = getelementptr i8, ptr %460, i32 -88
  br label %469

469:                                              ; preds = %467, %443, %427, %400
  %470 = phi ptr [ %446, %443 ], [ %468, %467 ], [ %428, %427 ], [ %401, %400 ]
  %471 = icmp eq ptr %470, null
  br i1 %471, label %478, label %472

472:                                              ; preds = %469
  %473 = getelementptr inbounds %struct.usb_function, ptr %470, i32 0, i32 16
  %474 = load ptr, ptr %473, align 4
  %475 = icmp eq ptr %474, null
  br i1 %475, label %478, label %476

476:                                              ; preds = %472
  %477 = tail call i32 %474(ptr noundef nonnull %470, ptr noundef %1) #19
  br label %571

478:                                              ; preds = %472, %469, %458, %433
  %479 = load ptr, ptr %387, align 4
  br label %480

480:                                              ; preds = %478, %437
  %481 = phi ptr [ %479, %478 ], [ %438, %437 ]
  %482 = icmp eq ptr %481, null
  br i1 %482, label %571, label %483

483:                                              ; preds = %480
  %484 = getelementptr inbounds %struct.usb_configuration, ptr %481, i32 0, i32 4
  %485 = load ptr, ptr %484, align 4
  %486 = icmp eq ptr %485, null
  br i1 %486, label %489, label %487

487:                                              ; preds = %483
  %488 = tail call i32 %485(ptr noundef nonnull %481, ptr noundef %1) #19
  br label %571

489:                                              ; preds = %483
  %490 = getelementptr inbounds %struct.usb_configuration, ptr %481, i32 0, i32 11
  %491 = load volatile ptr, ptr %490, align 4
  %492 = icmp eq ptr %491, %490
  br i1 %492, label %571, label %493

493:                                              ; preds = %489
  %494 = getelementptr inbounds %struct.usb_configuration, ptr %481, i32 0, i32 11, i32 1
  %495 = load ptr, ptr %494, align 4
  %496 = icmp eq ptr %491, %495
  br i1 %496, label %497, label %571

497:                                              ; preds = %493
  %498 = getelementptr i8, ptr %491, i32 -24
  %499 = load ptr, ptr %498, align 4
  %500 = icmp eq ptr %499, null
  br i1 %500, label %571, label %501

501:                                              ; preds = %497
  %502 = getelementptr i8, ptr %491, i32 -88
  %503 = tail call i32 %499(ptr noundef %502, ptr noundef %1) #19
  br label %571

504:                                              ; preds = %383, %373, %358, %350, %313, %308, %304, %280, %277, %268, %260, %250, %232, %208, %172, %157, %147, %119, %106, %97, %83, %71
  %505 = phi i32 [ 0, %313 ], [ %311, %308 ], [ 1, %250 ], [ 2, %260 ], [ 2, %277 ], [ 2, %280 ], [ 2, %268 ], [ %237, %232 ], [ %202, %208 ], [ %176, %172 ], [ %160, %157 ], [ %123, %119 ], [ %109, %106 ], [ %100, %97 ], [ %85, %83 ], [ %73, %71 ], [ %385, %383 ], [ %341, %373 ], [ %361, %358 ], [ %341, %350 ], [ %150, %147 ], [ 0, %304 ]
  %506 = phi ptr [ %6, %313 ], [ %6, %308 ], [ %6, %250 ], [ %6, %260 ], [ %6, %277 ], [ %6, %280 ], [ %6, %268 ], [ %6, %232 ], [ %6, %208 ], [ %6, %172 ], [ %6, %157 ], [ %6, %119 ], [ %6, %106 ], [ %6, %97 ], [ %6, %83 ], [ %6, %71 ], [ %336, %383 ], [ %336, %373 ], [ %336, %358 ], [ %336, %350 ], [ %6, %147 ], [ %6, %304 ]
  %507 = icmp sgt i32 %505, -1
  %508 = icmp ne i32 %505, 32767
  %509 = and i1 %507, %508
  br i1 %509, label %510, label %564

510:                                              ; preds = %504
  %511 = getelementptr inbounds %struct.usb_request, ptr %506, i32 0, i32 1
  store i32 %505, ptr %511, align 4
  %512 = getelementptr inbounds %struct.usb_request, ptr %506, i32 0, i32 8
  store ptr %4, ptr %512, align 4
  %513 = zext i16 %20 to i32
  %514 = icmp ult i32 %505, %513
  %515 = getelementptr inbounds %struct.usb_request, ptr %506, i32 0, i32 6
  %516 = load i32, ptr %515, align 4
  %517 = select i1 %514, i32 262144, i32 0
  %518 = and i32 %516, -262145
  %519 = or i32 %518, %517
  store i32 %519, ptr %515, align 4
  %520 = load ptr, ptr %4, align 4
  %521 = getelementptr inbounds %struct.usb_gadget, ptr %520, i32 0, i32 3
  %522 = load ptr, ptr %521, align 8
  %523 = tail call i32 @usb_ep_queue(ptr noundef %522, ptr noundef %506, i32 noundef 2592) #19
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %525, label %541

525:                                              ; preds = %510
  %526 = load ptr, ptr %5, align 4
  %527 = icmp eq ptr %526, %506
  br i1 %527, label %528, label %532

528:                                              ; preds = %525
  %529 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 20
  %530 = load i8, ptr %529, align 4
  %531 = or i8 %530, 1
  store i8 %531, ptr %529, align 4
  br label %571

532:                                              ; preds = %525
  %533 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 2
  %534 = load ptr, ptr %533, align 4
  %535 = icmp eq ptr %534, %506
  br i1 %535, label %536, label %540

536:                                              ; preds = %532
  %537 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 20
  %538 = load i8, ptr %537, align 4
  %539 = or i8 %538, 2
  store i8 %539, ptr %537, align 4
  br label %571

540:                                              ; preds = %532
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1518, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %506) #19
  br label %571

541:                                              ; preds = %510
  %542 = icmp slt i32 %523, 0
  br i1 %542, label %543, label %571

543:                                              ; preds = %541
  %544 = getelementptr inbounds %struct.usb_request, ptr %506, i32 0, i32 11
  store i32 0, ptr %544, align 4
  %545 = load ptr, ptr %512, align 4
  %546 = icmp eq ptr %545, null
  br i1 %546, label %571, label %547

547:                                              ; preds = %543
  %548 = getelementptr inbounds %struct.usb_composite_dev, ptr %545, i32 0, i32 1
  %549 = load ptr, ptr %548, align 4
  %550 = icmp eq ptr %549, %506
  br i1 %550, label %551, label %555

551:                                              ; preds = %547
  %552 = getelementptr inbounds %struct.usb_composite_dev, ptr %545, i32 0, i32 20
  %553 = load i8, ptr %552, align 4
  %554 = and i8 %553, -2
  store i8 %554, ptr %552, align 4
  br label %571

555:                                              ; preds = %547
  %556 = getelementptr inbounds %struct.usb_composite_dev, ptr %545, i32 0, i32 2
  %557 = load ptr, ptr %556, align 4
  %558 = icmp eq ptr %557, %506
  br i1 %558, label %559, label %563

559:                                              ; preds = %555
  %560 = getelementptr inbounds %struct.usb_composite_dev, ptr %545, i32 0, i32 20
  %561 = load i8, ptr %560, align 4
  %562 = and i8 %561, -3
  store i8 %562, ptr %560, align 4
  br label %571

563:                                              ; preds = %555
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1503, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %506) #19
  br label %571

564:                                              ; preds = %504
  %565 = icmp eq i32 %505, 32767
  %566 = icmp ne i16 %20, 0
  %567 = select i1 %565, i1 %566, i1 false
  br i1 %567, label %568, label %571

568:                                              ; preds = %564
  %569 = icmp eq ptr %4, null
  br i1 %569, label %571, label %570, !prof !13

570:                                              ; preds = %568
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2100, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.composite_setup) #19
  br label %571

571:                                              ; preds = %570, %568, %564, %563, %559, %551, %543, %541, %540, %536, %528, %501, %497, %493, %489, %487, %480, %476, %447, %380, %369, %366, %362, %346, %334, %299, %292, %290, %229, %220, %213, %194, %186, %179, %133, %124, %114, %101, %94, %90, %86, %79, %75, %37, %15
  %572 = phi i32 [ %523, %541 ], [ %505, %564 ], [ %477, %476 ], [ -95, %15 ], [ %488, %487 ], [ -95, %480 ], [ -95, %493 ], [ %503, %501 ], [ -95, %497 ], [ 32767, %570 ], [ 32767, %568 ], [ -95, %133 ], [ %523, %543 ], [ %523, %551 ], [ %523, %559 ], [ %523, %563 ], [ -95, %489 ], [ -95, %346 ], [ -95, %369 ], [ %381, %380 ], [ -95, %366 ], [ -95, %362 ], [ -95, %334 ], [ -95, %75 ], [ -95, %79 ], [ -95, %86 ], [ -95, %90 ], [ %95, %94 ], [ %104, %101 ], [ -95, %114 ], [ -95, %124 ], [ -95, %37 ], [ -95, %186 ], [ -95, %194 ], [ -95, %179 ], [ -95, %220 ], [ %230, %229 ], [ -95, %213 ], [ -95, %290 ], [ -95, %299 ], [ -95, %292 ], [ 0, %528 ], [ 0, %536 ], [ 0, %540 ], [ -95, %447 ]
  ret i32 %572
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @composite_setup_complete(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 20
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, -2
  store i8 %13, ptr %11, align 4
  br label %23

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 20
  %20 = load i8, ptr %19, align 4
  %21 = and i8 %20, -3
  store i8 %21, ptr %19, align 4
  br label %23

22:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1503, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %1) #19
  br label %23

23:                                               ; preds = %22, %18, %10, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @count_configs(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #8 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.usb_gadget, ptr %3, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.usb_gadget, ptr %3, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 3
  %11 = icmp eq i32 %9, 5
  %12 = icmp eq i32 %9, 6
  %13 = icmp eq i32 %1, 6
  %14 = xor i1 %10, %13
  br label %15

15:                                               ; preds = %7, %2
  %16 = phi i1 [ false, %2 ], [ %11, %7 ]
  %17 = phi i1 [ false, %2 ], [ %12, %7 ]
  %18 = phi i1 [ false, %2 ], [ %14, %7 ]
  %19 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %47, label %22

22:                                               ; preds = %43, %15
  %23 = phi ptr [ %45, %43 ], [ %20, %15 ]
  %24 = phi i32 [ %44, %43 ], [ 0, %15 ]
  %25 = getelementptr i8, ptr %23, i32 17
  %26 = load i8, ptr %25, align 1
  br i1 %17, label %27, label %30

27:                                               ; preds = %22
  %28 = and i8 %26, 8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %43, label %41

30:                                               ; preds = %22
  br i1 %16, label %31, label %34

31:                                               ; preds = %30
  %32 = and i8 %26, 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %43, label %41

34:                                               ; preds = %30
  br i1 %18, label %35, label %38

35:                                               ; preds = %34
  %36 = and i8 %26, 2
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %43, label %41

38:                                               ; preds = %34
  %39 = and i8 %26, 4
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38, %35, %31, %27
  %42 = add i32 %24, 1
  br label %43

43:                                               ; preds = %41, %38, %35, %31, %27
  %44 = phi i32 [ %42, %41 ], [ %24, %27 ], [ %24, %31 ], [ %24, %35 ], [ %24, %38 ]
  %45 = load ptr, ptr %23, align 4
  %46 = icmp eq ptr %45, %19
  br i1 %46, label %47, label %22

47:                                               ; preds = %43, %15
  %48 = phi i32 [ 0, %15 ], [ %44, %43 ]
  ret i32 %48
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @device_qual(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  store i8 10, ptr %4, align 1
  %5 = getelementptr inbounds %struct.usb_qualifier_descriptor, ptr %4, i32 0, i32 1
  store i8 6, ptr %5, align 1
  %6 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 9, i32 2
  %7 = load i16, ptr %6, align 1
  %8 = getelementptr inbounds %struct.usb_qualifier_descriptor, ptr %4, i32 0, i32 2
  store i16 %7, ptr %8, align 1
  %9 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 9, i32 3
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr inbounds %struct.usb_qualifier_descriptor, ptr %4, i32 0, i32 3
  store i8 %10, ptr %11, align 1
  %12 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 9, i32 4
  %13 = load i8, ptr %12, align 1
  %14 = getelementptr inbounds %struct.usb_qualifier_descriptor, ptr %4, i32 0, i32 4
  store i8 %13, ptr %14, align 1
  %15 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 9, i32 5
  %16 = load i8, ptr %15, align 1
  %17 = getelementptr inbounds %struct.usb_qualifier_descriptor, ptr %4, i32 0, i32 5
  store i8 %16, ptr %17, align 1
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr inbounds %struct.usb_gadget, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.usb_ep, ptr %20, i32 0, i32 7
  %22 = load i56, ptr %21, align 2
  %23 = trunc i56 %22 to i8
  %24 = getelementptr inbounds %struct.usb_qualifier_descriptor, ptr %4, i32 0, i32 6
  store i8 %23, ptr %24, align 1
  %25 = load ptr, ptr %0, align 4
  %26 = getelementptr inbounds %struct.usb_gadget, ptr %25, i32 0, i32 6
  %27 = load i32, ptr %26, align 8
  %28 = icmp ult i32 %27, 3
  br i1 %28, label %35, label %29

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.usb_gadget, ptr %25, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = icmp ne i32 %31, 3
  %33 = icmp eq i32 %31, 5
  %34 = icmp eq i32 %31, 6
  br label %35

35:                                               ; preds = %29, %1
  %36 = phi i1 [ false, %1 ], [ %33, %29 ]
  %37 = phi i1 [ false, %1 ], [ %34, %29 ]
  %38 = phi i1 [ false, %1 ], [ %32, %29 ]
  %39 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 11
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %39
  br i1 %41, label %67, label %42

42:                                               ; preds = %63, %35
  %43 = phi ptr [ %65, %63 ], [ %40, %35 ]
  %44 = phi i32 [ %64, %63 ], [ 0, %35 ]
  %45 = getelementptr i8, ptr %43, i32 17
  %46 = load i8, ptr %45, align 1
  br i1 %37, label %47, label %50

47:                                               ; preds = %42
  %48 = and i8 %46, 8
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %63, label %61

50:                                               ; preds = %42
  br i1 %36, label %51, label %54

51:                                               ; preds = %50
  %52 = and i8 %46, 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %63, label %61

54:                                               ; preds = %50
  br i1 %38, label %55, label %58

55:                                               ; preds = %54
  %56 = and i8 %46, 2
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %63, label %61

58:                                               ; preds = %54
  %59 = and i8 %46, 4
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58, %55, %51, %47
  %62 = add i32 %44, 1
  br label %63

63:                                               ; preds = %61, %58, %55, %51, %47
  %64 = phi i32 [ %62, %61 ], [ %44, %47 ], [ %44, %51 ], [ %44, %55 ], [ %44, %58 ]
  %65 = load ptr, ptr %43, align 4
  %66 = icmp eq ptr %65, %39
  br i1 %66, label %67, label %42

67:                                               ; preds = %63, %35
  %68 = phi i32 [ 0, %35 ], [ %64, %63 ]
  %69 = trunc i32 %68 to i8
  %70 = getelementptr inbounds %struct.usb_qualifier_descriptor, ptr %4, i32 0, i32 7
  store i8 %69, ptr %70, align 1
  %71 = getelementptr inbounds %struct.usb_qualifier_descriptor, ptr %4, i32 0, i32 8
  store i8 0, ptr %71, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @config_desc(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = lshr i32 %1, 8
  %5 = trunc i32 %4 to i8
  %6 = getelementptr inbounds %struct.usb_gadget, ptr %3, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, 4
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.usb_gadget, ptr %3, i32 0, i32 6
  %11 = load i32, ptr %10, align 8
  %12 = icmp ult i32 %11, 3
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = icmp eq i32 %7, 3
  %15 = and i32 %1, 65280
  %16 = icmp eq i32 %15, 1792
  %17 = xor i1 %16, %14
  %18 = select i1 %17, i32 3, i32 0
  br label %19

19:                                               ; preds = %13, %9, %2
  %20 = phi i32 [ %18, %13 ], [ 0, %9 ], [ %7, %2 ]
  %21 = and i32 %1, 255
  %22 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 11
  %23 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 7
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %158, %55, %50, %45, %40, %19
  %27 = phi ptr [ %22, %19 ], [ %38, %40 ], [ %38, %45 ], [ %38, %50 ], [ %38, %55 ], [ %38, %158 ]
  %28 = phi i32 [ %21, %19 ], [ %39, %40 ], [ %39, %45 ], [ %39, %50 ], [ %39, %55 ], [ %159, %158 ]
  br label %29

29:                                               ; preds = %33, %26
  %30 = phi ptr [ %31, %33 ], [ %27, %26 ]
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %22
  br i1 %32, label %160, label %33

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %31, i32 -32
  %35 = icmp eq ptr %34, %24
  br i1 %35, label %29, label %36

36:                                               ; preds = %33, %19
  %37 = phi ptr [ %24, %19 ], [ %34, %33 ]
  %38 = phi ptr [ %22, %19 ], [ %31, %33 ]
  %39 = phi i32 [ %21, %19 ], [ %28, %33 ]
  switch i32 %20, label %55 [
    i32 6, label %40
    i32 5, label %45
    i32 3, label %50
  ]

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.usb_configuration, ptr %37, i32 0, i32 13
  %42 = load i8, ptr %41, align 1
  %43 = and i8 %42, 8
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %26, label %60

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.usb_configuration, ptr %37, i32 0, i32 13
  %47 = load i8, ptr %46, align 1
  %48 = and i8 %47, 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %26, label %60

50:                                               ; preds = %36
  %51 = getelementptr inbounds %struct.usb_configuration, ptr %37, i32 0, i32 13
  %52 = load i8, ptr %51, align 1
  %53 = and i8 %52, 2
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %26, label %60

55:                                               ; preds = %36
  %56 = getelementptr inbounds %struct.usb_configuration, ptr %37, i32 0, i32 13
  %57 = load i8, ptr %56, align 1
  %58 = and i8 %57, 4
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %26, label %60

60:                                               ; preds = %55, %50, %45, %40
  %61 = icmp eq i32 %39, 0
  br i1 %61, label %62, label %158

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr i8, ptr %65, i32 9
  store i8 9, ptr %65, align 1
  %67 = getelementptr inbounds %struct.usb_config_descriptor, ptr %65, i32 0, i32 1
  store i8 %5, ptr %67, align 1
  %68 = getelementptr inbounds %struct.usb_configuration, ptr %37, i32 0, i32 12
  %69 = load i8, ptr %68, align 4
  %70 = getelementptr inbounds %struct.usb_config_descriptor, ptr %65, i32 0, i32 3
  store i8 %69, ptr %70, align 1
  %71 = getelementptr inbounds %struct.usb_configuration, ptr %37, i32 0, i32 5
  %72 = load i8, ptr %71, align 4
  %73 = getelementptr inbounds %struct.usb_config_descriptor, ptr %65, i32 0, i32 4
  store i8 %72, ptr %73, align 1
  %74 = getelementptr inbounds %struct.usb_configuration, ptr %37, i32 0, i32 6
  %75 = load i8, ptr %74, align 1
  %76 = getelementptr inbounds %struct.usb_config_descriptor, ptr %65, i32 0, i32 5
  store i8 %75, ptr %76, align 1
  %77 = getelementptr inbounds %struct.usb_configuration, ptr %37, i32 0, i32 7
  %78 = load i8, ptr %77, align 2
  %79 = or i8 %78, -128
  %80 = getelementptr inbounds %struct.usb_config_descriptor, ptr %65, i32 0, i32 6
  store i8 %79, ptr %80, align 1
  %81 = getelementptr inbounds %struct.usb_configuration, ptr %37, i32 0, i32 8
  %82 = load i16, ptr %81, align 4
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %62
  %85 = load i8, ptr %77, align 2
  %86 = and i8 %85, 64
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %90, label %101

88:                                               ; preds = %62
  %89 = zext i16 %82 to i32
  br label %90

90:                                               ; preds = %88, %84
  %91 = phi i32 [ %89, %88 ], [ 2, %84 ]
  %92 = icmp ult i32 %20, 5
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = tail call i32 @llvm.umin.i32(i32 %91, i32 500) #19
  %95 = lshr i32 %94, 1
  %96 = trunc i32 %95 to i8
  br label %101

97:                                               ; preds = %90
  %98 = tail call i32 @llvm.umin.i32(i32 %91, i32 900) #19
  %99 = lshr i32 %98, 3
  %100 = trunc i32 %99 to i8
  br label %101

101:                                              ; preds = %97, %93, %84
  %102 = phi i8 [ %96, %93 ], [ %100, %97 ], [ 0, %84 ]
  %103 = getelementptr inbounds %struct.usb_config_descriptor, ptr %65, i32 0, i32 7
  store i8 %102, ptr %103, align 1
  %104 = getelementptr inbounds %struct.usb_configuration, ptr %37, i32 0, i32 2
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %113, label %107

107:                                              ; preds = %101
  %108 = tail call i32 @usb_descriptor_fillbuf(ptr noundef %66, i32 noundef 4087, ptr noundef nonnull %105) #19
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %160, label %110

110:                                              ; preds = %107
  %111 = sub nsw i32 4087, %108
  %112 = getelementptr i8, ptr %66, i32 %108
  br label %113

113:                                              ; preds = %110, %101
  %114 = phi i32 [ %111, %110 ], [ 4087, %101 ]
  %115 = phi ptr [ %112, %110 ], [ %66, %101 ]
  %116 = getelementptr inbounds %struct.usb_configuration, ptr %37, i32 0, i32 11
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, %116
  br i1 %118, label %151, label %119

119:                                              ; preds = %146, %113
  %120 = phi ptr [ %149, %146 ], [ %117, %113 ]
  %121 = phi ptr [ %148, %146 ], [ %115, %113 ]
  %122 = phi i32 [ %147, %146 ], [ %114, %113 ]
  switch i32 %20, label %135 [
    i32 6, label %123
    i32 5, label %127
    i32 3, label %131
  ]

123:                                              ; preds = %119
  %124 = getelementptr i8, ptr %120, i32 -68
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %139

127:                                              ; preds = %123, %119
  %128 = getelementptr i8, ptr %120, i32 -72
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %139

131:                                              ; preds = %127, %119
  %132 = getelementptr i8, ptr %120, i32 -76
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %139

135:                                              ; preds = %131, %119
  %136 = getelementptr i8, ptr %120, i32 -80
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %146, label %139

139:                                              ; preds = %135, %131, %127, %123
  %140 = phi ptr [ %137, %135 ], [ %125, %123 ], [ %129, %127 ], [ %133, %131 ]
  %141 = tail call i32 @usb_descriptor_fillbuf(ptr noundef %121, i32 noundef %122, ptr noundef nonnull %140) #19
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %160, label %143

143:                                              ; preds = %139
  %144 = sub i32 %122, %141
  %145 = getelementptr i8, ptr %121, i32 %141
  br label %146

146:                                              ; preds = %143, %135
  %147 = phi i32 [ %122, %135 ], [ %144, %143 ]
  %148 = phi ptr [ %121, %135 ], [ %145, %143 ]
  %149 = load ptr, ptr %120, align 4
  %150 = icmp eq ptr %149, %116
  br i1 %150, label %151, label %119

151:                                              ; preds = %146, %113
  %152 = phi ptr [ %115, %113 ], [ %148, %146 ]
  %153 = ptrtoint ptr %152 to i32
  %154 = ptrtoint ptr %65 to i32
  %155 = sub i32 %153, %154
  %156 = trunc i32 %155 to i16
  %157 = getelementptr inbounds %struct.usb_config_descriptor, ptr %65, i32 0, i32 2
  store i16 %156, ptr %157, align 1
  br label %160

158:                                              ; preds = %60
  %159 = add i32 %39, -1
  br label %26

160:                                              ; preds = %151, %139, %107, %29
  %161 = phi i32 [ %155, %151 ], [ %108, %107 ], [ %141, %139 ], [ -22, %29 ]
  ret i32 %161
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @get_string(ptr noundef readonly %0, ptr noundef %1, i16 noundef zeroext %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq i32 %3, 0
  br i1 %7, label %8, label %209

8:                                                ; preds = %4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(256) %1, i8 0, i32 256, i1 false)
  %9 = getelementptr inbounds %struct.usb_string_descriptor, ptr %1, i32 0, i32 1
  store i8 3, ptr %9, align 1
  %10 = getelementptr inbounds %struct.usb_composite_driver, ptr %6, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %45, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.usb_string_descriptor, ptr %1, i32 0, i32 2
  %15 = load ptr, ptr %11, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %45, label %17

17:                                               ; preds = %13
  %18 = getelementptr %struct.usb_string_descriptor, ptr %1, i32 63, i32 2
  %19 = icmp ugt ptr %18, %14
  br label %20

20:                                               ; preds = %40, %17
  %21 = phi i16 [ 0, %17 ], [ %41, %40 ]
  %22 = phi ptr [ %15, %17 ], [ %43, %40 ]
  %23 = phi ptr [ %11, %17 ], [ %42, %40 ]
  %24 = load i16, ptr %22, align 4
  %25 = icmp ne i16 %21, 0
  %26 = and i1 %19, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %31, %20
  %28 = phi i16 [ %33, %31 ], [ %21, %20 ]
  %29 = phi ptr [ %32, %31 ], [ %14, %20 ]
  %30 = icmp eq i16 %28, %24
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = getelementptr i16, ptr %29, i32 1
  %33 = load i16, ptr %32, align 2
  %34 = icmp ne i16 %33, 0
  %35 = icmp ult ptr %32, %18
  %36 = and i1 %35, %34
  br i1 %36, label %27, label %37

37:                                               ; preds = %31, %20
  %38 = phi ptr [ %14, %20 ], [ %32, %31 ]
  store i16 %24, ptr %38, align 2
  %39 = load i16, ptr %14, align 2
  br label %40

40:                                               ; preds = %37, %27
  %41 = phi i16 [ %39, %37 ], [ %21, %27 ]
  %42 = getelementptr ptr, ptr %23, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %20

45:                                               ; preds = %40, %13, %8
  %46 = phi i16 [ 0, %13 ], [ 0, %8 ], [ %41, %40 ]
  %47 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 11
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, %47
  br i1 %49, label %146, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.usb_string_descriptor, ptr %1, i32 0, i32 2
  %52 = getelementptr %struct.usb_string_descriptor, ptr %1, i32 63, i32 2
  %53 = icmp ugt ptr %52, %51
  br label %59

54:                                               ; preds = %141, %98
  %55 = phi i16 [ %99, %98 ], [ %142, %141 ]
  %56 = phi i16 [ %100, %98 ], [ %143, %141 ]
  %57 = load ptr, ptr %62, align 4
  %58 = icmp eq ptr %57, %47
  br i1 %58, label %146, label %59

59:                                               ; preds = %54, %50
  %60 = phi i16 [ %46, %50 ], [ %55, %54 ]
  %61 = phi i16 [ %46, %50 ], [ %56, %54 ]
  %62 = phi ptr [ %48, %50 ], [ %57, %54 ]
  %63 = getelementptr i8, ptr %62, i32 -28
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %98, label %66

66:                                               ; preds = %59
  %67 = load ptr, ptr %64, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %98, label %69

69:                                               ; preds = %91, %66
  %70 = phi i16 [ %92, %91 ], [ %60, %66 ]
  %71 = phi i16 [ %93, %91 ], [ %61, %66 ]
  %72 = phi i16 [ %94, %91 ], [ %61, %66 ]
  %73 = phi ptr [ %96, %91 ], [ %67, %66 ]
  %74 = phi ptr [ %95, %91 ], [ %64, %66 ]
  %75 = load i16, ptr %73, align 4
  %76 = icmp ne i16 %72, 0
  %77 = and i1 %53, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %82, %69
  %79 = phi i16 [ %84, %82 ], [ %72, %69 ]
  %80 = phi ptr [ %83, %82 ], [ %51, %69 ]
  %81 = icmp eq i16 %79, %75
  br i1 %81, label %91, label %82

82:                                               ; preds = %78
  %83 = getelementptr i16, ptr %80, i32 1
  %84 = load i16, ptr %83, align 2
  %85 = icmp ne i16 %84, 0
  %86 = icmp ult ptr %83, %52
  %87 = and i1 %86, %85
  br i1 %87, label %78, label %88

88:                                               ; preds = %82, %69
  %89 = phi ptr [ %51, %69 ], [ %83, %82 ]
  store i16 %75, ptr %89, align 2
  %90 = load i16, ptr %51, align 2
  br label %91

91:                                               ; preds = %88, %78
  %92 = phi i16 [ %90, %88 ], [ %70, %78 ]
  %93 = phi i16 [ %90, %88 ], [ %71, %78 ]
  %94 = phi i16 [ %90, %88 ], [ %72, %78 ]
  %95 = getelementptr ptr, ptr %74, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %69

98:                                               ; preds = %91, %66, %59
  %99 = phi i16 [ %60, %66 ], [ %60, %59 ], [ %92, %91 ]
  %100 = phi i16 [ %61, %66 ], [ %61, %59 ], [ %93, %91 ]
  %101 = getelementptr i8, ptr %62, i32 8
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, %101
  br i1 %103, label %54, label %104

104:                                              ; preds = %141, %98
  %105 = phi i16 [ %142, %141 ], [ %99, %98 ]
  %106 = phi i16 [ %143, %141 ], [ %100, %98 ]
  %107 = phi ptr [ %144, %141 ], [ %102, %98 ]
  %108 = getelementptr i8, ptr %107, i32 -84
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %141, label %111

111:                                              ; preds = %104
  %112 = load ptr, ptr %109, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %141, label %114

114:                                              ; preds = %135, %111
  %115 = phi i16 [ %136, %135 ], [ %105, %111 ]
  %116 = phi i16 [ %137, %135 ], [ %105, %111 ]
  %117 = phi ptr [ %139, %135 ], [ %112, %111 ]
  %118 = phi ptr [ %138, %135 ], [ %109, %111 ]
  %119 = load i16, ptr %117, align 4
  %120 = icmp ne i16 %116, 0
  %121 = and i1 %53, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %126, %114
  %123 = phi i16 [ %128, %126 ], [ %116, %114 ]
  %124 = phi ptr [ %127, %126 ], [ %51, %114 ]
  %125 = icmp eq i16 %123, %119
  br i1 %125, label %135, label %126

126:                                              ; preds = %122
  %127 = getelementptr i16, ptr %124, i32 1
  %128 = load i16, ptr %127, align 2
  %129 = icmp ne i16 %128, 0
  %130 = icmp ult ptr %127, %52
  %131 = and i1 %130, %129
  br i1 %131, label %122, label %132

132:                                              ; preds = %126, %114
  %133 = phi ptr [ %51, %114 ], [ %127, %126 ]
  store i16 %119, ptr %133, align 2
  %134 = load i16, ptr %51, align 2
  br label %135

135:                                              ; preds = %132, %122
  %136 = phi i16 [ %134, %132 ], [ %115, %122 ]
  %137 = phi i16 [ %134, %132 ], [ %116, %122 ]
  %138 = getelementptr ptr, ptr %118, i32 1
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %114

141:                                              ; preds = %135, %111, %104
  %142 = phi i16 [ %105, %111 ], [ %105, %104 ], [ %136, %135 ]
  %143 = phi i16 [ %106, %111 ], [ %106, %104 ], [ %137, %135 ]
  %144 = load ptr, ptr %107, align 4
  %145 = icmp eq ptr %144, %101
  br i1 %145, label %54, label %104

146:                                              ; preds = %54, %45
  %147 = phi i16 [ %46, %45 ], [ %55, %54 ]
  %148 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 12
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, %148
  br i1 %150, label %192, label %151

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.usb_string_descriptor, ptr %1, i32 0, i32 2
  %153 = getelementptr %struct.usb_string_descriptor, ptr %1, i32 63, i32 2
  %154 = icmp ugt ptr %153, %152
  br label %155

155:                                              ; preds = %188, %151
  %156 = phi i16 [ %147, %151 ], [ %189, %188 ]
  %157 = phi ptr [ %149, %151 ], [ %190, %188 ]
  %158 = getelementptr inbounds %struct.usb_gadget_string_container, ptr %157, i32 0, i32 1
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %188, label %161

161:                                              ; preds = %182, %155
  %162 = phi i16 [ %183, %182 ], [ %156, %155 ]
  %163 = phi i16 [ %184, %182 ], [ %156, %155 ]
  %164 = phi ptr [ %186, %182 ], [ %159, %155 ]
  %165 = phi ptr [ %185, %182 ], [ %158, %155 ]
  %166 = load i16, ptr %164, align 4
  %167 = icmp ne i16 %163, 0
  %168 = and i1 %154, %167
  br i1 %168, label %169, label %179

169:                                              ; preds = %173, %161
  %170 = phi i16 [ %175, %173 ], [ %163, %161 ]
  %171 = phi ptr [ %174, %173 ], [ %152, %161 ]
  %172 = icmp eq i16 %170, %166
  br i1 %172, label %182, label %173

173:                                              ; preds = %169
  %174 = getelementptr i16, ptr %171, i32 1
  %175 = load i16, ptr %174, align 2
  %176 = icmp ne i16 %175, 0
  %177 = icmp ult ptr %174, %153
  %178 = and i1 %177, %176
  br i1 %178, label %169, label %179

179:                                              ; preds = %173, %161
  %180 = phi ptr [ %152, %161 ], [ %174, %173 ]
  store i16 %166, ptr %180, align 2
  %181 = load i16, ptr %152, align 2
  br label %182

182:                                              ; preds = %179, %169
  %183 = phi i16 [ %181, %179 ], [ %162, %169 ]
  %184 = phi i16 [ %181, %179 ], [ %163, %169 ]
  %185 = getelementptr ptr, ptr %165, i32 1
  %186 = load ptr, ptr %185, align 4
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %161

188:                                              ; preds = %182, %155
  %189 = phi i16 [ %156, %155 ], [ %183, %182 ]
  %190 = load ptr, ptr %157, align 4
  %191 = icmp eq ptr %190, %148
  br i1 %191, label %192, label %155

192:                                              ; preds = %188, %146
  br label %193

193:                                              ; preds = %198, %192
  %194 = phi i32 [ %199, %198 ], [ 0, %192 ]
  %195 = getelementptr %struct.usb_string_descriptor, ptr %1, i32 0, i32 2, i32 %194
  %196 = load i16, ptr %195, align 1
  %197 = icmp eq i16 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %193
  %199 = add nuw nsw i32 %194, 1
  %200 = icmp eq i32 %199, 127
  br i1 %200, label %203, label %193

201:                                              ; preds = %193
  %202 = icmp eq i32 %194, 0
  br i1 %202, label %323, label %203

203:                                              ; preds = %201, %198
  %204 = phi i32 [ %194, %201 ], [ 127, %198 ]
  %205 = trunc i32 %204 to i8
  %206 = shl i8 %205, 1
  %207 = add i8 %206, 2
  store i8 %207, ptr %1, align 1
  %208 = zext i8 %207 to i32
  br label %323

209:                                              ; preds = %4
  %210 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 8
  %211 = load i8, ptr %210, align 4
  %212 = and i8 %211, 1
  %213 = icmp ne i8 %212, 0
  %214 = icmp eq i16 %2, 0
  %215 = and i1 %214, %213
  %216 = icmp eq i32 %3, 238
  %217 = and i1 %216, %215
  br i1 %217, label %218, label %226

218:                                              ; preds = %209
  store i8 18, ptr %1, align 1
  %219 = getelementptr inbounds %struct.usb_os_string, ptr %1, i32 0, i32 1
  store i8 3, ptr %219, align 1
  %220 = getelementptr inbounds %struct.usb_os_string, ptr %1, i32 0, i32 2
  %221 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(14) %220, ptr noundef align 4 dereferenceable(14) %221, i32 14, i1 false)
  %222 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 5
  %223 = load i8, ptr %222, align 2
  %224 = getelementptr inbounds %struct.usb_os_string, ptr %1, i32 0, i32 3
  store i8 %223, ptr %224, align 1
  %225 = getelementptr inbounds %struct.usb_os_string, ptr %1, i32 0, i32 4
  store i8 0, ptr %225, align 1
  br label %323

226:                                              ; preds = %209
  %227 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 12
  %228 = load ptr, ptr %227, align 4
  %229 = icmp eq ptr %228, %227
  br i1 %229, label %250, label %230

230:                                              ; preds = %247, %226
  %231 = phi ptr [ %248, %247 ], [ %228, %226 ]
  %232 = getelementptr inbounds %struct.usb_gadget_string_container, ptr %231, i32 0, i32 1
  %233 = load ptr, ptr %232, align 4
  %234 = icmp eq ptr %233, null
  br i1 %234, label %247, label %235

235:                                              ; preds = %241, %230
  %236 = phi ptr [ %242, %241 ], [ %233, %230 ]
  %237 = phi ptr [ %238, %241 ], [ %232, %230 ]
  %238 = getelementptr ptr, ptr %237, i32 1
  %239 = load i16, ptr %236, align 4
  %240 = icmp eq i16 %239, %2
  br i1 %240, label %244, label %241

241:                                              ; preds = %244, %235
  %242 = load ptr, ptr %238, align 4
  %243 = icmp eq ptr %242, null
  br i1 %243, label %247, label %235

244:                                              ; preds = %235
  %245 = tail call i32 @usb_gadget_get_string(ptr noundef nonnull %236, i32 noundef %3, ptr noundef %1) #19
  %246 = icmp sgt i32 %245, 0
  br i1 %246, label %323, label %241

247:                                              ; preds = %241, %230
  %248 = load ptr, ptr %231, align 4
  %249 = icmp eq ptr %248, %227
  br i1 %249, label %250, label %230

250:                                              ; preds = %247, %226
  %251 = getelementptr inbounds %struct.usb_composite_driver, ptr %6, i32 0, i32 2
  %252 = load ptr, ptr %251, align 4
  %253 = icmp eq ptr %252, null
  br i1 %253, label %269, label %254

254:                                              ; preds = %250
  %255 = load ptr, ptr %252, align 4
  %256 = icmp eq ptr %255, null
  br i1 %256, label %269, label %257

257:                                              ; preds = %263, %254
  %258 = phi ptr [ %264, %263 ], [ %255, %254 ]
  %259 = phi ptr [ %260, %263 ], [ %252, %254 ]
  %260 = getelementptr ptr, ptr %259, i32 1
  %261 = load i16, ptr %258, align 4
  %262 = icmp eq i16 %261, %2
  br i1 %262, label %266, label %263

263:                                              ; preds = %266, %257
  %264 = load ptr, ptr %260, align 4
  %265 = icmp eq ptr %264, null
  br i1 %265, label %269, label %257

266:                                              ; preds = %257
  %267 = tail call i32 @usb_gadget_get_string(ptr noundef nonnull %258, i32 noundef %3, ptr noundef %1) #19
  %268 = icmp sgt i32 %267, 0
  br i1 %268, label %323, label %263

269:                                              ; preds = %263, %254, %250
  %270 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 11
  %271 = load ptr, ptr %270, align 4
  %272 = icmp eq ptr %271, %270
  br i1 %272, label %323, label %276

273:                                              ; preds = %320, %296
  %274 = load ptr, ptr %277, align 4
  %275 = icmp eq ptr %274, %270
  br i1 %275, label %323, label %276

276:                                              ; preds = %273, %269
  %277 = phi ptr [ %274, %273 ], [ %271, %269 ]
  %278 = getelementptr i8, ptr %277, i32 -28
  %279 = load ptr, ptr %278, align 4
  %280 = icmp eq ptr %279, null
  br i1 %280, label %296, label %281

281:                                              ; preds = %276
  %282 = load ptr, ptr %279, align 4
  %283 = icmp eq ptr %282, null
  br i1 %283, label %296, label %284

284:                                              ; preds = %290, %281
  %285 = phi ptr [ %291, %290 ], [ %282, %281 ]
  %286 = phi ptr [ %287, %290 ], [ %279, %281 ]
  %287 = getelementptr ptr, ptr %286, i32 1
  %288 = load i16, ptr %285, align 4
  %289 = icmp eq i16 %288, %2
  br i1 %289, label %293, label %290

290:                                              ; preds = %293, %284
  %291 = load ptr, ptr %287, align 4
  %292 = icmp eq ptr %291, null
  br i1 %292, label %296, label %284

293:                                              ; preds = %284
  %294 = tail call i32 @usb_gadget_get_string(ptr noundef nonnull %285, i32 noundef %3, ptr noundef %1) #19
  %295 = icmp sgt i32 %294, 0
  br i1 %295, label %323, label %290

296:                                              ; preds = %290, %281, %276
  %297 = getelementptr i8, ptr %277, i32 8
  %298 = load ptr, ptr %297, align 4
  %299 = icmp eq ptr %298, %297
  br i1 %299, label %273, label %300

300:                                              ; preds = %320, %296
  %301 = phi ptr [ %321, %320 ], [ %298, %296 ]
  %302 = getelementptr i8, ptr %301, i32 -84
  %303 = load ptr, ptr %302, align 4
  %304 = icmp eq ptr %303, null
  br i1 %304, label %320, label %305

305:                                              ; preds = %300
  %306 = load ptr, ptr %303, align 4
  %307 = icmp eq ptr %306, null
  br i1 %307, label %320, label %308

308:                                              ; preds = %314, %305
  %309 = phi ptr [ %315, %314 ], [ %306, %305 ]
  %310 = phi ptr [ %311, %314 ], [ %303, %305 ]
  %311 = getelementptr ptr, ptr %310, i32 1
  %312 = load i16, ptr %309, align 4
  %313 = icmp eq i16 %312, %2
  br i1 %313, label %317, label %314

314:                                              ; preds = %317, %308
  %315 = load ptr, ptr %311, align 4
  %316 = icmp eq ptr %315, null
  br i1 %316, label %320, label %308

317:                                              ; preds = %308
  %318 = tail call i32 @usb_gadget_get_string(ptr noundef nonnull %309, i32 noundef %3, ptr noundef %1) #19
  %319 = icmp sgt i32 %318, 0
  br i1 %319, label %323, label %314

320:                                              ; preds = %314, %305, %300
  %321 = load ptr, ptr %301, align 4
  %322 = icmp eq ptr %321, %297
  br i1 %322, label %273, label %300

323:                                              ; preds = %317, %293, %273, %269, %266, %244, %218, %203, %201
  %324 = phi i32 [ 18, %218 ], [ %208, %203 ], [ -22, %201 ], [ -22, %269 ], [ %318, %317 ], [ %294, %293 ], [ -22, %273 ], [ %267, %266 ], [ %245, %244 ]
  ret i32 %324
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bos_desc(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.usb_dcd_config_params, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %2, i8 0, i32 6, i1 false), !annotation !14
  %3 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  store i8 5, ptr %5, align 1
  %6 = getelementptr inbounds %struct.usb_bos_descriptor, ptr %5, i32 0, i32 1
  store i8 15, ptr %6, align 1
  %7 = getelementptr inbounds %struct.usb_bos_descriptor, ptr %5, i32 0, i32 2
  store i16 5, ptr %7, align 1
  %8 = getelementptr inbounds %struct.usb_bos_descriptor, ptr %5, i32 0, i32 3
  store i8 0, ptr %8, align 1
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.usb_gadget, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.usb_gadget_ops, ptr %11, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  call void %13(ptr noundef %9, ptr noundef nonnull %2) #19
  %16 = getelementptr inbounds %struct.usb_dcd_config_params, ptr %2, i32 0, i32 2
  %17 = load i8, ptr %16, align 2
  %18 = getelementptr inbounds %struct.usb_dcd_config_params, ptr %2, i32 0, i32 3
  %19 = load i8, ptr %18, align 1
  br label %24

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.usb_dcd_config_params, ptr %2, i32 0, i32 2
  store i8 -1, ptr %21, align 2
  %22 = getelementptr inbounds %struct.usb_dcd_config_params, ptr %2, i32 0, i32 3
  store i8 -1, ptr %22, align 1
  store i8 1, ptr %2, align 2
  %23 = getelementptr inbounds %struct.usb_dcd_config_params, ptr %2, i32 0, i32 1
  store i16 500, ptr %23, align 2
  br label %24

24:                                               ; preds = %20, %15
  %25 = phi i8 [ -1, %20 ], [ %19, %15 ]
  %26 = phi i8 [ -1, %20 ], [ %17, %15 ]
  %27 = icmp eq i8 %26, -1
  %28 = and i8 %26, 15
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 8
  %31 = icmp eq i8 %25, -1
  %32 = and i8 %25, 15
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 12
  %35 = or i32 %34, 16
  %36 = select i1 %31, i32 0, i32 %35
  %37 = load ptr, ptr %3, align 4
  %38 = load ptr, ptr %37, align 4
  %39 = load i16, ptr %7, align 1
  %40 = zext i16 %39 to i32
  %41 = getelementptr i8, ptr %38, i32 %40
  %42 = load i8, ptr %8, align 1
  %43 = add i8 %42, 1
  store i8 %43, ptr %8, align 1
  %44 = add i16 %39, 7
  store i16 %44, ptr %7, align 2
  store i8 7, ptr %41, align 1
  %45 = getelementptr inbounds %struct.usb_ext_cap_descriptor, ptr %41, i32 0, i32 1
  store i8 16, ptr %45, align 1
  %46 = getelementptr inbounds %struct.usb_ext_cap_descriptor, ptr %41, i32 0, i32 2
  store i8 2, ptr %46, align 1
  %47 = or i32 %30, 14
  %48 = select i1 %27, i32 6, i32 %47
  %49 = or i32 %48, %36
  %50 = getelementptr inbounds %struct.usb_ext_cap_descriptor, ptr %41, i32 0, i32 3
  store i32 %49, ptr %50, align 1
  %51 = load ptr, ptr %0, align 4
  %52 = getelementptr inbounds %struct.usb_gadget, ptr %51, i32 0, i32 6
  %53 = load i32, ptr %52, align 8
  %54 = icmp ult i32 %53, 5
  br i1 %54, label %121, label %55

55:                                               ; preds = %24
  %56 = load ptr, ptr %3, align 4
  %57 = load ptr, ptr %56, align 4
  %58 = load i16, ptr %7, align 1
  %59 = zext i16 %58 to i32
  %60 = getelementptr i8, ptr %57, i32 %59
  %61 = load i8, ptr %8, align 1
  %62 = add i8 %61, 1
  store i8 %62, ptr %8, align 1
  %63 = add i16 %58, 10
  store i16 %63, ptr %7, align 2
  store i8 10, ptr %60, align 1
  %64 = getelementptr inbounds %struct.usb_ss_cap_descriptor, ptr %60, i32 0, i32 1
  store i8 16, ptr %64, align 1
  %65 = getelementptr inbounds %struct.usb_ss_cap_descriptor, ptr %60, i32 0, i32 2
  store i8 3, ptr %65, align 1
  %66 = getelementptr inbounds %struct.usb_ss_cap_descriptor, ptr %60, i32 0, i32 3
  store i8 0, ptr %66, align 1
  %67 = getelementptr inbounds %struct.usb_ss_cap_descriptor, ptr %60, i32 0, i32 4
  store i16 15, ptr %67, align 1
  %68 = getelementptr inbounds %struct.usb_ss_cap_descriptor, ptr %60, i32 0, i32 5
  store i8 1, ptr %68, align 1
  %69 = load i8, ptr %2, align 2
  %70 = getelementptr inbounds %struct.usb_ss_cap_descriptor, ptr %60, i32 0, i32 6
  store i8 %69, ptr %70, align 1
  %71 = getelementptr inbounds %struct.usb_dcd_config_params, ptr %2, i32 0, i32 1
  %72 = load i16, ptr %71, align 2
  %73 = getelementptr inbounds %struct.usb_ss_cap_descriptor, ptr %60, i32 0, i32 7
  store i16 %72, ptr %73, align 1
  %74 = load ptr, ptr %0, align 4
  %75 = getelementptr inbounds %struct.usb_gadget, ptr %74, i32 0, i32 6
  %76 = load i32, ptr %75, align 8
  %77 = icmp ult i32 %76, 6
  br i1 %77, label %121, label %78

78:                                               ; preds = %55
  %79 = getelementptr inbounds %struct.usb_gadget, ptr %74, i32 0, i32 8
  %80 = load i32, ptr %79, align 8
  %81 = icmp eq i32 %80, 3
  %82 = select i1 %81, i32 3, i32 1
  %83 = add nuw nsw i32 %82, 1
  %84 = load ptr, ptr %3, align 4
  %85 = load ptr, ptr %84, align 4
  %86 = load i16, ptr %7, align 1
  %87 = zext i16 %86 to i32
  %88 = getelementptr i8, ptr %85, i32 %87
  %89 = load i8, ptr %8, align 1
  %90 = add i8 %89, 1
  store i8 %90, ptr %8, align 1
  %91 = shl nuw nsw i32 %83, 2
  %92 = add nuw nsw i32 %91, 12
  %93 = trunc i32 %92 to i16
  %94 = add i16 %86, %93
  store i16 %94, ptr %7, align 2
  %95 = trunc i32 %92 to i8
  store i8 %95, ptr %88, align 1
  %96 = getelementptr inbounds %struct.usb_ssp_cap_descriptor, ptr %88, i32 0, i32 1
  store i8 16, ptr %96, align 1
  %97 = getelementptr inbounds %struct.usb_ssp_cap_descriptor, ptr %88, i32 0, i32 2
  store i8 10, ptr %97, align 1
  %98 = getelementptr inbounds %struct.usb_ssp_cap_descriptor, ptr %88, i32 0, i32 3
  store i8 0, ptr %98, align 1
  %99 = getelementptr inbounds %struct.usb_ssp_cap_descriptor, ptr %88, i32 0, i32 6
  store i16 0, ptr %99, align 1
  %100 = shl nuw nsw i32 %83, 4
  %101 = add nuw nsw i32 %100, 480
  %102 = and i32 %101, 480
  %103 = or i32 %102, %82
  %104 = getelementptr inbounds %struct.usb_ssp_cap_descriptor, ptr %88, i32 0, i32 4
  store i32 %103, ptr %104, align 1
  %105 = getelementptr inbounds %struct.usb_ssp_cap_descriptor, ptr %88, i32 0, i32 5
  store i16 4352, ptr %105, align 1
  %106 = getelementptr inbounds %struct.usb_ssp_cap_descriptor, ptr %88, i32 0, i32 7
  %107 = load ptr, ptr %0, align 4
  %108 = getelementptr inbounds %struct.usb_gadget, ptr %107, i32 0, i32 8
  %109 = load i32, ptr %108, align 8
  %110 = icmp ult i32 %109, 2
  %111 = select i1 %110, i32 671792, i32 344112
  store i32 %111, ptr %106, align 1
  %112 = load ptr, ptr %0, align 4
  %113 = getelementptr inbounds %struct.usb_gadget, ptr %112, i32 0, i32 8
  %114 = load i32, ptr %113, align 8
  %115 = icmp ult i32 %114, 2
  %116 = select i1 %115, i32 671920, i32 344240
  %117 = getelementptr [1 x i32], ptr %106, i32 0, i32 1
  store i32 %116, ptr %117, align 1
  br i1 %81, label %118, label %121

118:                                              ; preds = %78
  %119 = getelementptr [1 x i32], ptr %106, i32 0, i32 2
  store i32 671793, ptr %119, align 1
  %120 = getelementptr [1 x i32], ptr %106, i32 0, i32 3
  store i32 671921, ptr %120, align 1
  br label %121

121:                                              ; preds = %118, %78, %55, %24
  %122 = load i16, ptr %7, align 1
  %123 = zext i16 %122 to i32
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #19
  ret i32 %123
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_config(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.usb_gadget, ptr %3, i32 0, i32 17
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 100, i32 8
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %47, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 11
  br label %12

12:                                               ; preds = %16, %10
  %13 = phi ptr [ %11, %10 ], [ %14, %16 ]
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %11
  br i1 %15, label %180, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %14, i32 -12
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %21, label %12

21:                                               ; preds = %16
  %22 = getelementptr i8, ptr %14, i32 -32
  %23 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %45, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.usb_configuration, ptr %24, i32 0, i32 11
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %43, label %30

30:                                               ; preds = %37, %26
  %31 = phi ptr [ %39, %37 ], [ %28, %26 ]
  %32 = getelementptr i8, ptr %31, i32 -28
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = getelementptr i8, ptr %31, i32 -88
  tail call void %33(ptr noundef %36) #19
  br label %37

37:                                               ; preds = %35, %30
  %38 = getelementptr i8, ptr %31, i32 8
  store i32 0, ptr %38, align 4
  %39 = load ptr, ptr %31, align 4
  %40 = load ptr, ptr %23, align 4
  %41 = getelementptr inbounds %struct.usb_configuration, ptr %40, i32 0, i32 11
  %42 = icmp eq ptr %39, %41
  br i1 %42, label %43, label %30

43:                                               ; preds = %37, %26
  store ptr null, ptr %23, align 4
  %44 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 18
  store i32 0, ptr %44, align 4
  br label %45

45:                                               ; preds = %43, %21
  %46 = icmp eq ptr %22, null
  br i1 %46, label %180, label %70

47:                                               ; preds = %2
  %48 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %180, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.usb_configuration, ptr %49, i32 0, i32 11
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, %52
  br i1 %54, label %68, label %55

55:                                               ; preds = %62, %51
  %56 = phi ptr [ %64, %62 ], [ %53, %51 ]
  %57 = getelementptr i8, ptr %56, i32 -28
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = getelementptr i8, ptr %56, i32 -88
  tail call void %58(ptr noundef %61) #19
  br label %62

62:                                               ; preds = %60, %55
  %63 = getelementptr i8, ptr %56, i32 8
  store i32 0, ptr %63, align 4
  %64 = load ptr, ptr %56, align 4
  %65 = load ptr, ptr %48, align 4
  %66 = getelementptr inbounds %struct.usb_configuration, ptr %65, i32 0, i32 11
  %67 = icmp eq ptr %64, %66
  br i1 %67, label %68, label %55

68:                                               ; preds = %62, %51
  store ptr null, ptr %48, align 4
  %69 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 18
  br label %177

70:                                               ; preds = %45
  tail call void @usb_gadget_set_state(ptr noundef %3, i32 noundef 7) #19
  store ptr %22, ptr %23, align 4
  %71 = getelementptr i8, ptr %14, i32 20
  %72 = getelementptr inbounds %struct.usb_gadget, ptr %3, i32 0, i32 5
  %73 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 18
  %74 = load ptr, ptr %71, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %155, label %80

76:                                               ; preds = %152
  %77 = getelementptr [16 x ptr], ptr %71, i32 0, i32 %153
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %155, label %80

80:                                               ; preds = %76, %70
  %81 = phi ptr [ %78, %76 ], [ %74, %70 ]
  %82 = phi i32 [ %153, %76 ], [ 0, %70 ]
  %83 = load i32, ptr %72, align 4
  switch i32 %83, label %96 [
    i32 6, label %84
    i32 5, label %88
    i32 3, label %92
  ]

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.usb_function, ptr %81, i32 0, i32 5
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %99

88:                                               ; preds = %84, %80
  %89 = getelementptr inbounds %struct.usb_function, ptr %81, i32 0, i32 4
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %88, %80
  %93 = getelementptr inbounds %struct.usb_function, ptr %81, i32 0, i32 3
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %92, %80
  %97 = getelementptr inbounds %struct.usb_function, ptr %81, i32 0, i32 2
  %98 = load ptr, ptr %97, align 4
  br label %99

99:                                               ; preds = %96, %92, %88, %84
  %100 = phi ptr [ %98, %96 ], [ %94, %92 ], [ %90, %88 ], [ %86, %84 ]
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %123, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.usb_function, ptr %81, i32 0, i32 23
  br label %105

105:                                              ; preds = %119, %103
  %106 = phi ptr [ %101, %103 ], [ %121, %119 ]
  %107 = phi ptr [ %100, %103 ], [ %120, %119 ]
  %108 = getelementptr inbounds %struct.usb_descriptor_header, ptr %106, i32 0, i32 1
  %109 = load i8, ptr %108, align 1
  %110 = icmp eq i8 %109, 5
  br i1 %110, label %111, label %119

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %106, i32 0, i32 2
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i32
  %115 = lshr i32 %114, 3
  %116 = and i32 %115, 16
  %117 = and i32 %114, 15
  %118 = or i32 %116, %117
  tail call void @_set_bit(i32 noundef %118, ptr noundef %104) #19
  br label %119

119:                                              ; preds = %111, %105
  %120 = getelementptr ptr, ptr %107, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %105

123:                                              ; preds = %119, %99
  %124 = getelementptr inbounds %struct.usb_function, ptr %81, i32 0, i32 13
  %125 = load ptr, ptr %124, align 4
  %126 = tail call i32 %125(ptr noundef nonnull %81, i32 noundef %82, i32 noundef 0) #19
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %146

128:                                              ; preds = %123
  %129 = load ptr, ptr %23, align 4
  %130 = getelementptr inbounds %struct.usb_configuration, ptr %129, i32 0, i32 11
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, %130
  br i1 %132, label %151, label %133

133:                                              ; preds = %140, %128
  %134 = phi ptr [ %142, %140 ], [ %131, %128 ]
  %135 = getelementptr i8, ptr %134, i32 -28
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %140, label %138

138:                                              ; preds = %133
  %139 = getelementptr i8, ptr %134, i32 -88
  tail call void %136(ptr noundef %139) #19
  br label %140

140:                                              ; preds = %138, %133
  %141 = getelementptr i8, ptr %134, i32 8
  store i32 0, ptr %141, align 4
  %142 = load ptr, ptr %134, align 4
  %143 = load ptr, ptr %23, align 4
  %144 = getelementptr inbounds %struct.usb_configuration, ptr %143, i32 0, i32 11
  %145 = icmp eq ptr %142, %144
  br i1 %145, label %151, label %133

146:                                              ; preds = %123
  %147 = icmp eq i32 %126, 32767
  br i1 %147, label %148, label %152

148:                                              ; preds = %146
  %149 = load i32, ptr %73, align 4
  %150 = add i32 %149, 1
  store i32 %150, ptr %73, align 4
  br label %152

151:                                              ; preds = %140, %128
  store ptr null, ptr %23, align 4
  br label %177

152:                                              ; preds = %148, %146
  %153 = add nuw nsw i32 %82, 1
  %154 = icmp eq i32 %153, 16
  br i1 %154, label %155, label %76

155:                                              ; preds = %152, %76, %70
  %156 = phi i32 [ 0, %70 ], [ %126, %76 ], [ %126, %152 ]
  %157 = getelementptr i8, ptr %14, i32 -8
  %158 = load i16, ptr %157, align 4
  %159 = icmp eq i16 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %155
  %161 = getelementptr i8, ptr %14, i32 -10
  %162 = load i8, ptr %161, align 2
  %163 = and i8 %162, 64
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %167, label %165

165:                                              ; preds = %160, %155
  %166 = zext i16 %158 to i32
  br label %167

167:                                              ; preds = %165, %160
  %168 = phi i32 [ %166, %165 ], [ 2, %160 ]
  %169 = load i32, ptr %72, align 4
  %170 = icmp ult i32 %169, 5
  %171 = select i1 %170, i32 500, i32 900
  %172 = tail call i32 @llvm.umin.i32(i32 %171, i32 %168)
  %173 = icmp ult i32 %172, 101
  br i1 %173, label %180, label %174

174:                                              ; preds = %167
  %175 = tail call i32 @usb_gadget_clear_selfpowered(ptr noundef %3) #19
  %176 = tail call i32 @usb_gadget_vbus_draw(ptr noundef %3, i32 noundef %172) #19
  br label %186

177:                                              ; preds = %151, %68
  %178 = phi ptr [ %69, %68 ], [ %73, %151 ]
  %179 = phi i32 [ 0, %68 ], [ %126, %151 ]
  store i32 0, ptr %178, align 4
  br label %180

180:                                              ; preds = %177, %167, %47, %45, %12
  %181 = phi i32 [ %156, %167 ], [ 0, %47 ], [ 0, %45 ], [ %179, %177 ], [ -22, %12 ]
  %182 = phi i32 [ %172, %167 ], [ %8, %47 ], [ %8, %45 ], [ %8, %177 ], [ %8, %12 ]
  %183 = tail call i32 @usb_gadget_set_selfpowered(ptr noundef %3) #19
  %184 = tail call i32 @usb_gadget_vbus_draw(ptr noundef %3, i32 noundef %182) #19
  %185 = icmp sgt i32 %181, -1
  br i1 %185, label %186, label %192

186:                                              ; preds = %180, %174
  %187 = phi i32 [ %156, %174 ], [ %181, %180 ]
  %188 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 18
  %189 = load i32, ptr %188, align 4
  %190 = icmp eq i32 %189, 0
  %191 = select i1 %190, i32 %187, i32 32767
  br label %192

192:                                              ; preds = %186, %180
  %193 = phi i32 [ %181, %180 ], [ %191, %186 ]
  ret i32 %193
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @count_ext_compat(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_configuration, ptr %0, i32 0, i32 12
  %3 = load i8, ptr %2, align 4
  %4 = zext i8 %3 to i32
  %5 = icmp eq i8 %3, 0
  br i1 %5, label %43, label %6

6:                                                ; preds = %36, %1
  %7 = phi i32 [ %37, %36 ], [ 0, %1 ]
  %8 = phi i32 [ %38, %36 ], [ 0, %1 ]
  %9 = getelementptr %struct.usb_configuration, ptr %0, i32 0, i32 14, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.usb_function, ptr %10, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %36, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.usb_function, ptr %10, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %32, %14
  %18 = phi i32 [ 0, %14 ], [ %34, %32 ]
  %19 = phi i32 [ %7, %14 ], [ %33, %32 ]
  %20 = getelementptr %struct.usb_os_desc_table, ptr %16, i32 %18
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %8, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = getelementptr %struct.usb_os_desc_table, ptr %16, i32 %18, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %25, align 4
  %29 = icmp ne ptr %28, null
  %30 = zext i1 %29 to i32
  %31 = add i32 %19, %30
  br label %32

32:                                               ; preds = %27, %23, %17
  %33 = phi i32 [ %19, %17 ], [ %19, %23 ], [ %31, %27 ]
  %34 = add nuw i32 %18, 1
  %35 = icmp eq i32 %34, %12
  br i1 %35, label %36, label %17

36:                                               ; preds = %32, %6
  %37 = phi i32 [ %7, %6 ], [ %33, %32 ]
  %38 = add nuw nsw i32 %8, 1
  %39 = icmp eq i32 %38, %4
  br i1 %39, label %40, label %6

40:                                               ; preds = %36
  %41 = icmp sgt i32 %37, 255
  br i1 %41, label %42, label %43, !prof !8

42:                                               ; preds = %40
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/composite.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1544, 0\0A.popsection", ""() #19, !srcloc !15
  unreachable

43:                                               ; preds = %40, %1
  %44 = phi i32 [ %37, %40 ], [ 0, %1 ]
  ret i32 %44
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fill_ext_compat(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.usb_configuration, ptr %0, i32 0, i32 12
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %65, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %1, i32 16
  br label %8

8:                                                ; preds = %58, %6
  %9 = phi i8 [ %59, %58 ], [ %4, %6 ]
  %10 = phi i32 [ %61, %58 ], [ 16, %6 ]
  %11 = phi i32 [ %62, %58 ], [ 0, %6 ]
  %12 = phi ptr [ %60, %58 ], [ %7, %6 ]
  %13 = getelementptr %struct.usb_configuration, ptr %0, i32 0, i32 14, i32 %11
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.usb_function, ptr %14, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %58, label %18

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.usb_function, ptr %14, i32 0, i32 7
  %20 = trunc i32 %11 to i8
  br label %21

21:                                               ; preds = %50, %18
  %22 = phi i32 [ %16, %18 ], [ %51, %50 ]
  %23 = phi i32 [ 0, %18 ], [ %54, %50 ]
  %24 = phi i32 [ %10, %18 ], [ %53, %50 ]
  %25 = phi ptr [ %12, %18 ], [ %52, %50 ]
  %26 = load ptr, ptr %19, align 4
  %27 = getelementptr %struct.usb_os_desc_table, ptr %26, i32 %23
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %11, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %21
  %31 = getelementptr %struct.usb_os_desc_table, ptr %26, i32 %23, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %32, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = getelementptr i8, ptr %25, i32 1
  store i8 %20, ptr %25, align 1
  %39 = getelementptr i8, ptr %25, i32 2
  store i8 1, ptr %38, align 1
  %40 = load ptr, ptr %32, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %39, ptr noundef align 1 dereferenceable(16) %40, i32 16, i1 false)
  br label %43

41:                                               ; preds = %34, %30
  %42 = getelementptr i8, ptr %25, i32 1
  store i8 1, ptr %42, align 1
  br label %43

43:                                               ; preds = %41, %37
  %44 = add i32 %24, 24
  %45 = add i32 %24, 48
  %46 = icmp sgt i32 %45, 4095
  br i1 %46, label %65, label %47

47:                                               ; preds = %43
  %48 = getelementptr i8, ptr %25, i32 24
  %49 = load i32, ptr %15, align 4
  br label %50

50:                                               ; preds = %47, %21
  %51 = phi i32 [ %49, %47 ], [ %22, %21 ]
  %52 = phi ptr [ %48, %47 ], [ %25, %21 ]
  %53 = phi i32 [ %44, %47 ], [ %24, %21 ]
  %54 = add nuw i32 %23, 1
  %55 = icmp ult i32 %54, %51
  br i1 %55, label %21, label %56

56:                                               ; preds = %50
  %57 = load i8, ptr %3, align 4
  br label %58

58:                                               ; preds = %56, %8
  %59 = phi i8 [ %9, %8 ], [ %57, %56 ]
  %60 = phi ptr [ %12, %8 ], [ %52, %56 ]
  %61 = phi i32 [ %10, %8 ], [ %53, %56 ]
  %62 = add nuw nsw i32 %11, 1
  %63 = zext i8 %59 to i32
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %8, label %65

65:                                               ; preds = %58, %43, %2
  %66 = phi i32 [ 16, %2 ], [ %44, %43 ], [ %61, %58 ]
  ret i32 %66
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @count_ext_prop(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 {
  %3 = getelementptr %struct.usb_configuration, ptr %0, i32 0, i32 14, i32 %1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_function, ptr %4, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.usb_function, ptr %4, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %26, %8
  %12 = phi i32 [ 0, %8 ], [ %27, %26 ]
  %13 = getelementptr %struct.usb_os_desc_table, ptr %10, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = getelementptr %struct.usb_os_desc_table, ptr %10, i32 %12, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.usb_os_desc, ptr %18, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  br label %29

26:                                               ; preds = %20, %16, %11
  %27 = add nuw i32 %12, 1
  %28 = icmp eq i32 %27, %6
  br i1 %28, label %29, label %11

29:                                               ; preds = %26, %23, %2
  %30 = phi i32 [ %25, %23 ], [ 0, %2 ], [ 0, %26 ]
  ret i32 %30
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @len_ext_prop(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #11 {
  %3 = getelementptr %struct.usb_configuration, ptr %0, i32 0, i32 14, i32 %1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_function, ptr %4, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.usb_function, ptr %4, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %25, %8
  %12 = phi i32 [ 0, %8 ], [ %26, %25 ]
  %13 = getelementptr %struct.usb_os_desc_table, ptr %10, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = getelementptr %struct.usb_os_desc_table, ptr %10, i32 %12, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.usb_os_desc, ptr %18, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 10
  %24 = tail call i32 @llvm.smin.i32(i32 %23, i32 4096)
  br label %28

25:                                               ; preds = %16, %11
  %26 = add nuw i32 %12, 1
  %27 = icmp eq i32 %26, %6
  br i1 %27, label %28, label %11

28:                                               ; preds = %25, %20, %2
  %29 = phi i32 [ %24, %20 ], [ 10, %2 ], [ 10, %25 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fill_ext_prop(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr %struct.usb_configuration, ptr %0, i32 0, i32 14, i32 %1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_function, ptr %5, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %97, label %9

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %2, i32 10
  %11 = getelementptr inbounds %struct.usb_function, ptr %5, i32 0, i32 7
  br label %12

12:                                               ; preds = %91, %9
  %13 = phi i32 [ %7, %9 ], [ %92, %91 ]
  %14 = phi ptr [ %10, %9 ], [ %94, %91 ]
  %15 = phi i32 [ 10, %9 ], [ %93, %91 ]
  %16 = phi i32 [ 0, %9 ], [ %95, %91 ]
  %17 = load ptr, ptr %11, align 4
  %18 = getelementptr %struct.usb_os_desc_table, ptr %17, i32 %16
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %21, label %91

21:                                               ; preds = %12
  %22 = getelementptr %struct.usb_os_desc_table, ptr %17, i32 %16, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %91, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.usb_os_desc, ptr %23, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %91, label %29

29:                                               ; preds = %85, %25
  %30 = phi ptr [ %87, %85 ], [ %27, %25 ]
  %31 = phi ptr [ %86, %85 ], [ %14, %25 ]
  %32 = phi i32 [ %39, %85 ], [ %15, %25 ]
  %33 = getelementptr inbounds %struct.usb_os_desc_ext_prop, ptr %30, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.usb_os_desc_ext_prop, ptr %30, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %34, 14
  %38 = add i32 %37, %36
  %39 = add i32 %38, %32
  %40 = icmp sgt i32 %39, 4095
  br i1 %40, label %97, label %41

41:                                               ; preds = %29
  store i32 %38, ptr %31, align 1
  %42 = getelementptr inbounds %struct.usb_os_desc_ext_prop, ptr %30, i32 0, i32 1
  %43 = load i8, ptr %42, align 4
  %44 = zext i8 %43 to i32
  %45 = getelementptr i8, ptr %31, i32 4
  store i32 %44, ptr %45, align 1
  %46 = getelementptr inbounds %struct.usb_os_desc_ext_prop, ptr %30, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = load i32, ptr %35, align 4
  %49 = trunc i32 %48 to i16
  %50 = getelementptr i8, ptr %31, i32 8
  store i16 %49, ptr %50, align 1
  %51 = tail call i32 @strlen(ptr noundef %47) #19
  %52 = getelementptr i8, ptr %31, i32 10
  %53 = add i32 %48, -2
  %54 = tail call i32 @utf8s_to_utf16s(ptr noundef %47, i32 noundef %51, i32 noundef 1, ptr noundef %52, i32 noundef %53) #19
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %97, label %56

56:                                               ; preds = %41
  %57 = add i32 %48, 8
  %58 = getelementptr i8, ptr %31, i32 %57
  store i16 0, ptr %58, align 1
  %59 = icmp slt i32 %48, 0
  br i1 %59, label %97, label %60

60:                                               ; preds = %56
  %61 = load i8, ptr %42, align 4
  switch i8 %61, label %97 [
    i8 1, label %62
    i8 2, label %62
    i8 6, label %62
    i8 3, label %77
  ]

62:                                               ; preds = %60, %60, %60
  %63 = getelementptr inbounds %struct.usb_os_desc_ext_prop, ptr %30, i32 0, i32 5
  %64 = load ptr, ptr %63, align 4
  %65 = load i32, ptr %33, align 4
  %66 = add nuw i32 %48, 10
  %67 = getelementptr i8, ptr %31, i32 %66
  store i32 %65, ptr %67, align 1
  %68 = ashr i32 %65, 1
  %69 = add nuw i32 %48, 14
  %70 = getelementptr i8, ptr %31, i32 %69
  %71 = add i32 %65, -2
  %72 = tail call i32 @utf8s_to_utf16s(ptr noundef %64, i32 noundef %68, i32 noundef 1, ptr noundef %70, i32 noundef %71) #19
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %62
  %75 = add i32 %71, %69
  %76 = getelementptr i8, ptr %31, i32 %75
  store i16 0, ptr %76, align 1
  br label %85

77:                                               ; preds = %60
  %78 = getelementptr inbounds %struct.usb_os_desc_ext_prop, ptr %30, i32 0, i32 5
  %79 = load ptr, ptr %78, align 4
  %80 = load i32, ptr %33, align 4
  %81 = add nuw i32 %48, 10
  %82 = getelementptr i8, ptr %31, i32 %81
  store i32 %80, ptr %82, align 1
  %83 = add nuw i32 %48, 14
  %84 = getelementptr i8, ptr %31, i32 %83
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %84, ptr align 1 %79, i32 %80, i1 false) #19
  br label %85

85:                                               ; preds = %77, %74, %62
  %86 = getelementptr i8, ptr %31, i32 %38
  %87 = load ptr, ptr %30, align 4
  %88 = icmp eq ptr %87, %26
  br i1 %88, label %89, label %29

89:                                               ; preds = %85
  %90 = load i32, ptr %6, align 4
  br label %91

91:                                               ; preds = %89, %25, %21, %12
  %92 = phi i32 [ %13, %12 ], [ %13, %21 ], [ %13, %25 ], [ %90, %89 ]
  %93 = phi i32 [ %15, %12 ], [ %15, %21 ], [ %15, %25 ], [ %39, %89 ]
  %94 = phi ptr [ %14, %12 ], [ %14, %21 ], [ %14, %25 ], [ %86, %89 ]
  %95 = add nuw i32 %16, 1
  %96 = icmp ult i32 %95, %92
  br i1 %96, label %12, label %97

97:                                               ; preds = %91, %60, %56, %41, %29, %3
  %98 = phi i32 [ 10, %3 ], [ %54, %41 ], [ -22, %60 ], [ %48, %56 ], [ %32, %29 ], [ %93, %91 ]
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @composite_disconnect(ptr noundef %0) #0 {
  %2 = tail call i32 @usb_gadget_vbus_draw(ptr noundef %0, i32 noundef 0) #19
  %3 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 19
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #19
  %7 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 8
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, -3
  store i8 %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.usb_configuration, ptr %11, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %30, label %17

17:                                               ; preds = %24, %13
  %18 = phi ptr [ %26, %24 ], [ %15, %13 ]
  %19 = getelementptr i8, ptr %18, i32 -28
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = getelementptr i8, ptr %18, i32 -88
  tail call void %20(ptr noundef %23) #19
  br label %24

24:                                               ; preds = %22, %17
  %25 = getelementptr i8, ptr %18, i32 8
  store i32 0, ptr %25, align 4
  %26 = load ptr, ptr %18, align 4
  %27 = load ptr, ptr %10, align 4
  %28 = getelementptr inbounds %struct.usb_configuration, ptr %27, i32 0, i32 11
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %30, label %17

30:                                               ; preds = %24, %13
  store ptr null, ptr %10, align 4
  %31 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 18
  store i32 0, ptr %31, align 4
  br label %32

32:                                               ; preds = %30, %1
  %33 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 13
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.usb_composite_driver, ptr %34, i32 0, i32 7
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  tail call void %36(ptr noundef %4) #19
  br label %39

39:                                               ; preds = %38, %32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_vbus_draw(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @composite_reset(ptr noundef %0) #0 {
  %2 = tail call i32 @usb_gadget_vbus_draw(ptr noundef %0, i32 noundef 100) #19
  %3 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 19
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #19
  %7 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 8
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, -3
  store i8 %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.usb_configuration, ptr %11, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %30, label %17

17:                                               ; preds = %24, %13
  %18 = phi ptr [ %26, %24 ], [ %15, %13 ]
  %19 = getelementptr i8, ptr %18, i32 -28
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = getelementptr i8, ptr %18, i32 -88
  tail call void %20(ptr noundef %23) #19
  br label %24

24:                                               ; preds = %22, %17
  %25 = getelementptr i8, ptr %18, i32 8
  store i32 0, ptr %25, align 4
  %26 = load ptr, ptr %18, align 4
  %27 = load ptr, ptr %10, align 4
  %28 = getelementptr inbounds %struct.usb_configuration, ptr %27, i32 0, i32 11
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %30, label %17

30:                                               ; preds = %24, %13
  store ptr null, ptr %10, align 4
  %31 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 18
  store i32 0, ptr %31, align 4
  br label %32

32:                                               ; preds = %30, %1
  %33 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 13
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.usb_composite_driver, ptr %34, i32 0, i32 7
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  tail call void %36(ptr noundef %4) #19
  br label %39

39:                                               ; preds = %38, %32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @composite_dev_prepare(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.usb_gadget, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @usb_ep_alloc_request(ptr noundef %5, i32 noundef 3264) #19
  %7 = getelementptr inbounds %struct.usb_composite_dev, ptr %1, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  %8 = icmp eq ptr %6, null
  br i1 %8, label %35, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 4096) #21
  %12 = load ptr, ptr %7, align 4
  store ptr %11, ptr %12, align 4
  %13 = load ptr, ptr %7, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.usb_gadget, ptr %3, i32 0, i32 11
  %18 = tail call i32 @device_create_file(ptr noundef %17, ptr noundef nonnull @dev_attr_suspended) #19
  %19 = icmp eq i32 %18, 0
  %20 = load ptr, ptr %7, align 4
  br i1 %19, label %21, label %28

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.usb_request, ptr %20, i32 0, i32 7
  store ptr @composite_setup_complete, ptr %22, align 4
  %23 = load ptr, ptr %7, align 4
  %24 = getelementptr inbounds %struct.usb_request, ptr %23, i32 0, i32 8
  store ptr %1, ptr %24, align 4
  %25 = load ptr, ptr %4, align 8
  store ptr %1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.usb_composite_dev, ptr %1, i32 0, i32 13
  store ptr %0, ptr %26, align 4
  %27 = tail call i32 @usb_gadget_set_selfpowered(ptr noundef %3) #19
  tail call void @usb_ep_autoconfig_reset(ptr noundef %3) #19
  br label %35

28:                                               ; preds = %16
  %29 = load ptr, ptr %20, align 4
  tail call void @kfree(ptr noundef %29) #19
  %30 = load ptr, ptr %7, align 4
  br label %31

31:                                               ; preds = %28, %9
  %32 = phi ptr [ %30, %28 ], [ %13, %9 ]
  %33 = phi i32 [ %18, %28 ], [ -12, %9 ]
  %34 = load ptr, ptr %4, align 8
  tail call void @usb_ep_free_request(ptr noundef %34, ptr noundef %32) #19
  store ptr null, ptr %7, align 4
  br label %35

35:                                               ; preds = %31, %21, %2
  %36 = phi i32 [ %33, %31 ], [ 0, %21 ], [ -12, %2 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_set_selfpowered(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @composite_os_desc_req_prepare(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @usb_ep_alloc_request(ptr noundef %1, i32 noundef 3264) #19
  %4 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 2
  store ptr %3, ptr %4, align 4
  %5 = icmp eq ptr %3, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 4096) #21
  %9 = load ptr, ptr %4, align 4
  store ptr %8, ptr %9, align 4
  %10 = load ptr, ptr %4, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  tail call void @usb_ep_free_request(ptr noundef %1, ptr noundef %10) #19
  br label %18

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.usb_request, ptr %10, i32 0, i32 8
  store ptr %0, ptr %15, align 4
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr inbounds %struct.usb_request, ptr %16, i32 0, i32 7
  store ptr @composite_setup_complete, ptr %17, align 4
  br label %18

18:                                               ; preds = %14, %13, %2
  %19 = phi i32 [ 0, %14 ], [ -12, %13 ], [ -12, %2 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @composite_dev_cleanup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %12, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  store volatile ptr %7, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  tail call void @kfree(ptr noundef %6) #19
  %11 = icmp eq ptr %7, %2
  br i1 %11, label %12, label %5

12:                                               ; preds = %5, %1
  %13 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 20
  %18 = load i8, ptr %17, align 4
  %19 = and i8 %18, 2
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.usb_gadget, ptr %22, i32 0, i32 3
  %24 = load ptr, ptr %23, align 8
  %25 = tail call i32 @usb_ep_dequeue(ptr noundef %24, ptr noundef nonnull %14) #19
  %26 = load ptr, ptr %13, align 4
  br label %27

27:                                               ; preds = %21, %16
  %28 = phi ptr [ %26, %21 ], [ %14, %16 ]
  %29 = load ptr, ptr %28, align 4
  tail call void @kfree(ptr noundef %29) #19
  %30 = load ptr, ptr %13, align 4
  store ptr null, ptr %30, align 4
  %31 = load ptr, ptr %0, align 4
  %32 = getelementptr inbounds %struct.usb_gadget, ptr %31, i32 0, i32 3
  %33 = load ptr, ptr %32, align 8
  %34 = load ptr, ptr %13, align 4
  tail call void @usb_ep_free_request(ptr noundef %33, ptr noundef %34) #19
  store ptr null, ptr %13, align 4
  br label %35

35:                                               ; preds = %27, %12
  %36 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %58, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 20
  %41 = load i8, ptr %40, align 4
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr %0, align 4
  %46 = getelementptr inbounds %struct.usb_gadget, ptr %45, i32 0, i32 3
  %47 = load ptr, ptr %46, align 8
  %48 = tail call i32 @usb_ep_dequeue(ptr noundef %47, ptr noundef nonnull %37) #19
  %49 = load ptr, ptr %36, align 4
  br label %50

50:                                               ; preds = %44, %39
  %51 = phi ptr [ %49, %44 ], [ %37, %39 ]
  %52 = load ptr, ptr %51, align 4
  tail call void @kfree(ptr noundef %52) #19
  %53 = load ptr, ptr %36, align 4
  store ptr null, ptr %53, align 4
  %54 = load ptr, ptr %0, align 4
  %55 = getelementptr inbounds %struct.usb_gadget, ptr %54, i32 0, i32 3
  %56 = load ptr, ptr %55, align 8
  %57 = load ptr, ptr %36, align 4
  tail call void @usb_ep_free_request(ptr noundef %56, ptr noundef %57) #19
  store ptr null, ptr %36, align 4
  br label %58

58:                                               ; preds = %50, %35
  %59 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 14
  store i8 0, ptr %59, align 4
  %60 = load ptr, ptr %0, align 4
  %61 = getelementptr inbounds %struct.usb_gadget, ptr %60, i32 0, i32 11
  tail call void @device_remove_file(ptr noundef %61, ptr noundef nonnull @dev_attr_suspended) #19
  %62 = load ptr, ptr %0, align 4
  %63 = getelementptr inbounds %struct.usb_gadget, ptr %62, i32 0, i32 4
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, %63
  br i1 %65, label %82, label %66

66:                                               ; preds = %78, %58
  %67 = phi ptr [ %79, %78 ], [ %62, %58 ]
  %68 = phi ptr [ %69, %78 ], [ %64, %58 ]
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr i8, ptr %68, i32 -4
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.usb_ep_ops, ptr %71, i32 0, i32 2
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %66
  %76 = getelementptr i8, ptr %68, i32 -12
  tail call void %73(ptr noundef %76) #19
  %77 = load ptr, ptr %0, align 4
  br label %78

78:                                               ; preds = %75, %66
  %79 = phi ptr [ %67, %66 ], [ %77, %75 ]
  %80 = getelementptr inbounds %struct.usb_gadget, ptr %79, i32 0, i32 4
  %81 = icmp eq ptr %69, %80
  br i1 %81, label %82, label %66

82:                                               ; preds = %78, %58
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_dequeue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @composite_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_composite_dev, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.usb_configuration, ptr %5, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %25, label %11

11:                                               ; preds = %20, %7
  %12 = phi ptr [ %21, %20 ], [ %5, %7 ]
  %13 = phi ptr [ %22, %20 ], [ %9, %7 ]
  %14 = getelementptr i8, ptr %13, i32 -16
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = getelementptr i8, ptr %13, i32 -88
  tail call void %15(ptr noundef %18) #19
  %19 = load ptr, ptr %4, align 4
  br label %20

20:                                               ; preds = %17, %11
  %21 = phi ptr [ %12, %11 ], [ %19, %17 ]
  %22 = load ptr, ptr %13, align 4
  %23 = getelementptr inbounds %struct.usb_configuration, ptr %21, i32 0, i32 11
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %25, label %11

25:                                               ; preds = %20, %7, %1
  %26 = getelementptr inbounds %struct.usb_composite_dev, ptr %3, i32 0, i32 13
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.usb_composite_driver, ptr %27, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  tail call void %29(ptr noundef %3) #19
  br label %32

32:                                               ; preds = %31, %25
  %33 = getelementptr inbounds %struct.usb_composite_dev, ptr %3, i32 0, i32 8
  %34 = load i8, ptr %33, align 4
  %35 = or i8 %34, 2
  store i8 %35, ptr %33, align 4
  %36 = tail call i32 @usb_gadget_set_selfpowered(ptr noundef %0) #19
  %37 = tail call i32 @usb_gadget_vbus_draw(ptr noundef %0, i32 noundef 2) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @composite_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_composite_dev, ptr %3, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_composite_driver, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void %7(ptr noundef %3) #19
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.usb_composite_dev, ptr %3, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %49, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.usb_configuration, ptr %12, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %32, label %18

18:                                               ; preds = %27, %14
  %19 = phi ptr [ %28, %27 ], [ %12, %14 ]
  %20 = phi ptr [ %29, %27 ], [ %16, %14 ]
  %21 = getelementptr i8, ptr %20, i32 -12
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = getelementptr i8, ptr %20, i32 -88
  tail call void %22(ptr noundef %25) #19
  %26 = load ptr, ptr %11, align 4
  br label %27

27:                                               ; preds = %24, %18
  %28 = phi ptr [ %19, %18 ], [ %26, %24 ]
  %29 = load ptr, ptr %20, align 4
  %30 = getelementptr inbounds %struct.usb_configuration, ptr %28, i32 0, i32 11
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %32, label %18

32:                                               ; preds = %27, %14
  %33 = phi ptr [ %12, %14 ], [ %28, %27 ]
  %34 = getelementptr inbounds %struct.usb_configuration, ptr %33, i32 0, i32 8
  %35 = load i16, ptr %34, align 4
  %36 = icmp eq i16 %35, 0
  %37 = select i1 %36, i16 2, i16 %35
  %38 = zext i16 %37 to i32
  %39 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = icmp ult i32 %40, 5
  %42 = select i1 %41, i32 500, i32 900
  %43 = tail call i32 @llvm.umin.i32(i32 %42, i32 %38)
  %44 = icmp ugt i32 %43, 100
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = tail call i32 @usb_gadget_clear_selfpowered(ptr noundef %0) #19
  br label %47

47:                                               ; preds = %45, %32
  %48 = tail call i32 @usb_gadget_vbus_draw(ptr noundef %0, i32 noundef %43) #19
  br label %49

49:                                               ; preds = %47, %10
  %50 = getelementptr inbounds %struct.usb_composite_dev, ptr %3, i32 0, i32 8
  %51 = load i8, ptr %50, align 4
  %52 = and i8 %51, -3
  store i8 %52, ptr %50, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_clear_selfpowered(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_composite_probe(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.usb_composite_driver, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.usb_composite_driver, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store ptr @.str.5, ptr %0, align 4
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi ptr [ @.str.5, %14 ], [ %12, %11 ]
  %17 = getelementptr inbounds %struct.usb_composite_driver, ptr %0, i32 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(128) %17, ptr noundef nonnull align 4 dereferenceable(128) @composite_driver_template, i32 128, i1 false)
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.usb_composite_driver, ptr %0, i32 0, i32 10, i32 9
  store ptr %16, ptr %18, align 4
  %19 = getelementptr inbounds %struct.usb_composite_driver, ptr %0, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.usb_composite_driver, ptr %0, i32 0, i32 10, i32 1
  store i32 %20, ptr %21, align 4
  %22 = tail call i32 @usb_gadget_probe_driver(ptr noundef %17) #19
  br label %23

23:                                               ; preds = %15, %7, %3, %1
  %24 = phi i32 [ %22, %15 ], [ -22, %7 ], [ -22, %3 ], [ -22, %1 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_probe_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_composite_unregister(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_composite_driver, ptr %0, i32 0, i32 10
  %3 = tail call i32 @usb_gadget_unregister_driver(ptr noundef %2) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_unregister_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_composite_setup_continue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 19
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #19
  %6 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 18
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = icmp eq ptr %0, null
  br i1 %10, label %62, label %11, !prof !13

11:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2543, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.usb_composite_setup_continue) #19
  br label %62

12:                                               ; preds = %1
  %13 = add i32 %7, -1
  store i32 %13, ptr %6, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %62

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.usb_request, ptr %3, i32 0, i32 1
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.usb_request, ptr %3, i32 0, i32 8
  store ptr %0, ptr %17, align 4
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr inbounds %struct.usb_gadget, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 8
  %21 = tail call i32 @usb_ep_queue(ptr noundef %20, ptr noundef %3, i32 noundef 2592) #19
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %15
  %24 = load ptr, ptr %2, align 4
  %25 = icmp eq ptr %24, %3
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 20
  %28 = load i8, ptr %27, align 4
  %29 = or i8 %28, 1
  store i8 %29, ptr %27, align 4
  br label %62

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %3
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 20
  %36 = load i8, ptr %35, align 4
  %37 = or i8 %36, 2
  store i8 %37, ptr %35, align 4
  br label %62

38:                                               ; preds = %30
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1518, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %3) #19
  br label %62

39:                                               ; preds = %15
  %40 = icmp slt i32 %21, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.usb_request, ptr %3, i32 0, i32 11
  store i32 0, ptr %42, align 4
  %43 = load ptr, ptr %17, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %62, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.usb_composite_dev, ptr %43, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, %3
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.usb_composite_dev, ptr %43, i32 0, i32 20
  %51 = load i8, ptr %50, align 4
  %52 = and i8 %51, -2
  store i8 %52, ptr %50, align 4
  br label %62

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.usb_composite_dev, ptr %43, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, %3
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.usb_composite_dev, ptr %43, i32 0, i32 20
  %59 = load i8, ptr %58, align 4
  %60 = and i8 %59, -3
  store i8 %60, ptr %58, align 4
  br label %62

61:                                               ; preds = %53
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1503, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %3) #19
  br label %62

62:                                               ; preds = %61, %57, %49, %41, %39, %38, %34, %26, %12, %11, %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_composite_overwrite_options(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_composite_driver, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_gadget_strings, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load i16, ptr %1, align 4
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 9, i32 7
  store i16 %10, ptr %13, align 1
  br label %14

14:                                               ; preds = %12, %2
  %15 = getelementptr inbounds %struct.usb_composite_overwrite, ptr %1, i32 0, i32 1
  %16 = load i16, ptr %15, align 2
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 9, i32 8
  store i16 %16, ptr %19, align 1
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct.usb_composite_overwrite, ptr %1, i32 0, i32 2
  %22 = load i16, ptr %21, align 4
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 9, i32 9
  store i16 %22, ptr %25, align 1
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr inbounds %struct.usb_composite_overwrite, ptr %1, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = getelementptr %struct.usb_string, ptr %9, i32 2
  %32 = load i8, ptr %31, align 4
  %33 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 9, i32 12
  store i8 %32, ptr %33, align 1
  %34 = load ptr, ptr %27, align 4
  %35 = getelementptr %struct.usb_string, ptr %9, i32 2, i32 1
  store ptr %34, ptr %35, align 4
  br label %36

36:                                               ; preds = %30, %26
  %37 = getelementptr inbounds %struct.usb_composite_overwrite, ptr %1, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = load i8, ptr %9, align 4
  %42 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 9, i32 10
  store i8 %41, ptr %42, align 1
  %43 = load ptr, ptr %37, align 4
  %44 = getelementptr inbounds %struct.usb_string, ptr %9, i32 0, i32 1
  store ptr %43, ptr %44, align 4
  br label %58

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.usb_string, ptr %9, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = load i8, ptr %47, align 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i8, ptr %9, align 4
  %52 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 9, i32 10
  store i8 %51, ptr %52, align 1
  %53 = load ptr, ptr %0, align 4
  %54 = getelementptr inbounds %struct.usb_gadget, ptr %53, i32 0, i32 10
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.13, ptr noundef nonnull @init_uts_ns, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 2), ptr noundef %55) #19
  %57 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 16
  store ptr %56, ptr %57, align 4
  store ptr %56, ptr %46, align 4
  br label %58

58:                                               ; preds = %50, %45, %40
  %59 = getelementptr inbounds %struct.usb_composite_overwrite, ptr %1, i32 0, i32 5
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = getelementptr %struct.usb_string, ptr %9, i32 1
  %64 = load i8, ptr %63, align 4
  %65 = getelementptr inbounds %struct.usb_composite_dev, ptr %0, i32 0, i32 9, i32 11
  store i8 %64, ptr %65, align 1
  %66 = load ptr, ptr %59, align 4
  %67 = getelementptr %struct.usb_string, ptr %9, i32 1, i32 1
  store ptr %66, ptr %67, align 4
  br label %68

68:                                               ; preds = %62, %58
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_descriptor_fillbuf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_get_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_set_state(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf8s_to_utf16s(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @suspended_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.usb_composite_dev, ptr %5, i32 0, i32 8
  %7 = load i8, ptr %6, align 4
  %8 = lshr i8 %7, 1
  %9 = and i8 %8, 1
  %10 = zext i8 %9 to i32
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %10)
  ret i32 %11
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @composite_bind(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 -40
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 100) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %65, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.usb_composite_dev, ptr %5, i32 0, i32 19
  store i32 0, ptr %8, align 4
  store ptr %0, ptr %5, align 8
  %9 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 8
  store ptr %5, ptr %9, align 8
  %10 = getelementptr inbounds %struct.usb_composite_dev, ptr %5, i32 0, i32 11
  store volatile ptr %10, ptr %10, align 8
  %11 = getelementptr inbounds %struct.usb_composite_dev, ptr %5, i32 0, i32 11, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.usb_composite_dev, ptr %5, i32 0, i32 12
  store volatile ptr %12, ptr %12, align 8
  %13 = getelementptr inbounds %struct.usb_composite_dev, ptr %5, i32 0, i32 12, i32 1
  store ptr %12, ptr %13, align 4
  %14 = tail call i32 @composite_dev_prepare(ptr noundef %3, ptr noundef nonnull %5)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %63

16:                                               ; preds = %7
  %17 = getelementptr i8, ptr %1, i32 -20
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef nonnull %5) #19
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %63, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.usb_composite_dev, ptr %5, i32 0, i32 8
  %23 = load i8, ptr %22, align 4
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = tail call ptr @usb_ep_alloc_request(ptr noundef %28, i32 noundef 3264) #19
  %30 = getelementptr inbounds %struct.usb_composite_dev, ptr %5, i32 0, i32 2
  store ptr %29, ptr %30, align 8
  %31 = icmp eq ptr %29, null
  br i1 %31, label %63, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %34 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3264, i32 noundef 4096) #21
  %35 = load ptr, ptr %30, align 8
  store ptr %34, ptr %35, align 4
  %36 = load ptr, ptr %30, align 8
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  tail call void @usb_ep_free_request(ptr noundef %28, ptr noundef %36) #19
  br label %63

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.usb_request, ptr %36, i32 0, i32 8
  store ptr %5, ptr %41, align 4
  %42 = load ptr, ptr %30, align 8
  %43 = getelementptr inbounds %struct.usb_request, ptr %42, i32 0, i32 7
  store ptr @composite_setup_complete, ptr %43, align 4
  br label %44

44:                                               ; preds = %40, %21
  %45 = getelementptr inbounds %struct.usb_composite_dev, ptr %5, i32 0, i32 9
  %46 = getelementptr i8, ptr %1, i32 -36
  %47 = load ptr, ptr %46, align 4
  tail call fastcc void @update_unchanged_dev_desc(ptr noundef %45, ptr noundef %47)
  %48 = getelementptr i8, ptr %1, i32 -24
  %49 = load i8, ptr %48, align 4
  %50 = and i8 %49, 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.usb_composite_dev, ptr %5, i32 0, i32 9, i32 12
  %54 = load i8, ptr %53, align 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load ptr, ptr %5, align 8
  %58 = getelementptr inbounds %struct.usb_gadget, ptr %57, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.11) #18
  br label %59

59:                                               ; preds = %56, %52, %44
  %60 = load ptr, ptr %5, align 8
  %61 = getelementptr inbounds %struct.usb_gadget, ptr %60, i32 0, i32 11
  %62 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %61, ptr noundef nonnull @.str.12, ptr noundef %62) #18
  br label %65

63:                                               ; preds = %39, %26, %16, %7
  %64 = phi i32 [ %14, %7 ], [ %19, %16 ], [ -12, %39 ], [ -12, %26 ]
  tail call fastcc void @__composite_unbind(ptr noundef %0, i1 noundef zeroext false)
  br label %65

65:                                               ; preds = %63, %59, %2
  %66 = phi i32 [ %64, %63 ], [ 0, %59 ], [ -12, %2 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @composite_unbind(ptr nocapture noundef %0) #0 {
  tail call fastcc void @__composite_unbind(ptr noundef %0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @update_unchanged_dev_desc(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #16 {
  %3 = getelementptr inbounds %struct.usb_device_descriptor, ptr %0, i32 0, i32 7
  %4 = load i16, ptr %3, align 1
  %5 = getelementptr inbounds %struct.usb_device_descriptor, ptr %0, i32 0, i32 8
  %6 = load i16, ptr %5, align 1
  %7 = getelementptr inbounds %struct.usb_device_descriptor, ptr %0, i32 0, i32 9
  %8 = load i16, ptr %7, align 1
  %9 = getelementptr inbounds %struct.usb_device_descriptor, ptr %0, i32 0, i32 12
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr inbounds %struct.usb_device_descriptor, ptr %0, i32 0, i32 10
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr inbounds %struct.usb_device_descriptor, ptr %0, i32 0, i32 11
  %14 = load i8, ptr %13, align 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(18) %0, ptr noundef align 1 dereferenceable(18) %1, i32 18, i1 false)
  %15 = icmp eq i16 %4, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i16 %4, ptr %3, align 1
  br label %17

17:                                               ; preds = %16, %2
  %18 = icmp eq i16 %6, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  store i16 %6, ptr %5, align 1
  br label %20

20:                                               ; preds = %19, %17
  %21 = icmp eq i16 %8, 0
  %22 = select i1 %21, i16 1303, i16 %8
  store i16 %22, ptr %7, align 1
  %23 = icmp eq i8 %10, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i8 %10, ptr %9, align 1
  br label %25

25:                                               ; preds = %24, %20
  %26 = icmp eq i8 %12, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  store i8 %12, ptr %11, align 1
  br label %28

28:                                               ; preds = %27, %25
  %29 = icmp eq i8 %14, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %28
  store i8 %14, ptr %13, align 1
  br label %31

31:                                               ; preds = %30, %28
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__composite_unbind(ptr nocapture noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_composite_driver, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usb_gadget_strings, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15, !prof !13

15:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2165, i32 noundef 9, ptr noundef null) #19
  br label %16

16:                                               ; preds = %15, %2
  %17 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 11
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %65, label %20

20:                                               ; preds = %62, %16
  %21 = phi ptr [ %63, %62 ], [ %18, %16 ]
  %22 = getelementptr i8, ptr %21, i32 -32
  %23 = getelementptr i8, ptr %21, i32 8
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %23
  br i1 %25, label %53, label %26

26:                                               ; preds = %50, %20
  %27 = phi ptr [ %51, %50 ], [ %24, %20 ]
  %28 = getelementptr i8, ptr %27, i32 -88
  %29 = getelementptr i8, ptr %27, i32 -28
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  tail call void %30(ptr noundef %28) #19
  br label %33

33:                                               ; preds = %32, %26
  %34 = getelementptr i8, ptr %27, i32 8
  store i32 0, ptr %34, align 4
  %35 = getelementptr i8, ptr %27, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %27, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %36, ptr %38, align 4
  store volatile ptr %37, ptr %36, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %27, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %35, align 4
  %39 = getelementptr i8, ptr %27, i32 -48
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  tail call void %40(ptr noundef %22, ptr noundef %28) #19
  br label %43

43:                                               ; preds = %42, %33
  %44 = getelementptr i8, ptr %27, i32 16
  %45 = load i8, ptr %44, align 4
  %46 = and i8 %45, 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = tail call i32 @usb_function_activate(ptr noundef %28) #19
  br label %50

50:                                               ; preds = %48, %43
  %51 = load volatile ptr, ptr %23, align 4
  %52 = icmp eq ptr %51, %23
  br i1 %52, label %53, label %26

53:                                               ; preds = %50, %20
  %54 = getelementptr i8, ptr %21, i32 4
  %55 = load ptr, ptr %54, align 4
  %56 = load ptr, ptr %21, align 4
  %57 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  store ptr %55, ptr %57, align 4
  store volatile ptr %56, ptr %55, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %21, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %54, align 4
  %58 = getelementptr i8, ptr %21, i32 -20
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %53
  tail call void %59(ptr noundef %22) #19
  br label %62

62:                                               ; preds = %61, %53
  %63 = load volatile ptr, ptr %17, align 4
  %64 = icmp eq ptr %63, %17
  br i1 %64, label %65, label %20

65:                                               ; preds = %62, %16
  %66 = load ptr, ptr %5, align 4
  %67 = getelementptr inbounds %struct.usb_composite_driver, ptr %66, i32 0, i32 6
  %68 = load ptr, ptr %67, align 4
  %69 = icmp ne ptr %68, null
  %70 = and i1 %69, %1
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = tail call i32 %68(ptr noundef %4) #19
  br label %73

73:                                               ; preds = %71, %65
  tail call void @composite_dev_cleanup(ptr noundef %4)
  %74 = getelementptr inbounds %struct.usb_string, ptr %11, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 16
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %75, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  store ptr @.str.7, ptr %74, align 4
  %80 = load ptr, ptr %76, align 4
  br label %81

81:                                               ; preds = %79, %73
  %82 = phi ptr [ %80, %79 ], [ %77, %73 ]
  tail call void @kfree(ptr noundef %82) #19
  tail call void @kfree(ptr noundef %4) #19
  store ptr null, ptr %3, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #17

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind allocsize(2) }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2148929557}
!10 = !{i64 2148925381}
!11 = !{i64 2148925456, i64 2148925483, i64 2148925530, i64 2148925552, i64 2148925580, i64 2148925600}
!12 = !{i64 2148952560}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{!"auto-init"}
!15 = !{i64 2154182917, i64 2154183413, i64 2154182954, i64 2154183010, i64 2154183044, i64 2154183068, i64 2154183109, i64 2154183130, i64 2154183158, i64 2154183192}
