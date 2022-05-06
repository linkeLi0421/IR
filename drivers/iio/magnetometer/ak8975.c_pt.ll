; ModuleID = '/llk/IR/drivers/iio/magnetometer/ak8975.c_pt.bc'
source_filename = "../drivers/iio/magnetometer/ak8975.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.ak_def = type { i32, ptr, i16, [5 x i8], [4 x i8], [4 x i8], [3 x i8] }
%struct.lock_class_key = type {}
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.74, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.74 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ak8975_data = type { ptr, ptr, %struct.mutex, [3 x i8], [3 x i32], ptr, ptr, i32, %struct.wait_queue_head, i32, i8, %struct.iio_mount_matrix, ptr, ptr, %struct.anon.73 }
%struct.iio_mount_matrix = type { [9 x ptr] }
%struct.anon.73 = type { [3 x i16], i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_ak8975__264_1124_ak8975_driver_init6 = internal global ptr @ak8975_driver_init, section ".initcall6.init", align 4
@ak8975_driver = internal global %struct.i2c_driver { i32 0, ptr @ak8975_probe, ptr @ak8975_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ak8975_of_match, ptr @ak_acpi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ak8975_dev_pm_ops, ptr null, ptr null }, ptr @ak8975_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_ak8975_driver_exit = internal global ptr @ak8975_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author265 = internal constant [53 x i8] c"ak8975.author=Laxman Dewangan <ldewangan@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description266 = internal constant [46 x i8] c"ak8975.description=AK8975 magnetometer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file267 = internal constant [44 x i8] c"ak8975.file=drivers/iio/magnetometer/ak8975\00", section ".modinfo", align 1
@__UNIQUE_ID_license268 = internal constant [19 x i8] c"ak8975.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [7 x i8] c"ak8975\00", align 1
@ak8975_of_match = internal constant [11 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"asahi-kasei,ak8975\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ak8975\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"asahi-kasei,ak8963\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ak8963\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"asahi-kasei,ak09911\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ak09911\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"asahi-kasei,ak09912\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ak09912\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"asahi-kasei,ak09916\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ak09916\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@ak_acpi_match = internal constant [8 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"AK8975\00\00\00", i32 1, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"AK8963\00\00\00", i32 2, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"INVN6500\00", i32 2, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"AK009911\00", i32 3, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"AK09911\00\00", i32 3, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"AKM9911\00\00", i32 3, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"AK09912\00\00", i32 4, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 4
@ak8975_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ak8975_runtime_suspend, ptr @ak8975_runtime_resume, ptr null }, align 4
@ak8975_id = internal constant [7 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ak8975\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"ak8963\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"AK8963\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"ak09911\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"ak09912\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"ak09916\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"ak_8975\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@ak_def_array = internal constant [5 x %struct.ak_def] [%struct.ak_def { i32 1, ptr @ak8975_raw_to_gauss, i16 4096, [5 x i8] c"\02\09\0A\10\12", [4 x i8] c"\01\08\04\0F", [4 x i8] c"\00\01\08\0F", [3 x i8] c"\03\05\07" }, %struct.ak_def { i32 2, ptr @ak8963_09911_raw_to_gauss, i16 8190, [5 x i8] c"\02\09\0A\10\12", [4 x i8] c"\01\08\00\0F", [4 x i8] c"\00\01\08\0F", [3 x i8] c"\03\05\07" }, %struct.ak_def { i32 3, ptr @ak8963_09911_raw_to_gauss, i16 8192, [5 x i8] c"\10\181`b", [4 x i8] c"\01\08\00\1F", [4 x i8] c"\00\01\10\1F", [3 x i8] c"\11\13\15" }, %struct.ak_def { i32 4, ptr @ak09912_raw_to_gauss, i16 32752, [5 x i8] c"\10\181`b", [4 x i8] c"\01\08\00\1F", [4 x i8] c"\00\01\10\1F", [3 x i8] c"\11\13\15" }, %struct.ak_def { i32 5, ptr @ak09912_raw_to_gauss, i16 32752, [5 x i8] c"\10\181`b", [4 x i8] c"\01\08\00\1F", [4 x i8] c"\00\01\10\1F", [3 x i8] c"\11\13\15" }], align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"AKM device type unsupported: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"vid\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Unexpected device\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"%s initialization fails\0A\00", align 1
@ak8975_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"&data->lock\00", align 1
@ak8975_channels = internal constant [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 5, i32 0, i32 1, i32 0, i32 0, %struct.anon.74 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ak8975_ext_info, ptr null, ptr null, i8 1 }, %struct.iio_chan_spec { i32 5, i32 0, i32 2, i32 1, i32 1, %struct.anon.74 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ak8975_ext_info, ptr null, ptr null, i8 1 }, %struct.iio_chan_spec { i32 5, i32 0, i32 3, i32 2, i32 2, %struct.anon.74 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ak8975_ext_info, ptr null, ptr null, i8 1 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.74 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], align 4
@ak8975_info = internal constant %struct.iio_info { ptr null, ptr null, ptr @ak8975_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ak8975_scan_masks = internal constant [2 x i32] [i32 7, i32 0], align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"triggered buffer setup failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"device register failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"Failed to enable specified Vdd supply\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"Failed to enable specified Vid supply\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Error reading WIA\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Type %d unknown\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"Error in setting fuse access mode\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"Not able to read asa data\0A\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"Error in setting power-down mode\0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"Error setting data ready interrupt\0A\00", align 1
@ak8975_setup_irq.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"&data->data_ready_queue\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"irq %d request failed: %d\0A\00", align 1
@ak8975_ext_info = internal constant [2 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.21, i32 2, ptr @iio_show_mount_matrix, ptr null, i32 ptrtoint (ptr @ak8975_get_mount_matrix to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], align 4
@.str.21 = private unnamed_addr constant [13 x i8] c"mount_matrix\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"Error in reading axis\0A\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"Error in setting operating mode\0A\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"Error in reading ST2\0A\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"ST2 status error 0x%x\0A\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"Conversion timeout happened\0A\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"Error in reading ST1\0A\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"Error in reading axes block\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author265, ptr @__UNIQUE_ID_description266, ptr @__UNIQUE_ID_file267, ptr @__UNIQUE_ID_license268, ptr @__exitcall_ak8975_driver_exit, ptr @__initcall__kmod_ak8975__264_1124_ak8975_driver_init6, ptr @ak8975_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ak8975_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ak8975_driver) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ak8975_driver_exit() #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @ak8975_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ak8975_probe(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %4 = tail call ptr @devm_gpiod_get_optional(ptr noundef %3, ptr noundef null, i32 noundef 1) #9
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = ptrtoint ptr %4 to i32
  br label %99

8:                                                ; preds = %2
  %9 = icmp eq ptr %4, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = tail call i32 @gpiod_set_consumer_name(ptr noundef nonnull %4, ptr noundef nonnull @.str.1) #9
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @devm_gpiod_get_optional(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef 7) #9
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = ptrtoint ptr %13 to i32
  br label %99

17:                                               ; preds = %12
  %18 = tail call ptr @devm_iio_device_alloc(ptr noundef %3, i32 noundef 136) #9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %99, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.iio_dev, ptr %18, i32 0, i32 19
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %18, ptr %23, align 8
  store ptr %0, ptr %22, align 8
  %24 = getelementptr inbounds %struct.ak8975_data, ptr %22, i32 0, i32 5
  store ptr %4, ptr %24, align 4
  %25 = getelementptr inbounds %struct.ak8975_data, ptr %22, i32 0, i32 6
  store ptr %13, ptr %25, align 8
  %26 = getelementptr inbounds %struct.ak8975_data, ptr %22, i32 0, i32 7
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.ak8975_data, ptr %22, i32 0, i32 11
  %28 = tail call i32 @iio_read_mount_matrix(ptr noundef %3, ptr noundef %27) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %99

30:                                               ; preds = %20
  %31 = tail call ptr @device_get_match_data(ptr noundef %3) #9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = ptrtoint ptr %31 to i32
  %35 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load ptr, ptr %3, align 4
  br label %45

40:                                               ; preds = %30
  %41 = icmp eq ptr %1, null
  br i1 %41, label %99, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  br label %45

45:                                               ; preds = %42, %38, %33
  %46 = phi i32 [ %44, %42 ], [ %34, %33 ], [ %34, %38 ]
  %47 = phi ptr [ %1, %42 ], [ %36, %33 ], [ %39, %38 ]
  %48 = add i32 %46, -1
  %49 = icmp ult i32 %48, 5
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %46) #10
  br label %99

51:                                               ; preds = %45
  %52 = getelementptr [5 x %struct.ak_def], ptr @ak_def_array, i32 0, i32 %48
  %53 = getelementptr inbounds %struct.ak8975_data, ptr %22, i32 0, i32 1
  store ptr %52, ptr %53, align 4
  %54 = tail call ptr @devm_regulator_get(ptr noundef %3, ptr noundef nonnull @.str.4) #9
  %55 = getelementptr inbounds %struct.ak8975_data, ptr %22, i32 0, i32 12
  store ptr %54, ptr %55, align 8
  %56 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = ptrtoint ptr %54 to i32
  br label %99

59:                                               ; preds = %51
  %60 = tail call ptr @devm_regulator_get(ptr noundef %3, ptr noundef nonnull @.str.5) #9
  %61 = getelementptr inbounds %struct.ak8975_data, ptr %22, i32 0, i32 13
  store ptr %60, ptr %61, align 4
  %62 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = ptrtoint ptr %60 to i32
  br label %99

65:                                               ; preds = %59
  %66 = tail call fastcc i32 @ak8975_power_on(ptr noundef %22)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %99

68:                                               ; preds = %65
  %69 = load ptr, ptr %53, align 4
  %70 = load i32, ptr %69, align 4
  %71 = tail call fastcc i32 @ak8975_who_i_am(ptr noundef %0, i32 noundef %70)
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #10
  br label %97

74:                                               ; preds = %68
  %75 = tail call fastcc i32 @ak8975_setup(ptr noundef %0)
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7, ptr noundef %47) #10
  br label %97

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.ak8975_data, ptr %22, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %79, ptr noundef nonnull @.str.8, ptr noundef nonnull @ak8975_probe.__key) #9
  %80 = getelementptr inbounds %struct.iio_dev, ptr %18, i32 0, i32 13
  store ptr @ak8975_channels, ptr %80, align 8
  %81 = getelementptr inbounds %struct.iio_dev, ptr %18, i32 0, i32 14
  store i32 4, ptr %81, align 4
  %82 = getelementptr inbounds %struct.iio_dev, ptr %18, i32 0, i32 17
  store ptr @ak8975_info, ptr %82, align 8
  %83 = getelementptr inbounds %struct.iio_dev, ptr %18, i32 0, i32 6
  store ptr @ak8975_scan_masks, ptr %83, align 4
  store i32 1, ptr %18, align 8
  %84 = getelementptr inbounds %struct.iio_dev, ptr %18, i32 0, i32 15
  store ptr %47, ptr %84, align 8
  %85 = tail call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %18, ptr noundef null, ptr noundef nonnull @ak8975_handle_trigger, i32 noundef 0, ptr noundef null, ptr noundef null) #9
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %78
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9) #10
  br label %97

