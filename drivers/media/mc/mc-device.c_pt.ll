; ModuleID = '/llk/IR/drivers/media/mc/mc-device.c_pt.bc'
source_filename = "../drivers/media/mc/mc-device.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_media_device_register_entity:\09\09\09\09\09"
module asm "\09.asciz \09\22media_device_register_entity\22\09\09\09\09\09"
module asm "__kstrtabns_media_device_register_entity:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_media_device_unregister_entity:\09\09\09\09\09"
module asm "\09.asciz \09\22media_device_unregister_entity\22\09\09\09\09\09"
module asm "__kstrtabns_media_device_unregister_entity:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_media_device_init:\09\09\09\09\09"
module asm "\09.asciz \09\22media_device_init\22\09\09\09\09\09"
module asm "__kstrtabns_media_device_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_media_device_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22media_device_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_media_device_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___media_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22__media_device_register\22\09\09\09\09\09"
module asm "__kstrtabns___media_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_media_device_register_entity_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22media_device_register_entity_notify\22\09\09\09\09\09"
module asm "__kstrtabns_media_device_register_entity_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_media_device_unregister_entity_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22media_device_unregister_entity_notify\22\09\09\09\09\09"
module asm "__kstrtabns_media_device_unregister_entity_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_media_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22media_device_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_media_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_media_device_pci_init:\09\09\09\09\09"
module asm "\09.asciz \09\22media_device_pci_init\22\09\09\09\09\09"
module asm "__kstrtabns_media_device_pci_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___media_device_usb_init:\09\09\09\09\09"
module asm "\09.asciz \09\22__media_device_usb_init\22\09\09\09\09\09"
module asm "__kstrtabns___media_device_usb_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.media_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
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
%struct.media_ioctl_info = type { i32, i16, ptr, ptr, ptr }
%struct.media_graph = type { [16 x %struct.anon.64], %struct.media_entity_enum, i32 }
%struct.anon.64 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.67 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { i32, i32 }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_entity_notify = type { %struct.list_head, ptr, ptr }
%struct.media_devnode = type { ptr, ptr, %struct.device, %struct.cdev, ptr, i32, i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.media_device_info = type { [16 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i32, i32, [31 x i32] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.media_entity_desc = type { i32, [32 x i8], i32, i32, i32, i32, i16, i16, [4 x i32], %union.anon.73 }
%union.anon.73 = type { %struct.anon.74, [176 x i8] }
%struct.anon.74 = type { i32, i32 }
%struct.media_pad_desc = type { i32, i16, i32, [2 x i32] }
%struct.media_link_desc = type { %struct.media_pad_desc, %struct.media_pad_desc, i32, [2 x i32] }
%struct.media_links_enum = type { i32, ptr, ptr, [4 x i32] }
%struct.media_v2_entity = type { i32, [64 x i8], i32, i32, [5 x i32] }
%struct.media_v2_interface = type { i32, i32, i32, [9 x i32], %union.anon.75 }
%union.anon.75 = type { [16 x i32] }
%struct.media_v2_pad = type { i32, i32, i32, i32, [4 x i32] }
%struct.media_v2_link = type { i32, i32, i32, i32, [6 x i32] }
%struct.media_v2_topology = type { i64, i32, i32, i64, i32, i32, i64, i32, i32, i64, i32, i32, i64 }
%struct.media_device_ops = type { ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [48 x i8] c"Entity type for entity %s was not initialized!\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"drivers/media/mc/mc-device.c\00", align 1
@__kstrtab_media_device_register_entity = external dso_local constant [0 x i8], align 1
@__kstrtabns_media_device_register_entity = external dso_local constant [0 x i8], align 1
@__ksymtab_media_device_register_entity = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @media_device_register_entity to i32), ptr @__kstrtab_media_device_register_entity, ptr @__kstrtabns_media_device_register_entity }, section "___ksymtab_gpl+media_device_register_entity", align 4
@__kstrtab_media_device_unregister_entity = external dso_local constant [0 x i8], align 1
@__kstrtabns_media_device_unregister_entity = external dso_local constant [0 x i8], align 1
@__ksymtab_media_device_unregister_entity = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @media_device_unregister_entity to i32), ptr @__kstrtab_media_device_unregister_entity, ptr @__kstrtabns_media_device_unregister_entity }, section "___ksymtab_gpl+media_device_unregister_entity", align 4
@media_device_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"&mdev->req_queue_mutex\00", align 1
@media_device_init.__key.3 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"&mdev->graph_mutex\00", align 1
@__kstrtab_media_device_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_media_device_init = external dso_local constant [0 x i8], align 1
@__ksymtab_media_device_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @media_device_init to i32), ptr @__kstrtab_media_device_init, ptr @__kstrtabns_media_device_init }, section "___ksymtab_gpl+media_device_init", align 4
@__kstrtab_media_device_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_media_device_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_media_device_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @media_device_cleanup to i32), ptr @__kstrtab_media_device_cleanup, ptr @__kstrtabns_media_device_cleanup }, section "___ksymtab_gpl+media_device_cleanup", align 4
@media_device_fops = internal constant %struct.media_file_operations { ptr @__this_module, ptr null, ptr null, ptr null, ptr @media_device_ioctl, ptr null, ptr @media_device_open, ptr @media_device_close }, align 4
@dev_attr_model = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292 }, ptr @model_show, ptr null }, align 4
@__kstrtab___media_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns___media_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab___media_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__media_device_register to i32), ptr @__kstrtab___media_device_register, ptr @__kstrtabns___media_device_register }, section "___ksymtab_gpl+__media_device_register", align 4
@__kstrtab_media_device_register_entity_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_media_device_register_entity_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_media_device_register_entity_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @media_device_register_entity_notify to i32), ptr @__kstrtab_media_device_register_entity_notify, ptr @__kstrtabns_media_device_register_entity_notify }, section "___ksymtab_gpl+media_device_register_entity_notify", align 4
@__kstrtab_media_device_unregister_entity_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_media_device_unregister_entity_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_media_device_unregister_entity_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @media_device_unregister_entity_notify to i32), ptr @__kstrtab_media_device_unregister_entity_notify, ptr @__kstrtabns_media_device_unregister_entity_notify }, section "___ksymtab_gpl+media_device_unregister_entity_notify", align 4
@__kstrtab_media_device_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_media_device_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_media_device_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @media_device_unregister to i32), ptr @__kstrtab_media_device_unregister, ptr @__kstrtabns_media_device_unregister }, section "___ksymtab_gpl+media_device_unregister", align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"PCI:%s\00", align 1
@__kstrtab_media_device_pci_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_media_device_pci_init = external dso_local constant [0 x i8], align 1
@__ksymtab_media_device_pci_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @media_device_pci_init to i32), ptr @__kstrtab_media_device_pci_init, ptr @__kstrtabns_media_device_pci_init }, section "___ksymtab_gpl+media_device_pci_init", align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"unknown model\00", align 1
@__kstrtab___media_device_usb_init = external dso_local constant [0 x i8], align 1
@__kstrtabns___media_device_usb_init = external dso_local constant [0 x i8], align 1
@__ksymtab___media_device_usb_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__media_device_usb_init to i32), ptr @__kstrtab___media_device_usb_init, ptr @__kstrtabns___media_device_usb_init }, section "___ksymtab_gpl+__media_device_usb_init", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__this_module = external dso_local global %struct.module, align 64
@ioctl_info = internal unnamed_addr constant [6 x %struct.media_ioctl_info] [%struct.media_ioctl_info { i32 -1056932864, i16 1, ptr @media_device_get_info, ptr @copy_arg_from_user, ptr @copy_arg_to_user }, %struct.media_ioctl_info { i32 -1056932863, i16 1, ptr @media_device_enum_entities, ptr @copy_arg_from_user, ptr @copy_arg_to_user }, %struct.media_ioctl_info { i32 -1071875070, i16 1, ptr @media_device_enum_links, ptr @copy_arg_from_user, ptr @copy_arg_to_user }, %struct.media_ioctl_info { i32 -1070302205, i16 1, ptr @media_device_setup_link, ptr @copy_arg_from_user, ptr @copy_arg_to_user }, %struct.media_ioctl_info { i32 -1068991484, i16 1, ptr @media_device_get_topology, ptr @copy_arg_from_user, ptr @copy_arg_to_user }, %struct.media_ioctl_info { i32 -2147189755, i16 0, ptr @media_device_request_alloc, ptr @copy_arg_from_user, ptr @copy_arg_to_user }], align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%.*s\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"usb-%s-%s\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab___media_device_register, ptr @__ksymtab___media_device_usb_init, ptr @__ksymtab_media_device_cleanup, ptr @__ksymtab_media_device_init, ptr @__ksymtab_media_device_pci_init, ptr @__ksymtab_media_device_register_entity, ptr @__ksymtab_media_device_register_entity_notify, ptr @__ksymtab_media_device_unregister, ptr @__ksymtab_media_device_unregister_entity, ptr @__ksymtab_media_device_unregister_entity_notify], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @media_device_register_entity(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.media_graph, align 4
  %4 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %10 [
    i32 131072, label %6
    i32 0, label %6
  ]

