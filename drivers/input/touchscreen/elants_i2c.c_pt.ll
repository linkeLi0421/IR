; ModuleID = '/llk/IR/drivers/input/touchscreen/elants_i2c.c_pt.bc'
source_filename = "../drivers/input/touchscreen/elants_i2c.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.elants_version_attribute = type { %struct.device_attribute, i32, i32 }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.elants_data = type { ptr, ptr, ptr, ptr, ptr, i16, i8, i8, i8, i8, i16, i8, i32, i32, i32, i32, i32, i32, %struct.touchscreen_properties, i32, i32, i32, %struct.mutex, [4 x i8], %struct.completion, i8, i8, [6 x i8], [169 x i8], [23 x i8] }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.firmware = type { i32, ptr, ptr }

@elants_i2c_id = internal constant [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"elants_i2c\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ekth3500\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ektf3624\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], align 4
@elants_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"elan,ekth3500\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"elan,ektf3624\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author247 = internal constant [40 x i8] c"author=Scott Liu <scott.liu@emc.com.tw>\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [40 x i8] c"description=Elan I2c Touchscreen driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@elants_i2c_driver = internal global %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @elants_i2c_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @elants_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @elants_i2c_pm_ops, ptr null, ptr null }, ptr @elants_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [11 x i8] c"elants_i2c\00", align 1
@elants_i2c_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @elants_i2c_suspend, ptr @elants_i2c_resume, ptr @elants_i2c_suspend, ptr @elants_i2c_resume, ptr @elants_i2c_suspend, ptr @elants_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"I2C check functionality error\0A\00", align 1
@elants_i2c_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"&ts->sysfs_mutex\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"vcc33\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Failed to get 'vcc33' regulator: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"vccio\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Failed to get 'vccio' regulator: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"failed to get reset gpio: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"failed to install power off action: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"nothing at this address\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"Failed to allocate input device\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Elan Touchscreen\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"failed to initialize MT slots: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"unable to register input device: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"Failed to register interrupt\0A\00", align 1
@elants_attribute_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @elants_attributes, ptr null }, align 4
@.str.18 = private unnamed_addr constant [39 x i8] c"failed to create sysfs attributes: %d\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"failed to enable vcc33 regulator: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"failed to enable vccio regulator: %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.22 = private unnamed_addr constant [35 x i8] c"failed to read 'hello' packet: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"invalid 'hello' packet: %*ph\0A\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"software reset failed: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"%s failed (%*ph): %d\0A\00", align 1
@__func__.elants_i2c_send = private unnamed_addr constant [16 x i8] c"elants_i2c_send\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"boot failed: %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"%s failed: %d\0A\00", align 1
@__func__.elants_i2c_read = private unnamed_addr constant [16 x i8] c"elants_i2c_read\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"read fw id\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"Invalid fw id: %#04x\0A\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"(%s): invalid command: %*ph\0A\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"(%s) I2C transfer failed: %pe\0A\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"(%s) unexpected response: %*ph\0A\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"read BC version\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"read fw version\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"Invalid fw ver: %#04x\0A\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"read test version\00", align 1
@.str.37 = private unnamed_addr constant [29 x i8] c"Failed to read test version\0A\00", align 1
@__const.elants_i2c_query_ts_info_ekth.get_resolution_cmd = private unnamed_addr constant [6 x i8] c"[\00\00\00\00\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"get resolution\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"get osr\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"get physical scan\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"get physical drive\00", align 1
@.str.42 = private unnamed_addr constant [39 x i8] c"invalid trace number data: %d, %d, %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"get X size\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"get Y size\00", align 1
@__const.elants_i2c_irq.wait_packet = private unnamed_addr constant [4 x i8] c"dddd", align 1
@.str.45 = private unnamed_addr constant [29 x i8] c"%s: failed to read data: %d\0A\00", align 1
@__func__.elants_i2c_irq = private unnamed_addr constant [15 x i8] c"elants_i2c_irq\00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"invalid wait packet %*ph\0A\00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"bad report count: %*ph\0A\00", align 1
@elants_i2c_irq.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.48 = private unnamed_addr constant [33 x i8] c"mismatching report length: %*ph\0A\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"unknown packet %*ph\0A\00", align 1
@.str.50 = private unnamed_addr constant [53 x i8] c"%s: invalid checksum for packet %02x: %02x vs. %02x\0A\00", align 1
@__func__.elants_i2c_event = private unnamed_addr constant [17 x i8] c"elants_i2c_event\00", align 1
@.str.51 = private unnamed_addr constant [31 x i8] c"%s: unknown packet type: %02x\0A\00", align 1
@elants_attributes = internal global [11 x ptr] [ptr @dev_attr_calibrate, ptr @dev_attr_update_fw, ptr @dev_attr_iap_mode, ptr @dev_attr_calibration_count, ptr @elants_ver_attr_fw_version, ptr @elants_ver_attr_hw_version, ptr @elants_ver_attr_test_version, ptr @elants_ver_attr_solution_version, ptr @elants_ver_attr_bc_version, ptr @elants_ver_attr_iap_version, ptr null], align 4
@dev_attr_calibrate = internal global %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 128 }, ptr null, ptr @calibrate_store }, align 4
@dev_attr_update_fw = internal global %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 128 }, ptr null, ptr @write_update_fw }, align 4
@dev_attr_iap_mode = internal global %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 292 }, ptr @show_iap_mode, ptr null }, align 4
@dev_attr_calibration_count = internal global %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 292 }, ptr @show_calibration_count, ptr null }, align 4
@elants_ver_attr_fw_version = internal global %struct.elants_version_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 292 }, ptr @elants_version_attribute_show, ptr null }, i32 20, i32 2 }, align 4
@elants_ver_attr_hw_version = internal global %struct.elants_version_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 292 }, ptr @elants_version_attribute_show, ptr null }, i32 26, i32 2 }, align 4
@elants_ver_attr_test_version = internal global %struct.elants_version_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 292 }, ptr @elants_version_attribute_show, ptr null }, i32 22, i32 1 }, align 4
@elants_ver_attr_solution_version = internal global %struct.elants_version_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.89, i16 292 }, ptr @elants_version_attribute_show, ptr null }, i32 23, i32 1 }, align 4
@elants_ver_attr_bc_version = internal global %struct.elants_version_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 292 }, ptr @elants_version_attribute_show, ptr null }, i32 24, i32 1 }, align 4
@elants_ver_attr_iap_version = internal global %struct.elants_version_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.91, i16 292 }, ptr @elants_version_attribute_show, ptr null }, i32 25, i32 1 }, align 4
@.str.52 = private unnamed_addr constant [10 x i8] c"calibrate\00", align 1
@elants_i2c_calibrate.w_flashkey = internal constant [4 x i8] c"T\C0\E1Z", align 1
@elants_i2c_calibrate.rek = internal constant [4 x i8] c"T)\00\01", align 1
@elants_i2c_calibrate.rek_resp = internal constant [4 x i8] c"ffff", align 1
@.str.53 = private unnamed_addr constant [53 x i8] c"error while waiting for calibration to complete: %d\0A\00", align 1
@.str.54 = private unnamed_addr constant [39 x i8] c"unexpected calibration response: %*ph\0A\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"update_fw\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"elants_i2c_%04x.bin\00", align 1
@.str.57 = private unnamed_addr constant [25 x i8] c"requesting fw name = %s\0A\00", align 1
@.str.58 = private unnamed_addr constant [32 x i8] c"failed to request firmware: %d\0A\00", align 1
@.str.59 = private unnamed_addr constant [30 x i8] c"invalid firmware length: %zu\0A\00", align 1
@.str.60 = private unnamed_addr constant [28 x i8] c"firmware update failed: %d\0A\00", align 1
@.str.62 = private unnamed_addr constant [30 x i8] c"failed to enter IAP mode: %d\0A\00", align 1
@.str.63 = private unnamed_addr constant [23 x i8] c"Failed close idle: %d\0A\00", align 1
@.str.64 = private unnamed_addr constant [40 x i8] c"failed to read IAP acknowledgement: %d\0A\00", align 1
@.str.65 = private unnamed_addr constant [43 x i8] c"failed to enter IAP: %*ph (expected %*ph)\0A\00", align 1
@.str.66 = private unnamed_addr constant [30 x i8] c"successfully entered IAP mode\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"sending dummy byte failed: %d\0A\00", align 1
@.str.68 = private unnamed_addr constant [38 x i8] c"clearing of the last page failed: %d\0A\00", align 1
@.str.69 = private unnamed_addr constant [51 x i8] c"failed to read ACK for clearing the last page: %d\0A\00", align 1
@.str.70 = private unnamed_addr constant [32 x i8] c"failed to write FW page %d: %d\0A\00", align 1
@.str.71 = private unnamed_addr constant [27 x i8] c"firmware update completed\0A\00", align 1
@__const.elants_i2c_validate_remark_id.cmd = private unnamed_addr constant [6 x i8] c"\96\80\1F\00\00!", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"read Remark ID\00", align 1
@.str.73 = private unnamed_addr constant [65 x i8] c"Remark ID Mismatched: ts_remark_id=0x%04x, fw_remark_id=0x%04x.\0A\00", align 1
@__const.elants_i2c_fw_write_page.ack_ok = private unnamed_addr constant [2 x i8] c"\AA\AA", align 1
@.str.74 = private unnamed_addr constant [27 x i8] c"IAP Write Page failed: %d\0A\00", align 1
@.str.75 = private unnamed_addr constant [25 x i8] c"IAP Ack read failed: %d\0A\00", align 1
@.str.76 = private unnamed_addr constant [31 x i8] c"IAP Get Ack Error [%02x:%02x]\0A\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"iap_mode\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"Recovery\00", align 1
@.str.81 = private unnamed_addr constant [18 x i8] c"calibration_count\00", align 1
@.str.82 = private unnamed_addr constant [16 x i8] c"read ReK status\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"0x%04x\0A\00", align 1
@.str.85 = private unnamed_addr constant [11 x i8] c"fw_version\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"%0*x\0A\00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"hw_version\00", align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"test_version\00", align 1
@.str.89 = private unnamed_addr constant [17 x i8] c"solution_version\00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"bc_version\00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"iap_version\00", align 1
@.str.92 = private unnamed_addr constant [28 x i8] c"suspend command failed: %d\0A\00", align 1
@.str.93 = private unnamed_addr constant [27 x i8] c"resume command failed: %d\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_license249], section "llvm.metadata"

@__mod_i2c__elants_i2c_id_device_table = dso_local alias [4 x %struct.i2c_device_id], ptr @elants_i2c_id
@__mod_of__elants_of_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @elants_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @elants_i2c_driver) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @elants_i2c_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elants_i2c_probe(ptr noundef %0) #2 {
  %2 = alloca %union.i2c_smbus_data, align 2
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(34) %2, i8 0, i32 34, i1 false), !annotation !8
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.i2c_algorithm, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %5) #11
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #12
  br label %186

