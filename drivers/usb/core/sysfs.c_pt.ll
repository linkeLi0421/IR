; ModuleID = '/llk/IR/drivers/usb/core/sysfs.c_pt.bc'
source_filename = "../drivers/usb/core/sysfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_config = type { %struct.usb_config_descriptor, ptr, [16 x ptr], [32 x ptr], [32 x ptr], ptr, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.usb_host_bos = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_ss_cap_descriptor = type { i8, i8, i8, i8, i16, i8, i8, i16 }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.62, i32 }
%union.anon.62 = type { ptr }
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }

@dev_attr_grp = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dev_attrs, ptr null }, align 4
@dev_string_attr_grp = internal constant %struct.attribute_group { ptr null, ptr @dev_string_attrs_are_visible, ptr null, ptr @dev_string_attrs, ptr null }, align 4
@usb_device_groups = dso_local local_unnamed_addr global [3 x ptr] [ptr @dev_attr_grp, ptr @dev_string_attr_grp, ptr null], align 4
@dev_bin_attr_descriptors = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.52, i16 292 }, i32 65553, ptr null, ptr null, ptr @read_descriptors, ptr null, ptr null }, align 4
@intf_attr_grp = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @intf_attrs, ptr null }, align 4
@intf_assoc_attr_grp = internal constant %struct.attribute_group { ptr null, ptr @intf_assoc_attrs_are_visible, ptr null, ptr @intf_assoc_attrs, ptr null }, align 4
@usb_interface_groups = dso_local local_unnamed_addr global [3 x ptr] [ptr @intf_attr_grp, ptr @intf_assoc_attr_grp, ptr null], align 4
@dev_attr_interface = internal global %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 292 }, ptr @interface_show, ptr null }, align 4
@dev_attrs = internal global [29 x ptr] [ptr @dev_attr_configuration, ptr @dev_attr_bNumInterfaces, ptr @dev_attr_bConfigurationValue, ptr @dev_attr_bmAttributes, ptr @dev_attr_bMaxPower, ptr @dev_attr_urbnum, ptr @dev_attr_idVendor, ptr @dev_attr_idProduct, ptr @dev_attr_bcdDevice, ptr @dev_attr_bDeviceClass, ptr @dev_attr_bDeviceSubClass, ptr @dev_attr_bDeviceProtocol, ptr @dev_attr_bNumConfigurations, ptr @dev_attr_bMaxPacketSize0, ptr @dev_attr_speed, ptr @dev_attr_rx_lanes, ptr @dev_attr_tx_lanes, ptr @dev_attr_busnum, ptr @dev_attr_devnum, ptr @dev_attr_devpath, ptr @dev_attr_version, ptr @dev_attr_maxchild, ptr @dev_attr_quirks, ptr @dev_attr_avoid_reset_quirk, ptr @dev_attr_authorized, ptr @dev_attr_remove, ptr @dev_attr_ltm_capable, ptr @dev_attr_devspec, ptr null], align 4
@dev_attr_configuration = internal global %struct.device_attribute { %struct.attribute { ptr @.str, i16 292 }, ptr @configuration_show, ptr null }, align 4
@dev_attr_bNumInterfaces = internal global %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292 }, ptr @bNumInterfaces_show, ptr null }, align 4
@dev_attr_bConfigurationValue = internal global %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 420 }, ptr @bConfigurationValue_show, ptr @bConfigurationValue_store }, align 4
@dev_attr_bmAttributes = internal global %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292 }, ptr @bmAttributes_show, ptr null }, align 4
@dev_attr_bMaxPower = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292 }, ptr @bMaxPower_show, ptr null }, align 4
@dev_attr_urbnum = internal global %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292 }, ptr @urbnum_show, ptr null }, align 4
@dev_attr_idVendor = internal global %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292 }, ptr @idVendor_show, ptr null }, align 4
@dev_attr_idProduct = internal global %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292 }, ptr @idProduct_show, ptr null }, align 4
@dev_attr_bcdDevice = internal global %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292 }, ptr @bcdDevice_show, ptr null }, align 4
@dev_attr_bDeviceClass = internal global %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292 }, ptr @bDeviceClass_show, ptr null }, align 4
@dev_attr_bDeviceSubClass = internal global %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292 }, ptr @bDeviceSubClass_show, ptr null }, align 4
@dev_attr_bDeviceProtocol = internal global %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292 }, ptr @bDeviceProtocol_show, ptr null }, align 4
@dev_attr_bNumConfigurations = internal global %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292 }, ptr @bNumConfigurations_show, ptr null }, align 4
@dev_attr_bMaxPacketSize0 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292 }, ptr @bMaxPacketSize0_show, ptr null }, align 4
@dev_attr_speed = internal global %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292 }, ptr @speed_show, ptr null }, align 4
@dev_attr_rx_lanes = internal global %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292 }, ptr @rx_lanes_show, ptr null }, align 4
@dev_attr_tx_lanes = internal global %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292 }, ptr @tx_lanes_show, ptr null }, align 4
@dev_attr_busnum = internal global %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292 }, ptr @busnum_show, ptr null }, align 4
@dev_attr_devnum = internal global %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292 }, ptr @devnum_show, ptr null }, align 4
@dev_attr_devpath = internal global %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292 }, ptr @devpath_show, ptr null }, align 4
@dev_attr_version = internal global %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292 }, ptr @version_show, ptr null }, align 4
@dev_attr_maxchild = internal global %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292 }, ptr @maxchild_show, ptr null }, align 4
@dev_attr_quirks = internal global %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292 }, ptr @quirks_show, ptr null }, align 4
@dev_attr_avoid_reset_quirk = internal global %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 420 }, ptr @avoid_reset_quirk_show, ptr @avoid_reset_quirk_store }, align 4
@dev_attr_authorized = internal global %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420 }, ptr @authorized_show, ptr @authorized_store }, align 4
@dev_attr_remove = internal global %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 128 }, ptr null, ptr @remove_store }, align 4
@dev_attr_ltm_capable = internal global %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292 }, ptr @ltm_capable_show, ptr null }, align 4
@dev_attr_devspec = internal global %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292 }, ptr @devspec_show, ptr null }, align 4
@.str = private unnamed_addr constant [14 x i8] c"configuration\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"bNumInterfaces\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%2d\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"bConfigurationValue\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"bmAttributes\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%2x\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"bMaxPower\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%dmA\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"urbnum\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"idVendor\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%04x\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"idProduct\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"bcdDevice\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"bDeviceClass\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"bDeviceSubClass\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"bDeviceProtocol\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"bNumConfigurations\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"bMaxPacketSize0\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"1.5\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"12\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"480\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"5000\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"20000\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"10000\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"rx_lanes\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"tx_lanes\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"busnum\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"devnum\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"devpath\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"%2x.%02x\0A\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"maxchild\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"quirks\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"0x%x\0A\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"avoid_reset_quirk\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"authorized\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"ltm_capable\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"devspec\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"%pOF\0A\00", align 1
@dev_string_attrs = internal global [4 x ptr] [ptr @dev_attr_manufacturer, ptr @dev_attr_product, ptr @dev_attr_serial, ptr null], align 4
@dev_attr_manufacturer = internal global %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292 }, ptr @manufacturer_show, ptr null }, align 4
@dev_attr_product = internal global %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292 }, ptr @product_show, ptr null }, align 4
@dev_attr_serial = internal global %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292 }, ptr @serial_show, ptr null }, align 4
@.str.49 = private unnamed_addr constant [13 x i8] c"manufacturer\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"product\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"descriptors\00", align 1
@dev_attr_persist = internal global %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420 }, ptr @persist_show, ptr @persist_store }, align 4
@power_group_name = external dso_local constant [0 x i8], align 1
@usb_device_type = external dso_local global %struct.device_type, align 4
@.str.53 = private unnamed_addr constant [8 x i8] c"persist\00", align 1
@power_attr_group = internal constant %struct.attribute_group { ptr @power_group_name, ptr null, ptr null, ptr @power_attrs, ptr null }, align 4
@usb2_hardware_lpm_attr_group = internal constant %struct.attribute_group { ptr @power_group_name, ptr null, ptr null, ptr @usb2_hardware_lpm_attr, ptr null }, align 4
@usb3_hardware_lpm_attr_group = internal constant %struct.attribute_group { ptr @power_group_name, ptr null, ptr null, ptr @usb3_hardware_lpm_attr, ptr null }, align 4
@power_attrs = internal global [5 x ptr] [ptr @dev_attr_autosuspend, ptr @dev_attr_level, ptr @dev_attr_connected_duration, ptr @dev_attr_active_duration, ptr null], align 4
@dev_attr_autosuspend = internal global %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 420 }, ptr @autosuspend_show, ptr @autosuspend_store }, align 4
@dev_attr_level = internal global %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 420 }, ptr @level_show, ptr @level_store }, align 4
@dev_attr_connected_duration = internal global %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292 }, ptr @connected_duration_show, ptr null }, align 4
@dev_attr_active_duration = internal global %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292 }, ptr @active_duration_show, ptr null }, align 4
@.str.54 = private unnamed_addr constant [12 x i8] c"autosuspend\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@auto_string = internal constant [5 x i8] c"auto\00", align 1
@on_string = internal constant [3 x i8] c"on\00", align 1
@warn_level.level_warned = internal unnamed_addr global i1 false, align 4
@.str.56 = private unnamed_addr constant [65 x i8] c"\014WARNING! power/level is deprecated; use power/control instead\0A\00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c"connected_duration\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.58 = private unnamed_addr constant [16 x i8] c"active_duration\00", align 1
@usb2_hardware_lpm_attr = internal global [4 x ptr] [ptr @dev_attr_usb2_hardware_lpm, ptr @dev_attr_usb2_lpm_l1_timeout, ptr @dev_attr_usb2_lpm_besl, ptr null], align 4
@dev_attr_usb2_hardware_lpm = internal global %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 420 }, ptr @usb2_hardware_lpm_show, ptr @usb2_hardware_lpm_store }, align 4
@dev_attr_usb2_lpm_l1_timeout = internal global %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 420 }, ptr @usb2_lpm_l1_timeout_show, ptr @usb2_lpm_l1_timeout_store }, align 4
@dev_attr_usb2_lpm_besl = internal global %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 420 }, ptr @usb2_lpm_besl_show, ptr @usb2_lpm_besl_store }, align 4
@.str.59 = private unnamed_addr constant [18 x i8] c"usb2_hardware_lpm\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.62 = private unnamed_addr constant [20 x i8] c"usb2_lpm_l1_timeout\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"usb2_lpm_besl\00", align 1
@usb3_hardware_lpm_attr = internal global [3 x ptr] [ptr @dev_attr_usb3_hardware_lpm_u1, ptr @dev_attr_usb3_hardware_lpm_u2, ptr null], align 4
@dev_attr_usb3_hardware_lpm_u1 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292 }, ptr @usb3_hardware_lpm_u1_show, ptr null }, align 4
@dev_attr_usb3_hardware_lpm_u2 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 292 }, ptr @usb3_hardware_lpm_u2_show, ptr null }, align 4
@.str.64 = private unnamed_addr constant [21 x i8] c"usb3_hardware_lpm_u1\00", align 1
@.str.65 = private unnamed_addr constant [21 x i8] c"usb3_hardware_lpm_u2\00", align 1
@usb_bus_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @usb_bus_attrs, ptr null }, align 4
@usb_bus_attrs = internal global [3 x ptr] [ptr @dev_attr_authorized_default, ptr @dev_attr_interface_authorized_default, ptr null], align 4
@dev_attr_authorized_default = internal global %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 420 }, ptr @authorized_default_show, ptr @authorized_default_store }, align 4
@dev_attr_interface_authorized_default = internal global %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 420 }, ptr @interface_authorized_default_show, ptr @interface_authorized_default_store }, align 4
@.str.66 = private unnamed_addr constant [19 x i8] c"authorized_default\00", align 1
@.str.67 = private unnamed_addr constant [29 x i8] c"interface_authorized_default\00", align 1
@intf_attrs = internal global [10 x ptr] [ptr @dev_attr_bInterfaceNumber, ptr @dev_attr_bAlternateSetting, ptr @dev_attr_bNumEndpoints, ptr @dev_attr_bInterfaceClass, ptr @dev_attr_bInterfaceSubClass, ptr @dev_attr_bInterfaceProtocol, ptr @dev_attr_modalias, ptr @dev_attr_supports_autosuspend, ptr @dev_attr_interface_authorized, ptr null], align 4
@dev_attr_bInterfaceNumber = internal global %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 292 }, ptr @bInterfaceNumber_show, ptr null }, align 4
@dev_attr_bAlternateSetting = internal global %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 292 }, ptr @bAlternateSetting_show, ptr null }, align 4
@dev_attr_bNumEndpoints = internal global %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292 }, ptr @bNumEndpoints_show, ptr null }, align 4
@dev_attr_bInterfaceClass = internal global %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292 }, ptr @bInterfaceClass_show, ptr null }, align 4
@dev_attr_bInterfaceSubClass = internal global %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292 }, ptr @bInterfaceSubClass_show, ptr null }, align 4
@dev_attr_bInterfaceProtocol = internal global %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 292 }, ptr @bInterfaceProtocol_show, ptr null }, align 4
@dev_attr_modalias = internal global %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 292 }, ptr @modalias_show, ptr null }, align 4
@dev_attr_supports_autosuspend = internal global %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 292 }, ptr @supports_autosuspend_show, ptr null }, align 4
@dev_attr_interface_authorized = internal global %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420 }, ptr @interface_authorized_show, ptr @interface_authorized_store }, align 4
@.str.68 = private unnamed_addr constant [17 x i8] c"bInterfaceNumber\00", align 1
@.str.69 = private unnamed_addr constant [18 x i8] c"bAlternateSetting\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"bNumEndpoints\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"bInterfaceClass\00", align 1
@.str.72 = private unnamed_addr constant [19 x i8] c"bInterfaceSubClass\00", align 1
@.str.73 = private unnamed_addr constant [19 x i8] c"bInterfaceProtocol\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"modalias\00", align 1
@.str.75 = private unnamed_addr constant [65 x i8] c"usb:v%04Xp%04Xd%04Xdc%02Xdsc%02Xdp%02Xic%02Xisc%02Xip%02Xin%02X\0A\00", align 1
@.str.76 = private unnamed_addr constant [21 x i8] c"supports_autosuspend\00", align 1
@intf_assoc_attrs = internal global [6 x ptr] [ptr @dev_attr_iad_bFirstInterface, ptr @dev_attr_iad_bInterfaceCount, ptr @dev_attr_iad_bFunctionClass, ptr @dev_attr_iad_bFunctionSubClass, ptr @dev_attr_iad_bFunctionProtocol, ptr null], align 4
@dev_attr_iad_bFirstInterface = internal global %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 292 }, ptr @iad_bFirstInterface_show, ptr null }, align 4
@dev_attr_iad_bInterfaceCount = internal global %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 292 }, ptr @iad_bInterfaceCount_show, ptr null }, align 4
@dev_attr_iad_bFunctionClass = internal global %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 292 }, ptr @iad_bFunctionClass_show, ptr null }, align 4
@dev_attr_iad_bFunctionSubClass = internal global %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 292 }, ptr @iad_bFunctionSubClass_show, ptr null }, align 4
@dev_attr_iad_bFunctionProtocol = internal global %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 292 }, ptr @iad_bFunctionProtocol_show, ptr null }, align 4
@.str.77 = private unnamed_addr constant [20 x i8] c"iad_bFirstInterface\00", align 1
@.str.78 = private unnamed_addr constant [20 x i8] c"iad_bInterfaceCount\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"%02d\0A\00", align 1
@.str.80 = private unnamed_addr constant [19 x i8] c"iad_bFunctionClass\00", align 1
@.str.81 = private unnamed_addr constant [22 x i8] c"iad_bFunctionSubClass\00", align 1
@.str.82 = private unnamed_addr constant [22 x i8] c"iad_bFunctionProtocol\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"interface\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_create_sysfs_dev_files(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  %3 = tail call i32 @device_create_bin_file(ptr noundef %2, ptr noundef nonnull @dev_bin_attr_descriptors) #10
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %52

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, @usb_device_type
  br i1 %8, label %9, label %42

9:                                                ; preds = %5
  %10 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 16, i32 3
  %11 = load i8, ptr %10, align 4
  %12 = icmp eq i8 %11, 9
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @sysfs_add_file_to_group(ptr noundef %2, ptr noundef nonnull @dev_attr_persist, ptr noundef nonnull @power_group_name) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %52

16:                                               ; preds = %13
  %17 = load ptr, ptr %6, align 8
  %18 = icmp eq ptr %17, @usb_device_type
  br i1 %18, label %19, label %42

19:                                               ; preds = %16, %9
  %20 = tail call i32 @sysfs_merge_group(ptr noundef %2, ptr noundef nonnull @power_attr_group) #10
  %21 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 28
  %22 = load i16, ptr %21, align 1
  %23 = and i16 %22, 128
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = tail call i32 @sysfs_merge_group(ptr noundef %2, ptr noundef nonnull @usb2_hardware_lpm_attr_group) #10
  br label %27

27:                                               ; preds = %25, %19
  %28 = phi i32 [ %26, %25 ], [ %20, %19 ]
  %29 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, -5
  %32 = icmp ult i32 %31, 2
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load i16, ptr %21, align 1
  %35 = and i16 %34, 64
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = tail call i32 @sysfs_merge_group(ptr noundef %2, ptr noundef nonnull @usb3_hardware_lpm_attr_group) #10
  br label %39

39:                                               ; preds = %37, %33, %27
  %40 = phi i32 [ %38, %37 ], [ %28, %33 ], [ %28, %27 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %39, %16, %5
  %43 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 11
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %63

46:                                               ; preds = %42
  %47 = load ptr, ptr %6, align 8
  %48 = icmp eq ptr %47, @usb_device_type
  br i1 %48, label %49, label %63

49:                                               ; preds = %46
  %50 = tail call i32 @sysfs_create_group(ptr noundef %2, ptr noundef nonnull @usb_bus_attr_group) #10
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %49, %39, %13, %1
  %53 = phi i32 [ %3, %1 ], [ %14, %13 ], [ %40, %39 ], [ %50, %49 ]
  %54 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 11
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15, i32 4
  %59 = load ptr, ptr %58, align 8
  %60 = icmp eq ptr %59, @usb_device_type
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  tail call void @sysfs_remove_group(ptr noundef %2, ptr noundef nonnull @usb_bus_attr_group) #10
  br label %62

62:                                               ; preds = %61, %57, %52
  tail call void @sysfs_unmerge_group(ptr noundef %2, ptr noundef nonnull @usb2_hardware_lpm_attr_group) #10
  tail call void @sysfs_unmerge_group(ptr noundef %2, ptr noundef nonnull @power_attr_group) #10
  tail call void @sysfs_remove_file_from_group(ptr noundef %2, ptr noundef nonnull @dev_attr_persist, ptr noundef nonnull @power_group_name) #10
  tail call void @device_remove_bin_file(ptr noundef %2, ptr noundef nonnull @dev_bin_attr_descriptors) #10
  br label %63

63:                                               ; preds = %62, %49, %46, %42
  %64 = phi i32 [ %53, %62 ], [ 0, %49 ], [ 0, %42 ], [ 0, %46 ]
  ret i32 %64
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_remove_sysfs_dev_files(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  %3 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15, i32 4
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, @usb_device_type
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @sysfs_remove_group(ptr noundef %2, ptr noundef nonnull @usb_bus_attr_group) #10
  br label %11

11:                                               ; preds = %10, %6, %1
  tail call void @sysfs_unmerge_group(ptr noundef %2, ptr noundef nonnull @usb2_hardware_lpm_attr_group) #10
  tail call void @sysfs_unmerge_group(ptr noundef %2, ptr noundef nonnull @power_attr_group) #10
  tail call void @sysfs_remove_file_from_group(ptr noundef %2, ptr noundef nonnull @dev_attr_persist, ptr noundef nonnull @power_group_name) #10
  tail call void @device_remove_bin_file(ptr noundef %2, ptr noundef nonnull @dev_bin_attr_descriptors) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_create_sysfs_intf_files(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -128
  %5 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 6
  %8 = load i8, ptr %7, align 8
  %9 = and i8 %8, 5
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.usb_host_interface, ptr %6, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %3, i32 672
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 8
  %22 = load i8, ptr %21, align 4
  %23 = zext i8 %22 to i32
  %24 = tail call ptr @usb_cache_string(ptr noundef %4, i32 noundef %23) #10
  store ptr %24, ptr %12, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20, %11
  %27 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7
  %28 = tail call i32 @device_create_file(ptr noundef %27, ptr noundef nonnull @dev_attr_interface) #10
  br label %29

29:                                               ; preds = %26, %20, %15
  %30 = load i8, ptr %7, align 8
  %31 = or i8 %30, 1
  store i8 %31, ptr %7, align 8
  br label %32

32:                                               ; preds = %29, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_cache_string(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_remove_sysfs_intf_files(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 6
  %3 = load i8, ptr %2, align 8
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7
  tail call void @device_remove_file(ptr noundef %7, ptr noundef nonnull @dev_attr_interface) #10
  %8 = load i8, ptr %2, align 8
  %9 = and i8 %8, -2
  store i8 %9, ptr %2, align 8
  br label %10

10:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @configuration_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  %5 = tail call i32 @mutex_lock_interruptible(ptr noundef %4) #10
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 500
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.usb_host_config, ptr %9, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %13)
  br label %17

17:                                               ; preds = %15, %11, %7
  %18 = phi i32 [ %16, %15 ], [ %5, %11 ], [ %5, %7 ]
  tail call void @mutex_unlock(ptr noundef %4) #10
  br label %19

19:                                               ; preds = %17, %3
  %20 = phi i32 [ %18, %17 ], [ -4, %3 ]
  ret i32 %20
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bNumInterfaces_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  %5 = tail call i32 @mutex_lock_interruptible(ptr noundef %4) #10
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 500
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.usb_config_descriptor, ptr %9, i32 0, i32 3
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %14)
  br label %16

16:                                               ; preds = %11, %7
  %17 = phi i32 [ %15, %11 ], [ %5, %7 ]
  tail call void @mutex_unlock(ptr noundef %4) #10
  br label %18

18:                                               ; preds = %16, %3
  %19 = phi i32 [ %17, %16 ], [ -4, %3 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bConfigurationValue_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  %5 = tail call i32 @mutex_lock_interruptible(ptr noundef %4) #10
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 500
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.usb_config_descriptor, ptr %9, i32 0, i32 4
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %14)
  br label %16

16:                                               ; preds = %11, %7
  %17 = phi i32 [ %15, %11 ], [ %5, %7 ]
  tail call void @mutex_unlock(ptr noundef %4) #10
  br label %18

18:                                               ; preds = %16, %3
  %19 = phi i32 [ %17, %16 ], [ -4, %3 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bConfigurationValue_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  %7 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef nonnull %5)
  %8 = icmp ne i32 %7, 1
  %9 = load i32, ptr %5, align 4
  %10 = icmp slt i32 %9, -1
  %11 = select i1 %8, i1 true, i1 %10
  %12 = icmp sgt i32 %9, 255
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %23, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  %16 = call i32 @mutex_lock_interruptible(ptr noundef %15) #10
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr %5, align 4
  %20 = call i32 @usb_set_configuration(ptr noundef %6, i32 noundef %19) #10
  call void @mutex_unlock(ptr noundef %15) #10
  %21 = icmp slt i32 %20, 0
  %22 = select i1 %21, i32 %20, i32 %3
  br label %23

23:                                               ; preds = %18, %14, %4
  %24 = phi i32 [ %22, %18 ], [ -22, %4 ], [ -4, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %24
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_configuration(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bmAttributes_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  %5 = tail call i32 @mutex_lock_interruptible(ptr noundef %4) #10
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 500
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.usb_config_descriptor, ptr %9, i32 0, i32 6
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %14)
  br label %16

16:                                               ; preds = %11, %7
  %17 = phi i32 [ %15, %11 ], [ %5, %7 ]
  tail call void @mutex_unlock(ptr noundef %4) #10
  br label %18

18:                                               ; preds = %16, %3
  %19 = phi i32 [ %17, %16 ], [ -4, %3 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bMaxPower_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  %5 = tail call i32 @mutex_lock_interruptible(ptr noundef %4) #10
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 500
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %0, i32 -100
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, 4
  %15 = select i1 %14, i32 8, i32 2
  %16 = getelementptr inbounds %struct.usb_config_descriptor, ptr %9, i32 0, i32 7
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i32
  %19 = mul nuw nsw i32 %15, %18
  %20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %19)
  br label %21

21:                                               ; preds = %11, %7
  %22 = phi i32 [ %20, %11 ], [ %5, %7 ]
  tail call void @mutex_unlock(ptr noundef %4) #10
  br label %23

23:                                               ; preds = %21, %3
  %24 = phi i32 [ %22, %21 ], [ -4, %3 ]
  ret i32 %24
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @urbnum_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 676
  %5 = load volatile i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @idVendor_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 480
  %5 = load i16, ptr %4, align 8
  %6 = zext i16 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @idProduct_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 482
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcdDevice_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 484
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bDeviceClass_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 476
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bDeviceSubClass_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 477
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bDeviceProtocol_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 478
  %5 = load i8, ptr %4, align 2
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bNumConfigurations_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 489
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bMaxPacketSize0_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 479
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @speed_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 -100
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %15 [
    i32 1, label %16
    i32 0, label %6
    i32 2, label %6
    i32 3, label %7
    i32 4, label %8
    i32 5, label %9
    i32 6, label %10
  ]

6:                                                ; preds = %3, %3
  br label %16

7:                                                ; preds = %3
  br label %16

8:                                                ; preds = %3
  br label %16

9:                                                ; preds = %3
  br label %16

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %0, i32 -88
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 3
  %14 = select i1 %13, ptr @.str.28, ptr @.str.29
  br label %16

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %15, %10, %9, %8, %7, %6, %3
  %17 = phi ptr [ @.str.30, %15 ], [ @.str.27, %9 ], [ @.str.26, %8 ], [ @.str.26, %7 ], [ @.str.25, %6 ], [ @.str.24, %3 ], [ %14, %10 ]
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %17)
  ret i32 %18
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rx_lanes_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 -96
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tx_lanes_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 -92
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @busnum_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 -64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.usb_bus, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devnum_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 -128
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devpath_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 -124
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef %4)
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @version_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 474
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i32
  %7 = lshr i32 %6, 8
  %8 = and i32 %6, 255
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.37, i32 noundef %7, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @maxchild_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 668
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @quirks_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 672
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.40, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @avoid_reset_quirk_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 672
  %5 = load i32, ptr %4, align 8
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @avoid_reset_quirk_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef nonnull %5)
  %7 = icmp ne i32 %6, 1
  %8 = load i32, ptr %5, align 4
  %9 = icmp slt i32 %8, 0
  %10 = select i1 %7, i1 true, i1 %9
  %11 = icmp sgt i32 %8, 1
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %25, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  %15 = call i32 @mutex_lock_interruptible(ptr noundef %14) #10
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = load i32, ptr %5, align 4
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr i8, ptr %0, i32 672
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, -17
  %23 = select i1 %19, i32 0, i32 16
  %24 = or i32 %22, %23
  store i32 %24, ptr %20, align 8
  call void @mutex_unlock(ptr noundef %14) #10
  br label %25

25:                                               ; preds = %17, %13, %4
  %26 = phi i32 [ %3, %17 ], [ -22, %4 ], [ -4, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %26
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @authorized_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 641
  %5 = load i16, ptr %4, align 1
  %6 = lshr i16 %5, 3
  %7 = and i16 %6, 1
  %8 = zext i16 %7 to i32
  %9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.5, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @authorized_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  %7 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.5, ptr noundef nonnull %5)
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %19

9:                                                ; preds = %4
  %10 = load i32, ptr %5, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = call i32 @usb_deauthorize_device(ptr noundef %6) #10
  br label %16

14:                                               ; preds = %9
  %15 = call i32 @usb_authorize_device(ptr noundef %6) #10
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %4
  %20 = phi i32 [ %17, %16 ], [ -22, %4 ]
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi i32 [ %20, %19 ], [ %3, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %22
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_deauthorize_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_authorize_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @remove_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %5) #10
  %6 = getelementptr i8, ptr %0, i32 -104
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i32 -128
  %11 = tail call i32 @usb_set_configuration(ptr noundef %10, i32 noundef -1) #10
  %12 = tail call i32 @usb_remove_device(ptr noundef %10) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %4
  br label %15

15:                                               ; preds = %14, %9
  %16 = phi i32 [ %3, %14 ], [ %12, %9 ]
  tail call void @mutex_unlock(ptr noundef %5) #10
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_remove_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ltm_capable_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 -100
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 5
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 492
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.usb_host_bos, ptr %9, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.usb_ss_cap_descriptor, ptr %13, i32 0, i32 3
  %17 = load i8, ptr %16, align 1
  %18 = and i8 %17, 2
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %11, %7, %3
  br label %21

21:                                               ; preds = %20, %15
  %22 = phi ptr [ @.str.46, %20 ], [ @.str.45, %15 ]
  %23 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %22)
  ret i32 %23
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devspec_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.48, ptr noundef %5)
  ret i32 %6
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @dev_string_attrs_are_visible(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) #5 {
  %4 = icmp eq ptr %1, @dev_attr_manufacturer
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 652
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %21