6:                                                ; preds = %2, %2
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef %9) #13
  br label %10

10:                                               ; preds = %6, %2
  %11 = load ptr, ptr %1, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !8

13:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 630, i32 noundef 9, ptr noundef null) #14
  br label %14

14:                                               ; preds = %13, %10
  store ptr %0, ptr %1, align 4
  %15 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 10
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 10, i32 1
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 6
  store i16 0, ptr %17, align 2
  %18 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 7
  store i16 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 9
  %20 = tail call i32 @ida_alloc_range(ptr noundef %19, i32 noundef 1, i32 noundef -1, i32 noundef 3264) #14
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %66, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 8
  store i32 %20, ptr %23, align 4
  %24 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %24) #14
  %25 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 10
  %26 = load i32, ptr %25, align 8
  %27 = load i32, ptr %23, align 4
  %28 = tail call i32 @llvm.smax.i32(i32 %26, i32 %27)
  store i32 %28, ptr %25, align 8
  tail call void @media_gobj_create(ptr noundef %0, i32 noundef 0, ptr noundef %1) #14
  %29 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %30 = load i16, ptr %29, align 4
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 9
  br label %34

34:                                               ; preds = %34, %32
  %35 = phi i32 [ 0, %32 ], [ %38, %34 ]
  %36 = load ptr, ptr %33, align 4
  %37 = getelementptr %struct.media_pad, ptr %36, i32 %35
  tail call void @media_gobj_create(ptr noundef %0, i32 noundef 1, ptr noundef %37) #14
  %38 = add nuw nsw i32 %35, 1
  %39 = load i16, ptr %29, align 4
  %40 = zext i16 %39 to i32
  %41 = icmp ult i32 %38, %40
  br i1 %41, label %34, label %42

42:                                               ; preds = %34, %22
  %43 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 15
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, %43
  br i1 %45, label %54, label %46

46:                                               ; preds = %46, %42
  %47 = phi ptr [ %48, %46 ], [ %44, %42 ]
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.media_entity_notify, ptr %47, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.media_entity_notify, ptr %47, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  tail call void %50(ptr noundef %1, ptr noundef %52) #14
  %53 = icmp eq ptr %48, %43
  br i1 %53, label %54, label %46

54:                                               ; preds = %46, %42
  %55 = load i32, ptr %25, align 8
  %56 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 17
  %57 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 17, i32 1, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(140) %3, i8 0, i32 140, i1 false)
  %61 = call i32 @media_graph_walk_init(ptr noundef nonnull %3, ptr noundef %0) #14
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  call fastcc void @__media_device_unregister_entity(ptr noundef %1)
  call void @mutex_unlock(ptr noundef %24) #14
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %3) #14
  br label %66

64:                                               ; preds = %60
  call void @media_graph_walk_cleanup(ptr noundef %56) #14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(140) %56, ptr noundef nonnull align 4 dereferenceable(140) %3, i32 140, i1 false)
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %3) #14
  br label %65

65:                                               ; preds = %64, %54
  call void @mutex_unlock(ptr noundef %24) #14
  br label %66

66:                                               ; preds = %65, %63, %14
  %67 = phi i32 [ 0, %65 ], [ %20, %14 ], [ %61, %63 ]
  ret i32 %67
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_gobj_create(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_graph_walk_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__media_device_unregister_entity(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.media_device, ptr %2, i32 0, i32 9
  %4 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  tail call void @ida_free(ptr noundef %3, i32 noundef %5) #14
  %6 = getelementptr inbounds %struct.media_device, ptr %2, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %27, label %12

9:                                                ; preds = %25, %12
  %10 = load ptr, ptr %13, align 4
  %11 = icmp eq ptr %10, %6
  br i1 %11, label %27, label %12

12:                                               ; preds = %9, %1
  %13 = phi ptr [ %10, %9 ], [ %7, %1 ]
  %14 = getelementptr i8, ptr %13, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %9, label %17

17:                                               ; preds = %25, %12
  %18 = phi ptr [ %19, %25 ], [ %15, %12 ]
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %18, i32 12
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = getelementptr i8, ptr %18, i32 -16
  tail call void @__media_remove_intf_link(ptr noundef %24) #14
  br label %25

25:                                               ; preds = %23, %17
  %26 = icmp eq ptr %19, %14
  br i1 %26, label %9, label %17

27:                                               ; preds = %9, %1
  tail call void @__media_entity_remove_links(ptr noundef %0) #14
  %28 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %29 = load i16, ptr %28, align 4
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 9
  br label %33

33:                                               ; preds = %33, %31
  %34 = phi i32 [ 0, %31 ], [ %37, %33 ]
  %35 = load ptr, ptr %32, align 4
  %36 = getelementptr %struct.media_pad, ptr %35, i32 %34
  tail call void @media_gobj_destroy(ptr noundef %36) #14
  %37 = add nuw nsw i32 %34, 1
  %38 = load i16, ptr %28, align 4
  %39 = zext i16 %38 to i32
  %40 = icmp ult i32 %37, %39
  br i1 %40, label %33, label %41

41:                                               ; preds = %33, %27
  tail call void @media_gobj_destroy(ptr noundef %0) #14
  store ptr null, ptr %0, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_graph_walk_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @media_device_unregister_entity(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.media_device, ptr %2, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %5) #14
  tail call fastcc void @__media_device_unregister_entity(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef %5) #14
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @media_device_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 11
  store volatile ptr %2, ptr %2, align 4
  %3 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 11, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 12
  store volatile ptr %4, ptr %4, align 4
  %5 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 12, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 13
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 13, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 14
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 14, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 15
  store volatile ptr %10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 15, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 22
  tail call void @__mutex_init(ptr noundef %12, ptr noundef nonnull @.str.2, ptr noundef nonnull @media_device_init.__key) #14
  %13 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %13, ptr noundef nonnull @.str.4, ptr noundef nonnull @media_device_init.__key.3) #14
  %14 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 9
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 9, i32 0, i32 1
  store i32 33554437, ptr %15, align 4
  %16 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 9, i32 0, i32 2
  store ptr null, ptr %16, align 4
  %17 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 23
  store volatile i32 0, ptr %17, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @media_device_cleanup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 9
  tail call void @ida_destroy(ptr noundef %2) #14
  %3 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 10
  store i32 0, ptr %3, align 8
  %4 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 17
  tail call void @media_graph_walk_cleanup(ptr noundef %4) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__media_device_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 560) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 1
  store ptr %4, ptr %7, align 4
  %8 = getelementptr inbounds %struct.media_devnode, ptr %4, i32 0, i32 1
  store ptr @media_device_fops, ptr %8, align 4
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.media_devnode, ptr %4, i32 0, i32 4
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.media_devnode, ptr %4, i32 0, i32 7
  store ptr @media_device_release, ptr %11, align 8
  %12 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 7
  store i64 0, ptr %12, align 8
  %13 = tail call i32 @media_devnode_register(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %1) #14
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %6
  store ptr null, ptr %7, align 4
  br label %21

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.media_devnode, ptr %4, i32 0, i32 2
  %18 = tail call i32 @device_create_file(ptr noundef %17, ptr noundef nonnull @dev_attr_model) #14
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store ptr null, ptr %7, align 4
  tail call void @media_devnode_unregister_prepare(ptr noundef nonnull %4) #14
  tail call void @media_devnode_unregister(ptr noundef nonnull %4) #14
  br label %21

