; ModuleID = '/llk/IR/drivers/usb/gadget/configfs.c_pt.bc'
source_filename = "../drivers/usb/gadget/configfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_os_desc_prepare_interf_dir:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_os_desc_prepare_interf_dir\22\09\09\09\09\09"
module asm "__kstrtabns_usb_os_desc_prepare_interf_dir:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_gadget_item:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_gadget_item\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_gadget_item:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.configfs_group_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
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
%struct.configfs_subsystem = type { %struct.config_group, %struct.mutex }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_os_desc = type { ptr, %struct.list_head, i32, i32, ptr, %struct.config_group, ptr }
%struct.gadget_info = type { %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.mutex, [3 x ptr], %struct.list_head, %struct.list_head, %struct.usb_composite_driver, %struct.usb_composite_dev, i8, i8, [14 x i8], %struct.spinlock, i8 }
%struct.usb_composite_driver = type { ptr, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, %struct.usb_gadget_driver }
%struct.usb_composite_dev = type <{ ptr, ptr, ptr, ptr, [14 x i8], i8, i8, ptr, i8, %struct.usb_device_descriptor, i8, %struct.list_head, %struct.list_head, ptr, i8, [3 x i8], ptr, i32, i32, %struct.spinlock, i8, [3 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.usb_os_desc_ext_prop = type { %struct.list_head, i8, i32, ptr, i32, ptr, %struct.config_item }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_usb_cfg = type { %struct.config_group, %struct.config_group, %struct.list_head, %struct.usb_configuration, %struct.list_head, [3 x ptr] }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.gadget_config_name = type { %struct.usb_gadget_strings, %struct.usb_string, ptr, %struct.config_group, %struct.list_head }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.gadget_strings = type { %struct.usb_gadget_strings, [3 x %struct.usb_string], ptr, ptr, ptr, %struct.config_group, %struct.list_head }
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

@.str = private unnamed_addr constant [8 x i8] c"os_desc\00", align 1
@interf_grp_ops = internal global %struct.configfs_group_operations { ptr @ext_prop_make, ptr null, ptr null, ptr null, ptr @ext_prop_drop }, align 4
@interf_grp_attrs = internal global [3 x ptr] [ptr @interf_grp_attr_compatible_id, ptr @interf_grp_attr_sub_compatible_id, ptr null], align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"interface.%s\00", align 1
@__kstrtab_usb_os_desc_prepare_interf_dir = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_os_desc_prepare_interf_dir = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_os_desc_prepare_interf_dir = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_os_desc_prepare_interf_dir to i32), ptr @__kstrtab_usb_os_desc_prepare_interf_dir, ptr @__kstrtabns_usb_os_desc_prepare_interf_dir }, section "___ksymtab+usb_os_desc_prepare_interf_dir", align 4
@__kstrtab_unregister_gadget_item = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_gadget_item = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_gadget_item = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_gadget_item to i32), ptr @__kstrtab_unregister_gadget_item, ptr @__kstrtabns_unregister_gadget_item }, section "___ksymtab_gpl+unregister_gadget_item", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@ext_prop_ops = internal global %struct.configfs_item_operations { ptr @usb_os_desc_ext_prop_release, ptr null, ptr null }, align 4
@ext_prop_attrs = internal global [3 x ptr] [ptr @ext_prop_attr_type, ptr @ext_prop_attr_data, ptr null], align 4
@ext_prop_attr_type = internal global %struct.configfs_attribute { ptr @.str.3, ptr @__this_module, i16 420, ptr @ext_prop_type_show, ptr @ext_prop_type_store }, align 4
@ext_prop_attr_data = internal global %struct.configfs_attribute { ptr @.str.5, ptr @__this_module, i16 420, ptr @ext_prop_data_show, ptr @ext_prop_data_store }, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@interf_grp_attr_compatible_id = internal global %struct.configfs_attribute { ptr @.str.6, ptr @__this_module, i16 420, ptr @interf_grp_compatible_id_show, ptr @interf_grp_compatible_id_store }, align 4
@interf_grp_attr_sub_compatible_id = internal global %struct.configfs_attribute { ptr @.str.7, ptr @__this_module, i16 420, ptr @interf_grp_sub_compatible_id_show, ptr @interf_grp_sub_compatible_id_store }, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"compatible_id\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"sub_compatible_id\00", align 1
@gadget_subsys = internal global %struct.configfs_subsystem { %struct.config_group { %struct.config_item { ptr null, [20 x i8] c"usb_gadget\00\00\00\00\00\00\00\00\00\00", %struct.kref zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @gadgets_type, ptr null }, %struct.list_head zeroinitializer, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @gadget_subsys, i64 92), ptr getelementptr (i8, ptr @gadget_subsys, i64 92) } } }, align 4
@gadgets_type = internal constant %struct.config_item_type { ptr @__this_module, ptr null, ptr @gadgets_ops, ptr null, ptr null }, align 4
@gadgets_ops = internal global %struct.configfs_group_operations { ptr null, ptr @gadgets_make, ptr null, ptr null, ptr @gadgets_drop }, align 4
@gadget_root_type = internal constant %struct.config_item_type { ptr @__this_module, ptr @gadget_root_item_ops, ptr null, ptr @gadget_root_attrs, ptr null }, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"functions\00", align 1
@functions_type = internal constant %struct.config_item_type { ptr @__this_module, ptr null, ptr @functions_ops, ptr null, ptr null }, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"configs\00", align 1
@config_desc_type = internal constant %struct.config_item_type { ptr @__this_module, ptr null, ptr @config_desc_ops, ptr null, ptr null }, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"strings\00", align 1
@gadget_strings_strings_type = internal global %struct.config_item_type { ptr @__this_module, ptr null, ptr @gadget_strings_strings_ops, ptr null, ptr null }, align 4
@os_desc_type = internal global %struct.config_item_type { ptr @__this_module, ptr @os_desc_ops, ptr null, ptr @os_desc_attrs, ptr null }, align 4
@gadgets_make.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"&gi->lock\00", align 1
@configfs_driver_template = internal unnamed_addr constant %struct.usb_gadget_driver { ptr null, i32 6, ptr @configfs_composite_bind, ptr @configfs_composite_unbind, ptr @configfs_composite_setup, ptr @configfs_composite_disconnect, ptr @configfs_composite_suspend, ptr @configfs_composite_resume, ptr @configfs_composite_reset, %struct.device_driver { ptr @.str.45, ptr null, ptr @__this_module, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.list_head zeroinitializer, i8 1 }, align 4
@gadget_root_item_ops = internal global %struct.configfs_item_operations { ptr @gadget_info_attr_release, ptr null, ptr null }, align 4
@gadget_root_attrs = internal global [11 x ptr] [ptr @gadget_dev_desc_attr_bDeviceClass, ptr @gadget_dev_desc_attr_bDeviceSubClass, ptr @gadget_dev_desc_attr_bDeviceProtocol, ptr @gadget_dev_desc_attr_bMaxPacketSize0, ptr @gadget_dev_desc_attr_idVendor, ptr @gadget_dev_desc_attr_idProduct, ptr @gadget_dev_desc_attr_bcdDevice, ptr @gadget_dev_desc_attr_bcdUSB, ptr @gadget_dev_desc_attr_UDC, ptr @gadget_dev_desc_attr_max_speed, ptr null], align 4
@.str.12 = private unnamed_addr constant [30 x i8] c"drivers/usb/gadget/configfs.c\00", align 1
@gadget_dev_desc_attr_bDeviceClass = internal global %struct.configfs_attribute { ptr @.str.13, ptr @__this_module, i16 420, ptr @gadget_dev_desc_bDeviceClass_show, ptr @gadget_dev_desc_bDeviceClass_store }, align 4
@gadget_dev_desc_attr_bDeviceSubClass = internal global %struct.configfs_attribute { ptr @.str.15, ptr @__this_module, i16 420, ptr @gadget_dev_desc_bDeviceSubClass_show, ptr @gadget_dev_desc_bDeviceSubClass_store }, align 4
@gadget_dev_desc_attr_bDeviceProtocol = internal global %struct.configfs_attribute { ptr @.str.16, ptr @__this_module, i16 420, ptr @gadget_dev_desc_bDeviceProtocol_show, ptr @gadget_dev_desc_bDeviceProtocol_store }, align 4
@gadget_dev_desc_attr_bMaxPacketSize0 = internal global %struct.configfs_attribute { ptr @.str.17, ptr @__this_module, i16 420, ptr @gadget_dev_desc_bMaxPacketSize0_show, ptr @gadget_dev_desc_bMaxPacketSize0_store }, align 4
@gadget_dev_desc_attr_idVendor = internal global %struct.configfs_attribute { ptr @.str.18, ptr @__this_module, i16 420, ptr @gadget_dev_desc_idVendor_show, ptr @gadget_dev_desc_idVendor_store }, align 4
@gadget_dev_desc_attr_idProduct = internal global %struct.configfs_attribute { ptr @.str.20, ptr @__this_module, i16 420, ptr @gadget_dev_desc_idProduct_show, ptr @gadget_dev_desc_idProduct_store }, align 4
@gadget_dev_desc_attr_bcdDevice = internal global %struct.configfs_attribute { ptr @.str.21, ptr @__this_module, i16 420, ptr @gadget_dev_desc_bcdDevice_show, ptr @gadget_dev_desc_bcdDevice_store }, align 4
@gadget_dev_desc_attr_bcdUSB = internal global %struct.configfs_attribute { ptr @.str.22, ptr @__this_module, i16 420, ptr @gadget_dev_desc_bcdUSB_show, ptr @gadget_dev_desc_bcdUSB_store }, align 4
@gadget_dev_desc_attr_UDC = internal global %struct.configfs_attribute { ptr @.str.23, ptr @__this_module, i16 420, ptr @gadget_dev_desc_UDC_show, ptr @gadget_dev_desc_UDC_store }, align 4
@gadget_dev_desc_attr_max_speed = internal global %struct.configfs_attribute { ptr @.str.25, ptr @__this_module, i16 420, ptr @gadget_dev_desc_max_speed_show, ptr @gadget_dev_desc_max_speed_store }, align 4
@.str.13 = private unnamed_addr constant [13 x i8] c"bDeviceClass\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"0x%02x\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"bDeviceSubClass\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"bDeviceProtocol\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"bMaxPacketSize0\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"idVendor\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"0x%04x\0A\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"idProduct\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"bcdDevice\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"bcdUSB\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"UDC\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"max_speed\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"super-speed-plus\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"super-speed\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"high-speed\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"full-speed\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"low-speed\00", align 1
@functions_ops = internal global %struct.configfs_group_operations { ptr null, ptr @function_make, ptr null, ptr null, ptr @function_drop }, align 4
@.str.31 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.32 = private unnamed_addr constant [39 x i8] c"\013Unable to locate . in FUNC.INSTANCE\0A\00", align 1
@config_desc_ops = internal global %struct.configfs_group_operations { ptr null, ptr @config_desc_make, ptr null, ptr null, ptr @config_desc_drop }, align 4
@.str.33 = private unnamed_addr constant [50 x i8] c"\013Unable to locate . in name.bConfigurationValue\0A\00", align 1
@gadget_config_type = internal constant %struct.config_item_type { ptr @__this_module, ptr @gadget_config_item_ops, ptr null, ptr @gadget_config_attrs, ptr null }, align 4
@gadget_config_name_strings_type = internal global %struct.config_item_type { ptr @__this_module, ptr null, ptr @gadget_config_name_strings_ops, ptr null, ptr null }, align 4
@gadget_config_item_ops = internal global %struct.configfs_item_operations { ptr @gadget_config_attr_release, ptr @config_usb_cfg_link, ptr @config_usb_cfg_unlink }, align 4
@gadget_config_attrs = internal global [3 x ptr] [ptr @gadget_config_desc_attr_MaxPower, ptr @gadget_config_desc_attr_bmAttributes, ptr null], align 4
@.str.34 = private unnamed_addr constant [37 x i8] c"Unable to locate function to unbind\0A\00", align 1
@gadget_config_desc_attr_MaxPower = internal global %struct.configfs_attribute { ptr @.str.35, ptr @__this_module, i16 420, ptr @gadget_config_desc_MaxPower_show, ptr @gadget_config_desc_MaxPower_store }, align 4
@gadget_config_desc_attr_bmAttributes = internal global %struct.configfs_attribute { ptr @.str.37, ptr @__this_module, i16 420, ptr @gadget_config_desc_bmAttributes_show, ptr @gadget_config_desc_bmAttributes_store }, align 4
@.str.35 = private unnamed_addr constant [9 x i8] c"MaxPower\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"bmAttributes\00", align 1
@gadget_config_name_strings_ops = internal global %struct.configfs_group_operations { ptr null, ptr @gadget_config_name_strings_make, ptr null, ptr null, ptr @gadget_config_name_strings_drop }, align 4
@gadget_config_name_langid_type = internal global %struct.config_item_type { ptr @__this_module, ptr @gadget_config_name_langid_item_ops, ptr null, ptr @gadget_config_name_langid_attrs, ptr null }, align 4
@gadget_config_name_langid_item_ops = internal global %struct.configfs_item_operations { ptr @gadget_config_name_attr_release, ptr null, ptr null }, align 4
@gadget_config_name_langid_attrs = internal global [2 x ptr] [ptr @gadget_config_name_attr_configuration, ptr null], align 4
@gadget_config_name_attr_configuration = internal global %struct.configfs_attribute { ptr @.str.38, ptr @__this_module, i16 420, ptr @gadget_config_name_configuration_show, ptr @gadget_config_name_configuration_store }, align 4
@.str.38 = private unnamed_addr constant [14 x i8] c"configuration\00", align 1
@gadget_strings_strings_ops = internal global %struct.configfs_group_operations { ptr null, ptr @gadget_strings_strings_make, ptr null, ptr null, ptr @gadget_strings_strings_drop }, align 4
@gadget_strings_langid_type = internal global %struct.config_item_type { ptr @__this_module, ptr @gadget_strings_langid_item_ops, ptr null, ptr @gadget_strings_langid_attrs, ptr null }, align 4
@gadget_strings_langid_item_ops = internal global %struct.configfs_item_operations { ptr @gadget_strings_attr_release, ptr null, ptr null }, align 4
@gadget_strings_langid_attrs = internal global [4 x ptr] [ptr @gadget_strings_attr_manufacturer, ptr @gadget_strings_attr_product, ptr @gadget_strings_attr_serialnumber, ptr null], align 4
@gadget_strings_attr_manufacturer = internal global %struct.configfs_attribute { ptr @.str.39, ptr @__this_module, i16 420, ptr @gadget_strings_manufacturer_show, ptr @gadget_strings_manufacturer_store }, align 4
@gadget_strings_attr_product = internal global %struct.configfs_attribute { ptr @.str.40, ptr @__this_module, i16 420, ptr @gadget_strings_product_show, ptr @gadget_strings_product_store }, align 4
@gadget_strings_attr_serialnumber = internal global %struct.configfs_attribute { ptr @.str.41, ptr @__this_module, i16 420, ptr @gadget_strings_serialnumber_show, ptr @gadget_strings_serialnumber_store }, align 4
@.str.39 = private unnamed_addr constant [13 x i8] c"manufacturer\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"product\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"serialnumber\00", align 1
@os_desc_ops = internal global %struct.configfs_item_operations { ptr null, ptr @os_desc_link, ptr @os_desc_unlink }, align 4
@os_desc_attrs = internal global [4 x ptr] [ptr @os_desc_attr_use, ptr @os_desc_attr_b_vendor_code, ptr @os_desc_attr_qw_sign, ptr null], align 4
@os_desc_attr_use = internal global %struct.configfs_attribute { ptr @.str.42, ptr @__this_module, i16 420, ptr @os_desc_use_show, ptr @os_desc_use_store }, align 4
@os_desc_attr_b_vendor_code = internal global %struct.configfs_attribute { ptr @.str.43, ptr @__this_module, i16 420, ptr @os_desc_b_vendor_code_show, ptr @os_desc_b_vendor_code_store }, align 4
@os_desc_attr_qw_sign = internal global %struct.configfs_attribute { ptr @.str.44, ptr @__this_module, i16 420, ptr @os_desc_qw_sign_show, ptr @os_desc_qw_sign_store }, align 4
@.str.42 = private unnamed_addr constant [4 x i8] c"use\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"b_vendor_code\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"qw_sign\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"configfs-gadget\00", align 1
@.str.46 = private unnamed_addr constant [42 x i8] c"\013Need at least one configuration in %s.\0A\00", align 1
@.str.47 = private unnamed_addr constant [51 x i8] c"\013Config %s/%d of %s needs at least one function.\0A\00", align 1
@otg_desc = internal global [2 x ptr] zeroinitializer, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_unregister_gadget_item, ptr @__ksymtab_usb_os_desc_prepare_interf_dir], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @check_user_usb_string(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #15
  store i16 0, ptr %3, align 2, !annotation !8
  %4 = call i32 @kstrtou16(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #15
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = load i16, ptr %3, align 2
  %8 = call zeroext i1 @usb_validate_langid(i16 noundef zeroext %7) #15
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = load i16, ptr %3, align 2
  store i16 %10, ptr %1, align 4
  br label %11

11:                                               ; preds = %9, %6, %2
  %12 = phi i32 [ 0, %9 ], [ %4, %2 ], [ -22, %6 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #15
  ret i32 %12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @usb_validate_langid(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @usb_os_desc_prepare_interf_dir(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr noundef %4) #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 120) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %7, i32 80
  %11 = getelementptr i8, ptr %7, i32 100
  store ptr %4, ptr %10, align 8
  tail call void @config_group_init_type_name(ptr noundef nonnull %7, ptr noundef nonnull @.str, ptr noundef %10) #15
  %12 = getelementptr inbounds %struct.config_group, ptr %7, i32 0, i32 4
  %13 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 3
  %14 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 3, i32 1
  %15 = load ptr, ptr %14, align 4
  store ptr %12, ptr %14, align 4
  store ptr %13, ptr %12, align 8
  %16 = getelementptr inbounds %struct.config_group, ptr %7, i32 0, i32 4, i32 1
  store ptr %15, ptr %16, align 4
  store volatile ptr %12, ptr %15, align 4
  %17 = getelementptr i8, ptr %7, i32 108
  store ptr @interf_grp_ops, ptr %17, align 4
  %18 = getelementptr i8, ptr %7, i32 112
  store ptr @interf_grp_attrs, ptr %18, align 8
  store ptr %4, ptr %11, align 4
  %19 = icmp eq i32 %1, 0
  br i1 %19, label %37, label %20

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.config_group, ptr %7, i32 0, i32 3
  %22 = getelementptr inbounds %struct.config_group, ptr %7, i32 0, i32 3, i32 1
  br label %23

23:                                               ; preds = %23, %20
  %24 = phi i32 [ %1, %20 ], [ %25, %23 ]
  %25 = add i32 %24, -1
  %26 = getelementptr ptr, ptr %2, i32 %25
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.usb_os_desc, ptr %27, i32 0, i32 6
  store ptr %4, ptr %28, align 4
  %29 = getelementptr inbounds %struct.usb_os_desc, ptr %27, i32 0, i32 5
  tail call void @config_group_init_type_name(ptr noundef %29, ptr noundef nonnull @.str.1, ptr noundef %11) #15
  %30 = getelementptr ptr, ptr %3, i32 %25
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 (ptr, ptr, ...) @config_item_set_name(ptr noundef %29, ptr noundef nonnull @.str.2, ptr noundef %31) #15
  %33 = getelementptr inbounds %struct.usb_os_desc, ptr %27, i32 0, i32 5, i32 4
  %34 = load ptr, ptr %22, align 4
  store ptr %33, ptr %22, align 4
  store ptr %21, ptr %33, align 4
  %35 = getelementptr inbounds %struct.usb_os_desc, ptr %27, i32 0, i32 5, i32 4, i32 1
  store ptr %34, ptr %35, align 4
  store volatile ptr %33, ptr %34, align 4
  %36 = icmp eq i32 %25, 0
  br i1 %36, label %37, label %23

37:                                               ; preds = %23, %9, %5
  %38 = phi ptr [ inttoptr (i32 -12 to ptr), %5 ], [ %7, %9 ], [ %7, %23 ]
  ret ptr %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_item_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unregister_gadget_item(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gadget_info, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %2) #15
  %3 = getelementptr inbounds %struct.gadget_info, ptr %0, i32 0, i32 9, i32 10, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.gadget_info, ptr %0, i32 0, i32 9, i32 10
  %8 = tail call i32 @usb_gadget_unregister_driver(ptr noundef %7) #15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %11) #15
  store ptr null, ptr %3, align 4
  br label %12

12:                                               ; preds = %10, %6, %1
  tail call void @mutex_unlock(ptr noundef %2) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #3 section ".init.text" {
  tail call void @config_group_init(ptr noundef nonnull @gadget_subsys) #15
  %1 = tail call i32 @configfs_register_subsystem(ptr noundef nonnull @gadget_subsys) #15
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #3 section ".exit.text" {
  tail call void @configfs_unregister_subsystem(ptr noundef nonnull @gadget_subsys) #15
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ext_prop_make(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 100) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %45, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 80
  %8 = getelementptr i8, ptr %4, i32 84
  store ptr @ext_prop_ops, ptr %8, align 4
  %9 = getelementptr i8, ptr %4, i32 92
  store ptr @ext_prop_attrs, ptr %9, align 4
  %10 = getelementptr i8, ptr %0, i32 80
  %11 = load ptr, ptr %10, align 4
  store ptr %11, ptr %7, align 8
  %12 = getelementptr inbounds %struct.usb_os_desc_ext_prop, ptr %4, i32 0, i32 6
  tail call void @config_item_init_type_name(ptr noundef %12, ptr noundef %1, ptr noundef %7) #15
  %13 = tail call noalias ptr @kstrdup(ptr noundef %1, i32 noundef 3264) #15
  %14 = getelementptr inbounds %struct.usb_os_desc_ext_prop, ptr %4, i32 0, i32 3
  store ptr %13, ptr %14, align 8
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %6
  tail call void @kfree(ptr noundef nonnull %4) #15
  br label %45

17:                                               ; preds = %6
  %18 = getelementptr i8, ptr %0, i32 -12
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 14
  store i32 %20, ptr %18, align 4
  %21 = tail call i32 @strlen(ptr noundef nonnull %13)
  %22 = shl i32 %21, 1
  %23 = add i32 %22, 2
  %24 = getelementptr inbounds %struct.usb_os_desc_ext_prop, ptr %4, i32 0, i32 2
  store i32 %23, ptr %24, align 4
  %25 = getelementptr i8, ptr %0, i32 -4
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %17
  tail call void @mutex_lock(ptr noundef nonnull %26) #15
  %29 = load i32, ptr %24, align 4
  %30 = load i32, ptr %18, align 4
  br label %31

31:                                               ; preds = %28, %17
  %32 = phi i32 [ %30, %28 ], [ %20, %17 ]
  %33 = phi i32 [ %29, %28 ], [ %23, %17 ]
  %34 = add i32 %32, %33
  store i32 %34, ptr %18, align 4
  %35 = getelementptr i8, ptr %0, i32 -20
  %36 = getelementptr i8, ptr %0, i32 -16
  %37 = load ptr, ptr %36, align 4
  store ptr %4, ptr %36, align 4
  store ptr %35, ptr %4, align 8
  %38 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %37, ptr %38, align 4
  store volatile ptr %4, ptr %37, align 4
  %39 = getelementptr i8, ptr %0, i32 -8
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %39, align 4
  %42 = load ptr, ptr %25, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %31
  tail call void @mutex_unlock(ptr noundef nonnull %42) #15
  br label %45

45:                                               ; preds = %44, %31, %16, %2
  %46 = phi ptr [ inttoptr (i32 -12 to ptr), %16 ], [ %12, %44 ], [ %12, %31 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ext_prop_drop(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 -28
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull %5) #15
  br label %8

8:                                                ; preds = %7, %2
  %9 = getelementptr i8, ptr %1, i32 -24
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  %13 = getelementptr i8, ptr %0, i32 -8
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, -1
  store i32 %15, ptr %13, align 4
  %16 = getelementptr i8, ptr %1, i32 -12
  %17 = load ptr, ptr %16, align 4
  tail call void @kfree(ptr noundef %17) #15
  %18 = getelementptr i8, ptr %1, i32 -16
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %1, i32 -8
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr i8, ptr %0, i32 -12
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %19, %21
  %25 = sub i32 -14, %24
  %26 = add i32 %25, %23
  store i32 %26, ptr %22, align 4
  %27 = load ptr, ptr %4, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %8
  tail call void @mutex_unlock(ptr noundef nonnull %27) #15
  br label %30

30:                                               ; preds = %29, %8
  tail call void @config_item_put(ptr noundef %1) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_item_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usb_os_desc_ext_prop_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -28
  tail call void @kfree(ptr noundef %2) #15
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext_prop_type_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load i8, ptr %3, align 4
  %5 = zext i8 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext_prop_type_store(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  %5 = getelementptr i8, ptr %0, i32 36
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  store i8 0, ptr %4, align 1, !annotation !8
  %7 = getelementptr i8, ptr %6, i32 -4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @mutex_lock(ptr noundef nonnull %8) #15
  br label %11

11:                                               ; preds = %10, %3
  %12 = call i32 @kstrtou8(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %11
  %15 = load i8, ptr %4, align 1
  %16 = add i8 %15, -8
  %17 = icmp ult i8 %16, -7
  br i1 %17, label %37, label %18

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %0, i32 -20
  %20 = load i8, ptr %19, align 4
  %21 = add i8 %20, -3
  %22 = icmp ult i8 %21, 3
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  switch i8 %15, label %28 [
    i8 6, label %24
    i8 2, label %24
    i8 1, label %24
  ]

24:                                               ; preds = %23, %23, %23
  %25 = getelementptr i8, ptr %0, i32 -8
  %26 = load i32, ptr %25, align 4
  %27 = shl i32 %26, 1
  store i32 %27, ptr %25, align 4
  br label %36

28:                                               ; preds = %23, %18
  switch i8 %20, label %36 [
    i8 1, label %29
    i8 2, label %29
    i8 6, label %29
  ]

29:                                               ; preds = %28, %28, %28
  %30 = add nsw i8 %15, -3
  %31 = icmp ult i8 %30, 3
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = getelementptr i8, ptr %0, i32 -8
  %34 = load i32, ptr %33, align 4
  %35 = ashr i32 %34, 1
  store i32 %35, ptr %33, align 4
  br label %36

36:                                               ; preds = %32, %29, %28, %24
  store i8 %15, ptr %19, align 4
  br label %37

37:                                               ; preds = %36, %14, %11
  %38 = phi i32 [ %12, %11 ], [ %2, %36 ], [ -22, %14 ]
  %39 = load ptr, ptr %7, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  call void @mutex_unlock(ptr noundef nonnull %39) #15
  br label %42

42:                                               ; preds = %41, %37
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  ret i32 %38
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @ext_prop_data_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -20
  %6 = load i8, ptr %5, align 4
  switch i8 %6, label %9 [
    i8 1, label %7
    i8 2, label %7
    i8 6, label %7
  ]

7:                                                ; preds = %2, %2, %2
  %8 = ashr i32 %4, 1
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %8, %7 ], [ %4, %2 ]
  %11 = getelementptr i8, ptr %0, i32 -4
  %12 = load ptr, ptr %11, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %12, i32 %10, i1 false)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext_prop_data_store(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 36
  %5 = load ptr, ptr %4, align 4
  %6 = add i32 %2, -1
  %7 = getelementptr i8, ptr %1, i32 %6
  %8 = load i8, ptr %7, align 1
  switch i8 %8, label %10 [
    i8 10, label %9
    i8 0, label %9
  ]

9:                                                ; preds = %3, %3
  br label %10

10:                                               ; preds = %9, %3
  %11 = phi i32 [ %6, %9 ], [ %2, %3 ]
  %12 = tail call ptr @kmemdup(ptr noundef %1, i32 noundef %11, i32 noundef 3264) #15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %43, label %14

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %5, i32 -4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @mutex_lock(ptr noundef nonnull %16) #15
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr i8, ptr %0, i32 -4
  %21 = load ptr, ptr %20, align 4
  tail call void @kfree(ptr noundef %21) #15
  store ptr %12, ptr %20, align 4
  %22 = getelementptr i8, ptr %0, i32 -8
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr i8, ptr %5, i32 -12
  %25 = load i32, ptr %24, align 4
  %26 = sub i32 %25, %23
  store i32 %26, ptr %24, align 4
  store i32 %11, ptr %22, align 4
  %27 = load i32, ptr %24, align 4
  %28 = add i32 %27, %11
  store i32 %28, ptr %24, align 4
  %29 = getelementptr i8, ptr %0, i32 -20
  %30 = load i8, ptr %29, align 4
  switch i8 %30, label %39 [
    i8 1, label %31
    i8 2, label %31
    i8 6, label %31
  ]

31:                                               ; preds = %19, %19, %19
  %32 = load i32, ptr %22, align 4
  %33 = sub i32 %28, %32
  store i32 %33, ptr %24, align 4
  %34 = load i32, ptr %22, align 4
  %35 = shl i32 %34, 1
  %36 = add i32 %35, 2
  store i32 %36, ptr %22, align 4
  %37 = load i32, ptr %24, align 4
  %38 = add i32 %37, %36
  store i32 %38, ptr %24, align 4
  br label %39

39:                                               ; preds = %31, %19
  %40 = load ptr, ptr %15, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  tail call void @mutex_unlock(ptr noundef nonnull %40) #15
  br label %43

43:                                               ; preds = %42, %39, %10
  %44 = phi i32 [ -12, %10 ], [ %2, %42 ], [ %2, %39 ]
  ret i32 %44
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_item_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @interf_grp_compatible_id_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr i8, ptr %0, i32 -24
  %4 = load ptr, ptr %3, align 4
  %5 = load i64, ptr %4, align 1
  store i64 %5, ptr %1, align 1
  ret i32 8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @interf_grp_compatible_id_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef returned %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -24
  %5 = tail call i32 @llvm.smin.i32(i32 %2, i32 8)
  %6 = add i32 %5, -1
  %7 = getelementptr i8, ptr %1, i32 %6
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 10
  %10 = select i1 %9, i32 %6, i32 %5
  %11 = getelementptr i8, ptr %0, i32 -4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  tail call void @mutex_lock(ptr noundef nonnull %12) #15
  br label %15

15:                                               ; preds = %14, %3
  %16 = load ptr, ptr %4, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %16, ptr align 1 %1, i32 %10, i1 false)
  %17 = load ptr, ptr %11, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @mutex_unlock(ptr noundef nonnull %17) #15
  br label %20

20:                                               ; preds = %19, %15
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @interf_grp_sub_compatible_id_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr i8, ptr %0, i32 -24
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 8
  %6 = load i64, ptr %5, align 1
  store i64 %6, ptr %1, align 1
  ret i32 8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @interf_grp_sub_compatible_id_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef returned %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -24
  %5 = tail call i32 @llvm.smin.i32(i32 %2, i32 8)
  %6 = add i32 %5, -1
  %7 = getelementptr i8, ptr %1, i32 %6
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 10
  %10 = select i1 %9, i32 %6, i32 %5
  %11 = getelementptr i8, ptr %0, i32 -4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  tail call void @mutex_lock(ptr noundef nonnull %12) #15
  br label %15

15:                                               ; preds = %14, %3
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr i8, ptr %16, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %17, ptr align 1 %1, i32 %10, i1 false)
  %18 = load ptr, ptr %11, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void @mutex_unlock(ptr noundef nonnull %18) #15
  br label %21

21:                                               ; preds = %20, %15
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_register_subsystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @gadgets_make(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 740) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %49, label %6

6:                                                ; preds = %2
  tail call void @config_group_init_type_name(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull @gadget_root_type) #15
  %7 = getelementptr inbounds %struct.gadget_info, ptr %4, i32 0, i32 1
  tail call void @config_group_init_type_name(ptr noundef %7, ptr noundef nonnull @.str.8, ptr noundef nonnull @functions_type) #15
  %8 = getelementptr inbounds %struct.gadget_info, ptr %4, i32 0, i32 1, i32 4
  %9 = getelementptr inbounds %struct.config_group, ptr %4, i32 0, i32 3
  %10 = getelementptr inbounds %struct.config_group, ptr %4, i32 0, i32 3, i32 1
  %11 = load ptr, ptr %10, align 4
  store ptr %8, ptr %10, align 4
  store ptr %9, ptr %8, align 8
  %12 = getelementptr inbounds %struct.gadget_info, ptr %4, i32 0, i32 1, i32 4, i32 1
  store ptr %11, ptr %12, align 4
  store volatile ptr %8, ptr %11, align 4
  %13 = getelementptr inbounds %struct.gadget_info, ptr %4, i32 0, i32 2
  tail call void @config_group_init_type_name(ptr noundef %13, ptr noundef nonnull @.str.9, ptr noundef nonnull @config_desc_type) #15
  %14 = getelementptr inbounds %struct.gadget_info, ptr %4, i32 0, i32 2, i32 4
  %15 = load ptr, ptr %10, align 4
  store ptr %14, ptr %10, align 4
  store ptr %9, ptr %14, align 8
  %16 = getelementptr inbounds %struct.gadget_info, ptr %4, i32 0, i32 2, i32 4, i32 1
  store ptr %15, ptr %16, align 4
  store volatile ptr %14, ptr %15, align 4
  %17 = getelementptr inbounds %struct.gadget_info, ptr %4, i32 0, i32 3
  tail call void @config_group_init_type_name(ptr noundef %17, ptr noundef nonnull @.str.10, ptr noundef nonnull @gadget_strings_strings_type) #15
  %18 = getelementptr inbounds %struct.gadget_info, ptr %4, i32 0, i32 3, i32 4
  %19 = load ptr, ptr %10, align 4
  store ptr %18, ptr %10, align 4
  store ptr %9, ptr %18, align 8
  %20 = getelementptr inbounds %struct.gadget_info, ptr %4, i32 0, i32 3, i32 4, i32 1
  store ptr %19, ptr %20, align 4
  store volatile ptr %18, ptr %19, align 4
  %21 = getelementptr inbounds %struct.gadget_info, ptr %4, i32 0, i32 4
  tail call void @config_group_init_type_name(ptr noundef %21, ptr noundef nonnull @.str, ptr noundef nonnull @os_desc_type) #15
  %22 = getelementptr inbounds %struct.gadget_info, ptr %4, i32 0, i32 4, i32 4
  %23 = load ptr, ptr %10, align 4
  store ptr %22, ptr %10, align 4
  store ptr %9, ptr %22, align 8
  %24 = getelementptr inbounds %struct.gadget_info, ptr %4, i32 0, i32 4, i32 4, i32 1
  store ptr %23, ptr %24, align 4
  store volatile ptr %22, ptr %23, align 4
  %25 = getelementptr inbounds %struct.gadget_info, ptr %4, i32 0, i32 9
  %26 = getelementptr inbounds %struct.gadget_info, ptr %4, i32 0, i32 9, i32 5
  store ptr @configfs_do_nothing, ptr %26, align 4
  %27 = getelementptr inbounds %struct.gadget_info, ptr %4, i32 0, i32 9, i32 6
  store ptr @configfs_do_nothing, ptr %27, align 8
  %28 = getelementptr inbounds %struct.gadget_info, ptr %4, i32 0, i32 9, i32 8
  store ptr null, ptr %28, align 8
  %29 = getelementptr inbounds %struct.gadget_info, ptr %4, i32 0, i32 9, i32 9
  store ptr null, ptr %29, align 4
  %30 = getelementptr inbounds %struct.gadget_info, ptr %4, i32 0, i32 9, i32 3
  store i32 6, ptr %30, align 4
  %31 = getelementptr inbounds %struct.gadget_info, ptr %4, i32 0, i32 14
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.gadget_info, ptr %4, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %32, ptr noundef nonnull @.str.11, ptr noundef nonnull @gadgets_make.__key) #15
  %33 = getelementptr inbounds %struct.gadget_info, ptr %4, i32 0, i32 7
  store volatile ptr %33, ptr %33, align 8
  %34 = getelementptr inbounds %struct.gadget_info, ptr %4, i32 0, i32 7, i32 1
  store ptr %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.gadget_info, ptr %4, i32 0, i32 8
  store volatile ptr %35, ptr %35, align 8
  %36 = getelementptr inbounds %struct.gadget_info, ptr %4, i32 0, i32 8, i32 1
  store ptr %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.gadget_info, ptr %4, i32 0, i32 10, i32 19
  store i32 0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.gadget_info, ptr %4, i32 0, i32 10, i32 11
  store volatile ptr %38, ptr %38, align 8
  %39 = getelementptr inbounds %struct.gadget_info, ptr %4, i32 0, i32 10, i32 11, i32 1
  store ptr %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.gadget_info, ptr %4, i32 0, i32 10, i32 12
  store volatile ptr %40, ptr %40, align 8
  %41 = getelementptr inbounds %struct.gadget_info, ptr %4, i32 0, i32 10, i32 12, i32 1
  store ptr %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.gadget_info, ptr %4, i32 0, i32 10, i32 9
  store i8 18, ptr %42, align 1
  %43 = getelementptr inbounds %struct.gadget_info, ptr %4, i32 0, i32 10, i32 9, i32 1
  store i8 1, ptr %43, align 2
  %44 = getelementptr inbounds %struct.gadget_info, ptr %4, i32 0, i32 10, i32 9, i32 9
  store i16 1303, ptr %44, align 1
  %45 = getelementptr inbounds %struct.gadget_info, ptr %4, i32 0, i32 9, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(128) %45, ptr noundef nonnull align 4 dereferenceable(128) @configfs_driver_template, i32 128, i1 false)
  %46 = tail call noalias ptr @kstrdup(ptr noundef %1, i32 noundef 3264) #15
  store ptr %46, ptr %45, align 8
  store ptr %46, ptr %25, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %6
  tail call void @kfree(ptr noundef nonnull %4) #15
  br label %49

49:                                               ; preds = %48, %6, %2
  %50 = phi ptr [ inttoptr (i32 -12 to ptr), %48 ], [ %4, %6 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gadgets_drop(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  tail call void @config_item_put(ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @configfs_do_nothing(ptr nocapture noundef readnone %0) #0 {
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1231, i32 noundef 9, ptr noundef null) #15
  ret i32 -22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gadget_info_attr_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gadget_info, ptr %0, i32 0, i32 10, i32 11
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %6, label %5, !prof !9

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 391, i32 noundef 9, ptr noundef null) #15
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.gadget_info, ptr %0, i32 0, i32 7
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %11, label %10, !prof !9

10:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 392, i32 noundef 9, ptr noundef null) #15
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.gadget_info, ptr %0, i32 0, i32 8
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %16, label %15, !prof !9

15:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 393, i32 noundef 9, ptr noundef null) #15
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.gadget_info, ptr %0, i32 0, i32 9, i32 10
  %18 = load ptr, ptr %17, align 4
  tail call void @kfree(ptr noundef %18) #15
  tail call void @kfree(ptr noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_bDeviceClass_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.gadget_info, ptr %0, i32 0, i32 10, i32 9, i32 3
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_bDeviceClass_store(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  store i8 0, ptr %4, align 1, !annotation !8
  %5 = call i32 @kstrtou8(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #15
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load i8, ptr %4, align 1
  %9 = getelementptr inbounds %struct.gadget_info, ptr %0, i32 0, i32 10, i32 9, i32 3
  store i8 %8, ptr %9, align 1
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ %2, %7 ], [ %5, %3 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  ret i32 %11
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_bDeviceSubClass_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.gadget_info, ptr %0, i32 0, i32 10, i32 9, i32 4
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_bDeviceSubClass_store(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  store i8 0, ptr %4, align 1, !annotation !8
  %5 = call i32 @kstrtou8(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #15
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load i8, ptr %4, align 1
  %9 = getelementptr inbounds %struct.gadget_info, ptr %0, i32 0, i32 10, i32 9, i32 4
  store i8 %8, ptr %9, align 1
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ %2, %7 ], [ %5, %3 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  ret i32 %11
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_bDeviceProtocol_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.gadget_info, ptr %0, i32 0, i32 10, i32 9, i32 5
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_bDeviceProtocol_store(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  store i8 0, ptr %4, align 1, !annotation !8
  %5 = call i32 @kstrtou8(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #15
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load i8, ptr %4, align 1
  %9 = getelementptr inbounds %struct.gadget_info, ptr %0, i32 0, i32 10, i32 9, i32 5
  store i8 %8, ptr %9, align 1
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ %2, %7 ], [ %5, %3 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  ret i32 %11
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_bMaxPacketSize0_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.gadget_info, ptr %0, i32 0, i32 10, i32 9, i32 6
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_bMaxPacketSize0_store(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  store i8 0, ptr %4, align 1, !annotation !8
  %5 = call i32 @kstrtou8(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #15
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load i8, ptr %4, align 1
  %9 = getelementptr inbounds %struct.gadget_info, ptr %0, i32 0, i32 10, i32 9, i32 6
  store i8 %8, ptr %9, align 1
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ %2, %7 ], [ %5, %3 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  ret i32 %11
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_idVendor_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.gadget_info, ptr %0, i32 0, i32 10, i32 9, i32 7
  %4 = load i16, ptr %3, align 2
  %5 = zext i16 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_idVendor_store(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #15
  store i16 0, ptr %4, align 2, !annotation !8
  %5 = call i32 @kstrtou16(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #15
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load i16, ptr %4, align 2
  %9 = getelementptr inbounds %struct.gadget_info, ptr %0, i32 0, i32 10, i32 9, i32 7
  store i16 %8, ptr %9, align 1
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ %2, %7 ], [ %5, %3 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #15
  ret i32 %11
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_idProduct_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.gadget_info, ptr %0, i32 0, i32 10, i32 9, i32 8
  %4 = load i16, ptr %3, align 2
  %5 = zext i16 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_idProduct_store(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #15
  store i16 0, ptr %4, align 2, !annotation !8
  %5 = call i32 @kstrtou16(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #15
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load i16, ptr %4, align 2
  %9 = getelementptr inbounds %struct.gadget_info, ptr %0, i32 0, i32 10, i32 9, i32 8
  store i16 %8, ptr %9, align 1
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ %2, %7 ], [ %5, %3 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #15
  ret i32 %11
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_bcdDevice_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.gadget_info, ptr %0, i32 0, i32 10, i32 9, i32 9
  %4 = load i16, ptr %3, align 2
  %5 = zext i16 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_bcdDevice_store(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #15
  store i16 0, ptr %4, align 2, !annotation !8
  %5 = call i32 @kstrtou16(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #15
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = load i16, ptr %4, align 2
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 14
  %11 = icmp ugt i32 %10, 9
  %12 = and i32 %9, 224
  %13 = icmp ugt i32 %12, 144
  %14 = or i1 %11, %13
  %15 = and i32 %9, 3584
  %16 = icmp ugt i32 %15, 2304
  %17 = or i1 %16, %14
  %18 = icmp ugt i16 %8, -24577
  %19 = or i1 %18, %17
  br i1 %19, label %22, label %20

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.gadget_info, ptr %0, i32 0, i32 10, i32 9, i32 9
  store i16 %8, ptr %21, align 1
  br label %22

22:                                               ; preds = %20, %7, %3
  %23 = phi i32 [ %2, %20 ], [ %5, %3 ], [ -22, %7 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #15
  ret i32 %23
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_bcdUSB_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.gadget_info, ptr %0, i32 0, i32 10, i32 9, i32 2
  %4 = load i16, ptr %3, align 2
  %5 = zext i16 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_bcdUSB_store(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #15
  store i16 0, ptr %4, align 2, !annotation !8
  %5 = call i32 @kstrtou16(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #15
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = load i16, ptr %4, align 2
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 14
  %11 = icmp ugt i32 %10, 9
  %12 = and i32 %9, 224
  %13 = icmp ugt i32 %12, 144
  %14 = or i1 %11, %13
  %15 = and i32 %9, 3584
  %16 = icmp ugt i32 %15, 2304
  %17 = or i1 %16, %14
  %18 = icmp ugt i16 %8, -24577
  %19 = or i1 %18, %17
  br i1 %19, label %22, label %20

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.gadget_info, ptr %0, i32 0, i32 10, i32 9, i32 2
  store i16 %8, ptr %21, align 1
  br label %22

22:                                               ; preds = %20, %7, %3
  %23 = phi i32 [ %2, %20 ], [ %5, %3 ], [ -22, %7 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #15
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_UDC_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.gadget_info, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %3) #15
  %4 = getelementptr inbounds %struct.gadget_info, ptr %0, i32 0, i32 9, i32 10, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr @.str.1, ptr %5
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef %7)
  tail call void @mutex_unlock(ptr noundef %3) #15
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_UDC_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @strlen(ptr noundef %1)
  %5 = icmp ult i32 %4, %2
  br i1 %5, label %40, label %6

6:                                                ; preds = %3
  %7 = tail call noalias ptr @kstrdup(ptr noundef %1, i32 noundef 3264) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %40, label %9

9:                                                ; preds = %6
  %10 = add i32 %2, -1
  %11 = getelementptr i8, ptr %7, i32 %10
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 10
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i8 0, ptr %11, align 1
  br label %15

15:                                               ; preds = %14, %9
  %16 = getelementptr inbounds %struct.gadget_info, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %16) #15
  %17 = load i8, ptr %7, align 1
  %18 = icmp eq i8 %17, 0
  %19 = getelementptr inbounds %struct.gadget_info, ptr %0, i32 0, i32 9, i32 10, i32 10
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %18, label %22, label %29

22:                                               ; preds = %15
  br i1 %21, label %36, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.gadget_info, ptr %0, i32 0, i32 9, i32 10
  %25 = tail call i32 @usb_gadget_unregister_driver(ptr noundef %24) #15
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load ptr, ptr %19, align 4
  tail call void @kfree(ptr noundef %28) #15
  br label %34

29:                                               ; preds = %15
  br i1 %21, label %30, label %36

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.gadget_info, ptr %0, i32 0, i32 9, i32 10
  store ptr %7, ptr %19, align 4
  %32 = tail call i32 @usb_gadget_probe_driver(ptr noundef %31) #15
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30, %27
  %35 = phi i32 [ %2, %27 ], [ %32, %30 ]
  store ptr null, ptr %19, align 4
  br label %36

36:                                               ; preds = %34, %29, %23, %22
  %37 = phi i32 [ -16, %29 ], [ %25, %23 ], [ -19, %22 ], [ %35, %34 ]
  tail call void @kfree(ptr noundef nonnull %7) #15
  br label %38

38:                                               ; preds = %36, %30
  %39 = phi i32 [ %2, %30 ], [ %37, %36 ]
  tail call void @mutex_unlock(ptr noundef %16) #15
  br label %40

40:                                               ; preds = %38, %6, %3
  %41 = phi i32 [ -75, %3 ], [ -12, %6 ], [ %39, %38 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_probe_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_max_speed_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.gadget_info, ptr %0, i32 0, i32 9, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = tail call ptr @usb_speed_string(i32 noundef %4) #15
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_max_speed_store(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.gadget_info, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %4) #15
  %5 = getelementptr inbounds %struct.gadget_info, ptr %0, i32 0, i32 9, i32 10, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %27

8:                                                ; preds = %3
  %9 = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull dereferenceable(17) @.str.26, i32 noundef 16)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull dereferenceable(12) @.str.27, i32 noundef 11)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull dereferenceable(11) @.str.28, i32 noundef 10)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull dereferenceable(11) @.str.29, i32 noundef 10)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull dereferenceable(10) @.str.30, i32 noundef 9)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20, %17, %14, %11, %8
  %24 = phi i32 [ 6, %8 ], [ 5, %11 ], [ 3, %14 ], [ 2, %17 ], [ 1, %20 ]
  %25 = getelementptr inbounds %struct.gadget_info, ptr %0, i32 0, i32 9, i32 3
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.gadget_info, ptr %0, i32 0, i32 9, i32 10, i32 1
  store i32 %24, ptr %26, align 4
  br label %27

27:                                               ; preds = %23, %20, %3
  %28 = phi i32 [ %2, %23 ], [ -22, %20 ], [ -22, %3 ]
  tail call void @mutex_unlock(ptr noundef %4) #15
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_speed_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @function_make(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [40 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !8
  %4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 40, ptr noundef nonnull @.str.31, ptr noundef %1)
  %5 = icmp sgt i32 %4, 39
  br i1 %5, label %36, label %6

6:                                                ; preds = %2
  %7 = call ptr @strchr(ptr noundef nonnull %3, i32 noundef 46)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #17
  br label %36

11:                                               ; preds = %6
  store i8 0, ptr %7, align 1
  %12 = getelementptr i8, ptr %7, i32 1
  %13 = call ptr @usb_get_function_instance(ptr noundef nonnull %3) #15
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %36, label %15

15:                                               ; preds = %11
  %16 = call i32 (ptr, ptr, ...) @config_item_set_name(ptr noundef %13, ptr noundef nonnull @.str.31, ptr noundef %1) #15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  call void @usb_put_function_instance(ptr noundef %13) #15
  %19 = inttoptr i32 %16 to ptr
  br label %36

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.usb_function_instance, ptr %13, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = call i32 %22(ptr noundef %13, ptr noundef %12) #15
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  call void @usb_put_function_instance(ptr noundef %13) #15
  %28 = inttoptr i32 %25 to ptr
  br label %36

29:                                               ; preds = %24, %20
  %30 = getelementptr i8, ptr %0, i32 320
  call void @mutex_lock(ptr noundef %30) #15
  %31 = getelementptr inbounds %struct.usb_function_instance, ptr %13, i32 0, i32 1
  %32 = getelementptr i8, ptr %0, i32 360
  %33 = getelementptr i8, ptr %0, i32 364
  %34 = load ptr, ptr %33, align 4
  store ptr %31, ptr %33, align 4
  store ptr %32, ptr %31, align 4
  %35 = getelementptr inbounds %struct.usb_function_instance, ptr %13, i32 0, i32 1, i32 1
  store ptr %34, ptr %35, align 4
  store volatile ptr %31, ptr %34, align 4
  call void @mutex_unlock(ptr noundef %30) #15
  br label %36

36:                                               ; preds = %29, %27, %18, %11, %9, %2
  %37 = phi ptr [ %19, %18 ], [ %28, %27 ], [ %13, %29 ], [ inttoptr (i32 -22 to ptr), %9 ], [ inttoptr (i32 -36 to ptr), %2 ], [ %13, %11 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #15
  ret ptr %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @function_drop(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 320
  tail call void @mutex_lock(ptr noundef %3) #15
  %4 = getelementptr inbounds %struct.usb_function_instance, ptr %1, i32 0, i32 1
  %5 = getelementptr inbounds %struct.usb_function_instance, ptr %1, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef %3) #15
  tail call void @config_item_put(ptr noundef %1) #15
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #11

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_function_instance(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @config_desc_make(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [40 x i8], align 1
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  store i8 0, ptr %4, align 1, !annotation !8
  %5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 40, ptr noundef nonnull @.str.31, ptr noundef %1)
  %6 = icmp sgt i32 %5, 39
  br i1 %6, label %53, label %7

7:                                                ; preds = %2
  %8 = call ptr @strchr(ptr noundef nonnull %3, i32 noundef 46)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #17
  br label %53

12:                                               ; preds = %7
  store i8 0, ptr %8, align 1
  %13 = load i8, ptr %3, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %53, label %15

15:                                               ; preds = %12
  %16 = getelementptr i8, ptr %8, i32 1
  %17 = call i32 @kstrtou8(ptr noundef %16, i32 noundef 0, ptr noundef nonnull %4) #15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = inttoptr i32 %17 to ptr
  br label %53

21:                                               ; preds = %15
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %23 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 304) #16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %53, label %25

25:                                               ; preds = %21
  %26 = call noalias ptr @kstrdup(ptr noundef nonnull %3, i32 noundef 3264) #15
  %27 = getelementptr inbounds %struct.config_usb_cfg, ptr %23, i32 0, i32 3
  store ptr %26, ptr %27, align 8
  %28 = icmp eq ptr %26, null
  br i1 %28, label %50, label %29

29:                                               ; preds = %25
  %30 = load i8, ptr %4, align 1
  %31 = getelementptr inbounds %struct.config_usb_cfg, ptr %23, i32 0, i32 3, i32 5
  store i8 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.config_usb_cfg, ptr %23, i32 0, i32 3, i32 8
  store i16 2, ptr %32, align 8
  %33 = getelementptr inbounds %struct.config_usb_cfg, ptr %23, i32 0, i32 3, i32 7
  store i8 -128, ptr %33, align 2
  %34 = getelementptr inbounds %struct.config_usb_cfg, ptr %23, i32 0, i32 2
  store volatile ptr %34, ptr %34, align 8
  %35 = getelementptr inbounds %struct.config_usb_cfg, ptr %23, i32 0, i32 2, i32 1
  store ptr %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.config_usb_cfg, ptr %23, i32 0, i32 4
  store volatile ptr %36, ptr %36, align 4
  %37 = getelementptr inbounds %struct.config_usb_cfg, ptr %23, i32 0, i32 4, i32 1
  store ptr %36, ptr %37, align 8
  call void @config_group_init_type_name(ptr noundef nonnull %23, ptr noundef %1, ptr noundef nonnull @gadget_config_type) #15
  %38 = getelementptr inbounds %struct.config_usb_cfg, ptr %23, i32 0, i32 1
  call void @config_group_init_type_name(ptr noundef %38, ptr noundef nonnull @.str.10, ptr noundef nonnull @gadget_config_name_strings_type) #15
  %39 = getelementptr inbounds %struct.config_usb_cfg, ptr %23, i32 0, i32 1, i32 4
  %40 = getelementptr inbounds %struct.config_group, ptr %23, i32 0, i32 3
  %41 = getelementptr inbounds %struct.config_group, ptr %23, i32 0, i32 3, i32 1
  %42 = load ptr, ptr %41, align 4
  store ptr %39, ptr %41, align 4
  store ptr %40, ptr %39, align 8
  %43 = getelementptr inbounds %struct.config_usb_cfg, ptr %23, i32 0, i32 1, i32 4, i32 1
  store ptr %42, ptr %43, align 4
  store volatile ptr %39, ptr %42, align 4
  %44 = getelementptr i8, ptr %0, i32 456
  %45 = call i32 @usb_add_config_only(ptr noundef %44, ptr noundef %27) #15
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %29
  %48 = load ptr, ptr %27, align 8
  %49 = inttoptr i32 %45 to ptr
  br label %50

50:                                               ; preds = %47, %25
  %51 = phi ptr [ %48, %47 ], [ null, %25 ]
  %52 = phi ptr [ %49, %47 ], [ inttoptr (i32 -12 to ptr), %25 ]
  call void @kfree(ptr noundef %51) #15
  call void @kfree(ptr noundef nonnull %23) #15
  br label %53

53:                                               ; preds = %50, %29, %21, %19, %12, %10, %2
  %54 = phi ptr [ %20, %19 ], [ %52, %50 ], [ inttoptr (i32 -22 to ptr), %10 ], [ %23, %29 ], [ inttoptr (i32 -36 to ptr), %2 ], [ inttoptr (i32 -22 to ptr), %12 ], [ inttoptr (i32 -12 to ptr), %21 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #15
  ret ptr %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @config_desc_drop(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  tail call void @config_item_put(ptr noundef %1) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_config_only(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gadget_config_attr_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.config_usb_cfg, ptr %0, i32 0, i32 3, i32 11
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %6, label %5, !prof !9

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 406, i32 noundef 9, ptr noundef null) #15
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.config_usb_cfg, ptr %0, i32 0, i32 3
  %8 = getelementptr inbounds %struct.config_usb_cfg, ptr %0, i32 0, i32 3, i32 10
  %9 = getelementptr inbounds %struct.config_usb_cfg, ptr %0, i32 0, i32 3, i32 10, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  %13 = load ptr, ptr %7, align 4
  tail call void @kfree(ptr noundef %13) #15
  tail call void @kfree(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @config_usb_cfg_link(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.config_usb_cfg, ptr %0, i32 0, i32 3, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -216
  tail call void @mutex_lock(ptr noundef %5) #15
  %6 = getelementptr i8, ptr %4, i32 -176
  br label %7

7:                                                ; preds = %7, %2
  %8 = phi ptr [ %6, %2 ], [ %9, %7 ]
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 -80
  %11 = icmp eq ptr %9, %6
  %12 = icmp eq ptr %10, %1
  %13 = or i1 %11, %12
  br i1 %13, label %14, label %7

14:                                               ; preds = %7
  br i1 %12, label %15, label %35

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.config_usb_cfg, ptr %0, i32 0, i32 4
  br label %17

17:                                               ; preds = %21, %15
  %18 = phi ptr [ %16, %15 ], [ %19, %21 ]
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %16
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %19, i32 12
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %35, label %17

25:                                               ; preds = %17
  %26 = tail call ptr @usb_get_function(ptr noundef %1) #15
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = ptrtoint ptr %26 to i32
  br label %35

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.usb_function, ptr %26, i32 0, i32 22
  %32 = getelementptr inbounds %struct.config_usb_cfg, ptr %0, i32 0, i32 4, i32 1
  %33 = load ptr, ptr %32, align 4
  store ptr %31, ptr %32, align 4
  store ptr %16, ptr %31, align 4
  %34 = getelementptr inbounds %struct.usb_function, ptr %26, i32 0, i32 22, i32 1
  store ptr %33, ptr %34, align 4
  store volatile ptr %31, ptr %33, align 4
  br label %35

35:                                               ; preds = %30, %28, %21, %14
  %36 = phi i32 [ %29, %28 ], [ 0, %30 ], [ -22, %14 ], [ -17, %21 ]
  tail call void @mutex_unlock(ptr noundef %5) #15
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @config_usb_cfg_unlink(ptr noundef readonly %0, ptr noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.config_usb_cfg, ptr %0, i32 0, i32 3, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -216
  tail call void @mutex_lock(ptr noundef %5) #15
  %6 = getelementptr i8, ptr %4, i32 -16
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %4, i32 -128
  %11 = tail call i32 @usb_gadget_unregister_driver(ptr noundef %10) #15
  %12 = icmp eq i32 %11, 0
  %13 = load ptr, ptr %6, align 4
  br i1 %12, label %14, label %15

14:                                               ; preds = %9
  tail call void @kfree(ptr noundef %13) #15
  store ptr null, ptr %6, align 4
  br label %18

15:                                               ; preds = %9
  %16 = icmp eq ptr %13, null
  br i1 %16, label %18, label %17, !prof !9

17:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 481, i32 noundef 9, ptr noundef null) #15
  br label %18

18:                                               ; preds = %17, %15, %14, %2
  %19 = getelementptr inbounds %struct.config_usb_cfg, ptr %0, i32 0, i32 4
  br label %20

20:                                               ; preds = %24, %18
  %21 = phi ptr [ %19, %18 ], [ %22, %24 ]
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %19
  br i1 %23, label %34, label %24

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %22, i32 12
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %1
  br i1 %27, label %28, label %20

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %22, i32 -88
  %30 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %22, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  store ptr %31, ptr %33, align 4
  store volatile ptr %32, ptr %31, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %22, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %30, align 4
  tail call void @usb_put_function(ptr noundef %29) #15
  tail call void @mutex_unlock(ptr noundef %5) #15
  br label %35

34:                                               ; preds = %20
  tail call void @mutex_unlock(ptr noundef %5) #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 492, i32 noundef 9, ptr noundef nonnull @.str.34) #15
  br label %35

35:                                               ; preds = %34, %28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_function(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gadget_config_desc_MaxPower_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.config_usb_cfg, ptr %0, i32 0, i32 3, i32 8
  %4 = load i16, ptr %3, align 4
  %5 = zext i16 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gadget_config_desc_MaxPower_store(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #15
  store i16 0, ptr %4, align 2, !annotation !8
  %5 = call i32 @kstrtou16(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #15
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = load i16, ptr %4, align 2
  %9 = icmp ugt i16 %8, 2040
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.config_usb_cfg, ptr %0, i32 0, i32 3, i32 8
  store i16 %8, ptr %11, align 4
  br label %12

12:                                               ; preds = %10, %7, %3
  %13 = phi i32 [ %2, %10 ], [ %5, %3 ], [ -34, %7 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #15
  ret i32 %13
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gadget_config_desc_bmAttributes_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.config_usb_cfg, ptr %0, i32 0, i32 3, i32 7
  %4 = load i8, ptr %3, align 2
  %5 = zext i8 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gadget_config_desc_bmAttributes_store(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  store i8 0, ptr %4, align 1, !annotation !8
  %5 = call i32 @kstrtou8(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #15
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = load i8, ptr %4, align 1
  %9 = and i8 %8, -97
  %10 = icmp eq i8 %9, -128
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.config_usb_cfg, ptr %0, i32 0, i32 3, i32 7
  store i8 %8, ptr %12, align 2
  br label %13

13:                                               ; preds = %11, %7, %3
  %14 = phi i32 [ %2, %11 ], [ %5, %3 ], [ -22, %7 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @gadget_config_name_strings_make(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i16, align 2
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 108) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %43, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #15
  store i16 0, ptr %3, align 2, !annotation !8
  %8 = call i32 @kstrtou16(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %3) #15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i16, ptr %3, align 2
  %12 = call zeroext i1 @usb_validate_langid(i16 noundef zeroext %11) #15
  br i1 %12, label %15, label %13

13:                                               ; preds = %10, %7
  %14 = phi i32 [ -22, %10 ], [ %8, %7 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #15
  br label %40

15:                                               ; preds = %10
  %16 = load i16, ptr %3, align 2
  store i16 %16, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #15
  %17 = getelementptr inbounds %struct.gadget_config_name, ptr %5, i32 0, i32 3
  call void @config_group_init_type_name(ptr noundef %17, ptr noundef %1, ptr noundef nonnull @gadget_config_name_langid_type) #15
  %18 = getelementptr i8, ptr %0, i32 80
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %35, label %21

21:                                               ; preds = %15
  %22 = load i16, ptr %5, align 8
  br label %23

23:                                               ; preds = %29, %21
  %24 = phi ptr [ %19, %21 ], [ %31, %29 ]
  %25 = phi i32 [ 0, %21 ], [ %30, %29 ]
  %26 = getelementptr i8, ptr %24, i32 -100
  %27 = load i16, ptr %26, align 4
  %28 = icmp eq i16 %27, %22
  br i1 %28, label %40, label %29

29:                                               ; preds = %23
  %30 = add i32 %25, 1
  %31 = load ptr, ptr %24, align 4
  %32 = icmp eq ptr %31, %18
  br i1 %32, label %33, label %23

33:                                               ; preds = %29
  %34 = icmp sgt i32 %30, 1
  br i1 %34, label %40, label %35

35:                                               ; preds = %33, %15
  %36 = getelementptr inbounds %struct.gadget_config_name, ptr %5, i32 0, i32 4
  %37 = getelementptr i8, ptr %0, i32 84
  %38 = load ptr, ptr %37, align 4
  store ptr %36, ptr %37, align 4
  store ptr %18, ptr %36, align 4
  %39 = getelementptr inbounds %struct.gadget_config_name, ptr %5, i32 0, i32 4, i32 1
  store ptr %38, ptr %39, align 8
  store volatile ptr %36, ptr %38, align 4
  br label %43

40:                                               ; preds = %33, %23, %13
  %41 = phi i32 [ -75, %33 ], [ %14, %13 ], [ -17, %23 ]
  call void @kfree(ptr noundef nonnull %5) #15
  %42 = inttoptr i32 %41 to ptr
  br label %43

43:                                               ; preds = %40, %35, %2
  %44 = phi ptr [ %42, %40 ], [ %17, %35 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gadget_config_name_strings_drop(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  tail call void @config_item_put(ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gadget_config_name_attr_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -20
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %4) #15
  %5 = getelementptr i8, ptr %0, i32 80
  %6 = getelementptr i8, ptr %0, i32 84
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %7, ptr %9, align 4
  store volatile ptr %8, ptr %7, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %6, align 4
  tail call void @kfree(ptr noundef %2) #15
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gadget_config_name_configuration_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr @.str.1, ptr %4
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gadget_config_name_configuration_store(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = tail call i32 @strlen(ptr noundef %1) #15
  %6 = icmp sgt i32 %5, 126
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %4, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 127) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %10, %7
  %15 = phi ptr [ %12, %10 ], [ %8, %7 ]
  %16 = tail call ptr @strcpy(ptr noundef nonnull %15, ptr noundef %1) #15
  %17 = add i32 %5, -1
  %18 = getelementptr i8, ptr %15, i32 %17
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 10
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i8 0, ptr %18, align 1
  br label %22

22:                                               ; preds = %21, %14
  store ptr %15, ptr %4, align 4
  br label %23

23:                                               ; preds = %22, %10, %3
  %24 = phi i32 [ %2, %22 ], [ -12, %10 ], [ -75, %3 ]
  ret i32 %24
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @gadget_strings_strings_make(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i16, align 2
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 132) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %43, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #15
  store i16 0, ptr %3, align 2, !annotation !8
  %8 = call i32 @kstrtou16(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %3) #15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i16, ptr %3, align 2
  %12 = call zeroext i1 @usb_validate_langid(i16 noundef zeroext %11) #15
  br i1 %12, label %15, label %13

13:                                               ; preds = %10, %7
  %14 = phi i32 [ -22, %10 ], [ %8, %7 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #15
  br label %40

15:                                               ; preds = %10
  %16 = load i16, ptr %3, align 2
  store i16 %16, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #15
  %17 = getelementptr inbounds %struct.gadget_strings, ptr %5, i32 0, i32 5
  call void @config_group_init_type_name(ptr noundef %17, ptr noundef %1, ptr noundef nonnull @gadget_strings_langid_type) #15
  %18 = getelementptr i8, ptr %0, i32 192
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %35, label %21

21:                                               ; preds = %15
  %22 = load i16, ptr %5, align 8
  br label %23

23:                                               ; preds = %29, %21
  %24 = phi ptr [ %19, %21 ], [ %31, %29 ]
  %25 = phi i32 [ 0, %21 ], [ %30, %29 ]
  %26 = getelementptr i8, ptr %24, i32 -124
  %27 = load i16, ptr %26, align 4
  %28 = icmp eq i16 %27, %22
  br i1 %28, label %40, label %29

29:                                               ; preds = %23
  %30 = add i32 %25, 1
  %31 = load ptr, ptr %24, align 4
  %32 = icmp eq ptr %31, %18
  br i1 %32, label %33, label %23

33:                                               ; preds = %29
  %34 = icmp sgt i32 %30, 1
  br i1 %34, label %40, label %35

35:                                               ; preds = %33, %15
  %36 = getelementptr inbounds %struct.gadget_strings, ptr %5, i32 0, i32 6
  %37 = getelementptr i8, ptr %0, i32 196
  %38 = load ptr, ptr %37, align 4
  store ptr %36, ptr %37, align 4
  store ptr %18, ptr %36, align 4
  %39 = getelementptr inbounds %struct.gadget_strings, ptr %5, i32 0, i32 6, i32 1
  store ptr %38, ptr %39, align 8
  store volatile ptr %36, ptr %38, align 4
  br label %43

40:                                               ; preds = %33, %23, %13
  %41 = phi i32 [ -75, %33 ], [ %14, %13 ], [ -17, %23 ]
  call void @kfree(ptr noundef nonnull %5) #15
  %42 = inttoptr i32 %41 to ptr
  br label %43

43:                                               ; preds = %40, %35, %2
  %44 = phi ptr [ %42, %40 ], [ %17, %35 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gadget_strings_strings_drop(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  tail call void @config_item_put(ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gadget_strings_attr_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -44
  %3 = getelementptr i8, ptr %0, i32 -12
  %4 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %4) #15
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = load ptr, ptr %5, align 4
  tail call void @kfree(ptr noundef %6) #15
  %7 = getelementptr i8, ptr %0, i32 -4
  %8 = load ptr, ptr %7, align 4
  tail call void @kfree(ptr noundef %8) #15
  %9 = getelementptr i8, ptr %0, i32 80
  %10 = getelementptr i8, ptr %0, i32 84
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %12, ptr %11, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %10, align 4
  tail call void @kfree(ptr noundef %2) #15
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gadget_strings_manufacturer_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr i8, ptr %0, i32 -12
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr @.str.1, ptr %4
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gadget_strings_manufacturer_store(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -12
  %5 = tail call i32 @strlen(ptr noundef %1) #15
  %6 = icmp sgt i32 %5, 126
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %4, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 127) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %10, %7
  %15 = phi ptr [ %12, %10 ], [ %8, %7 ]
  %16 = tail call ptr @strcpy(ptr noundef nonnull %15, ptr noundef %1) #15
  %17 = add i32 %5, -1
  %18 = getelementptr i8, ptr %15, i32 %17
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 10
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i8 0, ptr %18, align 1
  br label %22

22:                                               ; preds = %21, %14
  store ptr %15, ptr %4, align 4
  br label %23

23:                                               ; preds = %22, %10, %3
  %24 = phi i32 [ %2, %22 ], [ -12, %10 ], [ -75, %3 ]
  ret i32 %24
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gadget_strings_product_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr @.str.1, ptr %4
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gadget_strings_product_store(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = tail call i32 @strlen(ptr noundef %1) #15
  %6 = icmp sgt i32 %5, 126
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %4, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 127) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %10, %7
  %15 = phi ptr [ %12, %10 ], [ %8, %7 ]
  %16 = tail call ptr @strcpy(ptr noundef nonnull %15, ptr noundef %1) #15
  %17 = add i32 %5, -1
  %18 = getelementptr i8, ptr %15, i32 %17
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 10
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i8 0, ptr %18, align 1
  br label %22

22:                                               ; preds = %21, %14
  store ptr %15, ptr %4, align 4
  br label %23

23:                                               ; preds = %22, %10, %3
  %24 = phi i32 [ %2, %22 ], [ -12, %10 ], [ -75, %3 ]
  ret i32 %24
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gadget_strings_serialnumber_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr @.str.1, ptr %4
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gadget_strings_serialnumber_store(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = tail call i32 @strlen(ptr noundef %1) #15
  %6 = icmp sgt i32 %5, 126
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %4, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 127) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %10, %7
  %15 = phi ptr [ %12, %10 ], [ %8, %7 ]
  %16 = tail call ptr @strcpy(ptr noundef nonnull %15, ptr noundef %1) #15
  %17 = add i32 %5, -1
  %18 = getelementptr i8, ptr %15, i32 %17
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 10
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i8 0, ptr %18, align 1
  br label %22

22:                                               ; preds = %21, %14
  store ptr %15, ptr %4, align 4
  br label %23

23:                                               ; preds = %22, %10, %3
  %24 = phi i32 [ %2, %22 ], [ -12, %10 ], [ -75, %3 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @os_desc_link(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 80
  tail call void @mutex_lock(ptr noundef %3) #15
  %4 = getelementptr i8, ptr %0, i32 352
  %5 = getelementptr inbounds %struct.config_usb_cfg, ptr %1, i32 0, i32 3
  br label %6

6:                                                ; preds = %6, %2
  %7 = phi ptr [ %4, %2 ], [ %8, %6 ]
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 -32
  %10 = icmp eq ptr %8, %4
  %11 = icmp eq ptr %9, %5
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %13, label %6

13:                                               ; preds = %6
  br i1 %11, label %14, label %19

14:                                               ; preds = %13
  %15 = getelementptr i8, ptr %0, i32 328
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store ptr %5, ptr %15, align 4
  br label %19

19:                                               ; preds = %18, %14, %13
  %20 = phi i32 [ 0, %18 ], [ -22, %13 ], [ -16, %14 ]
  tail call void @mutex_unlock(ptr noundef %3) #15
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @os_desc_unlink(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 80
  tail call void @mutex_lock(ptr noundef %3) #15
  %4 = getelementptr i8, ptr %0, i32 280
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 168
  %9 = tail call i32 @usb_gadget_unregister_driver(ptr noundef %8) #15
  %10 = icmp eq i32 %9, 0
  %11 = load ptr, ptr %4, align 4
  br i1 %10, label %12, label %15

12:                                               ; preds = %7
  tail call void @kfree(ptr noundef %11) #15
  store ptr null, ptr %4, align 4
  br label %13

13:                                               ; preds = %12, %2
  %14 = getelementptr i8, ptr %0, i32 328
  store ptr null, ptr %14, align 4
  br label %19

15:                                               ; preds = %7
  %16 = getelementptr i8, ptr %0, i32 328
  store ptr null, ptr %16, align 4
  %17 = icmp eq ptr %11, null
  br i1 %17, label %19, label %18, !prof !9

18:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 921, i32 noundef 9, ptr noundef null) #15
  br label %19

19:                                               ; preds = %18, %15, %13
  tail call void @mutex_unlock(ptr noundef %3) #15
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @os_desc_use_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr i8, ptr %0, i32 396
  %4 = load i8, ptr %3, align 4, !range !10
  %5 = zext i8 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @os_desc_use_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  store i8 0, ptr %4, align 1, !annotation !8
  %5 = getelementptr i8, ptr %0, i32 80
  tail call void @mutex_lock(ptr noundef %5) #15
  %6 = call i32 @kstrtobool(ptr noundef %1, ptr noundef nonnull %4) #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = load i8, ptr %4, align 1, !range !10
  %10 = getelementptr i8, ptr %0, i32 396
  store i8 %9, ptr %10, align 4
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi i32 [ %6, %3 ], [ %2, %8 ]
  call void @mutex_unlock(ptr noundef %5) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @os_desc_b_vendor_code_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr i8, ptr %0, i32 397
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @os_desc_b_vendor_code_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  store i8 0, ptr %4, align 1, !annotation !8
  %5 = getelementptr i8, ptr %0, i32 80
  tail call void @mutex_lock(ptr noundef %5) #15
  %6 = call i32 @kstrtou8(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = load i8, ptr %4, align 1
  %10 = getelementptr i8, ptr %0, i32 397
  store i8 %9, ptr %10, align 1
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi i32 [ %6, %3 ], [ %2, %8 ]
  call void @mutex_unlock(ptr noundef %5) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @os_desc_qw_sign_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 398
  %4 = tail call i32 @utf16s_to_utf8s(ptr noundef %3, i32 noundef 14, i32 noundef 1, ptr noundef %1, i32 noundef 4095) #15
  %5 = add i32 %4, 1
  %6 = getelementptr i8, ptr %1, i32 %4
  store i8 10, ptr %6, align 1
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @os_desc_qw_sign_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @llvm.smin.i32(i32 %2, i32 7)
  %5 = add i32 %4, -1
  %6 = getelementptr i8, ptr %1, i32 %5
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 10
  %9 = select i1 %8, i32 %5, i32 %4
  %10 = getelementptr i8, ptr %0, i32 80
  tail call void @mutex_lock(ptr noundef %10) #15
  %11 = getelementptr i8, ptr %0, i32 398
  %12 = tail call i32 @utf8s_to_utf16s(ptr noundef %1, i32 noundef %9, i32 noundef 1, ptr noundef %11, i32 noundef 14) #15
  %13 = icmp sgt i32 %12, 0
  %14 = select i1 %13, i32 %2, i32 %12
  tail call void @mutex_unlock(ptr noundef %10) #15
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf16s_to_utf8s(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf8s_to_utf16s(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @configfs_composite_bind(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 -40
  %4 = getelementptr i8, ptr %1, i32 128
  %5 = getelementptr i8, ptr %1, i32 248
  store i8 0, ptr %5, align 4
  store ptr %0, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 8
  store ptr %4, ptr %6, align 8
  %7 = tail call i32 @composite_dev_prepare(ptr noundef %3, ptr noundef %4) #15
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %215

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %1, i32 184
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load ptr, ptr %3, align 4
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %14) #17
  br label %213

16:                                               ; preds = %21, %9
  %17 = phi ptr [ %22, %21 ], [ %11, %9 ]
  %18 = getelementptr i8, ptr %17, i32 84
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %17, align 4
  %23 = icmp eq ptr %22, %10
  br i1 %23, label %32, label %16

24:                                               ; preds = %16
  %25 = getelementptr i8, ptr %17, i32 -32
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %17, i32 -12
  %28 = load i8, ptr %27, align 4
  %29 = zext i8 %28 to i32
  %30 = load ptr, ptr %3, align 4
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %26, i32 noundef %29, ptr noundef %30) #17
  br label %213

32:                                               ; preds = %21
  %33 = getelementptr i8, ptr %1, i32 -56
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %33
  br i1 %35, label %73, label %36

36:                                               ; preds = %32
  %37 = getelementptr i8, ptr %1, i32 -68
  br label %38

38:                                               ; preds = %38, %36
  %39 = phi ptr [ %34, %36 ], [ %55, %38 ]
  %40 = phi i32 [ 0, %36 ], [ %54, %38 ]
  %41 = getelementptr i8, ptr %39, i32 -124
  %42 = getelementptr [3 x ptr], ptr %37, i32 0, i32 %40
  store ptr %41, ptr %42, align 4
  %43 = getelementptr i8, ptr %39, i32 -116
  %44 = getelementptr i8, ptr %39, i32 -120
  store ptr %43, ptr %44, align 4
  %45 = getelementptr i8, ptr %39, i32 -92
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %39, i32 -112
  store ptr %46, ptr %47, align 4
  %48 = getelementptr i8, ptr %39, i32 -88
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr i8, ptr %39, i32 -104
  store ptr %49, ptr %50, align 4
  %51 = getelementptr i8, ptr %39, i32 -84
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr i8, ptr %39, i32 -96
  store ptr %52, ptr %53, align 4
  %54 = add i32 %40, 1
  %55 = load ptr, ptr %39, align 4
  %56 = icmp eq ptr %55, %33
  br i1 %56, label %57, label %38

57:                                               ; preds = %38
  %58 = getelementptr i8, ptr %1, i32 -68
  %59 = getelementptr [3 x ptr], ptr %58, i32 0, i32 %54
  store ptr null, ptr %59, align 4
  %60 = tail call ptr @usb_gstrings_attach(ptr noundef %4, ptr noundef %58, i32 noundef 3) #15
  %61 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %71, label %62

62:                                               ; preds = %57
  %63 = load i8, ptr %60, align 4
  %64 = getelementptr i8, ptr %1, i32 179
  store i8 %63, ptr %64, align 1
  %65 = getelementptr %struct.usb_string, ptr %60, i32 1
  %66 = load i8, ptr %65, align 4
  %67 = getelementptr i8, ptr %1, i32 180
  store i8 %66, ptr %67, align 1
  %68 = getelementptr %struct.usb_string, ptr %60, i32 2
  %69 = load i8, ptr %68, align 4
  %70 = getelementptr i8, ptr %1, i32 181
  store i8 %69, ptr %70, align 1
  br label %73

71:                                               ; preds = %57
  %72 = ptrtoint ptr %60 to i32
  br label %213

73:                                               ; preds = %62, %32
  %74 = getelementptr i8, ptr %1, i32 228
  %75 = load i8, ptr %74, align 4, !range !10
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %73
  %78 = getelementptr i8, ptr %1, i32 164
  %79 = load i8, ptr %78, align 4
  %80 = or i8 %79, 1
  store i8 %80, ptr %78, align 4
  %81 = getelementptr i8, ptr %1, i32 229
  %82 = load i8, ptr %81, align 1
  %83 = getelementptr i8, ptr %1, i32 158
  store i8 %82, ptr %83, align 2
  %84 = getelementptr i8, ptr %1, i32 144
  %85 = getelementptr i8, ptr %1, i32 230
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(14) %84, ptr noundef align 2 dereferenceable(14) %85, i32 14, i1 false)
  br label %86

86:                                               ; preds = %77, %73
  %87 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 17
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, 2
  %90 = icmp eq i32 %89, 0
  %91 = load ptr, ptr @otg_desc, align 4
  %92 = icmp ne ptr %91, null
  %93 = select i1 %90, i1 true, i1 %92
  br i1 %93, label %99, label %94

94:                                               ; preds = %86
  %95 = tail call ptr @usb_otg_descriptor_alloc(ptr noundef %0) #15
  %96 = icmp eq ptr %95, null
  br i1 %96, label %213, label %97

97:                                               ; preds = %94
  %98 = tail call i32 @usb_otg_descriptor_init(ptr noundef %0, ptr noundef nonnull %95) #15
  store ptr %95, ptr @otg_desc, align 4
  store ptr null, ptr getelementptr inbounds ([2 x ptr], ptr @otg_desc, i32 0, i32 1), align 4
  br label %99

99:                                               ; preds = %97, %86
  %100 = load ptr, ptr %10, align 4
  %101 = icmp eq ptr %100, %10
  br i1 %101, label %165, label %102

102:                                              ; preds = %161, %99
  %103 = phi ptr [ %163, %161 ], [ %100, %99 ]
  %104 = getelementptr i8, ptr %103, i32 -32
  %105 = load i32, ptr %87, align 4
  %106 = and i32 %105, 2
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %102
  %109 = getelementptr i8, ptr %103, i32 -24
  store ptr @otg_desc, ptr %109, align 4
  br label %110

110:                                              ; preds = %108, %102
  %111 = getelementptr i8, ptr %103, i32 -40
  %112 = load volatile ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, %111
  br i1 %113, label %139, label %114

114:                                              ; preds = %110
  %115 = getelementptr i8, ptr %103, i32 92
  br label %116

116:                                              ; preds = %116, %114
  %117 = phi ptr [ %112, %114 ], [ %127, %116 ]
  %118 = phi i32 [ 0, %114 ], [ %126, %116 ]
  %119 = getelementptr i8, ptr %117, i32 -100
  %120 = getelementptr [3 x ptr], ptr %115, i32 0, i32 %118
  store ptr %119, ptr %120, align 4
  %121 = getelementptr i8, ptr %117, i32 -92
  %122 = getelementptr i8, ptr %117, i32 -96
  store ptr %121, ptr %122, align 4
  %123 = getelementptr i8, ptr %117, i32 -84
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr i8, ptr %117, i32 -88
  store ptr %124, ptr %125, align 4
  %126 = add i32 %118, 1
  %127 = load ptr, ptr %117, align 4
  %128 = icmp eq ptr %127, %111
  br i1 %128, label %129, label %116

129:                                              ; preds = %116
  %130 = getelementptr i8, ptr %103, i32 92
  %131 = getelementptr [3 x ptr], ptr %130, i32 0, i32 %126
  store ptr null, ptr %131, align 4
  %132 = tail call ptr @usb_gstrings_attach(ptr noundef %4, ptr noundef %130, i32 noundef 1) #15
  %133 = icmp ugt ptr %132, inttoptr (i32 -4096 to ptr)
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = ptrtoint ptr %132 to i32
  br label %213

136:                                              ; preds = %129
  %137 = load i8, ptr %132, align 4
  %138 = getelementptr i8, ptr %103, i32 -11
  store i8 %137, ptr %138, align 1
  br label %139

139:                                              ; preds = %136, %110
  %140 = getelementptr i8, ptr %103, i32 84
  %141 = load ptr, ptr %140, align 4
  br label %142

142:                                              ; preds = %145, %139
  %143 = phi ptr [ %141, %139 ], [ %146, %145 ]
  %144 = icmp eq ptr %143, %140
  br i1 %144, label %157, label %145

145:                                              ; preds = %142
  %146 = load ptr, ptr %143, align 4
  %147 = getelementptr i8, ptr %143, i32 -88
  %148 = getelementptr inbounds %struct.list_head, ptr %143, i32 0, i32 1
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr inbounds %struct.list_head, ptr %146, i32 0, i32 1
  store ptr %149, ptr %150, align 4
  store volatile ptr %146, ptr %149, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %143, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %148, align 4
  %151 = tail call i32 @usb_add_function(ptr noundef %104, ptr noundef %147) #15
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %142, label %153

153:                                              ; preds = %145
  %154 = getelementptr inbounds %struct.list_head, ptr %143, i32 0, i32 1
  %155 = load ptr, ptr %140, align 4
  %156 = getelementptr inbounds %struct.list_head, ptr %155, i32 0, i32 1
  store ptr %143, ptr %156, align 4
  store ptr %155, ptr %143, align 4
  store ptr %140, ptr %154, align 4
  store volatile ptr %143, ptr %140, align 4
  br label %177

157:                                              ; preds = %142
  %158 = load ptr, ptr %4, align 4
  %159 = tail call i32 @usb_gadget_check_config(ptr noundef %158) #15
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %177

161:                                              ; preds = %157
  %162 = load ptr, ptr %4, align 4
  tail call void @usb_ep_autoconfig_reset(ptr noundef %162) #15
  %163 = load ptr, ptr %103, align 4
  %164 = icmp eq ptr %163, %10
  br i1 %164, label %165, label %102

165:                                              ; preds = %161, %99
  %166 = getelementptr i8, ptr %1, i32 164
  %167 = load i8, ptr %166, align 4
  %168 = and i8 %167, 1
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %175, label %170

170:                                              ; preds = %165
  %171 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 3
  %172 = load ptr, ptr %171, align 8
  %173 = tail call i32 @composite_os_desc_req_prepare(ptr noundef %4, ptr noundef %172) #15
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %170, %165
  %176 = load ptr, ptr %4, align 4
  tail call void @usb_ep_autoconfig_reset(ptr noundef %176) #15
  br label %215

177:                                              ; preds = %170, %157, %153
  %178 = phi i32 [ %173, %170 ], [ %151, %153 ], [ %159, %157 ]
  %179 = load ptr, ptr %10, align 4
  %180 = icmp eq ptr %179, %10
  br i1 %180, label %213, label %181

181:                                              ; preds = %205, %177
  %182 = phi ptr [ %211, %205 ], [ %179, %177 ]
  %183 = getelementptr i8, ptr %182, i32 -32
  %184 = getelementptr i8, ptr %182, i32 8
  %185 = getelementptr i8, ptr %182, i32 12
  %186 = load ptr, ptr %185, align 4
  %187 = icmp eq ptr %186, %184
  br i1 %187, label %205, label %188

188:                                              ; preds = %181
  %189 = getelementptr i8, ptr %182, i32 84
  br label %190

190:                                              ; preds = %203, %188
  %191 = phi ptr [ %186, %188 ], [ %193, %203 ]
  %192 = getelementptr inbounds %struct.list_head, ptr %191, i32 0, i32 1
  %193 = load ptr, ptr %192, align 4
  %194 = load ptr, ptr %191, align 4
  %195 = getelementptr inbounds %struct.list_head, ptr %194, i32 0, i32 1
  store ptr %193, ptr %195, align 4
  store volatile ptr %194, ptr %193, align 4
  %196 = load ptr, ptr %189, align 4
  %197 = getelementptr inbounds %struct.list_head, ptr %196, i32 0, i32 1
  store ptr %191, ptr %197, align 4
  store ptr %196, ptr %191, align 4
  store ptr %189, ptr %192, align 4
  store volatile ptr %191, ptr %189, align 4
  %198 = getelementptr i8, ptr %191, i32 -48
  %199 = load ptr, ptr %198, align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %203, label %201

201:                                              ; preds = %190
  %202 = getelementptr i8, ptr %191, i32 -88
  tail call void %199(ptr noundef %183, ptr noundef %202) #15
  br label %203

203:                                              ; preds = %201, %190
  %204 = icmp eq ptr %193, %184
  br i1 %204, label %205, label %190

205:                                              ; preds = %203, %181
  %206 = getelementptr i8, ptr %182, i32 16
  store i8 0, ptr %206, align 4
  %207 = getelementptr i8, ptr %182, i32 20
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(64) %207, i8 0, i32 64, i1 false) #15
  %208 = getelementptr i8, ptr %182, i32 17
  %209 = load i8, ptr %208, align 1
  %210 = and i8 %209, -16
  store i8 %210, ptr %208, align 1
  %211 = load ptr, ptr %182, align 4
  %212 = icmp eq ptr %211, %10
  br i1 %212, label %213, label %181

213:                                              ; preds = %205, %177, %134, %94, %71, %24, %13
  %214 = phi i32 [ -22, %13 ], [ %72, %71 ], [ -22, %24 ], [ -12, %94 ], [ %135, %134 ], [ %178, %177 ], [ %178, %205 ]
  tail call void @composite_dev_cleanup(ptr noundef %4) #15
  br label %215

215:                                              ; preds = %213, %175, %2
  %216 = phi i32 [ %214, %213 ], [ 0, %175 ], [ %7, %2 ]
  ret i32 %216
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @configfs_composite_unbind(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 116
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #15
  %6 = getelementptr i8, ptr %3, i32 120
  store i8 1, ptr %6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #15
  %7 = load ptr, ptr @otg_desc, align 4
  tail call void @kfree(ptr noundef %7) #15
  store ptr null, ptr @otg_desc, align 4
  %8 = getelementptr i8, ptr %3, i32 56
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %43, label %11

11:                                               ; preds = %35, %1
  %12 = phi ptr [ %41, %35 ], [ %9, %1 ]
  %13 = getelementptr i8, ptr %12, i32 -32
  %14 = getelementptr i8, ptr %12, i32 8
  %15 = getelementptr i8, ptr %12, i32 12
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %14
  br i1 %17, label %35, label %18

18:                                               ; preds = %11
  %19 = getelementptr i8, ptr %12, i32 84
  br label %20

20:                                               ; preds = %33, %18
  %21 = phi ptr [ %16, %18 ], [ %23, %33 ]
  %22 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %21, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %23, ptr %25, align 4
  store volatile ptr %24, ptr %23, align 4
  %26 = load ptr, ptr %19, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %21, ptr %27, align 4
  store ptr %26, ptr %21, align 4
  store ptr %19, ptr %22, align 4
  store volatile ptr %21, ptr %19, align 4
  %28 = getelementptr i8, ptr %21, i32 -48
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %20
  %32 = getelementptr i8, ptr %21, i32 -88
  tail call void %29(ptr noundef %13, ptr noundef %32) #15
  br label %33

33:                                               ; preds = %31, %20
  %34 = icmp eq ptr %23, %14
  br i1 %34, label %35, label %20

35:                                               ; preds = %33, %11
  %36 = getelementptr i8, ptr %12, i32 16
  store i8 0, ptr %36, align 4
  %37 = getelementptr i8, ptr %12, i32 20
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(64) %37, i8 0, i32 64, i1 false) #15
  %38 = getelementptr i8, ptr %12, i32 17
  %39 = load i8, ptr %38, align 1
  %40 = and i8 %39, -16
  store i8 %40, ptr %38, align 1
  %41 = load ptr, ptr %12, align 4
  %42 = icmp eq ptr %41, %8
  br i1 %42, label %43, label %11

43:                                               ; preds = %35, %1
  tail call void @composite_dev_cleanup(ptr noundef %3) #15
  %44 = load ptr, ptr %3, align 4
  tail call void @usb_ep_autoconfig_reset(ptr noundef %44) #15
  %45 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #15
  store ptr null, ptr %3, align 4
  store ptr null, ptr %2, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %45) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @configfs_composite_setup(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 116
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #15
  %9 = load ptr, ptr %3, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %4, i32 120
  %13 = load i8, ptr %12, align 4, !range !10
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = tail call i32 @composite_setup(ptr noundef %0, ptr noundef %1) #15
  br label %17

17:                                               ; preds = %15, %11, %6
  %18 = phi i32 [ %16, %15 ], [ 0, %11 ], [ 0, %6 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #15
  br label %19

19:                                               ; preds = %17, %2
  %20 = phi i32 [ 0, %2 ], [ %18, %17 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @configfs_composite_disconnect(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %3, i32 116
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #15
  %8 = load ptr, ptr %2, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %3, i32 120
  %12 = load i8, ptr %11, align 4, !range !10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @composite_disconnect(ptr noundef %0) #15
  br label %15

15:                                               ; preds = %14, %10, %5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #15
  br label %16

16:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @configfs_composite_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %3, i32 116
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #15
  %8 = load ptr, ptr %2, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %3, i32 120
  %12 = load i8, ptr %11, align 4, !range !10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @composite_suspend(ptr noundef %0) #15
  br label %15

15:                                               ; preds = %14, %10, %5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #15
  br label %16

16:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @configfs_composite_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %3, i32 116
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #15
  %8 = load ptr, ptr %2, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %3, i32 120
  %12 = load i8, ptr %11, align 4, !range !10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @composite_resume(ptr noundef %0) #15
  br label %15

15:                                               ; preds = %14, %10, %5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #15
  br label %16

16:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @configfs_composite_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %3, i32 116
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #15
  %8 = load ptr, ptr %2, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %3, i32 120
  %12 = load i8, ptr %11, align 4, !range !10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @composite_reset(ptr noundef %0) #15
  br label %15

15:                                               ; preds = %14, %10, %5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #15
  br label %16

16:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @composite_dev_prepare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_gstrings_attach(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_otg_descriptor_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_otg_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_function(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_check_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_autoconfig_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @composite_os_desc_req_prepare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @composite_dev_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @composite_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @composite_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @composite_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @composite_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @composite_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @configfs_unregister_subsystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #14

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }

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
