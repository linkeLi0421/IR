; ModuleID = '/llk/IR/drivers/base/swnode.c_pt.bc'
source_filename = "../drivers/base/swnode.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_is_software_node:\09\09\09\09\09"
module asm "\09.asciz \09\22is_software_node\22\09\09\09\09\09"
module asm "__kstrtabns_is_software_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_to_software_node:\09\09\09\09\09"
module asm "\09.asciz \09\22to_software_node\22\09\09\09\09\09"
module asm "__kstrtabns_to_software_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_software_node_fwnode:\09\09\09\09\09"
module asm "\09.asciz \09\22software_node_fwnode\22\09\09\09\09\09"
module asm "__kstrtabns_software_node_fwnode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_property_entries_dup:\09\09\09\09\09"
module asm "\09.asciz \09\22property_entries_dup\22\09\09\09\09\09"
module asm "__kstrtabns_property_entries_dup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_property_entries_free:\09\09\09\09\09"
module asm "\09.asciz \09\22property_entries_free\22\09\09\09\09\09"
module asm "__kstrtabns_property_entries_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_software_node_find_by_name:\09\09\09\09\09"
module asm "\09.asciz \09\22software_node_find_by_name\22\09\09\09\09\09"
module asm "__kstrtabns_software_node_find_by_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_software_node_register_nodes:\09\09\09\09\09"
module asm "\09.asciz \09\22software_node_register_nodes\22\09\09\09\09\09"
module asm "__kstrtabns_software_node_register_nodes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_software_node_unregister_nodes:\09\09\09\09\09"
module asm "\09.asciz \09\22software_node_unregister_nodes\22\09\09\09\09\09"
module asm "__kstrtabns_software_node_unregister_nodes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_software_node_register_node_group:\09\09\09\09\09"
module asm "\09.asciz \09\22software_node_register_node_group\22\09\09\09\09\09"
module asm "__kstrtabns_software_node_register_node_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_software_node_unregister_node_group:\09\09\09\09\09"
module asm "\09.asciz \09\22software_node_unregister_node_group\22\09\09\09\09\09"
module asm "__kstrtabns_software_node_unregister_node_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_software_node_register:\09\09\09\09\09"
module asm "\09.asciz \09\22software_node_register\22\09\09\09\09\09"
module asm "__kstrtabns_software_node_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_software_node_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22software_node_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_software_node_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_create_software_node:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_create_software_node\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_create_software_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_remove_software_node:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_remove_software_node\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_remove_software_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_add_software_node:\09\09\09\09\09"
module asm "\09.asciz \09\22device_add_software_node\22\09\09\09\09\09"
module asm "__kstrtabns_device_add_software_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_remove_software_node:\09\09\09\09\09"
module asm "\09.asciz \09\22device_remove_software_node\22\09\09\09\09\09"
module asm "__kstrtabns_device_remove_software_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_create_managed_software_node:\09\09\09\09\09"
module asm "\09.asciz \09\22device_create_managed_software_node\22\09\09\09\09\09"
module asm "__kstrtabns_device_create_managed_software_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.swnode = type { %struct.kobject, %struct.fwnode_handle, ptr, i32, %struct.ida, %struct.list_head, %struct.list_head, ptr, i8 }
%struct.property_entry = type { ptr, i32, i8, i32, %union.anon.5 }
%union.anon.5 = type { %union.anon.6 }
%union.anon.6 = type { [1 x i64] }
%struct.software_node = type { ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.software_node_ref_args = type { ptr, i32, [8 x i64] }
%struct.fwnode_reference_args = type { ptr, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, ptr }

@software_node_ops = internal constant %struct.fwnode_operations { ptr @software_node_get, ptr @software_node_put, ptr null, ptr null, ptr @software_node_property_present, ptr @software_node_read_int_array, ptr @software_node_read_string_array, ptr @software_node_get_name, ptr @software_node_get_name_prefix, ptr @software_node_get_parent, ptr @software_node_get_next_child, ptr @software_node_get_named_child_node, ptr @software_node_get_reference_args, ptr @software_node_graph_get_next_endpoint, ptr @software_node_graph_get_remote_endpoint, ptr @software_node_graph_get_port_parent, ptr @software_node_graph_parse_endpoint, ptr null }, align 4
@__kstrtab_is_software_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_is_software_node = external dso_local constant [0 x i8], align 1
@__ksymtab_is_software_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @is_software_node to i32), ptr @__kstrtab_is_software_node, ptr @__kstrtabns_is_software_node }, section "___ksymtab_gpl+is_software_node", align 4
@__kstrtab_to_software_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_to_software_node = external dso_local constant [0 x i8], align 1
@__ksymtab_to_software_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @to_software_node to i32), ptr @__kstrtab_to_software_node, ptr @__kstrtabns_to_software_node }, section "___ksymtab_gpl+to_software_node", align 4
@__kstrtab_software_node_fwnode = external dso_local constant [0 x i8], align 1
@__kstrtabns_software_node_fwnode = external dso_local constant [0 x i8], align 1
@__ksymtab_software_node_fwnode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @software_node_fwnode to i32), ptr @__kstrtab_software_node_fwnode, ptr @__kstrtabns_software_node_fwnode }, section "___ksymtab_gpl+software_node_fwnode", align 4
@__kstrtab_property_entries_dup = external dso_local constant [0 x i8], align 1
@__kstrtabns_property_entries_dup = external dso_local constant [0 x i8], align 1
@__ksymtab_property_entries_dup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @property_entries_dup to i32), ptr @__kstrtab_property_entries_dup, ptr @__kstrtabns_property_entries_dup }, section "___ksymtab_gpl+property_entries_dup", align 4
@__kstrtab_property_entries_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_property_entries_free = external dso_local constant [0 x i8], align 1
@__ksymtab_property_entries_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @property_entries_free to i32), ptr @__kstrtab_property_entries_free, ptr @__kstrtabns_property_entries_free }, section "___ksymtab_gpl+property_entries_free", align 4
@swnode_kset = internal unnamed_addr global ptr null, align 4
@__kstrtab_software_node_find_by_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_software_node_find_by_name = external dso_local constant [0 x i8], align 1
@__ksymtab_software_node_find_by_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @software_node_find_by_name to i32), ptr @__kstrtab_software_node_find_by_name, ptr @__kstrtabns_software_node_find_by_name }, section "___ksymtab_gpl+software_node_find_by_name", align 4
@__kstrtab_software_node_register_nodes = external dso_local constant [0 x i8], align 1
@__kstrtabns_software_node_register_nodes = external dso_local constant [0 x i8], align 1
@__ksymtab_software_node_register_nodes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @software_node_register_nodes to i32), ptr @__kstrtab_software_node_register_nodes, ptr @__kstrtabns_software_node_register_nodes }, section "___ksymtab_gpl+software_node_register_nodes", align 4
@__kstrtab_software_node_unregister_nodes = external dso_local constant [0 x i8], align 1
@__kstrtabns_software_node_unregister_nodes = external dso_local constant [0 x i8], align 1
@__ksymtab_software_node_unregister_nodes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @software_node_unregister_nodes to i32), ptr @__kstrtab_software_node_unregister_nodes, ptr @__kstrtabns_software_node_unregister_nodes }, section "___ksymtab_gpl+software_node_unregister_nodes", align 4
@__kstrtab_software_node_register_node_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_software_node_register_node_group = external dso_local constant [0 x i8], align 1
@__ksymtab_software_node_register_node_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @software_node_register_node_group to i32), ptr @__kstrtab_software_node_register_node_group, ptr @__kstrtabns_software_node_register_node_group }, section "___ksymtab_gpl+software_node_register_node_group", align 4
@__kstrtab_software_node_unregister_node_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_software_node_unregister_node_group = external dso_local constant [0 x i8], align 1
@__ksymtab_software_node_unregister_node_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @software_node_unregister_node_group to i32), ptr @__kstrtab_software_node_unregister_node_group, ptr @__kstrtabns_software_node_unregister_node_group }, section "___ksymtab_gpl+software_node_unregister_node_group", align 4
@__kstrtab_software_node_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_software_node_register = external dso_local constant [0 x i8], align 1
@__ksymtab_software_node_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @software_node_register to i32), ptr @__kstrtab_software_node_register, ptr @__kstrtabns_software_node_register }, section "___ksymtab_gpl+software_node_register", align 4
@__kstrtab_software_node_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_software_node_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_software_node_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @software_node_unregister to i32), ptr @__kstrtab_software_node_unregister, ptr @__kstrtabns_software_node_unregister }, section "___ksymtab_gpl+software_node_unregister", align 4
@__kstrtab_fwnode_create_software_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_create_software_node = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_create_software_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_create_software_node to i32), ptr @__kstrtab_fwnode_create_software_node, ptr @__kstrtabns_fwnode_create_software_node }, section "___ksymtab_gpl+fwnode_create_software_node", align 4
@__kstrtab_fwnode_remove_software_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_remove_software_node = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_remove_software_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_remove_software_node to i32), ptr @__kstrtab_fwnode_remove_software_node, ptr @__kstrtabns_fwnode_remove_software_node }, section "___ksymtab_gpl+fwnode_remove_software_node", align 4
@__kstrtab_device_add_software_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_add_software_node = external dso_local constant [0 x i8], align 1
@__ksymtab_device_add_software_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_add_software_node to i32), ptr @__kstrtab_device_add_software_node, ptr @__kstrtabns_device_add_software_node }, section "___ksymtab_gpl+device_add_software_node", align 4
@__kstrtab_device_remove_software_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_remove_software_node = external dso_local constant [0 x i8], align 1
@__ksymtab_device_remove_software_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_remove_software_node to i32), ptr @__kstrtab_device_remove_software_node, ptr @__kstrtabns_device_remove_software_node }, section "___ksymtab_gpl+device_remove_software_node", align 4
@__kstrtab_device_create_managed_software_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_create_managed_software_node = external dso_local constant [0 x i8], align 1
@__ksymtab_device_create_managed_software_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_create_managed_software_node to i32), ptr @__kstrtab_device_create_managed_software_node, ptr @__kstrtabns_device_create_managed_software_node }, section "___ksymtab_gpl+device_create_managed_software_node", align 4
@.str = private unnamed_addr constant [14 x i8] c"software_node\00", align 1
@__initcall__kmod_swnode__168_1167_software_node_init2 = internal global ptr @software_node_init, section ".initcall2.init", align 4
@swnode_root_ids = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@__exitcall_software_node_exit = internal global ptr @software_node_exit, section ".exitcall.exit", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"port@\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"remote-endpoint\00", align 1
@software_node_type = internal global %struct.kobj_type { ptr @software_node_release, ptr @kobj_sysfs_ops, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"node%d\00", align 1
@kobj_sysfs_ops = external dso_local constant %struct.sysfs_ops, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"software_nodes\00", align 1
@kernel_kobj = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [20 x ptr] [ptr @__exitcall_software_node_exit, ptr @__initcall__kmod_swnode__168_1167_software_node_init2, ptr @__ksymtab_device_add_software_node, ptr @__ksymtab_device_create_managed_software_node, ptr @__ksymtab_device_remove_software_node, ptr @__ksymtab_fwnode_create_software_node, ptr @__ksymtab_fwnode_remove_software_node, ptr @__ksymtab_is_software_node, ptr @__ksymtab_property_entries_dup, ptr @__ksymtab_property_entries_free, ptr @__ksymtab_software_node_find_by_name, ptr @__ksymtab_software_node_fwnode, ptr @__ksymtab_software_node_register, ptr @__ksymtab_software_node_register_node_group, ptr @__ksymtab_software_node_register_nodes, ptr @__ksymtab_software_node_unregister, ptr @__ksymtab_software_node_unregister_node_group, ptr @__ksymtab_software_node_unregister_nodes, ptr @__ksymtab_to_software_node, ptr @software_node_exit], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @is_software_node(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @software_node_ops
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i1 [ false, %1 ], [ %8, %5 ]
  ret i1 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @to_software_node(ptr noundef readonly %0) #1 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ne ptr %7, @software_node_ops
  %9 = getelementptr i8, ptr %0, i32 -36
  %10 = icmp eq ptr %9, null
  %11 = or i1 %10, %8
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = getelementptr i8, ptr %0, i32 32
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %5, %1
  %16 = phi ptr [ %14, %12 ], [ null, %5 ], [ null, %1 ]
  ret ptr %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @software_node_fwnode(ptr noundef readnone %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @swnode_kset, align 4
  %5 = getelementptr inbounds %struct.kset, ptr %4, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %5) #12
  %6 = load ptr, ptr @swnode_kset, align 4
  br label %7

7:                                                ; preds = %11, %3
  %8 = phi ptr [ %6, %3 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %6
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %9, i32 64
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %7

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %9, i32 -4
  br label %17

17:                                               ; preds = %15, %7
  %18 = phi ptr [ %16, %15 ], [ null, %7 ]
  %19 = getelementptr inbounds %struct.kset, ptr %6, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %20 = load i16, ptr %19, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  br label %22

22:                                               ; preds = %17, %1
  %23 = phi ptr [ %18, %17 ], [ null, %1 ]
  %24 = icmp eq ptr %23, null
  %25 = getelementptr inbounds %struct.swnode, ptr %23, i32 0, i32 1
  %26 = select i1 %24, ptr null, ptr %25
  ret ptr %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @property_entries_dup(ptr noundef readonly %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %179, label %3

3:                                                ; preds = %3, %1
  %4 = phi i32 [ %8, %3 ], [ 0, %1 ]
  %5 = getelementptr %struct.property_entry, ptr %0, i32 %4
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  %8 = add i32 %4, 1
  br i1 %7, label %9, label %3

9:                                                ; preds = %3
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 24) #12
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %179, label %12, !prof !12

12:                                               ; preds = %9
  %13 = extractvalue { i32, i1 } %10, 0
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %179, label %16

16:                                               ; preds = %12
  %17 = icmp sgt i32 %4, 0
  br i1 %17, label %18, label %179

18:                                               ; preds = %176, %16
  %19 = phi i32 [ %177, %176 ], [ 0, %16 ]
  %20 = getelementptr %struct.property_entry, ptr %14, i32 %19
  %21 = getelementptr %struct.property_entry, ptr %0, i32 %19
  %22 = getelementptr %struct.property_entry, ptr %0, i32 %19, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr %struct.property_entry, ptr %0, i32 %19, i32 2
  %26 = load i8, ptr %25, align 8, !range !13
  %27 = icmp eq i8 %26, 0
  br i1 %24, label %33, label %28

28:                                               ; preds = %18
  %29 = getelementptr %struct.property_entry, ptr %0, i32 %19, i32 4
  br i1 %27, label %30, label %34

30:                                               ; preds = %28
  %31 = load ptr, ptr %29, align 8
  %32 = getelementptr %struct.property_entry, ptr %0, i32 %19, i32 3
  br label %39

33:                                               ; preds = %18
  br i1 %27, label %133, label %34

34:                                               ; preds = %33, %28
  %35 = phi ptr [ null, %33 ], [ %29, %28 ]
  %36 = getelementptr %struct.property_entry, ptr %0, i32 %19, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 5
  br i1 %38, label %133, label %39

39:                                               ; preds = %34, %30
  %40 = phi ptr [ %32, %30 ], [ %36, %34 ]
  %41 = phi ptr [ %31, %30 ], [ %35, %34 ]
  %42 = icmp ult i32 %23, 9
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = getelementptr %struct.property_entry, ptr %14, i32 %19, i32 4
  %45 = getelementptr %struct.property_entry, ptr %14, i32 %19, i32 2
  store i8 1, ptr %45, align 8
  br label %51

46:                                               ; preds = %39
  %47 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %23, i32 noundef 3264) #13
  %48 = icmp eq ptr %47, null
  br i1 %48, label %133, label %49

49:                                               ; preds = %46
  %50 = getelementptr %struct.property_entry, ptr %14, i32 %19, i32 4
  store ptr %47, ptr %50, align 8
  br label %51

51:                                               ; preds = %49, %43
  %52 = phi ptr [ %44, %43 ], [ %47, %49 ]
  %53 = load i32, ptr %40, align 4
  %54 = icmp eq i32 %53, 4
  %55 = load i32, ptr %22, align 4
  br i1 %54, label %56, label %90

56:                                               ; preds = %51
  %57 = lshr i32 %55, 2
  %58 = icmp ult i32 %55, 4
  br i1 %58, label %91, label %59

59:                                               ; preds = %78, %56
  %60 = phi i1 [ %80, %78 ], [ true, %56 ]
  %61 = phi i32 [ %79, %78 ], [ 0, %56 ]
  %62 = getelementptr ptr, ptr %41, i32 %61
  %63 = load ptr, ptr %62, align 4
  %64 = tail call noalias ptr @kstrdup(ptr noundef %63, i32 noundef 3264) #12
  %65 = getelementptr ptr, ptr %52, i32 %61
  store ptr %64, ptr %65, align 4
  %66 = icmp eq ptr %64, null
  br i1 %66, label %67, label %78

67:                                               ; preds = %59
  %68 = load ptr, ptr %62, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %78, label %70

70:                                               ; preds = %67
  %71 = icmp eq i32 %61, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %72, %70
  %73 = phi i32 [ %74, %72 ], [ %61, %70 ]
  %74 = add nsw i32 %73, -1
  %75 = getelementptr ptr, ptr %52, i32 %74
  %76 = load ptr, ptr %75, align 4
  tail call void @kfree(ptr noundef %76) #12
  %77 = icmp eq i32 %74, 0
  br i1 %77, label %82, label %72

78:                                               ; preds = %67, %59
  %79 = add nuw nsw i32 %61, 1
  %80 = icmp ult i32 %79, %57
  %81 = icmp eq i32 %79, %57
  br i1 %81, label %82, label %59

82:                                               ; preds = %78, %72, %70
  %83 = phi i1 [ %60, %70 ], [ %60, %72 ], [ %80, %78 ]
  br i1 %83, label %84, label %91

84:                                               ; preds = %82
  %85 = getelementptr %struct.property_entry, ptr %14, i32 %19, i32 2
  %86 = load i8, ptr %85, align 8, !range !13
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %133

88:                                               ; preds = %84
  %89 = getelementptr %struct.property_entry, ptr %14, i32 %19, i32 4
  br label %130

90:                                               ; preds = %51
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %52, ptr align 1 %41, i32 %55, i1 false) #12
  br label %91

91:                                               ; preds = %90, %82, %56
  %92 = load i32, ptr %22, align 4
  %93 = getelementptr %struct.property_entry, ptr %14, i32 %19, i32 1
  store i32 %92, ptr %93, align 4
  %94 = load i32, ptr %40, align 4
  %95 = getelementptr %struct.property_entry, ptr %14, i32 %19, i32 3
  store i32 %94, ptr %95, align 4
  %96 = load ptr, ptr %21, align 8
  %97 = tail call noalias ptr @kstrdup(ptr noundef %96, i32 noundef 3264) #12
  store ptr %97, ptr %20, align 8
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %176

99:                                               ; preds = %91
  %100 = load i32, ptr %95, align 4
  %101 = icmp eq i32 %100, 4
  br i1 %101, label %102, label %123

102:                                              ; preds = %99
  %103 = load i32, ptr %93, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %123, label %105

105:                                              ; preds = %102
  %106 = getelementptr %struct.property_entry, ptr %14, i32 %19, i32 2
  %107 = load i8, ptr %106, align 8, !range !13
  %108 = icmp eq i8 %107, 0
  %109 = getelementptr %struct.property_entry, ptr %14, i32 %19, i32 4
  br i1 %108, label %110, label %112

110:                                              ; preds = %105
  %111 = load ptr, ptr %109, align 8
  br label %112

112:                                              ; preds = %110, %105
  %113 = phi ptr [ %111, %110 ], [ %109, %105 ]
  %114 = icmp ult i32 %103, 4
  br i1 %114, label %123, label %115

115:                                              ; preds = %112
  %116 = lshr i32 %103, 2
  br label %117

117:                                              ; preds = %117, %115
  %118 = phi i32 [ %121, %117 ], [ 0, %115 ]
  %119 = getelementptr ptr, ptr %113, i32 %118
  %120 = load ptr, ptr %119, align 4
  tail call void @kfree(ptr noundef %120) #12
  %121 = add nuw nsw i32 %118, 1
  %122 = icmp eq i32 %121, %116
  br i1 %122, label %123, label %117

123:                                              ; preds = %117, %112, %102, %99
  %124 = getelementptr %struct.property_entry, ptr %14, i32 %19, i32 2
  %125 = load i8, ptr %124, align 8, !range !13
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = getelementptr %struct.property_entry, ptr %14, i32 %19, i32 4
  %129 = load ptr, ptr %128, align 8
  tail call void @kfree(ptr noundef %129) #12
  br label %130

130:                                              ; preds = %127, %123, %88
  %131 = phi ptr [ %89, %88 ], [ %20, %123 ], [ %20, %127 ]
  %132 = load ptr, ptr %131, align 8
  tail call void @kfree(ptr noundef %132) #12
  br label %133

133:                                              ; preds = %130, %84, %46, %34, %33
  %134 = phi ptr [ inttoptr (i32 -12 to ptr), %84 ], [ inttoptr (i32 -12 to ptr), %130 ], [ inttoptr (i32 -12 to ptr), %46 ], [ inttoptr (i32 -22 to ptr), %34 ], [ inttoptr (i32 -61 to ptr), %33 ]
  %135 = icmp eq i32 %19, 0
  br i1 %135, label %175, label %136

136:                                              ; preds = %172, %133
  %137 = phi i32 [ %138, %172 ], [ %19, %133 ]
  %138 = add nsw i32 %137, -1
  %139 = getelementptr %struct.property_entry, ptr %14, i32 %138
  %140 = getelementptr %struct.property_entry, ptr %14, i32 %138, i32 3
  %141 = load i32, ptr %140, align 4
  %142 = icmp eq i32 %141, 4
  br i1 %142, label %143, label %165

143:                                              ; preds = %136
  %144 = getelementptr %struct.property_entry, ptr %14, i32 %138, i32 1
  %145 = load i32, ptr %144, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %165, label %147

147:                                              ; preds = %143
  %148 = getelementptr %struct.property_entry, ptr %14, i32 %138, i32 2
  %149 = load i8, ptr %148, align 8, !range !13
  %150 = icmp eq i8 %149, 0
  %151 = getelementptr %struct.property_entry, ptr %14, i32 %138, i32 4
  br i1 %150, label %152, label %154

152:                                              ; preds = %147
  %153 = load ptr, ptr %151, align 8
  br label %154

154:                                              ; preds = %152, %147
  %155 = phi ptr [ %153, %152 ], [ %151, %147 ]
  %156 = icmp ult i32 %145, 4
  br i1 %156, label %165, label %157

157:                                              ; preds = %154
  %158 = lshr i32 %145, 2
  br label %159

159:                                              ; preds = %159, %157
  %160 = phi i32 [ %163, %159 ], [ 0, %157 ]
  %161 = getelementptr ptr, ptr %155, i32 %160
  %162 = load ptr, ptr %161, align 4
  tail call void @kfree(ptr noundef %162) #12
  %163 = add nuw nsw i32 %160, 1
  %164 = icmp eq i32 %163, %158
  br i1 %164, label %165, label %159

165:                                              ; preds = %159, %154, %143, %136
  %166 = getelementptr %struct.property_entry, ptr %14, i32 %138, i32 2
  %167 = load i8, ptr %166, align 8, !range !13
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = getelementptr %struct.property_entry, ptr %14, i32 %138, i32 4
  %171 = load ptr, ptr %170, align 8
  tail call void @kfree(ptr noundef %171) #12
  br label %172

172:                                              ; preds = %169, %165
  %173 = load ptr, ptr %139, align 8
  tail call void @kfree(ptr noundef %173) #12
  %174 = icmp sgt i32 %137, 1
  br i1 %174, label %136, label %175

175:                                              ; preds = %172, %133
  tail call void @kfree(ptr noundef nonnull %14) #12
  br label %179

176:                                              ; preds = %91
  %177 = add nuw nsw i32 %19, 1
  %178 = icmp eq i32 %177, %4
  br i1 %178, label %179, label %18

179:                                              ; preds = %176, %175, %16, %12, %9, %1
  %180 = phi ptr [ %134, %175 ], [ null, %1 ], [ inttoptr (i32 -12 to ptr), %12 ], [ inttoptr (i32 -12 to ptr), %9 ], [ %14, %16 ], [ %14, %176 ]
  ret ptr %180
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @property_entries_free(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %46, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %45, label %6

6:                                                ; preds = %40, %3
  %7 = phi ptr [ %42, %40 ], [ %0, %3 ]
  %8 = getelementptr inbounds %struct.property_entry, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %11, label %33

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.property_entry, ptr %7, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.property_entry, ptr %7, i32 0, i32 2
  %17 = load i8, ptr %16, align 8, !range !13
  %18 = icmp eq i8 %17, 0
  %19 = getelementptr inbounds %struct.property_entry, ptr %7, i32 0, i32 4
  br i1 %18, label %20, label %22

20:                                               ; preds = %15
  %21 = load ptr, ptr %19, align 8
  br label %22

22:                                               ; preds = %20, %15
  %23 = phi ptr [ %21, %20 ], [ %19, %15 ]
  %24 = icmp ult i32 %13, 4
  br i1 %24, label %33, label %25

25:                                               ; preds = %22
  %26 = lshr i32 %13, 2
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i32 [ %31, %27 ], [ 0, %25 ]
  %29 = getelementptr ptr, ptr %23, i32 %28
  %30 = load ptr, ptr %29, align 4
  tail call void @kfree(ptr noundef %30) #12
  %31 = add nuw nsw i32 %28, 1
  %32 = icmp eq i32 %31, %26
  br i1 %32, label %33, label %27

33:                                               ; preds = %27, %22, %11, %6
  %34 = getelementptr inbounds %struct.property_entry, ptr %7, i32 0, i32 2
  %35 = load i8, ptr %34, align 8, !range !13
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.property_entry, ptr %7, i32 0, i32 4
  %39 = load ptr, ptr %38, align 8
  tail call void @kfree(ptr noundef %39) #12
  br label %40

40:                                               ; preds = %37, %33
  %41 = load ptr, ptr %7, align 8
  tail call void @kfree(ptr noundef %41) #12
  %42 = getelementptr %struct.property_entry, ptr %7, i32 1
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %6

45:                                               ; preds = %40, %3
  tail call void @kfree(ptr noundef nonnull %0) #12
  br label %46

46:                                               ; preds = %45, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @software_node_find_by_name(ptr noundef readnone %0, ptr noundef readonly %1) #2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %40, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr @swnode_kset, align 4
  %6 = getelementptr inbounds %struct.kset, ptr %5, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %6) #12
  %7 = load ptr, ptr @swnode_kset, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %30, label %10

10:                                               ; preds = %27, %4
  %11 = phi ptr [ %28, %27 ], [ %8, %4 ]
  %12 = getelementptr i8, ptr %11, i32 64
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.software_node, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = load ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef nonnull %18)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = getelementptr i8, ptr %11, i32 -4
  %25 = tail call ptr @kobject_get(ptr noundef %24) #12
  %26 = load ptr, ptr @swnode_kset, align 4
  br label %30