9:                                                ; preds = %3
  %10 = icmp eq ptr %1, @dev_attr_product
  br i1 %10, label %11, label %15

11:                                               ; preds = %9
  %12 = getelementptr i8, ptr %0, i32 648
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %21

15:                                               ; preds = %9
  %16 = icmp eq ptr %1, @dev_attr_serial
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = getelementptr i8, ptr %0, i32 656
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17, %15, %11, %5
  %22 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %23 = load i16, ptr %22, align 4
  br label %24

24:                                               ; preds = %21, %17, %11, %5
  %25 = phi i16 [ %23, %21 ], [ 0, %5 ], [ 0, %11 ], [ 0, %17 ]
  ret i16 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @manufacturer_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  %5 = tail call i32 @mutex_lock_interruptible(ptr noundef %4) #10
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 652
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef %9)
  tail call void @mutex_unlock(ptr noundef %4) #10
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ -4, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @product_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  %5 = tail call i32 @mutex_lock_interruptible(ptr noundef %4) #10
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 648
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef %9)
  tail call void @mutex_unlock(ptr noundef %4) #10
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ -4, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serial_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  %5 = tail call i32 @mutex_lock_interruptible(ptr noundef %4) #10
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 656
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef %9)
  tail call void @mutex_unlock(ptr noundef %4) #10
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ -4, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @read_descriptors(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3, i64 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 9
  %8 = tail call i32 @mutex_lock_interruptible(ptr noundef %7) #10
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %73, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %1, i32 489
  %12 = icmp eq i32 %5, 0
  br i1 %12, label %70, label %13

13:                                               ; preds = %10
  %14 = getelementptr i8, ptr %1, i32 632
  %15 = getelementptr i8, ptr %1, i32 496
  %16 = icmp slt i64 %4, 18
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = add nsw i64 %4, -18
  br label %27

19:                                               ; preds = %13
  %20 = getelementptr i8, ptr %1, i32 472
  %21 = trunc i64 %4 to i32
  %22 = sub i32 18, %21
  %23 = tail call i32 @llvm.umin.i32(i32 %5, i32 %22)
  %24 = getelementptr i8, ptr %20, i32 %21
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %3, ptr align 1 %24, i32 %23, i1 false)
  %25 = sub i32 %5, %23
  %26 = getelementptr i8, ptr %3, i32 %23
  br label %27

