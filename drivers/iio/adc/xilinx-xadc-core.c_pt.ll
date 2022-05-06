; ModuleID = '/llk/IR/drivers/iio/adc/xilinx-xadc-core.c_pt.bc'
source_filename = "../drivers/iio/adc/xilinx-xadc-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type {}
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.5, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.5 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
%struct.xadc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.xadc = type { ptr, ptr, ptr, [16 x i16], i16, i32, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.delayed_work, %struct.mutex, %struct.spinlock, %struct.completion }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }

@__initcall__kmod_xilinx_xadc__170_1489_xadc_driver_init6 = internal global ptr @xadc_driver_init, section ".initcall6.init", align 4
@xadc_driver = internal global %struct.platform_driver { ptr @xadc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xadc_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_xadc_driver_exit = internal global ptr @xadc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file171 = internal constant [45 x i8] c"xilinx_xadc.file=drivers/iio/adc/xilinx-xadc\00", section ".modinfo", align 1
@__UNIQUE_ID_license172 = internal constant [27 x i8] c"xilinx_xadc.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author173 = internal constant [56 x i8] c"xilinx_xadc.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description174 = internal constant [47 x i8] c"xilinx_xadc.description=Xilinx XADC IIO driver\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [5 x i8] c"xadc\00", align 1
@xadc_of_match_table = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,zynq-xadc-1.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xadc_zynq_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,axi-xadc-1.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xadc_7s_axi_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,system-management-wiz-1.3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xadc_us_axi_ops }, %struct.of_device_id zeroinitializer], align 4
@xadc_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"&xadc->mutex\00", align 1
@xadc_type_names = internal unnamed_addr constant [2 x ptr] [ptr @.str, ptr @.str.5], align 4
@xadc_info = internal constant %struct.iio_info { ptr null, ptr null, ptr @xadc_read_raw, ptr null, ptr null, ptr @xadc_write_raw, ptr null, ptr null, ptr @xadc_read_event_config, ptr @xadc_write_event_config, ptr @xadc_read_event_value, ptr @xadc_write_event_value, ptr null, ptr @xadc_update_scan_mode, ptr null, ptr null, ptr null, ptr null }, align 4
@xadc_buffer_ops = internal constant %struct.iio_buffer_setup_ops { ptr @xadc_preenable, ptr null, ptr null, ptr @xadc_postdisable, ptr null }, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"convst\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"samplerate\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"xilinx-system-monitor\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"xlnx,external-mux\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"single\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"dual\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"xlnx,external-mux-channel\00", align 1
@xadc_7s_channels = internal constant [26 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 8, %struct.anon.5 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @xadc_temp_events, i32 1, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 1, i32 9, %struct.anon.5 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @xadc_voltage_events, i32 3, ptr null, ptr @.str.14, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 2, i32 10, %struct.anon.5 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @xadc_voltage_events, i32 3, ptr null, ptr @.str.15, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 6, i32 14, %struct.anon.5 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @xadc_voltage_events, i32 3, ptr null, ptr @.str.16, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 13, i32 5, %struct.anon.5 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @xadc_voltage_events, i32 3, ptr null, ptr @.str.17, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 14, i32 6, %struct.anon.5 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @xadc_voltage_events, i32 3, ptr null, ptr @.str.18, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 15, i32 7, %struct.anon.5 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @xadc_voltage_events, i32 3, ptr null, ptr @.str.19, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 4, i32 12, %struct.anon.5 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.20, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 5, i32 13, %struct.anon.5 { i8 115, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.21, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 3, i32 11, %struct.anon.5 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 16, i32 16, %struct.anon.5 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 17, i32 17, %struct.anon.5 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 18, i32 18, %struct.anon.5 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 12, i32 0, i32 19, i32 19, %struct.anon.5 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 13, i32 0, i32 20, i32 20, %struct.anon.5 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 14, i32 0, i32 21, i32 21, %struct.anon.5 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 15, i32 0, i32 22, i32 22, %struct.anon.5 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 16, i32 0, i32 23, i32 23, %struct.anon.5 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 17, i32 0, i32 24, i32 24, %struct.anon.5 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 18, i32 0, i32 25, i32 25, %struct.anon.5 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 19, i32 0, i32 26, i32 26, %struct.anon.5 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 20, i32 0, i32 27, i32 27, %struct.anon.5 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 21, i32 0, i32 28, i32 28, %struct.anon.5 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 22, i32 0, i32 29, i32 29, %struct.anon.5 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 23, i32 0, i32 30, i32 30, %struct.anon.5 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 24, i32 0, i32 31, i32 31, %struct.anon.5 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }], align 4
@xadc_us_channels = internal constant [26 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 8, %struct.anon.5 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @xadc_temp_events, i32 1, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 1, i32 9, %struct.anon.5 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @xadc_voltage_events, i32 3, ptr null, ptr @.str.14, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 2, i32 10, %struct.anon.5 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @xadc_voltage_events, i32 3, ptr null, ptr @.str.15, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 6, i32 14, %struct.anon.5 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @xadc_voltage_events, i32 3, ptr null, ptr @.str.16, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 13, i32 5, %struct.anon.5 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @xadc_voltage_events, i32 3, ptr null, ptr @.str.22, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 14, i32 6, %struct.anon.5 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @xadc_voltage_events, i32 3, ptr null, ptr @.str.23, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 15, i32 7, %struct.anon.5 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @xadc_voltage_events, i32 3, ptr null, ptr @.str.24, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 4, i32 12, %struct.anon.5 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.20, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 5, i32 13, %struct.anon.5 { i8 115, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.21, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 3, i32 11, %struct.anon.5 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 16, i32 16, %struct.anon.5 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 17, i32 17, %struct.anon.5 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 18, i32 18, %struct.anon.5 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 12, i32 0, i32 19, i32 19, %struct.anon.5 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 13, i32 0, i32 20, i32 20, %struct.anon.5 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 14, i32 0, i32 21, i32 21, %struct.anon.5 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 15, i32 0, i32 22, i32 22, %struct.anon.5 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 16, i32 0, i32 23, i32 23, %struct.anon.5 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 17, i32 0, i32 24, i32 24, %struct.anon.5 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 18, i32 0, i32 25, i32 25, %struct.anon.5 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 19, i32 0, i32 26, i32 26, %struct.anon.5 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 20, i32 0, i32 27, i32 27, %struct.anon.5 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 21, i32 0, i32 28, i32 28, %struct.anon.5 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 22, i32 0, i32 29, i32 29, %struct.anon.5 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 23, i32 0, i32 30, i32 30, %struct.anon.5 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 24, i32 0, i32 31, i32 31, %struct.anon.5 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }], align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"xlnx,channels\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"xlnx,bipolar\00", align 1
@xadc_temp_events = internal constant [1 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 7, i32 0, i32 0, i32 0 }], align 4
@xadc_voltage_events = internal constant [3 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 2, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 2, i32 2, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 0, i32 1, i32 0, i32 0, i32 0 }], align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"vccint\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"vccaux\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"vccbram\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"vccpint\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"vccpaux\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"vccoddr\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"vrefp\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"vrefn\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"vccpsintlp\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"vccpsintfp\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"vccpsaux\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"%s%d-%s\00", align 1
@xadc_trigger_ops = internal constant %struct.iio_trigger_ops { ptr @xadc_trigger_set_state, ptr null, ptr null }, align 4
@xadc_zynq_ops = internal constant %struct.xadc_ops { ptr @xadc_zynq_read_adc_reg, ptr @xadc_zynq_write_adc_reg, ptr @xadc_zynq_setup, ptr @xadc_zynq_update_alarm, ptr @xadc_zynq_get_dclk_rate, ptr @xadc_zynq_interrupt_handler, i32 0, i32 0 }, align 4
@xadc_7s_axi_ops = internal constant %struct.xadc_ops { ptr @xadc_axi_read_adc_reg, ptr @xadc_axi_write_adc_reg, ptr @xadc_axi_setup, ptr @xadc_axi_update_alarm, ptr @xadc_axi_get_dclk, ptr @xadc_axi_interrupt_handler, i32 3, i32 0 }, align 4
@xadc_us_axi_ops = internal constant %struct.xadc_ops { ptr @xadc_axi_read_adc_reg, ptr @xadc_axi_write_adc_reg, ptr @xadc_axi_setup, ptr @xadc_axi_update_alarm, ptr @xadc_axi_get_dclk, ptr @xadc_axi_interrupt_handler, i32 3, i32 1 }, align 4
@xadc_axi_reg_offsets = internal unnamed_addr constant [2 x i32] [i32 512, i32 1024], align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_description174, ptr @__UNIQUE_ID_file171, ptr @__UNIQUE_ID_license172, ptr @__exitcall_xadc_driver_exit, ptr @__initcall__kmod_xilinx_xadc__170_1489_xadc_driver_init6, ptr @xadc_driver_exit], section "llvm.metadata"
@switch.table.xadc_trigger_handler = private unnamed_addr constant [10 x i32] [i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6], align 4
@switch.table.xadc_read_raw = private unnamed_addr constant [15 x i32] [i32 3000, i32 3000, i32 1000, i32 3000, i32 3000, i32 3000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 3000, i32 3000, i32 3000], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @xadc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @xadc_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @xadc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @xadc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xadc_probe(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %303, label %9

9:                                                ; preds = %1
  %10 = tail call ptr @of_match_node(ptr noundef nonnull @xadc_of_match_table, ptr noundef nonnull %7) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %303, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.of_device_id, ptr %10, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef 0) #8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = icmp eq i32 %15, -6
  br i1 %18, label %19, label %303

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.xadc_ops, ptr %14, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %303, label %24

