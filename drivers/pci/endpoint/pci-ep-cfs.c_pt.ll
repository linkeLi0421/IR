; ModuleID = '/llk/IR/drivers/pci/endpoint/pci-ep-cfs.c_pt.bc'
source_filename = "../drivers/pci/endpoint/pci-ep-cfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_ep_cfs_add_epc_group:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_ep_cfs_add_epc_group\22\09\09\09\09\09"
module asm "__kstrtabns_pci_ep_cfs_add_epc_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_ep_cfs_remove_epc_group:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_ep_cfs_remove_epc_group\22\09\09\09\09\09"
module asm "__kstrtabns_pci_ep_cfs_remove_epc_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_ep_cfs_add_epf_group:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_ep_cfs_add_epf_group\22\09\09\09\09\09"
module asm "__kstrtabns_pci_ep_cfs_add_epf_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_ep_cfs_remove_epf_group:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_ep_cfs_remove_epf_group\22\09\09\09\09\09"
module asm "__kstrtabns_pci_ep_cfs_remove_epf_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.configfs_subsystem = type { %struct.config_group, %struct.mutex }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.configfs_group_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.pci_epc_group = type { %struct.config_group, ptr, i8 }
%struct.pci_epf_group = type { %struct.config_group, %struct.config_group, %struct.config_group, %struct.delayed_work, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_epf = type { %struct.device, ptr, ptr, [6 x %struct.pci_epf_bar], i8, i16, i8, i8, ptr, ptr, ptr, %struct.list_head, %struct.notifier_block, %struct.mutex, ptr, %struct.list_head, [6 x %struct.pci_epf_bar], i8, ptr, i32, i32, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
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
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pci_epf_bar = type { i32, ptr, i32, i32, i32 }
%struct.pci_epf_header = type { i16, i16, i8, i8, i8, i8, i8, i16, i16, i32 }

@pci_epc_type = internal constant %struct.config_item_type { ptr null, ptr @pci_epc_item_ops, ptr null, ptr @pci_epc_attrs, ptr null }, align 4
@controllers_group = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [44 x i8] c"\013failed to register configfs group for %s\0A\00", align 1
@__kstrtab_pci_ep_cfs_add_epc_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_ep_cfs_add_epc_group = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_ep_cfs_add_epc_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_ep_cfs_add_epc_group to i32), ptr @__kstrtab_pci_ep_cfs_add_epc_group, ptr @__kstrtabns_pci_ep_cfs_add_epc_group }, section "___ksymtab+pci_ep_cfs_add_epc_group", align 4
@__kstrtab_pci_ep_cfs_remove_epc_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_ep_cfs_remove_epc_group = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_ep_cfs_remove_epc_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_ep_cfs_remove_epc_group to i32), ptr @__kstrtab_pci_ep_cfs_remove_epc_group, ptr @__kstrtabns_pci_ep_cfs_remove_epc_group }, section "___ksymtab+pci_ep_cfs_remove_epc_group", align 4
@functions_group = internal unnamed_addr global ptr null, align 4
@pci_epf_group_type = internal constant %struct.config_item_type { ptr null, ptr null, ptr @pci_epf_group_ops, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"\013failed to register configfs group for %s function\0A\00", align 1
@__kstrtab_pci_ep_cfs_add_epf_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_ep_cfs_add_epf_group = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_ep_cfs_add_epf_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_ep_cfs_add_epf_group to i32), ptr @__kstrtab_pci_ep_cfs_add_epf_group, ptr @__kstrtabns_pci_ep_cfs_add_epf_group }, section "___ksymtab+pci_ep_cfs_add_epf_group", align 4
@__kstrtab_pci_ep_cfs_remove_epf_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_ep_cfs_remove_epf_group = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_ep_cfs_remove_epf_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_ep_cfs_remove_epf_group to i32), ptr @__kstrtab_pci_ep_cfs_remove_epf_group, ptr @__kstrtabns_pci_ep_cfs_remove_epf_group }, section "___ksymtab+pci_ep_cfs_remove_epf_group", align 4
@__initcall__kmod_pci_ep_cfs__228_719_pci_ep_cfs_init6 = internal global ptr @pci_ep_cfs_init, section ".initcall6.init", align 4
@pci_ep_cfs_subsys = internal global %struct.configfs_subsystem { %struct.config_group { %struct.config_item { ptr null, [20 x i8] c"pci_ep\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.kref zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @pci_ep_type, ptr null }, %struct.list_head zeroinitializer, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pci_ep_cfs_subsys, i64 92), ptr getelementptr (i8, ptr @pci_ep_cfs_subsys, i64 92) } } }, align 4
@__exitcall_pci_ep_cfs_exit = internal global ptr @pci_ep_cfs_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description229 = internal constant [39 x i8] c"pci_ep_cfs.description=PCI EP CONFIGFS\00", section ".modinfo", align 1
@__UNIQUE_ID_author230 = internal constant [57 x i8] c"pci_ep_cfs.author=Kishon Vijay Abraham I <kishon@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [48 x i8] c"pci_ep_cfs.file=drivers/pci/endpoint/pci-ep-cfs\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [26 x i8] c"pci_ep_cfs.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@pci_epc_item_ops = internal global %struct.configfs_item_operations { ptr null, ptr @pci_epc_epf_link, ptr @pci_epc_epf_unlink }, align 4
@pci_epc_attrs = internal global [2 x ptr] [ptr @pci_epc_attr_start, ptr null], align 4
@pci_epc_epf_unlink.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"drivers/pci/endpoint/pci-ep-cfs.c\00", align 1
@pci_epc_attr_start = internal global %struct.configfs_attribute { ptr @.str.3, ptr null, i16 420, ptr @pci_epc_start_show, ptr @pci_epc_start_store }, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"failed to start endpoint controller\0A\00", align 1
@pci_epf_group_ops = internal global %struct.configfs_group_operations { ptr null, ptr @pci_epf_make, ptr null, ptr null, ptr @pci_epf_drop }, align 4
@functions_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @functions_mutex, i64 12), ptr getelementptr (i8, ptr @functions_mutex, i64 12) } }, align 4
@functions_idr = internal global %struct.idr { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554436, ptr null }, i32 0, i32 0 }, align 4
@pci_epf_type = internal constant %struct.config_item_type { ptr null, ptr @pci_epf_ops, ptr @pci_epf_type_group_ops, ptr @pci_epf_attrs, ptr null }, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"\013failed to create endpoint function device\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@pci_epf_ops = internal global %struct.configfs_item_operations { ptr @pci_epf_release, ptr @pci_epf_vepf_link, ptr @pci_epf_vepf_unlink }, align 4
@pci_epf_type_group_ops = internal global %struct.configfs_group_operations { ptr null, ptr @pci_epf_type_make, ptr null, ptr null, ptr @pci_epf_type_drop }, align 4
@pci_epf_attrs = internal global [13 x ptr] [ptr @pci_epf_attr_vendorid, ptr @pci_epf_attr_deviceid, ptr @pci_epf_attr_revid, ptr @pci_epf_attr_progif_code, ptr @pci_epf_attr_subclass_code, ptr @pci_epf_attr_baseclass_code, ptr @pci_epf_attr_cache_line_size, ptr @pci_epf_attr_subsys_vendor_id, ptr @pci_epf_attr_subsys_id, ptr @pci_epf_attr_interrupt_pin, ptr @pci_epf_attr_msi_interrupts, ptr @pci_epf_attr_msix_interrupts, ptr null], align 4
@pci_epf_attr_vendorid = internal global %struct.configfs_attribute { ptr @.str.8, ptr null, i16 420, ptr @pci_epf_vendorid_show, ptr @pci_epf_vendorid_store }, align 4
@pci_epf_attr_deviceid = internal global %struct.configfs_attribute { ptr @.str.10, ptr null, i16 420, ptr @pci_epf_deviceid_show, ptr @pci_epf_deviceid_store }, align 4
@pci_epf_attr_revid = internal global %struct.configfs_attribute { ptr @.str.11, ptr null, i16 420, ptr @pci_epf_revid_show, ptr @pci_epf_revid_store }, align 4
@pci_epf_attr_progif_code = internal global %struct.configfs_attribute { ptr @.str.12, ptr null, i16 420, ptr @pci_epf_progif_code_show, ptr @pci_epf_progif_code_store }, align 4
@pci_epf_attr_subclass_code = internal global %struct.configfs_attribute { ptr @.str.13, ptr null, i16 420, ptr @pci_epf_subclass_code_show, ptr @pci_epf_subclass_code_store }, align 4
@pci_epf_attr_baseclass_code = internal global %struct.configfs_attribute { ptr @.str.14, ptr null, i16 420, ptr @pci_epf_baseclass_code_show, ptr @pci_epf_baseclass_code_store }, align 4
@pci_epf_attr_cache_line_size = internal global %struct.configfs_attribute { ptr @.str.15, ptr null, i16 420, ptr @pci_epf_cache_line_size_show, ptr @pci_epf_cache_line_size_store }, align 4
@pci_epf_attr_subsys_vendor_id = internal global %struct.configfs_attribute { ptr @.str.16, ptr null, i16 420, ptr @pci_epf_subsys_vendor_id_show, ptr @pci_epf_subsys_vendor_id_store }, align 4
@pci_epf_attr_subsys_id = internal global %struct.configfs_attribute { ptr @.str.17, ptr null, i16 420, ptr @pci_epf_subsys_id_show, ptr @pci_epf_subsys_id_store }, align 4
@pci_epf_attr_interrupt_pin = internal global %struct.configfs_attribute { ptr @.str.18, ptr null, i16 420, ptr @pci_epf_interrupt_pin_show, ptr @pci_epf_interrupt_pin_store }, align 4
@pci_epf_attr_msi_interrupts = internal global %struct.configfs_attribute { ptr @.str.19, ptr null, i16 420, ptr @pci_epf_msi_interrupts_show, ptr @pci_epf_msi_interrupts_store }, align 4
@pci_epf_attr_msix_interrupts = internal global %struct.configfs_attribute { ptr @.str.20, ptr null, i16 420, ptr @pci_epf_msix_interrupts_show, ptr @pci_epf_msix_interrupts_store }, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"vendorid\00", align 1
@pci_epf_vendorid_show.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"0x%04x\0A\00", align 1
@pci_epf_vendorid_store.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"deviceid\00", align 1
@pci_epf_deviceid_show.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pci_epf_deviceid_store.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"revid\00", align 1
@pci_epf_revid_show.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pci_epf_revid_store.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"progif_code\00", align 1
@pci_epf_progif_code_show.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pci_epf_progif_code_store.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"subclass_code\00", align 1
@pci_epf_subclass_code_show.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pci_epf_subclass_code_store.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"baseclass_code\00", align 1
@pci_epf_baseclass_code_show.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pci_epf_baseclass_code_store.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"cache_line_size\00", align 1
@pci_epf_cache_line_size_show.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pci_epf_cache_line_size_store.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"subsys_vendor_id\00", align 1
@pci_epf_subsys_vendor_id_show.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pci_epf_subsys_vendor_id_store.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"subsys_id\00", align 1
@pci_epf_subsys_id_show.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pci_epf_subsys_id_store.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"interrupt_pin\00", align 1
@pci_epf_interrupt_pin_show.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pci_epf_interrupt_pin_store.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"msi_interrupts\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"msix_interrupts\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"\013failed to create 'primary' EPC interface\0A\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"\013failed to create 'secondary' EPC interface\0A\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@pci_primary_epc_type = internal constant %struct.config_item_type { ptr null, ptr @pci_primary_epc_item_ops, ptr null, ptr null, ptr null }, align 4
@pci_primary_epc_item_ops = internal global %struct.configfs_item_operations { ptr null, ptr @pci_primary_epc_epf_link, ptr @pci_primary_epc_epf_unlink }, align 4
@pci_primary_epc_epf_unlink.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"secondary\00", align 1
@pci_secondary_epc_type = internal constant %struct.config_item_type { ptr null, ptr @pci_secondary_epc_item_ops, ptr null, ptr null, ptr null }, align 4
@pci_secondary_epc_item_ops = internal global %struct.configfs_item_operations { ptr null, ptr @pci_secondary_epc_epf_link, ptr @pci_secondary_epc_epf_unlink }, align 4
@pci_secondary_epc_epf_unlink.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"\013Error %d while registering subsystem %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"functions\00", align 1
@pci_functions_type = internal constant %struct.config_item_type zeroinitializer, align 4
@.str.27 = private unnamed_addr constant [46 x i8] c"\013Error %d while registering functions group\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"controllers\00", align 1
@pci_controllers_type = internal constant %struct.config_item_type zeroinitializer, align 4
@.str.29 = private unnamed_addr constant [48 x i8] c"\013Error %d while registering controllers group\0A\00", align 1
@pci_ep_type = internal constant %struct.config_item_type zeroinitializer, align 4
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_pci_ep_cfs_exit, ptr @__initcall__kmod_pci_ep_cfs__228_719_pci_ep_cfs_init6, ptr @__ksymtab_pci_ep_cfs_add_epc_group, ptr @__ksymtab_pci_ep_cfs_add_epf_group, ptr @__ksymtab_pci_ep_cfs_remove_epc_group, ptr @__ksymtab_pci_ep_cfs_remove_epf_group, ptr @pci_ep_cfs_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_ep_cfs_add_epc_group(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 88) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  tail call void @config_group_init_type_name(ptr noundef nonnull %3, ptr noundef %0, ptr noundef nonnull @pci_epc_type) #7
  %6 = load ptr, ptr @controllers_group, align 4
  %7 = tail call i32 @configfs_register_group(ptr noundef %6, ptr noundef nonnull %3) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %0) #8
  br label %18