21:                                               ; preds = %20, %16, %15, %2
  %22 = phi i32 [ %13, %15 ], [ %18, %20 ], [ -12, %2 ], [ 0, %16 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @media_device_release(ptr nocapture noundef %0) #6 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_devnode_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_devnode_unregister_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_devnode_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @media_device_register_entity_notify(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %3) #14
  %4 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 15
  %5 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 15, i32 1
  %6 = load ptr, ptr %5, align 4
  store ptr %1, ptr %5, align 4
  store ptr %4, ptr %1, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  store volatile ptr %1, ptr %6, align 4
  tail call void @mutex_unlock(ptr noundef %3) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @media_device_unregister_entity_notify(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %3) #14
  %4 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %1, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %5, ptr %7, align 4
  store volatile ptr %6, ptr %5, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %4, align 4
  tail call void @mutex_unlock(ptr noundef %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @media_device_unregister(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %47, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %4) #14
  %5 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.media_devnode, ptr %6, i32 0, i32 6
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %3
  tail call void @mutex_unlock(ptr noundef %4) #14
  br label %47

14:                                               ; preds = %8
  tail call void @media_devnode_unregister_prepare(ptr noundef nonnull %6) #14
  %15 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %23, label %18

18:                                               ; preds = %18, %14
  %19 = phi ptr [ %21, %18 ], [ %16, %14 ]
  %20 = getelementptr i8, ptr %19, i32 -8
  %21 = load ptr, ptr %19, align 4
  tail call fastcc void @__media_device_unregister_entity(ptr noundef %20)
  %22 = icmp eq ptr %21, %15
  br i1 %22, label %23, label %18

23:                                               ; preds = %18, %14
  %24 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 15
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %34, label %27

27:                                               ; preds = %27, %23
  %28 = phi ptr [ %29, %27 ], [ %25, %23 ]
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %31, ptr %32, align 4
  store volatile ptr %29, ptr %31, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %28, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %30, align 4
  %33 = icmp eq ptr %29, %24
  br i1 %33, label %34, label %27

34:                                               ; preds = %27, %23
  %35 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 12
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %35
  br i1 %37, label %43, label %38

38:                                               ; preds = %38, %34
  %39 = phi ptr [ %41, %38 ], [ %36, %34 ]
  %40 = getelementptr i8, ptr %39, i32 -8
  %41 = load ptr, ptr %39, align 4
  tail call void @__media_remove_intf_links(ptr noundef %40) #14
  tail call void @media_gobj_destroy(ptr noundef %40) #14
  %42 = icmp eq ptr %41, %35
  br i1 %42, label %43, label %38

43:                                               ; preds = %38, %34
  tail call void @mutex_unlock(ptr noundef %4) #14
  %44 = load ptr, ptr %5, align 4
  %45 = getelementptr inbounds %struct.media_devnode, ptr %44, i32 0, i32 2
  tail call void @device_remove_file(ptr noundef %45, ptr noundef nonnull @dev_attr_model) #14
  %46 = load ptr, ptr %5, align 4
  tail call void @media_devnode_unregister(ptr noundef %46) #14
  store ptr null, ptr %5, align 4
  br label %47

47:                                               ; preds = %43, %13, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__media_remove_intf_links(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_gobj_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @media_device_pci_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  store ptr %4, ptr %0, align 8
  %5 = icmp eq ptr %2, null
  %6 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 2
  br i1 %5, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @strscpy(ptr noundef %6, ptr noundef nonnull %2, i32 noundef 32) #14
  br label %18

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load ptr, ptr %4, align 4
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi ptr [ %14, %13 ], [ %11, %9 ]
  %17 = tail call i32 @strscpy(ptr noundef %6, ptr noundef %16, i32 noundef 32) #14
  br label %18

18:                                               ; preds = %15, %7
  %19 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load ptr, ptr %4, align 4
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi ptr [ %23, %22 ], [ %20, %18 ]
  %26 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 5
  %27 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %26, ptr noundef nonnull @.str.5, ptr noundef %25)
  %28 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 9
  %29 = load i16, ptr %28, align 4
  %30 = zext i16 %29 to i32
  %31 = shl nuw i32 %30, 16
  %32 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 10
  %33 = load i16, ptr %32, align 2
  %34 = zext i16 %33 to i32
  %35 = or i32 %31, %34
  %36 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 6
  store i32 %35, ptr %36, align 8
  %37 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 11
  store volatile ptr %37, ptr %37, align 4
  %38 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 11, i32 1
  store ptr %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 12
  store volatile ptr %39, ptr %39, align 4
  %40 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 12, i32 1
  store ptr %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 13
  store volatile ptr %41, ptr %41, align 4
  %42 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 13, i32 1
  store ptr %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 14
  store volatile ptr %43, ptr %43, align 4
  %44 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 14, i32 1
  store ptr %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 15
  store volatile ptr %45, ptr %45, align 4
  %46 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 15, i32 1
  store ptr %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 22
  tail call void @__mutex_init(ptr noundef %47, ptr noundef nonnull @.str.2, ptr noundef nonnull @media_device_init.__key) #14
  %48 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %48, ptr noundef nonnull @.str.4, ptr noundef nonnull @media_device_init.__key.3) #14
  %49 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 9
  store i32 0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 9, i32 0, i32 1
  store i32 33554437, ptr %50, align 4
  %51 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 9, i32 0, i32 2
  store ptr null, ptr %51, align 4
  %52 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 23
  store volatile i32 0, ptr %52, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__media_device_usb_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  store ptr %5, ptr %0, align 8
  %6 = icmp eq ptr %3, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 3
  %9 = tail call i32 @strscpy(ptr noundef %8, ptr noundef nonnull %3, i32 noundef 32) #14
  br label %10

10:                                               ; preds = %7, %4
  %11 = icmp eq ptr %2, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 2
  %14 = tail call i32 @strscpy(ptr noundef %13, ptr noundef nonnull %2, i32 noundef 32) #14
  br label %24

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 31
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  %19 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 2
  br i1 %18, label %22, label %20

20:                                               ; preds = %15
  %21 = tail call i32 @strscpy(ptr noundef %19, ptr noundef nonnull %17, i32 noundef 32) #14
  br label %24

22:                                               ; preds = %15
  %23 = tail call i32 @strscpy(ptr noundef %19, ptr noundef nonnull @.str.6, i32 noundef 32) #14
  br label %24

24:                                               ; preds = %22, %20, %12
  %25 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 33
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 4
  %30 = tail call i32 @strscpy(ptr noundef %29, ptr noundef nonnull %26, i32 noundef 40) #14
  br label %31

31:                                               ; preds = %28, %24
  %32 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 5
  %33 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 12
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.usb_bus, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 1
  %38 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %32, i32 noundef 32, ptr noundef nonnull @.str.11, ptr noundef %36, ptr noundef %37) #14
  %39 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 9
  %40 = load i16, ptr %39, align 4
  %41 = zext i16 %40 to i32
  %42 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 6
  store i32 %41, ptr %42, align 8
  %43 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 11
  store volatile ptr %43, ptr %43, align 4
  %44 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 11, i32 1
  store ptr %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 12
  store volatile ptr %45, ptr %45, align 4
  %46 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 12, i32 1
  store ptr %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 13
  store volatile ptr %47, ptr %47, align 4
  %48 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 13, i32 1
  store ptr %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 14
  store volatile ptr %49, ptr %49, align 4
  %50 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 14, i32 1
  store ptr %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 15
  store volatile ptr %51, ptr %51, align 4
  %52 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 15, i32 1
  store ptr %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 22
  tail call void @__mutex_init(ptr noundef %53, ptr noundef nonnull @.str.2, ptr noundef nonnull @media_device_init.__key) #14
  %54 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %54, ptr noundef nonnull @.str.4, ptr noundef nonnull @media_device_init.__key.3) #14
  %55 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 9
  store i32 0, ptr %55, align 4
  %56 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 9, i32 0, i32 1
  store i32 33554437, ptr %56, align 4
  %57 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 9, i32 0, i32 2
  store ptr null, ptr %57, align 4
  %58 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 23
  store volatile i32 0, ptr %58, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__media_remove_intf_link(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__media_entity_remove_links(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @media_device_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca [256 x i8], align 1
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %4, i8 0, i32 256, i1 false), !annotation !9
  %9 = and i32 %1, 255
  %10 = icmp ugt i32 %9, 5
  br i1 %10, label %48, label %11

11:                                               ; preds = %3
  %12 = getelementptr [6 x %struct.media_ioctl_info], ptr @ioctl_info, i32 0, i32 %9
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %48

15:                                               ; preds = %11
  %16 = lshr i32 %1, 16
  %17 = and i32 %16, 16383
  %18 = icmp ugt i32 %17, 256
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %17, i32 noundef 3264) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %48, label %22