27:                                               ; preds = %20, %17, %10
  %28 = load ptr, ptr %11, align 4
  %29 = icmp eq ptr %28, %7
  br i1 %29, label %30, label %10

30:                                               ; preds = %27, %23, %4
  %31 = phi ptr [ %26, %23 ], [ %7, %4 ], [ %7, %27 ]
  %32 = phi ptr [ %24, %23 ], [ null, %4 ], [ null, %27 ]
  %33 = getelementptr inbounds %struct.kset, ptr %31, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %34 = load i16, ptr %33, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %36 = icmp eq ptr %32, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.swnode, ptr %32, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  br label %40

40:                                               ; preds = %37, %30, %2
  %41 = phi ptr [ null, %2 ], [ %39, %37 ], [ null, %30 ]
  ret ptr %41
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @software_node_register_nodes(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %83, label %9

4:                                                ; preds = %35
  %5 = add i32 %11, 1
  %6 = getelementptr %struct.software_node, ptr %0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %83, label %9

9:                                                ; preds = %4, %1
  %10 = phi ptr [ %6, %4 ], [ %0, %1 ]
  %11 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %12 = getelementptr %struct.software_node, ptr %0, i32 %11, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %35, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr @swnode_kset, align 4
  %17 = getelementptr inbounds %struct.kset, ptr %16, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %17) #12
  %18 = load ptr, ptr @swnode_kset, align 4
  br label %19