24:                                               ; preds = %19, %12
  %25 = tail call ptr @devm_iio_device_alloc(ptr noundef %5, i32 noundef 164) #8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %303, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.iio_dev, ptr %25, i32 0, i32 19
  %29 = load ptr, ptr %28, align 8
  %30 = load ptr, ptr %13, align 4
  %31 = getelementptr inbounds %struct.xadc, ptr %29, i32 0, i32 2
  store ptr %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.xadc, ptr %29, i32 0, i32 16
  store i32 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.xadc, ptr %29, i32 0, i32 16, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %33, ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #8
  %34 = getelementptr inbounds %struct.xadc, ptr %29, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %34, ptr noundef nonnull @.str.1, ptr noundef nonnull @xadc_probe.__key) #8
  %35 = getelementptr inbounds %struct.xadc, ptr %29, i32 0, i32 15
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.xadc, ptr %29, i32 0, i32 13
  store i32 -32, ptr %36, align 4
  %37 = getelementptr inbounds %struct.xadc, ptr %29, i32 0, i32 13, i32 0, i32 1
  store volatile ptr %37, ptr %37, align 4
  %38 = getelementptr inbounds %struct.xadc, ptr %29, i32 0, i32 13, i32 0, i32 1, i32 1
  store ptr %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.xadc, ptr %29, i32 0, i32 13, i32 0, i32 2
  store ptr @xadc_zynq_unmask_worker, ptr %39, align 4
  %40 = getelementptr inbounds %struct.xadc, ptr %29, i32 0, i32 13, i32 1
  tail call void @init_timer_key(ptr noundef %40, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #8
  %41 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #8
  store ptr %41, ptr %29, align 4
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %27
  %44 = ptrtoint ptr %41 to i32
  br label %303

45:                                               ; preds = %27
  %46 = load ptr, ptr %31, align 4
  %47 = getelementptr inbounds %struct.xadc_ops, ptr %46, i32 0, i32 7
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr [2 x ptr], ptr @xadc_type_names, i32 0, i32 %48
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.iio_dev, ptr %25, i32 0, i32 15
  store ptr %50, ptr %51, align 8
  store i32 1, ptr %25, align 8
  %52 = getelementptr inbounds %struct.iio_dev, ptr %25, i32 0, i32 17
  store ptr @xadc_info, ptr %52, align 8
  %53 = load ptr, ptr %6, align 8
  %54 = getelementptr inbounds %struct.iio_dev, ptr %25, i32 0, i32 2, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = load ptr, ptr %28, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store ptr null, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %57 = call i32 @of_property_read_string(ptr noundef %53, ptr noundef nonnull @.str.6, ptr noundef nonnull %2) #8
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %45
  %60 = load ptr, ptr %2, align 4
  %61 = call i32 @strcasecmp(ptr noundef %60, ptr noundef nonnull @.str.7) #8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = call i32 @strcasecmp(ptr noundef %60, ptr noundef nonnull @.str.8) #8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %63
  %67 = call i32 @strcasecmp(ptr noundef %60, ptr noundef nonnull @.str.9) #8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %169

69:                                               ; preds = %59, %45
  %70 = getelementptr inbounds %struct.xadc, ptr %56, i32 0, i32 10
  store i32 0, ptr %70, align 4
  br label %96

71:                                               ; preds = %66, %63
  %72 = phi i32 [ 1, %63 ], [ 2, %66 ]
  %73 = getelementptr inbounds %struct.xadc, ptr %56, i32 0, i32 10
  store i32 %72, ptr %73, align 4
  %74 = call i32 @of_property_read_variable_u32_array(ptr noundef %53, ptr noundef nonnull @.str.10, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %171, label %76

76:                                               ; preds = %71
  %77 = load i32, ptr %73, align 4
  %78 = icmp eq i32 %77, 1
  %79 = load i32, ptr %3, align 4
  br i1 %78, label %80, label %87

80:                                               ; preds = %76
  %81 = icmp eq i32 %79, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %80
  store i32 3, ptr %3, align 4
  br label %92

83:                                               ; preds = %80
  %84 = icmp ult i32 %79, 17
  br i1 %84, label %85, label %169

85:                                               ; preds = %83
  %86 = add nuw nsw i32 %79, 15
  store i32 %86, ptr %3, align 4
  br label %92

87:                                               ; preds = %76
  %88 = add i32 %79, -1
  %89 = icmp ult i32 %88, 8
  br i1 %89, label %90, label %169

90:                                               ; preds = %87
  %91 = add nuw nsw i32 %79, 15
  store i32 %91, ptr %3, align 4
  br label %92

92:                                               ; preds = %90, %85, %82
  %93 = phi i32 [ 3, %82 ], [ %86, %85 ], [ %91, %90 ]
  %94 = trunc i32 %93 to i16
  %95 = or i16 %94, 2048
  br label %96

96:                                               ; preds = %92, %69
  %97 = phi i16 [ 0, %69 ], [ %95, %92 ]
  %98 = getelementptr inbounds %struct.xadc, ptr %56, i32 0, i32 2
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.xadc_ops, ptr %99, i32 0, i32 7
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %101, 0
  %103 = select i1 %102, ptr @xadc_7s_channels, ptr @xadc_us_channels
  %104 = call ptr @devm_kmemdup(ptr noundef %55, ptr noundef nonnull %103, i32 noundef 2288, i32 noundef 3264) #8
  %105 = icmp eq ptr %104, null
  br i1 %105, label %169, label %106

106:                                              ; preds = %96
  %107 = call ptr @of_get_child_by_name(ptr noundef %53, ptr noundef nonnull @.str.11) #8
  %108 = icmp eq ptr %107, null
  br i1 %108, label %146, label %109

109:                                              ; preds = %106
  %110 = call ptr @of_get_next_child(ptr noundef nonnull %107, ptr noundef null) #8
  %111 = icmp eq ptr %110, null
  br i1 %111, label %146, label %112

112:                                              ; preds = %109
  %113 = getelementptr %struct.iio_chan_spec, ptr %104, i32 9
  br label %114

114:                                              ; preds = %141, %112
  %115 = phi i32 [ %143, %141 ], [ 9, %112 ]
  %116 = phi ptr [ %144, %141 ], [ %110, %112 ]
  %117 = phi ptr [ %142, %141 ], [ %113, %112 ]
  %118 = icmp ugt i32 %115, 25
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  call void @of_node_put(ptr noundef nonnull %116) #8
  br label %146

120:                                              ; preds = %114
  %121 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %116, ptr noundef nonnull @.str.12, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #8
  %122 = icmp slt i32 %121, 0
  %123 = load i32, ptr %4, align 4
  %124 = icmp ugt i32 %123, 16
  %125 = select i1 %122, i1 true, i1 %124
  br i1 %125, label %141, label %126

126:                                              ; preds = %120
  %127 = call ptr @of_find_property(ptr noundef nonnull %116, ptr noundef nonnull @.str.13, ptr noundef null) #8
  %128 = icmp eq ptr %127, null
  br i1 %128, label %131, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.iio_chan_spec, ptr %117, i32 0, i32 5
  store i8 115, ptr %130, align 4
  br label %131

131:                                              ; preds = %129, %126
  %132 = load i32, ptr %4, align 4
  %133 = icmp eq i32 %132, 0
  %134 = add i32 %132, 15
  %135 = select i1 %133, i32 11, i32 %134
  %136 = select i1 %133, i32 3, i32 %134
  %137 = getelementptr inbounds %struct.iio_chan_spec, ptr %117, i32 0, i32 4
  store i32 %135, ptr %137, align 4
  %138 = getelementptr inbounds %struct.iio_chan_spec, ptr %117, i32 0, i32 3
  store i32 %136, ptr %138, align 4
  %139 = add nuw nsw i32 %115, 1
  %140 = getelementptr %struct.iio_chan_spec, ptr %117, i32 1
  br label %141

141:                                              ; preds = %131, %120
  %142 = phi ptr [ %117, %120 ], [ %140, %131 ]
  %143 = phi i32 [ %115, %120 ], [ %139, %131 ]
  %144 = call ptr @of_get_next_child(ptr noundef nonnull %107, ptr noundef nonnull %116) #8
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %114

146:                                              ; preds = %141, %119, %109, %106
  %147 = phi i32 [ %115, %119 ], [ 9, %106 ], [ 9, %109 ], [ %143, %141 ]
  call void @of_node_put(ptr noundef %107) #8
  %148 = icmp slt i32 %15, 1
  %149 = icmp ne i32 %147, 0
  %150 = select i1 %148, i1 %149, i1 false
  br i1 %150, label %151, label %157

151:                                              ; preds = %151, %146
  %152 = phi i32 [ %155, %151 ], [ 0, %146 ]
  %153 = getelementptr %struct.iio_chan_spec, ptr %104, i32 %152, i32 14
  store ptr null, ptr %153, align 4
  %154 = getelementptr %struct.iio_chan_spec, ptr %104, i32 %152, i32 15
  store i32 0, ptr %154, align 4
  %155 = add nuw i32 %152, 1
  %156 = icmp eq i32 %155, %147
  br i1 %156, label %157, label %151

157:                                              ; preds = %151, %146
  %158 = getelementptr inbounds %struct.iio_dev, ptr %25, i32 0, i32 14
  store i32 %147, ptr %158, align 4
  %159 = mul i32 %147, 88
  %160 = call ptr @devm_krealloc(ptr noundef %55, ptr noundef nonnull %104, i32 noundef %159, i32 noundef 3264) #8
  %161 = getelementptr inbounds %struct.iio_dev, ptr %25, i32 0, i32 13
  %162 = icmp eq ptr %160, null
  %163 = select i1 %162, ptr %104, ptr %160
  store ptr %163, ptr %161, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %164 = load ptr, ptr %31, align 4
  %165 = getelementptr inbounds %struct.xadc_ops, ptr %164, i32 0, i32 6
  %166 = load i32, ptr %165, align 4
  %167 = and i32 %166, 1
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %189, label %172

169:                                              ; preds = %96, %87, %83, %66
  %170 = phi i32 [ -12, %96 ], [ -22, %87 ], [ -22, %83 ], [ -22, %66 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %303

171:                                              ; preds = %71
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %303

172:                                              ; preds = %157
  %173 = call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %5, ptr noundef nonnull %25, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @xadc_trigger_handler, i32 noundef 0, ptr noundef nonnull @xadc_buffer_ops, ptr noundef null) #8
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %303

175:                                              ; preds = %172
  %176 = icmp sgt i32 %15, 0
  br i1 %176, label %177, label %189

177:                                              ; preds = %175
  %178 = call fastcc ptr @xadc_alloc_trigger(ptr noundef nonnull %25, ptr noundef nonnull @.str.2)
  %179 = getelementptr inbounds %struct.xadc, ptr %29, i32 0, i32 8
  store ptr %178, ptr %179, align 4
  %180 = icmp ugt ptr %178, inttoptr (i32 -4096 to ptr)
  br i1 %180, label %181, label %183

181:                                              ; preds = %177
  %182 = ptrtoint ptr %178 to i32
  br label %303

183:                                              ; preds = %177
  %184 = call fastcc ptr @xadc_alloc_trigger(ptr noundef nonnull %25, ptr noundef nonnull @.str.3)
  %185 = getelementptr inbounds %struct.xadc, ptr %29, i32 0, i32 9
  store ptr %184, ptr %185, align 4
  %186 = icmp ugt ptr %184, inttoptr (i32 -4096 to ptr)
  br i1 %186, label %187, label %189

187:                                              ; preds = %183
  %188 = ptrtoint ptr %184 to i32
  br label %303

189:                                              ; preds = %183, %175, %157
  %190 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef null) #8
  %191 = getelementptr inbounds %struct.xadc, ptr %29, i32 0, i32 1
  store ptr %190, ptr %191, align 4
  %192 = icmp ugt ptr %190, inttoptr (i32 -4096 to ptr)
  br i1 %192, label %193, label %195

193:                                              ; preds = %189
  %194 = ptrtoint ptr %190 to i32
  br label %303

195:                                              ; preds = %189
  %196 = call fastcc i32 @clk_prepare_enable(ptr noundef %190)
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %303

198:                                              ; preds = %195
  %199 = load ptr, ptr %191, align 4
  %200 = call i32 @devm_add_action(ptr noundef %5, ptr noundef nonnull @xadc_clk_disable_unprepare, ptr noundef %199) #8
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %198
  call void @clk_disable(ptr noundef %199) #8
  call void @clk_unprepare(ptr noundef %199) #8
  br label %303

203:                                              ; preds = %198
  %204 = load ptr, ptr %31, align 4
  %205 = getelementptr inbounds %struct.xadc_ops, ptr %204, i32 0, i32 6
  %206 = load i32, ptr %205, align 4
  %207 = and i32 %206, 1
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %217, label %209

209:                                              ; preds = %203
  %210 = call fastcc i32 @xadc_read_samplerate(ptr noundef %29)
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %303, label %212

212:                                              ; preds = %209
  %213 = icmp ugt i32 %210, 150000
  br i1 %213, label %214, label %217

214:                                              ; preds = %212
  %215 = call fastcc i32 @xadc_write_samplerate(ptr noundef %29, i32 noundef 150000)
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %303, label %217

217:                                              ; preds = %214, %212, %203
  %218 = icmp sgt i32 %15, 0
  br i1 %218, label %219, label %237

219:                                              ; preds = %217
  %220 = load ptr, ptr %31, align 4
  %221 = getelementptr inbounds %struct.xadc_ops, ptr %220, i32 0, i32 5
  %222 = load ptr, ptr %221, align 4
  %223 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %224 = load ptr, ptr %223, align 4
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %228

226:                                              ; preds = %219
  %227 = load ptr, ptr %5, align 4
  br label %228

228:                                              ; preds = %226, %219
  %229 = phi ptr [ %227, %226 ], [ %224, %219 ]
  %230 = call i32 @devm_request_threaded_irq(ptr noundef %5, i32 noundef %15, ptr noundef %222, ptr noundef null, i32 noundef 0, ptr noundef %229, ptr noundef nonnull %25) #8
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %303

232:                                              ; preds = %228
  %233 = call i32 @devm_add_action(ptr noundef %5, ptr noundef nonnull @xadc_cancel_delayed_work, ptr noundef %36) #8
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %237, label %235

235:                                              ; preds = %232
  %236 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %36) #8
  br label %303