22:                                               ; preds = %19, %15
  %23 = phi ptr [ %20, %19 ], [ %4, %15 ]
  %24 = getelementptr [6 x %struct.media_ioctl_info], ptr @ioctl_info, i32 0, i32 %9, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 %25(ptr noundef nonnull %23, ptr noundef %8, i32 noundef %1) #14
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %22
  %29 = icmp eq i32 %9, 5
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = call i32 @media_device_request_alloc(ptr noundef %7, ptr noundef nonnull %23) #14
  br label %37

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.media_device, ptr %7, i32 0, i32 16
  call void @mutex_lock(ptr noundef %33) #14
  %34 = getelementptr [6 x %struct.media_ioctl_info], ptr @ioctl_info, i32 0, i32 %9, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = call i32 %35(ptr noundef %7, ptr noundef nonnull %23) #14
  call void @mutex_unlock(ptr noundef %33) #14
  br label %37

37:                                               ; preds = %32, %30
  %38 = phi i32 [ %31, %30 ], [ %36, %32 ]
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = getelementptr [6 x %struct.media_ioctl_info], ptr @ioctl_info, i32 0, i32 %9, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = call i32 %42(ptr noundef %8, ptr noundef nonnull %23, i32 noundef %1) #14
  br label %44

44:                                               ; preds = %40, %37, %22
  %45 = phi i32 [ %26, %22 ], [ %38, %37 ], [ %43, %40 ]
  %46 = icmp eq ptr %23, %4
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  call void @kfree(ptr noundef nonnull %23) #14
  br label %48