88:                                               ; preds = %78
  %89 = tail call i32 @__iio_device_register(ptr noundef nonnull %18, ptr noundef null) #9
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10) #10
  tail call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %18) #9
  br label %97

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %93) #9, !srcloc !8
  %94 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %93, ptr %93, i32 1, ptr elementtype(i32) %93) #9, !srcloc !9
  %95 = tail call i32 @__pm_runtime_set_status(ptr noundef %3, i32 noundef 0) #9
  tail call void @pm_runtime_enable(ptr noundef %3) #9
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %3, i32 noundef 50) #9
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %3, i1 noundef zeroext true) #9
  %96 = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 5) #9
  br label %99

97:                                               ; preds = %91, %87, %77, %73
  %98 = phi i32 [ %71, %73 ], [ %75, %77 ], [ %85, %87 ], [ %89, %91 ]
  tail call fastcc void @ak8975_power_off(ptr noundef %22)
  br label %99

99:                                               ; preds = %97, %92, %65, %63, %57, %50, %40, %20, %17, %15, %6
  %100 = phi i32 [ %7, %6 ], [ %16, %15 ], [ -19, %50 ], [ %58, %57 ], [ %64, %63 ], [ %98, %97 ], [ 0, %92 ], [ -12, %17 ], [ %28, %20 ], [ -38, %40 ], [ %66, %65 ]
  ret i32 %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ak8975_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #9
  %8 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #9, !srcloc !8
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 0, i32 -1, ptr elementtype(i32) %8) #9, !srcloc !11
  %10 = extractvalue { i32, i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  br label %13

13:                                               ; preds = %12, %1
  tail call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #9
  tail call void @iio_device_unregister(ptr noundef %3) #9
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %3) #9
  %14 = getelementptr inbounds %struct.ak8975_data, ptr %5, i32 0, i32 10
  %15 = load i8, ptr %14, align 8
  %16 = getelementptr inbounds %struct.ak8975_data, ptr %5, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.ak_def, ptr %17, i32 0, i32 4, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = xor i8 %19, -1
  %21 = and i8 %15, %20
  %22 = getelementptr %struct.ak_def, ptr %17, i32 0, i32 5, i32 0
  %23 = load i8, ptr %22, align 1
  %24 = or i8 %21, %23
  %25 = load ptr, ptr %5, align 8
  %26 = getelementptr %struct.ak_def, ptr %17, i32 0, i32 3, i32 2
  %27 = load i8, ptr %26, align 2
  %28 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext %27, i8 noundef zeroext %24) #9
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %13
  store i8 %24, ptr %14, align 8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 500, i32 noundef 2) #9
  br label %31