14:                                               ; preds = %1
  %15 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 320, i32 noundef 3520) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %186, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.elants_data, ptr %15, i32 0, i32 22
  tail call void @__mutex_init(ptr noundef %18, ptr noundef nonnull @.str.3, ptr noundef nonnull @elants_i2c_probe.__key) #11
  %19 = getelementptr inbounds %struct.elants_data, ptr %15, i32 0, i32 24
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.elants_data, ptr %15, i32 0, i32 24, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %20, ptr noundef nonnull @.str.19, ptr noundef nonnull @init_completion.__key) #11
  store ptr %0, ptr %15, align 64
  %21 = tail call ptr @device_get_match_data(ptr noundef %3) #11
  %22 = ptrtoint ptr %21 to i32
  %23 = getelementptr inbounds %struct.elants_data, ptr %15, i32 0, i32 20
  store i32 %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %15, ptr %24, align 8
  %25 = tail call ptr @devm_regulator_get(ptr noundef %3, ptr noundef nonnull @.str.4) #11
  %26 = getelementptr inbounds %struct.elants_data, ptr %15, i32 0, i32 2
  store ptr %25, ptr %26, align 8
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %32

28:                                               ; preds = %17
  %29 = icmp eq ptr %25, inttoptr (i32 -517 to ptr)
  br i1 %29, label %186, label %30

30:                                               ; preds = %28
  %31 = ptrtoint ptr %25 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %31) #12
  br label %186

32:                                               ; preds = %17
  %33 = tail call ptr @devm_regulator_get(ptr noundef %3, ptr noundef nonnull @.str.6) #11
  %34 = getelementptr inbounds %struct.elants_data, ptr %15, i32 0, i32 3
  store ptr %33, ptr %34, align 4
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = icmp eq ptr %33, inttoptr (i32 -517 to ptr)
  br i1 %37, label %186, label %38

38:                                               ; preds = %36
  %39 = ptrtoint ptr %33 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %39) #12
  br label %186

40:                                               ; preds = %32
  %41 = tail call ptr @devm_gpiod_get(ptr noundef %3, ptr noundef nonnull @.str.8, i32 noundef 3) #11
  %42 = getelementptr inbounds %struct.elants_data, ptr %15, i32 0, i32 4
  store ptr %41, ptr %42, align 16
  %43 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = ptrtoint ptr %41 to i32
  switch i32 %45, label %46 [
    i32 -517, label %186
    i32 -2, label %47
    i32 -38, label %47
  ]

46:                                               ; preds = %44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %45) #12
  br label %186

47:                                               ; preds = %44, %44
  %48 = getelementptr inbounds %struct.elants_data, ptr %15, i32 0, i32 26
  store i8 1, ptr %48, align 1
  br label %49

49:                                               ; preds = %47, %40
  %50 = tail call fastcc i32 @elants_i2c_power_on(ptr noundef nonnull %15)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %186

52:                                               ; preds = %49
  %53 = tail call i32 @devm_add_action(ptr noundef %3, ptr noundef nonnull @elants_i2c_power_off, ptr noundef nonnull %15) #11
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr %42, align 16
  %57 = icmp eq ptr %56, null
  %58 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  %59 = or i1 %57, %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %56, i32 noundef 1) #11
  %61 = load ptr, ptr %34, align 4
  %62 = tail call i32 @regulator_disable(ptr noundef %61) #11
  %63 = load ptr, ptr %26, align 8
  %64 = tail call i32 @regulator_disable(ptr noundef %63) #11
  br label %65

65:                                               ; preds = %60, %55
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10, i32 noundef %53) #12
  br label %186

66:                                               ; preds = %52
  %67 = load ptr, ptr %4, align 8
  %68 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %69 = load i16, ptr %68, align 2
  %70 = call i32 @i2c_smbus_xfer(ptr noundef %67, i16 noundef zeroext %69, i16 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 1, ptr noundef nonnull %2) #11
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.11) #12
  br label %186

73:                                               ; preds = %66
  call fastcc void @elants_i2c_initialize(ptr noundef nonnull %15)
  %74 = call ptr @devm_input_allocate_device(ptr noundef %3) #11
  %75 = getelementptr inbounds %struct.elants_data, ptr %15, i32 0, i32 1
  store ptr %74, ptr %75, align 4
  %76 = icmp eq ptr %74, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.13) #12
  br label %186

78:                                               ; preds = %73
  store ptr @.str.14, ptr %74, align 8
  %79 = load ptr, ptr %75, align 4
  %80 = getelementptr inbounds %struct.input_dev, ptr %79, i32 0, i32 3
  store i16 24, ptr %80, align 4
  %81 = load ptr, ptr %75, align 4
  %82 = getelementptr inbounds %struct.elants_data, ptr %15, i32 0, i32 14
  %83 = load i32, ptr %82, align 8
  call void @input_set_abs_params(ptr noundef %81, i32 noundef 53, i32 noundef 0, i32 noundef %83, i32 noundef 0, i32 noundef 0) #11
  %84 = load ptr, ptr %75, align 4
  %85 = getelementptr inbounds %struct.elants_data, ptr %15, i32 0, i32 15
  %86 = load i32, ptr %85, align 4
  call void @input_set_abs_params(ptr noundef %84, i32 noundef 54, i32 noundef 0, i32 noundef %86, i32 noundef 0, i32 noundef 0) #11
  %87 = load ptr, ptr %75, align 4
  call void @input_set_abs_params(ptr noundef %87, i32 noundef 48, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #11
  %88 = load ptr, ptr %75, align 4
  call void @input_set_abs_params(ptr noundef %88, i32 noundef 58, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #11
  %89 = load ptr, ptr %75, align 4
  call void @input_set_abs_params(ptr noundef %89, i32 noundef 55, i32 noundef 0, i32 noundef 2, i32 noundef 0, i32 noundef 0) #11
  %90 = load ptr, ptr %75, align 4
  %91 = getelementptr inbounds %struct.elants_data, ptr %15, i32 0, i32 18
  call void @touchscreen_parse_properties(ptr noundef %90, i1 noundef zeroext true, ptr noundef %91) #11
  %92 = load i32, ptr %23, align 8
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %114

94:                                               ; preds = %78
  %95 = getelementptr inbounds %struct.elants_data, ptr %15, i32 0, i32 16
  %96 = load i32, ptr %95, align 16
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %114, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.elants_data, ptr %15, i32 0, i32 17
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %114, label %102

102:                                              ; preds = %98
  %103 = load i32, ptr %91, align 8
  %104 = lshr i32 %96, 1
  %105 = add i32 %103, %104
  %106 = udiv i32 %105, %96
  %107 = getelementptr inbounds %struct.elants_data, ptr %15, i32 0, i32 12
  store i32 %106, ptr %107, align 32
  %108 = getelementptr inbounds %struct.elants_data, ptr %15, i32 0, i32 18, i32 1
  %109 = load i32, ptr %108, align 4
  %110 = lshr i32 %100, 1
  %111 = add i32 %109, %110
  %112 = udiv i32 %111, %100
  %113 = getelementptr inbounds %struct.elants_data, ptr %15, i32 0, i32 13
  store i32 %112, ptr %113, align 4
  br label %114

114:                                              ; preds = %102, %98, %94, %78
  %115 = load ptr, ptr %75, align 4
  %116 = getelementptr inbounds %struct.elants_data, ptr %15, i32 0, i32 12
  %117 = load i32, ptr %116, align 32
  call void @input_alloc_absinfo(ptr noundef %115) #11
  %118 = getelementptr inbounds %struct.input_dev, ptr %115, i32 0, i32 26
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %114
  %122 = getelementptr %struct.input_absinfo, ptr %119, i32 53, i32 5
  store i32 %117, ptr %122, align 4
  br label %123

123:                                              ; preds = %121, %114
  %124 = load ptr, ptr %75, align 4
  %125 = getelementptr inbounds %struct.elants_data, ptr %15, i32 0, i32 13
  %126 = load i32, ptr %125, align 4
  call void @input_alloc_absinfo(ptr noundef %124) #11
  %127 = getelementptr inbounds %struct.input_dev, ptr %124, i32 0, i32 26
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %132, label %130

130:                                              ; preds = %123
  %131 = getelementptr %struct.input_absinfo, ptr %128, i32 54, i32 5
  store i32 %126, ptr %131, align 4
  br label %132

132:                                              ; preds = %130, %123
  %133 = load ptr, ptr %75, align 4
  %134 = getelementptr inbounds %struct.elants_data, ptr %15, i32 0, i32 11
  %135 = load i8, ptr %134, align 4
  call void @input_alloc_absinfo(ptr noundef %133) #11
  %136 = getelementptr inbounds %struct.input_dev, ptr %133, i32 0, i32 26
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %132
  %140 = zext i8 %135 to i32
  %141 = getelementptr %struct.input_absinfo, ptr %137, i32 48, i32 5
  store i32 %140, ptr %141, align 4
  br label %142

142:                                              ; preds = %139, %132
  %143 = load ptr, ptr %75, align 4
  %144 = call i32 @input_mt_init_slots(ptr noundef %143, i32 noundef 10, i32 noundef 6) #11
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %142
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.15, i32 noundef %144) #12
  br label %186

147:                                              ; preds = %142
  %148 = load ptr, ptr %75, align 4
  %149 = call i32 @input_register_device(ptr noundef %148) #11
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %147
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.16, i32 noundef %149) #12
  br label %186

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %154 = load i32, ptr %153, align 4
  %155 = call ptr @irq_get_irq_data(i32 noundef %154) #11
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = load i32, ptr %153, align 4
  br label %167

159:                                              ; preds = %152
  %160 = getelementptr inbounds %struct.irq_data, ptr %155, i32 0, i32 3
  %161 = load ptr, ptr %160, align 4
  %162 = load i32, ptr %161, align 4
  %163 = and i32 %162, 15
  %164 = icmp eq i32 %163, 0
  %165 = load i32, ptr %153, align 4
  %166 = or i32 %163, 8192
  br i1 %164, label %167, label %169

167:                                              ; preds = %159, %157
  %168 = phi i32 [ %158, %157 ], [ %165, %159 ]
  br label %169

169:                                              ; preds = %167, %159
  %170 = phi i32 [ %168, %167 ], [ %165, %159 ]
  %171 = phi i32 [ 8194, %167 ], [ %166, %159 ]
  %172 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 2
  %173 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %170, ptr noundef null, ptr noundef nonnull @elants_i2c_irq, i32 noundef %171, ptr noundef %172, ptr noundef nonnull %15) #11
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %169
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.17) #12
  br label %186

176:                                              ; preds = %169
  %177 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %178 = load ptr, ptr %177, align 8
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %182

180:                                              ; preds = %176
  %181 = call i32 @device_init_wakeup(ptr noundef %3, i1 noundef zeroext true) #11
  br label %182

182:                                              ; preds = %180, %176
  %183 = call i32 @devm_device_add_group(ptr noundef %3, ptr noundef nonnull @elants_attribute_group) #11
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %182
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.18, i32 noundef %183) #12
  br label %186