27:                                               ; preds = %19, %17
  %28 = phi i32 [ %25, %19 ], [ %5, %17 ]
  %29 = phi i64 [ 0, %19 ], [ %18, %17 ]
  %30 = phi ptr [ %26, %19 ], [ %3, %17 ]
  %31 = load i8, ptr %11, align 1
  %32 = icmp ne i8 %31, 0
  %33 = icmp ne i32 %28, 0
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %35, label %70

35:                                               ; preds = %60, %27
  %36 = phi i8 [ %61, %60 ], [ %31, %27 ]
  %37 = phi ptr [ %64, %60 ], [ %30, %27 ]
  %38 = phi i64 [ %63, %60 ], [ %29, %27 ]
  %39 = phi i32 [ %65, %60 ], [ 0, %27 ]
  %40 = phi i32 [ %62, %60 ], [ %28, %27 ]
  %41 = load ptr, ptr %15, align 8
  %42 = getelementptr %struct.usb_host_config, ptr %41, i32 %39, i32 0, i32 2
  %43 = load i16, ptr %42, align 2
  %44 = zext i16 %43 to i64
  %45 = icmp slt i64 %38, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %35
  %47 = zext i16 %43 to i32
  %48 = load ptr, ptr %14, align 8
  %49 = getelementptr ptr, ptr %48, i32 %39
  %50 = load ptr, ptr %49, align 4
  %51 = trunc i64 %38 to i32
  %52 = sub i32 %47, %51
  %53 = tail call i32 @llvm.umin.i32(i32 %40, i32 %52)
  %54 = getelementptr i8, ptr %50, i32 %51
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %37, ptr align 1 %54, i32 %53, i1 false)
  %55 = sub i32 %40, %53
  %56 = getelementptr i8, ptr %37, i32 %53
  %57 = load i8, ptr %11, align 1
  br label %60