31:                                               ; preds = %30, %13
  %32 = getelementptr inbounds %struct.ak8975_data, ptr %5, i32 0, i32 6
  %33 = load ptr, ptr %32, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %33, i32 noundef 1) #9
  %34 = getelementptr inbounds %struct.ak8975_data, ptr %5, i32 0, i32 13
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @regulator_disable(ptr noundef %35) #9
  %37 = getelementptr inbounds %struct.ak8975_data, ptr %5, i32 0, i32 12
  %38 = load ptr, ptr %37, align 8
  %39 = tail call i32 @regulator_disable(ptr noundef %38) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_consumer_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_mount_matrix(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ak8975_power_on(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ak8975_data, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @regulator_enable(ptr noundef %3) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.11) #10
  br label %20

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ak8975_data, ptr %0, i32 0, i32 13
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @regulator_enable(ptr noundef %11) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.12) #10
  br label %20

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.ak8975_data, ptr %0, i32 0, i32 6
  %19 = load ptr, ptr %18, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %19, i32 noundef 0) #9
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #9
  br label %20

20:                                               ; preds = %17, %14, %6
  %21 = phi i32 [ %4, %6 ], [ %12, %14 ], [ 0, %17 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ak8975_who_i_am(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i16 0, ptr %3, align 2, !annotation !13
  %4 = call i32 @i2c_smbus_read_i2c_block_data_or_emulated(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 2, ptr noundef nonnull %3) #9
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.13) #10
  br label %27

8:                                                ; preds = %2
  %9 = load i8, ptr %3, align 2
  %10 = icmp eq i8 %9, 72
  br i1 %10, label %11, label %27

11:                                               ; preds = %8
  switch i32 %1, label %24 [
    i32 1, label %27
    i32 2, label %27
    i32 3, label %12
    i32 4, label %16
    i32 5, label %20
  ]

12:                                               ; preds = %11
  %13 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 5
  br i1 %15, label %27, label %26

16:                                               ; preds = %11
  %17 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 4
  br i1 %19, label %27, label %26

20:                                               ; preds = %11
  %21 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 9
  br i1 %23, label %27, label %26

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.14, i32 noundef %1) #10
  br label %26