186:                                              ; preds = %185, %182, %175, %151, %146, %77, %72, %65, %49, %46, %44, %38, %36, %30, %28, %14, %13
  %187 = phi i32 [ %45, %46 ], [ %53, %65 ], [ -6, %72 ], [ %144, %146 ], [ %149, %151 ], [ %173, %175 ], [ %183, %185 ], [ -12, %77 ], [ -6, %13 ], [ -12, %14 ], [ %31, %30 ], [ -517, %28 ], [ %39, %38 ], [ -517, %36 ], [ %45, %44 ], [ %50, %49 ], [ 0, %182 ]
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %2) #11
  ret i32 %187
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @elants_i2c_power_on(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.elants_data, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 16
  %4 = icmp eq ptr %3, null
  %5 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %31, label %7

7:                                                ; preds = %1
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %3, i32 noundef 1) #11
  %8 = getelementptr inbounds %struct.elants_data, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @regulator_enable(ptr noundef %9) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %0, align 64
  %14 = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.20, i32 noundef %10) #12
  br label %25

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.elants_data, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @regulator_enable(ptr noundef %17) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %0, align 64
  %22 = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.21, i32 noundef %18) #12
  %23 = load ptr, ptr %8, align 8
  %24 = tail call i32 @regulator_disable(ptr noundef %23) #11
  br label %25

25:                                               ; preds = %20, %12
  %26 = phi i32 [ %18, %20 ], [ %10, %12 ]
  %27 = load ptr, ptr %2, align 16
  tail call void @gpiod_set_value_cansleep(ptr noundef %27, i32 noundef 0) #11
  br label %31

28:                                               ; preds = %15
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 107374000) #11
  %30 = load ptr, ptr %2, align 16
  tail call void @gpiod_set_value_cansleep(ptr noundef %30, i32 noundef 0) #11
  tail call void @msleep(i32 noundef 20) #11
  br label %31

31:                                               ; preds = %28, %25, %1
  %32 = phi i32 [ 0, %28 ], [ 0, %1 ], [ %26, %25 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @elants_i2c_power_off(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.elants_data, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 16
  %4 = icmp eq ptr %3, null
  %5 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %3, i32 noundef 1) #11
  %8 = getelementptr inbounds %struct.elants_data, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @regulator_disable(ptr noundef %9) #11
  %11 = getelementptr inbounds %struct.elants_data, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 @regulator_disable(ptr noundef %12) #11
  br label %14

14:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_xfer(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @elants_i2c_initialize(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca [4 x i8], align 4
  %3 = alloca [4 x i8], align 4
  %4 = alloca [4 x i8], align 4
  %5 = alloca [17 x i8], align 1
  %6 = alloca [6 x i8], align 1
  %7 = alloca [4 x i8], align 4
  %8 = alloca [4 x i8], align 4
  %9 = alloca [4 x i8], align 4
  %10 = alloca [4 x i8], align 4
  %11 = alloca [4 x i8], align 4
  %12 = alloca [4 x i8], align 4
  %13 = alloca [4 x i8], align 4
  %14 = alloca [4 x i8], align 4
  %15 = alloca [4 x i8], align 4
  %16 = alloca [4 x i8], align 4
  %17 = alloca [4 x i8], align 4
  %18 = alloca [4 x i8], align 4
  %19 = alloca [4 x i8], align 4
  %20 = alloca [4 x i8], align 4
  %21 = load ptr, ptr %0, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #11
  store i32 0, ptr %20, align 4, !annotation !8
  %22 = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  br label %23

23:                                               ; preds = %52, %1
  %24 = phi i32 [ 0, %1 ], [ %54, %52 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #11
  store i32 2004318071, ptr %19, align 4
  %25 = call i32 @i2c_transfer_buffer_flags(ptr noundef %21, ptr noundef nonnull %19, i32 noundef 4, i16 noundef zeroext 0) #11
  %26 = icmp eq i32 %25, 4
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  call void @msleep(i32 noundef 30) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #11
  %28 = icmp ne i32 %24, 2
  br label %33

29:                                               ; preds = %23
  %30 = icmp sgt i32 %25, -1
  %31 = select i1 %30, i32 -5, i32 %25
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.elants_i2c_send, i32 noundef 4, ptr noundef nonnull %19, i32 noundef %31) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef %31) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #11
  %32 = icmp eq i32 %24, 2
  br i1 %32, label %33, label %52

33:                                               ; preds = %29, %27
  %34 = phi i1 [ %28, %27 ], [ false, %29 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #11
  store i32 1852399949, ptr %18, align 4
  %35 = call i32 @i2c_transfer_buffer_flags(ptr noundef %21, ptr noundef nonnull %18, i32 noundef 4, i16 noundef zeroext 0) #11
  %36 = icmp eq i32 %35, 4
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #11
  br label %41

38:                                               ; preds = %33
  %39 = icmp sgt i32 %35, -1
  %40 = select i1 %39, i32 -5, i32 %35
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.elants_i2c_send, i32 noundef 4, ptr noundef nonnull %18, i32 noundef %40) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.26, i32 noundef %40) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #11
  br i1 %34, label %52, label %41

41:                                               ; preds = %38, %37
  call void @msleep(i32 noundef 50) #11
  %42 = call i32 @i2c_transfer_buffer_flags(ptr noundef %21, ptr noundef nonnull %20, i32 noundef 4, i16 noundef zeroext 1) #11
  %43 = icmp eq i32 %42, 4
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = icmp sgt i32 %42, -1
  %46 = select i1 %45, i32 -5, i32 %42
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.elants_i2c_read, i32 noundef %46) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.22, i32 noundef %46) #12
  br label %52

47:                                               ; preds = %41
  %48 = load i32, ptr %20, align 4
  switch i32 %48, label %51 [
    i32 1431655765, label %49
    i32 -2139073195, label %56
  ]

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.elants_data, ptr %0, i32 0, i32 21
  store i32 0, ptr %50, align 4
  br label %56

51:                                               ; preds = %47
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef nonnull %20) #12
  br label %52

52:                                               ; preds = %51, %44, %38, %29
  %53 = phi i32 [ %31, %29 ], [ %40, %38 ], [ %46, %44 ], [ -22, %51 ]
  %54 = add nuw nsw i32 %24, 1
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %56, label %23

56:                                               ; preds = %52, %49, %47
  %57 = phi i32 [ 0, %49 ], [ -5, %47 ], [ %53, %52 ]
  %58 = load ptr, ptr %0, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #11
  store i32 16838739, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #11
  store i32 0, ptr %17, align 4, !annotation !8
  %59 = getelementptr inbounds %struct.elants_data, ptr %0, i32 0, i32 10
  %60 = call fastcc i32 @elants_i2c_execute_command(ptr noundef %58, ptr noundef nonnull %16, i32 noundef 4, ptr noundef nonnull %17, i32 noundef 4, i32 noundef 1, ptr noundef nonnull @.str.28) #11
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %88

62:                                               ; preds = %56
  %63 = load i32, ptr %17, align 4
  %64 = call i32 @llvm.bswap.i32(i32 %63) #11
  %65 = lshr i32 %64, 4
  %66 = trunc i32 %65 to i16
  store i16 %66, ptr %59, align 2
  %67 = icmp eq i16 %66, -1
  br i1 %67, label %68, label %90

68:                                               ; preds = %62
  %69 = call fastcc i32 @elants_i2c_execute_command(ptr noundef %58, ptr noundef nonnull %16, i32 noundef 4, ptr noundef nonnull %17, i32 noundef 4, i32 noundef 1, ptr noundef nonnull @.str.28) #11
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %68
  %72 = load i32, ptr %17, align 4
  %73 = call i32 @llvm.bswap.i32(i32 %72) #11
  %74 = lshr i32 %73, 4
  %75 = trunc i32 %74 to i16
  store i16 %75, ptr %59, align 2
  %76 = icmp eq i16 %75, -1
  br i1 %76, label %77, label %90

77:                                               ; preds = %71
  %78 = call fastcc i32 @elants_i2c_execute_command(ptr noundef %58, ptr noundef nonnull %16, i32 noundef 4, ptr noundef nonnull %17, i32 noundef 4, i32 noundef 1, ptr noundef nonnull @.str.28) #11
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load i32, ptr %17, align 4
  %82 = call i32 @llvm.bswap.i32(i32 %81) #11
  %83 = lshr i32 %82, 4
  %84 = trunc i32 %83 to i16
  store i16 %84, ptr %59, align 2
  %85 = icmp eq i16 %84, -1
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.i2c_client, ptr %58, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.29, i32 noundef 65535) #12
  br label %88

88:                                               ; preds = %86, %77, %68, %56
  %89 = phi i32 [ %78, %77 ], [ %69, %68 ], [ %60, %56 ], [ -22, %86 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #11
  br label %104

90:                                               ; preds = %80, %71, %62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #11
  %91 = load ptr, ptr %0, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #11
  store i32 16781395, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #11
  store i32 0, ptr %15, align 4, !annotation !8
  %92 = call fastcc i32 @elants_i2c_execute_command(ptr noundef %91, ptr noundef nonnull %14, i32 noundef 4, ptr noundef nonnull %15, i32 noundef 4, i32 noundef 1, ptr noundef nonnull @.str.33) #11
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %90
  %95 = load i32, ptr %15, align 4
  %96 = call i32 @llvm.bswap.i32(i32 %95) #11
  %97 = lshr i32 %96, 4
  %98 = lshr i32 %96, 12
  %99 = trunc i32 %98 to i8
  %100 = getelementptr inbounds %struct.elants_data, ptr %0, i32 0, i32 8
  store i8 %99, ptr %100, align 8
  %101 = trunc i32 %97 to i8
  %102 = getelementptr inbounds %struct.elants_data, ptr %0, i32 0, i32 9
  store i8 %101, ptr %102, align 1
  br label %103

103:                                              ; preds = %94, %90
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #11
  br label %104

104:                                              ; preds = %103, %88
  %105 = phi i32 [ %92, %103 ], [ %89, %88 ]
  %106 = icmp eq i32 %57, 0
  %107 = select i1 %106, i32 %105, i32 %57
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %156

109:                                              ; preds = %104
  %110 = load ptr, ptr %0, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #11
  store i32 16777299, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #11
  store i32 0, ptr %13, align 4, !annotation !8
  %111 = getelementptr inbounds %struct.elants_data, ptr %0, i32 0, i32 5
  %112 = call fastcc i32 @elants_i2c_execute_command(ptr noundef %110, ptr noundef nonnull %12, i32 noundef 4, ptr noundef nonnull %13, i32 noundef 4, i32 noundef 1, ptr noundef nonnull @.str.34) #11
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %138

114:                                              ; preds = %109
  %115 = load i32, ptr %13, align 4
  %116 = call i32 @llvm.bswap.i32(i32 %115) #11
  %117 = lshr i32 %116, 4
  %118 = trunc i32 %117 to i16
  store i16 %118, ptr %111, align 4
  switch i16 %118, label %140 [
    i16 0, label %119
    i16 -1, label %119
  ]

119:                                              ; preds = %114, %114
  %120 = call fastcc i32 @elants_i2c_execute_command(ptr noundef %110, ptr noundef nonnull %12, i32 noundef 4, ptr noundef nonnull %13, i32 noundef 4, i32 noundef 1, ptr noundef nonnull @.str.34) #11
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %138

122:                                              ; preds = %119
  %123 = load i32, ptr %13, align 4
  %124 = call i32 @llvm.bswap.i32(i32 %123) #11
  %125 = lshr i32 %124, 4
  %126 = trunc i32 %125 to i16
  store i16 %126, ptr %111, align 4
  switch i16 %126, label %140 [
    i16 0, label %127
    i16 -1, label %127
  ]

127:                                              ; preds = %122, %122
  %128 = call fastcc i32 @elants_i2c_execute_command(ptr noundef %110, ptr noundef nonnull %12, i32 noundef 4, ptr noundef nonnull %13, i32 noundef 4, i32 noundef 1, ptr noundef nonnull @.str.34) #11
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %127
  %131 = load i32, ptr %13, align 4
  %132 = call i32 @llvm.bswap.i32(i32 %131) #11
  %133 = lshr i32 %132, 4
  %134 = trunc i32 %133 to i16
  store i16 %134, ptr %111, align 4
  switch i16 %134, label %140 [
    i16 0, label %135
    i16 -1, label %135
  ]

135:                                              ; preds = %130, %130
  %136 = getelementptr inbounds %struct.i2c_client, ptr %110, i32 0, i32 4
  %137 = and i32 %133, 65535
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.35, i32 noundef %137) #12
  br label %138

