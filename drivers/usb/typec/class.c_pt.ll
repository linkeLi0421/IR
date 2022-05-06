; ModuleID = '/llk/IR/drivers/usb/typec/class.c_pt.bc'
source_filename = "../drivers/usb/typec/class.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_altmode_update_active:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_altmode_update_active\22\09\09\09\09\09"
module asm "__kstrtabns_typec_altmode_update_active:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_altmode2port:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_altmode2port\22\09\09\09\09\09"
module asm "__kstrtabns_typec_altmode2port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_unregister_altmode:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_unregister_altmode\22\09\09\09\09\09"
module asm "__kstrtabns_typec_unregister_altmode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_partner_set_identity:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_partner_set_identity\22\09\09\09\09\09"
module asm "__kstrtabns_typec_partner_set_identity:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_partner_set_pd_revision:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_partner_set_pd_revision\22\09\09\09\09\09"
module asm "__kstrtabns_typec_partner_set_pd_revision:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_partner_set_num_altmodes:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_partner_set_num_altmodes\22\09\09\09\09\09"
module asm "__kstrtabns_typec_partner_set_num_altmodes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_partner_register_altmode:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_partner_register_altmode\22\09\09\09\09\09"
module asm "__kstrtabns_typec_partner_register_altmode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_partner_set_svdm_version:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_partner_set_svdm_version\22\09\09\09\09\09"
module asm "__kstrtabns_typec_partner_set_svdm_version:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_register_partner:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_register_partner\22\09\09\09\09\09"
module asm "__kstrtabns_typec_register_partner:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_unregister_partner:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_unregister_partner\22\09\09\09\09\09"
module asm "__kstrtabns_typec_unregister_partner:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_plug_set_num_altmodes:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_plug_set_num_altmodes\22\09\09\09\09\09"
module asm "__kstrtabns_typec_plug_set_num_altmodes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_plug_register_altmode:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_plug_register_altmode\22\09\09\09\09\09"
module asm "__kstrtabns_typec_plug_register_altmode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_register_plug:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_register_plug\22\09\09\09\09\09"
module asm "__kstrtabns_typec_register_plug:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_unregister_plug:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_unregister_plug\22\09\09\09\09\09"
module asm "__kstrtabns_typec_unregister_plug:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_cable_get:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_cable_get\22\09\09\09\09\09"
module asm "__kstrtabns_typec_cable_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_cable_put:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_cable_put\22\09\09\09\09\09"
module asm "__kstrtabns_typec_cable_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_cable_is_active:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_cable_is_active\22\09\09\09\09\09"
module asm "__kstrtabns_typec_cable_is_active:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_cable_set_identity:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_cable_set_identity\22\09\09\09\09\09"
module asm "__kstrtabns_typec_cable_set_identity:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_register_cable:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_register_cable\22\09\09\09\09\09"
module asm "__kstrtabns_typec_register_cable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_unregister_cable:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_unregister_cable\22\09\09\09\09\09"
module asm "__kstrtabns_typec_unregister_cable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_set_data_role:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_set_data_role\22\09\09\09\09\09"
module asm "__kstrtabns_typec_set_data_role:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_set_pwr_role:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_set_pwr_role\22\09\09\09\09\09"
module asm "__kstrtabns_typec_set_pwr_role:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_set_vconn_role:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_set_vconn_role\22\09\09\09\09\09"
module asm "__kstrtabns_typec_set_vconn_role:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_set_pwr_opmode:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_set_pwr_opmode\22\09\09\09\09\09"
module asm "__kstrtabns_typec_set_pwr_opmode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_find_pwr_opmode:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_find_pwr_opmode\22\09\09\09\09\09"
module asm "__kstrtabns_typec_find_pwr_opmode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_find_orientation:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_find_orientation\22\09\09\09\09\09"
module asm "__kstrtabns_typec_find_orientation:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_find_port_power_role:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_find_port_power_role\22\09\09\09\09\09"
module asm "__kstrtabns_typec_find_port_power_role:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_find_power_role:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_find_power_role\22\09\09\09\09\09"
module asm "__kstrtabns_typec_find_power_role:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_find_port_data_role:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_find_port_data_role\22\09\09\09\09\09"
module asm "__kstrtabns_typec_find_port_data_role:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_set_orientation:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_set_orientation\22\09\09\09\09\09"
module asm "__kstrtabns_typec_set_orientation:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_get_orientation:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_get_orientation\22\09\09\09\09\09"
module asm "__kstrtabns_typec_get_orientation:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_set_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_set_mode\22\09\09\09\09\09"
module asm "__kstrtabns_typec_set_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_get_negotiated_svdm_version:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_get_negotiated_svdm_version\22\09\09\09\09\09"
module asm "__kstrtabns_typec_get_negotiated_svdm_version:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_get_drvdata:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_get_drvdata\22\09\09\09\09\09"
module asm "__kstrtabns_typec_get_drvdata:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_port_register_altmode:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_port_register_altmode\22\09\09\09\09\09"
module asm "__kstrtabns_typec_port_register_altmode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_port_register_altmodes:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_port_register_altmodes\22\09\09\09\09\09"
module asm "__kstrtabns_typec_port_register_altmodes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_register_port:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_register_port\22\09\09\09\09\09"
module asm "__kstrtabns_typec_register_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_unregister_port:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_unregister_port\22\09\09\09\09\09"
module asm "__kstrtabns_typec_unregister_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

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
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.lock_class_key = type {}
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.typec_altmode = type { %struct.device, i16, i32, i32, i8, ptr, ptr }
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
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.altmode = type { i32, %struct.typec_altmode, ptr, i32, [5 x ptr], [8 x i8], %struct.attribute_group, [2 x ptr], ptr, [2 x ptr] }
%struct.typec_plug = type { %struct.device, i32, %struct.ida, i32 }
%struct.typec_partner = type { %struct.device, i8, ptr, i32, %struct.ida, i32, i16, i32 }
%struct.typec_device_id = type { i16, i8, i32 }
%struct.typec_altmode_desc = type { i16, i8, i32, i32 }
%struct.typec_port = type { i32, %struct.device, %struct.ida, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, ptr }
%struct.typec_partner_desc = type { i8, i32, ptr, i16 }
%struct.typec_capability = type { i32, i32, i16, i16, i32, i32, [3 x i32], i8, ptr, ptr, ptr }
%struct.typec_cable = type { %struct.device, i32, ptr, i8, i16 }
%struct.typec_cable_desc = type { i32, i8, ptr, i16 }
%struct.typec_mux_state = type { ptr, i32, ptr }
%struct.typec_altmode_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_pd_identity = type { i32, i32, i32, [3 x i32] }
%struct.typec_operations = type { ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [6 x i8] c"typec\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@typec_class = dso_local global %struct.class { ptr @.str, ptr @__this_module, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@typec_port_dev_type = dso_local constant %struct.device_type { ptr @.str.18, ptr @typec_groups, ptr @typec_uevent, ptr null, ptr @typec_release, ptr null }, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"drivers/usb/typec/class.c\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"mode%d\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@__kstrtab_typec_altmode_update_active = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_altmode_update_active = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_altmode_update_active = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_altmode_update_active to i32), ptr @__kstrtab_typec_altmode_update_active, ptr @__kstrtabns_typec_altmode_update_active }, section "___ksymtab_gpl+typec_altmode_update_active", align 4
@typec_plug_dev_type = dso_local constant %struct.device_type { ptr @.str.11, ptr @typec_plug_groups, ptr null, ptr null, ptr @typec_plug_release, ptr null }, align 4
@typec_partner_dev_type = dso_local constant %struct.device_type { ptr @.str.5, ptr @typec_partner_groups, ptr null, ptr null, ptr @typec_partner_release, ptr null }, align 4
@__kstrtab_typec_altmode2port = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_altmode2port = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_altmode2port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_altmode2port to i32), ptr @__kstrtab_typec_altmode2port, ptr @__kstrtabns_typec_altmode2port }, section "___ksymtab_gpl+typec_altmode2port", align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"typec_alternate_mode\00", align 1
@typec_altmode_groups = internal global [2 x ptr] [ptr @typec_altmode_group, ptr null], align 4
@typec_altmode_dev_type = dso_local constant %struct.device_type { ptr @.str.4, ptr @typec_altmode_groups, ptr null, ptr null, ptr @typec_altmode_release, ptr null }, align 4
@__kstrtab_typec_unregister_altmode = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_unregister_altmode = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_unregister_altmode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_unregister_altmode to i32), ptr @__kstrtab_typec_unregister_altmode, ptr @__kstrtabns_typec_unregister_altmode }, section "___ksymtab_gpl+typec_unregister_altmode", align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"typec_partner\00", align 1
@typec_partner_groups = internal global [2 x ptr] [ptr @typec_partner_group, ptr null], align 4
@__kstrtab_typec_partner_set_identity = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_partner_set_identity = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_partner_set_identity = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_partner_set_identity to i32), ptr @__kstrtab_typec_partner_set_identity, ptr @__kstrtabns_typec_partner_set_identity }, section "___ksymtab_gpl+typec_partner_set_identity", align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"usb_power_delivery_revision\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"supports_usb_power_delivery\00", align 1
@__kstrtab_typec_partner_set_pd_revision = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_partner_set_pd_revision = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_partner_set_pd_revision = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_partner_set_pd_revision to i32), ptr @__kstrtab_typec_partner_set_pd_revision, ptr @__kstrtabns_typec_partner_set_pd_revision }, section "___ksymtab_gpl+typec_partner_set_pd_revision", align 4
@typec_partner_group = internal constant %struct.attribute_group { ptr null, ptr @typec_partner_attr_is_visible, ptr null, ptr @typec_partner_attrs, ptr null }, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"number_of_alternate_modes\00", align 1
@__kstrtab_typec_partner_set_num_altmodes = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_partner_set_num_altmodes = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_partner_set_num_altmodes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_partner_set_num_altmodes to i32), ptr @__kstrtab_typec_partner_set_num_altmodes, ptr @__kstrtabns_typec_partner_set_num_altmodes }, section "___ksymtab_gpl+typec_partner_set_num_altmodes", align 4
@__kstrtab_typec_partner_register_altmode = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_partner_register_altmode = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_partner_register_altmode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_partner_register_altmode to i32), ptr @__kstrtab_typec_partner_register_altmode, ptr @__kstrtabns_typec_partner_register_altmode }, section "___ksymtab_gpl+typec_partner_register_altmode", align 4
@__kstrtab_typec_partner_set_svdm_version = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_partner_set_svdm_version = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_partner_set_svdm_version = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_partner_set_svdm_version to i32), ptr @__kstrtab_typec_partner_set_svdm_version, ptr @__kstrtabns_typec_partner_set_svdm_version }, section "___ksymtab_gpl+typec_partner_set_svdm_version", align 4
@usb_pd_id_groups = internal global [2 x ptr] [ptr @usb_pd_id_group, ptr null], align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"%s-partner\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"failed to register partner (%d)\0A\00", align 1
@__kstrtab_typec_register_partner = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_register_partner = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_register_partner = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_register_partner to i32), ptr @__kstrtab_typec_register_partner, ptr @__kstrtabns_typec_register_partner }, section "___ksymtab_gpl+typec_register_partner", align 4
@__kstrtab_typec_unregister_partner = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_unregister_partner = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_unregister_partner = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_unregister_partner to i32), ptr @__kstrtab_typec_unregister_partner, ptr @__kstrtabns_typec_unregister_partner }, section "___ksymtab_gpl+typec_unregister_partner", align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"typec_plug\00", align 1
@typec_plug_groups = internal global [2 x ptr] [ptr @typec_plug_group, ptr null], align 4
@typec_plug_group = internal constant %struct.attribute_group { ptr null, ptr @typec_plug_attr_is_visible, ptr null, ptr @typec_plug_attrs, ptr null }, align 4
@__kstrtab_typec_plug_set_num_altmodes = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_plug_set_num_altmodes = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_plug_set_num_altmodes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_plug_set_num_altmodes to i32), ptr @__kstrtab_typec_plug_set_num_altmodes, ptr @__kstrtabns_typec_plug_set_num_altmodes }, section "___ksymtab_gpl+typec_plug_set_num_altmodes", align 4
@__kstrtab_typec_plug_register_altmode = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_plug_register_altmode = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_plug_register_altmode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_plug_register_altmode to i32), ptr @__kstrtab_typec_plug_register_altmode, ptr @__kstrtabns_typec_plug_register_altmode }, section "___ksymtab_gpl+typec_plug_register_altmode", align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"plug%d\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"failed to register plug (%d)\0A\00", align 1
@__kstrtab_typec_register_plug = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_register_plug = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_register_plug = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_register_plug to i32), ptr @__kstrtab_typec_register_plug, ptr @__kstrtabns_typec_register_plug }, section "___ksymtab_gpl+typec_register_plug", align 4
@__kstrtab_typec_unregister_plug = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_unregister_plug = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_unregister_plug = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_unregister_plug to i32), ptr @__kstrtab_typec_unregister_plug, ptr @__kstrtabns_typec_unregister_plug }, section "___ksymtab_gpl+typec_unregister_plug", align 4
@.str.15 = private unnamed_addr constant [12 x i8] c"typec_cable\00", align 1
@typec_cable_groups = internal global [2 x ptr] [ptr @typec_cable_group, ptr null], align 4
@typec_cable_dev_type = dso_local constant %struct.device_type { ptr @.str.15, ptr @typec_cable_groups, ptr null, ptr null, ptr @typec_cable_release, ptr null }, align 4
@__kstrtab_typec_cable_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_cable_get = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_cable_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_cable_get to i32), ptr @__kstrtab_typec_cable_get, ptr @__kstrtabns_typec_cable_get }, section "___ksymtab_gpl+typec_cable_get", align 4
@__kstrtab_typec_cable_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_cable_put = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_cable_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_cable_put to i32), ptr @__kstrtab_typec_cable_put, ptr @__kstrtabns_typec_cable_put }, section "___ksymtab_gpl+typec_cable_put", align 4
@__kstrtab_typec_cable_is_active = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_cable_is_active = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_cable_is_active = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_cable_is_active to i32), ptr @__kstrtab_typec_cable_is_active, ptr @__kstrtabns_typec_cable_is_active }, section "___ksymtab_gpl+typec_cable_is_active", align 4
@__kstrtab_typec_cable_set_identity = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_cable_set_identity = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_cable_set_identity = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_cable_set_identity to i32), ptr @__kstrtab_typec_cable_set_identity, ptr @__kstrtabns_typec_cable_set_identity }, section "___ksymtab_gpl+typec_cable_set_identity", align 4
@.str.16 = private unnamed_addr constant [9 x i8] c"%s-cable\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"failed to register cable (%d)\0A\00", align 1
@__kstrtab_typec_register_cable = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_register_cable = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_register_cable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_register_cable to i32), ptr @__kstrtab_typec_register_cable, ptr @__kstrtabns_typec_register_cable }, section "___ksymtab_gpl+typec_register_cable", align 4
@__kstrtab_typec_unregister_cable = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_unregister_cable = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_unregister_cable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_unregister_cable to i32), ptr @__kstrtab_typec_unregister_cable, ptr @__kstrtabns_typec_unregister_cable }, section "___ksymtab_gpl+typec_unregister_cable", align 4
@.str.18 = private unnamed_addr constant [11 x i8] c"typec_port\00", align 1
@typec_groups = internal global [2 x ptr] [ptr @typec_group, ptr null], align 4
@.str.19 = private unnamed_addr constant [10 x i8] c"data_role\00", align 1
@__kstrtab_typec_set_data_role = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_set_data_role = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_set_data_role = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_set_data_role to i32), ptr @__kstrtab_typec_set_data_role, ptr @__kstrtabns_typec_set_data_role }, section "___ksymtab_gpl+typec_set_data_role", align 4
@.str.20 = private unnamed_addr constant [11 x i8] c"power_role\00", align 1
@__kstrtab_typec_set_pwr_role = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_set_pwr_role = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_set_pwr_role = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_set_pwr_role to i32), ptr @__kstrtab_typec_set_pwr_role, ptr @__kstrtabns_typec_set_pwr_role }, section "___ksymtab_gpl+typec_set_pwr_role", align 4
@.str.21 = private unnamed_addr constant [13 x i8] c"vconn_source\00", align 1
@__kstrtab_typec_set_vconn_role = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_set_vconn_role = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_set_vconn_role = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_set_vconn_role to i32), ptr @__kstrtab_typec_set_vconn_role, ptr @__kstrtabns_typec_set_vconn_role }, section "___ksymtab_gpl+typec_set_vconn_role", align 4
@.str.22 = private unnamed_addr constant [21 x i8] c"power_operation_mode\00", align 1
@__kstrtab_typec_set_pwr_opmode = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_set_pwr_opmode = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_set_pwr_opmode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_set_pwr_opmode to i32), ptr @__kstrtab_typec_set_pwr_opmode, ptr @__kstrtabns_typec_set_pwr_opmode }, section "___ksymtab_gpl+typec_set_pwr_opmode", align 4
@typec_pwr_opmodes = internal constant [4 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103], align 4
@__kstrtab_typec_find_pwr_opmode = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_find_pwr_opmode = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_find_pwr_opmode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_find_pwr_opmode to i32), ptr @__kstrtab_typec_find_pwr_opmode, ptr @__kstrtabns_typec_find_pwr_opmode }, section "___ksymtab_gpl+typec_find_pwr_opmode", align 4
@typec_orientations = internal constant [3 x ptr] [ptr @.str.77, ptr @.str.104, ptr @.str.105], align 4
@__kstrtab_typec_find_orientation = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_find_orientation = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_find_orientation = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_find_orientation to i32), ptr @__kstrtab_typec_find_orientation, ptr @__kstrtabns_typec_find_orientation }, section "___ksymtab_gpl+typec_find_orientation", align 4
@typec_port_power_roles = internal constant [3 x ptr] [ptr @.str.106, ptr @.str.107, ptr @.str.108], align 4
@__kstrtab_typec_find_port_power_role = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_find_port_power_role = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_find_port_power_role = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_find_port_power_role to i32), ptr @__kstrtab_typec_find_port_power_role, ptr @__kstrtabns_typec_find_port_power_role }, section "___ksymtab_gpl+typec_find_port_power_role", align 4
@typec_roles = internal constant [2 x ptr] [ptr @.str.107, ptr @.str.106], align 4
@__kstrtab_typec_find_power_role = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_find_power_role = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_find_power_role = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_find_power_role to i32), ptr @__kstrtab_typec_find_power_role, ptr @__kstrtabns_typec_find_power_role }, section "___ksymtab_gpl+typec_find_power_role", align 4
@typec_port_data_roles = internal constant [3 x ptr] [ptr @.str.58, ptr @.str.85, ptr @.str.108], align 4
@__kstrtab_typec_find_port_data_role = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_find_port_data_role = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_find_port_data_role = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_find_port_data_role to i32), ptr @__kstrtab_typec_find_port_data_role, ptr @__kstrtabns_typec_find_port_data_role }, section "___ksymtab_gpl+typec_find_port_data_role", align 4
@.str.23 = private unnamed_addr constant [12 x i8] c"orientation\00", align 1
@__kstrtab_typec_set_orientation = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_set_orientation = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_set_orientation = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_set_orientation to i32), ptr @__kstrtab_typec_set_orientation, ptr @__kstrtabns_typec_set_orientation }, section "___ksymtab_gpl+typec_set_orientation", align 4
@__kstrtab_typec_get_orientation = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_get_orientation = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_get_orientation = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_get_orientation to i32), ptr @__kstrtab_typec_get_orientation, ptr @__kstrtabns_typec_get_orientation }, section "___ksymtab_gpl+typec_get_orientation", align 4
@__kstrtab_typec_set_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_set_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_set_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_set_mode to i32), ptr @__kstrtab_typec_set_mode, ptr @__kstrtabns_typec_set_mode }, section "___ksymtab_gpl+typec_set_mode", align 4
@__kstrtab_typec_get_negotiated_svdm_version = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_get_negotiated_svdm_version = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_get_negotiated_svdm_version = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_get_negotiated_svdm_version to i32), ptr @__kstrtab_typec_get_negotiated_svdm_version, ptr @__kstrtabns_typec_get_negotiated_svdm_version }, section "___ksymtab_gpl+typec_get_negotiated_svdm_version", align 4
@__kstrtab_typec_get_drvdata = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_get_drvdata = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_get_drvdata = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_get_drvdata to i32), ptr @__kstrtab_typec_get_drvdata, ptr @__kstrtabns_typec_get_drvdata }, section "___ksymtab_gpl+typec_get_drvdata", align 4
@__kstrtab_typec_port_register_altmode = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_port_register_altmode = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_port_register_altmode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_port_register_altmode to i32), ptr @__kstrtab_typec_port_register_altmode, ptr @__kstrtabns_typec_port_register_altmode }, section "___ksymtab_gpl+typec_port_register_altmode", align 4
@.str.24 = private unnamed_addr constant [9 x i8] c"altmodes\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"svid\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"Error reading svid for altmode %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"vdo\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"Error reading vdo for altmode %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"Error not enough space for altmode %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"Error registering altmode %s\0A\00", align 1
@__kstrtab_typec_port_register_altmodes = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_port_register_altmodes = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_port_register_altmodes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_port_register_altmodes to i32), ptr @__kstrtab_typec_port_register_altmodes, ptr @__kstrtabns_typec_port_register_altmodes }, section "___ksymtab_gpl+typec_port_register_altmodes", align 4
@typec_index_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@typec_register_port.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"&port->port_type_lock\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"port%d\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"failed to register port (%d)\0A\00", align 1
@__kstrtab_typec_register_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_register_port = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_register_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_register_port to i32), ptr @__kstrtab_typec_register_port, ptr @__kstrtabns_typec_register_port }, section "___ksymtab_gpl+typec_register_port", align 4
@__kstrtab_typec_unregister_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_unregister_port = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_unregister_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_unregister_port to i32), ptr @__kstrtab_typec_unregister_port, ptr @__kstrtabns_typec_unregister_port }, section "___ksymtab_gpl+typec_unregister_port", align 4
@__UNIQUE_ID_author166 = internal constant [57 x i8] c"author=Heikki Krogerus <heikki.krogerus@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license167 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description168 = internal constant [39 x i8] c"description=USB Type-C Connector Class\00", section ".modinfo", align 1
@typec_altmode_group = internal constant %struct.attribute_group { ptr null, ptr @typec_altmode_attr_is_visible, ptr null, ptr @typec_altmode_attrs, ptr null }, align 4
@typec_altmode_attrs = internal global [5 x ptr] [ptr @dev_attr_active, ptr @dev_attr_mode, ptr @dev_attr_svid, ptr @dev_attr_vdo, ptr null], align 4
@dev_attr_active = internal global %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 420 }, ptr @active_show, ptr @active_store }, align 4
@.str.35 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"port has the mode disabled\0A\00", align 1
@dev_attr_mode = internal global %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292 }, ptr @mode_show, ptr null }, align 4
@dev_attr_svid = internal global %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292 }, ptr @svid_show, ptr null }, align 4
@dev_attr_vdo = internal global %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292 }, ptr @vdo_show, ptr null }, align 4
@.str.39 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"%04x\0A\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"0x%08x\0A\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"identity\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"id_header\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"cert_stat\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"product\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"product_type_vdo1\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"product_type_vdo2\00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"product_type_vdo3\00", align 1
@typec_partner_attrs = internal global [6 x ptr] [ptr @dev_attr_accessory_mode, ptr @dev_attr_supports_usb_power_delivery, ptr @dev_attr_number_of_alternate_modes, ptr @dev_attr_type, ptr @dev_attr_usb_power_delivery_revision, ptr null], align 4
@dev_attr_number_of_alternate_modes = internal global %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292 }, ptr @number_of_alternate_modes_show, ptr null }, align 4
@dev_attr_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292 }, ptr @type_show, ptr null }, align 4
@.str.50 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@product_type_ufp = internal unnamed_addr constant [8 x ptr] [ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr null, ptr @.str.56, ptr null, ptr null], align 4
@product_type_dfp = internal unnamed_addr constant [8 x ptr] [ptr @.str.57, ptr @.str.53, ptr @.str.58, ptr @.str.59, ptr null, ptr null, ptr null, ptr null], align 4
@product_type_cable = internal unnamed_addr constant [8 x ptr] [ptr @.str.60, ptr null, ptr null, ptr @.str.61, ptr @.str.3, ptr null, ptr @.str.62, ptr null], align 4
@.str.52 = private unnamed_addr constant [8 x i8] c"not_ufp\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"hub\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"peripheral\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"psd\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"ama\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"not_dfp\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"power_brick\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"not_cable\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"passive\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"vpd\00", align 1
@dev_attr_accessory_mode = internal global %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292 }, ptr @accessory_mode_show, ptr null }, align 4
@dev_attr_supports_usb_power_delivery = internal global %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292 }, ptr @supports_usb_power_delivery_show, ptr null }, align 4
@dev_attr_usb_power_delivery_revision = internal global %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292 }, ptr @usb_power_delivery_revision_show, ptr null }, align 4
@.str.63 = private unnamed_addr constant [15 x i8] c"accessory_mode\00", align 1
@typec_accessory_modes = internal unnamed_addr constant [3 x ptr] [ptr @.str.64, ptr @.str.65, ptr @.str.66], align 4
@.str.64 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"analog_audio\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"%d.%d\0A\00", align 1
@dev_attr_description = internal global %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292 }, ptr @description_show, ptr null }, align 4
@dev_attr_supported_roles = internal global %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292 }, ptr @supported_roles_show, ptr null }, align 4
@.str.68 = private unnamed_addr constant [6 x i8] c"%s.%u\00", align 1
@typec_bus = external dso_local global %struct.bus_type, align 4
@.str.69 = private unnamed_addr constant [40 x i8] c"failed to register alternate mode (%d)\0A\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.71 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.72 = private unnamed_addr constant [16 x i8] c"supported_roles\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"sink\0A\00", align 1
@.str.75 = private unnamed_addr constant [13 x i8] c"source sink\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@usb_pd_id_group = internal constant %struct.attribute_group { ptr @.str.43, ptr null, ptr null, ptr @usb_pd_id_attrs, ptr null }, align 4
@usb_pd_id_attrs = internal global [7 x ptr] [ptr @dev_attr_id_header, ptr @dev_attr_cert_stat, ptr @dev_attr_product, ptr @dev_attr_product_type_vdo1, ptr @dev_attr_product_type_vdo2, ptr @dev_attr_product_type_vdo3, ptr null], align 4
@dev_attr_id_header = internal global %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292 }, ptr @id_header_show, ptr null }, align 4
@dev_attr_cert_stat = internal global %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292 }, ptr @cert_stat_show, ptr null }, align 4
@dev_attr_product = internal global %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292 }, ptr @product_show, ptr null }, align 4
@dev_attr_product_type_vdo1 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292 }, ptr @product_type_vdo1_show, ptr null }, align 4
@dev_attr_product_type_vdo2 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292 }, ptr @product_type_vdo2_show, ptr null }, align 4
@dev_attr_product_type_vdo3 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292 }, ptr @product_type_vdo3_show, ptr null }, align 4
@typec_plug_attrs = internal global [2 x ptr] [ptr @dev_attr_number_of_alternate_modes, ptr null], align 4
@typec_cable_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @typec_cable_attrs, ptr null }, align 4
@typec_cable_attrs = internal global [4 x ptr] [ptr @dev_attr_type, ptr @dev_attr_plug_type, ptr @dev_attr_usb_power_delivery_revision, ptr null], align 4
@dev_attr_plug_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 292 }, ptr @plug_type_show, ptr null }, align 4
@.str.76 = private unnamed_addr constant [10 x i8] c"plug_type\00", align 1
@typec_plug_types = internal unnamed_addr constant [5 x ptr] [ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81], align 4
@.str.77 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"type-a\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"type-b\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"type-c\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"captive\00", align 1
@typec_group = internal constant %struct.attribute_group { ptr null, ptr @typec_attr_is_visible, ptr null, ptr @typec_attrs, ptr null }, align 4
@typec_attrs = internal global [11 x ptr] [ptr @dev_attr_data_role, ptr @dev_attr_power_operation_mode, ptr @dev_attr_power_role, ptr @dev_attr_preferred_role, ptr @dev_attr_supported_accessory_modes, ptr @dev_attr_usb_power_delivery_revision, ptr @dev_attr_usb_typec_revision, ptr @dev_attr_vconn_source, ptr @dev_attr_port_type, ptr @dev_attr_orientation, ptr null], align 4
@dev_attr_data_role = internal global %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420 }, ptr @data_role_show, ptr @data_role_store }, align 4
@dev_attr_power_role = internal global %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 420 }, ptr @power_role_show, ptr @power_role_store }, align 4
@dev_attr_vconn_source = internal global %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420 }, ptr @vconn_source_show, ptr @vconn_source_store }, align 4
@dev_attr_preferred_role = internal global %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 420 }, ptr @preferred_role_show, ptr @preferred_role_store }, align 4
@dev_attr_port_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.89, i16 420 }, ptr @port_type_show, ptr @port_type_store }, align 4
@dev_attr_orientation = internal global %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292 }, ptr @orientation_show, ptr null }, align 4
@.str.82 = private unnamed_addr constant [14 x i8] c"[host] device\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"host [device]\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"[%s]\0A\00", align 1
@typec_data_roles = internal constant [2 x ptr] [ptr @.str.85, ptr @.str.58], align 4
@.str.85 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.86 = private unnamed_addr constant [14 x i8] c"[source] sink\00", align 1
@.str.87 = private unnamed_addr constant [14 x i8] c"source [sink]\00", align 1
@.str.88 = private unnamed_addr constant [15 x i8] c"preferred_role\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"port_type\00", align 1
@typec_port_types_drp = internal unnamed_addr constant [3 x ptr] [ptr @.str.90, ptr @.str.91, ptr @.str.92], align 4
@.str.90 = private unnamed_addr constant [19 x i8] c"dual [source] sink\00", align 1
@.str.91 = private unnamed_addr constant [19 x i8] c"dual source [sink]\00", align 1
@.str.92 = private unnamed_addr constant [19 x i8] c"[dual] source sink\00", align 1
@dev_attr_power_operation_mode = internal global %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292 }, ptr @power_operation_mode_show, ptr null }, align 4
@dev_attr_supported_accessory_modes = internal global %struct.device_attribute { %struct.attribute { ptr @.str.93, i16 292 }, ptr @supported_accessory_modes_show, ptr null }, align 4
@dev_attr_usb_typec_revision = internal global %struct.device_attribute { %struct.attribute { ptr @.str.96, i16 292 }, ptr @usb_typec_revision_show, ptr null }, align 4
@.str.93 = private unnamed_addr constant [26 x i8] c"supported_accessory_modes\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"none\0A\00", align 1
@.str.96 = private unnamed_addr constant [19 x i8] c"usb_typec_revision\00", align 1
@.str.97 = private unnamed_addr constant [14 x i8] c"TYPEC_PORT=%s\00", align 1
@.str.98 = private unnamed_addr constant [33 x i8] c"failed to add uevent TYPEC_PORT\0A\00", align 1
@.str.99 = private unnamed_addr constant [16 x i8] c"PRODUCT_TYPE=%s\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"1.5A\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"3.0A\00", align 1
@.str.103 = private unnamed_addr constant [19 x i8] c"usb_power_delivery\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str.106 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"sink\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"dual\00", align 1
@typec_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@typec_mux_class = external dso_local global %struct.class, align 4
@typec_init.__key.109 = internal global %struct.lock_class_key zeroinitializer, align 1
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author166, ptr @__UNIQUE_ID_description168, ptr @__UNIQUE_ID_license167, ptr @__ksymtab_typec_altmode2port, ptr @__ksymtab_typec_altmode_update_active, ptr @__ksymtab_typec_cable_get, ptr @__ksymtab_typec_cable_is_active, ptr @__ksymtab_typec_cable_put, ptr @__ksymtab_typec_cable_set_identity, ptr @__ksymtab_typec_find_orientation, ptr @__ksymtab_typec_find_port_data_role, ptr @__ksymtab_typec_find_port_power_role, ptr @__ksymtab_typec_find_power_role, ptr @__ksymtab_typec_find_pwr_opmode, ptr @__ksymtab_typec_get_drvdata, ptr @__ksymtab_typec_get_negotiated_svdm_version, ptr @__ksymtab_typec_get_orientation, ptr @__ksymtab_typec_partner_register_altmode, ptr @__ksymtab_typec_partner_set_identity, ptr @__ksymtab_typec_partner_set_num_altmodes, ptr @__ksymtab_typec_partner_set_pd_revision, ptr @__ksymtab_typec_partner_set_svdm_version, ptr @__ksymtab_typec_plug_register_altmode, ptr @__ksymtab_typec_plug_set_num_altmodes, ptr @__ksymtab_typec_port_register_altmode, ptr @__ksymtab_typec_port_register_altmodes, ptr @__ksymtab_typec_register_cable, ptr @__ksymtab_typec_register_partner, ptr @__ksymtab_typec_register_plug, ptr @__ksymtab_typec_register_port, ptr @__ksymtab_typec_set_data_role, ptr @__ksymtab_typec_set_mode, ptr @__ksymtab_typec_set_orientation, ptr @__ksymtab_typec_set_pwr_opmode, ptr @__ksymtab_typec_set_pwr_role, ptr @__ksymtab_typec_set_vconn_role, ptr @__ksymtab_typec_unregister_altmode, ptr @__ksymtab_typec_unregister_cable, ptr @__ksymtab_typec_unregister_partner, ptr @__ksymtab_typec_unregister_plug, ptr @__ksymtab_typec_unregister_port], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @typec_altmode_update_active(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.typec_altmode, ptr %0, i32 0, i32 4
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  %8 = xor i1 %7, %1
  br i1 %8, label %35, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, @typec_port_dev_type
  br i1 %14, label %26, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.device_driver, ptr %17, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  br i1 %1, label %23, label %22

22:                                               ; preds = %19
  tail call void @module_put(ptr noundef %21) #14
  br label %26

23:                                               ; preds = %19
  %24 = tail call zeroext i1 @try_module_get(ptr noundef %21) #14
  br i1 %24, label %26, label %25, !prof !9

25:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 299, i32 noundef 9, ptr noundef null) #14
  br label %26