26:                                               ; preds = %24, %20, %16, %12
  br label %27

27:                                               ; preds = %26, %20, %16, %12, %11, %11, %8, %6
  %28 = phi i32 [ %4, %6 ], [ -19, %26 ], [ -19, %8 ], [ 0, %11 ], [ 0, %11 ], [ 0, %12 ], [ 0, %16 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ak8975_setup(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ak8975_data, ptr %5, i32 0, i32 10
  %7 = load i8, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ak8975_data, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.ak_def, ptr %9, i32 0, i32 4, i32 3
  %11 = load i8, ptr %10, align 1
  %12 = xor i8 %11, -1
  %13 = and i8 %7, %12
  %14 = getelementptr %struct.ak_def, ptr %9, i32 0, i32 5, i32 3
  %15 = load i8, ptr %14, align 1
  %16 = or i8 %13, %15
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr %struct.ak_def, ptr %9, i32 0, i32 3, i32 2
  %19 = load i8, ptr %18, align 2
  %20 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext %19, i8 noundef zeroext %16) #9
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.15) #10
  br label %108

24:                                               ; preds = %1
  store i8 %16, ptr %6, align 8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 500, i32 noundef 2) #9
  %25 = load ptr, ptr %8, align 4
  %26 = getelementptr %struct.ak_def, ptr %25, i32 0, i32 3, i32 3
  %27 = load i8, ptr %26, align 1
  %28 = getelementptr inbounds %struct.ak8975_data, ptr %5, i32 0, i32 3
  %29 = tail call i32 @i2c_smbus_read_i2c_block_data_or_emulated(ptr noundef %0, i8 noundef zeroext %27, i8 noundef zeroext 3, ptr noundef %28) #9
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.16) #10
  br label %108

33:                                               ; preds = %24
  %34 = load i8, ptr %6, align 8
  %35 = load ptr, ptr %8, align 4
  %36 = getelementptr %struct.ak_def, ptr %35, i32 0, i32 4, i32 3
  %37 = load i8, ptr %36, align 1
  %38 = xor i8 %37, -1
  %39 = and i8 %34, %38
  %40 = getelementptr %struct.ak_def, ptr %35, i32 0, i32 5, i32 0
  %41 = load i8, ptr %40, align 1
  %42 = or i8 %39, %41
  %43 = load ptr, ptr %5, align 8
  %44 = getelementptr %struct.ak_def, ptr %35, i32 0, i32 3, i32 2
  %45 = load i8, ptr %44, align 2
  %46 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %43, i8 noundef zeroext %45, i8 noundef zeroext %42) #9
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %33
  %49 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.17) #10
  br label %108

50:                                               ; preds = %33
  store i8 %42, ptr %6, align 8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 500, i32 noundef 2) #9
  %51 = getelementptr inbounds %struct.ak8975_data, ptr %5, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %56 = load i32, ptr %55, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %84

58:                                               ; preds = %54, %50
  %59 = load ptr, ptr %5, align 8
  %60 = getelementptr inbounds %struct.ak8975_data, ptr %5, i32 0, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %60, ptr noundef nonnull @.str.19, ptr noundef nonnull @ak8975_setup_irq.__key) #9
  %61 = getelementptr inbounds %struct.ak8975_data, ptr %5, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %61) #9
  %62 = getelementptr inbounds %struct.i2c_client, ptr %59, i32 0, i32 6
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load ptr, ptr %51, align 4
  %67 = tail call i32 @gpiod_to_irq(ptr noundef %66) #9
  br label %68

68:                                               ; preds = %65, %58
  %69 = phi i32 [ %67, %65 ], [ %63, %58 ]
  %70 = getelementptr inbounds %struct.i2c_client, ptr %59, i32 0, i32 4
  %71 = getelementptr inbounds %struct.i2c_client, ptr %59, i32 0, i32 4, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load ptr, ptr %70, align 4
  br label %76