138:                                              ; preds = %135, %127, %119, %109
  %139 = phi i32 [ %128, %127 ], [ %120, %119 ], [ %112, %109 ], [ -22, %135 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #11
  br label %156

140:                                              ; preds = %130, %122, %114
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #11
  %141 = load ptr, ptr %0, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  store i32 16834643, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  store i32 0, ptr %11, align 4, !annotation !8
  %142 = call fastcc i32 @elants_i2c_execute_command(ptr noundef %141, ptr noundef nonnull %10, i32 noundef 4, ptr noundef nonnull %11, i32 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.36) #11
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.i2c_client, ptr %141, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.37) #12
  br label %155

146:                                              ; preds = %140
  %147 = load i32, ptr %11, align 4
  %148 = call i32 @llvm.bswap.i32(i32 %147) #11
  %149 = lshr i32 %148, 4
  %150 = lshr i32 %148, 12
  %151 = trunc i32 %150 to i8
  %152 = getelementptr inbounds %struct.elants_data, ptr %0, i32 0, i32 6
  store i8 %151, ptr %152, align 2
  %153 = trunc i32 %149 to i8
  %154 = getelementptr inbounds %struct.elants_data, ptr %0, i32 0, i32 7
  store i8 %153, ptr %154, align 1
  br label %155

155:                                              ; preds = %146, %144
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  br label %156

156:                                              ; preds = %155, %138, %104
  %157 = phi i32 [ %142, %155 ], [ %139, %138 ], [ %107, %104 ]
  %158 = getelementptr inbounds %struct.elants_data, ptr %0, i32 0, i32 20
  %159 = load i32, ptr %158, align 8
  switch i32 %159, label %267 [
    i32 0, label %160
    i32 1, label %235
  ]

160:                                              ; preds = %156
  %161 = icmp eq i32 %157, 0
  br i1 %161, label %162, label %271

162:                                              ; preds = %160
  %163 = load ptr, ptr %0, align 64
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(17) %5, i8 0, i32 17, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %6, ptr noundef nonnull align 1 dereferenceable(6) @__const.elants_i2c_query_ts_info_ekth.get_resolution_cmd, i32 6, i1 false) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 16832083, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  store i32 16832339, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  store i32 16832595, ptr %9, align 4
  %164 = call fastcc i32 @elants_i2c_execute_command(ptr noundef %163, ptr noundef nonnull %6, i32 noundef 6, ptr noundef nonnull %5, i32 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.38) #11
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %233

166:                                              ; preds = %162
  %167 = getelementptr inbounds [17 x i8], ptr %5, i32 0, i32 2
  %168 = load i8, ptr %167, align 1
  %169 = zext i8 %168 to i32
  %170 = getelementptr inbounds [17 x i8], ptr %5, i32 0, i32 6
  %171 = load i8, ptr %170, align 1
  %172 = zext i8 %171 to i32
  %173 = add nuw nsw i32 %172, %169
  %174 = getelementptr inbounds [17 x i8], ptr %5, i32 0, i32 10
  %175 = load i8, ptr %174, align 1
  %176 = zext i8 %175 to i32
  %177 = add nuw nsw i32 %173, %176
  %178 = getelementptr inbounds [17 x i8], ptr %5, i32 0, i32 3
  %179 = load i8, ptr %178, align 1
  %180 = zext i8 %179 to i32
  %181 = getelementptr inbounds [17 x i8], ptr %5, i32 0, i32 7
  %182 = load i8, ptr %181, align 1
  %183 = zext i8 %182 to i32
  %184 = add nuw nsw i32 %183, %180
  %185 = getelementptr inbounds [17 x i8], ptr %5, i32 0, i32 11
  %186 = load i8, ptr %185, align 1
  %187 = zext i8 %186 to i32
  %188 = add nuw nsw i32 %184, %187
  %189 = getelementptr inbounds [17 x i8], ptr %5, i32 0, i32 16
  %190 = load i8, ptr %189, align 1
  %191 = getelementptr inbounds %struct.elants_data, ptr %0, i32 0, i32 11
  store i8 %190, ptr %191, align 4
  %192 = call fastcc i32 @elants_i2c_execute_command(ptr noundef %163, ptr noundef nonnull %7, i32 noundef 4, ptr noundef nonnull %5, i32 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.39) #11
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %233

194:                                              ; preds = %166
  %195 = load i8, ptr %178, align 1
  %196 = call fastcc i32 @elants_i2c_execute_command(ptr noundef %163, ptr noundef nonnull %8, i32 noundef 4, ptr noundef nonnull %5, i32 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.40) #11
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %233

198:                                              ; preds = %194
  %199 = load i16, ptr %167, align 1
  %200 = call i16 @llvm.bswap.i16(i16 %199) #11
  %201 = call fastcc i32 @elants_i2c_execute_command(ptr noundef %163, ptr noundef nonnull %9, i32 noundef 4, ptr noundef nonnull %5, i32 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.41) #11
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %233

203:                                              ; preds = %198
  %204 = icmp eq i32 %177, 0
  %205 = icmp eq i32 %188, 0
  %206 = select i1 %204, i1 true, i1 %205
  %207 = zext i8 %195 to i32
  %208 = icmp eq i8 %195, 0
  %209 = select i1 %206, i1 true, i1 %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %203
  %211 = getelementptr inbounds %struct.i2c_client, ptr %163, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %211, ptr noundef nonnull @.str.42, i32 noundef %177, i32 noundef %188, i32 noundef %207) #12
  br label %233

212:                                              ; preds = %203
  %213 = load i16, ptr %167, align 1
  %214 = call i16 @llvm.bswap.i16(i16 %213) #11
  %215 = add nsw i32 %177, -1
  %216 = mul nuw nsw i32 %215, %207
  %217 = getelementptr inbounds %struct.elants_data, ptr %0, i32 0, i32 14
  store i32 %216, ptr %217, align 8
  %218 = zext i16 %200 to i32
  %219 = lshr i32 %218, 1
  %220 = add nuw nsw i32 %219, %216
  %221 = udiv i32 %220, %218
  %222 = getelementptr inbounds %struct.elants_data, ptr %0, i32 0, i32 12
  store i32 %221, ptr %222, align 32
  %223 = add nsw i32 %188, -1
  %224 = mul nuw nsw i32 %223, %207
  %225 = getelementptr inbounds %struct.elants_data, ptr %0, i32 0, i32 15
  store i32 %224, ptr %225, align 4
  %226 = zext i16 %214 to i32
  %227 = lshr i32 %226, 1
  %228 = add nuw nsw i32 %227, %224
  %229 = udiv i32 %228, %226
  %230 = getelementptr inbounds %struct.elants_data, ptr %0, i32 0, i32 13
  store i32 %229, ptr %230, align 4
  %231 = getelementptr inbounds %struct.elants_data, ptr %0, i32 0, i32 16
  store i32 %218, ptr %231, align 16
  %232 = getelementptr inbounds %struct.elants_data, ptr %0, i32 0, i32 17
  store i32 %226, ptr %232, align 4
  br label %233

233:                                              ; preds = %212, %210, %198, %194, %166, %162
  %234 = phi i32 [ %164, %162 ], [ %192, %166 ], [ %196, %194 ], [ %201, %198 ], [ 0, %212 ], [ 0, %210 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %5) #11
  br label %268

235:                                              ; preds = %156
  %236 = icmp eq i32 %157, 0
  br i1 %236, label %237, label %271

237:                                              ; preds = %235
  %238 = load ptr, ptr %0, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 24659, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 25427, ptr %4, align 4
  %239 = call fastcc i32 @elants_i2c_execute_command(ptr noundef %238, ptr noundef nonnull %3, i32 noundef 4, ptr noundef nonnull %2, i32 noundef 4, i32 noundef 1, ptr noundef nonnull @.str.43) #11
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %265

241:                                              ; preds = %237
  %242 = getelementptr inbounds [4 x i8], ptr %2, i32 0, i32 2
  %243 = load i8, ptr %242, align 2
  %244 = getelementptr inbounds [4 x i8], ptr %2, i32 0, i32 3
  %245 = load i8, ptr %244, align 1
  %246 = call fastcc i32 @elants_i2c_execute_command(ptr noundef %238, ptr noundef nonnull %4, i32 noundef 4, ptr noundef nonnull %2, i32 noundef 4, i32 noundef 1, ptr noundef nonnull @.str.44) #11
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %265

248:                                              ; preds = %241
  %249 = and i8 %245, -16
  %250 = zext i8 %249 to i32
  %251 = shl nuw nsw i32 %250, 4
  %252 = zext i8 %243 to i32
  %253 = or i32 %251, %252
  %254 = load i8, ptr %242, align 2
  %255 = zext i8 %254 to i32
  %256 = load i8, ptr %244, align 1
  %257 = and i8 %256, -16
  %258 = zext i8 %257 to i32
  %259 = shl nuw nsw i32 %258, 4
  %260 = or i32 %259, %255
  %261 = getelementptr inbounds %struct.elants_data, ptr %0, i32 0, i32 16
  store i32 %253, ptr %261, align 16
  %262 = getelementptr inbounds %struct.elants_data, ptr %0, i32 0, i32 17
  store i32 %260, ptr %262, align 4
  %263 = getelementptr inbounds %struct.elants_data, ptr %0, i32 0, i32 14
  store i32 2239, ptr %263, align 8
  %264 = getelementptr inbounds %struct.elants_data, ptr %0, i32 0, i32 15
  store i32 1407, ptr %264, align 4
  br label %265

265:                                              ; preds = %248, %241, %237
  %266 = phi i32 [ 0, %248 ], [ %239, %237 ], [ %246, %241 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %268

267:                                              ; preds = %156
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/input/touchscreen/elants_i2c.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 673, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

268:                                              ; preds = %265, %233
  %269 = phi i32 [ %266, %265 ], [ %234, %233 ]
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %273, label %271

271:                                              ; preds = %268, %235, %160
  %272 = getelementptr inbounds %struct.elants_data, ptr %0, i32 0, i32 21
  store i32 1, ptr %272, align 4
  br label %273

273:                                              ; preds = %271, %268
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_parse_properties(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elants_i2c_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %1, align 64
  %4 = getelementptr inbounds %struct.elants_data, ptr %1, i32 0, i32 28
  %5 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef %4, i32 noundef 169, i16 noundef zeroext 513) #11
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.elants_i2c_irq, i32 noundef %5) #12
  br label %73

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.elants_data, ptr %1, i32 0, i32 19
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %73 [
    i32 2, label %12
    i32 1, label %19
    i32 0, label %23
  ]