26:                                               ; preds = %25, %23, %22, %15, %9
  %27 = zext i1 %1 to i8
  %28 = load i8, ptr %4, align 4
  %29 = and i8 %28, -2
  %30 = or i8 %29, %27
  store i8 %30, ptr %4, align 4
  %31 = getelementptr inbounds %struct.typec_altmode, ptr %0, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 6, ptr noundef nonnull @.str.2, i32 noundef %32)
  call void @sysfs_notify(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull @.str.3) #14
  call void @sysfs_notify(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.3) #14
  %34 = call i32 @kobject_uevent(ptr noundef %0, i32 noundef 2) #14
  br label %35

35:                                               ; preds = %26, %2
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @typec_altmode2port(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, @typec_plug_dev_type
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 -8
  br label %23

13:                                               ; preds = %1
  %14 = icmp eq ptr %5, @typec_partner_dev_type
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 -8
  br label %23

19:                                               ; preds = %13
  %20 = icmp eq ptr %5, @typec_port_dev_type
  %21 = getelementptr i8, ptr %3, i32 -8
  %22 = select i1 %20, ptr %21, ptr null
  br label %23

23:                                               ; preds = %19, %15, %7
  %24 = phi ptr [ %12, %7 ], [ %18, %15 ], [ %22, %19 ]
  ret ptr %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @typec_altmode_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = getelementptr i8, ptr %0, i32 560
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.altmode, ptr %4, i32 0, i32 1
  %8 = getelementptr inbounds %struct.altmode, ptr %4, i32 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, @typec_plug_dev_type
  br i1 %12, label %13, label %17

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.typec_plug, ptr %9, i32 0, i32 1
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr %struct.altmode, ptr %4, i32 0, i32 9, i32 %15
  store ptr null, ptr %16, align 4
  br label %19

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.altmode, ptr %4, i32 0, i32 8
  store ptr null, ptr %18, align 8
  br label %19

19:                                               ; preds = %17, %13
  tail call void @put_device(ptr noundef %7) #14
  br label %20

20:                                               ; preds = %19, %1
  %21 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr %2, align 8
  %24 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 4
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, @typec_partner_dev_type
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.typec_partner, ptr %22, i32 0, i32 4
  br label %35

29:                                               ; preds = %20
  %30 = icmp eq ptr %25, @typec_plug_dev_type
  br i1 %30, label %31, label %33

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.typec_plug, ptr %22, i32 0, i32 2
  br label %35

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %22, i32 472
  br label %35

35:                                               ; preds = %33, %31, %27
  %36 = phi ptr [ %28, %27 ], [ %32, %31 ], [ %34, %33 ]
  tail call void @ida_free(ptr noundef %36, i32 noundef %23) #14
  tail call void @kfree(ptr noundef %2) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @typec_unregister_altmode(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 496
  %7 = load ptr, ptr %6, align 8
  tail call void @typec_mux_put(ptr noundef %7) #14
  tail call void @device_unregister(ptr noundef nonnull %0) #14
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_mux_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @typec_partner_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.typec_partner, ptr %0, i32 0, i32 4
  tail call void @ida_destroy(ptr noundef %2) #14
  tail call void @kfree(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @typec_partner_set_identity(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.typec_partner, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @sysfs_notify(ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44) #14
  tail call void @sysfs_notify(ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.45) #14
  tail call void @sysfs_notify(ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.46) #14
  tail call void @sysfs_notify(ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.47) #14
  tail call void @sysfs_notify(ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.48) #14
  tail call void @sysfs_notify(ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.49) #14
  tail call fastcc void @typec_product_type_notify(ptr noundef %0) #14
  br label %6

6:                                                ; preds = %5, %1
  %7 = phi i32 [ 0, %5 ], [ -22, %1 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @typec_partner_set_pd_revision(ptr noundef %0, i16 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.typec_partner, ptr %0, i32 0, i32 6
  %4 = load i16, ptr %3, align 4
  %5 = icmp eq i16 %4, %1
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  store i16 %1, ptr %3, align 4
  tail call void @sysfs_notify(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.6) #14
  %7 = icmp eq i16 %1, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.typec_partner, ptr %0, i32 0, i32 1
  %10 = load i8, ptr %9, align 8
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = or i8 %10, 1
  store i8 %14, ptr %9, align 8
  tail call void @sysfs_notify(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.7) #14
  br label %15

15:                                               ; preds = %13, %8, %6
  %16 = tail call i32 @kobject_uevent(ptr noundef %0, i32 noundef 2) #14
  br label %17

17:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @typec_partner_set_num_altmodes(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.typec_partner, ptr %0, i32 0, i32 5
  store i32 %1, ptr %5, align 8
  %6 = tail call i32 @sysfs_update_group(ptr noundef %0, ptr noundef nonnull @typec_partner_group) #14
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  tail call void @sysfs_notify(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.8) #14
  %9 = tail call i32 @kobject_uevent(ptr noundef %0, i32 noundef 2) #14
  br label %10

10:                                               ; preds = %8, %4, %2
  %11 = phi i32 [ 0, %8 ], [ -22, %2 ], [ %6, %4 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_update_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @typec_partner_register_altmode(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call fastcc ptr @typec_register_altmode(ptr noundef %0, ptr noundef %1)
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @typec_register_altmode(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.typec_device_id, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, @typec_partner_dev_type
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.typec_partner, ptr %0, i32 0, i32 4
  br label %15

9:                                                ; preds = %2
  %10 = icmp eq ptr %5, @typec_plug_dev_type
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.typec_plug, ptr %0, i32 0, i32 2
  br label %15

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %0, i32 472
  br label %15

15:                                               ; preds = %13, %11, %7
  %16 = phi ptr [ %8, %7 ], [ %12, %11 ], [ %14, %13 ]
  %17 = tail call i32 @ida_alloc_range(ptr noundef %16, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #14
  %18 = load ptr, ptr %4, align 8
  %19 = icmp eq ptr %18, @typec_port_dev_type
  %20 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 584) #15
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %15
  %24 = load ptr, ptr %4, align 8
  %25 = icmp eq ptr %24, @typec_partner_dev_type
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.typec_partner, ptr %0, i32 0, i32 4
  br label %34

28:                                               ; preds = %23
  %29 = icmp eq ptr %24, @typec_plug_dev_type
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.typec_plug, ptr %0, i32 0, i32 2
  br label %34

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %0, i32 472
  br label %34

34:                                               ; preds = %32, %30, %26
  %35 = phi ptr [ %27, %26 ], [ %31, %30 ], [ %33, %32 ]
  tail call void @ida_free(ptr noundef %35, i32 noundef %17) #14
  br label %134

36:                                               ; preds = %15
  %37 = load i16, ptr %1, align 4
  %38 = getelementptr inbounds %struct.altmode, ptr %21, i32 0, i32 1
  %39 = getelementptr inbounds %struct.altmode, ptr %21, i32 0, i32 1, i32 1
  store i16 %37, ptr %39, align 8
  %40 = getelementptr inbounds %struct.typec_altmode_desc, ptr %1, i32 0, i32 1
  %41 = load i8, ptr %40, align 2
  %42 = zext i8 %41 to i32
  %43 = getelementptr inbounds %struct.altmode, ptr %21, i32 0, i32 1, i32 2
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.typec_altmode_desc, ptr %1, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.altmode, ptr %21, i32 0, i32 1, i32 3
  store i32 %45, ptr %46, align 8
  %47 = getelementptr inbounds %struct.typec_altmode_desc, ptr %1, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.altmode, ptr %21, i32 0, i32 3
  store i32 %48, ptr %49, align 4
  store i32 %17, ptr %21, align 8
  %50 = getelementptr inbounds %struct.altmode, ptr %21, i32 0, i32 4
  store ptr @dev_attr_vdo, ptr %50, align 8
  %51 = getelementptr %struct.altmode, ptr %21, i32 0, i32 4, i32 1
  store ptr @dev_attr_description, ptr %51, align 4
  %52 = getelementptr %struct.altmode, ptr %21, i32 0, i32 4, i32 2
  store ptr @dev_attr_active, ptr %52, align 8
  br i1 %19, label %53, label %58

53:                                               ; preds = %36
  %54 = getelementptr %struct.altmode, ptr %21, i32 0, i32 4, i32 3
  store ptr @dev_attr_supported_roles, ptr %54, align 4
  %55 = getelementptr inbounds %struct.altmode, ptr %21, i32 0, i32 1, i32 4
  %56 = load i8, ptr %55, align 4
  %57 = or i8 %56, 1
  store i8 %57, ptr %55, align 4
  br label %58

58:                                               ; preds = %53, %36
  %59 = getelementptr inbounds %struct.altmode, ptr %21, i32 0, i32 5
  %60 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %59, ptr noundef nonnull @.str.2, i32 noundef %42)
  %61 = getelementptr inbounds %struct.altmode, ptr %21, i32 0, i32 6
  store ptr %59, ptr %61, align 4
  %62 = getelementptr inbounds %struct.altmode, ptr %21, i32 0, i32 6, i32 3
  store ptr %50, ptr %62, align 8
  %63 = getelementptr inbounds %struct.altmode, ptr %21, i32 0, i32 7
  store ptr %61, ptr %63, align 8
  %64 = getelementptr inbounds %struct.altmode, ptr %21, i32 0, i32 1, i32 0, i32 1
  store ptr %0, ptr %64, align 4
  %65 = getelementptr inbounds %struct.altmode, ptr %21, i32 0, i32 1, i32 0, i32 32
  store ptr %63, ptr %65, align 8
  %66 = getelementptr inbounds %struct.altmode, ptr %21, i32 0, i32 1, i32 0, i32 4
  store ptr @typec_altmode_dev_type, ptr %66, align 8
  %67 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = load ptr, ptr %0, align 4
  br label %72

72:                                               ; preds = %70, %58
  %73 = phi ptr [ %71, %70 ], [ %68, %58 ]
  %74 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %38, ptr noundef nonnull @.str.68, ptr noundef %73, i32 noundef %17) #14
  br i1 %19, label %120, label %75

75:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  store i64 0, ptr %3, align 8, !annotation !8
  %76 = load i16, ptr %39, align 8
  store i16 %76, ptr %3, align 8
  %77 = getelementptr inbounds %struct.typec_device_id, ptr %3, i32 0, i32 1
  %78 = load i32, ptr %43, align 4
  %79 = trunc i32 %78 to i8
  store i8 %79, ptr %77, align 2
  %80 = load ptr, ptr %64, align 4
  %81 = getelementptr inbounds %struct.device, ptr %80, i32 0, i32 4
  %82 = load ptr, ptr %81, align 8
  %83 = icmp eq ptr %82, @typec_plug_dev_type
  br i1 %83, label %84, label %90

84:                                               ; preds = %75
  %85 = getelementptr inbounds %struct.device, ptr %80, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.device, ptr %86, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr i8, ptr %88, i32 -8
  br label %100

90:                                               ; preds = %75
  %91 = icmp eq ptr %82, @typec_partner_dev_type
  br i1 %91, label %92, label %96

92:                                               ; preds = %90
  %93 = getelementptr inbounds %struct.device, ptr %80, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr i8, ptr %94, i32 -8
  br label %100

96:                                               ; preds = %90
  %97 = icmp eq ptr %82, @typec_port_dev_type
  %98 = getelementptr i8, ptr %80, i32 -8
  %99 = select i1 %97, ptr %98, ptr null
  br label %100

100:                                              ; preds = %96, %92, %84
  %101 = phi ptr [ %89, %84 ], [ %95, %92 ], [ %99, %96 ]
  %102 = getelementptr inbounds %struct.typec_port, ptr %101, i32 0, i32 1
  %103 = call ptr @device_find_child(ptr noundef %102, ptr noundef nonnull %3, ptr noundef nonnull @altmode_match) #14
  %104 = icmp eq ptr %103, null
  br i1 %104, label %119, label %105

105:                                              ; preds = %100
  %106 = getelementptr i8, ptr %103, i32 -8
  %107 = getelementptr inbounds %struct.altmode, ptr %21, i32 0, i32 8
  store ptr %106, ptr %107, align 8
  %108 = load ptr, ptr %64, align 4
  %109 = getelementptr inbounds %struct.device, ptr %108, i32 0, i32 4
  %110 = load ptr, ptr %109, align 8
  %111 = icmp eq ptr %110, @typec_plug_dev_type
  br i1 %111, label %112, label %117

112:                                              ; preds = %105
  %113 = getelementptr i8, ptr %103, i32 564
  %114 = getelementptr inbounds %struct.typec_plug, ptr %108, i32 0, i32 1
  %115 = load i32, ptr %114, align 8
  %116 = getelementptr [2 x ptr], ptr %113, i32 0, i32 %115
  store ptr %21, ptr %116, align 4
  br label %119

117:                                              ; preds = %105
  %118 = getelementptr i8, ptr %103, i32 560
  store ptr %21, ptr %118, align 8
  br label %119

119:                                              ; preds = %117, %112, %100
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  br label %120

120:                                              ; preds = %119, %72
  %121 = load ptr, ptr %4, align 8
  %122 = icmp eq ptr %121, @typec_partner_dev_type
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.altmode, ptr %21, i32 0, i32 1, i32 0, i32 5
  store ptr @typec_bus, ptr %124, align 4
  br label %129

125:                                              ; preds = %120
  %126 = icmp eq ptr %121, @typec_plug_dev_type
  br i1 %126, label %127, label %129

127:                                              ; preds = %125
  %128 = getelementptr inbounds %struct.altmode, ptr %21, i32 0, i32 1, i32 0, i32 31
  store ptr @typec_class, ptr %128, align 4
  br label %129

129:                                              ; preds = %127, %125, %123
  %130 = call i32 @device_register(ptr noundef %38) #14
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %129
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.69, i32 noundef %130) #16
  call void @put_device(ptr noundef %38) #14
  %133 = inttoptr i32 %130 to ptr
  br label %134

134:                                              ; preds = %132, %129, %34
  %135 = phi ptr [ %133, %132 ], [ inttoptr (i32 -12 to ptr), %34 ], [ %38, %129 ]
  ret ptr %135
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @typec_partner_set_svdm_version(ptr nocapture noundef writeonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.typec_partner, ptr %0, i32 0, i32 7
  store i32 %1, ptr %3, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @typec_register_partner(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 512) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %51, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.typec_partner, ptr %4, i32 0, i32 4
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.typec_partner, ptr %4, i32 0, i32 4, i32 0, i32 1
  store i32 33554437, ptr %8, align 8
  %9 = getelementptr inbounds %struct.typec_partner, ptr %4, i32 0, i32 4, i32 0, i32 2
  store ptr null, ptr %9, align 4
  %10 = load i8, ptr %1, align 4
  %11 = and i8 %10, 1
  %12 = getelementptr inbounds %struct.typec_partner, ptr %4, i32 0, i32 1
  %13 = load i8, ptr %12, align 8
  %14 = and i8 %13, -2
  %15 = or i8 %14, %11
  store i8 %15, ptr %12, align 8
  %16 = getelementptr inbounds %struct.typec_partner_desc, ptr %1, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.typec_partner, ptr %4, i32 0, i32 3
  store i32 %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.typec_partner, ptr %4, i32 0, i32 5
  store i32 -1, ptr %19, align 8
  %20 = getelementptr inbounds %struct.typec_partner_desc, ptr %1, i32 0, i32 3
  %21 = load i16, ptr %20, align 4
  %22 = getelementptr inbounds %struct.typec_partner, ptr %4, i32 0, i32 6
  store i16 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.typec_port, ptr %0, i32 0, i32 13
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.typec_capability, ptr %24, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.typec_partner, ptr %4, i32 0, i32 7
  store i32 %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.typec_partner_desc, ptr %1, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %6
  %32 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 32
  store ptr @usb_pd_id_groups, ptr %32, align 8
  %33 = getelementptr inbounds %struct.typec_partner, ptr %4, i32 0, i32 2
  store ptr %29, ptr %33, align 4
  br label %34

34:                                               ; preds = %31, %6
  %35 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 31
  store ptr @typec_class, ptr %35, align 4
  %36 = getelementptr inbounds %struct.typec_port, ptr %0, i32 0, i32 1
  %37 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  store ptr %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 4
  store ptr @typec_partner_dev_type, ptr %38, align 8
  %39 = getelementptr inbounds %struct.typec_port, ptr %0, i32 0, i32 1, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load ptr, ptr %36, align 4
  br label %44

44:                                               ; preds = %42, %34
  %45 = phi ptr [ %43, %42 ], [ %40, %34 ]
  %46 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %4, ptr noundef nonnull @.str.9, ptr noundef %45) #14
  %47 = tail call i32 @device_register(ptr noundef nonnull %4) #14
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.10, i32 noundef %47) #16
  tail call void @put_device(ptr noundef nonnull %4) #14
  %50 = inttoptr i32 %47 to ptr
  br label %51

51:                                               ; preds = %49, %44, %2
  %52 = phi ptr [ %50, %49 ], [ %4, %44 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @typec_unregister_partner(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @device_unregister(ptr noundef nonnull %0) #14
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @typec_plug_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.typec_plug, ptr %0, i32 0, i32 2
  tail call void @ida_destroy(ptr noundef %2) #14
  tail call void @kfree(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @typec_plug_set_num_altmodes(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.typec_plug, ptr %0, i32 0, i32 3
  store i32 %1, ptr %5, align 8
  %6 = tail call i32 @sysfs_update_group(ptr noundef %0, ptr noundef nonnull @typec_plug_group) #14
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  tail call void @sysfs_notify(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.8) #14
  %9 = tail call i32 @kobject_uevent(ptr noundef %0, i32 noundef 2) #14
  br label %10

10:                                               ; preds = %8, %4, %2
  %11 = phi i32 [ 0, %8 ], [ -22, %2 ], [ %6, %4 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @typec_plug_register_altmode(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call fastcc ptr @typec_register_altmode(ptr noundef %0, ptr noundef %1)
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @typec_register_plug(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  store i64 0, ptr %3, align 8, !annotation !8
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 496) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %1, align 4
  %9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.12, i32 noundef %8)
  %10 = getelementptr inbounds %struct.typec_plug, ptr %5, i32 0, i32 2
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.typec_plug, ptr %5, i32 0, i32 2, i32 0, i32 1
  store i32 33554437, ptr %11, align 8
  %12 = getelementptr inbounds %struct.typec_plug, ptr %5, i32 0, i32 2, i32 0, i32 2
  store ptr null, ptr %12, align 4
  %13 = getelementptr inbounds %struct.typec_plug, ptr %5, i32 0, i32 3
  store i32 -1, ptr %13, align 8
  %14 = load i32, ptr %1, align 4
  %15 = getelementptr inbounds %struct.typec_plug, ptr %5, i32 0, i32 1
  store i32 %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 31
  store ptr @typec_class, ptr %16, align 4
  %17 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  store ptr %0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 4
  store ptr @typec_plug_dev_type, ptr %18, align 8
  %19 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %7
  %25 = load ptr, ptr %20, align 4
  br label %26

26:                                               ; preds = %24, %7
  %27 = phi ptr [ %25, %24 ], [ %22, %7 ]
  %28 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %5, ptr noundef nonnull @.str.13, ptr noundef %27, ptr noundef nonnull %3) #14
  %29 = call i32 @device_register(ptr noundef nonnull %5) #14
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %29) #16
  call void @put_device(ptr noundef nonnull %5) #14
  %32 = inttoptr i32 %29 to ptr
  br label %33

33:                                               ; preds = %31, %26, %2
  %34 = phi ptr [ %32, %31 ], [ %5, %26 ], [ inttoptr (i32 -12 to ptr), %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  ret ptr %34
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @typec_unregister_plug(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @device_unregister(ptr noundef nonnull %0) #14
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @typec_cable_release(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @typec_cable_get(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.typec_port, ptr %0, i32 0, i32 1
  %3 = tail call ptr @device_find_child(ptr noundef %2, ptr noundef null, ptr noundef nonnull @cable_match) #14
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_find_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @cable_match(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #8 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, @typec_cable_dev_type
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @typec_cable_put(ptr noundef %0) #0 {
  tail call void @put_device(ptr noundef %0) #14
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @typec_cable_is_active(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.typec_cable, ptr %0, i32 0, i32 3
  %3 = load i8, ptr %2, align 8
  %4 = and i8 %3, 1
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @typec_cable_set_identity(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.typec_cable, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @sysfs_notify(ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44) #14
  tail call void @sysfs_notify(ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.45) #14
  tail call void @sysfs_notify(ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.46) #14
  tail call void @sysfs_notify(ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.47) #14
  tail call void @sysfs_notify(ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.48) #14
  tail call void @sysfs_notify(ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.49) #14
  tail call fastcc void @typec_product_type_notify(ptr noundef %0) #14
  br label %6

6:                                                ; preds = %5, %1
  %7 = phi i32 [ 0, %5 ], [ -22, %1 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @typec_register_cable(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 488) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %42, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %1, align 4
  %8 = getelementptr inbounds %struct.typec_cable, ptr %4, i32 0, i32 1
  store i32 %7, ptr %8, align 8
  %9 = getelementptr inbounds %struct.typec_cable_desc, ptr %1, i32 0, i32 1
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 1
  %12 = getelementptr inbounds %struct.typec_cable, ptr %4, i32 0, i32 3
  %13 = load i8, ptr %12, align 8
  %14 = and i8 %13, -2
  %15 = or i8 %14, %11
  store i8 %15, ptr %12, align 8
  %16 = getelementptr inbounds %struct.typec_cable_desc, ptr %1, i32 0, i32 3
  %17 = load i16, ptr %16, align 4
  %18 = getelementptr inbounds %struct.typec_cable, ptr %4, i32 0, i32 4
  store i16 %17, ptr %18, align 2
  %19 = getelementptr inbounds %struct.typec_cable_desc, ptr %1, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %6
  %23 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 32
  store ptr @usb_pd_id_groups, ptr %23, align 8
  %24 = getelementptr inbounds %struct.typec_cable, ptr %4, i32 0, i32 2
  store ptr %20, ptr %24, align 4
  br label %25

25:                                               ; preds = %22, %6
  %26 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 31
  store ptr @typec_class, ptr %26, align 4
  %27 = getelementptr inbounds %struct.typec_port, ptr %0, i32 0, i32 1
  %28 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  store ptr %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 4
  store ptr @typec_cable_dev_type, ptr %29, align 8
  %30 = getelementptr inbounds %struct.typec_port, ptr %0, i32 0, i32 1, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load ptr, ptr %27, align 4
  br label %35

35:                                               ; preds = %33, %25
  %36 = phi ptr [ %34, %33 ], [ %31, %25 ]
  %37 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %4, ptr noundef nonnull @.str.16, ptr noundef %36) #14
  %38 = tail call i32 @device_register(ptr noundef nonnull %4) #14
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.17, i32 noundef %38) #16
  tail call void @put_device(ptr noundef nonnull %4) #14
  %41 = inttoptr i32 %38 to ptr
  br label %42

42:                                               ; preds = %40, %35, %2
  %43 = phi ptr [ %41, %40 ], [ %4, %35 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @typec_unregister_cable(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @device_unregister(ptr noundef nonnull %0) #14
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @typec_uevent(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi ptr [ %7, %6 ], [ %4, %2 ]
  %10 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.97, ptr noundef %9) #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.98) #16
  br label %13

13:                                               ; preds = %12, %8
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @typec_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load i32, ptr %2, align 8
  tail call void @ida_free(ptr noundef nonnull @typec_index_ida, i32 noundef %3) #14
  %4 = getelementptr i8, ptr %0, i32 472
  tail call void @ida_destroy(ptr noundef %4) #14
  %5 = getelementptr i8, ptr %0, i32 532
  %6 = load ptr, ptr %5, align 4
  tail call void @typec_switch_put(ptr noundef %6) #14
  %7 = getelementptr i8, ptr %0, i32 536
  %8 = load ptr, ptr %7, align 8
  tail call void @typec_mux_put(ptr noundef %8) #14
  %9 = getelementptr i8, ptr %0, i32 540
  %10 = load ptr, ptr %9, align 4
  tail call void @kfree(ptr noundef %10) #14
  tail call void @kfree(ptr noundef %2) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @typec_set_data_role(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.typec_port, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  store i32 %1, ptr %3, align 8
  %7 = getelementptr inbounds %struct.typec_port, ptr %0, i32 0, i32 1
  tail call void @sysfs_notify(ptr noundef %7, ptr noundef null, ptr noundef nonnull @.str.19) #14
  %8 = tail call i32 @kobject_uevent(ptr noundef %7, i32 noundef 2) #14
  %9 = tail call ptr @device_find_child(ptr noundef %7, ptr noundef null, ptr noundef nonnull @partner_match) #14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.typec_partner, ptr %9, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call fastcc void @typec_product_type_notify(ptr noundef nonnull %9)
  br label %16

16:                                               ; preds = %15, %11
  tail call void @put_device(ptr noundef nonnull %9) #14
  br label %17

17:                                               ; preds = %16, %6, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @partner_match(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #8 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, @typec_partner_dev_type
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @typec_product_type_notify(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [2 x ptr], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  store i64 0, ptr %2, align 8
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, @typec_partner_dev_type
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = icmp eq ptr %6, @typec_cable_dev_type
  br i1 %9, label %23, label %50

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.typec_partner, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %50, label %14

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %4, i32 488
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 1
  %18 = load i32, ptr %12, align 4
  br i1 %17, label %19, label %21

19:                                               ; preds = %14
  %20 = lshr i32 %18, 27
  br label %36

21:                                               ; preds = %14
  %22 = lshr i32 %18, 23
  br label %36

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.typec_cable, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, ptr %25, align 4
  %29 = lshr i32 %28, 27
  br label %36

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.typec_cable, ptr %0, i32 0, i32 3
  %32 = load i8, ptr %31, align 8
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  %35 = select i1 %34, ptr @.str.61, ptr @.str.3
  br label %43

36:                                               ; preds = %27, %21, %19
  %37 = phi i32 [ %20, %19 ], [ %22, %21 ], [ %29, %27 ]
  %38 = phi ptr [ @product_type_ufp, %19 ], [ @product_type_dfp, %21 ], [ @product_type_cable, %27 ]
  %39 = and i32 %37, 7
  %40 = getelementptr [8 x ptr], ptr %38, i32 0, i32 %39
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %36, %30
  %44 = phi ptr [ %35, %30 ], [ %41, %36 ]
  tail call void @sysfs_notify(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.51) #14
  %45 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.99, ptr noundef nonnull %44) #14
  store ptr %45, ptr %2, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = call i32 @kobject_uevent_env(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %2) #14
  %49 = load ptr, ptr %2, align 8
  call void @kfree(ptr noundef %49) #14
  br label %50

50:                                               ; preds = %47, %43, %36, %10, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @typec_set_pwr_role(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.typec_port, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  store i32 %1, ptr %3, align 4
  %7 = getelementptr inbounds %struct.typec_port, ptr %0, i32 0, i32 1
  tail call void @sysfs_notify(ptr noundef %7, ptr noundef null, ptr noundef nonnull @.str.20) #14
  %8 = tail call i32 @kobject_uevent(ptr noundef %7, i32 noundef 2) #14
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @typec_set_vconn_role(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.typec_port, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  store i32 %1, ptr %3, align 8
  %7 = getelementptr inbounds %struct.typec_port, ptr %0, i32 0, i32 1
  tail call void @sysfs_notify(ptr noundef %7, ptr noundef null, ptr noundef nonnull @.str.21) #14
  %8 = tail call i32 @kobject_uevent(ptr noundef %7, i32 noundef 2) #14
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @typec_set_pwr_opmode(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.typec_port, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  store i32 %1, ptr %3, align 4
  %7 = getelementptr inbounds %struct.typec_port, ptr %0, i32 0, i32 1
  tail call void @sysfs_notify(ptr noundef %7, ptr noundef null, ptr noundef nonnull @.str.22) #14
  %8 = tail call i32 @kobject_uevent(ptr noundef %7, i32 noundef 2) #14
  %9 = tail call ptr @device_find_child(ptr noundef %7, ptr noundef null, ptr noundef nonnull @partner_match) #14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %6
  %12 = icmp eq i32 %1, 3
  br i1 %12, label %13, label %20

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.typec_partner, ptr %9, i32 0, i32 1
  %15 = load i8, ptr %14, align 8
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = or i8 %15, 1
  store i8 %19, ptr %14, align 8
  tail call void @sysfs_notify(ptr noundef nonnull %9, ptr noundef null, ptr noundef nonnull @.str.7) #14
  br label %20

20:                                               ; preds = %18, %13, %11
  tail call void @put_device(ptr noundef nonnull %9) #14
  br label %21

21:                                               ; preds = %20, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @typec_find_pwr_opmode(ptr noundef %0) #0 {
  %2 = tail call i32 @match_string(ptr noundef nonnull @typec_pwr_opmodes, i32 noundef 4, ptr noundef %0) #14
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @typec_find_orientation(ptr noundef %0) #0 {
  %2 = tail call i32 @match_string(ptr noundef nonnull @typec_orientations, i32 noundef 3, ptr noundef %0) #14
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @typec_find_port_power_role(ptr noundef %0) #0 {
  %2 = tail call i32 @match_string(ptr noundef nonnull @typec_port_power_roles, i32 noundef 3, ptr noundef %0) #14
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @typec_find_power_role(ptr noundef %0) #0 {
  %2 = tail call i32 @match_string(ptr noundef nonnull @typec_roles, i32 noundef 2, ptr noundef %0) #14
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @typec_find_port_data_role(ptr noundef %0) #0 {
  %2 = tail call i32 @match_string(ptr noundef nonnull @typec_port_data_roles, i32 noundef 3, ptr noundef %0) #14
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @typec_set_orientation(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.typec_port, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @typec_switch_set(ptr noundef %4, i32 noundef %1) #14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.typec_port, ptr %0, i32 0, i32 10
  store i32 %1, ptr %8, align 8
  %9 = getelementptr inbounds %struct.typec_port, ptr %0, i32 0, i32 1
  tail call void @sysfs_notify(ptr noundef %9, ptr noundef null, ptr noundef nonnull @.str.23) #14
  %10 = tail call i32 @kobject_uevent(ptr noundef %9, i32 noundef 2) #14
  br label %11

11:                                               ; preds = %7, %2
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @typec_switch_set(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @typec_get_orientation(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.typec_port, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @typec_set_mode(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.typec_mux_state, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false)
  %4 = getelementptr inbounds %struct.typec_mux_state, ptr %3, i32 0, i32 1
  store i32 %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.typec_port, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @typec_mux_set(ptr noundef %6, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @typec_mux_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @typec_get_negotiated_svdm_version(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.typec_port, ptr %0, i32 0, i32 1
  %3 = tail call ptr @device_find_child(ptr noundef %2, ptr noundef null, ptr noundef nonnull @partner_match) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.typec_partner, ptr %3, i32 0, i32 7
  %7 = load i32, ptr %6, align 8
  tail call void @put_device(ptr noundef nonnull %3) #14
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i32 [ %7, %5 ], [ -19, %1 ]
  ret i32 %9
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @typec_get_drvdata(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.typec_port, ptr %0, i32 0, i32 1, i32 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @typec_port_register_altmode(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.typec_port, ptr %0, i32 0, i32 1
  %4 = tail call ptr @dev_fwnode(ptr noundef %3) #14
  %5 = tail call ptr @fwnode_typec_mux_get(ptr noundef %4, ptr noundef %1) #14
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = tail call fastcc ptr @typec_register_altmode(ptr noundef %3, ptr noundef %1)
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @typec_mux_put(ptr noundef %5) #14
  br label %13

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %8, i32 496
  store ptr %5, ptr %12, align 8
  br label %13

13:                                               ; preds = %11, %10, %2
  %14 = phi ptr [ %8, %11 ], [ %8, %10 ], [ %5, %2 ]
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @typec_port_register_altmodes(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) #0 {
  %6 = alloca %struct.typec_altmode_desc, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i32 12, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 0, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  store i32 0, ptr %8, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.typec_port, ptr %0, i32 0, i32 1
  %10 = tail call ptr @device_get_named_child_node(ptr noundef %9, ptr noundef nonnull @.str.24) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %62, label %12

12:                                               ; preds = %5
  %13 = tail call ptr @fwnode_get_next_child_node(ptr noundef nonnull %10, ptr noundef null) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %62, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.typec_altmode_desc, ptr %6, i32 0, i32 2
  %17 = getelementptr inbounds %struct.typec_altmode_desc, ptr %6, i32 0, i32 1
  br label %18

18:                                               ; preds = %58, %15
  %19 = phi i32 [ 0, %15 ], [ %59, %58 ]
  %20 = phi ptr [ %13, %15 ], [ %60, %58 ]
  %21 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %20, ptr noundef nonnull @.str.25, ptr noundef nonnull %7, i32 noundef 1) #14
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = call ptr @fwnode_get_name(ptr noundef nonnull %20) #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.26, ptr noundef %24) #16
  br label %58

25:                                               ; preds = %18
  %26 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %20, ptr noundef nonnull @.str.27, ptr noundef nonnull %8, i32 noundef 1) #14
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = call ptr @fwnode_get_name(ptr noundef nonnull %20) #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.28, ptr noundef %29) #16
  br label %58

30:                                               ; preds = %25
  %31 = icmp ult i32 %19, %4
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  %33 = call ptr @fwnode_get_name(ptr noundef nonnull %20) #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.29, ptr noundef %33) #16
  br label %58

34:                                               ; preds = %30
  %35 = load i32, ptr %7, align 4
  %36 = trunc i32 %35 to i16
  store i16 %36, ptr %6, align 4
  %37 = load i32, ptr %8, align 4
  store i32 %37, ptr %16, align 4
  %38 = add nuw i32 %19, 1
  %39 = trunc i32 %38 to i8
  store i8 %39, ptr %17, align 2
  %40 = call ptr @dev_fwnode(ptr noundef %9) #14
  %41 = call ptr @fwnode_typec_mux_get(ptr noundef %40, ptr noundef nonnull %6) #14
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %49, label %43

43:                                               ; preds = %34
  %44 = call fastcc ptr @typec_register_altmode(ptr noundef %9, ptr noundef nonnull %6) #14
  %45 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  call void @typec_mux_put(ptr noundef %41) #14
  br label %49

47:                                               ; preds = %43
  %48 = getelementptr i8, ptr %44, i32 496
  store ptr %41, ptr %48, align 8
  br label %49

49:                                               ; preds = %47, %46, %34
  %50 = phi ptr [ %44, %47 ], [ %44, %46 ], [ %41, %34 ]
  %51 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = call ptr @fwnode_get_name(ptr noundef nonnull %20) #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.30, ptr noundef %53) #16
  br label %58

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.typec_altmode, ptr %50, i32 0, i32 6
  store ptr %1, ptr %55, align 4
  %56 = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 8
  store ptr %2, ptr %56, align 8
  %57 = getelementptr ptr, ptr %3, i32 %19
  store ptr %50, ptr %57, align 4
  br label %58

58:                                               ; preds = %54, %52, %32, %28, %23
  %59 = phi i32 [ %19, %23 ], [ %19, %28 ], [ %19, %32 ], [ %19, %52 ], [ %38, %54 ]
  %60 = call ptr @fwnode_get_next_child_node(ptr noundef nonnull %10, ptr noundef nonnull %20) #14
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %18

62:                                               ; preds = %58, %12, %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_named_child_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @typec_register_port(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 560) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %85, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @ida_alloc_range(ptr noundef nonnull @typec_index_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #14
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  tail call void @kfree(ptr noundef nonnull %4) #14
  %10 = inttoptr i32 %7 to ptr
  br label %85

11:                                               ; preds = %6
  %12 = load i32, ptr %1, align 4
  switch i32 %12, label %26 [
    i32 0, label %13
    i32 1, label %16
    i32 2, label %19
  ]

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.typec_port, ptr %4, i32 0, i32 5
  store i32 1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.typec_port, ptr %4, i32 0, i32 6
  store i32 1, ptr %15, align 8
  br label %26

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.typec_port, ptr %4, i32 0, i32 5
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.typec_port, ptr %4, i32 0, i32 6
  store i32 0, ptr %18, align 8
  br label %26

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.typec_capability, ptr %1, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, -1
  %23 = getelementptr inbounds %struct.typec_port, ptr %4, i32 0, i32 5
  br i1 %22, label %25, label %24

24:                                               ; preds = %19
  store i32 %21, ptr %23, align 4
  br label %26

25:                                               ; preds = %19
  store i32 0, ptr %23, align 4
  br label %26

26:                                               ; preds = %25, %24, %16, %13, %11
  %27 = getelementptr inbounds %struct.typec_capability, ptr %1, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  switch i32 %28, label %40 [
    i32 0, label %29
    i32 1, label %31
    i32 2, label %33
  ]

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.typec_port, ptr %4, i32 0, i32 4
  store i32 1, ptr %30, align 8
  br label %40

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.typec_port, ptr %4, i32 0, i32 4
  store i32 0, ptr %32, align 8
  br label %40

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.typec_capability, ptr %1, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 1
  %37 = getelementptr inbounds %struct.typec_port, ptr %4, i32 0, i32 4
  br i1 %36, label %38, label %39

38:                                               ; preds = %33
  store i32 1, ptr %37, align 8
  br label %40

39:                                               ; preds = %33
  store i32 0, ptr %37, align 8
  br label %40

40:                                               ; preds = %39, %38, %31, %29, %26
  %41 = getelementptr inbounds %struct.typec_port, ptr %4, i32 0, i32 2
  store i32 0, ptr %41, align 8
  %42 = getelementptr inbounds %struct.typec_port, ptr %4, i32 0, i32 2, i32 0, i32 1
  store i32 33554437, ptr %42, align 4
  %43 = getelementptr inbounds %struct.typec_port, ptr %4, i32 0, i32 2, i32 0, i32 2
  store ptr null, ptr %43, align 8
  %44 = getelementptr inbounds %struct.typec_port, ptr %4, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %44, ptr noundef nonnull @.str.31, ptr noundef nonnull @typec_register_port.__key) #14
  store i32 %7, ptr %4, align 8
  %45 = getelementptr inbounds %struct.typec_capability, ptr %1, i32 0, i32 10
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.typec_port, ptr %4, i32 0, i32 14
  store ptr %46, ptr %47, align 8
  %48 = load i32, ptr %1, align 4
  %49 = getelementptr inbounds %struct.typec_port, ptr %4, i32 0, i32 8
  store i32 %48, ptr %49, align 8
  %50 = getelementptr inbounds %struct.typec_capability, ptr %1, i32 0, i32 5
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.typec_port, ptr %4, i32 0, i32 3
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.typec_port, ptr %4, i32 0, i32 1
  tail call void @device_initialize(ptr noundef %53) #14
  %54 = getelementptr inbounds %struct.typec_port, ptr %4, i32 0, i32 1, i32 31
  store ptr @typec_class, ptr %54, align 4
  %55 = getelementptr inbounds %struct.typec_port, ptr %4, i32 0, i32 1, i32 1
  store ptr %0, ptr %55, align 4
  %56 = getelementptr inbounds %struct.typec_capability, ptr %1, i32 0, i32 8
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.typec_port, ptr %4, i32 0, i32 1, i32 26
  store ptr %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.typec_port, ptr %4, i32 0, i32 1, i32 4
  store ptr @typec_port_dev_type, ptr %59, align 8
  %60 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %53, ptr noundef nonnull @.str.32, i32 noundef %7) #14
  %61 = getelementptr inbounds %struct.typec_capability, ptr %1, i32 0, i32 9
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.typec_port, ptr %4, i32 0, i32 1, i32 8
  store ptr %62, ptr %63, align 8
  %64 = tail call ptr @kmemdup(ptr noundef %1, i32 noundef 48, i32 noundef 3264) #14
  %65 = getelementptr inbounds %struct.typec_port, ptr %4, i32 0, i32 13
  store ptr %64, ptr %65, align 4
  %66 = icmp eq ptr %64, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %40
  tail call void @put_device(ptr noundef %53) #14
  br label %85

68:                                               ; preds = %40
  %69 = tail call ptr @dev_fwnode(ptr noundef %53) #14
  %70 = tail call ptr @fwnode_typec_switch_get(ptr noundef %69) #14
  %71 = getelementptr inbounds %struct.typec_port, ptr %4, i32 0, i32 11
  store ptr %70, ptr %71, align 4
  %72 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  tail call void @put_device(ptr noundef %53) #14
  br label %85

74:                                               ; preds = %68
  %75 = tail call ptr @dev_fwnode(ptr noundef %53) #14
  %76 = tail call ptr @fwnode_typec_mux_get(ptr noundef %75, ptr noundef null) #14
  %77 = getelementptr inbounds %struct.typec_port, ptr %4, i32 0, i32 12
  store ptr %76, ptr %77, align 8
  %78 = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  tail call void @put_device(ptr noundef %53) #14
  br label %85

80:                                               ; preds = %74
  %81 = tail call i32 @device_add(ptr noundef %53) #14
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.33, i32 noundef %81) #16
  tail call void @put_device(ptr noundef %53) #14
  %84 = inttoptr i32 %81 to ptr
  br label %85

85:                                               ; preds = %83, %80, %79, %73, %67, %9, %2
  %86 = phi ptr [ %10, %9 ], [ %70, %73 ], [ %76, %79 ], [ %84, %83 ], [ inttoptr (i32 -12 to ptr), %67 ], [ inttoptr (i32 -12 to ptr), %2 ], [ %4, %80 ]
  ret ptr %86
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @typec_unregister_port(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.typec_port, ptr %0, i32 0, i32 1
  tail call void @device_unregister(ptr noundef %6) #14
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #9 section ".init.text" {
  %1 = tail call i32 @bus_register(ptr noundef nonnull @typec_bus) #14
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %12

3:                                                ; preds = %0
  %4 = tail call i32 @__class_register(ptr noundef nonnull @typec_mux_class, ptr noundef nonnull @typec_init.__key) #14
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = tail call i32 @__class_register(ptr noundef nonnull @typec_class, ptr noundef nonnull @typec_init.__key.109) #14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  tail call void @class_unregister(ptr noundef nonnull @typec_mux_class) #14
  br label %10

10:                                               ; preds = %9, %3
  %11 = phi i32 [ %4, %3 ], [ %7, %9 ]
  tail call void @bus_unregister(ptr noundef nonnull @typec_bus) #14
  br label %12

12:                                               ; preds = %10, %6, %0
  %13 = phi i32 [ %11, %10 ], [ %1, %0 ], [ 0, %6 ]
  ret i32 %13
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #9 section ".exit.text" {
  tail call void @class_unregister(ptr noundef nonnull @typec_class) #14
  tail call void @ida_destroy(ptr noundef nonnull @typec_index_ida) #14
  tail call void @bus_unregister(ptr noundef nonnull @typec_bus) #14
  tail call void @class_unregister(ptr noundef nonnull @typec_mux_class) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @typec_altmode_attr_is_visible(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) #5 {
  %4 = icmp eq ptr %1, @dev_attr_active
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.typec_altmode, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.typec_altmode_ops, ptr %7, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9, %3
  %14 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %15 = load i16, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %9, %5
  %17 = phi i16 [ %15, %13 ], [ 292, %9 ], [ 292, %5 ]
  ret i16 %17
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @active_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = getelementptr inbounds %struct.typec_altmode, ptr %0, i32 0, i32 4
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, ptr @.str.37, ptr @.str.36
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.35, ptr noundef nonnull %8)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @active_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #14
  store i8 0, ptr %5, align 1, !annotation !8
  %6 = call i32 @kstrtobool(ptr noundef %2, ptr noundef nonnull %5) #14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %62

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.typec_altmode, ptr %0, i32 0, i32 4
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 1
  %12 = load i8, ptr %5, align 1, !range !10
  %13 = icmp ne i8 %12, 0
  %14 = icmp eq i8 %11, %12
  br i1 %14, label %62, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 4
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, @typec_port_dev_type
  br i1 %20, label %21, label %36

21:                                               ; preds = %15
  call void @typec_altmode_update_active(ptr noundef %0, i1 noundef zeroext %13)
  %22 = getelementptr i8, ptr %0, i32 560
  %23 = load ptr, ptr %22, align 8
  %24 = icmp ne ptr %23, null
  %25 = load i8, ptr %5, align 1
  %26 = icmp eq i8 %25, 0
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %48

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.altmode, ptr %23, i32 0, i32 1, i32 4
  %30 = load i8, ptr %29, align 4
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.altmode, ptr %23, i32 0, i32 1
  %35 = call i32 @typec_altmode_exit(ptr noundef %34) #14
  br label %48

36:                                               ; preds = %15
  %37 = getelementptr i8, ptr %0, i32 560
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  %40 = xor i1 %13, true
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.altmode, ptr %38, i32 0, i32 1, i32 4
  %44 = load i8, ptr %43, align 4
  %45 = and i8 %44, 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.38) #16
  br label %62

48:                                               ; preds = %42, %36, %33, %28, %21
  %49 = getelementptr inbounds %struct.typec_altmode, ptr %0, i32 0, i32 6
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %61, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.typec_altmode_ops, ptr %50, i32 0, i32 5
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %52
  %57 = load i8, ptr %5, align 1, !range !10
  %58 = zext i8 %57 to i32
  %59 = call i32 %54(ptr noundef %0, i32 noundef %58) #14
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56, %52, %48
  br label %62

62:                                               ; preds = %61, %56, %47, %8, %4
  %63 = phi i32 [ %3, %61 ], [ -1, %47 ], [ %6, %4 ], [ %3, %8 ], [ %59, %56 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #14
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @typec_altmode_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mode_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = getelementptr inbounds %struct.typec_altmode, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.40, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @svid_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = getelementptr inbounds %struct.typec_altmode, ptr %0, i32 0, i32 1
  %5 = load i16, ptr %4, align 8
  %6 = zext i16 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.41, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vdo_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = getelementptr inbounds %struct.typec_altmode, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.42, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @typec_partner_attr_is_visible(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) #5 {
  %4 = icmp eq ptr %1, @dev_attr_number_of_alternate_modes
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.typec_partner, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %49, label %46

9:                                                ; preds = %3
  %10 = icmp eq ptr %1, @dev_attr_type
  br i1 %10, label %11, label %46

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, @typec_partner_dev_type
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = icmp eq ptr %15, @typec_cable_dev_type
  br i1 %18, label %32, label %49

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.typec_partner, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %49, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %13, i32 488
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 1
  %27 = load i32, ptr %21, align 4
  br i1 %26, label %28, label %30

28:                                               ; preds = %23
  %29 = lshr i32 %27, 27
  br label %39

30:                                               ; preds = %23
  %31 = lshr i32 %27, 23
  br label %39

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.typec_cable, ptr %0, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %46, label %36

36:                                               ; preds = %32
  %37 = load i32, ptr %34, align 4
  %38 = lshr i32 %37, 27
  br label %39

39:                                               ; preds = %36, %30, %28
  %40 = phi i32 [ %29, %28 ], [ %31, %30 ], [ %38, %36 ]
  %41 = phi ptr [ @product_type_ufp, %28 ], [ @product_type_dfp, %30 ], [ @product_type_cable, %36 ]
  %42 = and i32 %40, 7
  %43 = getelementptr [8 x ptr], ptr %41, i32 0, i32 %42
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %39, %32, %9, %5
  %47 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %48 = load i16, ptr %47, align 4
  br label %49

49:                                               ; preds = %46, %39, %19, %17, %5
  %50 = phi i16 [ %48, %46 ], [ 0, %5 ], [ 0, %39 ], [ 0, %19 ], [ 0, %17 ]
  ret i16 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @number_of_alternate_modes_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, @typec_partner_dev_type
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.typec_partner, ptr %0, i32 0, i32 5
  br label %13

9:                                                ; preds = %3
  %10 = icmp eq ptr %5, @typec_plug_dev_type
  br i1 %10, label %11, label %17

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.typec_plug, ptr %0, i32 0, i32 3
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %8, %7 ], [ %12, %11 ]
  %15 = load i32, ptr %14, align 8
  %16 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.50, i32 noundef %15) #14
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i32 [ %16, %13 ], [ 0, %9 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @type_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, @typec_partner_dev_type
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = icmp eq ptr %7, @typec_cable_dev_type
  br i1 %10, label %24, label %47

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.typec_partner, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %47, label %15

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %5, i32 488
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 1
  %19 = load i32, ptr %13, align 4
  br i1 %18, label %20, label %22

20:                                               ; preds = %15
  %21 = lshr i32 %19, 27
  br label %37

22:                                               ; preds = %15
  %23 = lshr i32 %19, 23
  br label %37

24:                                               ; preds = %9
  %25 = getelementptr inbounds %struct.typec_cable, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr %26, align 4
  %30 = lshr i32 %29, 27
  br label %37

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.typec_cable, ptr %0, i32 0, i32 3
  %33 = load i8, ptr %32, align 8
  %34 = and i8 %33, 1
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %35, ptr @.str.61, ptr @.str.3
  br label %44

37:                                               ; preds = %28, %22, %20
  %38 = phi i32 [ %21, %20 ], [ %23, %22 ], [ %30, %28 ]
  %39 = phi ptr [ @product_type_ufp, %20 ], [ @product_type_dfp, %22 ], [ @product_type_cable, %28 ]
  %40 = and i32 %38, 7
  %41 = getelementptr [8 x ptr], ptr %39, i32 0, i32 %40
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %37, %31
  %45 = phi ptr [ %36, %31 ], [ %42, %37 ]
  %46 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.35, ptr noundef nonnull %45) #14
  br label %47

47:                                               ; preds = %44, %37, %11, %9
  %48 = phi i32 [ %46, %44 ], [ 0, %37 ], [ 0, %11 ], [ 0, %9 ]
  ret i32 %48
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @accessory_mode_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = getelementptr inbounds %struct.typec_partner, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr [3 x ptr], ptr @typec_accessory_modes, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.35, ptr noundef %7)
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @supports_usb_power_delivery_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = getelementptr inbounds %struct.typec_partner, ptr %0, i32 0, i32 1
  %5 = load i8, ptr %4, align 8
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, ptr @.str.37, ptr @.str.36
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.35, ptr noundef nonnull %8)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_power_delivery_revision_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, @typec_partner_dev_type
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.typec_partner, ptr %0, i32 0, i32 6
  %9 = load i16, ptr %8, align 4
  br label %22

10:                                               ; preds = %3
  %11 = icmp eq ptr %5, @typec_cable_dev_type
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.typec_cable, ptr %0, i32 0, i32 4
  %14 = load i16, ptr %13, align 2
  br label %22

15:                                               ; preds = %10
  %16 = icmp eq ptr %5, @typec_port_dev_type
  br i1 %16, label %17, label %22

17:                                               ; preds = %15
  %18 = getelementptr i8, ptr %0, i32 540
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.typec_capability, ptr %19, i32 0, i32 3
  %21 = load i16, ptr %20, align 2
  br label %22

22:                                               ; preds = %17, %15, %12, %7
  %23 = phi i16 [ %9, %7 ], [ %14, %12 ], [ %21, %17 ], [ 0, %15 ]
  %24 = zext i16 %23 to i32
  %25 = lshr i32 %24, 8
  %26 = lshr i32 %24, 4
  %27 = and i32 %26, 15
  %28 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %25, i32 noundef %27) #14
  ret i32 %28
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @description_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = getelementptr inbounds %struct.typec_altmode, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr @.str.71, ptr %5
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.35, ptr noundef nonnull %7)
  ret i32 %8
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @supported_roles_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #11 {
  %4 = getelementptr i8, ptr %0, i32 500
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %8 [
    i32 0, label %6
    i32 1, label %7
  ]

6:                                                ; preds = %3
  store i64 2926227563573107, ptr %2, align 1
  br label %9

7:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) @.str.74, i32 6, i1 false)
  br label %9

8:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(13) %2, ptr noundef nonnull align 1 dereferenceable(13) @.str.75, i32 13, i1 false)
  br label %9

9:                                                ; preds = %8, %7, %6
  %10 = phi i32 [ 12, %8 ], [ 5, %7 ], [ 7, %6 ]
  ret i32 %10
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @altmode_match(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, @typec_altmode_dev_type
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.typec_altmode, ptr %0, i32 0, i32 1
  %8 = load i16, ptr %7, align 8
  %9 = load i16, ptr %1, align 4
  %10 = icmp eq i16 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.typec_altmode, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.typec_device_id, ptr %1, i32 0, i32 1
  %15 = load i8, ptr %14, align 2
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %13, %16
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %11, %6, %2
  %20 = phi i32 [ 0, %2 ], [ 0, %6 ], [ %18, %11 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @id_header_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, @typec_partner_dev_type
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.typec_partner, ptr %0, i32 0, i32 2
  br label %13

9:                                                ; preds = %3
  %10 = icmp eq ptr %5, @typec_cable_dev_type
  br i1 %10, label %11, label %16

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.typec_cable, ptr %0, i32 0, i32 2
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %12, %11 ], [ %8, %7 ]
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi ptr [ null, %9 ], [ %15, %13 ]
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.42, i32 noundef %18)
  ret i32 %19
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cert_stat_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, @typec_partner_dev_type
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.typec_partner, ptr %0, i32 0, i32 2
  br label %13

9:                                                ; preds = %3
  %10 = icmp eq ptr %5, @typec_cable_dev_type
  br i1 %10, label %11, label %16

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.typec_cable, ptr %0, i32 0, i32 2
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %12, %11 ], [ %8, %7 ]
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi ptr [ null, %9 ], [ %15, %13 ]
  %18 = getelementptr inbounds %struct.usb_pd_identity, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.42, i32 noundef %19)
  ret i32 %20
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @product_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, @typec_partner_dev_type
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.typec_partner, ptr %0, i32 0, i32 2
  br label %13

9:                                                ; preds = %3
  %10 = icmp eq ptr %5, @typec_cable_dev_type
  br i1 %10, label %11, label %16

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.typec_cable, ptr %0, i32 0, i32 2
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %12, %11 ], [ %8, %7 ]
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi ptr [ null, %9 ], [ %15, %13 ]
  %18 = getelementptr inbounds %struct.usb_pd_identity, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.42, i32 noundef %19)
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @product_type_vdo1_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, @typec_partner_dev_type
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.typec_partner, ptr %0, i32 0, i32 2
  br label %13

9:                                                ; preds = %3
  %10 = icmp eq ptr %5, @typec_cable_dev_type
  br i1 %10, label %11, label %16

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.typec_cable, ptr %0, i32 0, i32 2
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %12, %11 ], [ %8, %7 ]
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi ptr [ null, %9 ], [ %15, %13 ]
  %18 = getelementptr inbounds %struct.usb_pd_identity, ptr %17, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.42, i32 noundef %19) #14
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @product_type_vdo2_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, @typec_partner_dev_type
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.typec_partner, ptr %0, i32 0, i32 2
  br label %13

9:                                                ; preds = %3
  %10 = icmp eq ptr %5, @typec_cable_dev_type
  br i1 %10, label %11, label %16

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.typec_cable, ptr %0, i32 0, i32 2
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %12, %11 ], [ %8, %7 ]
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi ptr [ null, %9 ], [ %15, %13 ]
  %18 = getelementptr %struct.usb_pd_identity, ptr %17, i32 0, i32 3, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.42, i32 noundef %19) #14
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @product_type_vdo3_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, @typec_partner_dev_type
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.typec_partner, ptr %0, i32 0, i32 2
  br label %13

9:                                                ; preds = %3
  %10 = icmp eq ptr %5, @typec_cable_dev_type
  br i1 %10, label %11, label %16

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.typec_cable, ptr %0, i32 0, i32 2
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %12, %11 ], [ %8, %7 ]
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi ptr [ null, %9 ], [ %15, %13 ]
  %18 = getelementptr %struct.usb_pd_identity, ptr %17, i32 0, i32 3, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.42, i32 noundef %19) #14
  ret i32 %20
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @typec_plug_attr_is_visible(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) #8 {
  %4 = icmp eq ptr %1, @dev_attr_number_of_alternate_modes
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.typec_plug, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 8
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5, %3
  %10 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %11 = load i16, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi i16 [ %11, %9 ], [ 0, %5 ]
  ret i16 %13
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @plug_type_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = getelementptr inbounds %struct.typec_cable, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr [5 x ptr], ptr @typec_plug_types, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.35, ptr noundef %7)
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @typec_attr_is_visible(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) #5 {
  %4 = icmp eq ptr %1, @dev_attr_data_role
  br i1 %4, label %5, label %19

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 540
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.typec_capability, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %92

11:                                               ; preds = %5
  %12 = getelementptr i8, ptr %0, i32 544
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %92, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.typec_operations, ptr %13, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %92, label %89

19:                                               ; preds = %3
  %20 = icmp eq ptr %1, @dev_attr_power_role
  br i1 %20, label %21, label %34

21:                                               ; preds = %19
  %22 = getelementptr i8, ptr %0, i32 540
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %92

26:                                               ; preds = %21
  %27 = getelementptr i8, ptr %0, i32 544
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %92, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.typec_operations, ptr %28, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %92, label %89

34:                                               ; preds = %19
  %35 = icmp eq ptr %1, @dev_attr_vconn_source
  br i1 %35, label %36, label %50

36:                                               ; preds = %34
  %37 = getelementptr i8, ptr %0, i32 540
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.typec_capability, ptr %38, i32 0, i32 3
  %40 = load i16, ptr %39, align 2
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %92, label %42

42:                                               ; preds = %36
  %43 = getelementptr i8, ptr %0, i32 544
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %92, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.typec_operations, ptr %44, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %92, label %89

50:                                               ; preds = %34
  %51 = icmp eq ptr %1, @dev_attr_preferred_role
  br i1 %51, label %52, label %64

52:                                               ; preds = %50
  %53 = getelementptr i8, ptr %0, i32 540
  %54 = load ptr, ptr %53, align 4
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %92

57:                                               ; preds = %52
  %58 = getelementptr i8, ptr %0, i32 544
  %59 = load ptr, ptr %58, align 8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %92, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr %59, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %92, label %89

64:                                               ; preds = %50
  %65 = icmp eq ptr %1, @dev_attr_port_type
  br i1 %65, label %66, label %79

66:                                               ; preds = %64
  %67 = getelementptr i8, ptr %0, i32 544
  %68 = load ptr, ptr %67, align 8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %92, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.typec_operations, ptr %68, i32 0, i32 4
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %92, label %74

74:                                               ; preds = %70
  %75 = getelementptr i8, ptr %0, i32 540
  %76 = load ptr, ptr %75, align 4
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %89, label %92

79:                                               ; preds = %64
  %80 = icmp eq ptr %1, @dev_attr_orientation
  br i1 %80, label %81, label %89

81:                                               ; preds = %79
  %82 = getelementptr i8, ptr %0, i32 540
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.typec_capability, ptr %83, i32 0, i32 7
  %85 = load i8, ptr %84, align 4
  %86 = and i8 %85, 1
  %87 = icmp eq i8 %86, 0
  %88 = select i1 %87, i16 0, i16 292
  br label %92

89:                                               ; preds = %79, %74, %61, %46, %30, %15
  %90 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %91 = load i16, ptr %90, align 4
  br label %92

92:                                               ; preds = %89, %81, %74, %70, %66, %61, %57, %52, %46, %42, %36, %30, %26, %21, %15, %11, %5
  %93 = phi i16 [ %91, %89 ], [ 292, %15 ], [ 292, %11 ], [ 292, %5 ], [ 292, %30 ], [ 292, %26 ], [ 292, %21 ], [ 292, %46 ], [ 292, %42 ], [ 292, %36 ], [ 292, %61 ], [ 292, %57 ], [ 292, %52 ], [ 0, %70 ], [ 0, %66 ], [ 292, %74 ], [ %88, %81 ]
  ret i16 %93
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @data_role_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = getelementptr i8, ptr %0, i32 540
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.typec_capability, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 2
  %9 = getelementptr i8, ptr %0, i32 488
  %10 = load i32, ptr %9, align 8
  br i1 %8, label %11, label %15

11:                                               ; preds = %3
  %12 = icmp eq i32 %10, 1
  %13 = select i1 %12, ptr @.str.82, ptr @.str.83
  %14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.35, ptr noundef nonnull %13)
  br label %19

15:                                               ; preds = %3
  %16 = getelementptr [2 x ptr], ptr @typec_data_roles, i32 0, i32 %10
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.84, ptr noundef %17)
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i32 [ %14, %11 ], [ %18, %15 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @data_role_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = getelementptr i8, ptr %0, i32 544
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.typec_operations, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @__sysfs_match_string(ptr noundef nonnull @typec_data_roles, i32 noundef 2, ptr noundef %2) #14
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %13
  %17 = getelementptr i8, ptr %0, i32 508
  tail call void @mutex_lock(ptr noundef %17) #14
  %18 = getelementptr i8, ptr %0, i32 540
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.typec_capability, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr inbounds %struct.typec_operations, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 %26(ptr noundef %5, i32 noundef %14) #14
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 %3, i32 %27
  br label %30

30:                                               ; preds = %23, %16
  %31 = phi i32 [ -95, %16 ], [ %29, %23 ]
  tail call void @mutex_unlock(ptr noundef %17) #14
  br label %32

32:                                               ; preds = %30, %13, %9, %4
  %33 = phi i32 [ %31, %30 ], [ -95, %9 ], [ -95, %4 ], [ %14, %13 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sysfs_match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @power_role_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = getelementptr i8, ptr %0, i32 540
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  %8 = getelementptr i8, ptr %0, i32 492
  %9 = load i32, ptr %8, align 4
  br i1 %7, label %10, label %14

10:                                               ; preds = %3
  %11 = icmp eq i32 %9, 1
  %12 = select i1 %11, ptr @.str.86, ptr @.str.87
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.35, ptr noundef nonnull %12)
  br label %18

14:                                               ; preds = %3
  %15 = getelementptr [2 x ptr], ptr @typec_roles, i32 0, i32 %9
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.84, ptr noundef %16)
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi i32 [ %13, %10 ], [ %17, %14 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @power_role_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = getelementptr i8, ptr %0, i32 544
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %34, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.typec_operations, ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %34, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %0, i32 500
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %34

17:                                               ; preds = %13
  %18 = tail call i32 @__sysfs_match_string(ptr noundef nonnull @typec_roles, i32 noundef 2, ptr noundef %2) #14
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %17
  %21 = getelementptr i8, ptr %0, i32 508
  tail call void @mutex_lock(ptr noundef %21) #14
  %22 = getelementptr i8, ptr %0, i32 504
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load ptr, ptr %6, align 8
  %27 = getelementptr inbounds %struct.typec_operations, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %28(ptr noundef %5, i32 noundef %18) #14
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 %3, i32 %29
  br label %32

32:                                               ; preds = %25, %20
  %33 = phi i32 [ -95, %20 ], [ %31, %25 ]
  tail call void @mutex_unlock(ptr noundef %21) #14
  br label %34

34:                                               ; preds = %32, %17, %13, %9, %4
  %35 = phi i32 [ %33, %32 ], [ -95, %9 ], [ -95, %4 ], [ -5, %13 ], [ %18, %17 ]
  ret i32 %35
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vconn_source_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = getelementptr i8, ptr %0, i32 496
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 1
  %7 = select i1 %6, ptr @.str.36, ptr @.str.37
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.35, ptr noundef nonnull %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vconn_source_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = getelementptr i8, ptr %0, i32 -8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #14
  store i8 0, ptr %5, align 1, !annotation !8
  %7 = getelementptr i8, ptr %0, i32 540
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.typec_capability, ptr %8, i32 0, i32 3
  %10 = load i16, ptr %9, align 2
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %4
  %13 = getelementptr i8, ptr %0, i32 544
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.typec_operations, ptr %14, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %16
  %21 = call i32 @kstrtobool(ptr noundef %2, ptr noundef nonnull %5) #14
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load ptr, ptr %13, align 8
  %25 = getelementptr inbounds %struct.typec_operations, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = load i8, ptr %5, align 1, !range !10
  %28 = zext i8 %27 to i32
  %29 = call i32 %26(ptr noundef %6, i32 noundef %28) #14
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 %3, i32 %29
  br label %32

32:                                               ; preds = %23, %20, %16, %12, %4
  %33 = phi i32 [ -95, %4 ], [ -95, %16 ], [ -95, %12 ], [ %21, %20 ], [ %31, %23 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #14
  ret i32 %33
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @preferred_role_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = getelementptr i8, ptr %0, i32 540
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %16

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 484
  %10 = load i32, ptr %9, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr [2 x ptr], ptr @typec_roles, i32 0, i32 %10
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.35, ptr noundef %14)
  br label %16

16:                                               ; preds = %12, %8, %3
  %17 = phi i32 [ %15, %12 ], [ 0, %3 ], [ 0, %8 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @preferred_role_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = getelementptr i8, ptr %0, i32 540
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %30

10:                                               ; preds = %4
  %11 = getelementptr i8, ptr %0, i32 544
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @__sysfs_match_string(ptr noundef nonnull @typec_roles, i32 noundef 2, ptr noundef %2) #14
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.64) #14
  br i1 %21, label %22, label %30

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %18, %17 ], [ -1, %20 ]
  %24 = load ptr, ptr %11, align 8
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 %25(ptr noundef %5, i32 noundef %23) #14
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = getelementptr i8, ptr %0, i32 484
  store i32 %23, ptr %29, align 4
  br label %30

30:                                               ; preds = %28, %22, %20, %14, %10, %4
  %31 = phi i32 [ %3, %28 ], [ -95, %4 ], [ -95, %14 ], [ -95, %10 ], [ -22, %20 ], [ %26, %22 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @port_type_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = getelementptr i8, ptr %0, i32 540
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 504
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr [3 x ptr], ptr @typec_port_types_drp, i32 0, i32 %10
  br label %14

12:                                               ; preds = %3
  %13 = getelementptr [3 x ptr], ptr @typec_port_power_roles, i32 0, i32 %6
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi ptr [ %13, %12 ], [ %11, %8 ]
  %16 = phi ptr [ @.str.84, %12 ], [ @.str.35, %8 ]
  %17 = load ptr, ptr %15, align 4
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull %16, ptr noundef %17)
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @port_type_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = getelementptr i8, ptr %0, i32 540
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %35

10:                                               ; preds = %4
  %11 = getelementptr i8, ptr %0, i32 544
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %35, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.typec_operations, ptr %12, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %35, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @__sysfs_match_string(ptr noundef nonnull @typec_port_power_roles, i32 noundef 3, ptr noundef %2) #14
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %18
  %22 = getelementptr i8, ptr %0, i32 508
  tail call void @mutex_lock(ptr noundef %22) #14
  %23 = getelementptr i8, ptr %0, i32 504
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, %19
  br i1 %25, label %33, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %11, align 8
  %28 = getelementptr inbounds %struct.typec_operations, ptr %27, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef %5, i32 noundef %19) #14
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 %19, ptr %23, align 8
  br label %33

33:                                               ; preds = %32, %26, %21
  %34 = phi i32 [ %30, %26 ], [ %3, %32 ], [ %3, %21 ]
  tail call void @mutex_unlock(ptr noundef %22) #14
  br label %35

35:                                               ; preds = %33, %18, %14, %10, %4
  %36 = phi i32 [ %34, %33 ], [ -95, %14 ], [ -95, %10 ], [ -95, %4 ], [ %19, %18 ]
  ret i32 %36
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @orientation_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = getelementptr i8, ptr %0, i32 528
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr [3 x ptr], ptr @typec_orientations, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.35, ptr noundef %7)
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @power_operation_mode_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = getelementptr i8, ptr %0, i32 500
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [4 x ptr], ptr @typec_pwr_opmodes, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.35, ptr noundef %7)
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @supported_accessory_modes_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = getelementptr i8, ptr %0, i32 540
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.typec_capability, ptr %5, i32 0, i32 6, i32 0
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = getelementptr [3 x ptr], ptr @typec_accessory_modes, i32 0, i32 %7
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.94, ptr noundef %11)
  %13 = load ptr, ptr %4, align 4
  br label %14