76:                                               ; preds = %74, %68
  %77 = phi ptr [ %75, %74 ], [ %72, %68 ]
  %78 = tail call i32 @devm_request_threaded_irq(ptr noundef %70, i32 noundef %69, ptr noundef nonnull @ak8975_irq_handler, ptr noundef null, i32 noundef 8193, ptr noundef %77, ptr noundef %5) #9
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.ak8975_data, ptr %5, i32 0, i32 7
  store i32 %69, ptr %81, align 4
  br label %84

82:                                               ; preds = %76
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.20, i32 noundef %69, i32 noundef %78) #10
  %83 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.18) #10
  br label %108

84:                                               ; preds = %80, %54
  %85 = load ptr, ptr %8, align 4
  %86 = getelementptr inbounds %struct.ak_def, ptr %85, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = load i8, ptr %28, align 4
  %89 = zext i8 %88 to i16
  %90 = tail call i32 %87(i16 noundef zeroext %89) #9
  %91 = getelementptr inbounds %struct.ak8975_data, ptr %5, i32 0, i32 4
  store i32 %90, ptr %91, align 8
  %92 = load ptr, ptr %8, align 4
  %93 = getelementptr inbounds %struct.ak_def, ptr %92, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr %struct.ak8975_data, ptr %5, i32 0, i32 3, i32 1
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %96 to i16
  %98 = tail call i32 %94(i16 noundef zeroext %97) #9
  %99 = getelementptr %struct.ak8975_data, ptr %5, i32 0, i32 4, i32 1
  store i32 %98, ptr %99, align 4
  %100 = load ptr, ptr %8, align 4
  %101 = getelementptr inbounds %struct.ak_def, ptr %100, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr %struct.ak8975_data, ptr %5, i32 0, i32 3, i32 2
  %104 = load i8, ptr %103, align 2
  %105 = zext i8 %104 to i16
  %106 = tail call i32 %102(i16 noundef zeroext %105) #9
  %107 = getelementptr %struct.ak8975_data, ptr %5, i32 0, i32 4, i32 2
  store i32 %106, ptr %107, align 8
  br label %108

108:                                              ; preds = %84, %82, %48, %31, %22
  %109 = phi i32 [ %20, %22 ], [ %29, %31 ], [ %46, %48 ], [ %78, %82 ], [ 0, %84 ]
  ret i32 %109
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ak8975_handle_trigger(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [3 x i16], align 2
  %4 = load ptr, ptr %1, align 8
  %5 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 19
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ak8975_data, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %3, i8 0, i32 6, i1 false) #9, !annotation !13
  %10 = getelementptr inbounds %struct.ak8975_data, ptr %6, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %10) #9
  %11 = tail call fastcc i32 @ak8975_start_read_axis(ptr noundef %6, ptr noundef %7) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %52

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ak_def, ptr %9, i32 0, i32 6
  %15 = load i8, ptr %14, align 1
  %16 = call i32 @i2c_smbus_read_i2c_block_data_or_emulated(ptr noundef %7, i8 noundef zeroext %15, i8 noundef zeroext 6, ptr noundef nonnull %3) #9
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %52, label %18

18:                                               ; preds = %13
  call void @mutex_unlock(ptr noundef %10) #9
  %19 = load i16, ptr %3, align 2
  %20 = getelementptr inbounds %struct.ak_def, ptr %9, i32 0, i32 2
  %21 = load i16, ptr %20, align 4
  %22 = sub i16 0, %21
  %23 = call i16 @llvm.smax.i16(i16 %19, i16 %22) #9
  %24 = call i16 @llvm.smin.i16(i16 %23, i16 %21) #9
  %25 = getelementptr inbounds %struct.ak8975_data, ptr %6, i32 0, i32 14
  store i16 %24, ptr %25, align 8
  %26 = getelementptr inbounds [3 x i16], ptr %3, i32 0, i32 1
  %27 = load i16, ptr %26, align 2
  %28 = load i16, ptr %20, align 4
  %29 = sub i16 0, %28
  %30 = call i16 @llvm.smax.i16(i16 %27, i16 %29) #9
  %31 = call i16 @llvm.smin.i16(i16 %30, i16 %28) #9
  %32 = getelementptr %struct.ak8975_data, ptr %6, i32 0, i32 14, i32 0, i32 1
  store i16 %31, ptr %32, align 2
  %33 = getelementptr inbounds [3 x i16], ptr %3, i32 0, i32 2
  %34 = load i16, ptr %33, align 2
  %35 = load i16, ptr %20, align 4
  %36 = sub i16 0, %35
  %37 = call i16 @llvm.smax.i16(i16 %34, i16 %36) #9
  %38 = call i16 @llvm.smin.i16(i16 %37, i16 %35) #9
  %39 = getelementptr %struct.ak8975_data, ptr %6, i32 0, i32 14, i32 0, i32 2
  store i16 %38, ptr %39, align 4
  %40 = call i64 @iio_get_time_ns(ptr noundef %4) #9
  %41 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 9
  %42 = load i8, ptr %41, align 8, !range !14
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %18
  %45 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = lshr i32 %46, 3
  %48 = add nsw i32 %47, -1
  %49 = getelementptr i64, ptr %25, i32 %48
  store i64 %40, ptr %49, align 8
  br label %50