58:                                               ; preds = %35
  %59 = sub i64 %38, %44
  br label %60

60:                                               ; preds = %58, %46
  %61 = phi i8 [ %57, %46 ], [ %36, %58 ]
  %62 = phi i32 [ %55, %46 ], [ %40, %58 ]
  %63 = phi i64 [ 0, %46 ], [ %59, %58 ]
  %64 = phi ptr [ %56, %46 ], [ %37, %58 ]
  %65 = add nuw nsw i32 %39, 1
  %66 = zext i8 %61 to i32
  %67 = icmp ult i32 %65, %66
  %68 = icmp ne i32 %62, 0
  %69 = select i1 %67, i1 %68, i1 false
  br i1 %69, label %35, label %70, !llvm.loop !9

70:                                               ; preds = %60, %27, %10
  %71 = phi i32 [ 0, %10 ], [ %28, %27 ], [ %62, %60 ]
  tail call void @mutex_unlock(ptr noundef %7) #10
  %72 = sub i32 %5, %71
  br label %73

73:                                               ; preds = %70, %6
  %74 = phi i32 [ %72, %70 ], [ -4, %6 ]
  ret i32 %74
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_add_file_to_group(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @persist_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 641
  %5 = load i16, ptr %4, align 1
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext i16 %7 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @persist_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr i8, ptr %0, i32 476
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 9
  br i1 %8, label %24, label %9

9:                                                ; preds = %4
  %10 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef nonnull %5)
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  %14 = call i32 @mutex_lock_interruptible(ptr noundef %13) #10
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = load i32, ptr %5, align 4
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr i8, ptr %0, i32 641
  %20 = load i16, ptr %19, align 1
  %21 = select i1 %18, i16 0, i16 2
  %22 = and i16 %20, -3
  %23 = or i16 %22, %21
  store i16 %23, ptr %19, align 1
  call void @mutex_unlock(ptr noundef %13) #10
  br label %24