12:                                               ; preds = %9
  %13 = load i8, ptr %4, align 64
  %14 = icmp eq i8 %13, 102
  br i1 %14, label %15, label %73

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.elants_data, ptr %1, i32 0, i32 23
  %17 = load i32, ptr %4, align 64
  store i32 %17, ptr %16, align 4
  %18 = getelementptr inbounds %struct.elants_data, ptr %1, i32 0, i32 24
  tail call void @complete(ptr noundef %18) #11
  store i32 0, ptr %10, align 4
  br label %73

19:                                               ; preds = %9
  %20 = load i8, ptr %4, align 64
  %21 = icmp eq i8 %20, 99
  br i1 %21, label %22, label %73

22:                                               ; preds = %19
  store i32 0, ptr %10, align 4
  br label %41

23:                                               ; preds = %9
  %24 = load i8, ptr %4, align 64
  switch i8 %24, label %71 [
    i8 85, label %73
    i8 82, label %73
    i8 100, label %25
    i8 98, label %32
    i8 102, label %37
    i8 99, label %41
  ]

25:                                               ; preds = %23
  %26 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %4, ptr noundef nonnull dereferenceable(4) @__const.elants_i2c_irq.wait_packet, i32 4)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.46, i32 noundef 4, ptr noundef %4) #12
  br label %73

30:                                               ; preds = %25
  store i32 1, ptr %10, align 4
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 6442440) #11
  br label %73

32:                                               ; preds = %23
  %33 = getelementptr %struct.elants_data, ptr %1, i32 0, i32 28, i32 4
  %34 = getelementptr %struct.elants_data, ptr %1, i32 0, i32 28, i32 2
  %35 = load i8, ptr %34, align 2
  %36 = zext i8 %35 to i32
  tail call fastcc void @elants_i2c_event(ptr noundef %1, ptr noundef %33, i32 noundef %36)
  br label %73

37:                                               ; preds = %23
  %38 = getelementptr inbounds %struct.elants_data, ptr %1, i32 0, i32 20
  %39 = load i32, ptr %38, align 8
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %73

41:                                               ; preds = %37, %23, %22
  %42 = getelementptr %struct.elants_data, ptr %1, i32 0, i32 28, i32 1
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = add i8 %43, -4
  %46 = icmp ult i8 %45, -3
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.47, i32 noundef 4, ptr noundef %4) #12
  br label %73

49:                                               ; preds = %41
  %50 = getelementptr %struct.elants_data, ptr %1, i32 0, i32 28, i32 2
  %51 = load i8, ptr %50, align 2
  %52 = udiv i8 %51, %43
  %53 = zext i8 %52 to i32
  switch i8 %52, label %61 [
    i8 40, label %54
    i8 55, label %63
  ]

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.elants_data, ptr %1, i32 0, i32 20
  %56 = load i32, ptr %55, align 8
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i1, ptr @elants_i2c_irq.__print_once, align 1
  br i1 %59, label %63, label %60

60:                                               ; preds = %58
  store i1 true, ptr @elants_i2c_irq.__print_once, align 1
  br label %63

61:                                               ; preds = %54, %49
  %62 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.48, i32 noundef 4, ptr noundef %4) #12
  br label %73

63:                                               ; preds = %60, %58, %49
  %64 = getelementptr %struct.elants_data, ptr %1, i32 0, i32 28, i32 4
  br label %65

65:                                               ; preds = %65, %63
  %66 = phi i32 [ 0, %63 ], [ %69, %65 ]
  %67 = mul nuw nsw i32 %66, %53
  %68 = getelementptr i8, ptr %64, i32 %67
  tail call fastcc void @elants_i2c_event(ptr noundef %1, ptr noundef %68, i32 noundef %53)
  %69 = add nuw nsw i32 %66, 1
  %70 = icmp eq i32 %69, %44
  br i1 %70, label %73, label %65

71:                                               ; preds = %23
  %72 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.49, i32 noundef 4, ptr noundef %4) #12
  br label %73

73:                                               ; preds = %71, %65, %61, %47, %37, %32, %30, %28, %23, %23, %19, %15, %12, %9, %7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_device_add_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @elants_i2c_execute_command(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #2 {
  %8 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #11
  %9 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %9, i8 0, i32 16, i1 false), !annotation !8
  %10 = load i8, ptr %1, align 1
  switch i8 %10, label %13 [
    i8 83, label %15
    i8 91, label %11
    i8 -106, label %12
  ]

11:                                               ; preds = %7
  br label %15

12:                                               ; preds = %7
  br label %15

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.30, ptr noundef %6, i32 noundef %2, ptr noundef %1) #12
  br label %56

15:                                               ; preds = %12, %11, %7
  %16 = phi i32 [ 149, %12 ], [ 155, %11 ], [ 82, %7 ]
  %17 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  %19 = trunc i32 %2 to i16
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 2
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  %22 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %8, i32 0, i32 1
  %23 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %8, i32 0, i32 1, i32 1
  %24 = trunc i32 %4 to i16
  %25 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %8, i32 0, i32 1, i32 2
  %26 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %8, i32 0, i32 1, i32 3
  %27 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  br label %28

28:                                               ; preds = %40, %15
  %29 = phi i32 [ %5, %15 ], [ %41, %40 ]
  %30 = load i16, ptr %17, align 2
  store i16 %30, ptr %8, align 4
  %31 = load i16, ptr %0, align 8
  %32 = and i16 %31, 16
  store i16 %32, ptr %18, align 2
  store i16 %19, ptr %20, align 4
  store ptr %1, ptr %21, align 4
  store i16 %30, ptr %22, align 4
  %33 = or i16 %32, 1
  store i16 %33, ptr %23, align 2
  store i16 %24, ptr %25, align 4
  store ptr %3, ptr %26, align 4
  %34 = load ptr, ptr %27, align 8
  %35 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %8, i32 noundef 2) #11
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %28
  %38 = add i32 %29, -1
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %51, %37
  %41 = phi i32 [ %38, %37 ], [ %52, %51 ]
  br label %28

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %44 = inttoptr i32 %35 to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.31, ptr noundef %6, ptr noundef nonnull %44) #12
  br label %56

45:                                               ; preds = %28
  %46 = icmp eq i32 %35, 2
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  %48 = load i8, ptr %3, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %16, %49
  br i1 %50, label %56, label %51

51:                                               ; preds = %47, %45
  %52 = add i32 %29, -1
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %40, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.32, ptr noundef %6, i32 noundef %35, ptr noundef %3) #12
  br label %56

56:                                               ; preds = %54, %47, %42, %13
  %57 = phi i32 [ -22, %13 ], [ %35, %42 ], [ -5, %54 ], [ 0, %47 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #11
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @elants_i2c_event(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #2 {
  %4 = load i8, ptr %1, align 1
  %5 = getelementptr i8, ptr %1, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = add i8 %6, %4
  %8 = getelementptr i8, ptr %1, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = add i8 %7, %9
  %11 = getelementptr i8, ptr %1, i32 3
  %12 = load i8, ptr %11, align 1
  %13 = add i8 %10, %12
  %14 = getelementptr i8, ptr %1, i32 4
  %15 = load i8, ptr %14, align 1
  %16 = add i8 %13, %15
  %17 = getelementptr i8, ptr %1, i32 5
  %18 = load i8, ptr %17, align 1
  %19 = add i8 %16, %18
  %20 = getelementptr i8, ptr %1, i32 6
  %21 = load i8, ptr %20, align 1
  %22 = add i8 %19, %21
  %23 = getelementptr i8, ptr %1, i32 7
  %24 = load i8, ptr %23, align 1
  %25 = add i8 %22, %24
  %26 = getelementptr i8, ptr %1, i32 8
  %27 = load i8, ptr %26, align 1
  %28 = add i8 %25, %27
  %29 = getelementptr i8, ptr %1, i32 9
  %30 = load i8, ptr %29, align 1
  %31 = add i8 %28, %30
  %32 = getelementptr i8, ptr %1, i32 10
  %33 = load i8, ptr %32, align 1
  %34 = add i8 %31, %33
  %35 = getelementptr i8, ptr %1, i32 11
  %36 = load i8, ptr %35, align 1
  %37 = add i8 %34, %36
  %38 = getelementptr i8, ptr %1, i32 12
  %39 = load i8, ptr %38, align 1
  %40 = add i8 %37, %39
  %41 = getelementptr i8, ptr %1, i32 13
  %42 = load i8, ptr %41, align 1
  %43 = add i8 %40, %42
  %44 = getelementptr i8, ptr %1, i32 14
  %45 = load i8, ptr %44, align 1
  %46 = add i8 %43, %45
  %47 = getelementptr i8, ptr %1, i32 15
  %48 = load i8, ptr %47, align 1
  %49 = add i8 %46, %48
  %50 = getelementptr i8, ptr %1, i32 16
  %51 = load i8, ptr %50, align 1
  %52 = add i8 %49, %51
  %53 = getelementptr i8, ptr %1, i32 17
  %54 = load i8, ptr %53, align 1
  %55 = add i8 %52, %54
  %56 = getelementptr i8, ptr %1, i32 18
  %57 = load i8, ptr %56, align 1
  %58 = add i8 %55, %57
  %59 = getelementptr i8, ptr %1, i32 19
  %60 = load i8, ptr %59, align 1
  %61 = add i8 %58, %60
  %62 = getelementptr i8, ptr %1, i32 20
  %63 = load i8, ptr %62, align 1
  %64 = add i8 %61, %63
  %65 = getelementptr i8, ptr %1, i32 21
  %66 = load i8, ptr %65, align 1
  %67 = add i8 %64, %66
  %68 = getelementptr i8, ptr %1, i32 22
  %69 = load i8, ptr %68, align 1
  %70 = add i8 %67, %69
  %71 = getelementptr i8, ptr %1, i32 23
  %72 = load i8, ptr %71, align 1
  %73 = add i8 %70, %72
  %74 = getelementptr i8, ptr %1, i32 24
  %75 = load i8, ptr %74, align 1
  %76 = add i8 %73, %75
  %77 = getelementptr i8, ptr %1, i32 25
  %78 = load i8, ptr %77, align 1
  %79 = add i8 %76, %78
  %80 = getelementptr i8, ptr %1, i32 26
  %81 = load i8, ptr %80, align 1
  %82 = add i8 %79, %81
  %83 = getelementptr i8, ptr %1, i32 27
  %84 = load i8, ptr %83, align 1
  %85 = add i8 %82, %84
  %86 = getelementptr i8, ptr %1, i32 28
  %87 = load i8, ptr %86, align 1
  %88 = add i8 %85, %87
  %89 = getelementptr i8, ptr %1, i32 29
  %90 = load i8, ptr %89, align 1
  %91 = add i8 %88, %90
  %92 = getelementptr i8, ptr %1, i32 30
  %93 = load i8, ptr %92, align 1
  %94 = add i8 %91, %93
  %95 = getelementptr i8, ptr %1, i32 31
  %96 = load i8, ptr %95, align 1
  %97 = add i8 %94, %96
  %98 = getelementptr i8, ptr %1, i32 32
  %99 = load i8, ptr %98, align 1
  %100 = add i8 %97, %99
  %101 = getelementptr i8, ptr %1, i32 33
  %102 = load i8, ptr %101, align 1
  %103 = add i8 %100, %102
  %104 = getelementptr i8, ptr %1, i32 34
  %105 = load i8, ptr %104, align 1
  %106 = icmp eq i8 %105, %103
  br i1 %106, label %113, label %107, !prof !10

107:                                              ; preds = %3
  %108 = zext i8 %103 to i32
  %109 = zext i8 %105 to i32
  %110 = load ptr, ptr %0, align 64
  %111 = getelementptr inbounds %struct.i2c_client, ptr %110, i32 0, i32 4
  %112 = zext i8 %4 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %111, ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.elants_i2c_event, i32 noundef %112, i32 noundef %108, i32 noundef %109) #12
  br label %202

113:                                              ; preds = %3
  %114 = icmp eq i8 %4, 98
  br i1 %114, label %119, label %115, !prof !10

115:                                              ; preds = %113
  %116 = zext i8 %4 to i32
  %117 = load ptr, ptr %0, align 64
  %118 = getelementptr inbounds %struct.i2c_client, ptr %117, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %118, ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.elants_i2c_event, i32 noundef %116) #12
  br label %202

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.elants_data, ptr %0, i32 0, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = zext i8 %9 to i32
  %123 = and i32 %122, 15
  %124 = shl i8 %102, 1
  %125 = and i8 %124, 2
  %126 = xor i8 %125, 2
  %127 = zext i8 %126 to i32
  %128 = icmp eq i32 %123, 0
  br i1 %128, label %201, label %129