19:                                               ; preds = %23, %15
  %20 = phi ptr [ %18, %15 ], [ %21, %23 ]
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %18
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %21, i32 64
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %13
  br i1 %26, label %27, label %19

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %21, i32 -4
  br label %29

29:                                               ; preds = %27, %19
  %30 = phi ptr [ %28, %27 ], [ null, %19 ]
  %31 = getelementptr inbounds %struct.kset, ptr %18, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %32 = load i16, ptr %31, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %31, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %34 = icmp eq ptr %30, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29, %9
  %36 = tail call i32 @software_node_register(ptr noundef %10)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %4, label %38

38:                                               ; preds = %35, %29
  %39 = phi i32 [ %36, %35 ], [ -22, %29 ]
  br label %40

40:                                               ; preds = %40, %38
  %41 = phi i32 [ 0, %38 ], [ %45, %40 ]
  %42 = getelementptr %struct.software_node, ptr %0, i32 %41
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  %45 = add i32 %41, 1
  br i1 %44, label %46, label %40

46:                                               ; preds = %40
  %47 = icmp eq i32 %41, 0
  br i1 %47, label %83, label %48

48:                                               ; preds = %81, %46
  %49 = phi i32 [ %50, %81 ], [ %41, %46 ]
  %50 = add i32 %49, -1
  %51 = getelementptr %struct.software_node, ptr %0, i32 %50
  %52 = icmp eq ptr %51, null
  br i1 %52, label %81, label %53

53:                                               ; preds = %48
  %54 = load ptr, ptr @swnode_kset, align 4
  %55 = getelementptr inbounds %struct.kset, ptr %54, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %55) #12
  %56 = load ptr, ptr @swnode_kset, align 4
  br label %57

57:                                               ; preds = %61, %53
  %58 = phi ptr [ %56, %53 ], [ %59, %61 ]
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, %56
  br i1 %60, label %67, label %61

61:                                               ; preds = %57
  %62 = getelementptr i8, ptr %59, i32 64
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, %51
  br i1 %64, label %65, label %57

65:                                               ; preds = %61
  %66 = getelementptr i8, ptr %59, i32 -4
  br label %67

67:                                               ; preds = %65, %57
  %68 = phi ptr [ %66, %65 ], [ null, %57 ]
  %69 = getelementptr inbounds %struct.kset, ptr %56, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %70 = load i16, ptr %69, align 4
  %71 = add i16 %70, 1
  store i16 %71, ptr %69, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %72 = icmp eq ptr %68, null
  %73 = getelementptr inbounds %struct.swnode, ptr %68, i32 0, i32 1
  %74 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  %75 = select i1 %72, i1 true, i1 %74
  br i1 %75, label %81, label %76

76:                                               ; preds = %67
  %77 = getelementptr inbounds %struct.swnode, ptr %68, i32 0, i32 1, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, @software_node_ops
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  tail call void @kobject_put(ptr noundef nonnull %68) #12
  br label %81

81:                                               ; preds = %80, %76, %67, %48
  %82 = icmp eq i32 %50, 0
  br i1 %82, label %83, label %48