237:                                              ; preds = %232, %217
  %238 = load ptr, ptr %31, align 4
  %239 = getelementptr inbounds %struct.xadc_ops, ptr %238, i32 0, i32 2
  %240 = load ptr, ptr %239, align 4
  %241 = call i32 %240(ptr noundef %0, ptr noundef nonnull %25, i32 noundef %15) #8
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %303

243:                                              ; preds = %243, %237
  %244 = phi i32 [ %248, %243 ], [ 0, %237 ]
  %245 = add nuw nsw i32 %244, 80
  %246 = getelementptr %struct.xadc, ptr %29, i32 0, i32 3, i32 %244
  %247 = call fastcc i32 @xadc_read_adc_reg(ptr noundef %29, i32 noundef %245, ptr noundef %246)
  %248 = add nuw nsw i32 %244, 1
  %249 = icmp eq i32 %248, 16
  br i1 %249, label %250, label %243

250:                                              ; preds = %243
  %251 = call fastcc i32 @xadc_write_adc_reg(ptr noundef %29, i32 noundef 64, i16 noundef zeroext %97)
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %303

253:                                              ; preds = %250
  %254 = load i32, ptr %158, align 4
  %255 = icmp sgt i32 %254, 0
  br i1 %255, label %256, label %273

256:                                              ; preds = %253
  %257 = load ptr, ptr %161, align 8
  br label %258