48:                                               ; preds = %47, %44, %19, %11, %3
  %49 = phi i32 [ -515, %11 ], [ -515, %3 ], [ -12, %19 ], [ %45, %47 ], [ %45, %44 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #14
  ret i32 %49
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @media_device_open(ptr nocapture noundef readnone %0) #6 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @media_device_close(ptr nocapture noundef readnone %0) #6 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @media_device_get_info(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(256) %1, i8 0, i32 256, i1 false)
  %3 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 3
  %4 = load i8, ptr %3, align 8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi ptr [ %10, %6 ], [ %3, %2 ]
  %13 = tail call i32 @strscpy(ptr noundef %1, ptr noundef %12, i32 noundef 16) #14
  %14 = getelementptr inbounds %struct.media_device_info, ptr %1, i32 0, i32 1
  %15 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 2
  %16 = tail call i32 @strscpy(ptr noundef %14, ptr noundef %15, i32 noundef 32) #14
  %17 = getelementptr inbounds %struct.media_device_info, ptr %1, i32 0, i32 2
  %18 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 4
  %19 = tail call i32 @strscpy(ptr noundef %17, ptr noundef %18, i32 noundef 40) #14
  %20 = getelementptr inbounds %struct.media_device_info, ptr %1, i32 0, i32 3
  %21 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 5
  %22 = tail call i32 @strscpy(ptr noundef %20, ptr noundef %21, i32 noundef 32) #14
  %23 = getelementptr inbounds %struct.media_device_info, ptr %1, i32 0, i32 4
  store i32 332032, ptr %23, align 4
  %24 = getelementptr inbounds %struct.media_device_info, ptr %1, i32 0, i32 6
  store i32 332032, ptr %24, align 4
  %25 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 6
  %26 = load i32, ptr %25, align 8
  %27 = getelementptr inbounds %struct.media_device_info, ptr %1, i32 0, i32 5
  store i32 %26, ptr %27, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @copy_arg_from_user(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, 1073741824
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %3
  %7 = lshr i32 %2, 16
  %8 = and i32 %7, 16383
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %8, i32 -1090519040) #17, !srcloc !10
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19, !prof !8

12:                                               ; preds = %6
  %13 = tail call ptr @llvm.thread.pointer() #14
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #18, !srcloc !11
  %16 = and i32 %15, -13
  %17 = or i32 %16, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #14, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !13
  %18 = tail call i32 @arm_copy_from_user(ptr noundef %0, ptr noundef %1, i32 noundef %8) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #14, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !13
  br label %19

19:                                               ; preds = %12, %6
  %20 = phi i32 [ %18, %12 ], [ %8, %6 ]
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22, !prof !8

22:                                               ; preds = %19
  %23 = sub i32 %8, %20
  %24 = getelementptr i8, ptr %0, i32 %23
  tail call void @llvm.memset.p0.i32(ptr align 1 %24, i8 0, i32 %20, i1 false) #14
  br label %25

25:                                               ; preds = %22, %19, %3
  %26 = phi i32 [ 0, %19 ], [ 0, %3 ], [ -14, %22 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @copy_arg_to_user(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp sgt i32 %2, -1
  br i1 %4, label %21, label %5

5:                                                ; preds = %3
  %6 = lshr i32 %2, 16
  %7 = and i32 %6, 16383
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %7, i32 -1090519040) #17, !srcloc !14
  %9 = extractvalue { i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %5
  %12 = tail call ptr @llvm.thread.pointer() #14
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #18, !srcloc !11
  %15 = and i32 %14, -13
  %16 = or i32 %15, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #14, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !13
  %17 = tail call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef %1, i32 noundef %7) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #14, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !13
  br label %18

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %17, %11 ], [ %7, %5 ]
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %3
  br label %22

22:                                               ; preds = %21, %18
  %23 = phi i32 [ 0, %21 ], [ -14, %18 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @media_device_enum_entities(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = load i32, ptr %1, align 4
  %4 = and i32 %3, 2147483647
  %5 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 11
  %6 = icmp slt i32 %3, 0
  br label %7

7:                                                ; preds = %11, %2
  %8 = phi ptr [ %5, %2 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %5
  br i1 %10, label %62, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %9, i32 -4
  %13 = load i32, ptr %12, align 4
  %14 = icmp ne i32 %13, %4
  %15 = or i1 %6, %14
  %16 = xor i1 %15, true
  %17 = icmp ugt i32 %13, %4
  %18 = and i1 %6, %17
  %19 = select i1 %16, i1 true, i1 %18
  br i1 %19, label %20, label %7

20:                                               ; preds = %11
  %21 = getelementptr i8, ptr %9, i32 -8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %62, label %23

23:                                               ; preds = %20
  %24 = getelementptr i8, ptr %9, i32 -4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(256) %1, i8 0, i32 256, i1 false)
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %1, align 4
  %26 = getelementptr i8, ptr %9, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.media_entity_desc, ptr %1, i32 0, i32 1
  %31 = tail call i32 @strscpy(ptr noundef %30, ptr noundef nonnull %27, i32 noundef 32) #14
  br label %32

32:                                               ; preds = %29, %23
  %33 = getelementptr i8, ptr %9, i32 16
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.media_entity_desc, ptr %1, i32 0, i32 2
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.media_entity_desc, ptr %1, i32 0, i32 3
  store i32 0, ptr %36, align 4
  %37 = getelementptr i8, ptr %9, i32 20
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.media_entity_desc, ptr %1, i32 0, i32 4
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.media_entity_desc, ptr %1, i32 0, i32 5
  store i32 0, ptr %40, align 4
  %41 = getelementptr i8, ptr %9, i32 24
  %42 = load i16, ptr %41, align 4
  %43 = getelementptr inbounds %struct.media_entity_desc, ptr %1, i32 0, i32 6
  store i16 %42, ptr %43, align 4
  %44 = getelementptr i8, ptr %9, i32 26
  %45 = load i16, ptr %44, align 2
  %46 = getelementptr i8, ptr %9, i32 28
  %47 = load i16, ptr %46, align 4
  %48 = sub i16 %45, %47
  %49 = getelementptr inbounds %struct.media_entity_desc, ptr %1, i32 0, i32 7
  store i16 %48, ptr %49, align 2
  %50 = load i32, ptr %33, align 4
  %51 = add i32 %50, -131078
  %52 = icmp ult i32 %51, -65542
  br i1 %52, label %53, label %58

53:                                               ; preds = %32
  %54 = getelementptr i8, ptr %9, i32 12
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 2
  %57 = select i1 %56, i32 131072, i32 131071
  store i32 %57, ptr %35, align 4
  br label %58

58:                                               ; preds = %53, %32
  %59 = getelementptr inbounds %struct.media_entity_desc, ptr %1, i32 0, i32 9
  %60 = getelementptr i8, ptr %9, i32 64
  %61 = load i64, ptr %60, align 4
  store i64 %61, ptr %59, align 4
  br label %62

62:                                               ; preds = %58, %20, %7
  %63 = phi i32 [ 0, %58 ], [ -22, %20 ], [ -22, %7 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @media_device_enum_links(ptr noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.media_pad_desc, align 4
  %4 = alloca %struct.media_link_desc, align 4
  %5 = load i32, ptr %1, align 4
  %6 = and i32 %5, 2147483647
  %7 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 11
  %8 = icmp slt i32 %5, 0
  br label %9

9:                                                ; preds = %13, %2
  %10 = phi ptr [ %7, %2 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %7
  br i1 %12, label %133, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %11, i32 -4
  %15 = load i32, ptr %14, align 4
  %16 = icmp ne i32 %15, %6
  %17 = or i1 %8, %16
  %18 = xor i1 %17, true
  %19 = icmp ugt i32 %15, %6
  %20 = and i1 %8, %19
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %22, label %9

22:                                               ; preds = %13
  %23 = getelementptr i8, ptr %11, i32 -8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %133, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.media_links_enum, ptr %1, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %69, label %29

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %11, i32 24
  %31 = load i16, ptr %30, align 4
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %69, label %33

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %11, i32 36
  %35 = getelementptr inbounds %struct.media_pad_desc, ptr %3, i32 0, i32 1
  %36 = getelementptr inbounds %struct.media_pad_desc, ptr %3, i32 0, i32 2
  br label %44

37:                                               ; preds = %61
  %38 = add nuw nsw i32 %46, 1
  %39 = load i16, ptr %30, align 4
  %40 = zext i16 %39 to i32
  %41 = icmp ult i32 %38, %40
  br i1 %41, label %42, label %69

42:                                               ; preds = %37
  %43 = load ptr, ptr %26, align 4
  br label %44

44:                                               ; preds = %42, %33
  %45 = phi ptr [ %27, %33 ], [ %43, %42 ]
  %46 = phi i32 [ 0, %33 ], [ %38, %42 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i64 20, i1 false)
  %47 = load ptr, ptr %34, align 4
  %48 = getelementptr %struct.media_pad, ptr %47, i32 %46, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.media_gobj, ptr %49, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  store i32 %51, ptr %3, align 4
  %52 = getelementptr %struct.media_pad, ptr %47, i32 %46, i32 2
  %53 = load i16, ptr %52, align 4
  store i16 %53, ptr %35, align 4
  %54 = getelementptr %struct.media_pad, ptr %47, i32 %46, i32 4
  %55 = load i32, ptr %54, align 4
  store i32 %55, ptr %36, align 4
  %56 = getelementptr %struct.media_pad_desc, ptr %45, i32 %46
  %57 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %56, i32 20, i32 -1090519040) #17, !srcloc !14
  %58 = extractvalue { i32, i32 } %57, 0
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %44
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #14
  br label %133

61:                                               ; preds = %44
  %62 = tail call ptr @llvm.thread.pointer() #14
  %63 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 3
  %64 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %63) #18, !srcloc !11
  %65 = and i32 %64, -13
  %66 = or i32 %65, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %66) #14, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !13
  %67 = call i32 @arm_copy_to_user(ptr noundef %56, ptr noundef nonnull %3, i32 noundef 20) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %64) #14, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !13
  %68 = icmp eq i32 %67, 0
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #14
  br i1 %68, label %37, label %133

69:                                               ; preds = %37, %29, %25
  %70 = getelementptr inbounds %struct.media_links_enum, ptr %1, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %131, label %73

73:                                               ; preds = %69
  %74 = getelementptr i8, ptr %11, i32 40
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, %74
  br i1 %76, label %131, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.media_pad_desc, ptr %4, i32 0, i32 1
  %79 = getelementptr inbounds %struct.media_pad_desc, ptr %4, i32 0, i32 2
  %80 = getelementptr inbounds %struct.media_link_desc, ptr %4, i32 0, i32 1
  %81 = getelementptr inbounds %struct.media_link_desc, ptr %4, i32 0, i32 1, i32 1
  %82 = getelementptr inbounds %struct.media_link_desc, ptr %4, i32 0, i32 1, i32 2
  %83 = getelementptr inbounds %struct.media_link_desc, ptr %4, i32 0, i32 2
  br label %84

84:                                               ; preds = %126, %77
  %85 = phi ptr [ %75, %77 ], [ %128, %126 ]
  %86 = phi ptr [ %71, %77 ], [ %127, %126 ]
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %4, i8 0, i32 52, i1 false), !annotation !9
  %87 = getelementptr i8, ptr %85, i32 8
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.media_pad, ptr %88, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, %23
  br i1 %91, label %92, label %126

92:                                               ; preds = %84
  %93 = load ptr, ptr %87, align 4
  %94 = getelementptr inbounds %struct.media_pad, ptr %93, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.media_gobj, ptr %95, i32 0, i32 1
  %97 = load i32, ptr %96, align 4
  store i32 %97, ptr %4, align 4
  %98 = getelementptr inbounds %struct.media_pad, ptr %93, i32 0, i32 2
  %99 = load i16, ptr %98, align 4
  store i16 %99, ptr %78, align 4
  %100 = getelementptr inbounds %struct.media_pad, ptr %93, i32 0, i32 4
  %101 = load i32, ptr %100, align 4
  store i32 %101, ptr %79, align 4
  %102 = getelementptr i8, ptr %85, i32 12
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.media_pad, ptr %103, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.media_gobj, ptr %105, i32 0, i32 1
  %107 = load i32, ptr %106, align 4
  store i32 %107, ptr %80, align 4
  %108 = getelementptr inbounds %struct.media_pad, ptr %103, i32 0, i32 2
  %109 = load i16, ptr %108, align 4
  store i16 %109, ptr %81, align 4
  %110 = getelementptr inbounds %struct.media_pad, ptr %103, i32 0, i32 4
  %111 = load i32, ptr %110, align 4
  store i32 %111, ptr %82, align 4
  %112 = getelementptr i8, ptr %85, i32 20
  %113 = load i32, ptr %112, align 4
  store i32 %113, ptr %83, align 4
  %114 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %86, i32 52, i32 -1090519040) #17, !srcloc !14
  %115 = extractvalue { i32, i32 } %114, 0
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %92
  %118 = tail call ptr @llvm.thread.pointer() #14
  %119 = getelementptr inbounds %struct.thread_info, ptr %118, i32 0, i32 3
  %120 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %119) #18, !srcloc !11
  %121 = and i32 %120, -13
  %122 = or i32 %121, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %122) #14, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !13
  %123 = call i32 @arm_copy_to_user(ptr noundef %86, ptr noundef nonnull %4, i32 noundef 52) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %120) #14, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !13
  %124 = icmp eq i32 %123, 0
  %125 = getelementptr %struct.media_link_desc, ptr %86, i32 1
  br i1 %124, label %126, label %130