11:                                               ; preds = %5
  %12 = tail call ptr @pci_epc_get(ptr noundef %0) #7
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = ptrtoint ptr %12 to i32
  tail call void @configfs_unregister_group(ptr noundef nonnull %3) #7
  br label %18

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.pci_epc_group, ptr %3, i32 0, i32 1
  store ptr %12, ptr %17, align 8
  br label %23

18:                                               ; preds = %14, %9
  %19 = phi i32 [ %7, %9 ], [ %15, %14 ]
  tail call void @kfree(ptr noundef nonnull %3) #7
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi i32 [ %19, %18 ], [ -12, %1 ]
  %22 = inttoptr i32 %21 to ptr
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi ptr [ %22, %20 ], [ %3, %16 ]
  ret ptr %24
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_register_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_epc_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @configfs_unregister_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_ep_cfs_remove_epc_group(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.pci_epc_group, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @pci_epc_put(ptr noundef %5) #7
  tail call void @configfs_unregister_group(ptr noundef nonnull %0) #7
  tail call void @kfree(ptr noundef nonnull %0) #7
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epc_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_ep_cfs_add_epf_group(ptr noundef %0) #0 {
  %2 = load ptr, ptr @functions_group, align 4
  %3 = tail call ptr @configfs_register_default_group(ptr noundef %2, ptr noundef %0, ptr noundef nonnull @pci_epf_group_type) #7
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %0) #8
  br label %7