24:                                               ; preds = %16, %12, %9, %4
  %25 = phi i32 [ %3, %16 ], [ -1, %4 ], [ -22, %9 ], [ -4, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_merge_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @autosuspend_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 21
  %5 = load i32, ptr %4, align 8
  %6 = sdiv i32 %5, 1000
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @autosuspend_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef nonnull %5)
  %7 = icmp ne i32 %6, 1
  %8 = load i32, ptr %5, align 4
  %9 = icmp sgt i32 %8, 2147482
  %10 = select i1 %7, i1 true, i1 %9
  %11 = icmp slt i32 %8, -2147482
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = mul nsw i32 %8, 1000
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %0, i32 noundef %14) #10
  br label %15

15:                                               ; preds = %13, %4
  %16 = phi i32 [ %3, %13 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @level_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = load i1, ptr @warn_level.level_warned, align 4
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  store i1 true, ptr @warn_level.level_warned, align 4
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #11
  br label %7

7:                                                ; preds = %5, %3
  %8 = getelementptr i8, ptr %0, i32 -104
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 8
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %13 = load i16, ptr %12, align 8
  %14 = and i16 %13, 128
  %15 = icmp eq i16 %14, 0
  %16 = select i1 %15, ptr @on_string, ptr @auto_string
  br label %17

17:                                               ; preds = %11, %7
  %18 = phi ptr [ @auto_string, %7 ], [ %16, %11 ]
  %19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %18)
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @level_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 -128
  %6 = load i1, ptr @warn_level.level_warned, align 4
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  store i1 true, ptr @warn_level.level_warned, align 4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #11
  br label %9