258:                                              ; preds = %269, %256
  %259 = phi i32 [ 0, %256 ], [ %271, %269 ]
  %260 = phi i32 [ 0, %256 ], [ %270, %269 ]
  %261 = getelementptr %struct.iio_chan_spec, ptr %257, i32 %259, i32 5
  %262 = load i8, ptr %261, align 4
  %263 = icmp eq i8 %262, 115
  br i1 %263, label %264, label %269

264:                                              ; preds = %258
  %265 = getelementptr %struct.iio_chan_spec, ptr %257, i32 %259, i32 4
  %266 = load i32, ptr %265, align 4
  %267 = shl nuw i32 1, %266
  %268 = or i32 %267, %260
  br label %269

269:                                              ; preds = %264, %258
  %270 = phi i32 [ %268, %264 ], [ %260, %258 ]
  %271 = add nuw nsw i32 %259, 1
  %272 = icmp eq i32 %271, %254
  br i1 %272, label %273, label %258

273:                                              ; preds = %269, %253
  %274 = phi i32 [ 0, %253 ], [ %270, %269 ]
  %275 = trunc i32 %274 to i16
  %276 = call fastcc i32 @xadc_write_adc_reg(ptr noundef %29, i32 noundef 76, i16 noundef zeroext %275)
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %303

278:                                              ; preds = %273
  %279 = lshr i32 %274, 16
  %280 = trunc i32 %279 to i16
  %281 = call fastcc i32 @xadc_write_adc_reg(ptr noundef %29, i32 noundef 77, i16 noundef zeroext %280)
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %303

283:                                              ; preds = %278
  %284 = call fastcc i32 @xadc_update_adc_reg(ptr noundef %29, i32 noundef 65, i16 noundef zeroext 3855, i16 noundef zeroext 3855)
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %289, label %303

286:                                              ; preds = %289
  %287 = add nuw nsw i32 %290, 1
  %288 = icmp eq i32 %287, 16
  br i1 %288, label %300, label %289

289:                                              ; preds = %286, %283
  %290 = phi i32 [ %287, %286 ], [ 0, %283 ]
  %291 = and i32 %290, 4
  %292 = icmp eq i32 %291, 0
  %293 = icmp eq i32 %290, 7
  %294 = or i1 %293, %292
  %295 = sext i1 %294 to i16
  %296 = getelementptr %struct.xadc, ptr %29, i32 0, i32 3, i32 %290
  store i16 %295, ptr %296, align 2
  %297 = add nuw nsw i32 %290, 80
  %298 = call fastcc i32 @xadc_write_adc_reg(ptr noundef %29, i32 noundef %297, i16 noundef zeroext %295)
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %286, label %303

300:                                              ; preds = %286
  %301 = call i32 @xadc_postdisable(ptr noundef nonnull %25)
  %302 = call i32 @__devm_iio_device_register(ptr noundef %5, ptr noundef nonnull %25, ptr noundef null) #8
  br label %303

303:                                              ; preds = %300, %289, %283, %278, %273, %250, %237, %235, %228, %214, %209, %202, %195, %193, %187, %181, %172, %171, %169, %43, %24, %19, %17, %9, %1
  %304 = phi i32 [ %44, %43 ], [ %182, %181 ], [ %188, %187 ], [ %194, %193 ], [ %302, %300 ], [ -19, %1 ], [ -22, %9 ], [ -6, %19 ], [ %15, %17 ], [ -12, %24 ], [ %74, %171 ], [ %173, %172 ], [ %196, %195 ], [ %200, %202 ], [ %210, %209 ], [ %215, %214 ], [ %230, %228 ], [ %233, %235 ], [ %241, %237 ], [ %251, %250 ], [ %276, %273 ], [ %281, %278 ], [ %284, %283 ], [ %170, %169 ], [ %298, %289 ]
  ret i32 %304
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xadc_zynq_unmask_worker(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -80
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %6 = and i32 %5, 255
  %7 = getelementptr i8, ptr %0, i32 64
  tail call void @_raw_spin_lock_irq(ptr noundef %7) #8
  %8 = getelementptr i8, ptr %0, i32 -8
  %9 = load i32, ptr %8, align 4
  %10 = xor i32 %6, -1
  %11 = and i32 %9, %10
  %12 = and i32 %9, %6
  %13 = getelementptr i8, ptr %0, i32 -4
  %14 = load i32, ptr %13, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %12, %15
  store i32 %16, ptr %8, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %11) #8, !srcloc !12
  %19 = load i32, ptr %13, align 4
  %20 = load i32, ptr %8, align 4
  %21 = or i32 %20, %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %22 = load ptr, ptr %2, align 4
  %23 = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #8, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %24 = load i16, ptr %7, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  %26 = load i32, ptr %8, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load ptr, ptr @system_wq, align 4
  %30 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %29, ptr noundef %0, i32 noundef 50) #8
  br label %31

31:                                               ; preds = %28, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xadc_trigger_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.xadc, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %45, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 7
  %13 = load i32, ptr %12, align 8
  %14 = tail call i32 @_find_next_bit_le(ptr noundef %11, i32 noundef %13, i32 noundef 0) #8
  %15 = load i32, ptr %12, align 8
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.xadc, ptr %5, i32 0, i32 14
  %19 = getelementptr inbounds %struct.xadc, ptr %5, i32 0, i32 2
  br label %20

20:                                               ; preds = %28, %17
  %21 = phi i32 [ 0, %17 ], [ %35, %28 ]
  %22 = phi i32 [ %14, %17 ], [ %39, %28 ]
  %23 = add i32 %22, -5
  %24 = icmp ult i32 %23, 10
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = getelementptr inbounds [10 x i32], ptr @switch.table.xadc_trigger_handler, i32 0, i32 %23
  %27 = load i32, ptr %26, align 4
  br label %28

28:                                               ; preds = %25, %20
  %29 = phi i32 [ %27, %25 ], [ %22, %20 ]
  %30 = load ptr, ptr %6, align 4
  %31 = getelementptr i16, ptr %30, i32 %21
  tail call void @mutex_lock(ptr noundef %18) #8
  %32 = load ptr, ptr %19, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 %33(ptr noundef %5, i32 noundef %29, ptr noundef %31) #8
  tail call void @mutex_unlock(ptr noundef %18) #8
  %35 = add i32 %21, 1
  %36 = load ptr, ptr %10, align 4
  %37 = load i32, ptr %12, align 8
  %38 = add i32 %22, 1
  %39 = tail call i32 @_find_next_bit_le(ptr noundef %36, i32 noundef %37, i32 noundef %38) #8
  %40 = load i32, ptr %12, align 8
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %20, label %42

42:                                               ; preds = %28, %9
  %43 = load ptr, ptr %6, align 4
  %44 = tail call i32 @iio_push_to_buffers(ptr noundef %3, ptr noundef %43) #8
  br label %45

45:                                               ; preds = %42, %2
  %46 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 10
  %47 = load ptr, ptr %46, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %47) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @xadc_alloc_trigger(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @iio_device_id(ptr noundef %0) #8
  %8 = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %4, ptr noundef nonnull @.str.25, ptr noundef %6, i32 noundef %7, ptr noundef %1) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  store ptr @xadc_trigger_ops, ptr %8, align 8
  %11 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.iio_trigger, ptr %8, i32 0, i32 4, i32 8
  store ptr %12, ptr %13, align 8
  %14 = tail call i32 @__devm_iio_trigger_register(ptr noundef %4, ptr noundef nonnull %8, ptr noundef null) #8
  %15 = icmp eq i32 %14, 0
  %16 = inttoptr i32 %14 to ptr
  %17 = select i1 %15, ptr %8, ptr %16
  br label %18