129:                                              ; preds = %119
  %130 = shl nuw nsw i32 %122, 4
  %131 = and i32 %130, 768
  %132 = zext i8 %6 to i32
  %133 = or i32 %131, %132
  %134 = icmp eq i32 %2, 40
  %135 = getelementptr inbounds %struct.elants_data, ptr %0, i32 0, i32 20
  %136 = getelementptr inbounds %struct.elants_data, ptr %0, i32 0, i32 18
  br label %137

137:                                              ; preds = %193, %129
  %138 = phi i32 [ 0, %129 ], [ %197, %193 ]
  %139 = phi i32 [ %133, %129 ], [ %196, %193 ]
  %140 = phi i32 [ %123, %129 ], [ %194, %193 ]
  %141 = and i32 %139, 1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %193, label %143

143:                                              ; preds = %137
  %144 = mul nuw nsw i32 %138, 3
  %145 = add nuw nsw i32 %144, 3
  %146 = getelementptr i8, ptr %1, i32 %145
  %147 = load i8, ptr %146, align 1
  %148 = zext i8 %147 to i32
  %149 = shl nuw nsw i32 %148, 4
  %150 = and i32 %149, 3840
  %151 = getelementptr i8, ptr %146, i32 1
  %152 = load i8, ptr %151, align 1
  %153 = zext i8 %152 to i32
  %154 = or i32 %150, %153
  %155 = shl nuw nsw i32 %148, 8
  %156 = and i32 %155, 3840
  %157 = getelementptr i8, ptr %146, i32 2
  %158 = load i8, ptr %157, align 1
  %159 = zext i8 %158 to i32
  %160 = or i32 %156, %159
  br i1 %134, label %161, label %179

161:                                              ; preds = %143
  %162 = load i32, ptr %135, align 8
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %164, label %179

164:                                              ; preds = %161
  %165 = lshr i32 %138, 1
  %166 = add nuw nsw i32 %165, 35
  %167 = getelementptr i8, ptr %1, i32 %166
  %168 = load i8, ptr %167, align 1
  %169 = zext i8 %168 to i32
  %170 = shl nuw nsw i32 %138, 2
  %171 = and i32 %170, 4
  %172 = xor i32 %171, 4
  %173 = lshr i32 %169, %172
  %174 = shl nuw nsw i32 %173, 4
  %175 = or i32 %174, %173
  %176 = icmp eq i32 %175, 0
  %177 = zext i1 %176 to i32
  %178 = or i32 %175, %177
  br label %188

179:                                              ; preds = %161, %143
  %180 = add nuw nsw i32 %138, 45
  %181 = getelementptr i8, ptr %1, i32 %180
  %182 = load i8, ptr %181, align 1
  %183 = zext i8 %182 to i32
  %184 = add nuw nsw i32 %138, 35
  %185 = getelementptr i8, ptr %1, i32 %184
  %186 = load i8, ptr %185, align 1
  %187 = zext i8 %186 to i32
  br label %188

188:                                              ; preds = %179, %164
  %189 = phi i32 [ %178, %164 ], [ %183, %179 ]
  %190 = phi i32 [ %178, %164 ], [ %187, %179 ]
  tail call void @input_event(ptr noundef %121, i32 noundef 3, i32 noundef 47, i32 noundef %138) #11
  %191 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %121, i32 noundef %127, i1 noundef zeroext true) #11
  tail call void @touchscreen_report_pos(ptr noundef %121, ptr noundef %136, i32 noundef %154, i32 noundef %160, i1 noundef zeroext true) #11
  tail call void @input_event(ptr noundef %121, i32 noundef 3, i32 noundef 58, i32 noundef %189) #11
  tail call void @input_event(ptr noundef %121, i32 noundef 3, i32 noundef 48, i32 noundef %190) #11
  %192 = add i32 %140, -1
  br label %193

193:                                              ; preds = %188, %137
  %194 = phi i32 [ %192, %188 ], [ %140, %137 ]
  %195 = lshr i32 %139, 1
  %196 = and i32 %195, 32767
  %197 = add nuw nsw i32 %138, 1
  %198 = icmp ult i32 %138, 9
  %199 = icmp ne i32 %194, 0
  %200 = select i1 %198, i1 %199, i1 false
  br i1 %200, label %137, label %201

201:                                              ; preds = %193, %119
  tail call void @input_mt_sync_frame(ptr noundef %121) #11
  tail call void @input_event(ptr noundef %121, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %202

202:                                              ; preds = %201, %115, %107
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_report_pos(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @calibrate_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef %3) #2 {
  %5 = getelementptr i8, ptr %0, i32 64
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.elants_data, ptr %6, i32 0, i32 22
  %8 = tail call i32 @mutex_lock_interruptible(ptr noundef %7) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = tail call fastcc i32 @elants_i2c_calibrate(ptr noundef %6)
  tail call void @mutex_unlock(ptr noundef %7) #11
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 %3, i32 %11
  br label %14

14:                                               ; preds = %10, %4
  %15 = phi i32 [ %13, %10 ], [ %8, %4 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @elants_i2c_calibrate(ptr noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 64
  %3 = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  tail call void @disable_irq(i32 noundef %4) #11
  %5 = getelementptr inbounds %struct.elants_data, ptr %0, i32 0, i32 19
  store i32 2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.elants_data, ptr %0, i32 0, i32 24
  store i32 0, ptr %6, align 4
  %7 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %2, ptr noundef nonnull @elants_i2c_calibrate.w_flashkey, i32 noundef 4, i16 noundef zeroext 0) #11
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = icmp sgt i32 %7, -1
  %11 = select i1 %10, i32 -5, i32 %7
  %12 = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.elants_i2c_send, i32 noundef 4, ptr noundef nonnull @elants_i2c_calibrate.w_flashkey, i32 noundef %11) #12
  br label %13

13:                                               ; preds = %9, %1
  %14 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %2, ptr noundef nonnull @elants_i2c_calibrate.rek, i32 noundef 4, i16 noundef zeroext 0) #11
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = icmp sgt i32 %14, -1
  %18 = select i1 %17, i32 -5, i32 %14
  %19 = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.elants_i2c_send, i32 noundef 4, ptr noundef nonnull @elants_i2c_calibrate.rek, i32 noundef %18) #12
  br label %20

20:                                               ; preds = %16, %13
  %21 = load i32, ptr %3, align 4
  tail call void @enable_irq(i32 noundef %21) #11
  %22 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %6, i32 noundef 1200) #11
  store i32 0, ptr %5, align 4
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = icmp eq i32 %22, 0
  %26 = select i1 %25, i32 -110, i32 %22
  %27 = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.53, i32 noundef %26) #12
  br label %34

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.elants_data, ptr %0, i32 0, i32 23
  %30 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @elants_i2c_calibrate.rek_resp, ptr noundef dereferenceable(4) %29, i32 4)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.54, i32 noundef 4, ptr noundef %29) #12
  br label %34

34:                                               ; preds = %32, %28, %24
  %35 = phi i32 [ %26, %24 ], [ -22, %32 ], [ 0, %28 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @write_update_fw(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef %3) #2 {
  %5 = alloca [2 x i8], align 2
  %6 = alloca [6 x i8], align 1
  %7 = alloca [6 x i8], align 1
  %8 = alloca [4 x i8], align 4
  %9 = alloca [6 x i8], align 1
  %10 = alloca [6 x i8], align 1
  %11 = alloca [4 x i8], align 4
  %12 = alloca [4 x i8], align 4
  %13 = alloca [4 x i8], align 4
  %14 = alloca [4 x i8], align 4
  %15 = alloca [4 x i8], align 4
  %16 = alloca i16, align 2
  %17 = alloca ptr, align 4
  %18 = getelementptr i8, ptr %0, i32 64
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.elants_data, ptr %19, i32 0, i32 22
  %21 = tail call i32 @mutex_lock_interruptible(ptr noundef %20) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %218

23:                                               ; preds = %4
  %24 = load ptr, ptr %19, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #11
  store ptr null, ptr %17, align 4, !annotation !8
  %25 = getelementptr inbounds %struct.elants_data, ptr %19, i32 0, i32 10
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  %28 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.56, i32 noundef %27) #11
  %29 = icmp eq ptr %28, null
  br i1 %29, label %211, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.57, ptr noundef nonnull %28) #12
  %32 = call i32 @request_firmware(ptr noundef nonnull %17, ptr noundef nonnull %28, ptr noundef %31) #11
  call void @kfree(ptr noundef nonnull %28) #11
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.58, i32 noundef %32) #12
  br label %211

35:                                               ; preds = %30
  %36 = load ptr, ptr %17, align 4
  %37 = load i32, ptr %36, align 4
  %38 = urem i32 %37, 132
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.59, i32 noundef %37) #12
  br label %213

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 6
  %43 = load i32, ptr %42, align 4
  call void @disable_irq(i32 noundef %43) #11
  %44 = load ptr, ptr %17, align 4
  %45 = getelementptr inbounds %struct.elants_data, ptr %19, i32 0, i32 21
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 1
  %48 = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 4, i32 8
  %49 = load ptr, ptr %48, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  store i32 1346455877, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #11
  store i32 873594964, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #11
  store i32 -869029291, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #11
  store i32 16854100, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #11
  store i32 0, ptr %15, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #11
  %50 = getelementptr inbounds %struct.elants_data, ptr %49, i32 0, i32 9
  %51 = load i8, ptr %50, align 1
  switch i8 %51, label %52 [
    i8 -110, label %54
    i8 -126, label %54
    i8 120, label %54
    i8 119, label %54
    i8 117, label %54
    i8 116, label %54
    i8 114, label %54
    i8 110, label %54
    i8 109, label %54
    i8 104, label %54
    i8 103, label %54
  ]