50:                                               ; preds = %44, %18
  %51 = call i32 @iio_push_to_buffers(ptr noundef %4, ptr noundef %25) #9
  br label %54

52:                                               ; preds = %13, %2
  call void @mutex_unlock(ptr noundef %10) #9
  %53 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.28) #10
  br label %54

54:                                               ; preds = %52, %50
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #9
  %55 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 10
  %56 = load ptr, ptr %55, align 4
  call void @iio_trigger_notify_done(ptr noundef %56) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ak8975_power_off(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ak8975_data, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #9
  %4 = getelementptr inbounds %struct.ak8975_data, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regulator_disable(ptr noundef %5) #9
  %7 = getelementptr inbounds %struct.ak8975_data, ptr %0, i32 0, i32 12
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @regulator_disable(ptr noundef %8) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ak8975_raw_to_gauss(i16 noundef zeroext %0) #5 {
  %2 = zext i16 %0 to i32
  %3 = mul nuw nsw i32 %2, 3000
  %4 = add nuw nsw i32 %3, 384000
  %5 = lshr i32 %4, 8
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ak8963_09911_raw_to_gauss(i16 noundef zeroext %0) #5 {
  %2 = zext i16 %0 to i32
  %3 = mul nuw nsw i32 %2, 6000
  %4 = add nuw nsw i32 %3, 768000
  %5 = lshr i32 %4, 8
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ak09912_raw_to_gauss(i16 noundef zeroext %0) #5 {
  %2 = zext i16 %0 to i32
  %3 = mul nuw nsw i32 %2, 1500
  %4 = add nuw nsw i32 %3, 192000
  %5 = lshr i32 %4, 8
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data_or_emulated(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ak8975_irq_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.ak8975_data, ptr %1, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %3) #9
  %4 = getelementptr inbounds %struct.ak8975_data, ptr %1, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %4, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_show_mount_matrix(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @ak8975_get_mount_matrix(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #7 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ak8975_data, ptr %4, i32 0, i32 11
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ak8975_read_raw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, i32 noundef %4) #2 {
  %6 = alloca i16, align 2
  %7 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %8 = load ptr, ptr %7, align 8
  switch i32 %4, label %48 [
    i32 0, label %9
    i32 2, label %43
  ]

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = load ptr, ptr %8, align 8
  %13 = getelementptr inbounds %struct.ak8975_data, ptr %8, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  store i16 0, ptr %6, align 2, !annotation !13
  %15 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  %16 = tail call i32 @__pm_runtime_resume(ptr noundef %15, i32 noundef 4) #9
  %17 = getelementptr inbounds %struct.ak8975_data, ptr %8, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %17) #9
  %18 = tail call fastcc i32 @ak8975_start_read_axis(ptr noundef %8, ptr noundef %12) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %9
  %21 = getelementptr %struct.ak_def, ptr %14, i32 0, i32 6, i32 %11
  %22 = load i8, ptr %21, align 1
  %23 = call i32 @i2c_smbus_read_i2c_block_data_or_emulated(ptr noundef %12, i8 noundef zeroext %22, i8 noundef zeroext 2, ptr noundef nonnull %6) #9
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %20
  call void @mutex_unlock(ptr noundef %17) #9
  %26 = load ptr, ptr %8, align 8
  %27 = call i64 @ktime_get_mono_fast_ns() #9
  %28 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4, i32 11, i32 22
  store volatile i64 %27, ptr %28, align 8
  %29 = load ptr, ptr %8, align 8
  %30 = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4
  %31 = call i32 @__pm_runtime_suspend(ptr noundef %30, i32 noundef 13) #9
  %32 = load i16, ptr %6, align 2
  %33 = getelementptr inbounds %struct.ak_def, ptr %14, i32 0, i32 2
  %34 = load i16, ptr %33, align 4
  %35 = sub i16 0, %34
  %36 = call i16 @llvm.smax.i16(i16 %32, i16 %35) #9
  %37 = call i16 @llvm.smin.i16(i16 %36, i16 %34) #9
  %38 = sext i16 %37 to i32
  store i32 %38, ptr %2, align 4
  br label %41

39:                                               ; preds = %20, %9
  %40 = phi i32 [ %18, %9 ], [ %23, %20 ]
  call void @mutex_unlock(ptr noundef %17) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.22) #10
  br label %41