9:                                                ; preds = %7, %4
  %10 = tail call ptr @memchr(ptr noundef %2, i32 noundef 10, i32 noundef %3)
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  %12 = tail call i32 @mutex_lock_interruptible(ptr noundef %11) #10
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %9
  %15 = icmp eq ptr %10, null
  %16 = ptrtoint ptr %10 to i32
  %17 = ptrtoint ptr %2 to i32
  %18 = sub i32 %16, %17
  %19 = select i1 %15, i32 %3, i32 %18
  switch i32 %19, label %28 [
    i32 2, label %20
    i32 4, label %24
  ]

20:                                               ; preds = %14
  %21 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(3) @on_string, i32 noundef 2)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  tail call void @usb_disable_autosuspend(ptr noundef %5) #10
  br label %28

24:                                               ; preds = %14
  %25 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(5) @auto_string, i32 noundef 4)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  tail call void @usb_enable_autosuspend(ptr noundef %5) #10
  br label %28

28:                                               ; preds = %27, %24, %23, %20, %14
  %29 = phi i32 [ %3, %23 ], [ %3, %27 ], [ -22, %14 ], [ -22, %24 ], [ -22, %20 ]
  tail call void @mutex_unlock(ptr noundef %11) #10
  br label %30

30:                                               ; preds = %28, %9
  %31 = phi i32 [ %29, %28 ], [ -4, %9 ]
  ret i32 %31
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_disable_autosuspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_enable_autosuspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @connected_duration_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = getelementptr i8, ptr %0, i32 684
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %4, %6
  %8 = tail call i32 @jiffies_to_msecs(i32 noundef %7) #10
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @active_duration_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -104
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 8
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = load volatile i32, ptr @jiffies, align 64
  %9 = getelementptr i8, ptr %0, i32 680
  %10 = load i32, ptr %9, align 8
  %11 = add i32 %10, %8
  br label %15