18:                                               ; preds = %10, %2
  %19 = phi ptr [ inttoptr (i32 -12 to ptr), %2 ], [ %17, %10 ]
  ret ptr %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #4 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #8
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xadc_clk_disable_unprepare(ptr noundef %0) #2 {
  tail call void @clk_disable(ptr noundef %0) #8
  tail call void @clk_unprepare(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xadc_read_samplerate(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = getelementptr inbounds %struct.xadc, ptr %0, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.xadc, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 %6(ptr noundef %0, i32 noundef 66, ptr noundef nonnull %2) #8
  call void @mutex_unlock(ptr noundef %3) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load i16, ptr %2, align 2
  %11 = lshr i16 %10, 8
  %12 = call i16 @llvm.umax.i16(i16 %11, i16 2)
  %13 = zext i16 %12 to i32
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds %struct.xadc_ops, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 %16(ptr noundef %0) #8
  %18 = udiv i32 %17, %13
  %19 = udiv i32 %18, 26
  br label %20

20:                                               ; preds = %9, %1
  %21 = phi i32 [ %19, %9 ], [ %7, %1 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xadc_write_samplerate(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %struct.xadc, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.xadc_ops, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0) #8
  %9 = icmp eq i32 %8, 0
  %10 = icmp slt i32 %1, 1
  %11 = or i1 %10, %9
  br i1 %11, label %41, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.xadc, ptr %0, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %13) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #8
  store i16 0, ptr %3, align 2, !annotation !8
  %14 = load ptr, ptr %4, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 %15(ptr noundef %0, i32 noundef 66, ptr noundef nonnull %3) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %12
  %19 = call i32 @llvm.smin.i32(i32 %1, i32 150000)
  %20 = mul nuw nsw i32 %19, 26
  %21 = call i32 @llvm.smax.i32(i32 %20, i32 1000000)
  %22 = udiv i32 %8, %21
  %23 = udiv i32 %8, %22
  %24 = icmp ugt i32 %23, 3900025
  %25 = zext i1 %24 to i32
  %26 = add nuw nsw i32 %22, %25
  %27 = icmp ult i32 %26, 2
  %28 = call i32 @llvm.umin.i32(i32 %26, i32 255)
  %29 = trunc i32 %28 to i16
  %30 = shl nuw i16 %29, 8
  %31 = select i1 %27, i16 512, i16 %30
  %32 = load i16, ptr %3, align 2
  %33 = and i16 %32, 255
  %34 = or i16 %31, %33
  %35 = load ptr, ptr %4, align 4
  %36 = getelementptr inbounds %struct.xadc_ops, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = call i32 %37(ptr noundef %0, i32 noundef 66, i16 noundef zeroext %34) #8
  br label %39

39:                                               ; preds = %18, %12
  %40 = phi i32 [ %38, %18 ], [ %16, %12 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  call void @mutex_unlock(ptr noundef %13) #8
  br label %41

41:                                               ; preds = %39, %2
  %42 = phi i32 [ %40, %39 ], [ -22, %2 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xadc_cancel_delayed_work(ptr noundef %0) #2 {
  %2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %0) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xadc_read_adc_reg(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.xadc, ptr %0, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.xadc, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0, i32 noundef %1, ptr noundef %2) #8
  tail call void @mutex_unlock(ptr noundef %4) #8
  ret i32 %8
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xadc_write_adc_reg(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.xadc, ptr %0, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.xadc, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.xadc_ops, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) #8
  tail call void @mutex_unlock(ptr noundef %4) #8
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xadc_update_adc_reg(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3) unnamed_addr #2 {
  %5 = alloca i16, align 2
  %6 = getelementptr inbounds %struct.xadc, ptr %0, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %6) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #8
  store i16 0, ptr %5, align 2, !annotation !8
  %7 = getelementptr inbounds %struct.xadc, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 %9(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %4
  %13 = load i16, ptr %5, align 2
  %14 = xor i16 %2, -1
  %15 = and i16 %13, %14
  %16 = or i16 %15, %3
  %17 = load ptr, ptr %7, align 4
  %18 = getelementptr inbounds %struct.xadc_ops, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 %19(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %16) #8
  br label %21

21:                                               ; preds = %12, %4
  %22 = phi i32 [ %20, %12 ], [ %10, %4 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #8
  call void @mutex_unlock(ptr noundef %6) #8
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xadc_postdisable(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 14
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 13
  %11 = load ptr, ptr %10, align 8
  br label %12

12:                                               ; preds = %12, %9
  %13 = phi i32 [ 0, %9 ], [ %19, %12 ]
  %14 = phi i32 [ 1, %9 ], [ %18, %12 ]
  %15 = getelementptr %struct.iio_chan_spec, ptr %11, i32 %13, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = shl nuw i32 1, %16
  %18 = or i32 %17, %14
  %19 = add nuw nsw i32 %13, 1
  %20 = icmp eq i32 %19, %7
  br i1 %20, label %21, label %12

21:                                               ; preds = %12, %1
  %22 = phi i32 [ 1, %1 ], [ %18, %12 ]
  %23 = trunc i32 %22 to i16
  %24 = getelementptr inbounds %struct.xadc, ptr %5, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %24) #8
  %25 = getelementptr inbounds %struct.xadc, ptr %5, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.xadc_ops, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %28(ptr noundef %5, i32 noundef 72, i16 noundef zeroext %23) #8
  tail call void @mutex_unlock(ptr noundef %24) #8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %76

31:                                               ; preds = %21
  %32 = lshr i32 %22, 16
  %33 = trunc i32 %32 to i16
  tail call void @mutex_lock(ptr noundef %24) #8
  %34 = load ptr, ptr %25, align 4
  %35 = getelementptr inbounds %struct.xadc_ops, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %36(ptr noundef %5, i32 noundef 73, i16 noundef zeroext %33) #8
  tail call void @mutex_unlock(ptr noundef %24) #8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %76

39:                                               ; preds = %31
  tail call void @mutex_lock(ptr noundef %24) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #8
  store i16 0, ptr %3, align 2, !annotation !8
  %40 = load ptr, ptr %25, align 4
  %41 = load ptr, ptr %40, align 4
  %42 = call i32 %41(ptr noundef %5, i32 noundef 65, ptr noundef nonnull %3) #8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  br label %74

45:                                               ; preds = %39
  %46 = load i16, ptr %3, align 2
  %47 = and i16 %46, 4095
  %48 = or i16 %47, 8192
  %49 = load ptr, ptr %25, align 4
  %50 = getelementptr inbounds %struct.xadc_ops, ptr %49, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = call i32 %51(ptr noundef %5, i32 noundef 65, i16 noundef zeroext %48) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  call void @mutex_unlock(ptr noundef %24) #8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %45
  %55 = load ptr, ptr %25, align 4
  %56 = getelementptr inbounds %struct.xadc_ops, ptr %55, i32 0, i32 7
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %76, label %59

59:                                               ; preds = %54
  call void @mutex_lock(ptr noundef %24) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i16 0, ptr %2, align 2, !annotation !8
  %60 = load ptr, ptr %25, align 4
  %61 = load ptr, ptr %60, align 4
  %62 = call i32 %61(ptr noundef %5, i32 noundef 66, ptr noundef nonnull %2) #8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load i16, ptr %2, align 2
  %66 = and i16 %65, -49
  %67 = or i16 %66, 32
  %68 = load ptr, ptr %25, align 4
  %69 = getelementptr inbounds %struct.xadc_ops, ptr %68, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = call i32 %70(ptr noundef %5, i32 noundef 66, i16 noundef zeroext %67) #8
  br label %72

72:                                               ; preds = %64, %59
  %73 = phi i32 [ %71, %64 ], [ %62, %59 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  br label %74

74:                                               ; preds = %72, %44
  %75 = phi i32 [ %73, %72 ], [ %42, %44 ]
  call void @mutex_unlock(ptr noundef %24) #8
  br label %76

76:                                               ; preds = %74, %54, %45, %31, %21
  %77 = phi i32 [ %29, %21 ], [ %37, %31 ], [ %52, %45 ], [ 0, %54 ], [ %75, %74 ]
  ret i32 %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xadc_read_raw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, i32 noundef %4) #2 {
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 5
  %11 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 5, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #8
  store i16 0, ptr %7, align 2, !annotation !8
  switch i32 %4, label %80 [
    i32 0, label %14
    i32 2, label %42
    i32 3, label %55
    i32 12, label %58
  ]

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %80

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.xadc, ptr %9, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %22) #8
  %23 = getelementptr inbounds %struct.xadc, ptr %9, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 %25(ptr noundef %9, i32 noundef %21, ptr noundef nonnull %7) #8
  call void @mutex_unlock(ptr noundef %22) #8
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %80, label %28

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 5, i32 3
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = load i16, ptr %7, align 2
  %33 = zext i16 %32 to i32
  %34 = lshr i32 %33, %31
  %35 = load i8, ptr %10, align 4
  %36 = icmp eq i8 %35, 117
  %37 = sub nsw i32 32, %13
  %38 = and i32 %37, 255
  %39 = shl i32 %34, %38
  %40 = ashr i32 %39, %38
  %41 = select i1 %36, i32 %34, i32 %40
  store i32 %41, ptr %2, align 4
  br label %80

42:                                               ; preds = %5
  %43 = load i32, ptr %1, align 4
  switch i32 %43, label %80 [
    i32 0, label %44
    i32 9, label %54
  ]

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, -1
  %48 = icmp ult i32 %47, 15
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = getelementptr inbounds [15 x i32], ptr @switch.table.xadc_read_raw, i32 0, i32 %47
  %51 = load i32, ptr %50, align 4
  br label %52

52:                                               ; preds = %49, %44
  %53 = phi i32 [ %51, %49 ], [ 1000, %44 ]
  store i32 %53, ptr %2, align 4
  store i32 %13, ptr %3, align 4
  br label %80

54:                                               ; preds = %42
  store i32 503975, ptr %2, align 4
  store i32 %13, ptr %3, align 4
  br label %80

55:                                               ; preds = %5
  %56 = shl i32 273150, %13
  %57 = sdiv i32 %56, -503975
  store i32 %57, ptr %2, align 4
  br label %80

58:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #8
  store i16 0, ptr %6, align 2, !annotation !8
  %59 = getelementptr inbounds %struct.xadc, ptr %9, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %59) #8
  %60 = getelementptr inbounds %struct.xadc, ptr %9, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = load ptr, ptr %61, align 4
  %63 = call i32 %62(ptr noundef %9, i32 noundef 66, ptr noundef nonnull %6) #8
  call void @mutex_unlock(ptr noundef %59) #8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %58
  %66 = load i16, ptr %6, align 2
  %67 = lshr i16 %66, 8
  %68 = call i16 @llvm.umax.i16(i16 %67, i16 2) #8
  %69 = zext i16 %68 to i32
  %70 = load ptr, ptr %60, align 4
  %71 = getelementptr inbounds %struct.xadc_ops, ptr %70, i32 0, i32 4
  %72 = load ptr, ptr %71, align 4
  %73 = call i32 %72(ptr noundef %9) #8
  %74 = udiv i32 %73, %69
  %75 = udiv i32 %74, 26
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #8
  br label %78

76:                                               ; preds = %58
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #8
  %77 = icmp slt i32 %63, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %76, %65
  %79 = phi i32 [ %75, %65 ], [ %63, %76 ]
  store i32 %79, ptr %2, align 4
  br label %80

80:                                               ; preds = %78, %76, %55, %54, %52, %42, %28, %19, %14, %5
  %81 = phi i32 [ 1, %78 ], [ 1, %55 ], [ 11, %54 ], [ 11, %52 ], [ 1, %28 ], [ -16, %14 ], [ %26, %19 ], [ -22, %42 ], [ %63, %76 ], [ -22, %5 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #8
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xadc_write_raw(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = icmp eq i32 %4, 12
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %9 = load ptr, ptr %8, align 8
  %10 = tail call fastcc i32 @xadc_write_samplerate(ptr noundef %9, i32 noundef %2)
  br label %11

11:                                               ; preds = %7, %5
  %12 = phi i32 [ %10, %7 ], [ -22, %5 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xadc_read_event_config(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xadc_write_event_config(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xadc_read_event_value(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xadc_write_event_value(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xadc_update_scan_mode(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 8
  %7 = tail call i32 @__bitmap_weight(ptr noundef %1, i32 noundef %6) #8
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 2)
  %9 = extractvalue { i32, i1 } %8, 1
  %10 = extractvalue { i32, i1 } %8, 0
  br i1 %9, label %19, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.xadc, ptr %4, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = tail call ptr @devm_krealloc(ptr noundef %13, ptr noundef %15, i32 noundef %10, i32 noundef 3264) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  tail call void @llvm.memset.p0.i32(ptr nonnull align 1 %16, i8 0, i32 %10, i1 false)
  store ptr %16, ptr %14, align 4
  br label %19

19:                                               ; preds = %18, %11, %2
  %20 = phi i32 [ 0, %18 ], [ -12, %2 ], [ -12, %11 ]
  ret i32 %20
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_krealloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xadc_preenable(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.xadc, ptr %6, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %7) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #8
  store i16 0, ptr %4, align 2, !annotation !8
  %8 = getelementptr inbounds %struct.xadc, ptr %6, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 %10(ptr noundef %6, i32 noundef 65, ptr noundef nonnull %4) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  br label %101

14:                                               ; preds = %1
  %15 = load i16, ptr %4, align 2
  %16 = and i16 %15, 4095
  %17 = load ptr, ptr %8, align 4
  %18 = getelementptr inbounds %struct.xadc_ops, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 %19(ptr noundef %6, i32 noundef 65, i16 noundef zeroext %16) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  call void @mutex_unlock(ptr noundef %7) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %103

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = load i32, ptr %24, align 4
  %26 = load ptr, ptr %8, align 4
  %27 = getelementptr inbounds %struct.xadc_ops, ptr %26, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %40, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.xadc, ptr %6, i32 0, i32 10
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = icmp ult i32 %25, 16777216
  %36 = and i32 %25, 16711680
  %37 = icmp eq i32 %36, 0
  %38 = or i1 %35, %37
  %39 = select i1 %38, i32 8192, i32 16384
  br label %40

40:                                               ; preds = %34, %30, %22
  %41 = phi i32 [ 8192, %22 ], [ 16384, %30 ], [ %39, %34 ]
  %42 = trunc i32 %25 to i16
  call void @mutex_lock(ptr noundef %7) #8
  %43 = load ptr, ptr %8, align 4
  %44 = getelementptr inbounds %struct.xadc_ops, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = call i32 %45(ptr noundef %6, i32 noundef 72, i16 noundef zeroext %42) #8
  call void @mutex_unlock(ptr noundef %7) #8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %103

48:                                               ; preds = %40
  %49 = icmp eq i32 %41, 16384
  %50 = lshr i32 %25, 8
  %51 = or i32 %50, %25
  %52 = and i32 %51, 16711680
  %53 = select i1 %49, i32 %52, i32 %25
  %54 = lshr i32 %53, 16
  %55 = trunc i32 %54 to i16
  call void @mutex_lock(ptr noundef %7) #8
  %56 = load ptr, ptr %8, align 4
  %57 = getelementptr inbounds %struct.xadc_ops, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = call i32 %58(ptr noundef %6, i32 noundef 73, i16 noundef zeroext %55) #8
  call void @mutex_unlock(ptr noundef %7) #8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %103

61:                                               ; preds = %48
  %62 = load ptr, ptr %8, align 4
  %63 = getelementptr inbounds %struct.xadc_ops, ptr %62, i32 0, i32 7
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %85, label %66

66:                                               ; preds = %61
  call void @mutex_lock(ptr noundef %7) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #8
  store i16 0, ptr %3, align 2, !annotation !8
  %67 = load ptr, ptr %8, align 4
  %68 = load ptr, ptr %67, align 4
  %69 = call i32 %68(ptr noundef %6, i32 noundef 66, ptr noundef nonnull %3) #8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  br label %101

72:                                               ; preds = %66
  %73 = add nsw i32 %41, -16384
  %74 = and i32 %73, -24576
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %75, i16 0, i16 32
  %77 = load i16, ptr %3, align 2
  %78 = and i16 %77, -49
  %79 = or i16 %78, %76
  %80 = load ptr, ptr %8, align 4
  %81 = getelementptr inbounds %struct.xadc_ops, ptr %80, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = call i32 %82(ptr noundef %6, i32 noundef 66, i16 noundef zeroext %79) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  call void @mutex_unlock(ptr noundef %7) #8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %103

85:                                               ; preds = %72, %61
  call void @mutex_lock(ptr noundef %7) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i16 0, ptr %2, align 2, !annotation !8
  %86 = load ptr, ptr %8, align 4
  %87 = load ptr, ptr %86, align 4
  %88 = call i32 %87(ptr noundef %6, i32 noundef 65, ptr noundef nonnull %2) #8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  br label %101

91:                                               ; preds = %85
  %92 = trunc i32 %41 to i16
  %93 = load i16, ptr %2, align 2
  %94 = and i16 %93, 4095
  %95 = or i16 %94, %92
  %96 = load ptr, ptr %8, align 4
  %97 = getelementptr inbounds %struct.xadc_ops, ptr %96, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = call i32 %98(ptr noundef %6, i32 noundef 65, i16 noundef zeroext %95) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  call void @mutex_unlock(ptr noundef %7) #8
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %106, label %103

101:                                              ; preds = %90, %71, %13
  %102 = phi i32 [ %88, %90 ], [ %69, %71 ], [ %11, %13 ]
  call void @mutex_unlock(ptr noundef %7) #8
  br label %103

103:                                              ; preds = %101, %91, %72, %48, %40, %14
  %104 = phi i32 [ %20, %14 ], [ %46, %40 ], [ %59, %48 ], [ %83, %72 ], [ %99, %91 ], [ %102, %101 ]
  %105 = call i32 @xadc_postdisable(ptr noundef %0)
  br label %106

106:                                              ; preds = %103, %91
  %107 = phi i32 [ %104, %103 ], [ 0, %91 ]
  ret i32 %107
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_trigger_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xadc_trigger_set_state(ptr noundef %0, i1 noundef zeroext %1) #2 {
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %struct.iio_trigger, ptr %0, i32 0, i32 4, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.xadc, ptr %5, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %6) #8
  %7 = getelementptr inbounds %struct.xadc, ptr %5, i32 0, i32 7
  br i1 %1, label %8, label %31

8:                                                ; preds = %2
  %9 = load ptr, ptr %7, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %45

11:                                               ; preds = %8
  store ptr %0, ptr %7, align 4
  %12 = getelementptr inbounds %struct.xadc, ptr %5, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #8
  store i16 0, ptr %3, align 2, !annotation !8
  %14 = getelementptr inbounds %struct.xadc, ptr %5, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 %16(ptr noundef %5, i32 noundef 65, ptr noundef nonnull %3) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  br label %45

20:                                               ; preds = %11
  %21 = icmp eq ptr %13, %0
  %22 = select i1 %21, i16 512, i16 0
  %23 = load i16, ptr %3, align 2
  %24 = and i16 %23, -513
  %25 = or i16 %24, %22
  %26 = load ptr, ptr %14, align 4
  %27 = getelementptr inbounds %struct.xadc_ops, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 %28(ptr noundef %5, i32 noundef 65, i16 noundef zeroext %25) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %45

31:                                               ; preds = %2
  store ptr null, ptr %7, align 4
  br label %32

32:                                               ; preds = %31, %20
  %33 = phi i32 [ 16, %20 ], [ 0, %31 ]
  %34 = getelementptr inbounds %struct.xadc, ptr %5, i32 0, i32 15
  %35 = call i32 @_raw_spin_lock_irqsave(ptr noundef %34) #8
  %36 = load ptr, ptr %5, align 4
  %37 = getelementptr i8, ptr %36, i32 104
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %39 = load ptr, ptr %5, align 4
  %40 = getelementptr i8, ptr %39, i32 96
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 16) #8, !srcloc !12
  %41 = and i32 %38, -17
  %42 = or i32 %41, %33
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %43 = load ptr, ptr %5, align 4
  %44 = getelementptr i8, ptr %43, i32 104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #8, !srcloc !12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %35) #8
  br label %45

45:                                               ; preds = %32, %20, %19, %8
  %46 = phi i32 [ %29, %20 ], [ 0, %32 ], [ -16, %8 ], [ %17, %19 ]
  call void @mutex_unlock(ptr noundef %6) #8
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xadc_zynq_read_adc_reg(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = shl i32 %1, 16
  %5 = or i32 %4, 67108864
  %6 = getelementptr inbounds %struct.xadc, ptr %0, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %6) #8
  %7 = getelementptr inbounds %struct.xadc, ptr %0, i32 0, i32 12
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %8, 256
  store i32 %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.xadc, ptr %0, i32 0, i32 11
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %11, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #8, !srcloc !12
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr i8, ptr %15, i32 12
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %18 = and i32 %17, 256
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %20, %3
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr i8, ptr %21, i32 20
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %24 = load ptr, ptr %0, align 4
  %25 = getelementptr i8, ptr %24, i32 12
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %27 = and i32 %26, 256
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %20, label %29

29:                                               ; preds = %20, %3
  %30 = getelementptr inbounds %struct.xadc, ptr %0, i32 0, i32 16
  store i32 0, ptr %30, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %31 = load ptr, ptr %0, align 4
  %32 = getelementptr i8, ptr %31, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %5) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %33 = load ptr, ptr %0, align 4
  %34 = getelementptr i8, ptr %33, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 0) #8, !srcloc !12
  %35 = load ptr, ptr %0, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %37 = and i32 %36, -983041
  %38 = or i32 %37, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %39 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %38) #8, !srcloc !12
  %40 = load i32, ptr %7, align 4
  %41 = and i32 %40, -257
  store i32 %41, ptr %7, align 4
  %42 = load i32, ptr %10, align 4
  %43 = or i32 %42, %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %44 = load ptr, ptr %0, align 4
  %45 = getelementptr i8, ptr %44, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #8, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %46 = load i16, ptr %6, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  %48 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %30, i32 noundef 100) #8
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i32 -5, i32 %48
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %29
  %53 = load ptr, ptr %0, align 4
  %54 = getelementptr i8, ptr %53, i32 20
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %56 = load ptr, ptr %0, align 4
  %57 = getelementptr i8, ptr %56, i32 20
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %59 = trunc i32 %58 to i16
  store i16 %59, ptr %2, align 2
  br label %60

60:                                               ; preds = %52, %29
  %61 = phi i32 [ 0, %52 ], [ %50, %29 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xadc_zynq_write_adc_reg(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) #2 {
  %4 = getelementptr inbounds %struct.xadc, ptr %0, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.xadc, ptr %0, i32 0, i32 12
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, 256
  store i32 %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.xadc, ptr %0, i32 0, i32 11
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #8, !srcloc !12
  %13 = getelementptr inbounds %struct.xadc, ptr %0, i32 0, i32 16
  store i32 0, ptr %13, align 4
  %14 = shl i32 %1, 16
  %15 = zext i16 %2 to i32
  %16 = or i32 %14, %15
  %17 = or i32 %16, 134217728
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr i8, ptr %18, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #8, !srcloc !12
  %20 = load ptr, ptr %0, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %22 = and i32 %21, -983041
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %23 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %22) #8, !srcloc !12
  %24 = load i32, ptr %5, align 4
  %25 = and i32 %24, -257
  store i32 %25, ptr %5, align 4
  %26 = load i32, ptr %8, align 4
  %27 = or i32 %26, %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %28 = load ptr, ptr %0, align 4
  %29 = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #8, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %30 = load i16, ptr %4, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  %32 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %13, i32 noundef 100) #8
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 -5, i32 0
  %35 = load ptr, ptr %0, align 4
  %36 = getelementptr i8, ptr %35, i32 20
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xadc_zynq_setup(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.xadc, ptr %5, i32 0, i32 12
  store i32 -1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.xadc, ptr %5, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @clk_get_rate(ptr noundef %8) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %48, label %11

11:                                               ; preds = %3
  %12 = icmp ugt i32 %9, 200000000
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  %14 = load ptr, ptr %7, align 4
  %15 = tail call i32 @clk_set_rate(ptr noundef %14, i32 noundef 200000000) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %48

17:                                               ; preds = %11
  %18 = icmp ult i32 %9, 100000000
  br i1 %18, label %31, label %19

19:                                               ; preds = %17, %13
  %20 = udiv i32 %9, 50000000
  %21 = udiv i32 %9, %20
  %22 = icmp ugt i32 %21, 50000000
  %23 = zext i1 %22 to i32
  %24 = add nuw nsw i32 %20, %23
  %25 = icmp ult i32 %24, 4
  br i1 %25, label %31, label %26

26:                                               ; preds = %19
  %27 = icmp ult i32 %24, 8
  br i1 %27, label %31, label %28

28:                                               ; preds = %26
  %29 = icmp ult i32 %24, 16
  %30 = select i1 %29, i32 -2147470828, i32 -2147470572
  br label %31

31:                                               ; preds = %28, %26, %19, %17
  %32 = phi i32 [ -2147471340, %19 ], [ -2147471084, %26 ], [ %30, %28 ], [ -2147471340, %17 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %33 = load ptr, ptr %5, align 4
  %34 = getelementptr i8, ptr %33, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 16) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %35 = load ptr, ptr %5, align 4
  %36 = getelementptr i8, ptr %35, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 0) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %37 = load ptr, ptr %5, align 4
  %38 = getelementptr i8, ptr %37, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 -1) #8, !srcloc !12
  %39 = load i32, ptr %6, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %40 = load ptr, ptr %5, align 4
  %41 = getelementptr i8, ptr %40, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %42 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %32) #8, !srcloc !12
  br i1 %12, label %43, label %47

43:                                               ; preds = %31
  %44 = load ptr, ptr %7, align 4
  %45 = tail call i32 @clk_set_rate(ptr noundef %44, i32 noundef %9) #8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %31
  br label %48

48:                                               ; preds = %47, %43, %13, %3
  %49 = phi i32 [ 0, %47 ], [ -22, %3 ], [ %15, %13 ], [ %45, %43 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xadc_zynq_update_alarm(ptr noundef %0, i32 noundef %1) #2 {
  %3 = shl i32 %1, 4
  %4 = and i32 %3, 128
  %5 = lshr i32 %1, 1
  %6 = and i32 %5, 120
  %7 = and i32 %1, 7
  %8 = or i32 %6, %7
  %9 = or i32 %8, %4
  %10 = getelementptr inbounds %struct.xadc, ptr %0, i32 0, i32 15
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #8
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr i8, ptr %12, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %15 = and i32 %14, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #8, !srcloc !12
  %18 = getelementptr inbounds %struct.xadc, ptr %0, i32 0, i32 12
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, -256
  %21 = or i32 %20, %9
  %22 = xor i32 %21, 255
  store i32 %22, ptr %18, align 4
  %23 = getelementptr inbounds %struct.xadc, ptr %0, i32 0, i32 11
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %22, %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %26 = load ptr, ptr %0, align 4
  %27 = getelementptr i8, ptr %26, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #8, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xadc_zynq_get_dclk_rate(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %4 = and i32 %3, 768
  switch i32 %4, label %7 [
    i32 256, label %8
    i32 512, label %5
    i32 768, label %6
  ]

5:                                                ; preds = %1
  br label %8

6:                                                ; preds = %1
  br label %8

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %7, %6, %5, %1
  %9 = phi i32 [ 2, %7 ], [ 16, %6 ], [ 8, %5 ], [ 4, %1 ]
  %10 = getelementptr inbounds %struct.xadc, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @clk_get_rate(ptr noundef %11) #8
  %13 = udiv i32 %12, %9
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xadc_zynq_interrupt_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %8 = getelementptr inbounds %struct.xadc, ptr %4, i32 0, i32 12
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.xadc, ptr %4, i32 0, i32 11
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %11, %9
  %13 = xor i32 %12, -1
  %14 = and i32 %7, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %53, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.xadc, ptr %4, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %17) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %14) #8, !srcloc !12
  %20 = and i32 %14, 256
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %16
  %23 = load i32, ptr %8, align 4
  %24 = or i32 %23, 256
  store i32 %24, ptr %8, align 4
  %25 = load i32, ptr %10, align 4
  %26 = or i32 %25, %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr i8, ptr %27, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #8, !srcloc !12
  %29 = getelementptr inbounds %struct.xadc, ptr %4, i32 0, i32 16
  tail call void @complete(ptr noundef %29) #8
  br label %30

30:                                               ; preds = %22, %16
  %31 = and i32 %14, 255
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %30
  %34 = load i32, ptr %10, align 4
  %35 = or i32 %34, %31
  store i32 %35, ptr %10, align 4
  %36 = load i32, ptr %8, align 4
  %37 = or i32 %36, %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %38 = load ptr, ptr %4, align 4
  %39 = getelementptr i8, ptr %38, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #8, !srcloc !12
  %40 = lshr i32 %14, 4
  %41 = and i32 %40, 8
  %42 = shl nuw nsw i32 %31, 1
  %43 = and i32 %42, 240
  %44 = and i32 %14, 7
  %45 = or i32 %41, %44
  %46 = or i32 %45, %43
  tail call void @xadc_handle_events(ptr noundef %1, i32 noundef %46) #8
  %47 = getelementptr inbounds %struct.xadc, ptr %4, i32 0, i32 13
  %48 = load ptr, ptr @system_wq, align 4
  %49 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %48, ptr noundef %47, i32 noundef 50) #8
  br label %50