126:                                              ; preds = %117, %84
  %127 = phi ptr [ %86, %84 ], [ %125, %117 ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %4) #14
  %128 = load ptr, ptr %85, align 4
  %129 = icmp eq ptr %128, %74
  br i1 %129, label %131, label %84

130:                                              ; preds = %117, %92
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %4) #14
  br label %133

131:                                              ; preds = %126, %73, %69
  %132 = getelementptr inbounds %struct.media_links_enum, ptr %1, i32 0, i32 3
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %132, i8 0, i32 16, i1 false)
  br label %133

133:                                              ; preds = %131, %130, %61, %60, %22, %9
  %134 = phi i32 [ 0, %131 ], [ -14, %130 ], [ -22, %22 ], [ -14, %60 ], [ -14, %61 ], [ -22, %9 ]
  ret i32 %134
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @media_device_setup_link(ptr noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = load i32, ptr %1, align 4
  %4 = and i32 %3, 2147483647
  %5 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 11
  %6 = icmp slt i32 %3, 0
  br label %7

7:                                                ; preds = %11, %2
  %8 = phi ptr [ %5, %2 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %5
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %9, i32 -4
  %13 = load i32, ptr %12, align 4
  %14 = icmp ne i32 %13, %4
  %15 = or i1 %6, %14
  %16 = xor i1 %15, true
  %17 = icmp ugt i32 %13, %4
  %18 = and i1 %6, %17
  %19 = select i1 %16, i1 true, i1 %18
  br i1 %19, label %20, label %7

20:                                               ; preds = %11
  %21 = getelementptr i8, ptr %9, i32 -8
  br label %22

22:                                               ; preds = %20, %7
  %23 = phi ptr [ %21, %20 ], [ null, %7 ]
  %24 = getelementptr inbounds %struct.media_link_desc, ptr %1, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 2147483647
  %27 = icmp slt i32 %25, 0
  br label %28

28:                                               ; preds = %32, %22
  %29 = phi ptr [ %5, %22 ], [ %30, %32 ]
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %5
  br i1 %31, label %74, label %32

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %30, i32 -4
  %34 = load i32, ptr %33, align 4
  %35 = icmp ne i32 %34, %26
  %36 = or i1 %27, %35
  %37 = xor i1 %36, true
  %38 = icmp ugt i32 %34, %26
  %39 = and i1 %27, %38
  %40 = select i1 %37, i1 true, i1 %39
  br i1 %40, label %41, label %28

41:                                               ; preds = %32
  %42 = getelementptr i8, ptr %30, i32 -8
  %43 = icmp eq ptr %23, null
  %44 = icmp eq ptr %42, null
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %74, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.media_pad_desc, ptr %1, i32 0, i32 1
  %48 = load i16, ptr %47, align 4
  %49 = zext i16 %48 to i32
  %50 = getelementptr inbounds %struct.media_entity, ptr %23, i32 0, i32 5
  %51 = load i16, ptr %50, align 4
  %52 = icmp ult i16 %48, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.media_link_desc, ptr %1, i32 0, i32 1, i32 1
  %55 = load i16, ptr %54, align 4
  %56 = getelementptr i8, ptr %30, i32 24
  %57 = load i16, ptr %56, align 4
  %58 = icmp ult i16 %55, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %53
  %60 = zext i16 %55 to i32
  %61 = getelementptr inbounds %struct.media_entity, ptr %23, i32 0, i32 9
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr %struct.media_pad, ptr %62, i32 %49
  %64 = getelementptr i8, ptr %30, i32 36
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr %struct.media_pad, ptr %65, i32 %60
  %67 = tail call ptr @media_entity_find_link(ptr noundef %63, ptr noundef %66) #14
  %68 = icmp eq ptr %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct.media_link_desc, ptr %1, i32 0, i32 3
  store i64 0, ptr %70, align 4
  %71 = getelementptr inbounds %struct.media_link_desc, ptr %1, i32 0, i32 2
  %72 = load i32, ptr %71, align 4
  %73 = tail call i32 @__media_entity_setup_link(ptr noundef nonnull %67, i32 noundef %72) #14
  br label %74

74:                                               ; preds = %69, %59, %53, %46, %41, %28
  %75 = phi i32 [ %73, %69 ], [ -22, %41 ], [ -22, %53 ], [ -22, %46 ], [ -22, %59 ], [ -22, %28 ]
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @media_device_get_topology(ptr noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.media_v2_entity, align 4
  %4 = alloca %struct.media_v2_interface, align 4
  %5 = alloca %struct.media_v2_pad, align 4
  %6 = alloca %struct.media_v2_link, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %3, i8 0, i32 96, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(112) %4, i8 0, i32 112, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %6, i8 0, i32 40, i1 false), !annotation !9
  %7 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 7
  %8 = load i64, ptr %7, align 8
  store i64 %8, ptr %1, align 1
  %9 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %63, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.media_v2_topology, ptr %1, i32 0, i32 3
  %14 = load i64, ptr %13, align 1
  %15 = trunc i64 %14 to i32
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.media_v2_topology, ptr %1, i32 0, i32 1
  %18 = getelementptr inbounds %struct.media_v2_entity, ptr %3, i32 0, i32 2
  %19 = getelementptr inbounds %struct.media_v2_entity, ptr %3, i32 0, i32 3
  %20 = getelementptr inbounds %struct.media_v2_entity, ptr %3, i32 0, i32 1
  br label %21

21:                                               ; preds = %58, %12
  %22 = phi ptr [ %10, %12 ], [ %61, %58 ]
  %23 = phi ptr [ %16, %12 ], [ %60, %58 ]
  %24 = phi i32 [ 0, %12 ], [ %26, %58 ]
  %25 = phi i32 [ 0, %12 ], [ %59, %58 ]
  %26 = add i32 %24, 1
  %27 = icmp eq i32 %25, 0
  %28 = icmp ne ptr %23, null
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %58

30:                                               ; preds = %21
  %31 = load i32, ptr %17, align 1
  %32 = icmp ugt i32 %26, %31
  br i1 %32, label %58, label %33

33:                                               ; preds = %30
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %3, i8 0, i32 96, i1 false)
  %34 = getelementptr i8, ptr %22, i32 -4
  %35 = load i32, ptr %34, align 4
  store i32 %35, ptr %3, align 4
  %36 = getelementptr i8, ptr %22, i32 16
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr %18, align 4
  %38 = getelementptr i8, ptr %22, i32 20
  %39 = load i32, ptr %38, align 4
  store i32 %39, ptr %19, align 4
  %40 = getelementptr i8, ptr %22, i32 8
  %41 = load ptr, ptr %40, align 4
  %42 = call i32 @strscpy(ptr noundef %20, ptr noundef %41, i32 noundef 64) #14
  %43 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %23, i32 96, i32 -1090519040) #17, !srcloc !14
  %44 = extractvalue { i32, i32 } %43, 0
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %33
  %47 = tail call ptr @llvm.thread.pointer() #14
  %48 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 3
  %49 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %48) #18, !srcloc !11
  %50 = and i32 %49, -13
  %51 = or i32 %50, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %51) #14, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !13
  %52 = call i32 @arm_copy_to_user(ptr noundef nonnull %23, ptr noundef nonnull %3, i32 noundef 96) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #14, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !13
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i32 0, i32 -14
  br label %55