12:                                               ; preds = %3
  %13 = getelementptr i8, ptr %0, i32 680
  %14 = load i32, ptr %13, align 8
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi i32 [ %14, %12 ], [ %11, %7 ]
  %17 = tail call i32 @jiffies_to_msecs(i32 noundef %16) #10
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %17)
  ret i32 %18
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb2_hardware_lpm_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 641
  %5 = load i16, ptr %4, align 1
  %6 = and i16 %5, 1024
  %7 = icmp eq i16 %6, 0
  %8 = select i1 %7, ptr @.str.61, ptr @.str.60
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %8)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb2_hardware_lpm_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = getelementptr i8, ptr %0, i32 -128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1, !annotation !8
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  %8 = tail call i32 @mutex_lock_interruptible(ptr noundef %7) #10
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %4
  %11 = call i32 @kstrtobool(ptr noundef %2, ptr noundef nonnull %5) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load i8, ptr %5, align 1, !range !11
  %15 = getelementptr i8, ptr %0, i32 641
  %16 = zext i8 %14 to i16
  %17 = load i16, ptr %15, align 1
  %18 = shl nuw nsw i16 %16, 10
  %19 = and i16 %17, -1025
  %20 = or i16 %19, %18
  store i16 %20, ptr %15, align 1
  %21 = icmp eq i8 %14, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %13
  %23 = call i32 @usb_enable_usb2_hardware_lpm(ptr noundef %6) #10
  br label %26

24:                                               ; preds = %13
  %25 = call i32 @usb_disable_usb2_hardware_lpm(ptr noundef %6) #10
  br label %26

26:                                               ; preds = %24, %22, %10
  %27 = phi i32 [ %11, %10 ], [ %23, %22 ], [ %25, %24 ]
  call void @mutex_unlock(ptr noundef %7) #10
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 %3, i32 %27
  br label %30