50:                                               ; preds = %33, %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %51 = load i16, ptr %17, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  br label %53

53:                                               ; preds = %50, %2
  %54 = phi i32 [ 1, %50 ], [ 0, %2 ]
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xadc_handle_events(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xadc_axi_read_adc_reg(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.xadc, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.xadc_ops, ptr %5, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr [2 x i32], ptr @xadc_axi_reg_offsets, i32 0, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = shl i32 %1, 2
  %11 = add i32 %9, %10
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr i8, ptr %12, i32 %11
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %15 = trunc i32 %14 to i16
  store i16 %15, ptr %2, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xadc_axi_write_adc_reg(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2) #2 {
  %4 = getelementptr inbounds %struct.xadc, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.xadc_ops, ptr %5, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr [2 x i32], ptr @xadc_axi_reg_offsets, i32 0, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = shl i32 %1, 2
  %11 = add i32 %9, %10
  %12 = zext i16 %2 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr i8, ptr %13, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #8, !srcloc !12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xadc_axi_setup(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 10) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %7 = load ptr, ptr %5, align 4
  %8 = getelementptr i8, ptr %7, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 -2147483648) #8, !srcloc !12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xadc_axi_update_alarm(ptr noundef %0, i32 noundef %1) #2 {
  %3 = shl i32 %1, 1
  %4 = and i32 %3, 14
  %5 = lshr i32 %1, 3
  %6 = and i32 %5, 1
  %7 = or i32 %4, %6
  %8 = shl i32 %1, 6
  %9 = and i32 %8, 15360
  %10 = or i32 %7, %9
  %11 = getelementptr inbounds %struct.xadc, ptr %0, i32 0, i32 15
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #8
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr i8, ptr %13, i32 104
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %16 = and i32 %15, -15376
  %17 = or i32 %10, %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr i8, ptr %18, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #8, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xadc_axi_get_dclk(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.xadc, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_get_rate(ptr noundef %3) #8
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xadc_axi_interrupt_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 96
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 104
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %11 = and i32 %10, %7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %36, label %13

13:                                               ; preds = %2
  %14 = and i32 %11, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.xadc, ptr %4, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @iio_trigger_poll(ptr noundef nonnull %18) #8
  br label %21

21:                                               ; preds = %20, %16, %13
  %22 = and i32 %11, 15375
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = lshr i32 %11, 1
  %26 = and i32 %25, 7
  %27 = shl i32 %11, 3
  %28 = and i32 %27, 8
  %29 = or i32 %26, %28
  %30 = lshr i32 %11, 6
  %31 = and i32 %30, 240
  %32 = or i32 %29, %31
  tail call void @xadc_handle_events(ptr noundef %1, i32 noundef %32) #8
  br label %33

33:                                               ; preds = %24, %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %34 = load ptr, ptr %4, align 4
  %35 = getelementptr i8, ptr %34, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %11) #8, !srcloc !12
  br label %36

36:                                               ; preds = %33, %2
  %37 = phi i32 [ 1, %33 ], [ 0, %2 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }

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
!9 = !{i64 3763875}
!10 = !{i64 2151757121}
!11 = !{i64 2151756662}
!12 = !{i64 3763457}
!13 = !{i64 2148917052}
!14 = !{i64 2148912876}
!15 = !{i64 2148912951, i64 2148912978, i64 2148913025, i64 2148913047, i64 2148913075, i64 2148913095}
!16 = !{i64 373984}
!17 = !{i64 2148941196}
!18 = !{i64 2148940055}