52:                                               ; preds = %41
  %53 = icmp ugt i8 %51, 95
  br label %54

54:                                               ; preds = %52, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41
  %55 = phi i1 [ false, %41 ], [ false, %41 ], [ false, %41 ], [ false, %41 ], [ false, %41 ], [ false, %41 ], [ false, %41 ], [ false, %41 ], [ false, %41 ], [ false, %41 ], [ false, %41 ], [ %53, %52 ]
  br i1 %47, label %56, label %85

56:                                               ; preds = %54
  br i1 %55, label %57, label %79

57:                                               ; preds = %56
  %58 = load ptr, ptr %49, align 64
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %9) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %9, ptr noundef nonnull align 1 dereferenceable(6) @__const.elants_i2c_validate_remark_id.cmd, i32 6, i1 false) #11
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %10, i8 0, i32 6, i1 false) #11
  %59 = call fastcc i32 @elants_i2c_execute_command(ptr noundef %58, ptr noundef nonnull %9, i32 noundef 6, ptr noundef nonnull %10, i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.72) #11
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %57
  %62 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 3
  %63 = load i16, ptr %62, align 1
  %64 = call i16 @llvm.bswap.i16(i16 %63) #11
  %65 = getelementptr inbounds %struct.firmware, ptr %44, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = load i32, ptr %44, align 4
  %68 = add i32 %67, -4
  %69 = getelementptr i8, ptr %66, i32 %68
  %70 = load i16, ptr %69, align 1
  %71 = icmp eq i16 %70, %64
  br i1 %71, label %78, label %72

72:                                               ; preds = %61
  %73 = zext i16 %64 to i32
  %74 = zext i16 %70 to i32
  %75 = getelementptr inbounds %struct.i2c_client, ptr %58, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.73, i32 noundef %73, i32 noundef %74) #12
  br label %76

76:                                               ; preds = %72, %57
  %77 = phi i32 [ %59, %57 ], [ -22, %72 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #11
  br label %200

78:                                               ; preds = %61
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #11
  br label %79

79:                                               ; preds = %78, %56
  %80 = call i32 @i2c_transfer_buffer_flags(ptr noundef %24, ptr noundef nonnull %12, i32 noundef 4, i16 noundef zeroext 0) #11
  %81 = icmp eq i32 %80, 4
  br i1 %81, label %127, label %82

82:                                               ; preds = %79
  %83 = icmp sgt i32 %80, -1
  %84 = select i1 %83, i32 -5, i32 %80
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.elants_i2c_send, i32 noundef 4, ptr noundef nonnull %12, i32 noundef %84) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.62, i32 noundef %84) #12
  br label %200

85:                                               ; preds = %54
  %86 = call i32 @i2c_transfer_buffer_flags(ptr noundef %24, ptr noundef nonnull %14, i32 noundef 4, i16 noundef zeroext 0) #11
  %87 = icmp eq i32 %86, 4
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = icmp sgt i32 %86, -1
  %90 = select i1 %89, i32 -5, i32 %86
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.elants_i2c_send, i32 noundef 4, ptr noundef nonnull %14, i32 noundef %90) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.63, i32 noundef %90) #12
  br label %91

91:                                               ; preds = %88, %85
  call void @msleep(i32 noundef 60) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  store i32 2004318071, ptr %8, align 4
  %92 = call i32 @i2c_transfer_buffer_flags(ptr noundef %24, ptr noundef nonnull %8, i32 noundef 4, i16 noundef zeroext 0) #11
  %93 = icmp eq i32 %92, 4
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = icmp sgt i32 %92, -1
  %96 = select i1 %95, i32 -5, i32 %92
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.elants_i2c_send, i32 noundef 4, ptr noundef nonnull %8, i32 noundef %96) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.24, i32 noundef %96) #12
  br label %98

97:                                               ; preds = %91
  call void @msleep(i32 noundef 30) #11
  br label %98

98:                                               ; preds = %97, %94
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @msleep(i32 noundef 20) #11
  br i1 %55, label %99, label %121

99:                                               ; preds = %98
  %100 = load ptr, ptr %49, align 64
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %6, ptr noundef nonnull align 1 dereferenceable(6) @__const.elants_i2c_validate_remark_id.cmd, i32 6, i1 false) #11
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %7, i8 0, i32 6, i1 false) #11
  %101 = call fastcc i32 @elants_i2c_execute_command(ptr noundef %100, ptr noundef nonnull %6, i32 noundef 6, ptr noundef nonnull %7, i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.72) #11
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %99
  %104 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 3
  %105 = load i16, ptr %104, align 1
  %106 = call i16 @llvm.bswap.i16(i16 %105) #11
  %107 = getelementptr inbounds %struct.firmware, ptr %44, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = load i32, ptr %44, align 4
  %110 = add i32 %109, -4
  %111 = getelementptr i8, ptr %108, i32 %110
  %112 = load i16, ptr %111, align 1
  %113 = icmp eq i16 %112, %106
  br i1 %113, label %120, label %114

114:                                              ; preds = %103
  %115 = zext i16 %106 to i32
  %116 = zext i16 %112 to i32
  %117 = getelementptr inbounds %struct.i2c_client, ptr %100, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.73, i32 noundef %115, i32 noundef %116) #12
  br label %118

118:                                              ; preds = %114, %99
  %119 = phi i32 [ %101, %99 ], [ -22, %114 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #11
  br label %200

120:                                              ; preds = %103
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #11
  br label %121

121:                                              ; preds = %120, %98
  %122 = call i32 @i2c_transfer_buffer_flags(ptr noundef %24, ptr noundef nonnull %11, i32 noundef 4, i16 noundef zeroext 0) #11
  %123 = icmp eq i32 %122, 4
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  %125 = icmp sgt i32 %122, -1
  %126 = select i1 %125, i32 -5, i32 %122
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.elants_i2c_send, i32 noundef 4, ptr noundef nonnull %11, i32 noundef %126) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.62, i32 noundef %126) #12
  br label %200

127:                                              ; preds = %121, %79
  call void @msleep(i32 noundef 20) #11
  %128 = call i32 @i2c_transfer_buffer_flags(ptr noundef %24, ptr noundef nonnull %15, i32 noundef 4, i16 noundef zeroext 1) #11
  %129 = icmp eq i32 %128, 4
  br i1 %129, label %133, label %130

130:                                              ; preds = %127
  %131 = icmp sgt i32 %128, -1
  %132 = select i1 %131, i32 -5, i32 %128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.elants_i2c_read, i32 noundef %132) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.64, i32 noundef %132) #12
  br label %200

133:                                              ; preds = %127
  %134 = load i32, ptr %15, align 4
  %135 = icmp eq i32 %134, -869029291
  br i1 %135, label %137, label %136

136:                                              ; preds = %133
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.65, i32 noundef 4, ptr noundef nonnull %15, i32 noundef 4, ptr noundef nonnull %13) #12
  br label %200

137:                                              ; preds = %133
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.66) #12
  %138 = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 1
  %139 = load i16, ptr %138, align 2
  store i16 %139, ptr %16, align 2
  %140 = call i32 @i2c_transfer_buffer_flags(ptr noundef %24, ptr noundef nonnull %16, i32 noundef 1, i16 noundef zeroext 0) #11
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %145, label %142

142:                                              ; preds = %137
  %143 = icmp sgt i32 %140, -1
  %144 = select i1 %143, i32 -5, i32 %140
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.elants_i2c_send, i32 noundef 1, ptr noundef nonnull %16, i32 noundef %144) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.67, i32 noundef %144) #12
  br label %200

145:                                              ; preds = %137
  %146 = getelementptr inbounds %struct.firmware, ptr %44, i32 0, i32 1
  %147 = load ptr, ptr %146, align 4
  %148 = call i32 @i2c_transfer_buffer_flags(ptr noundef %24, ptr noundef %147, i32 noundef 132, i16 noundef zeroext 0) #11
  %149 = icmp eq i32 %148, 132
  br i1 %149, label %153, label %150

150:                                              ; preds = %145
  %151 = icmp sgt i32 %148, -1
  %152 = select i1 %151, i32 -5, i32 %148
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.elants_i2c_send, i32 noundef 132, ptr noundef %147, i32 noundef %152) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.68, i32 noundef %152) #12
  br label %200

153:                                              ; preds = %145
  %154 = call i32 @i2c_transfer_buffer_flags(ptr noundef %24, ptr noundef nonnull %15, i32 noundef 2, i16 noundef zeroext 1) #11
  %155 = icmp eq i32 %154, 2
  br i1 %155, label %159, label %156

156:                                              ; preds = %153
  %157 = icmp sgt i32 %154, -1
  %158 = select i1 %157, i32 -5, i32 %154
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.elants_i2c_read, i32 noundef %158) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.69, i32 noundef %158) #12
  br label %200

159:                                              ; preds = %153
  %160 = load i32, ptr %44, align 4
  %161 = icmp ult i32 %160, 132
  br i1 %161, label %202, label %162

162:                                              ; preds = %159
  %163 = udiv i32 %160, 132
  %164 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  br label %165

165:                                              ; preds = %197, %162
  %166 = phi i32 [ 0, %162 ], [ %198, %197 ]
  %167 = load ptr, ptr %146, align 4
  %168 = mul nuw i32 %166, 132
  %169 = getelementptr i8, ptr %167, i32 %168
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #11
  store i16 0, ptr %5, align 2, !annotation !8
  br label %170

170:                                              ; preds = %191, %165
  %171 = phi i32 [ 0, %165 ], [ %193, %191 ]
  %172 = call i32 @i2c_transfer_buffer_flags(ptr noundef %24, ptr noundef %169, i32 noundef 132, i16 noundef zeroext 0) #11
  %173 = icmp eq i32 %172, 132
  br i1 %173, label %177, label %174

174:                                              ; preds = %170
  %175 = icmp sgt i32 %172, -1
  %176 = select i1 %175, i32 -5, i32 %172
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.elants_i2c_send, i32 noundef 132, ptr noundef %169, i32 noundef %176) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.74, i32 noundef %176) #12
  br label %191

177:                                              ; preds = %170
  %178 = call i32 @i2c_transfer_buffer_flags(ptr noundef %24, ptr noundef nonnull %5, i32 noundef 2, i16 noundef zeroext 1) #11
  %179 = icmp eq i32 %178, 2
  br i1 %179, label %183, label %180

180:                                              ; preds = %177
  %181 = icmp sgt i32 %178, -1
  %182 = select i1 %181, i32 -5, i32 %178
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.elants_i2c_read, i32 noundef %182) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.75, i32 noundef %182) #12
  br label %195

183:                                              ; preds = %177
  %184 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %5, ptr noundef nonnull dereferenceable(2) @__const.elants_i2c_fw_write_page.ack_ok, i32 2) #11
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %197, label %186

186:                                              ; preds = %183
  %187 = load i8, ptr %5, align 2
  %188 = zext i8 %187 to i32
  %189 = load i8, ptr %164, align 1
  %190 = zext i8 %189 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.76, i32 noundef %188, i32 noundef %190) #12
  br label %191