30:                                               ; preds = %26, %4
  %31 = phi i32 [ -4, %4 ], [ %29, %26 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_enable_usb2_hardware_lpm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disable_usb2_hardware_lpm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb2_lpm_l1_timeout_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 704
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb2_lpm_l1_timeout_store(ptr nocapture noundef writeonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i16 0, ptr %5, align 2, !annotation !8
  %6 = call i32 @kstrtou16(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = load i16, ptr %5, align 2
  %10 = zext i16 %9 to i32
  %11 = getelementptr i8, ptr %0, i32 704
  store i32 %10, ptr %11, align 4
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i32 [ %3, %8 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb2_lpm_besl_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 700
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb2_lpm_besl_store(ptr nocapture noundef writeonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1, !annotation !8
  %6 = call i32 @kstrtou8(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #10
  %7 = icmp ne i32 %6, 0
  %8 = load i8, ptr %5, align 1
  %9 = icmp ugt i8 %8, 15
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = zext i8 %8 to i32
  %13 = getelementptr i8, ptr %0, i32 700
  store i32 %12, ptr %13, align 4
  br label %14

14:                                               ; preds = %11, %4
  %15 = phi i32 [ %3, %11 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb3_hardware_lpm_u1_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  %5 = tail call i32 @mutex_lock_interruptible(ptr noundef %4) #10
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 641
  %9 = load i16, ptr %8, align 1
  %10 = and i16 %9, 2048
  %11 = icmp eq i16 %10, 0
  %12 = select i1 %11, ptr @.str.61, ptr @.str.60
  tail call void @mutex_unlock(ptr noundef %4) #10
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %12)
  br label %14

14:                                               ; preds = %7, %3
  %15 = phi i32 [ %13, %7 ], [ -4, %3 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb3_hardware_lpm_u2_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  %5 = tail call i32 @mutex_lock_interruptible(ptr noundef %4) #10
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 641
  %9 = load i16, ptr %8, align 1
  %10 = and i16 %9, 4096
  %11 = icmp eq i16 %10, 0
  %12 = select i1 %11, ptr @.str.61, ptr @.str.60
  tail call void @mutex_unlock(ptr noundef %4) #10
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %12)
  br label %14

14:                                               ; preds = %7, %3
  %15 = phi i32 [ %13, %7 ], [ -4, %3 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @authorized_default_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 -64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 0, i32 13
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.5, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @authorized_default_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr i8, ptr %0, i32 -64
  %7 = load ptr, ptr %6, align 8
  %8 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.5, ptr noundef nonnull %5)
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %15

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = icmp ult i32 %11, 3
  %13 = select i1 %12, i32 %11, i32 1
  %14 = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 0, i32 13
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %10, %4
  %16 = phi i32 [ %3, %10 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %16
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @interface_authorized_default_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 -64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 0, i32 12
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 7
  %9 = and i32 %8, 1
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @interface_authorized_default_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = getelementptr i8, ptr %0, i32 -64
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1, !annotation !8
  %8 = call i32 @kstrtobool(ptr noundef %2, ptr noundef nonnull %5) #10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = load i8, ptr %5, align 1, !range !11
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 0, i32 12
  br i1 %12, label %15, label %14

14:                                               ; preds = %10
  call void @_set_bit(i32 noundef 7, ptr noundef %13) #10
  br label %16

15:                                               ; preds = %10
  call void @_clear_bit(i32 noundef 7, ptr noundef %13) #10
  br label %16

16:                                               ; preds = %15, %14, %4
  %17 = phi i32 [ -22, %4 ], [ %3, %15 ], [ %3, %14 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_unmerge_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_from_group(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bInterfaceNumber_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %5, i32 0, i32 2
  %7 = load i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bAlternateSetting_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %5, i32 0, i32 3
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bNumEndpoints_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %5, i32 0, i32 4
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bInterfaceClass_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %5, i32 0, i32 5
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bInterfaceSubClass_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %5, i32 0, i32 6
  %7 = load i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bInterfaceProtocol_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %5, i32 0, i32 7
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @modalias_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 36
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 -28
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %5, i32 480
  %9 = load i16, ptr %8, align 8
  %10 = zext i16 %9 to i32
  %11 = getelementptr i8, ptr %5, i32 482
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %5, i32 484
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  %17 = getelementptr i8, ptr %5, i32 476
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i32
  %20 = getelementptr i8, ptr %5, i32 477
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = getelementptr i8, ptr %5, i32 478
  %24 = load i8, ptr %23, align 2
  %25 = zext i8 %24 to i32
  %26 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %7, i32 0, i32 5
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %7, i32 0, i32 6
  %30 = load i8, ptr %29, align 2
  %31 = zext i8 %30 to i32
  %32 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %7, i32 0, i32 7
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %7, i32 0, i32 2
  %36 = load i8, ptr %35, align 2
  %37 = zext i8 %36 to i32
  %38 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.75, i32 noundef %10, i32 noundef %13, i32 noundef %16, i32 noundef %19, i32 noundef %22, i32 noundef %25, i32 noundef %28, i32 noundef %31, i32 noundef %34, i32 noundef %37)
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @supports_autosuspend_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  %5 = tail call i32 @mutex_lock_interruptible(ptr noundef %4) #10
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %9, i32 80
  %13 = load i8, ptr %12, align 4
  %14 = lshr i8 %13, 1
  %15 = and i8 %14, 1
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %11, %7
  %18 = phi i32 [ 1, %7 ], [ %16, %11 ]
  tail call void @mutex_unlock(ptr noundef %4) #10
  %19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %18)
  br label %20

20:                                               ; preds = %17, %3
  %21 = phi i32 [ %19, %17 ], [ -4, %3 ]
  ret i32 %21
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @interface_authorized_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load i8, ptr %4, align 8
  %6 = lshr i8 %5, 7
  %7 = zext i8 %6 to i32
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @interface_authorized_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = getelementptr i8, ptr %0, i32 -32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1, !annotation !8
  %7 = call i32 @kstrtobool(ptr noundef %2, ptr noundef nonnull %5) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %4
  %10 = load i8, ptr %5, align 1, !range !11
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  call void @usb_authorize_interface(ptr noundef %6) #10
  br label %14

13:                                               ; preds = %9
  call void @usb_deauthorize_interface(ptr noundef %6) #10
  br label %14

14:                                               ; preds = %13, %12, %4
  %15 = phi i32 [ -22, %4 ], [ %3, %13 ], [ %3, %12 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_authorize_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deauthorize_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @intf_assoc_attrs_are_visible(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 -20
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %9 = load i16, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i16 [ %9, %7 ], [ 0, %3 ]
  ret i16 %11
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iad_bFirstInterface_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 -20
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %5, i32 0, i32 2
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iad_bInterfaceCount_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 -20
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %5, i32 0, i32 3
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.79, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iad_bFunctionClass_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 -20
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %5, i32 0, i32 4
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iad_bFunctionSubClass_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 -20
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %5, i32 0, i32 5
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iad_bFunctionProtocol_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 -20
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %5, i32 0, i32 6
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @interface_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_host_interface, ptr %5, i32 0, i32 4
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %7)
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi i32 [ %10, %9 ], [ 0, %3 ]
  ret i32 %12
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.peeled.count", i32 1}
!11 = !{i8 0, i8 2}