55:                                               ; preds = %46, %33
  %56 = phi i32 [ -14, %33 ], [ %54, %46 ]
  %57 = getelementptr %struct.media_v2_entity, ptr %23, i32 1
  br label %58

58:                                               ; preds = %55, %30, %21
  %59 = phi i32 [ %56, %55 ], [ %25, %21 ], [ -28, %30 ]
  %60 = phi ptr [ %57, %55 ], [ %23, %21 ], [ %23, %30 ]
  %61 = load ptr, ptr %22, align 4
  %62 = icmp eq ptr %61, %9
  br i1 %62, label %63, label %21

63:                                               ; preds = %58, %2
  %64 = phi i32 [ 0, %2 ], [ %59, %58 ]
  %65 = phi i32 [ 0, %2 ], [ %26, %58 ]
  %66 = getelementptr inbounds %struct.media_v2_topology, ptr %1, i32 0, i32 1
  store i32 %65, ptr %66, align 1
  %67 = getelementptr inbounds %struct.media_v2_topology, ptr %1, i32 0, i32 2
  store i32 0, ptr %67, align 1
  %68 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 12
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, %68
  br i1 %70, label %129, label %71

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.media_v2_topology, ptr %1, i32 0, i32 6
  %73 = load i64, ptr %72, align 1
  %74 = trunc i64 %73 to i32
  %75 = inttoptr i32 %74 to ptr
  %76 = getelementptr inbounds %struct.media_v2_topology, ptr %1, i32 0, i32 4
  %77 = getelementptr inbounds %struct.media_v2_interface, ptr %4, i32 0, i32 1
  %78 = getelementptr inbounds %struct.media_v2_interface, ptr %4, i32 0, i32 2
  %79 = getelementptr inbounds %struct.media_v2_interface, ptr %4, i32 0, i32 4
  %80 = getelementptr inbounds %struct.media_v2_interface, ptr %4, i32 0, i32 4, i32 0, i32 1
  br label %81

81:                                               ; preds = %124, %71
  %82 = phi ptr [ %69, %71 ], [ %127, %124 ]
  %83 = phi ptr [ %75, %71 ], [ %126, %124 ]
  %84 = phi i32 [ 0, %71 ], [ %86, %124 ]
  %85 = phi i32 [ %64, %71 ], [ %125, %124 ]
  %86 = add i32 %84, 1
  %87 = icmp eq i32 %85, 0
  %88 = icmp ne ptr %83, null
  %89 = select i1 %87, i1 %88, i1 false
  br i1 %89, label %90, label %124

90:                                               ; preds = %81
  %91 = load i32, ptr %76, align 1
  %92 = icmp ugt i32 %86, %91
  br i1 %92, label %124, label %93

93:                                               ; preds = %90
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(112) %4, i8 0, i32 112, i1 false)
  %94 = getelementptr i8, ptr %82, i32 -4
  %95 = load i32, ptr %94, align 4
  store i32 %95, ptr %4, align 4
  %96 = getelementptr i8, ptr %82, i32 16
  %97 = load i32, ptr %96, align 4
  store i32 %97, ptr %77, align 4
  %98 = getelementptr i8, ptr %82, i32 20
  %99 = load i32, ptr %98, align 4
  store i32 %99, ptr %78, align 4
  %100 = load i32, ptr %94, align 4
  %101 = and i32 %100, -16777216
  %102 = icmp eq i32 %101, 50331648
  br i1 %102, label %103, label %108

103:                                              ; preds = %93
  %104 = getelementptr i8, ptr %82, i32 24
  %105 = load i32, ptr %104, align 4
  store i32 %105, ptr %79, align 4
  %106 = getelementptr i8, ptr %82, i32 28
  %107 = load i32, ptr %106, align 4
  store i32 %107, ptr %80, align 4
  br label %108

108:                                              ; preds = %103, %93
  %109 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %83, i32 112, i32 -1090519040) #17, !srcloc !14
  %110 = extractvalue { i32, i32 } %109, 0
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %108
  %113 = tail call ptr @llvm.thread.pointer() #14
  %114 = getelementptr inbounds %struct.thread_info, ptr %113, i32 0, i32 3
  %115 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %114) #18, !srcloc !11
  %116 = and i32 %115, -13
  %117 = or i32 %116, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %117) #14, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !13
  %118 = call i32 @arm_copy_to_user(ptr noundef nonnull %83, ptr noundef nonnull %4, i32 noundef 112) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %115) #14, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !13
  %119 = icmp eq i32 %118, 0
  %120 = select i1 %119, i32 0, i32 -14
  br label %121

121:                                              ; preds = %112, %108
  %122 = phi i32 [ -14, %108 ], [ %120, %112 ]
  %123 = getelementptr %struct.media_v2_interface, ptr %83, i32 1
  br label %124

124:                                              ; preds = %121, %90, %81
  %125 = phi i32 [ %122, %121 ], [ %85, %81 ], [ -28, %90 ]
  %126 = phi ptr [ %123, %121 ], [ %83, %81 ], [ %83, %90 ]
  %127 = load ptr, ptr %82, align 4
  %128 = icmp eq ptr %127, %68
  br i1 %128, label %129, label %81

129:                                              ; preds = %124, %63
  %130 = phi i32 [ %64, %63 ], [ %125, %124 ]
  %131 = phi i32 [ 0, %63 ], [ %86, %124 ]
  %132 = getelementptr inbounds %struct.media_v2_topology, ptr %1, i32 0, i32 4
  store i32 %131, ptr %132, align 1
  %133 = getelementptr inbounds %struct.media_v2_topology, ptr %1, i32 0, i32 5
  store i32 0, ptr %133, align 1
  %134 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 13
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, %134
  br i1 %136, label %190, label %137

137:                                              ; preds = %129
  %138 = getelementptr inbounds %struct.media_v2_topology, ptr %1, i32 0, i32 9
  %139 = load i64, ptr %138, align 1
  %140 = trunc i64 %139 to i32
  %141 = inttoptr i32 %140 to ptr
  %142 = getelementptr inbounds %struct.media_v2_topology, ptr %1, i32 0, i32 7
  %143 = getelementptr inbounds %struct.media_v2_pad, ptr %5, i32 0, i32 1
  %144 = getelementptr inbounds %struct.media_v2_pad, ptr %5, i32 0, i32 2
  %145 = getelementptr inbounds %struct.media_v2_pad, ptr %5, i32 0, i32 3
  br label %146

146:                                              ; preds = %185, %137
  %147 = phi ptr [ %135, %137 ], [ %188, %185 ]
  %148 = phi ptr [ %141, %137 ], [ %187, %185 ]
  %149 = phi i32 [ 0, %137 ], [ %151, %185 ]
  %150 = phi i32 [ %130, %137 ], [ %186, %185 ]
  %151 = add i32 %149, 1
  %152 = icmp eq i32 %150, 0
  %153 = icmp ne ptr %148, null
  %154 = select i1 %152, i1 %153, i1 false
  br i1 %154, label %155, label %185

155:                                              ; preds = %146
  %156 = load i32, ptr %142, align 1
  %157 = icmp ugt i32 %151, %156
  br i1 %157, label %185, label %158