7:                                                ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @configfs_register_default_group(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_ep_cfs_remove_epf_group(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @configfs_unregister_default_group(ptr noundef nonnull %0) #7
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @configfs_unregister_default_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pci_ep_cfs_init() #4 section ".init.text" {
  tail call void @config_group_init(ptr noundef nonnull @pci_ep_cfs_subsys) #7
  %1 = tail call i32 @configfs_register_subsystem(ptr noundef nonnull @pci_ep_cfs_subsys) #7
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %1, ptr noundef getelementptr inbounds (%struct.configfs_subsystem, ptr @pci_ep_cfs_subsys, i32 0, i32 0, i32 0, i32 1)) #8
  br label %20

5:                                                ; preds = %0
  %6 = tail call ptr @configfs_register_default_group(ptr noundef nonnull @pci_ep_cfs_subsys, ptr noundef nonnull @.str.26, ptr noundef nonnull @pci_functions_type) #7
  store ptr %6, ptr @functions_group, align 4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = ptrtoint ptr %6 to i32
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %9) #8
  br label %18

11:                                               ; preds = %5
  %12 = tail call ptr @configfs_register_default_group(ptr noundef nonnull @pci_ep_cfs_subsys, ptr noundef nonnull @.str.28, ptr noundef nonnull @pci_controllers_type) #7
  store ptr %12, ptr @controllers_group, align 4
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = ptrtoint ptr %12 to i32
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %15) #8
  %17 = load ptr, ptr @functions_group, align 4
  tail call void @configfs_unregister_default_group(ptr noundef %17) #7
  br label %18