41:                                               ; preds = %39, %25
  %42 = phi i32 [ %40, %39 ], [ 1, %25 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  br label %48

43:                                               ; preds = %5
  store i32 0, ptr %2, align 4
  %44 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr %struct.ak8975_data, ptr %8, i32 0, i32 4, i32 %45
  %47 = load i32, ptr %46, align 4
  store i32 %47, ptr %3, align 4
  br label %48

48:                                               ; preds = %43, %41, %5
  %49 = phi i32 [ 2, %43 ], [ %42, %41 ], [ -22, %5 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ak8975_start_read_axis(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = getelementptr inbounds %struct.ak8975_data, ptr %0, i32 0, i32 10
  %5 = load i8, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ak8975_data, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.ak_def, ptr %7, i32 0, i32 4, i32 3
  %9 = load i8, ptr %8, align 1
  %10 = xor i8 %9, -1
  %11 = and i8 %5, %10
  %12 = getelementptr %struct.ak_def, ptr %7, i32 0, i32 5, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = or i8 %11, %13
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr %struct.ak_def, ptr %7, i32 0, i32 3, i32 2
  %17 = load i8, ptr %16, align 2
  %18 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext %17, i8 noundef zeroext %14) #9
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.23) #10
  br label %123

22:                                               ; preds = %2
  store i8 %14, ptr %4, align 8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 500, i32 noundef 2) #9
  %23 = getelementptr inbounds %struct.ak8975_data, ptr %0, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %54, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ak8975_data, ptr %0, i32 0, i32 9
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %27) #9
  br label %96

32:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false) #9, !annotation !13
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #9
  %33 = getelementptr inbounds %struct.ak8975_data, ptr %0, i32 0, i32 8
  %34 = call i32 @prepare_to_wait_event(ptr noundef %33, ptr noundef nonnull %3, i32 noundef 2) #9
  %35 = load volatile i32, ptr %27, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %38, %32
  %39 = phi i32 [ %48, %38 ], [ 10, %32 ]
  %40 = call i32 @schedule_timeout(i32 noundef %39) #9
  %41 = call i32 @prepare_to_wait_event(ptr noundef %33, ptr noundef nonnull %3, i32 noundef 2) #9
  %42 = load volatile i32, ptr %27, align 4
  %43 = and i32 %42, 1
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = icmp ne i32 %40, 0
  %47 = select i1 %45, i1 true, i1 %46
  %48 = select i1 %47, i32 %40, i32 1
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %44, i1 true, i1 %49
  br i1 %50, label %51, label %38

51:                                               ; preds = %38
  %52 = icmp sgt i32 %48, 0
  call void @finish_wait(ptr noundef %33, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #9
  call void @_clear_bit(i32 noundef 0, ptr noundef %27) #9
  br i1 %52, label %96, label %123

53:                                               ; preds = %32
  call void @finish_wait(ptr noundef %33, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #9
  call void @_clear_bit(i32 noundef 0, ptr noundef %27) #9
  br label %96

54:                                               ; preds = %22
  %55 = getelementptr inbounds %struct.ak8975_data, ptr %0, i32 0, i32 5
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  %58 = load ptr, ptr %0, align 8
  br i1 %57, label %80, label %62

59:                                               ; preds = %62
  %60 = add nsw i32 %63, -10
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %59, %54
  %63 = phi i32 [ %60, %59 ], [ 500, %54 ]
  tail call void @msleep(i32 noundef 10) #9
  %64 = load ptr, ptr %55, align 4
  %65 = tail call i32 @gpiod_get_value(ptr noundef %64) #9
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %59, label %67

67:                                               ; preds = %62
  %68 = load ptr, ptr %6, align 4
  %69 = getelementptr inbounds %struct.ak_def, ptr %68, i32 0, i32 3
  %70 = load i8, ptr %69, align 2
  %71 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %58, i8 noundef zeroext %70) #9
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %96

73:                                               ; preds = %67, %59
  %74 = phi ptr [ @.str.27, %67 ], [ @.str.26, %59 ]
  %75 = phi i32 [ %71, %67 ], [ -22, %59 ]
  %76 = getelementptr inbounds %struct.i2c_client, ptr %58, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull %74) #10
  br label %123

77:                                               ; preds = %89
  %78 = add nsw i32 %81, -10
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %92, label %80

80:                                               ; preds = %77, %54
  %81 = phi i32 [ %78, %77 ], [ 500, %54 ]
  tail call void @msleep(i32 noundef 10) #9
  %82 = load ptr, ptr %6, align 4
  %83 = getelementptr inbounds %struct.ak_def, ptr %82, i32 0, i32 3
  %84 = load i8, ptr %83, align 2
  %85 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %58, i8 noundef zeroext %84) #9
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.i2c_client, ptr %58, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.27) #10
  br label %123

89:                                               ; preds = %80
  %90 = trunc i32 %85 to i8
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %77, label %94

92:                                               ; preds = %77
  %93 = getelementptr inbounds %struct.i2c_client, ptr %58, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.26) #10
  br label %123

94:                                               ; preds = %89
  %95 = and i32 %85, 255
  br label %96