158:                                              ; preds = %155
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false)
  %159 = getelementptr i8, ptr %147, i32 -4
  %160 = load i32, ptr %159, align 4
  store i32 %160, ptr %5, align 4
  %161 = getelementptr i8, ptr %147, i32 8
  %162 = load ptr, ptr %161, align 4
  %163 = getelementptr inbounds %struct.media_gobj, ptr %162, i32 0, i32 1
  %164 = load i32, ptr %163, align 4
  store i32 %164, ptr %143, align 4
  %165 = getelementptr i8, ptr %147, i32 20
  %166 = load i32, ptr %165, align 4
  store i32 %166, ptr %144, align 4
  %167 = getelementptr i8, ptr %147, i32 12
  %168 = load i16, ptr %167, align 4
  %169 = zext i16 %168 to i32
  store i32 %169, ptr %145, align 4
  %170 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %148, i32 32, i32 -1090519040) #17, !srcloc !14
  %171 = extractvalue { i32, i32 } %170, 0
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %158
  %174 = tail call ptr @llvm.thread.pointer() #14
  %175 = getelementptr inbounds %struct.thread_info, ptr %174, i32 0, i32 3
  %176 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %175) #18, !srcloc !11
  %177 = and i32 %176, -13
  %178 = or i32 %177, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %178) #14, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !13
  %179 = call i32 @arm_copy_to_user(ptr noundef nonnull %148, ptr noundef nonnull %5, i32 noundef 32) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %176) #14, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !13
  %180 = icmp eq i32 %179, 0
  %181 = select i1 %180, i32 0, i32 -14
  br label %182

182:                                              ; preds = %173, %158
  %183 = phi i32 [ -14, %158 ], [ %181, %173 ]
  %184 = getelementptr %struct.media_v2_pad, ptr %148, i32 1
  br label %185

185:                                              ; preds = %182, %155, %146
  %186 = phi i32 [ %183, %182 ], [ %150, %146 ], [ -28, %155 ]
  %187 = phi ptr [ %184, %182 ], [ %148, %146 ], [ %148, %155 ]
  %188 = load ptr, ptr %147, align 4
  %189 = icmp eq ptr %188, %134
  br i1 %189, label %190, label %146

190:                                              ; preds = %185, %129
  %191 = phi i32 [ %130, %129 ], [ %186, %185 ]
  %192 = phi i32 [ 0, %129 ], [ %151, %185 ]
  %193 = getelementptr inbounds %struct.media_v2_topology, ptr %1, i32 0, i32 7
  store i32 %192, ptr %193, align 1
  %194 = getelementptr inbounds %struct.media_v2_topology, ptr %1, i32 0, i32 8
  store i32 0, ptr %194, align 1
  %195 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 14
  %196 = load ptr, ptr %195, align 4
  %197 = icmp eq ptr %196, %195
  br i1 %197, label %257, label %198

198:                                              ; preds = %190
  %199 = getelementptr inbounds %struct.media_v2_topology, ptr %1, i32 0, i32 12
  %200 = load i64, ptr %199, align 1
  %201 = trunc i64 %200 to i32
  %202 = inttoptr i32 %201 to ptr
  %203 = getelementptr inbounds %struct.media_v2_topology, ptr %1, i32 0, i32 10
  %204 = getelementptr inbounds %struct.media_v2_link, ptr %6, i32 0, i32 1
  %205 = getelementptr inbounds %struct.media_v2_link, ptr %6, i32 0, i32 2
  %206 = getelementptr inbounds %struct.media_v2_link, ptr %6, i32 0, i32 3
  br label %207

207:                                              ; preds = %251, %198
  %208 = phi ptr [ %196, %198 ], [ %255, %251 ]
  %209 = phi ptr [ %202, %198 ], [ %254, %251 ]
  %210 = phi i32 [ 0, %198 ], [ %253, %251 ]
  %211 = phi i32 [ %191, %198 ], [ %252, %251 ]
  %212 = getelementptr i8, ptr %208, i32 32
  %213 = load i8, ptr %212, align 4, !range !15
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %215, label %251

215:                                              ; preds = %207
  %216 = add i32 %210, 1
  %217 = icmp eq i32 %211, 0
  %218 = icmp ne ptr %209, null
  %219 = select i1 %217, i1 %218, i1 false
  br i1 %219, label %220, label %251

220:                                              ; preds = %215
  %221 = load i32, ptr %203, align 1
  %222 = icmp ugt i32 %216, %221
  br i1 %222, label %251, label %223

223:                                              ; preds = %220
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %6, i8 0, i32 40, i1 false)
  %224 = getelementptr i8, ptr %208, i32 -4
  %225 = load i32, ptr %224, align 4
  store i32 %225, ptr %6, align 4
  %226 = getelementptr i8, ptr %208, i32 16
  %227 = load ptr, ptr %226, align 4
  %228 = getelementptr inbounds %struct.media_gobj, ptr %227, i32 0, i32 1
  %229 = load i32, ptr %228, align 4
  store i32 %229, ptr %204, align 4
  %230 = getelementptr i8, ptr %208, i32 20
  %231 = load ptr, ptr %230, align 4
  %232 = getelementptr inbounds %struct.media_gobj, ptr %231, i32 0, i32 1
  %233 = load i32, ptr %232, align 4
  store i32 %233, ptr %205, align 4
  %234 = getelementptr i8, ptr %208, i32 28
  %235 = load i32, ptr %234, align 4
  store i32 %235, ptr %206, align 4
  %236 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %209, i32 40, i32 -1090519040) #17, !srcloc !14
  %237 = extractvalue { i32, i32 } %236, 0
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %248

239:                                              ; preds = %223
  %240 = tail call ptr @llvm.thread.pointer() #14
  %241 = getelementptr inbounds %struct.thread_info, ptr %240, i32 0, i32 3
  %242 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %241) #18, !srcloc !11
  %243 = and i32 %242, -13
  %244 = or i32 %243, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %244) #14, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !13
  %245 = call i32 @arm_copy_to_user(ptr noundef nonnull %209, ptr noundef nonnull %6, i32 noundef 40) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %242) #14, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !13
  %246 = icmp eq i32 %245, 0
  %247 = select i1 %246, i32 0, i32 -14
  br label %248

248:                                              ; preds = %239, %223
  %249 = phi i32 [ -14, %223 ], [ %247, %239 ]
  %250 = getelementptr %struct.media_v2_link, ptr %209, i32 1
  br label %251

251:                                              ; preds = %248, %220, %215, %207
  %252 = phi i32 [ %211, %207 ], [ %249, %248 ], [ %211, %215 ], [ -28, %220 ]
  %253 = phi i32 [ %210, %207 ], [ %216, %248 ], [ %216, %215 ], [ %216, %220 ]
  %254 = phi ptr [ %209, %207 ], [ %250, %248 ], [ %209, %215 ], [ %209, %220 ]
  %255 = load ptr, ptr %208, align 4
  %256 = icmp eq ptr %255, %195
  br i1 %256, label %257, label %207

257:                                              ; preds = %251, %190
  %258 = phi i32 [ %191, %190 ], [ %252, %251 ]
  %259 = phi i32 [ 0, %190 ], [ %253, %251 ]
  %260 = getelementptr inbounds %struct.media_v2_topology, ptr %1, i32 0, i32 10
  store i32 %259, ptr %260, align 1
  %261 = getelementptr inbounds %struct.media_v2_topology, ptr %1, i32 0, i32 11
  store i32 0, ptr %261, align 1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #14
  ret i32 %258
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @media_device_request_alloc(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 21
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.media_device_ops, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.media_device_ops, ptr %4, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @media_request_alloc(ptr noundef %0, ptr noundef %1) #14
  br label %16

16:                                               ; preds = %14, %10, %6, %2
  %17 = phi i32 [ %15, %14 ], [ -25, %10 ], [ -25, %6 ], [ -25, %2 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_find_link(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_entity_setup_link(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_request_alloc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @model_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #11 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.media_device, ptr %5, i32 0, i32 2
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef 32, ptr noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readnone }
attributes #18 = { nounwind readonly }

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
!9 = !{!"auto-init"}
!10 = !{i64 2151080931, i64 2151080956}
!11 = !{i64 3577043}
!12 = !{i64 3577240}
!13 = !{i64 2151062519}
!14 = !{i64 2151081509, i64 2151081534}
!15 = !{i8 0, i8 2}