18:                                               ; preds = %14, %8
  %19 = phi i32 [ %9, %8 ], [ %15, %14 ]
  tail call void @configfs_unregister_subsystem(ptr noundef nonnull @pci_ep_cfs_subsys) #7
  br label %20

20:                                               ; preds = %18, %11, %3
  %21 = phi i32 [ 0, %11 ], [ %1, %3 ], [ %19, %18 ]
  ret i32 %21
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @pci_ep_cfs_exit() #4 section ".exit.text" {
  %1 = load ptr, ptr @controllers_group, align 4
  tail call void @configfs_unregister_default_group(ptr noundef %1) #7
  %2 = load ptr, ptr @functions_group, align 4
  tail call void @configfs_unregister_default_group(ptr noundef %2) #7
  tail call void @configfs_unregister_subsystem(ptr noundef nonnull @pci_ep_cfs_subsys) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @configfs_unregister_subsystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_epc_epf_link(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.pci_epc_group, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pci_epf_group, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @pci_epc_add_epf(ptr noundef %4, ptr noundef %6, i32 noundef 0) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = tail call i32 @pci_epf_bind(ptr noundef %6) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @pci_epc_remove_epf(ptr noundef %4, ptr noundef %6, i32 noundef 0) #7
  br label %13

13:                                               ; preds = %12, %9, %2
  %14 = phi i32 [ %10, %12 ], [ %7, %2 ], [ 0, %9 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_epc_epf_unlink(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.pci_epc_group, ptr %0, i32 0, i32 2
  %4 = load i8, ptr %3, align 4, !range !8
  %5 = icmp ne i8 %4, 0
  %6 = load i1, ptr @pci_epc_epf_unlink.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %2
  store i1 true, ptr @pci_epc_epf_unlink.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 240, i32 noundef 9, ptr noundef null) #7
  br label %10

10:                                               ; preds = %9, %2
  %11 = getelementptr inbounds %struct.pci_epc_group, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.pci_epf_group, ptr %1, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  tail call void @pci_epf_unbind(ptr noundef %14) #7
  tail call void @pci_epc_remove_epf(ptr noundef %12, ptr noundef %14, i32 noundef 0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epc_add_epf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epf_bind(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epc_remove_epf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epf_unbind(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_epc_start_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pci_epc_group, ptr %0, i32 0, i32 2
  %4 = load i8, ptr %3, align 4, !range !8
  %5 = zext i8 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %5) #7
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_epc_start_store(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 0, ptr %4, align 1, !annotation !10
  %5 = getelementptr inbounds %struct.pci_epc_group, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @kstrtobool(ptr noundef %1, ptr noundef nonnull %4) #7
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %3
  %10 = load i8, ptr %4, align 1, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  call void @pci_epc_stop(ptr noundef %6) #7
  %13 = getelementptr inbounds %struct.pci_epc_group, ptr %0, i32 0, i32 2
  store i8 0, ptr %13, align 4
  br label %21

14:                                               ; preds = %9
  %15 = call i32 @pci_epc_start(ptr noundef %6) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.5) #8
  br label %21

18:                                               ; preds = %14
  %19 = load i8, ptr %4, align 1, !range !8
  %20 = getelementptr inbounds %struct.pci_epc_group, ptr %0, i32 0, i32 2
  store i8 %19, ptr %20, align 4
  br label %21

21:                                               ; preds = %18, %17, %12, %3
  %22 = phi i32 [ -22, %17 ], [ %2, %18 ], [ %2, %12 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epc_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epc_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @pci_epf_make(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 292) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %37, label %6

6:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @functions_mutex) #7
  %7 = tail call i32 @idr_alloc(ptr noundef nonnull @functions_idr, ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0, i32 noundef 3264) #7
  tail call void @mutex_unlock(ptr noundef nonnull @functions_mutex) #7
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %34, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.pci_epf_group, ptr %4, i32 0, i32 5
  store i32 %7, ptr %10, align 8
  tail call void @config_group_init_type_name(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull @pci_epf_type) #7
  %11 = load ptr, ptr %0, align 4
  %12 = load i32, ptr %10, align 8
  %13 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.6, ptr noundef %11, i32 noundef %12) #7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %9
  %16 = tail call ptr @pci_epf_create(ptr noundef nonnull %13) #7
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #8
  tail call void @kfree(ptr noundef nonnull %13) #7
  br label %30

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.pci_epf, ptr %16, i32 0, i32 18
  store ptr %4, ptr %21, align 4
  %22 = getelementptr inbounds %struct.pci_epf_group, ptr %4, i32 0, i32 4
  store ptr %16, ptr %22, align 4
  tail call void @kfree(ptr noundef nonnull %13) #7
  %23 = getelementptr inbounds %struct.pci_epf_group, ptr %4, i32 0, i32 3
  store i32 -32, ptr %23, align 8
  %24 = getelementptr inbounds %struct.pci_epf_group, ptr %4, i32 0, i32 3, i32 0, i32 1
  store volatile ptr %24, ptr %24, align 4
  %25 = getelementptr inbounds %struct.pci_epf_group, ptr %4, i32 0, i32 3, i32 0, i32 1, i32 1
  store ptr %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.pci_epf_group, ptr %4, i32 0, i32 3, i32 0, i32 2
  store ptr @pci_epf_cfs_work, ptr %26, align 4
  %27 = getelementptr inbounds %struct.pci_epf_group, ptr %4, i32 0, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %27, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #7
  %28 = load ptr, ptr @system_wq, align 4
  %29 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %28, ptr noundef %23, i32 noundef 1) #7
  br label %37

30:                                               ; preds = %18, %9
  %31 = phi i32 [ -22, %18 ], [ -12, %9 ]
  tail call void @mutex_lock(ptr noundef nonnull @functions_mutex) #7
  %32 = load i32, ptr %10, align 8
  %33 = tail call ptr @idr_remove(ptr noundef nonnull @functions_idr, i32 noundef %32) #7
  tail call void @mutex_unlock(ptr noundef nonnull @functions_mutex) #7
  br label %34

34:                                               ; preds = %30, %6
  %35 = phi i32 [ %31, %30 ], [ %7, %6 ]
  tail call void @kfree(ptr noundef nonnull %4) #7
  %36 = inttoptr i32 %35 to ptr
  br label %37

37:                                               ; preds = %34, %20, %2
  %38 = phi ptr [ %36, %34 ], [ %4, %20 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_epf_drop(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  tail call void @config_item_put(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_epf_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_epf_cfs_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -240
  %3 = getelementptr i8, ptr %0, i32 -160
  tail call void @config_group_init_type_name(ptr noundef %3, ptr noundef nonnull @.str.23, ptr noundef nonnull @pci_primary_epc_type) #7
  %4 = tail call i32 @configfs_register_group(ptr noundef %2, ptr noundef %3) #7
  %5 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -80
  tail call void @config_group_init_type_name(ptr noundef %7, ptr noundef nonnull @.str.24, ptr noundef nonnull @pci_secondary_epc_type) #7
  %8 = tail call i32 @configfs_register_group(ptr noundef %2, ptr noundef %7) #7
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %13

10:                                               ; preds = %6, %1
  %11 = phi ptr [ @.str.21, %1 ], [ @.str.22, %6 ]
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %11) #8
  br label %13

13:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_epf_release(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @functions_mutex) #7
  %2 = getelementptr inbounds %struct.pci_epf_group, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = tail call ptr @idr_remove(ptr noundef nonnull @functions_idr, i32 noundef %3) #7
  tail call void @mutex_unlock(ptr noundef nonnull @functions_mutex) #7
  %5 = getelementptr inbounds %struct.pci_epf_group, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  tail call void @pci_epf_destroy(ptr noundef %6) #7
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_epf_vepf_link(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.pci_epf_group, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pci_epf_group, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @pci_epf_add_vepf(ptr noundef %4, ptr noundef %6) #7
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_epf_vepf_unlink(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.pci_epf_group, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pci_epf_group, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  tail call void @pci_epf_remove_vepf(ptr noundef %4, ptr noundef %6) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epf_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epf_add_vepf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epf_remove_vepf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @pci_epf_type_make(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.pci_epf_group, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @pci_epf_type_add_cfs(ptr noundef %4, ptr noundef %0) #7
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_epf_type_drop(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  tail call void @config_item_put(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_epf_type_add_cfs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_item_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_epf_vendorid_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pci_epf_group, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pci_epf, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = load i1, ptr @pci_epf_vendorid_show.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %2
  store i1 true, ptr @pci_epf_vendorid_show.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 407, i32 noundef 9, ptr noundef null) #7
  br label %12

12:                                               ; preds = %11, %2
  br i1 %7, label %18, label %13

13:                                               ; preds = %12
  %14 = load ptr, ptr %5, align 4
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  %17 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %16) #7
  br label %18

18:                                               ; preds = %13, %12
  %19 = phi i32 [ %17, %13 ], [ -22, %12 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_epf_vendorid_store(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #7
  store i16 0, ptr %4, align 2, !annotation !10
  %5 = getelementptr inbounds %struct.pci_epf_group, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pci_epf, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = load i1, ptr @pci_epf_vendorid_store.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !9

13:                                               ; preds = %3
  store i1 true, ptr @pci_epf_vendorid_store.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 408, i32 noundef 9, ptr noundef null) #7
  br label %14

14:                                               ; preds = %13, %3
  br i1 %9, label %21, label %15

15:                                               ; preds = %14
  %16 = call i32 @kstrtou16(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #7
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i16, ptr %4, align 2
  %20 = load ptr, ptr %7, align 4
  store i16 %19, ptr %20, align 4
  br label %21

21:                                               ; preds = %18, %15, %14
  %22 = phi i32 [ %2, %18 ], [ -22, %14 ], [ -22, %15 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_epf_deviceid_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pci_epf_group, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pci_epf, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = load i1, ptr @pci_epf_deviceid_show.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %2
  store i1 true, ptr @pci_epf_deviceid_show.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 410, i32 noundef 9, ptr noundef null) #7
  br label %12

12:                                               ; preds = %11, %2
  br i1 %7, label %19, label %13

13:                                               ; preds = %12
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.pci_epf_header, ptr %14, i32 0, i32 1
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %17) #7
  br label %19

19:                                               ; preds = %13, %12
  %20 = phi i32 [ %18, %13 ], [ -22, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_epf_deviceid_store(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #7
  store i16 0, ptr %4, align 2, !annotation !10
  %5 = getelementptr inbounds %struct.pci_epf_group, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pci_epf, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = load i1, ptr @pci_epf_deviceid_store.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !9

13:                                               ; preds = %3
  store i1 true, ptr @pci_epf_deviceid_store.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 411, i32 noundef 9, ptr noundef null) #7
  br label %14

14:                                               ; preds = %13, %3
  br i1 %9, label %22, label %15

15:                                               ; preds = %14
  %16 = call i32 @kstrtou16(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #7
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i16, ptr %4, align 2
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr inbounds %struct.pci_epf_header, ptr %20, i32 0, i32 1
  store i16 %19, ptr %21, align 2
  br label %22

22:                                               ; preds = %18, %15, %14
  %23 = phi i32 [ %2, %18 ], [ -22, %14 ], [ -22, %15 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_epf_revid_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pci_epf_group, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pci_epf, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = load i1, ptr @pci_epf_revid_show.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %2
  store i1 true, ptr @pci_epf_revid_show.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 413, i32 noundef 9, ptr noundef null) #7
  br label %12

12:                                               ; preds = %11, %2
  br i1 %7, label %19, label %13

13:                                               ; preds = %12
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.pci_epf_header, ptr %14, i32 0, i32 2
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i32
  %18 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %17) #7
  br label %19

19:                                               ; preds = %13, %12
  %20 = phi i32 [ %18, %13 ], [ -22, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_epf_revid_store(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 0, ptr %4, align 1, !annotation !10
  %5 = getelementptr inbounds %struct.pci_epf_group, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pci_epf, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = load i1, ptr @pci_epf_revid_store.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !9

13:                                               ; preds = %3
  store i1 true, ptr @pci_epf_revid_store.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 414, i32 noundef 9, ptr noundef null) #7
  br label %14

14:                                               ; preds = %13, %3
  br i1 %9, label %22, label %15

15:                                               ; preds = %14
  %16 = call i32 @kstrtou8(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #7
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i8, ptr %4, align 1
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr inbounds %struct.pci_epf_header, ptr %20, i32 0, i32 2
  store i8 %19, ptr %21, align 4
  br label %22

22:                                               ; preds = %18, %15, %14
  %23 = phi i32 [ %2, %18 ], [ -22, %14 ], [ -22, %15 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_epf_progif_code_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pci_epf_group, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pci_epf, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = load i1, ptr @pci_epf_progif_code_show.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %2
  store i1 true, ptr @pci_epf_progif_code_show.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 416, i32 noundef 9, ptr noundef null) #7
  br label %12

12:                                               ; preds = %11, %2
  br i1 %7, label %19, label %13

13:                                               ; preds = %12
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.pci_epf_header, ptr %14, i32 0, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %17) #7
  br label %19

19:                                               ; preds = %13, %12
  %20 = phi i32 [ %18, %13 ], [ -22, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_epf_progif_code_store(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 0, ptr %4, align 1, !annotation !10
  %5 = getelementptr inbounds %struct.pci_epf_group, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pci_epf, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = load i1, ptr @pci_epf_progif_code_store.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !9

13:                                               ; preds = %3
  store i1 true, ptr @pci_epf_progif_code_store.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 417, i32 noundef 9, ptr noundef null) #7
  br label %14

14:                                               ; preds = %13, %3
  br i1 %9, label %22, label %15

15:                                               ; preds = %14
  %16 = call i32 @kstrtou8(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #7
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i8, ptr %4, align 1
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr inbounds %struct.pci_epf_header, ptr %20, i32 0, i32 3
  store i8 %19, ptr %21, align 1
  br label %22

22:                                               ; preds = %18, %15, %14
  %23 = phi i32 [ %2, %18 ], [ -22, %14 ], [ -22, %15 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_epf_subclass_code_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pci_epf_group, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pci_epf, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = load i1, ptr @pci_epf_subclass_code_show.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %2
  store i1 true, ptr @pci_epf_subclass_code_show.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 419, i32 noundef 9, ptr noundef null) #7
  br label %12

12:                                               ; preds = %11, %2
  br i1 %7, label %19, label %13

13:                                               ; preds = %12
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.pci_epf_header, ptr %14, i32 0, i32 4
  %16 = load i8, ptr %15, align 2
  %17 = zext i8 %16 to i32
  %18 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %17) #7
  br label %19

19:                                               ; preds = %13, %12
  %20 = phi i32 [ %18, %13 ], [ -22, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_epf_subclass_code_store(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 0, ptr %4, align 1, !annotation !10
  %5 = getelementptr inbounds %struct.pci_epf_group, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pci_epf, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = load i1, ptr @pci_epf_subclass_code_store.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !9

13:                                               ; preds = %3
  store i1 true, ptr @pci_epf_subclass_code_store.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 420, i32 noundef 9, ptr noundef null) #7
  br label %14

14:                                               ; preds = %13, %3
  br i1 %9, label %22, label %15

15:                                               ; preds = %14
  %16 = call i32 @kstrtou8(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #7
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i8, ptr %4, align 1
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr inbounds %struct.pci_epf_header, ptr %20, i32 0, i32 4
  store i8 %19, ptr %21, align 2
  br label %22

22:                                               ; preds = %18, %15, %14
  %23 = phi i32 [ %2, %18 ], [ -22, %14 ], [ -22, %15 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_epf_baseclass_code_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pci_epf_group, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pci_epf, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = load i1, ptr @pci_epf_baseclass_code_show.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %2
  store i1 true, ptr @pci_epf_baseclass_code_show.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 422, i32 noundef 9, ptr noundef null) #7
  br label %12

12:                                               ; preds = %11, %2
  br i1 %7, label %19, label %13

13:                                               ; preds = %12
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.pci_epf_header, ptr %14, i32 0, i32 5
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %17) #7
  br label %19

19:                                               ; preds = %13, %12
  %20 = phi i32 [ %18, %13 ], [ -22, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_epf_baseclass_code_store(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 0, ptr %4, align 1, !annotation !10
  %5 = getelementptr inbounds %struct.pci_epf_group, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pci_epf, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = load i1, ptr @pci_epf_baseclass_code_store.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !9

13:                                               ; preds = %3
  store i1 true, ptr @pci_epf_baseclass_code_store.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 423, i32 noundef 9, ptr noundef null) #7
  br label %14

14:                                               ; preds = %13, %3
  br i1 %9, label %22, label %15

15:                                               ; preds = %14
  %16 = call i32 @kstrtou8(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #7
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i8, ptr %4, align 1
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr inbounds %struct.pci_epf_header, ptr %20, i32 0, i32 5
  store i8 %19, ptr %21, align 1
  br label %22

22:                                               ; preds = %18, %15, %14
  %23 = phi i32 [ %2, %18 ], [ -22, %14 ], [ -22, %15 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_epf_cache_line_size_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pci_epf_group, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pci_epf, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = load i1, ptr @pci_epf_cache_line_size_show.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %2
  store i1 true, ptr @pci_epf_cache_line_size_show.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 425, i32 noundef 9, ptr noundef null) #7
  br label %12

12:                                               ; preds = %11, %2
  br i1 %7, label %19, label %13

13:                                               ; preds = %12
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.pci_epf_header, ptr %14, i32 0, i32 6
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i32
  %18 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %17) #7
  br label %19

19:                                               ; preds = %13, %12
  %20 = phi i32 [ %18, %13 ], [ -22, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_epf_cache_line_size_store(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 0, ptr %4, align 1, !annotation !10
  %5 = getelementptr inbounds %struct.pci_epf_group, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pci_epf, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = load i1, ptr @pci_epf_cache_line_size_store.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !9

13:                                               ; preds = %3
  store i1 true, ptr @pci_epf_cache_line_size_store.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 426, i32 noundef 9, ptr noundef null) #7
  br label %14

14:                                               ; preds = %13, %3
  br i1 %9, label %22, label %15

15:                                               ; preds = %14
  %16 = call i32 @kstrtou8(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #7
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i8, ptr %4, align 1
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr inbounds %struct.pci_epf_header, ptr %20, i32 0, i32 6
  store i8 %19, ptr %21, align 4
  br label %22

22:                                               ; preds = %18, %15, %14
  %23 = phi i32 [ %2, %18 ], [ -22, %14 ], [ -22, %15 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_epf_subsys_vendor_id_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pci_epf_group, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pci_epf, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = load i1, ptr @pci_epf_subsys_vendor_id_show.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %2
  store i1 true, ptr @pci_epf_subsys_vendor_id_show.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 428, i32 noundef 9, ptr noundef null) #7
  br label %12

12:                                               ; preds = %11, %2
  br i1 %7, label %19, label %13

13:                                               ; preds = %12
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.pci_epf_header, ptr %14, i32 0, i32 7
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %17) #7
  br label %19

19:                                               ; preds = %13, %12
  %20 = phi i32 [ %18, %13 ], [ -22, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_epf_subsys_vendor_id_store(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #7
  store i16 0, ptr %4, align 2, !annotation !10
  %5 = getelementptr inbounds %struct.pci_epf_group, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pci_epf, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = load i1, ptr @pci_epf_subsys_vendor_id_store.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !9

13:                                               ; preds = %3
  store i1 true, ptr @pci_epf_subsys_vendor_id_store.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 429, i32 noundef 9, ptr noundef null) #7
  br label %14

14:                                               ; preds = %13, %3
  br i1 %9, label %22, label %15

15:                                               ; preds = %14
  %16 = call i32 @kstrtou16(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #7
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i16, ptr %4, align 2
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr inbounds %struct.pci_epf_header, ptr %20, i32 0, i32 7
  store i16 %19, ptr %21, align 2
  br label %22

22:                                               ; preds = %18, %15, %14
  %23 = phi i32 [ %2, %18 ], [ -22, %14 ], [ -22, %15 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_epf_subsys_id_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pci_epf_group, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pci_epf, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = load i1, ptr @pci_epf_subsys_id_show.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %2
  store i1 true, ptr @pci_epf_subsys_id_show.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 431, i32 noundef 9, ptr noundef null) #7
  br label %12

12:                                               ; preds = %11, %2
  br i1 %7, label %19, label %13

13:                                               ; preds = %12
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.pci_epf_header, ptr %14, i32 0, i32 8
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  %18 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %17) #7
  br label %19

19:                                               ; preds = %13, %12
  %20 = phi i32 [ %18, %13 ], [ -22, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_epf_subsys_id_store(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #7
  store i16 0, ptr %4, align 2, !annotation !10
  %5 = getelementptr inbounds %struct.pci_epf_group, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pci_epf, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = load i1, ptr @pci_epf_subsys_id_store.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !9

13:                                               ; preds = %3
  store i1 true, ptr @pci_epf_subsys_id_store.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 432, i32 noundef 9, ptr noundef null) #7
  br label %14

14:                                               ; preds = %13, %3
  br i1 %9, label %22, label %15

15:                                               ; preds = %14
  %16 = call i32 @kstrtou16(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #7
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i16, ptr %4, align 2
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr inbounds %struct.pci_epf_header, ptr %20, i32 0, i32 8
  store i16 %19, ptr %21, align 4
  br label %22

22:                                               ; preds = %18, %15, %14
  %23 = phi i32 [ %2, %18 ], [ -22, %14 ], [ -22, %15 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_epf_interrupt_pin_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pci_epf_group, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pci_epf, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = load i1, ptr @pci_epf_interrupt_pin_show.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %2
  store i1 true, ptr @pci_epf_interrupt_pin_show.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 434, i32 noundef 9, ptr noundef null) #7
  br label %12

12:                                               ; preds = %11, %2
  br i1 %7, label %18, label %13

13:                                               ; preds = %12
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.pci_epf_header, ptr %14, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %16) #7
  br label %18

18:                                               ; preds = %13, %12
  %19 = phi i32 [ %17, %13 ], [ -22, %12 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_epf_interrupt_pin_store(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 0, ptr %4, align 1, !annotation !10
  %5 = getelementptr inbounds %struct.pci_epf_group, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pci_epf, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = load i1, ptr @pci_epf_interrupt_pin_store.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !9

13:                                               ; preds = %3
  store i1 true, ptr @pci_epf_interrupt_pin_store.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 435, i32 noundef 9, ptr noundef null) #7
  br label %14

14:                                               ; preds = %13, %3
  br i1 %9, label %23, label %15

15:                                               ; preds = %14
  %16 = call i32 @kstrtou8(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #7
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = load i8, ptr %4, align 1
  %20 = zext i8 %19 to i32
  %21 = load ptr, ptr %7, align 4
  %22 = getelementptr inbounds %struct.pci_epf_header, ptr %21, i32 0, i32 9
  store i32 %20, ptr %22, align 4
  br label %23

23:                                               ; preds = %18, %15, %14
  %24 = phi i32 [ %2, %18 ], [ -22, %14 ], [ -22, %15 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_epf_msi_interrupts_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pci_epf_group, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pci_epf, ptr %4, i32 0, i32 4
  %6 = load i8, ptr %5, align 8
  %7 = zext i8 %6 to i32
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %7) #7
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_epf_msi_interrupts_store(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 0, ptr %4, align 1, !annotation !10
  %5 = call i32 @kstrtou8(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #7
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = load i8, ptr %4, align 1
  %9 = getelementptr inbounds %struct.pci_epf_group, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.pci_epf, ptr %10, i32 0, i32 4
  store i8 %8, ptr %11, align 8
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ %2, %7 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_epf_msix_interrupts_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pci_epf_group, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pci_epf, ptr %4, i32 0, i32 5
  %6 = load i16, ptr %5, align 2
  %7 = zext i16 %6 to i32
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %7) #7
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_epf_msix_interrupts_store(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #7
  store i16 0, ptr %4, align 2, !annotation !10
  %5 = call i32 @kstrtou16(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #7
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = load i16, ptr %4, align 2
  %9 = getelementptr inbounds %struct.pci_epf_group, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.pci_epf, ptr %10, i32 0, i32 5
  store i16 %8, ptr %11, align 2
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ %2, %7 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_primary_epc_epf_link(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pci_epc_group, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pci_epf_group, ptr %4, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @pci_epc_add_epf(ptr noundef %6, ptr noundef %8, i32 noundef 0) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = tail call i32 @pci_epf_bind(ptr noundef %8) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @pci_epc_remove_epf(ptr noundef %6, ptr noundef %8, i32 noundef 0) #7
  br label %15

15:                                               ; preds = %14, %11, %2
  %16 = phi i32 [ %12, %14 ], [ %9, %2 ], [ 0, %11 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_primary_epc_epf_unlink(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_item, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pci_epc_group, ptr %0, i32 0, i32 2
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = icmp ne i8 %6, 0
  %8 = load i1, ptr @pci_primary_epc_epf_unlink.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %2
  store i1 true, ptr @pci_primary_epc_epf_unlink.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 138, i32 noundef 9, ptr noundef null) #7
  br label %12

12:                                               ; preds = %11, %2
  %13 = getelementptr inbounds %struct.pci_epc_group, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.pci_epf_group, ptr %4, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  tail call void @pci_epf_unbind(ptr noundef %16) #7
  tail call void @pci_epc_remove_epf(ptr noundef %14, ptr noundef %16, i32 noundef 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_secondary_epc_epf_link(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pci_epc_group, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pci_epf_group, ptr %4, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @pci_epc_add_epf(ptr noundef %6, ptr noundef %8, i32 noundef 1) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = tail call i32 @pci_epf_bind(ptr noundef %8) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @pci_epc_remove_epf(ptr noundef %6, ptr noundef %8, i32 noundef 1) #7
  br label %15

15:                                               ; preds = %14, %11, %2
  %16 = phi i32 [ %12, %14 ], [ %9, %2 ], [ 0, %11 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_secondary_epc_epf_unlink(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_item, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pci_epc_group, ptr %0, i32 0, i32 2
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = icmp ne i8 %6, 0
  %8 = load i1, ptr @pci_secondary_epc_epf_unlink.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %2
  store i1 true, ptr @pci_secondary_epc_epf_unlink.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 77, i32 noundef 9, ptr noundef null) #7
  br label %12

12:                                               ; preds = %11, %2
  %13 = getelementptr inbounds %struct.pci_epc_group, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.pci_epf_group, ptr %4, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  tail call void @pci_epf_unbind(ptr noundef %16) #7
  tail call void @pci_epc_remove_epf(ptr noundef %14, ptr noundef %16, i32 noundef 1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_register_subsystem(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind allocsize(2) }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"auto-init"}