83:                                               ; preds = %81, %46, %4, %1
  %84 = phi i32 [ %39, %46 ], [ 0, %1 ], [ %39, %81 ], [ 0, %4 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @software_node_register(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.software_node, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @swnode_kset, align 4
  %7 = getelementptr inbounds %struct.kset, ptr %6, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %7) #12
  %8 = load ptr, ptr @swnode_kset, align 4
  br label %9

9:                                                ; preds = %13, %5
  %10 = phi ptr [ %8, %5 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %8
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %11, i32 64
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %3
  br i1 %16, label %17, label %9

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %11, i32 -4
  br label %19

19:                                               ; preds = %17, %9
  %20 = phi ptr [ %18, %17 ], [ null, %9 ]
  %21 = getelementptr inbounds %struct.kset, ptr %8, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %22 = load i16, ptr %21, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  br label %24

24:                                               ; preds = %19, %1
  %25 = phi ptr [ %20, %19 ], [ null, %1 ]
  %26 = icmp eq ptr %0, null
  br i1 %26, label %49, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr @swnode_kset, align 4
  %29 = getelementptr inbounds %struct.kset, ptr %28, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %29) #12
  %30 = load ptr, ptr @swnode_kset, align 4
  br label %31

31:                                               ; preds = %35, %27
  %32 = phi ptr [ %30, %27 ], [ %33, %35 ]
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %30
  br i1 %34, label %45, label %35

35:                                               ; preds = %31
  %36 = getelementptr i8, ptr %33, i32 64
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %0
  br i1 %38, label %39, label %31

39:                                               ; preds = %35
  %40 = getelementptr i8, ptr %33, i32 -4
  %41 = icmp eq ptr %40, null
  %42 = getelementptr inbounds %struct.kset, ptr %30, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %43 = load i16, ptr %42, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %42, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  br i1 %41, label %49, label %59

45:                                               ; preds = %31
  %46 = getelementptr inbounds %struct.kset, ptr %30, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %47 = load i16, ptr %46, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %46, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  br label %49

49:                                               ; preds = %45, %39, %24
  %50 = load ptr, ptr %2, align 4
  %51 = icmp eq ptr %50, null
  %52 = icmp ne ptr %25, null
  %53 = select i1 %51, i1 true, i1 %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = tail call fastcc ptr @swnode_register(ptr noundef %0, ptr noundef %25, i32 noundef 0)
  %56 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  %57 = ptrtoint ptr %55 to i32
  %58 = select i1 %56, i32 %57, i32 0
  br label %59

59:                                               ; preds = %54, %49, %39
  %60 = phi i32 [ %58, %54 ], [ -17, %39 ], [ -22, %49 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @software_node_unregister_nodes(ptr noundef readonly %0) #2 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i32 [ 0, %1 ], [ %7, %2 ]
  %4 = getelementptr %struct.software_node, ptr %0, i32 %3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  %7 = add i32 %3, 1
  br i1 %6, label %8, label %2

8:                                                ; preds = %2
  %9 = icmp eq i32 %3, 0
  br i1 %9, label %45, label %10

10:                                               ; preds = %43, %8
  %11 = phi i32 [ %12, %43 ], [ %3, %8 ]
  %12 = add i32 %11, -1
  %13 = getelementptr %struct.software_node, ptr %0, i32 %12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %43, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr @swnode_kset, align 4
  %17 = getelementptr inbounds %struct.kset, ptr %16, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %17) #12
  %18 = load ptr, ptr @swnode_kset, align 4
  br label %19

19:                                               ; preds = %23, %15
  %20 = phi ptr [ %18, %15 ], [ %21, %23 ]
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %18
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %21, i32 64
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %13
  br i1 %26, label %27, label %19

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %21, i32 -4
  br label %29

29:                                               ; preds = %27, %19
  %30 = phi ptr [ %28, %27 ], [ null, %19 ]
  %31 = getelementptr inbounds %struct.kset, ptr %18, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %32 = load i16, ptr %31, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %31, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %34 = icmp eq ptr %30, null
  %35 = getelementptr inbounds %struct.swnode, ptr %30, i32 0, i32 1
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  %37 = select i1 %34, i1 true, i1 %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.swnode, ptr %30, i32 0, i32 1, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, @software_node_ops
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  tail call void @kobject_put(ptr noundef nonnull %30) #12
  br label %43

43:                                               ; preds = %42, %38, %29, %10
  %44 = icmp eq i32 %12, 0
  br i1 %44, label %45, label %10

45:                                               ; preds = %43, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @software_node_unregister(ptr noundef readnone %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %33, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @swnode_kset, align 4
  %5 = getelementptr inbounds %struct.kset, ptr %4, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %5) #12
  %6 = load ptr, ptr @swnode_kset, align 4
  br label %7

7:                                                ; preds = %11, %3
  %8 = phi ptr [ %6, %3 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %6
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %9, i32 64
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %7

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %9, i32 -4
  br label %17

17:                                               ; preds = %15, %7
  %18 = phi ptr [ %16, %15 ], [ null, %7 ]
  %19 = getelementptr inbounds %struct.kset, ptr %6, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %20 = load i16, ptr %19, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %22 = icmp eq ptr %18, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.swnode, ptr %18, i32 0, i32 1
  %25 = icmp eq ptr %24, null
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  %27 = or i1 %25, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.swnode, ptr %18, i32 0, i32 1, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, @software_node_ops
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  tail call void @kobject_put(ptr noundef nonnull %18) #12
  br label %33

33:                                               ; preds = %32, %28, %23, %17, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @software_node_register_node_group(ptr noundef readonly %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %60, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %60, label %11

6:                                                ; preds = %11
  %7 = add i32 %13, 1
  %8 = getelementptr ptr, ptr %0, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %60, label %11

11:                                               ; preds = %6, %3
  %12 = phi ptr [ %9, %6 ], [ %4, %3 ]
  %13 = phi i32 [ %7, %6 ], [ 0, %3 ]
  %14 = tail call i32 @software_node_register(ptr noundef nonnull %12)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %6, label %16

16:                                               ; preds = %16, %11
  %17 = phi i32 [ %21, %16 ], [ 0, %11 ]
  %18 = getelementptr ptr, ptr %0, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  %21 = add i32 %17, 1
  br i1 %20, label %22, label %16

22:                                               ; preds = %16
  %23 = icmp eq i32 %17, 0
  br i1 %23, label %60, label %24

24:                                               ; preds = %58, %22
  %25 = phi i32 [ %26, %58 ], [ %17, %22 ]
  %26 = add i32 %25, -1
  %27 = getelementptr ptr, ptr %0, i32 %26
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %58, label %30

30:                                               ; preds = %24
  %31 = load ptr, ptr @swnode_kset, align 4
  %32 = getelementptr inbounds %struct.kset, ptr %31, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %32) #12
  %33 = load ptr, ptr @swnode_kset, align 4
  br label %34

34:                                               ; preds = %38, %30
  %35 = phi ptr [ %33, %30 ], [ %36, %38 ]
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %33
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %36, i32 64
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %28
  br i1 %41, label %42, label %34

42:                                               ; preds = %38
  %43 = getelementptr i8, ptr %36, i32 -4
  br label %44

44:                                               ; preds = %42, %34
  %45 = phi ptr [ %43, %42 ], [ null, %34 ]
  %46 = getelementptr inbounds %struct.kset, ptr %33, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %47 = load i16, ptr %46, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %46, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %49 = icmp eq ptr %45, null
  %50 = getelementptr inbounds %struct.swnode, ptr %45, i32 0, i32 1
  %51 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  %52 = select i1 %49, i1 true, i1 %51
  br i1 %52, label %58, label %53

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.swnode, ptr %45, i32 0, i32 1, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, @software_node_ops
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  tail call void @kobject_put(ptr noundef nonnull %45) #12
  br label %58

58:                                               ; preds = %57, %53, %44, %24
  %59 = icmp eq i32 %26, 0
  br i1 %59, label %60, label %24

60:                                               ; preds = %58, %22, %6, %3, %1
  %61 = phi i32 [ 0, %1 ], [ %14, %22 ], [ 0, %3 ], [ %14, %58 ], [ 0, %6 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @software_node_unregister_node_group(ptr noundef readonly %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %47, label %3

3:                                                ; preds = %3, %1
  %4 = phi i32 [ %8, %3 ], [ 0, %1 ]
  %5 = getelementptr ptr, ptr %0, i32 %4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = add i32 %4, 1
  br i1 %7, label %9, label %3

9:                                                ; preds = %3
  %10 = icmp eq i32 %4, 0
  br i1 %10, label %47, label %11

11:                                               ; preds = %45, %9
  %12 = phi i32 [ %13, %45 ], [ %4, %9 ]
  %13 = add i32 %12, -1
  %14 = getelementptr ptr, ptr %0, i32 %13
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %45, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr @swnode_kset, align 4
  %19 = getelementptr inbounds %struct.kset, ptr %18, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %19) #12
  %20 = load ptr, ptr @swnode_kset, align 4
  br label %21

21:                                               ; preds = %25, %17
  %22 = phi ptr [ %20, %17 ], [ %23, %25 ]
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %20
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %23, i32 64
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %15
  br i1 %28, label %29, label %21

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %23, i32 -4
  br label %31

31:                                               ; preds = %29, %21
  %32 = phi ptr [ %30, %29 ], [ null, %21 ]
  %33 = getelementptr inbounds %struct.kset, ptr %20, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %34 = load i16, ptr %33, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %36 = icmp eq ptr %32, null
  %37 = getelementptr inbounds %struct.swnode, ptr %32, i32 0, i32 1
  %38 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.swnode, ptr %32, i32 0, i32 1, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, @software_node_ops
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  tail call void @kobject_put(ptr noundef nonnull %32) #12
  br label %45

45:                                               ; preds = %44, %40, %31, %11
  %46 = icmp eq i32 %13, 0
  br i1 %46, label %47, label %11

47:                                               ; preds = %45, %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @swnode_register(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 112) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %58, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %1, null
  %9 = getelementptr inbounds %struct.swnode, ptr %1, i32 0, i32 4
  %10 = select i1 %8, ptr @swnode_root_ids, ptr %9
  %11 = tail call i32 @ida_alloc_range(ptr noundef %10, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #12
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  tail call void @kfree(ptr noundef nonnull %5) #12
  %14 = inttoptr i32 %11 to ptr
  br label %58

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.swnode, ptr %5, i32 0, i32 3
  store i32 %11, ptr %16, align 8
  %17 = getelementptr inbounds %struct.swnode, ptr %5, i32 0, i32 2
  store ptr %0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.swnode, ptr %5, i32 0, i32 7
  store ptr %1, ptr %18, align 8
  %19 = load ptr, ptr @swnode_kset, align 4
  %20 = getelementptr inbounds %struct.kobject, ptr %5, i32 0, i32 3
  store ptr %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.swnode, ptr %5, i32 0, i32 1
  %22 = getelementptr inbounds %struct.swnode, ptr %5, i32 0, i32 1, i32 1
  store ptr @software_node_ops, ptr %22, align 8
  %23 = getelementptr inbounds %struct.swnode, ptr %5, i32 0, i32 1, i32 4
  store volatile ptr %23, ptr %23, align 8
  %24 = getelementptr inbounds %struct.swnode, ptr %5, i32 0, i32 1, i32 4, i32 1
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.swnode, ptr %5, i32 0, i32 1, i32 3
  store volatile ptr %25, ptr %25, align 8
  %26 = getelementptr inbounds %struct.swnode, ptr %5, i32 0, i32 1, i32 3, i32 1
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.swnode, ptr %5, i32 0, i32 4
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.swnode, ptr %5, i32 0, i32 4, i32 0, i32 1
  store i32 33554437, ptr %28, align 8
  %29 = getelementptr inbounds %struct.swnode, ptr %5, i32 0, i32 4, i32 0, i32 2
  store ptr null, ptr %29, align 4
  %30 = getelementptr inbounds %struct.swnode, ptr %5, i32 0, i32 5
  store volatile ptr %30, ptr %30, align 8
  %31 = getelementptr inbounds %struct.swnode, ptr %5, i32 0, i32 5, i32 1
  store ptr %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.swnode, ptr %5, i32 0, i32 6
  store volatile ptr %32, ptr %32, align 8
  %33 = getelementptr inbounds %struct.swnode, ptr %5, i32 0, i32 6, i32 1
  store ptr %32, ptr %33, align 4
  %34 = load ptr, ptr %0, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %15
  %37 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %5, ptr noundef nonnull @software_node_type, ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull %34) #12
  br label %40

38:                                               ; preds = %15
  %39 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %5, ptr noundef nonnull @software_node_type, ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef %11) #12
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  tail call void @kobject_put(ptr noundef nonnull %5) #12
  %44 = inttoptr i32 %41 to ptr
  br label %58

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.swnode, ptr %5, i32 0, i32 8
  %47 = trunc i32 %2 to i8
  %48 = load i8, ptr %46, align 4
  %49 = and i8 %47, 1
  %50 = and i8 %48, -2
  %51 = or i8 %50, %49
  store i8 %51, ptr %46, align 4
  br i1 %8, label %56, label %52

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.swnode, ptr %1, i32 0, i32 6
  %54 = getelementptr inbounds %struct.swnode, ptr %1, i32 0, i32 6, i32 1
  %55 = load ptr, ptr %54, align 4
  store ptr %30, ptr %54, align 4
  store ptr %53, ptr %30, align 8
  store ptr %55, ptr %31, align 4
  store volatile ptr %30, ptr %55, align 4
  br label %56

56:                                               ; preds = %52, %45
  %57 = tail call i32 @kobject_uevent(ptr noundef nonnull %5, i32 noundef 0) #12
  br label %58

58:                                               ; preds = %56, %43, %13, %3
  %59 = phi ptr [ %14, %13 ], [ %44, %43 ], [ %21, %56 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fwnode_remove_software_node(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ne ptr %7, @software_node_ops
  %9 = getelementptr i8, ptr %0, i32 -36
  %10 = icmp eq ptr %9, null
  %11 = or i1 %10, %8
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void @kobject_put(ptr noundef nonnull %9) #12
  br label %13

13:                                               ; preds = %12, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fwnode_create_software_node(ptr noundef %0, ptr noundef %1) #2 {
  %3 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %39, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.fwnode_handle, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ne ptr %8, @software_node_ops
  %10 = getelementptr i8, ptr %1, i32 -36
  %11 = icmp eq ptr %10, null
  %12 = or i1 %9, %11
  br i1 %12, label %39, label %13

13:                                               ; preds = %6, %4
  %14 = phi ptr [ %10, %6 ], [ null, %4 ]
  %15 = tail call ptr @property_entries_dup(ptr noundef %0) #12
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 12) #14
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  tail call void @property_entries_free(ptr noundef %15) #12
  br label %39

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.software_node, ptr %19, i32 0, i32 2
  store ptr %15, ptr %23, align 8
  br label %24

24:                                               ; preds = %22, %13
  %25 = phi ptr [ %19, %22 ], [ %15, %13 ]
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %39, label %27

27:                                               ; preds = %24
  br i1 %5, label %31, label %28

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.swnode, ptr %14, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  br label %31

31:                                               ; preds = %28, %27
  %32 = phi ptr [ %30, %28 ], [ null, %27 ]
  %33 = getelementptr inbounds %struct.software_node, ptr %25, i32 0, i32 1
  store ptr %32, ptr %33, align 4
  %34 = tail call fastcc ptr @swnode_register(ptr noundef %25, ptr noundef %14, i32 noundef 1)
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.software_node, ptr %25, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  tail call void @property_entries_free(ptr noundef %38) #12
  tail call void @kfree(ptr noundef %25) #12
  br label %39

39:                                               ; preds = %36, %31, %24, %21, %6, %2
  %40 = phi ptr [ %34, %36 ], [ %34, %31 ], [ %1, %2 ], [ inttoptr (i32 -22 to ptr), %6 ], [ inttoptr (i32 -12 to ptr), %21 ], [ %25, %24 ]
  ret ptr %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_add_software_node(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call ptr @dev_fwnode(ptr noundef %0) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %2
  %6 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %11, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.fwnode_handle, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, @software_node_ops
  br i1 %10, label %13, label %11

11:                                               ; preds = %7, %5
  %12 = load ptr, ptr %3, align 4
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %3, %7 ], [ %12, %11 ]
  %15 = icmp eq ptr %14, null
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  %17 = or i1 %15, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.fwnode_handle, ptr %14, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp ne ptr %20, @software_node_ops
  %22 = getelementptr i8, ptr %14, i32 -36
  %23 = icmp eq ptr %22, null
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %25, label %82

25:                                               ; preds = %18, %13, %2
  %26 = icmp eq ptr %1, null
  br i1 %26, label %52, label %27

27:                                               ; preds = %25
  %28 = load ptr, ptr @swnode_kset, align 4
  %29 = getelementptr inbounds %struct.kset, ptr %28, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %29) #12
  %30 = load ptr, ptr @swnode_kset, align 4
  br label %31

31:                                               ; preds = %35, %27
  %32 = phi ptr [ %30, %27 ], [ %33, %35 ]
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %30
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = getelementptr i8, ptr %33, i32 64
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %1
  br i1 %38, label %39, label %31

39:                                               ; preds = %35
  %40 = getelementptr i8, ptr %33, i32 -4
  br label %41

41:                                               ; preds = %39, %31
  %42 = phi ptr [ %40, %39 ], [ null, %31 ]
  %43 = getelementptr inbounds %struct.kset, ptr %30, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %44 = load i16, ptr %43, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr %43, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %46 = icmp eq ptr %42, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %41
  %48 = tail call ptr @kobject_get(ptr noundef nonnull %42) #12
  br label %74

49:                                               ; preds = %41
  %50 = tail call i32 @software_node_register(ptr noundef nonnull %1)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %82

52:                                               ; preds = %25
  %53 = tail call i32 @software_node_register(ptr noundef null)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %74, label %82

55:                                               ; preds = %49
  %56 = load ptr, ptr @swnode_kset, align 4
  %57 = getelementptr inbounds %struct.kset, ptr %56, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %57) #12
  %58 = load ptr, ptr @swnode_kset, align 4
  br label %59

59:                                               ; preds = %63, %55
  %60 = phi ptr [ %58, %55 ], [ %61, %63 ]
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, %58
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = getelementptr i8, ptr %61, i32 64
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, %1
  br i1 %66, label %67, label %59

67:                                               ; preds = %63
  %68 = getelementptr i8, ptr %61, i32 -4
  br label %69

69:                                               ; preds = %67, %59
  %70 = phi ptr [ %68, %67 ], [ null, %59 ]
  %71 = getelementptr inbounds %struct.kset, ptr %58, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %72 = load i16, ptr %71, align 4
  %73 = add i16 %72, 1
  store i16 %73, ptr %71, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  br label %74

74:                                               ; preds = %69, %52, %47
  %75 = phi ptr [ %42, %47 ], [ %70, %69 ], [ null, %52 ]
  %76 = getelementptr inbounds %struct.swnode, ptr %75, i32 0, i32 1
  tail call void @set_secondary_fwnode(ptr noundef %0, ptr noundef %76) #12
  %77 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 7
  %78 = load i8, ptr %77, align 8
  %79 = and i8 %78, 2
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %74
  tail call void @software_node_notify(ptr noundef %0)
  br label %82

82:                                               ; preds = %81, %74, %52, %49, %18
  %83 = phi i32 [ %50, %49 ], [ 0, %81 ], [ 0, %74 ], [ %53, %52 ], [ -16, %18 ]
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_secondary_fwnode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @software_node_notify(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @dev_fwnode(ptr noundef %0) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %40, label %4

4:                                                ; preds = %1
  %5 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.fwnode_handle, ptr %2, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @software_node_ops
  br i1 %9, label %12, label %10

10:                                               ; preds = %6, %4
  %11 = load ptr, ptr %2, align 4
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi ptr [ %2, %6 ], [ %11, %10 ]
  %14 = icmp eq ptr %13, null
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  %16 = or i1 %14, %15
  br i1 %16, label %40, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.fwnode_handle, ptr %13, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp ne ptr %19, @software_node_ops
  %21 = getelementptr i8, ptr %13, i32 -36
  %22 = icmp eq ptr %21, null
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %40, label %24

24:                                               ; preds = %17
  %25 = tail call i32 @sysfs_create_link(ptr noundef %0, ptr noundef nonnull %21, ptr noundef nonnull @.str) #12
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load ptr, ptr %0, align 4
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi ptr [ %32, %31 ], [ %29, %27 ]
  %35 = tail call i32 @sysfs_create_link(ptr noundef nonnull %21, ptr noundef %0, ptr noundef %34) #12
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @sysfs_remove_link(ptr noundef %0, ptr noundef nonnull @.str) #12
  br label %40

38:                                               ; preds = %33
  %39 = tail call ptr @kobject_get(ptr noundef nonnull %21) #12
  br label %40

40:                                               ; preds = %38, %37, %24, %17, %12, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_remove_software_node(ptr noundef %0) #2 {
  %2 = tail call ptr @dev_fwnode(ptr noundef %0) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %31, label %4

4:                                                ; preds = %1
  %5 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.fwnode_handle, ptr %2, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @software_node_ops
  br i1 %9, label %12, label %10

10:                                               ; preds = %6, %4
  %11 = load ptr, ptr %2, align 4
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi ptr [ %2, %6 ], [ %11, %10 ]
  %14 = icmp eq ptr %13, null
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  %16 = or i1 %14, %15
  br i1 %16, label %31, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.fwnode_handle, ptr %13, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp ne ptr %19, @software_node_ops
  %21 = getelementptr i8, ptr %13, i32 -36
  %22 = icmp eq ptr %21, null
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 7
  %26 = load i8, ptr %25, align 8
  %27 = and i8 %26, 2
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  tail call void @software_node_notify_remove(ptr noundef %0)
  br label %30

30:                                               ; preds = %29, %24
  tail call void @set_secondary_fwnode(ptr noundef %0, ptr noundef null) #12
  tail call void @kobject_put(ptr noundef nonnull %21) #12
  br label %31

31:                                               ; preds = %30, %17, %12, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @software_node_notify_remove(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @dev_fwnode(ptr noundef %0) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %37, label %4

4:                                                ; preds = %1
  %5 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.fwnode_handle, ptr %2, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @software_node_ops
  br i1 %9, label %12, label %10

10:                                               ; preds = %6, %4
  %11 = load ptr, ptr %2, align 4
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi ptr [ %2, %6 ], [ %11, %10 ]
  %14 = icmp eq ptr %13, null
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  %16 = or i1 %14, %15
  br i1 %16, label %37, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.fwnode_handle, ptr %13, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp ne ptr %19, @software_node_ops
  %21 = getelementptr i8, ptr %13, i32 -36
  %22 = icmp eq ptr %21, null
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %37, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load ptr, ptr %0, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi ptr [ %29, %28 ], [ %26, %24 ]
  tail call void @sysfs_remove_link(ptr noundef nonnull %21, ptr noundef %31) #12
  tail call void @sysfs_remove_link(ptr noundef %0, ptr noundef nonnull @.str) #12
  tail call void @kobject_put(ptr noundef nonnull %21) #12
  %32 = getelementptr i8, ptr %13, i32 72
  %33 = load i8, ptr %32, align 4
  %34 = and i8 %33, 2
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  tail call void @set_secondary_fwnode(ptr noundef %0, ptr noundef null) #12
  tail call void @kobject_put(ptr noundef nonnull %21) #12
  br label %37

37:                                               ; preds = %36, %30, %17, %12, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_create_managed_software_node(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) #2 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr @swnode_kset, align 4
  %7 = getelementptr inbounds %struct.kset, ptr %6, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %7) #12
  %8 = load ptr, ptr @swnode_kset, align 4
  br label %9

9:                                                ; preds = %13, %5
  %10 = phi ptr [ %8, %5 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %8
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %11, i32 64
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %2
  br i1 %16, label %17, label %9

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %11, i32 -4
  br label %19

19:                                               ; preds = %17, %9
  %20 = phi ptr [ %18, %17 ], [ null, %9 ]
  %21 = getelementptr inbounds %struct.kset, ptr %8, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %22 = load i16, ptr %21, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %24 = icmp eq ptr %20, null
  %25 = getelementptr inbounds %struct.swnode, ptr %20, i32 0, i32 1
  %26 = icmp eq ptr %25, null
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %52, label %28

28:                                               ; preds = %19, %3
  %29 = phi ptr [ %25, %19 ], [ null, %3 ]
  %30 = tail call ptr @fwnode_create_software_node(ptr noundef %1, ptr noundef %29)
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = ptrtoint ptr %30 to i32
  br label %52

34:                                               ; preds = %28
  %35 = icmp eq ptr %30, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.fwnode_handle, ptr %30, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, @software_node_ops
  %40 = getelementptr i8, ptr %30, i32 -36
  %41 = select i1 %39, ptr %40, ptr null
  br label %42

42:                                               ; preds = %36, %34
  %43 = phi ptr [ null, %34 ], [ %41, %36 ]
  %44 = getelementptr inbounds %struct.swnode, ptr %43, i32 0, i32 8
  %45 = load i8, ptr %44, align 4
  %46 = or i8 %45, 2
  store i8 %46, ptr %44, align 4
  tail call void @set_secondary_fwnode(ptr noundef %0, ptr noundef %30) #12
  %47 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 7
  %48 = load i8, ptr %47, align 8
  %49 = and i8 %48, 2
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %42
  tail call void @software_node_notify(ptr noundef %0)
  br label %52

52:                                               ; preds = %51, %42, %32, %19
  %53 = phi i32 [ %33, %32 ], [ -22, %19 ], [ 0, %51 ], [ 0, %42 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @software_node_init() #5 section ".init.text" {
  %1 = load ptr, ptr @kernel_kobj, align 4
  %2 = tail call ptr @kset_create_and_add(ptr noundef nonnull @.str.8, ptr noundef null, ptr noundef %1) #12
  store ptr %2, ptr @swnode_kset, align 4
  %3 = icmp eq ptr %2, null
  %4 = select i1 %3, i32 -12, i32 0
  ret i32 %4
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @software_node_exit() #5 section ".exit.text" {
  tail call void @ida_destroy(ptr noundef nonnull @swnode_root_ids) #12
  %1 = load ptr, ptr @swnode_kset, align 4
  tail call void @kset_unregister(ptr noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kset_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @software_node_get(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @software_node_ops
  %9 = getelementptr i8, ptr %0, i32 -36
  %10 = select i1 %8, ptr %9, ptr null
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi ptr [ null, %1 ], [ %10, %5 ]
  %13 = tail call ptr @kobject_get(ptr noundef %12) #12
  %14 = getelementptr inbounds %struct.swnode, ptr %12, i32 0, i32 1
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @software_node_put(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @software_node_ops
  %9 = getelementptr i8, ptr %0, i32 -36
  %10 = select i1 %8, ptr %9, ptr null
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi ptr [ null, %1 ], [ %10, %5 ]
  tail call void @kobject_put(ptr noundef %12) #12
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal zeroext i1 @software_node_property_present(ptr noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @software_node_ops
  %10 = getelementptr i8, ptr %0, i32 -36
  %11 = select i1 %9, ptr %10, ptr null
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi ptr [ null, %2 ], [ %11, %6 ]
  %14 = getelementptr inbounds %struct.swnode, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.software_node, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr %17, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %27, %19
  %23 = phi ptr [ %29, %27 ], [ %20, %19 ]
  %24 = phi ptr [ %28, %27 ], [ %17, %19 ]
  %25 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull %23) #12
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = getelementptr %struct.property_entry, ptr %24, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %22

31:                                               ; preds = %27, %22, %19, %12
  %32 = phi ptr [ null, %12 ], [ null, %19 ], [ null, %27 ], [ %24, %22 ]
  %33 = icmp ne ptr %32, null
  ret i1 %33
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @software_node_read_int_array(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #11 {
  %6 = icmp eq ptr %0, null
  %7 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %8 = or i1 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @software_node_ops
  %13 = getelementptr i8, ptr %0, i32 -36
  %14 = select i1 %12, ptr %13, ptr null
  br label %15

15:                                               ; preds = %9, %5
  %16 = phi ptr [ null, %5 ], [ %14, %9 ]
  %17 = getelementptr inbounds %struct.swnode, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.software_node, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = tail call fastcc i32 @property_entry_read_int_array(ptr noundef %20, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  ret i32 %21
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @software_node_read_string_array(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2, i32 noundef %3) #11 {
  %5 = icmp eq ptr %0, null
  %6 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %7 = or i1 %5, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, @software_node_ops
  %12 = getelementptr i8, ptr %0, i32 -36
  %13 = select i1 %11, ptr %12, ptr null
  br label %14

14:                                               ; preds = %8, %4
  %15 = phi ptr [ null, %4 ], [ %13, %8 ]
  %16 = getelementptr inbounds %struct.swnode, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.software_node, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %76, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr %19, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %76, label %24

24:                                               ; preds = %29, %21
  %25 = phi ptr [ %31, %29 ], [ %22, %21 ]
  %26 = phi ptr [ %30, %29 ], [ %19, %21 ]
  %27 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull %25) #12
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = getelementptr %struct.property_entry, ptr %26, i32 1
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %76, label %24

33:                                               ; preds = %24
  %34 = icmp eq ptr %26, null
  br i1 %34, label %76, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.property_entry, ptr %26, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %37, 2
  %39 = icmp eq ptr %2, null
  br i1 %39, label %76, label %40

40:                                               ; preds = %35
  %41 = tail call i32 @llvm.umin.i32(i32 %38, i32 %3) #12
  %42 = shl nuw i32 %41, 2
  br label %43

43:                                               ; preds = %48, %40
  %44 = phi ptr [ %50, %48 ], [ %22, %40 ]
  %45 = phi ptr [ %49, %48 ], [ %19, %40 ]
  %46 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull %44) #12
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = getelementptr %struct.property_entry, ptr %45, i32 1
  %50 = load ptr, ptr %49, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %72, label %43

52:                                               ; preds = %43
  %53 = icmp eq ptr %45, null
  br i1 %53, label %72, label %54

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.property_entry, ptr %45, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.property_entry, ptr %45, i32 0, i32 2
  %60 = load i8, ptr %59, align 8, !range !13
  %61 = icmp eq i8 %60, 0
  %62 = getelementptr inbounds %struct.property_entry, ptr %45, i32 0, i32 4
  br i1 %61, label %63, label %65

63:                                               ; preds = %58
  %64 = load ptr, ptr %62, align 8
  br label %65

65:                                               ; preds = %63, %58
  %66 = phi ptr [ %64, %63 ], [ %62, %58 ]
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = icmp ult i32 %56, %42
  br i1 %69, label %72, label %70

70:                                               ; preds = %68
  %71 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  br i1 %71, label %72, label %75

72:                                               ; preds = %70, %68, %65, %54, %52, %48
  %73 = phi ptr [ %66, %70 ], [ inttoptr (i32 -61 to ptr), %54 ], [ inttoptr (i32 -61 to ptr), %65 ], [ inttoptr (i32 -22 to ptr), %52 ], [ inttoptr (i32 -75 to ptr), %68 ], [ inttoptr (i32 -22 to ptr), %48 ]
  %74 = ptrtoint ptr %73 to i32
  br label %76

75:                                               ; preds = %70
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %2, ptr nonnull align 1 %66, i32 %42, i1 false) #12
  br label %76

76:                                               ; preds = %75, %72, %35, %33, %29, %21, %14
  %77 = phi i32 [ %74, %72 ], [ %41, %75 ], [ %38, %35 ], [ -22, %33 ], [ -22, %14 ], [ -22, %21 ], [ -22, %29 ]
  ret i32 %77
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @software_node_get_name(ptr noundef readonly %0) #1 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @software_node_ops
  %9 = getelementptr i8, ptr %0, i32 -36
  %10 = select i1 %8, ptr %9, ptr null
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi ptr [ null, %1 ], [ %10, %5 ]
  %13 = load ptr, ptr %12, align 4
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @software_node_get_name_prefix(ptr noundef %0) #2 {
  %2 = tail call ptr @fwnode_get_parent(ptr noundef %0) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %16, label %6

6:                                                ; preds = %11, %4
  %7 = phi ptr [ %12, %11 ], [ %2, %4 ]
  %8 = getelementptr inbounds %struct.fwnode_handle, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, @software_node_ops
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = tail call ptr @fwnode_get_next_parent(ptr noundef nonnull %7) #12
  %13 = icmp eq ptr %12, null
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  %15 = or i1 %13, %14
  br i1 %15, label %16, label %6

16:                                               ; preds = %11, %6, %4
  %17 = phi ptr [ %2, %4 ], [ %12, %11 ], [ %7, %6 ]
  %18 = tail call ptr @fwnode_get_name_prefix(ptr noundef %17) #12
  tail call void @fwnode_handle_put(ptr noundef %17) #12
  %19 = icmp eq ptr %18, null
  %20 = select i1 %19, ptr @.str.2, ptr %18
  br label %21

21:                                               ; preds = %16, %1
  %22 = phi ptr [ %20, %16 ], [ @.str.1, %1 ]
  ret ptr %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @software_node_get_parent(ptr noundef readonly %0) #2 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ne ptr %7, @software_node_ops
  %9 = getelementptr i8, ptr %0, i32 -36
  %10 = icmp eq ptr %9, null
  %11 = or i1 %10, %8
  br i1 %11, label %19, label %12

12:                                               ; preds = %5
  %13 = getelementptr i8, ptr %0, i32 68
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.swnode, ptr %14, i32 0, i32 1
  %18 = tail call ptr @fwnode_handle_get(ptr noundef %17) #12
  br label %19

19:                                               ; preds = %16, %12, %5, %1
  %20 = phi ptr [ %18, %16 ], [ null, %12 ], [ null, %5 ], [ null, %1 ]
  ret ptr %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @software_node_get_next_child(ptr noundef %0, ptr noundef %1) #2 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @software_node_ops
  %10 = getelementptr i8, ptr %0, i32 -36
  %11 = select i1 %9, ptr %10, ptr null
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi ptr [ null, %2 ], [ %11, %6 ]
  %14 = icmp eq ptr %1, null
  %15 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %16 = or i1 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.fwnode_handle, ptr %1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, @software_node_ops
  %21 = getelementptr i8, ptr %1, i32 -36
  %22 = select i1 %20, ptr %21, ptr null
  br label %23

23:                                               ; preds = %17, %12
  %24 = phi ptr [ null, %12 ], [ %22, %17 ]
  %25 = icmp eq ptr %13, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.swnode, ptr %13, i32 0, i32 6
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = icmp eq ptr %24, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.swnode, ptr %24, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %27
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %26, %23
  tail call void @fwnode_handle_put(ptr noundef %1) #12
  br label %41

37:                                               ; preds = %32, %30
  %38 = phi ptr [ %28, %30 ], [ %34, %32 ]
  tail call void @fwnode_handle_put(ptr noundef %1) #12
  %39 = getelementptr i8, ptr %38, i32 -52
  %40 = tail call ptr @fwnode_handle_get(ptr noundef %39) #12
  br label %41

41:                                               ; preds = %37, %36
  %42 = phi ptr [ null, %36 ], [ %40, %37 ]
  ret ptr %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @software_node_get_named_child_node(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ne ptr %8, @software_node_ops
  %10 = getelementptr i8, ptr %0, i32 -36
  %11 = icmp eq ptr %10, null
  %12 = or i1 %11, %9
  br i1 %12, label %30, label %13

13:                                               ; preds = %6
  %14 = getelementptr i8, ptr %0, i32 60
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %30, label %17

17:                                               ; preds = %23, %13
  %18 = phi ptr [ %24, %23 ], [ %15, %13 ]
  %19 = getelementptr i8, ptr %18, i32 -88
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @strcmp(ptr noundef %1, ptr noundef %20)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr %18, align 4
  %25 = icmp eq ptr %24, %14
  br i1 %25, label %30, label %17

26:                                               ; preds = %17
  %27 = getelementptr i8, ptr %18, i32 -88
  %28 = tail call ptr @kobject_get(ptr noundef %27) #12
  %29 = getelementptr i8, ptr %18, i32 -52
  br label %30

30:                                               ; preds = %26, %23, %13, %6, %2
  %31 = phi ptr [ %29, %26 ], [ null, %13 ], [ null, %6 ], [ null, %2 ], [ null, %23 ]
  ret ptr %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @software_node_get_reference_args(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #2 {
  %7 = icmp eq ptr %0, null
  %8 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %9 = or i1 %7, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, @software_node_ops
  %14 = getelementptr i8, ptr %0, i32 -36
  %15 = select i1 %13, ptr %14, ptr null
  br label %16

16:                                               ; preds = %10, %6
  %17 = phi ptr [ null, %6 ], [ %15, %10 ]
  %18 = getelementptr inbounds %struct.swnode, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.software_node, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %146, label %23

23:                                               ; preds = %16
  %24 = load ptr, ptr %21, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %146, label %26

26:                                               ; preds = %31, %23
  %27 = phi ptr [ %33, %31 ], [ %24, %23 ]
  %28 = phi ptr [ %32, %31 ], [ %21, %23 ]
  %29 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull %27) #12
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = getelementptr %struct.property_entry, ptr %28, i32 1
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %146, label %26

35:                                               ; preds = %26
  %36 = icmp eq ptr %28, null
  br i1 %36, label %146, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.property_entry, ptr %28, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 5
  br i1 %40, label %41, label %146

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.property_entry, ptr %28, i32 0, i32 2
  %43 = load i8, ptr %42, align 8, !range !13
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %146

45:                                               ; preds = %41
  %46 = mul i32 %4, 72
  %47 = getelementptr inbounds %struct.property_entry, ptr %28, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = icmp ult i32 %46, %48
  br i1 %49, label %50, label %146

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.property_entry, ptr %28, i32 0, i32 4
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr %struct.software_node_ref_args, ptr %52, i32 %4
  %54 = load ptr, ptr %53, align 8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %146, label %56

56:                                               ; preds = %50
  %57 = load ptr, ptr @swnode_kset, align 4
  %58 = getelementptr inbounds %struct.kset, ptr %57, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %58) #12
  %59 = load ptr, ptr @swnode_kset, align 4
  br label %60

60:                                               ; preds = %64, %56
  %61 = phi ptr [ %59, %56 ], [ %62, %64 ]
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, %59
  br i1 %63, label %70, label %64

64:                                               ; preds = %60
  %65 = getelementptr i8, ptr %62, i32 64
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, %54
  br i1 %67, label %68, label %60

68:                                               ; preds = %64
  %69 = getelementptr i8, ptr %62, i32 -4
  br label %70

70:                                               ; preds = %68, %60
  %71 = phi ptr [ %69, %68 ], [ null, %60 ]
  %72 = getelementptr inbounds %struct.kset, ptr %59, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %73 = load i16, ptr %72, align 4
  %74 = add i16 %73, 1
  store i16 %74, ptr %72, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %75 = icmp eq ptr %71, null
  %76 = getelementptr inbounds %struct.swnode, ptr %71, i32 0, i32 1
  %77 = icmp eq ptr %76, null
  %78 = select i1 %75, i1 true, i1 %77
  br i1 %78, label %146, label %79

79:                                               ; preds = %70
  %80 = icmp eq ptr %2, null
  br i1 %80, label %123, label %81

81:                                               ; preds = %79
  %82 = load ptr, ptr %53, align 8
  %83 = getelementptr inbounds %struct.software_node, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %120, label %86

86:                                               ; preds = %81
  %87 = load ptr, ptr %84, align 8
  %88 = icmp eq ptr %87, null
  br i1 %88, label %120, label %89

89:                                               ; preds = %94, %86
  %90 = phi ptr [ %96, %94 ], [ %87, %86 ]
  %91 = phi ptr [ %95, %94 ], [ %84, %86 ]
  %92 = tail call i32 @strcmp(ptr noundef nonnull %2, ptr noundef nonnull %90) #12
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %89
  %95 = getelementptr %struct.property_entry, ptr %91, i32 1
  %96 = load ptr, ptr %95, align 8
  %97 = icmp eq ptr %96, null
  br i1 %97, label %120, label %89

98:                                               ; preds = %89
  %99 = icmp eq ptr %91, null
  br i1 %99, label %120, label %100

100:                                              ; preds = %98
  %101 = getelementptr inbounds %struct.property_entry, ptr %91, i32 0, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %120, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.property_entry, ptr %91, i32 0, i32 2
  %106 = load i8, ptr %105, align 8, !range !13
  %107 = icmp eq i8 %106, 0
  %108 = getelementptr inbounds %struct.property_entry, ptr %91, i32 0, i32 4
  br i1 %107, label %109, label %111

109:                                              ; preds = %104
  %110 = load ptr, ptr %108, align 8
  br label %111

111:                                              ; preds = %109, %104
  %112 = phi ptr [ %110, %109 ], [ %108, %104 ]
  %113 = icmp eq ptr %112, null
  br i1 %113, label %120, label %114

114:                                              ; preds = %111
  %115 = icmp ult i32 %102, 4
  br i1 %115, label %120, label %116

116:                                              ; preds = %114
  %117 = icmp ugt ptr %112, inttoptr (i32 -4096 to ptr)
  br i1 %117, label %120, label %118

118:                                              ; preds = %116
  %119 = load i32, ptr %112, align 1
  br label %123

120:                                              ; preds = %116, %114, %111, %100, %98, %94, %86, %81
  %121 = phi ptr [ %112, %116 ], [ inttoptr (i32 -61 to ptr), %100 ], [ inttoptr (i32 -22 to ptr), %86 ], [ inttoptr (i32 -22 to ptr), %81 ], [ inttoptr (i32 -61 to ptr), %111 ], [ inttoptr (i32 -22 to ptr), %98 ], [ inttoptr (i32 -75 to ptr), %114 ], [ inttoptr (i32 -22 to ptr), %94 ]
  %122 = ptrtoint ptr %121 to i32
  br label %146

123:                                              ; preds = %118, %79
  %124 = phi i32 [ %3, %79 ], [ %119, %118 ]
  %125 = icmp ugt i32 %124, 8
  br i1 %125, label %146, label %126

126:                                              ; preds = %123
  %127 = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  br i1 %127, label %133, label %128

128:                                              ; preds = %126
  %129 = getelementptr inbounds %struct.swnode, ptr %71, i32 0, i32 1, i32 1
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, @software_node_ops
  %132 = select i1 %131, ptr %71, ptr null
  br label %133

133:                                              ; preds = %128, %126
  %134 = phi ptr [ null, %126 ], [ %132, %128 ]
  %135 = tail call ptr @kobject_get(ptr noundef %134) #12
  %136 = getelementptr inbounds %struct.swnode, ptr %134, i32 0, i32 1
  store ptr %136, ptr %5, align 8
  %137 = getelementptr inbounds %struct.fwnode_reference_args, ptr %5, i32 0, i32 1
  store i32 %124, ptr %137, align 4
  %138 = icmp eq i32 %124, 0
  br i1 %138, label %146, label %139

139:                                              ; preds = %139, %133
  %140 = phi i32 [ %144, %139 ], [ 0, %133 ]
  %141 = getelementptr %struct.software_node_ref_args, ptr %52, i32 %4, i32 2, i32 %140
  %142 = load i64, ptr %141, align 8
  %143 = getelementptr %struct.fwnode_reference_args, ptr %5, i32 0, i32 2, i32 %140
  store i64 %142, ptr %143, align 8
  %144 = add nuw i32 %140, 1
  %145 = icmp eq i32 %144, %124
  br i1 %145, label %146, label %139

146:                                              ; preds = %139, %133, %123, %120, %70, %50, %45, %41, %37, %35, %31, %23, %16
  %147 = phi i32 [ -2, %35 ], [ -22, %37 ], [ -22, %41 ], [ -2, %45 ], [ -2, %70 ], [ %122, %120 ], [ -22, %123 ], [ -2, %16 ], [ -2, %23 ], [ 0, %133 ], [ -2, %50 ], [ 0, %139 ], [ -2, %31 ]
  ret i32 %147
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @software_node_graph_get_next_endpoint(ptr noundef %0, ptr noundef %1) #2 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %129, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ne ptr %8, @software_node_ops
  %10 = getelementptr i8, ptr %0, i32 -36
  %11 = icmp eq ptr %10, null
  %12 = or i1 %11, %9
  br i1 %12, label %129, label %13

13:                                               ; preds = %6
  %14 = icmp eq ptr %1, null
  br i1 %14, label %48, label %15

15:                                               ; preds = %13
  %16 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %126, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.fwnode_handle, ptr %1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp ne ptr %19, @software_node_ops
  %21 = getelementptr i8, ptr %1, i32 -36
  %22 = icmp eq ptr %21, null
  %23 = or i1 %22, %20
  br i1 %23, label %126, label %24

24:                                               ; preds = %17
  %25 = getelementptr i8, ptr %1, i32 68
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %126, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.swnode, ptr %26, i32 0, i32 1
  %30 = tail call ptr @fwnode_handle_get(ptr noundef %29) #12
  %31 = icmp eq ptr %30, null
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  %33 = or i1 %31, %32
  br i1 %33, label %75, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.fwnode_handle, ptr %30, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp ne ptr %36, @software_node_ops
  %38 = getelementptr i8, ptr %30, i32 -36
  %39 = icmp eq ptr %38, null
  %40 = or i1 %39, %37
  br i1 %40, label %79, label %41

41:                                               ; preds = %34
  %42 = getelementptr i8, ptr %30, i32 68
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %79, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.swnode, ptr %43, i32 0, i32 1
  %47 = tail call ptr @fwnode_handle_get(ptr noundef %46) #12
  br label %79

48:                                               ; preds = %13
  %49 = getelementptr i8, ptr %0, i32 60
  %50 = load volatile ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %49
  br i1 %51, label %66, label %52

52:                                               ; preds = %58, %48
  %53 = phi ptr [ %59, %58 ], [ %50, %48 ]
  %54 = getelementptr i8, ptr %53, i32 -88
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.3, ptr noundef %55) #12
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = load ptr, ptr %53, align 4
  %60 = icmp eq ptr %59, %49
  br i1 %60, label %66, label %52

61:                                               ; preds = %52
  %62 = getelementptr i8, ptr %53, i32 -88
  %63 = tail call ptr @kobject_get(ptr noundef %62) #12
  %64 = getelementptr i8, ptr %53, i32 -52
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %61, %58, %48
  %67 = load ptr, ptr %7, align 4
  %68 = icmp eq ptr %67, @software_node_ops
  %69 = select i1 %68, ptr %10, ptr null
  %70 = tail call ptr @kobject_get(ptr noundef %69) #12
  %71 = getelementptr inbounds %struct.swnode, ptr %69, i32 0, i32 1
  br label %72

72:                                               ; preds = %66, %61
  %73 = phi ptr [ %64, %61 ], [ %71, %66 ]
  %74 = tail call fastcc ptr @swnode_graph_find_next_port(ptr noundef %73, ptr noundef null)
  br label %75

75:                                               ; preds = %72, %28
  %76 = phi ptr [ %73, %72 ], [ null, %28 ]
  %77 = phi ptr [ %74, %72 ], [ %30, %28 ]
  %78 = icmp eq ptr %77, null
  br i1 %78, label %126, label %79

79:                                               ; preds = %75, %45, %41, %34
  %80 = phi ptr [ %77, %75 ], [ %30, %45 ], [ %30, %41 ], [ %30, %34 ]
  %81 = phi ptr [ %76, %75 ], [ %47, %45 ], [ null, %41 ], [ null, %34 ]
  br label %82

82:                                               ; preds = %123, %79
  %83 = phi ptr [ %124, %123 ], [ %80, %79 ]
  %84 = phi ptr [ null, %123 ], [ %1, %79 ]
  %85 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  br i1 %85, label %92, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.fwnode_handle, ptr %83, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, @software_node_ops
  %90 = getelementptr i8, ptr %83, i32 -36
  %91 = select i1 %89, ptr %90, ptr null
  br label %92

92:                                               ; preds = %86, %82
  %93 = phi ptr [ null, %82 ], [ %91, %86 ]
  %94 = icmp eq ptr %84, null
  %95 = icmp ugt ptr %84, inttoptr (i32 -4096 to ptr)
  %96 = or i1 %94, %95
  br i1 %96, label %103, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.fwnode_handle, ptr %84, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, @software_node_ops
  %101 = getelementptr i8, ptr %84, i32 -36
  %102 = select i1 %100, ptr %101, ptr null
  br label %103

103:                                              ; preds = %97, %92
  %104 = phi ptr [ null, %92 ], [ %102, %97 ]
  %105 = icmp eq ptr %93, null
  br i1 %105, label %116, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.swnode, ptr %93, i32 0, i32 6
  %108 = load volatile ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, %107
  br i1 %109, label %116, label %110

110:                                              ; preds = %106
  %111 = icmp eq ptr %104, null
  br i1 %111, label %117, label %112

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct.swnode, ptr %104, i32 0, i32 5
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, %107
  br i1 %115, label %116, label %117

116:                                              ; preds = %112, %106, %103
  tail call void @fwnode_handle_put(ptr noundef %84) #12
  br label %123

117:                                              ; preds = %112, %110
  %118 = phi ptr [ %108, %110 ], [ %114, %112 ]
  tail call void @fwnode_handle_put(ptr noundef %84) #12
  %119 = getelementptr i8, ptr %118, i32 -52
  %120 = tail call ptr @fwnode_handle_get(ptr noundef %119) #12
  %121 = icmp eq ptr %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %117
  tail call void @fwnode_handle_put(ptr noundef nonnull %83) #12
  br label %126

123:                                              ; preds = %117, %116
  %124 = tail call fastcc ptr @swnode_graph_find_next_port(ptr noundef %81, ptr noundef nonnull %83)
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %82

126:                                              ; preds = %123, %122, %75, %24, %17, %15
  %127 = phi ptr [ %81, %122 ], [ %76, %75 ], [ null, %24 ], [ null, %17 ], [ null, %15 ], [ %81, %123 ]
  %128 = phi ptr [ %120, %122 ], [ %1, %75 ], [ %1, %24 ], [ %1, %17 ], [ %1, %15 ], [ null, %123 ]
  tail call void @fwnode_handle_put(ptr noundef %127) #12
  br label %129

129:                                              ; preds = %126, %6, %2
  %130 = phi ptr [ %128, %126 ], [ null, %6 ], [ null, %2 ]
  ret ptr %130
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @software_node_graph_get_remote_endpoint(ptr noundef readonly %0) #2 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %82, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ne ptr %7, @software_node_ops
  %9 = getelementptr i8, ptr %0, i32 -36
  %10 = icmp eq ptr %9, null
  %11 = or i1 %10, %8
  br i1 %11, label %82, label %12

12:                                               ; preds = %5
  %13 = getelementptr i8, ptr %0, i32 32
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.software_node, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %82, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr %16, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %82, label %21

21:                                               ; preds = %26, %18
  %22 = phi ptr [ %28, %26 ], [ %19, %18 ]
  %23 = phi ptr [ %27, %26 ], [ %16, %18 ]
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(16) @.str.5, ptr noundef nonnull %22) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = getelementptr %struct.property_entry, ptr %23, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %82, label %21

30:                                               ; preds = %21
  %31 = icmp eq ptr %23, null
  br i1 %31, label %82, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.property_entry, ptr %23, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 5
  br i1 %35, label %36, label %82

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.property_entry, ptr %23, i32 0, i32 2
  %38 = load i8, ptr %37, align 8, !range !13
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %82

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.property_entry, ptr %23, i32 0, i32 4
  %42 = load ptr, ptr %41, align 8
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %64, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr @swnode_kset, align 4
  %47 = getelementptr inbounds %struct.kset, ptr %46, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %47) #12
  %48 = load ptr, ptr @swnode_kset, align 4
  br label %49

49:                                               ; preds = %53, %45
  %50 = phi ptr [ %48, %45 ], [ %51, %53 ]
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, %48
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = getelementptr i8, ptr %51, i32 64
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, %43
  br i1 %56, label %57, label %49

57:                                               ; preds = %53
  %58 = getelementptr i8, ptr %51, i32 -4
  br label %59

59:                                               ; preds = %57, %49
  %60 = phi ptr [ %58, %57 ], [ null, %49 ]
  %61 = getelementptr inbounds %struct.kset, ptr %48, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %62 = load i16, ptr %61, align 4
  %63 = add i16 %62, 1
  store i16 %63, ptr %61, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  br label %64

64:                                               ; preds = %59, %40
  %65 = phi ptr [ %60, %59 ], [ null, %40 ]
  %66 = icmp eq ptr %65, null
  %67 = getelementptr inbounds %struct.swnode, ptr %65, i32 0, i32 1
  %68 = select i1 %66, ptr null, ptr %67
  %69 = icmp eq ptr %68, null
  %70 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  %71 = or i1 %69, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.fwnode_handle, ptr %68, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, @software_node_ops
  %76 = getelementptr i8, ptr %68, i32 -36
  %77 = select i1 %75, ptr %76, ptr null
  br label %78

78:                                               ; preds = %72, %64
  %79 = phi ptr [ null, %64 ], [ %77, %72 ]
  %80 = tail call ptr @kobject_get(ptr noundef %79) #12
  %81 = getelementptr inbounds %struct.swnode, ptr %79, i32 0, i32 1
  br label %82

82:                                               ; preds = %78, %36, %32, %30, %26, %18, %12, %5, %1
  %83 = phi ptr [ %81, %78 ], [ null, %36 ], [ null, %32 ], [ null, %30 ], [ null, %5 ], [ null, %1 ], [ null, %12 ], [ null, %18 ], [ null, %26 ]
  ret ptr %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @software_node_graph_get_port_parent(ptr noundef readonly %0) #2 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @software_node_ops
  %9 = getelementptr i8, ptr %0, i32 -36
  %10 = select i1 %8, ptr %9, ptr null
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi ptr [ null, %1 ], [ %10, %5 ]
  %13 = getelementptr inbounds %struct.swnode, ptr %12, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %41, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.swnode, ptr %14, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @strcmp(ptr noundef %19, ptr noundef nonnull dereferenceable(6) @.str.3)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.swnode, ptr %14, i32 0, i32 7
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %41, label %26

26:                                               ; preds = %22, %16
  %27 = phi ptr [ %24, %22 ], [ %14, %16 ]
  %28 = getelementptr inbounds %struct.swnode, ptr %27, i32 0, i32 1
  %29 = icmp eq ptr %28, null
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  %31 = or i1 %29, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.swnode, ptr %27, i32 0, i32 1, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, @software_node_ops
  %36 = select i1 %35, ptr %27, ptr null
  br label %37

37:                                               ; preds = %32, %26
  %38 = phi ptr [ null, %26 ], [ %36, %32 ]
  %39 = tail call ptr @kobject_get(ptr noundef %38) #12
  %40 = getelementptr inbounds %struct.swnode, ptr %38, i32 0, i32 1
  br label %41

41:                                               ; preds = %37, %22, %11
  %42 = phi ptr [ %40, %37 ], [ null, %22 ], [ null, %11 ]
  ret ptr %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @software_node_graph_parse_endpoint(ptr noundef %0, ptr noundef %1) #2 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @software_node_ops
  %10 = getelementptr i8, ptr %0, i32 -36
  %11 = select i1 %9, ptr %10, ptr null
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi ptr [ null, %2 ], [ %11, %6 ]
  %14 = getelementptr inbounds %struct.swnode, ptr %13, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.swnode, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @strlen(ptr noundef %18)
  %20 = icmp ult i32 %19, 6
  br i1 %20, label %33, label %21

21:                                               ; preds = %12
  %22 = tail call i32 @strncmp(ptr noundef %18, ptr noundef nonnull dereferenceable(6) @.str.4, i32 noundef 5)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = getelementptr i8, ptr %18, i32 5
  %26 = tail call i32 @kstrtouint(ptr noundef %25, i32 noundef 10, ptr noundef %1) #12
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.swnode, ptr %13, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.fwnode_endpoint, ptr %1, i32 0, i32 1
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.fwnode_endpoint, ptr %1, i32 0, i32 2
  store ptr %0, ptr %32, align 4
  br label %33

33:                                               ; preds = %28, %24, %21, %12
  %34 = phi i32 [ 0, %28 ], [ -22, %21 ], [ -22, %12 ], [ %26, %24 ]
  ret i32 %34
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @property_entry_read_int_array(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef writeonly %3, i32 noundef %4) unnamed_addr #11 {
  %6 = icmp eq ptr %3, null
  br i1 %6, label %7, label %27

7:                                                ; preds = %5
  %8 = icmp eq ptr %0, null
  br i1 %8, label %73, label %9

9:                                                ; preds = %7
  %10 = load ptr, ptr %0, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %73, label %12

12:                                               ; preds = %17, %9
  %13 = phi ptr [ %19, %17 ], [ %10, %9 ]
  %14 = phi ptr [ %18, %17 ], [ %0, %9 ]
  %15 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull %13) #12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = getelementptr %struct.property_entry, ptr %14, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %73, label %12

21:                                               ; preds = %12
  %22 = icmp eq ptr %14, null
  br i1 %22, label %73, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.property_entry, ptr %14, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = udiv i32 %25, %2
  br label %73

27:                                               ; preds = %5
  %28 = icmp eq i32 %2, 0
  br i1 %28, label %73, label %29

29:                                               ; preds = %27
  %30 = tail call i32 @llvm.ctpop.i32(i32 %2) #12, !range !14
  %31 = icmp ult i32 %30, 2
  %32 = icmp ult i32 %2, 9
  %33 = and i1 %32, %31
  br i1 %33, label %34, label %73

34:                                               ; preds = %29
  %35 = mul i32 %4, %2
  %36 = icmp eq ptr %0, null
  br i1 %36, label %69, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %0, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %69, label %40

40:                                               ; preds = %45, %37
  %41 = phi ptr [ %47, %45 ], [ %38, %37 ]
  %42 = phi ptr [ %46, %45 ], [ %0, %37 ]
  %43 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull %41) #12
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = getelementptr %struct.property_entry, ptr %42, i32 1
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %69, label %40

49:                                               ; preds = %40
  %50 = icmp eq ptr %42, null
  br i1 %50, label %69, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.property_entry, ptr %42, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.property_entry, ptr %42, i32 0, i32 2
  %57 = load i8, ptr %56, align 8, !range !13
  %58 = icmp eq i8 %57, 0
  %59 = getelementptr inbounds %struct.property_entry, ptr %42, i32 0, i32 4
  br i1 %58, label %60, label %62

60:                                               ; preds = %55
  %61 = load ptr, ptr %59, align 8
  br label %62

62:                                               ; preds = %60, %55
  %63 = phi ptr [ %61, %60 ], [ %59, %55 ]
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = icmp ult i32 %53, %35
  br i1 %66, label %69, label %67

67:                                               ; preds = %65
  %68 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %68, label %69, label %72

69:                                               ; preds = %67, %65, %62, %51, %49, %45, %37, %34
  %70 = phi ptr [ %63, %67 ], [ inttoptr (i32 -61 to ptr), %51 ], [ inttoptr (i32 -22 to ptr), %37 ], [ inttoptr (i32 -22 to ptr), %34 ], [ inttoptr (i32 -61 to ptr), %62 ], [ inttoptr (i32 -22 to ptr), %49 ], [ inttoptr (i32 -75 to ptr), %65 ], [ inttoptr (i32 -22 to ptr), %45 ]
  %71 = ptrtoint ptr %70 to i32
  br label %73

72:                                               ; preds = %67
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %3, ptr nonnull align 1 %63, i32 %35, i1 false)
  br label %73