191:                                              ; preds = %186, %174
  %192 = phi i32 [ %176, %174 ], [ -5, %186 ]
  %193 = add nuw nsw i32 %171, 1
  %194 = icmp eq i32 %193, 30
  br i1 %194, label %195, label %170

195:                                              ; preds = %191, %180
  %196 = phi i32 [ %182, %180 ], [ %192, %191 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.70, i32 noundef %166, i32 noundef %196) #12
  br label %200

197:                                              ; preds = %183
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  %198 = add nuw nsw i32 %166, 1
  %199 = icmp eq i32 %198, %163
  br i1 %199, label %202, label %165

200:                                              ; preds = %195, %156, %150, %142, %136, %130, %124, %118, %82, %76
  %201 = phi i32 [ %119, %118 ], [ %77, %76 ], [ %126, %124 ], [ %196, %195 ], [ %158, %156 ], [ %152, %150 ], [ %144, %142 ], [ -5, %136 ], [ %132, %130 ], [ %84, %82 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.60, i32 noundef %201) #12
  br label %203

202:                                              ; preds = %197, %159
  call void @msleep(i32 noundef 300) #11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.71) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  call fastcc void @elants_i2c_initialize(ptr noundef %19) #11
  br label %203

203:                                              ; preds = %202, %200
  %204 = phi i32 [ 0, %202 ], [ 1, %200 ]
  %205 = phi i32 [ 0, %202 ], [ %201, %200 ]
  store i32 %204, ptr %45, align 4
  %206 = getelementptr inbounds %struct.elants_data, ptr %19, i32 0, i32 19
  store i32 0, ptr %206, align 4
  %207 = load i32, ptr %42, align 4
  call void @enable_irq(i32 noundef %207) #11
  call void @msleep(i32 noundef 100) #11
  %208 = icmp eq i32 %205, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %203
  %210 = call fastcc i32 @elants_i2c_calibrate(ptr noundef %19) #11
  br label %213

211:                                              ; preds = %34, %23
  %212 = phi i32 [ -12, %23 ], [ %32, %34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #11
  call void @mutex_unlock(ptr noundef %20) #11
  br label %218

213:                                              ; preds = %209, %203, %40
  %214 = phi i32 [ -22, %40 ], [ %205, %203 ], [ 0, %209 ]
  %215 = load ptr, ptr %17, align 4
  call void @release_firmware(ptr noundef %215) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #11
  call void @mutex_unlock(ptr noundef %20) #11
  %216 = icmp eq i32 %214, 0
  %217 = select i1 %216, i32 %3, i32 %214
  br label %218

218:                                              ; preds = %213, %211, %4
  %219 = phi i32 [ %21, %4 ], [ %212, %211 ], [ %217, %213 ]
  ret i32 %219
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_iap_mode(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.elants_data, ptr %5, i32 0, i32 21
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, ptr @.str.79, ptr @.str.80
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.78, ptr noundef nonnull %9)
  ret i32 %10
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_calibration_count(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca [4 x i8], align 4
  %5 = alloca [4 x i8], align 4
  %6 = getelementptr i8, ptr %0, i32 -32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 16830547, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !8
  %7 = call fastcc i32 @elants_i2c_execute_command(ptr noundef %6, ptr noundef nonnull %4, i32 noundef 4, ptr noundef nonnull %5, i32 noundef 4, i32 noundef 1, ptr noundef nonnull @.str.82)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.83, i32 noundef %7)
  br label %17

11:                                               ; preds = %3
  %12 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 2
  %13 = load i16, ptr %12, align 2
  %14 = call i16 @llvm.bswap.i16(i16 %13) #11
  %15 = zext i16 %14 to i32
  %16 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.84, i32 noundef %15)
  br label %17

17:                                               ; preds = %11, %9
  %18 = phi i32 [ %10, %9 ], [ %16, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %18
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elants_version_attribute_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.elants_version_attribute, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %5, i32 %7
  %9 = getelementptr inbounds %struct.elants_version_attribute, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i8, ptr %8, align 1
  %14 = zext i8 %13 to i32
  br label %18

15:                                               ; preds = %3
  %16 = load i16, ptr %8, align 2
  %17 = zext i16 %16 to i32
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i32 [ 2, %12 ], [ 4, %15 ]
  %20 = phi i32 [ %14, %12 ], [ %17, %15 ]
  %21 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.86, i32 noundef %19, i32 noundef %20)
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elants_i2c_suspend(ptr noundef %0) #2 {
  %2 = alloca [4 x i8], align 4
  %3 = getelementptr i8, ptr %0, i32 -32
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 16797780, ptr %2, align 4
  %6 = getelementptr inbounds %struct.elants_data, ptr %5, i32 0, i32 21
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %59

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 476
  %11 = load i32, ptr %10, align 4
  tail call void @disable_irq(i32 noundef %11) #11
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %13 = load i16, ptr %12, align 4
  %14 = and i16 %13, 1
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %10, align 4
  %22 = tail call i32 @irq_set_irq_wake(i32 noundef %21, i32 noundef 1) #11
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.elants_data, ptr %5, i32 0, i32 25
  %25 = zext i1 %23 to i8
  store i8 %25, ptr %24, align 8
  br label %59

26:                                               ; preds = %16, %9
  %27 = getelementptr inbounds %struct.elants_data, ptr %5, i32 0, i32 26
  %28 = load i8, ptr %27, align 1, !range !11
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %26
  %31 = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 4, i16 noundef zeroext 0) #11
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %59, label %33

33:                                               ; preds = %30
  %34 = icmp sgt i32 %31, -1
  %35 = select i1 %34, i32 -5, i32 %31
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.elants_i2c_send, i32 noundef 4, ptr noundef nonnull %2, i32 noundef %35) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.92, i32 noundef %35) #12
  %36 = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 4, i16 noundef zeroext 0) #11
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %59, label %38

38:                                               ; preds = %33
  %39 = icmp sgt i32 %36, -1
  %40 = select i1 %39, i32 -5, i32 %36
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.elants_i2c_send, i32 noundef 4, ptr noundef nonnull %2, i32 noundef %40) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.92, i32 noundef %40) #12
  %41 = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 4, i16 noundef zeroext 0) #11
  %42 = icmp eq i32 %41, 4
  br i1 %42, label %59, label %43

43:                                               ; preds = %38
  %44 = icmp sgt i32 %41, -1
  %45 = select i1 %44, i32 -5, i32 %41
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.elants_i2c_send, i32 noundef 4, ptr noundef nonnull %2, i32 noundef %45) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.92, i32 noundef %45) #12
  br label %59

46:                                               ; preds = %26
  %47 = getelementptr inbounds %struct.elants_data, ptr %5, i32 0, i32 4
  %48 = load ptr, ptr %47, align 16
  %49 = icmp eq ptr %48, null
  %50 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  %51 = or i1 %49, %50
  br i1 %51, label %59, label %52

52:                                               ; preds = %46
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %48, i32 noundef 1) #11
  %53 = getelementptr inbounds %struct.elants_data, ptr %5, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 @regulator_disable(ptr noundef %54) #11
  %56 = getelementptr inbounds %struct.elants_data, ptr %5, i32 0, i32 2
  %57 = load ptr, ptr %56, align 8
  %58 = tail call i32 @regulator_disable(ptr noundef %57) #11
  br label %59

59:                                               ; preds = %52, %46, %43, %38, %33, %30, %20, %1
  %60 = phi i32 [ -16, %1 ], [ 0, %20 ], [ 0, %46 ], [ 0, %52 ], [ 0, %43 ], [ 0, %38 ], [ 0, %33 ], [ 0, %30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elants_i2c_resume(ptr noundef %0) #2 {
  %2 = alloca [4 x i8], align 4
  %3 = alloca [4 x i8], align 4
  %4 = getelementptr i8, ptr %0, i32 -32
  %5 = getelementptr i8, ptr %0, i32 64
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 16799828, ptr %3, align 4
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %8 = load i16, ptr %7, align 4
  %9 = and i16 %8, 1
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.elants_data, ptr %6, i32 0, i32 25
  %17 = load i8, ptr %16, align 8, !range !11
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %0, i32 476
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @irq_set_irq_wake(i32 noundef %21, i32 noundef 0) #11
  br label %23

23:                                               ; preds = %19, %15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 2004318071, ptr %2, align 4
  %24 = call i32 @i2c_transfer_buffer_flags(ptr noundef %4, ptr noundef nonnull %2, i32 noundef 4, i16 noundef zeroext 0) #11
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = icmp sgt i32 %24, -1
  %28 = select i1 %27, i32 -5, i32 %24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.elants_i2c_send, i32 noundef 4, ptr noundef nonnull %2, i32 noundef %28) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %28) #12
  br label %30

29:                                               ; preds = %23
  call void @msleep(i32 noundef 30) #11
  br label %30

30:                                               ; preds = %29, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %53

31:                                               ; preds = %11, %1
  %32 = getelementptr inbounds %struct.elants_data, ptr %6, i32 0, i32 26
  %33 = load i8, ptr %32, align 1, !range !11
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %31
  %36 = call i32 @i2c_transfer_buffer_flags(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 4, i16 noundef zeroext 0) #11
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %53, label %38

38:                                               ; preds = %35
  %39 = icmp sgt i32 %36, -1
  %40 = select i1 %39, i32 -5, i32 %36
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.elants_i2c_send, i32 noundef 4, ptr noundef nonnull %3, i32 noundef %40) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.93, i32 noundef %40) #12
  %41 = call i32 @i2c_transfer_buffer_flags(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 4, i16 noundef zeroext 0) #11
  %42 = icmp eq i32 %41, 4
  br i1 %42, label %53, label %43

43:                                               ; preds = %38
  %44 = icmp sgt i32 %41, -1
  %45 = select i1 %44, i32 -5, i32 %41
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.elants_i2c_send, i32 noundef 4, ptr noundef nonnull %3, i32 noundef %45) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.93, i32 noundef %45) #12
  %46 = call i32 @i2c_transfer_buffer_flags(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 4, i16 noundef zeroext 0) #11
  %47 = icmp eq i32 %46, 4
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = icmp sgt i32 %46, -1
  %50 = select i1 %49, i32 -5, i32 %46
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.elants_i2c_send, i32 noundef 4, ptr noundef nonnull %3, i32 noundef %50) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.93, i32 noundef %50) #12
  br label %53

51:                                               ; preds = %31
  %52 = tail call fastcc i32 @elants_i2c_power_on(ptr noundef %6)
  tail call fastcc void @elants_i2c_initialize(ptr noundef %6)
  br label %53

53:                                               ; preds = %51, %48, %43, %38, %35, %30
  %54 = getelementptr inbounds %struct.elants_data, ptr %6, i32 0, i32 19
  store i32 0, ptr %54, align 4
  %55 = getelementptr i8, ptr %0, i32 476
  %56 = load i32, ptr %55, align 4
  call void @enable_irq(i32 noundef %56) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
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
!9 = !{i64 2154270365, i64 2154270868, i64 2154270402, i64 2154270458, i64 2154270492, i64 2154270516, i64 2154270557, i64 2154270578, i64 2154270606, i64 2154270640}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i8 0, i8 2}