14:                                               ; preds = %9, %3
  %15 = phi ptr [ %13, %9 ], [ %5, %3 ]
  %16 = phi i32 [ %12, %9 ], [ 0, %3 ]
  %17 = getelementptr %struct.typec_capability, ptr %15, i32 0, i32 6, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = getelementptr i8, ptr %2, i32 %16
  %22 = getelementptr [3 x ptr], ptr @typec_accessory_modes, i32 0, i32 %18
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %21, ptr noundef nonnull @.str.94, ptr noundef %23)
  %25 = add i32 %24, %16
  %26 = load ptr, ptr %4, align 4
  br label %27

27:                                               ; preds = %20, %14
  %28 = phi ptr [ %26, %20 ], [ %15, %14 ]
  %29 = phi i32 [ %25, %20 ], [ %16, %14 ]
  %30 = getelementptr %struct.typec_capability, ptr %28, i32 0, i32 6, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = getelementptr i8, ptr %2, i32 %29
  %35 = getelementptr [3 x ptr], ptr @typec_accessory_modes, i32 0, i32 %31
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %34, ptr noundef nonnull @.str.94, ptr noundef %36)
  %38 = add i32 %37, %29
  br label %39

39:                                               ; preds = %33, %27
  %40 = phi i32 [ %38, %33 ], [ %29, %27 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) @.str.95, i32 6, i1 false)
  br label %46

43:                                               ; preds = %39
  %44 = add i32 %40, -1
  %45 = getelementptr i8, ptr %2, i32 %44
  store i8 10, ptr %45, align 1
  br label %46

46:                                               ; preds = %43, %42
  %47 = phi i32 [ %40, %43 ], [ 5, %42 ]
  ret i32 %47
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_typec_revision_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = getelementptr i8, ptr %0, i32 540
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.typec_capability, ptr %5, i32 0, i32 2
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = lshr i32 %8, 8
  %10 = lshr i32 %8, 4
  %11 = and i32 %10, 15
  %12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %9, i32 noundef %11)
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_switch_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_typec_mux_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_typec_switch_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #13

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly nofree nounwind willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }

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
!10 = !{i8 0, i8 2}