73:                                               ; preds = %72, %69, %29, %27, %23, %21, %17, %9, %7
  %74 = phi i32 [ %71, %69 ], [ 0, %72 ], [ -6, %29 ], [ %26, %23 ], [ -22, %21 ], [ -22, %7 ], [ -22, %9 ], [ -6, %27 ], [ -22, %17 ]
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_next_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_name_prefix(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_handle_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @swnode_graph_find_next_port(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  %6 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %7 = getelementptr i8, ptr %0, i32 -36
  br label %8

8:                                                ; preds = %52, %2
  %9 = phi ptr [ %1, %2 ], [ %42, %52 ]
  br i1 %5, label %14, label %10

10:                                               ; preds = %8
  %11 = load ptr, ptr %6, align 4
  %12 = icmp eq ptr %11, @software_node_ops
  %13 = select i1 %12, ptr %7, ptr null
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi ptr [ null, %8 ], [ %13, %10 ]
  %16 = icmp eq ptr %9, null
  %17 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  %18 = or i1 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.fwnode_handle, ptr %9, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, @software_node_ops
  %23 = getelementptr i8, ptr %9, i32 -36
  %24 = select i1 %22, ptr %23, ptr null
  br label %25

25:                                               ; preds = %19, %14
  %26 = phi ptr [ null, %14 ], [ %24, %19 ]
  %27 = icmp eq ptr %15, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.swnode, ptr %15, i32 0, i32 6
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = icmp eq ptr %26, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.swnode, ptr %26, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %29
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %28, %25
  tail call void @fwnode_handle_put(ptr noundef %9) #12
  br label %59

39:                                               ; preds = %34, %32
  %40 = phi ptr [ %30, %32 ], [ %36, %34 ]
  tail call void @fwnode_handle_put(ptr noundef %9) #12
  %41 = getelementptr i8, ptr %40, i32 -52
  %42 = tail call ptr @fwnode_handle_get(ptr noundef %41) #12
  %43 = icmp eq ptr %42, null
  br i1 %43, label %59, label %44

44:                                               ; preds = %39
  %45 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %52, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.fwnode_handle, ptr %42, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, @software_node_ops
  %50 = getelementptr i8, ptr %42, i32 -36
  %51 = select i1 %49, ptr %50, ptr null
  br label %52

52:                                               ; preds = %46, %44
  %53 = phi ptr [ null, %44 ], [ %51, %46 ]
  %54 = getelementptr inbounds %struct.swnode, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = load ptr, ptr %55, align 4
  %57 = tail call i32 @strncmp(ptr noundef %56, ptr noundef nonnull dereferenceable(6) @.str.4, i32 noundef 5)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %8

59:                                               ; preds = %52, %39, %38
  %60 = phi ptr [ null, %38 ], [ null, %39 ], [ %42, %52 ]
  ret ptr %60
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @software_node_release(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.swnode, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.swnode, ptr %3, i32 0, i32 4
  %7 = getelementptr inbounds %struct.swnode, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  tail call void @ida_free(ptr noundef %6, i32 noundef %8) #12
  %9 = getelementptr inbounds %struct.swnode, ptr %0, i32 0, i32 5
  %10 = getelementptr inbounds %struct.swnode, ptr %0, i32 0, i32 5, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %12, ptr %11, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %10, align 4
  br label %17

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.swnode, ptr %0, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  tail call void @ida_free(ptr noundef nonnull @swnode_root_ids, i32 noundef %16) #12
  br label %17

17:                                               ; preds = %14, %5
  %18 = getelementptr inbounds %struct.swnode, ptr %0, i32 0, i32 8
  %19 = load i8, ptr %18, align 4
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.swnode, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.software_node, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  tail call void @property_entries_free(ptr noundef %26) #12
  tail call void @kfree(ptr noundef %24) #12
  br label %27

27:                                               ; preds = %22, %17
  %28 = getelementptr inbounds %struct.swnode, ptr %0, i32 0, i32 4
  tail call void @ida_destroy(ptr noundef %28) #12
  tail call void @kfree(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kset_create_and_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }
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
!8 = !{i64 2149236455}
!9 = !{i64 2149232279}
!10 = !{i64 2149232354, i64 2149232381, i64 2149232428, i64 2149232450, i64 2149232478, i64 2149232498}
!11 = !{i64 2149259458}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i8 0, i8 2}
!14 = !{i32 0, i32 33}