96:                                               ; preds = %94, %67, %53, %51, %31
  %97 = phi i32 [ %71, %67 ], [ %95, %94 ], [ 0, %53 ], [ 0, %51 ], [ 0, %31 ]
  %98 = load ptr, ptr %6, align 4
  %99 = getelementptr inbounds %struct.ak_def, ptr %98, i32 0, i32 4
  %100 = load i8, ptr %99, align 1
  %101 = zext i8 %100 to i32
  %102 = and i32 %97, %101
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %123, label %104

104:                                              ; preds = %96
  %105 = getelementptr %struct.ak_def, ptr %98, i32 0, i32 3, i32 1
  %106 = load i8, ptr %105, align 1
  %107 = call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %106) #9
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.24) #10
  br label %123

111:                                              ; preds = %104
  %112 = load ptr, ptr %6, align 4
  %113 = getelementptr %struct.ak_def, ptr %112, i32 0, i32 4, i32 2
  %114 = load i8, ptr %113, align 1
  %115 = getelementptr %struct.ak_def, ptr %112, i32 0, i32 4, i32 1
  %116 = load i8, ptr %115, align 1
  %117 = or i8 %116, %114
  %118 = zext i8 %117 to i32
  %119 = and i32 %107, %118
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %111
  %122 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %122, ptr noundef nonnull @.str.25, i32 noundef %107) #10
  br label %123

123:                                              ; preds = %121, %111, %109, %96, %92, %87, %73, %51, %20
  %124 = phi i32 [ %18, %20 ], [ %107, %109 ], [ -22, %121 ], [ 0, %111 ], [ 0, %96 ], [ -22, %92 ], [ %85, %87 ], [ %75, %73 ], [ -62, %51 ]
  ret i32 %124
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ak8975_runtime_suspend(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ak8975_data, ptr %5, i32 0, i32 10
  %7 = load i8, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ak8975_data, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.ak_def, ptr %9, i32 0, i32 4, i32 3
  %11 = load i8, ptr %10, align 1
  %12 = xor i8 %11, -1
  %13 = and i8 %7, %12
  %14 = getelementptr %struct.ak_def, ptr %9, i32 0, i32 5, i32 0
  %15 = load i8, ptr %14, align 1
  %16 = or i8 %13, %15
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr %struct.ak_def, ptr %9, i32 0, i32 3, i32 2
  %19 = load i8, ptr %18, align 2
  %20 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext %19, i8 noundef zeroext %16) #9
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.17) #10
  br label %32

23:                                               ; preds = %1
  store i8 %16, ptr %6, align 8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 500, i32 noundef 2) #9
  %24 = getelementptr inbounds %struct.ak8975_data, ptr %5, i32 0, i32 6
  %25 = load ptr, ptr %24, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %25, i32 noundef 1) #9
  %26 = getelementptr inbounds %struct.ak8975_data, ptr %5, i32 0, i32 13
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @regulator_disable(ptr noundef %27) #9
  %29 = getelementptr inbounds %struct.ak8975_data, ptr %5, i32 0, i32 12
  %30 = load ptr, ptr %29, align 8
  %31 = tail call i32 @regulator_disable(ptr noundef %30) #9
  br label %32

32:                                               ; preds = %23, %22
  %33 = phi i32 [ %20, %22 ], [ 0, %23 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ak8975_runtime_resume(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = tail call fastcc i32 @ak8975_power_on(ptr noundef %5)
  %7 = getelementptr inbounds %struct.ak8975_data, ptr %5, i32 0, i32 10
  %8 = load i8, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ak8975_data, ptr %5, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.ak_def, ptr %10, i32 0, i32 4, i32 3
  %12 = load i8, ptr %11, align 1
  %13 = xor i8 %12, -1
  %14 = and i8 %8, %13
  %15 = getelementptr %struct.ak_def, ptr %10, i32 0, i32 5, i32 0
  %16 = load i8, ptr %15, align 1
  %17 = or i8 %14, %16
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr %struct.ak_def, ptr %10, i32 0, i32 3, i32 2
  %20 = load i8, ptr %19, align 2
  %21 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext %20, i8 noundef zeroext %17) #9
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  store i8 %17, ptr %7, align 8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 500, i32 noundef 2) #9
  br label %25

24:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.17) #10
  br label %25

25:                                               ; preds = %24, %23
  %26 = phi i32 [ %21, %24 ], [ 0, %23 ]
  ret i32 %26
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smin.i16(i16, i16) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!8 = !{i64 567570, i64 2148057541, i64 2148057567, i64 2148057614, i64 2148057636, i64 2148057664, i64 2148057684}
!9 = !{i64 2148068956, i64 2148068982, i64 2148069011, i64 2148069045, i64 2148069076, i64 2148069099}
!10 = !{i64 2148068463}
!11 = !{i64 554139, i64 554164, i64 554186, i64 554202, i64 554214, i64 554234, i64 554258, i64 554274, i64 554286}
!12 = !{i64 2148068589}
!13 = !{!"auto-init"}
!14 = !{i8 0, i8 2}
