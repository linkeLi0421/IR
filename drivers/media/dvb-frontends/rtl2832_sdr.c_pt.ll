; ModuleID = '/llk/IR/drivers/media/dvb-frontends/rtl2832_sdr.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/rtl2832_sdr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.90 }
%union.anon.90 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_frequency_band = type { i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.rtl2832_sdr_format = type { ptr, i32, i32 }
%struct.lock_class_key = type {}
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.115 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.115 = type { %struct.anon.116 }
%struct.anon.116 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.112], %struct.media_entity_enum, i32 }
%struct.anon.112 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
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
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rtl2832_sdr_platform_data = type { i32, i8, ptr, ptr, ptr, ptr }
%struct.rtl2832_sdr_dev = type { i32, ptr, ptr, %struct.video_device, %struct.v4l2_device, ptr, %struct.vb2_queue, %struct.list_head, %struct.spinlock, i32, %struct.mutex, %struct.mutex, ptr, i32, [10 x ptr], i32, i32, [10 x ptr], [10 x i32], i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_ctrl_handler, ptr, ptr, i32, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.dvb_usb_device = type { ptr, ptr, ptr, i8, ptr, ptr, %struct.dvb_usb_rc, i32, %struct.mutex, %struct.mutex, %struct.i2c_adapter, [2 x %struct.dvb_usb_adapter], ptr, [64 x i8], %struct.delayed_work, ptr }
%struct.dvb_usb_rc = type { ptr, i64, ptr, ptr, i32, i32, i8, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.dvb_usb_adapter = type { ptr, %struct.usb_data_stream, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dvb_adapter, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, [3 x ptr], [3 x ptr], [3 x ptr] }
%struct.usb_data_stream = type { ptr, %struct.usb_data_stream_properties, i8, ptr, [10 x ptr], i32, i32, [10 x ptr], [10 x i32], i32, i32, ptr }
%struct.usb_data_stream_properties = type { i8, i8, i8, %union.anon.149 }
%union.anon.149 = type { %struct.anon.151 }
%struct.anon.151 = type { i32, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.117, %union.anon.118, i32, ptr, i32, %struct.anon.119, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.117 = type { i64 }
%union.anon.118 = type { ptr }
%struct.anon.119 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.147], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.147 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.148 }>
%union.anon.148 = type { i64 }
%struct.dvb_usb_device_properties = type { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_usb_adapter_properties = type { i8, i8, ptr, ptr, %struct.usb_data_stream_properties }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtl2832_sdr_frame_buf = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.127, i32 }
%union.anon.127 = type { i32 }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
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
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.128 }
%union.anon.128 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.130, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.130 = type { i8 }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }

@__param_str_emulated_formats = internal constant [17 x i8] c"emulated_formats\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@rtl2832_sdr_emulated_fmt = internal global i8 0, align 1
@__param_emulated_formats = internal constant %struct.kernel_param { ptr @__param_str_emulated_formats, ptr @__this_module, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.90 { ptr @rtl2832_sdr_emulated_fmt } }, section "__param", align 4
@__UNIQUE_ID_emulated_formatstype342 = internal constant [31 x i8] c"parmtype=emulated_formats:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_emulated_formats343 = internal constant [69 x i8] c"parm=emulated_formats:enable emulated formats (disappears in future)\00", section ".modinfo", align 1
@__UNIQUE_ID_author356 = internal constant [38 x i8] c"author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description357 = internal constant [39 x i8] c"description=Realtek RTL2832 SDR driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license358 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@rtl2832_sdr_driver = internal global %struct.platform_driver { ptr @rtl2832_sdr_probe, ptr @rtl2832_sdr_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [12 x i8] c"rtl2832_sdr\00", align 1
@rtl2832_sdr_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @rtl2832_sdr_s_ctrl }, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Cannot proceed without platform data\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Refcount fail\00", align 1
@bands_adc = internal unnamed_addr constant [3 x %struct.v4l2_frequency_band] [%struct.v4l2_frequency_band { i32 0, i32 4, i32 0, i32 5120, i32 300000, i32 300000, i32 0, [9 x i32] zeroinitializer }, %struct.v4l2_frequency_band { i32 0, i32 4, i32 1, i32 5120, i32 900001, i32 2800000, i32 0, [9 x i32] zeroinitializer }, %struct.v4l2_frequency_band { i32 0, i32 4, i32 2, i32 5120, i32 3200000, i32 3200000, i32 0, [9 x i32] zeroinitializer }], align 4
@bands_fm = internal unnamed_addr constant [1 x %struct.v4l2_frequency_band] [%struct.v4l2_frequency_band { i32 1, i32 5, i32 0, i32 5120, i32 50000000, i32 2000000000, i32 0, [9 x i32] zeroinitializer }], align 4
@formats = internal unnamed_addr constant [2 x %struct.rtl2832_sdr_format] [%struct.rtl2832_sdr_format { ptr null, i32 942691651, i32 65536 }, %struct.rtl2832_sdr_format { ptr null, i32 909202755, i32 131072 }], align 4
@rtl2832_sdr_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"&dev->v4l2_lock\00", align 1
@rtl2832_sdr_probe.__key.4 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"&dev->vb_queue_lock\00", align 1
@rtl2832_sdr_vb2_ops = internal constant %struct.vb2_ops { ptr @rtl2832_sdr_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @rtl2832_sdr_buf_prepare, ptr null, ptr null, ptr @rtl2832_sdr_start_streaming, ptr @rtl2832_sdr_stop_streaming, ptr @rtl2832_sdr_buf_queue, ptr null }, align 4
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"Could not initialize vb2 queue\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Unsupported tuner\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Could not initialize controls\0A\00", align 1
@rtl2832_sdr_template = internal unnamed_addr constant %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @rtl2832_sdr_fops, i32 85000192, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"Realtek RTL2832 SDR\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release_empty, ptr @rtl2832_sdr_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, align 8
@.str.9 = private unnamed_addr constant [35 x i8] c"Failed to register v4l2-device %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"Failed to register as video device %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Registered as %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Realtek RTL2832 SDR attached\0A\00", align 1
@.str.13 = private unnamed_addr constant [77 x i8] c"SDR API is still slightly experimental and functionality changes may follow\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@.str.14 = private unnamed_addr constant [3 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [5 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"\CA\DC\D7\D8\E0\F2\0E5\06P\9C\0Dq\11\14qt\19A\A5\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"\11\10\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"\1B\16\0D\06\01\FF\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"\00\F0\0F\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"\E9\BF\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"\E9\F4\00", align 1
@rtl2832_sdr_urb_complete._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.rtl2832_sdr_urb_complete = private unnamed_addr constant [25 x i8] c"rtl2832_sdr_urb_complete\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"urb failed=%d\0A\00", align 1
@rtl2832_sdr_urb_complete._rs.23 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.24 = private unnamed_addr constant [38 x i8] c"videobuf is full, %d packets dropped\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"include/media/videobuf2-core.h\00", align 1
@.str.26 = private unnamed_addr constant [49 x i8] c"Could not submit urb no. %d - get them all back\0A\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"\00\0F\FF\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"@\00\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"\06?\CE\CC\00", align 1
@rtl2832_sdr_fops = internal constant %struct.v4l2_file_operations { ptr @__this_module, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, align 4
@rtl2832_sdr_ioctl_ops = internal constant %struct.v4l2_ioctl_ops { ptr @rtl2832_sdr_querycap, ptr null, ptr null, ptr null, ptr @rtl2832_sdr_enum_fmt_sdr_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl2832_sdr_g_fmt_sdr_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl2832_sdr_s_fmt_sdr_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl2832_sdr_try_fmt_sdr_cap, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr null, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl2832_sdr_g_tuner, ptr @rtl2832_sdr_s_tuner, ptr @rtl2832_sdr_g_frequency, ptr @rtl2832_sdr_s_frequency, ptr @rtl2832_sdr_enum_freq_bands, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, align 4
@.str.30 = private unnamed_addr constant [10 x i8] c"usb-%s-%s\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"ADC: Realtek RTL2832\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"RF: <unknown>\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author356, ptr @__UNIQUE_ID_description357, ptr @__UNIQUE_ID_emulated_formats343, ptr @__UNIQUE_ID_emulated_formatstype342, ptr @__UNIQUE_ID_license358, ptr @__param_emulated_formats], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rtl2832_sdr_driver, ptr noundef nonnull @__this_module) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rtl2832_sdr_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2832_sdr_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #12
  br label %143

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %143, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.device_driver, ptr %11, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = tail call zeroext i1 @try_module_get(ptr noundef %15) #11
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #12
  br label %143

18:                                               ; preds = %13
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %20 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 1656) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %136, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.rtl2832_sdr_platform_data, ptr %4, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 5
  store ptr %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 1
  store ptr %0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.rtl2832_sdr_platform_data, ptr %4, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 2
  store ptr %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.rtl2832_sdr_platform_data, ptr %4, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.dvb_usb_device, ptr %31, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 12
  store ptr %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 21
  store i32 300000, ptr %35, align 8
  %36 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 22
  store i32 50000000, ptr %36, align 4
  %37 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 23
  store i32 942691651, ptr %37, align 8
  %38 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 24
  store i32 65536, ptr %38, align 4
  %39 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 25
  %40 = load i8, ptr @rtl2832_sdr_emulated_fmt, align 1, !range !8
  %41 = icmp eq i8 %40, 0
  %42 = select i1 %41, i32 1, i32 2
  store i32 %42, ptr %39, align 8
  %43 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %43, ptr noundef nonnull @.str.3, ptr noundef nonnull @rtl2832_sdr_probe.__key) #11
  %44 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %44, ptr noundef nonnull @.str.5, ptr noundef nonnull @rtl2832_sdr_probe.__key.4) #11
  %45 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 8
  store i32 0, ptr %45, align 8
  %46 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 7
  store volatile ptr %46, ptr %46, align 8
  %47 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 7, i32 1
  store ptr %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 6
  store i32 11, ptr %48, align 4
  %49 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 6, i32 1
  store i32 7, ptr %49, align 8
  %50 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 6, i32 10
  store ptr %20, ptr %50, align 4
  %51 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 6, i32 12
  store i32 648, ptr %51, align 4
  %52 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 6, i32 7
  store ptr @rtl2832_sdr_vb2_ops, ptr %52, align 8
  %53 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 6, i32 8
  store ptr @vb2_vmalloc_memops, ptr %53, align 4
  %54 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 6, i32 13
  store i32 8192, ptr %54, align 8
  %55 = tail call i32 @vb2_queue_init(ptr noundef %48) #11
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #12
  br label %134

58:                                               ; preds = %22
  %59 = getelementptr inbounds %struct.rtl2832_sdr_platform_data, ptr %4, i32 0, i32 1
  %60 = load i8, ptr %59, align 4
  switch i8 %60, label %91 [
    i8 39, label %61
    i8 42, label %69
    i8 43, label %69
    i8 38, label %76
    i8 41, label %76
    i8 33, label %83
  ]

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 26
  %63 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %62, i32 noundef 9, ptr noundef null, ptr noundef null) #11
  %64 = icmp eq ptr %24, null
  br i1 %64, label %94, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.v4l2_subdev, ptr %24, i32 0, i32 8
  %67 = load ptr, ptr %66, align 4
  %68 = tail call i32 @v4l2_ctrl_add_handler(ptr noundef %62, ptr noundef %67, ptr noundef null, i1 noundef zeroext true) #11
  br label %94

69:                                               ; preds = %58, %58
  %70 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 26
  %71 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %70, i32 noundef 2, ptr noundef null, ptr noundef null) #11
  %72 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %70, ptr noundef nonnull @rtl2832_sdr_ctrl_ops, i32 noundef 10619147, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #11
  %73 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 27
  store ptr %72, ptr %73, align 4
  %74 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %70, ptr noundef nonnull @rtl2832_sdr_ctrl_ops, i32 noundef 10619148, i64 noundef 0, i64 noundef 8000000, i64 noundef 100000, i64 noundef 0) #11
  %75 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 28
  store ptr %74, ptr %75, align 8
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %73, i8 noundef zeroext 0, i1 noundef zeroext false) #11
  br label %94

76:                                               ; preds = %58, %58
  %77 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 26
  %78 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %77, i32 noundef 2, ptr noundef null, ptr noundef null) #11
  %79 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %77, ptr noundef nonnull @rtl2832_sdr_ctrl_ops, i32 noundef 10619147, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #11
  %80 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 27
  store ptr %79, ptr %80, align 4
  %81 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %77, ptr noundef nonnull @rtl2832_sdr_ctrl_ops, i32 noundef 10619148, i64 noundef 6000000, i64 noundef 8000000, i64 noundef 1000000, i64 noundef 6000000) #11
  %82 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 28
  store ptr %81, ptr %82, align 8
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %80, i8 noundef zeroext 0, i1 noundef zeroext false) #11
  br label %94

83:                                               ; preds = %58
  %84 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 26
  %85 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %84, i32 noundef 2, ptr noundef null, ptr noundef null) #11
  %86 = icmp eq ptr %24, null
  br i1 %86, label %94, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.v4l2_subdev, ptr %24, i32 0, i32 8
  %89 = load ptr, ptr %88, align 4
  %90 = tail call i32 @v4l2_ctrl_add_handler(ptr noundef %84, ptr noundef %89, ptr noundef null, i1 noundef zeroext true) #11
  br label %94

91:                                               ; preds = %58
  %92 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 26
  %93 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %92, i32 noundef 0, ptr noundef null, ptr noundef null) #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7) #12
  br label %131

94:                                               ; preds = %87, %83, %76, %69, %65, %61
  %95 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 26
  %96 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 26, i32 9
  %97 = load i32, ptr %96, align 8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8) #12
  br label %131

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(856) %101, ptr noundef nonnull align 8 dereferenceable(856) @rtl2832_sdr_template, i32 856, i1 false)
  %102 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 3, i32 10
  store ptr %48, ptr %102, align 8
  %103 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 6, i32 5
  store ptr %44, ptr %103, align 8
  %104 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 3, i32 5, i32 8
  store ptr %20, ptr %104, align 8
  %105 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 4
  %106 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 4, i32 9
  store ptr @rtl2832_sdr_video_release, ptr %106, align 4
  %107 = tail call i32 @v4l2_device_register(ptr noundef %2, ptr noundef %105) #11
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %100
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef %107) #12
  br label %131

110:                                              ; preds = %100
  %111 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 4, i32 6
  store ptr %95, ptr %111, align 4
  %112 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 3, i32 7
  store ptr %105, ptr %112, align 4
  %113 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 3, i32 26
  store ptr %43, ptr %113, align 8
  %114 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 3, i32 14
  store i32 0, ptr %114, align 4
  %115 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 3, i32 3
  %116 = load ptr, ptr %115, align 4
  %117 = load ptr, ptr %116, align 4
  %118 = tail call i32 @__video_register_device(ptr noundef %101, i32 noundef 4, i32 noundef -1, i32 noundef 1, ptr noundef %117) #11
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %110
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %118) #12
  tail call void @v4l2_device_unregister(ptr noundef %105) #11
  br label %131

121:                                              ; preds = %110
  %122 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 3, i32 5, i32 3
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 3, i32 5
  %127 = load ptr, ptr %126, align 8
  br label %128

128:                                              ; preds = %125, %121
  %129 = phi ptr [ %127, %125 ], [ %123, %121 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.11, ptr noundef %129) #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.12) #12
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %2, ptr noundef nonnull @.str.13) #12
  %130 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %20, ptr %130, align 8
  br label %143

131:                                              ; preds = %120, %109, %99, %91
  %132 = phi i32 [ -19, %91 ], [ %97, %99 ], [ %107, %109 ], [ %118, %120 ]
  %133 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %20, i32 0, i32 26
  tail call void @v4l2_ctrl_handler_free(ptr noundef %133) #11
  br label %134

134:                                              ; preds = %131, %57
  %135 = phi i32 [ %55, %57 ], [ %132, %131 ]
  tail call void @kfree(ptr noundef nonnull %20) #11
  br label %136

136:                                              ; preds = %134, %18
  %137 = phi i32 [ %135, %134 ], [ -12, %18 ]
  %138 = load ptr, ptr %8, align 4
  %139 = getelementptr inbounds %struct.device, ptr %138, i32 0, i32 6
  %140 = load ptr, ptr %139, align 8
  %141 = getelementptr inbounds %struct.device_driver, ptr %140, i32 0, i32 2
  %142 = load ptr, ptr %141, align 4
  tail call void @module_put(ptr noundef %142) #11
  br label %143

143:                                              ; preds = %136, %128, %17, %7, %6
  %144 = phi i32 [ 0, %128 ], [ %137, %136 ], [ -22, %17 ], [ -22, %6 ], [ -22, %7 ]
  ret i32 %144
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2832_sdr_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %3, i32 0, i32 11
  tail call void @mutex_lock(ptr noundef %4) #11
  %5 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %3, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %3, i32 0, i32 12
  store ptr null, ptr %6, align 8
  %7 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %3, i32 0, i32 4
  tail call void @v4l2_device_disconnect(ptr noundef %7) #11
  %8 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %3, i32 0, i32 3
  tail call void @video_unregister_device(ptr noundef %8) #11
  tail call void @mutex_unlock(ptr noundef %5) #11
  tail call void @mutex_unlock(ptr noundef %4) #11
  %9 = tail call i32 @v4l2_device_put(ptr noundef %7) #11
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.device_driver, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  tail call void @module_put(ptr noundef %15) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_add_handler(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl2832_sdr_video_release(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -872
  %3 = getelementptr i8, ptr %0, i32 652
  tail call void @v4l2_ctrl_handler_free(ptr noundef %3) #11
  tail call void @v4l2_device_unregister(ptr noundef %0) #11
  tail call void @kfree(ptr noundef %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2832_sdr_s_ctrl(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -1524
  %5 = getelementptr i8, ptr %3, i32 -1520
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rtl2832_sdr_platform_data, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %12 = load i32, ptr %11, align 8
  %13 = add i32 %12, -10619147
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %15, label %62

15:                                               ; preds = %1
  %16 = getelementptr i8, ptr %3, i32 112
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %17, i32 0, i32 22
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %47, label %21

21:                                               ; preds = %15
  %22 = getelementptr i8, ptr %3, i32 116
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.v4l2_ctrl, ptr %23, i32 0, i32 18
  %25 = load i64, ptr %24, align 8
  %26 = getelementptr inbounds %struct.v4l2_ctrl, ptr %23, i32 0, i32 11
  %27 = load i64, ptr %26, align 8
  %28 = getelementptr i8, ptr %3, i32 -20
  %29 = load i32, ptr %28, align 8
  %30 = lshr i64 %25, 1
  %31 = trunc i64 %30 to i32
  %32 = add i32 %29, %31
  %33 = trunc i64 %27 to i32
  %34 = tail call i32 @llvm.smax.i32(i32 %32, i32 %33)
  %35 = getelementptr inbounds %struct.v4l2_ctrl, ptr %23, i32 0, i32 12
  %36 = load i64, ptr %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = tail call i32 @llvm.smin.i32(i32 %34, i32 %37)
  %39 = sub i32 %38, %33
  %40 = trunc i64 %25 to i32
  %41 = udiv i32 %39, %40
  %42 = zext i32 %41 to i64
  %43 = mul i64 %25, %42
  %44 = add i64 %43, %27
  %45 = trunc i64 %44 to i32
  %46 = getelementptr inbounds %struct.v4l2_ctrl, ptr %23, i32 0, i32 22
  store i32 %45, ptr %46, align 4
  br label %47

47:                                               ; preds = %21, %15
  %48 = getelementptr i8, ptr %3, i32 116
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.v4l2_ctrl, ptr %49, i32 0, i32 22
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.dvb_frontend, ptr %10, i32 0, i32 8, i32 7
  store i32 %51, ptr %52, align 4
  %53 = load volatile i32, ptr %4, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.dvb_frontend, ptr %10, i32 0, i32 1, i32 32, i32 6
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = tail call i32 %58(ptr noundef %10) #11
  br label %62

62:                                               ; preds = %60, %56, %47, %1
  %63 = phi i32 [ 0, %47 ], [ %61, %60 ], [ 0, %56 ], [ -22, %1 ]
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @rtl2832_sdr_queue_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef readnone %4) #7 {
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 21
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %1, align 4
  %11 = add i32 %10, %9
  %12 = icmp ult i32 %11, 8
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = sub i32 8, %9
  store i32 %14, ptr %1, align 4
  br label %15

15:                                               ; preds = %13, %5
  store i32 1, ptr %2, align 4
  %16 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %7, i32 0, i32 24
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 4095
  %19 = and i32 %18, -4096
  store i32 %19, ptr %3, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @rtl2832_sdr_buf_prepare(ptr nocapture noundef readonly %0) #8 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %4, i32 0, i32 12
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, i32 -19, i32 0
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2832_sdr_start_streaming(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rtl2832_sdr_platform_data, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %4, i32 0, i32 12
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %120, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %4, i32 0, i32 10
  %16 = tail call i32 @mutex_lock_interruptible(ptr noundef %15) #11
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %120

18:                                               ; preds = %14
  %19 = load ptr, ptr %10, align 8
  %20 = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %19, i32 0, i32 17
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = tail call i32 %21(ptr noundef %10, i32 noundef 1) #11
  %25 = load ptr, ptr %10, align 8
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi ptr [ %25, %23 ], [ %19, %18 ]
  %28 = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %27, i32 0, i32 24
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.rtl2832_sdr_platform_data, ptr %8, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 %29(ptr noundef %33, i32 noundef 1) #11
  br label %35

35:                                               ; preds = %31, %26
  tail call void @_set_bit(i32 noundef 0, ptr noundef %4) #11
  %36 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %4, i32 0, i32 5
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %58, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.v4l2_subdev, ptr %37, i32 0, i32 6
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %58, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %41, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %58, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %44, i32 0, i32 8
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %51, i32 0, i32 8
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %69

57:                                               ; preds = %53, %50
  br label %69

58:                                               ; preds = %46, %43, %39, %35
  %59 = load ptr, ptr %5, align 4
  %60 = getelementptr inbounds %struct.platform_device, ptr %59, i32 0, i32 3, i32 7
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.rtl2832_sdr_platform_data, ptr %61, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.dvb_frontend, ptr %63, i32 0, i32 1, i32 32, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %58
  %68 = tail call i32 %65(ptr noundef %63) #11
  br label %73

69:                                               ; preds = %57, %53
  %70 = phi ptr [ %48, %57 ], [ %55, %53 ]
  %71 = tail call i32 %70(ptr noundef nonnull %37, i32 noundef 1) #11
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %118

73:                                               ; preds = %69, %67, %58
  tail call fastcc void @rtl2832_sdr_set_tuner_freq(ptr noundef %4)
  %74 = tail call fastcc i32 @rtl2832_sdr_set_adc(ptr noundef %4)
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %118

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %4, i32 0, i32 15
  %78 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %4, i32 0, i32 16
  store i32 65536, ptr %78, align 4
  store i32 0, ptr %77, align 8
  br label %79

79:                                               ; preds = %107, %76
  %80 = phi i32 [ 0, %76 ], [ %109, %107 ]
  %81 = load ptr, ptr %11, align 8
  %82 = getelementptr %struct.rtl2832_sdr_dev, ptr %4, i32 0, i32 18, i32 %80
  %83 = tail call ptr @usb_alloc_coherent(ptr noundef %81, i32 noundef 65536, i32 noundef 3264, ptr noundef %82) #11
  %84 = load i32, ptr %77, align 8
  %85 = getelementptr %struct.rtl2832_sdr_dev, ptr %4, i32 0, i32 17, i32 %84
  store ptr %83, ptr %85, align 4
  %86 = load i32, ptr %77, align 8
  %87 = getelementptr %struct.rtl2832_sdr_dev, ptr %4, i32 0, i32 17, i32 %86
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %107

90:                                               ; preds = %79
  %91 = load volatile i32, ptr %4, align 4
  %92 = and i32 %91, 2
  %93 = icmp eq i32 %92, 0
  %94 = icmp eq i32 %86, 0
  %95 = select i1 %93, i1 true, i1 %94
  br i1 %95, label %111, label %96

96:                                               ; preds = %96, %90
  %97 = phi i32 [ %105, %96 ], [ %86, %90 ]
  %98 = add i32 %97, -1
  store i32 %98, ptr %77, align 8
  %99 = load ptr, ptr %11, align 8
  %100 = load i32, ptr %78, align 4
  %101 = getelementptr %struct.rtl2832_sdr_dev, ptr %4, i32 0, i32 17, i32 %98
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr %struct.rtl2832_sdr_dev, ptr %4, i32 0, i32 18, i32 %98
  %104 = load i32, ptr %103, align 4
  tail call void @usb_free_coherent(ptr noundef %99, i32 noundef %100, ptr noundef %102, i32 noundef %104) #11
  %105 = load i32, ptr %77, align 8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %111, label %96

107:                                              ; preds = %79
  tail call void @_set_bit(i32 noundef 1, ptr noundef %4) #11
  %108 = load i32, ptr %77, align 8
  %109 = add i32 %108, 1
  store i32 %109, ptr %77, align 8
  %110 = icmp slt i32 %109, 10
  br i1 %110, label %79, label %112

111:                                              ; preds = %96, %90
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %4) #11
  br label %118

112:                                              ; preds = %107
  %113 = tail call fastcc i32 @rtl2832_sdr_alloc_urbs(ptr noundef %4)
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %4, i32 0, i32 9
  store i32 0, ptr %116, align 4
  %117 = tail call fastcc i32 @rtl2832_sdr_submit_urbs(ptr noundef %4)
  br label %118

118:                                              ; preds = %115, %112, %111, %73, %69
  %119 = phi i32 [ %71, %69 ], [ %74, %73 ], [ -12, %111 ], [ %113, %112 ], [ %117, %115 ]
  tail call void @mutex_unlock(ptr noundef %15) #11
  br label %120

120:                                              ; preds = %118, %14, %2
  %121 = phi i32 [ %119, %118 ], [ -19, %2 ], [ -512, %14 ]
  ret i32 %121
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl2832_sdr_stop_streaming(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rtl2832_sdr_platform_data, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %3, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %10) #11
  %11 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %3, i32 0, i32 20
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -1
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %21

15:                                               ; preds = %15, %1
  %16 = phi i32 [ %19, %15 ], [ %13, %1 ]
  %17 = getelementptr %struct.rtl2832_sdr_dev, ptr %3, i32 0, i32 14, i32 %16
  %18 = load ptr, ptr %17, align 4
  tail call void @usb_kill_urb(ptr noundef %18) #11
  %19 = add nsw i32 %16, -1
  %20 = icmp eq i32 %16, 0
  br i1 %20, label %21, label %15

21:                                               ; preds = %15, %1
  store i32 0, ptr %11, align 4
  %22 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %3, i32 0, i32 19
  %23 = load i32, ptr %22, align 8
  %24 = add i32 %23, -1
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %35

26:                                               ; preds = %32, %21
  %27 = phi i32 [ %33, %32 ], [ %24, %21 ]
  %28 = getelementptr %struct.rtl2832_sdr_dev, ptr %3, i32 0, i32 14, i32 %27
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  tail call void @usb_free_urb(ptr noundef nonnull %29) #11
  br label %32

32:                                               ; preds = %31, %26
  %33 = add i32 %27, -1
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %26, label %35

35:                                               ; preds = %32, %21
  store i32 0, ptr %22, align 8
  %36 = load volatile i32, ptr %3, align 4
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %3, i32 0, i32 15
  %41 = load i32, ptr %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %3, i32 0, i32 12
  %45 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %3, i32 0, i32 16
  br label %46

46:                                               ; preds = %46, %43
  %47 = phi i32 [ %41, %43 ], [ %55, %46 ]
  %48 = add i32 %47, -1
  store i32 %48, ptr %40, align 8
  %49 = load ptr, ptr %44, align 8
  %50 = load i32, ptr %45, align 4
  %51 = getelementptr %struct.rtl2832_sdr_dev, ptr %3, i32 0, i32 17, i32 %48
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr %struct.rtl2832_sdr_dev, ptr %3, i32 0, i32 18, i32 %48
  %54 = load i32, ptr %53, align 4
  tail call void @usb_free_coherent(ptr noundef %49, i32 noundef %50, ptr noundef %52, i32 noundef %54) #11
  %55 = load i32, ptr %40, align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %46

57:                                               ; preds = %46, %39, %35
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %3) #11
  %58 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %3, i32 0, i32 8
  %59 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %58) #11
  %60 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %3, i32 0, i32 7
  %61 = load volatile ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %72, label %63

63:                                               ; preds = %63, %57
  %64 = phi ptr [ %70, %63 ], [ %61, %57 ]
  %65 = getelementptr i8, ptr %64, i32 -640
  %66 = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = load ptr, ptr %64, align 4
  %69 = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  store ptr %67, ptr %69, align 4
  store volatile ptr %68, ptr %67, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %64, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %66, align 4
  tail call void @vb2_buffer_done(ptr noundef %65, i32 noundef 6) #11
  %70 = load volatile ptr, ptr %60, align 4
  %71 = icmp eq ptr %70, %60
  br i1 %71, label %72, label %63

72:                                               ; preds = %63, %57
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %58, i32 noundef %59) #11
  %73 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %3, i32 0, i32 2
  %74 = load ptr, ptr %73, align 8
  %75 = tail call i32 @regmap_write(ptr noundef %74, i32 noundef 97, i32 noundef 224) #11
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %72
  %78 = load ptr, ptr %73, align 8
  %79 = tail call i32 @regmap_write(ptr noundef %78, i32 noundef 25, i32 noundef 32) #11
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %77
  %82 = load ptr, ptr %73, align 8
  %83 = tail call i32 @regmap_bulk_write(ptr noundef %82, i32 noundef 23, ptr noundef nonnull @.str.17, i32 noundef 2) #11
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %81
  %86 = load ptr, ptr %73, align 8
  %87 = tail call i32 @regmap_bulk_write(ptr noundef %86, i32 noundef 402, ptr noundef nonnull @.str.27, i32 noundef 3) #11
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load ptr, ptr %73, align 8
  %91 = tail call i32 @regmap_bulk_write(ptr noundef %90, i32 noundef 318, ptr noundef nonnull @.str.28, i32 noundef 2) #11
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load ptr, ptr %73, align 8
  %95 = tail call i32 @regmap_bulk_write(ptr noundef %94, i32 noundef 277, ptr noundef nonnull @.str.29, i32 noundef 4) #11
  br label %96

96:                                               ; preds = %93, %89, %85, %81, %77, %72
  %97 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %3, i32 0, i32 5
  %98 = load ptr, ptr %97, align 8
  %99 = icmp eq ptr %98, null
  br i1 %99, label %122, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.v4l2_subdev, ptr %98, i32 0, i32 6
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %122, label %104

104:                                              ; preds = %100
  %105 = load ptr, ptr %102, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %122, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %105, i32 0, i32 8
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %122, label %111

111:                                              ; preds = %107
  %112 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %120, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %112, i32 0, i32 8
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %120, label %118

118:                                              ; preds = %114
  %119 = tail call i32 %116(ptr noundef nonnull %98, i32 noundef 0) #11
  br label %133

120:                                              ; preds = %114, %111
  %121 = tail call i32 %109(ptr noundef nonnull %98, i32 noundef 0) #11
  br label %133

122:                                              ; preds = %107, %104, %100, %96
  %123 = load ptr, ptr %4, align 4
  %124 = getelementptr inbounds %struct.platform_device, ptr %123, i32 0, i32 3, i32 7
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.rtl2832_sdr_platform_data, ptr %125, i32 0, i32 3
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.dvb_frontend, ptr %127, i32 0, i32 1, i32 32, i32 3
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %133, label %131

131:                                              ; preds = %122
  %132 = tail call i32 %129(ptr noundef %127) #11
  br label %133

133:                                              ; preds = %131, %122, %120, %118
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %3) #11
  %134 = load ptr, ptr %9, align 8
  %135 = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %134, i32 0, i32 24
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %143, label %138

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.rtl2832_sdr_platform_data, ptr %7, i32 0, i32 3
  %140 = load ptr, ptr %139, align 4
  %141 = tail call i32 %136(ptr noundef %140, i32 noundef 0) #11
  %142 = load ptr, ptr %9, align 8
  br label %143

143:                                              ; preds = %138, %133
  %144 = phi ptr [ %142, %138 ], [ %134, %133 ]
  %145 = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %144, i32 0, i32 17
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %150, label %148

148:                                              ; preds = %143
  %149 = tail call i32 %146(ptr noundef %9, i32 noundef 0) #11
  br label %150

150:                                              ; preds = %148, %143
  tail call void @mutex_unlock(ptr noundef %10) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl2832_sdr_buf_queue(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %4, i32 0, i32 12
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @vb2_buffer_done(ptr noundef %0, i32 noundef 6) #11
  br label %17

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %4, i32 0, i32 8
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #11
  %12 = getelementptr inbounds %struct.rtl2832_sdr_frame_buf, ptr %0, i32 0, i32 1
  %13 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %4, i32 0, i32 7
  %14 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %4, i32 0, i32 7, i32 1
  %15 = load ptr, ptr %14, align 4
  store ptr %12, ptr %14, align 4
  store ptr %13, ptr %12, align 4
  %16 = getelementptr inbounds %struct.rtl2832_sdr_frame_buf, ptr %0, i32 0, i32 1, i32 1
  store ptr %15, ptr %16, align 4
  store volatile ptr %12, ptr %15, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #11
  br label %17

17:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rtl2832_sdr_set_tuner_freq(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rtl2832_sdr_platform_data, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8
  %9 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %0, i32 0, i32 22
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %62, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %0, i32 0, i32 26
  %14 = tail call ptr @v4l2_ctrl_find(ptr noundef %13, i32 noundef 10619147) #11
  %15 = tail call ptr @v4l2_ctrl_find(ptr noundef %13, i32 noundef 10619148) #11
  %16 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %14) #11
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %0, i32 0, i32 21
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 7
  store i32 %20, ptr %21, align 4
  %22 = load i32, ptr %19, align 8
  %23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %15, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  tail call void @mutex_lock(ptr noundef %26) #11
  %27 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %15, i32 noundef %22) #11
  %28 = load ptr, ptr %23, align 8
  %29 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  tail call void @mutex_unlock(ptr noundef %30) #11
  br label %34

31:                                               ; preds = %12
  %32 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %15) #11
  %33 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 7
  store i32 %32, ptr %33, align 4
  br label %34

34:                                               ; preds = %31, %18
  %35 = load i32, ptr %9, align 4
  store i32 %35, ptr %8, align 4
  %36 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 15
  store i32 3, ptr %36, align 4
  %37 = load volatile i32, ptr %0, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %62, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %0, i32 0, i32 5
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %56, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.v4l2_subdev, ptr %42, i32 0, i32 6
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %46, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %50, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %52, %48, %44, %40
  %57 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 1, i32 32, i32 6
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = tail call i32 %58(ptr noundef %7) #11
  br label %62

62:                                               ; preds = %60, %56, %52, %34, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rtl2832_sdr_set_adc(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = alloca [4 x i8], align 4
  %4 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rtl2832_sdr_platform_data, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !9
  %11 = load volatile i32, ptr %0, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %356, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %0, i32 0, i32 21
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %356, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call i32 @regmap_bulk_write(ptr noundef %20, i32 noundef 318, ptr noundef nonnull @.str.14, i32 noundef 2) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %356

23:                                               ; preds = %18
  %24 = load ptr, ptr %19, align 8
  %25 = tail call i32 @regmap_bulk_write(ptr noundef %24, i32 noundef 277, ptr noundef nonnull @.str.15, i32 noundef 4) #11
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %356

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.dvb_frontend, ptr %10, i32 0, i32 1, i32 32, i32 11
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %356, label %31

31:                                               ; preds = %27
  %32 = call i32 %29(ptr noundef %10, ptr noundef nonnull %2) #11
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %356

34:                                               ; preds = %31
  %35 = load i32, ptr %2, align 4
  %36 = load i32, ptr %8, align 4
  %37 = urem i32 %35, %36
  %38 = zext i32 %37 to i64
  %39 = shl nuw nsw i64 %38, 22
  %40 = icmp ult i32 %37, 1024
  br i1 %40, label %41, label %44, !prof !10

41:                                               ; preds = %34
  %42 = trunc i64 %39 to i32
  %43 = udiv i32 %42, %36
  br label %48

44:                                               ; preds = %34
  %45 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %36, i64 %39) #14, !srcloc !11
  %46 = extractvalue { i64, i64 } %45, 1
  %47 = trunc i64 %46 to i32
  br label %48

48:                                               ; preds = %44, %41
  %49 = phi i32 [ %43, %41 ], [ %47, %44 ]
  %50 = sub i32 0, %49
  %51 = lshr i32 %50, 16
  %52 = trunc i32 %51 to i8
  %53 = and i8 %52, 63
  store i8 %53, ptr %3, align 4
  %54 = lshr i32 %50, 8
  %55 = trunc i32 %54 to i8
  %56 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 1
  store i8 %55, ptr %56, align 1
  %57 = trunc i32 %50 to i8
  %58 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 2
  store i8 %57, ptr %58, align 2
  %59 = load ptr, ptr %19, align 8
  %60 = call i32 @regmap_bulk_write(ptr noundef %59, i32 noundef 281, ptr noundef nonnull %3, i32 noundef 3) #11
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %356

62:                                               ; preds = %48
  %63 = load i32, ptr %2, align 4
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, i32 27, i32 26
  %66 = load ptr, ptr %19, align 8
  %67 = call i32 @regmap_write(ptr noundef %66, i32 noundef 433, i32 noundef %65) #11
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %356

69:                                               ; preds = %62
  %70 = select i1 %64, i32 205, i32 141
  %71 = load ptr, ptr %19, align 8
  %72 = call i32 @regmap_write(ptr noundef %71, i32 noundef 8, i32 noundef %70) #11
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %356

74:                                               ; preds = %69
  %75 = load ptr, ptr %19, align 8
  %76 = call i32 @regmap_write(ptr noundef %75, i32 noundef 6, i32 noundef 128) #11
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %356

78:                                               ; preds = %74
  %79 = load i32, ptr %8, align 4
  %80 = zext i32 %79 to i64
  %81 = shl nuw nsw i64 %80, 22
  %82 = shl i32 %16, 2
  %83 = icmp ult i32 %79, 1024
  br i1 %83, label %84, label %87, !prof !10

84:                                               ; preds = %78
  %85 = trunc i64 %81 to i32
  %86 = udiv i32 %85, %82
  br label %91

87:                                               ; preds = %78
  %88 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %82, i64 %81) #14, !srcloc !11
  %89 = extractvalue { i64, i64 } %88, 1
  %90 = trunc i64 %89 to i32
  br label %91

91:                                               ; preds = %87, %84
  %92 = phi i32 [ %86, %84 ], [ %90, %87 ]
  %93 = shl i32 %92, 2
  %94 = lshr i32 %93, 24
  %95 = trunc i32 %94 to i8
  store i8 %95, ptr %3, align 4
  %96 = lshr i32 %93, 16
  %97 = trunc i32 %96 to i8
  store i8 %97, ptr %56, align 1
  %98 = lshr i32 %93, 8
  %99 = trunc i32 %98 to i8
  store i8 %99, ptr %58, align 2
  %100 = trunc i32 %93 to i8
  %101 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 3
  store i8 %100, ptr %101, align 1
  %102 = load ptr, ptr %19, align 8
  %103 = call i32 @regmap_bulk_write(ptr noundef %102, i32 noundef 415, ptr noundef nonnull %3, i32 noundef 4) #11
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %356

105:                                              ; preds = %91
  %106 = load ptr, ptr %19, align 8
  %107 = call i32 @regmap_bulk_write(ptr noundef %106, i32 noundef 284, ptr noundef nonnull @.str.16, i32 noundef 20) #11
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %356

109:                                              ; preds = %105
  %110 = load ptr, ptr %19, align 8
  %111 = call i32 @regmap_bulk_write(ptr noundef %110, i32 noundef 23, ptr noundef nonnull @.str.17, i32 noundef 2) #11
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %356

113:                                              ; preds = %109
  %114 = load ptr, ptr %19, align 8
  %115 = call i32 @regmap_write(ptr noundef %114, i32 noundef 25, i32 noundef 5) #11
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %356

117:                                              ; preds = %113
  %118 = load ptr, ptr %19, align 8
  %119 = call i32 @regmap_bulk_write(ptr noundef %118, i32 noundef 26, ptr noundef nonnull @.str.18, i32 noundef 6) #11
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %356

121:                                              ; preds = %117
  %122 = load ptr, ptr %19, align 8
  %123 = call i32 @regmap_bulk_write(ptr noundef %122, i32 noundef 402, ptr noundef nonnull @.str.19, i32 noundef 3) #11
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %356

125:                                              ; preds = %121
  %126 = load ptr, ptr %19, align 8
  %127 = call i32 @regmap_write(ptr noundef %126, i32 noundef 97, i32 noundef 96) #11
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %356

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.rtl2832_sdr_platform_data, ptr %8, i32 0, i32 1
  %131 = load i8, ptr %130, align 4
  switch i8 %131, label %348 [
    i8 39, label %132
    i8 38, label %201
    i8 41, label %201
    i8 42, label %260
    i8 43, label %260
    i8 33, label %305
  ]

132:                                              ; preds = %129
  %133 = load ptr, ptr %19, align 8
  %134 = call i32 @regmap_write(ptr noundef %133, i32 noundef 274, i32 noundef 90) #11
  %135 = load ptr, ptr %19, align 8
  %136 = call i32 @regmap_write(ptr noundef %135, i32 noundef 258, i32 noundef 64) #11
  %137 = load ptr, ptr %19, align 8
  %138 = call i32 @regmap_write(ptr noundef %137, i32 noundef 259, i32 noundef 90) #11
  %139 = load ptr, ptr %19, align 8
  %140 = call i32 @regmap_write(ptr noundef %139, i32 noundef 455, i32 noundef 48) #11
  %141 = load ptr, ptr %19, align 8
  %142 = call i32 @regmap_write(ptr noundef %141, i32 noundef 260, i32 noundef 208) #11
  %143 = load ptr, ptr %19, align 8
  %144 = call i32 @regmap_write(ptr noundef %143, i32 noundef 261, i32 noundef 190) #11
  %145 = load ptr, ptr %19, align 8
  %146 = call i32 @regmap_write(ptr noundef %145, i32 noundef 456, i32 noundef 24) #11
  %147 = load ptr, ptr %19, align 8
  %148 = call i32 @regmap_write(ptr noundef %147, i32 noundef 262, i32 noundef 53) #11
  %149 = load ptr, ptr %19, align 8
  %150 = call i32 @regmap_write(ptr noundef %149, i32 noundef 457, i32 noundef 33) #11
  %151 = load ptr, ptr %19, align 8
  %152 = call i32 @regmap_write(ptr noundef %151, i32 noundef 458, i32 noundef 33) #11
  %153 = load ptr, ptr %19, align 8
  %154 = call i32 @regmap_write(ptr noundef %153, i32 noundef 459, i32 noundef 0) #11
  %155 = load ptr, ptr %19, align 8
  %156 = call i32 @regmap_write(ptr noundef %155, i32 noundef 263, i32 noundef 64) #11
  %157 = load ptr, ptr %19, align 8
  %158 = call i32 @regmap_write(ptr noundef %157, i32 noundef 461, i32 noundef 16) #11
  %159 = load ptr, ptr %19, align 8
  %160 = call i32 @regmap_write(ptr noundef %159, i32 noundef 462, i32 noundef 16) #11
  %161 = load ptr, ptr %19, align 8
  %162 = call i32 @regmap_write(ptr noundef %161, i32 noundef 264, i32 noundef 128) #11
  %163 = load ptr, ptr %19, align 8
  %164 = call i32 @regmap_write(ptr noundef %163, i32 noundef 265, i32 noundef 127) #11
  %165 = load ptr, ptr %19, align 8
  %166 = call i32 @regmap_write(ptr noundef %165, i32 noundef 266, i32 noundef 128) #11
  %167 = load ptr, ptr %19, align 8
  %168 = call i32 @regmap_write(ptr noundef %167, i32 noundef 267, i32 noundef 127) #11
  %169 = load ptr, ptr %19, align 8
  %170 = call i32 @regmap_write(ptr noundef %169, i32 noundef 14, i32 noundef 252) #11
  %171 = load ptr, ptr %19, align 8
  %172 = call i32 @regmap_write(ptr noundef %171, i32 noundef 14, i32 noundef 252) #11
  %173 = load ptr, ptr %19, align 8
  %174 = call i32 @regmap_write(ptr noundef %173, i32 noundef 17, i32 noundef 212) #11
  %175 = load ptr, ptr %19, align 8
  %176 = call i32 @regmap_write(ptr noundef %175, i32 noundef 485, i32 noundef 240) #11
  %177 = load ptr, ptr %19, align 8
  %178 = call i32 @regmap_write(ptr noundef %177, i32 noundef 473, i32 noundef 0) #11
  %179 = load ptr, ptr %19, align 8
  %180 = call i32 @regmap_write(ptr noundef %179, i32 noundef 475, i32 noundef 0) #11
  %181 = load ptr, ptr %19, align 8
  %182 = call i32 @regmap_write(ptr noundef %181, i32 noundef 477, i32 noundef 20) #11
  %183 = load ptr, ptr %19, align 8
  %184 = call i32 @regmap_write(ptr noundef %183, i32 noundef 478, i32 noundef 236) #11
  %185 = load ptr, ptr %19, align 8
  %186 = call i32 @regmap_write(ptr noundef %185, i32 noundef 472, i32 noundef 12) #11
  %187 = load ptr, ptr %19, align 8
  %188 = call i32 @regmap_write(ptr noundef %187, i32 noundef 486, i32 noundef 2) #11
  %189 = load ptr, ptr %19, align 8
  %190 = call i32 @regmap_write(ptr noundef %189, i32 noundef 471, i32 noundef 9) #11
  %191 = load ptr, ptr %19, align 8
  %192 = call i32 @regmap_write(ptr noundef %191, i32 noundef 13, i32 noundef 131) #11
  %193 = load ptr, ptr %19, align 8
  %194 = call i32 @regmap_write(ptr noundef %193, i32 noundef 16, i32 noundef 73) #11
  %195 = load ptr, ptr %19, align 8
  %196 = call i32 @regmap_write(ptr noundef %195, i32 noundef 13, i32 noundef 135) #11
  %197 = load ptr, ptr %19, align 8
  %198 = call i32 @regmap_write(ptr noundef %197, i32 noundef 13, i32 noundef 133) #11
  %199 = load ptr, ptr %19, align 8
  %200 = call i32 @regmap_write(ptr noundef %199, i32 noundef 19, i32 noundef 2) #11
  br label %349

201:                                              ; preds = %129, %129
  %202 = load ptr, ptr %19, align 8
  %203 = call i32 @regmap_write(ptr noundef %202, i32 noundef 274, i32 noundef 90) #11
  %204 = load ptr, ptr %19, align 8
  %205 = call i32 @regmap_write(ptr noundef %204, i32 noundef 258, i32 noundef 64) #11
  %206 = load ptr, ptr %19, align 8
  %207 = call i32 @regmap_write(ptr noundef %206, i32 noundef 259, i32 noundef 90) #11
  %208 = load ptr, ptr %19, align 8
  %209 = call i32 @regmap_write(ptr noundef %208, i32 noundef 455, i32 noundef 44) #11
  %210 = load ptr, ptr %19, align 8
  %211 = call i32 @regmap_write(ptr noundef %210, i32 noundef 260, i32 noundef 204) #11
  %212 = load ptr, ptr %19, align 8
  %213 = call i32 @regmap_write(ptr noundef %212, i32 noundef 261, i32 noundef 190) #11
  %214 = load ptr, ptr %19, align 8
  %215 = call i32 @regmap_write(ptr noundef %214, i32 noundef 456, i32 noundef 22) #11
  %216 = load ptr, ptr %19, align 8
  %217 = call i32 @regmap_write(ptr noundef %216, i32 noundef 262, i32 noundef 53) #11
  %218 = load ptr, ptr %19, align 8
  %219 = call i32 @regmap_write(ptr noundef %218, i32 noundef 457, i32 noundef 33) #11
  %220 = load ptr, ptr %19, align 8
  %221 = call i32 @regmap_write(ptr noundef %220, i32 noundef 458, i32 noundef 33) #11
  %222 = load ptr, ptr %19, align 8
  %223 = call i32 @regmap_write(ptr noundef %222, i32 noundef 459, i32 noundef 0) #11
  %224 = load ptr, ptr %19, align 8
  %225 = call i32 @regmap_write(ptr noundef %224, i32 noundef 263, i32 noundef 64) #11
  %226 = load ptr, ptr %19, align 8
  %227 = call i32 @regmap_write(ptr noundef %226, i32 noundef 461, i32 noundef 16) #11
  %228 = load ptr, ptr %19, align 8
  %229 = call i32 @regmap_write(ptr noundef %228, i32 noundef 462, i32 noundef 16) #11
  %230 = load ptr, ptr %19, align 8
  %231 = call i32 @regmap_write(ptr noundef %230, i32 noundef 264, i32 noundef 128) #11
  %232 = load ptr, ptr %19, align 8
  %233 = call i32 @regmap_write(ptr noundef %232, i32 noundef 265, i32 noundef 127) #11
  %234 = load ptr, ptr %19, align 8
  %235 = call i32 @regmap_write(ptr noundef %234, i32 noundef 266, i32 noundef 128) #11
  %236 = load ptr, ptr %19, align 8
  %237 = call i32 @regmap_write(ptr noundef %236, i32 noundef 267, i32 noundef 127) #11
  %238 = load ptr, ptr %19, align 8
  %239 = call i32 @regmap_write(ptr noundef %238, i32 noundef 14, i32 noundef 252) #11
  %240 = load ptr, ptr %19, align 8
  %241 = call i32 @regmap_write(ptr noundef %240, i32 noundef 14, i32 noundef 252) #11
  %242 = load ptr, ptr %19, align 8
  %243 = call i32 @regmap_bulk_write(ptr noundef %242, i32 noundef 17, ptr noundef nonnull @.str.20, i32 noundef 2) #11
  %244 = load ptr, ptr %19, align 8
  %245 = call i32 @regmap_write(ptr noundef %244, i32 noundef 485, i32 noundef 240) #11
  %246 = load ptr, ptr %19, align 8
  %247 = call i32 @regmap_write(ptr noundef %246, i32 noundef 473, i32 noundef 0) #11
  %248 = load ptr, ptr %19, align 8
  %249 = call i32 @regmap_write(ptr noundef %248, i32 noundef 475, i32 noundef 0) #11
  %250 = load ptr, ptr %19, align 8
  %251 = call i32 @regmap_write(ptr noundef %250, i32 noundef 477, i32 noundef 17) #11
  %252 = load ptr, ptr %19, align 8
  %253 = call i32 @regmap_write(ptr noundef %252, i32 noundef 478, i32 noundef 239) #11
  %254 = load ptr, ptr %19, align 8
  %255 = call i32 @regmap_write(ptr noundef %254, i32 noundef 472, i32 noundef 12) #11
  %256 = load ptr, ptr %19, align 8
  %257 = call i32 @regmap_write(ptr noundef %256, i32 noundef 486, i32 noundef 2) #11
  %258 = load ptr, ptr %19, align 8
  %259 = call i32 @regmap_write(ptr noundef %258, i32 noundef 471, i32 noundef 9) #11
  br label %349

260:                                              ; preds = %129, %129
  %261 = load ptr, ptr %19, align 8
  %262 = call i32 @regmap_write(ptr noundef %261, i32 noundef 274, i32 noundef 90) #11
  %263 = load ptr, ptr %19, align 8
  %264 = call i32 @regmap_write(ptr noundef %263, i32 noundef 258, i32 noundef 64) #11
  %265 = load ptr, ptr %19, align 8
  %266 = call i32 @regmap_write(ptr noundef %265, i32 noundef 277, i32 noundef 1) #11
  %267 = load ptr, ptr %19, align 8
  %268 = call i32 @regmap_write(ptr noundef %267, i32 noundef 259, i32 noundef 128) #11
  %269 = load ptr, ptr %19, align 8
  %270 = call i32 @regmap_write(ptr noundef %269, i32 noundef 455, i32 noundef 36) #11
  %271 = load ptr, ptr %19, align 8
  %272 = call i32 @regmap_write(ptr noundef %271, i32 noundef 260, i32 noundef 204) #11
  %273 = load ptr, ptr %19, align 8
  %274 = call i32 @regmap_write(ptr noundef %273, i32 noundef 261, i32 noundef 190) #11
  %275 = load ptr, ptr %19, align 8
  %276 = call i32 @regmap_write(ptr noundef %275, i32 noundef 456, i32 noundef 20) #11
  %277 = load ptr, ptr %19, align 8
  %278 = call i32 @regmap_write(ptr noundef %277, i32 noundef 262, i32 noundef 53) #11
  %279 = load ptr, ptr %19, align 8
  %280 = call i32 @regmap_write(ptr noundef %279, i32 noundef 457, i32 noundef 33) #11
  %281 = load ptr, ptr %19, align 8
  %282 = call i32 @regmap_write(ptr noundef %281, i32 noundef 458, i32 noundef 33) #11
  %283 = load ptr, ptr %19, align 8
  %284 = call i32 @regmap_write(ptr noundef %283, i32 noundef 459, i32 noundef 0) #11
  %285 = load ptr, ptr %19, align 8
  %286 = call i32 @regmap_write(ptr noundef %285, i32 noundef 263, i32 noundef 64) #11
  %287 = load ptr, ptr %19, align 8
  %288 = call i32 @regmap_write(ptr noundef %287, i32 noundef 461, i32 noundef 16) #11
  %289 = load ptr, ptr %19, align 8
  %290 = call i32 @regmap_write(ptr noundef %289, i32 noundef 462, i32 noundef 16) #11
  %291 = load ptr, ptr %19, align 8
  %292 = call i32 @regmap_write(ptr noundef %291, i32 noundef 264, i32 noundef 128) #11
  %293 = load ptr, ptr %19, align 8
  %294 = call i32 @regmap_write(ptr noundef %293, i32 noundef 265, i32 noundef 127) #11
  %295 = load ptr, ptr %19, align 8
  %296 = call i32 @regmap_write(ptr noundef %295, i32 noundef 266, i32 noundef 128) #11
  %297 = load ptr, ptr %19, align 8
  %298 = call i32 @regmap_write(ptr noundef %297, i32 noundef 267, i32 noundef 127) #11
  %299 = load ptr, ptr %19, align 8
  %300 = call i32 @regmap_write(ptr noundef %299, i32 noundef 14, i32 noundef 252) #11
  %301 = load ptr, ptr %19, align 8
  %302 = call i32 @regmap_write(ptr noundef %301, i32 noundef 14, i32 noundef 252) #11
  %303 = load ptr, ptr %19, align 8
  %304 = call i32 @regmap_write(ptr noundef %303, i32 noundef 17, i32 noundef 244) #11
  br label %349

305:                                              ; preds = %129
  %306 = load ptr, ptr %19, align 8
  %307 = call i32 @regmap_write(ptr noundef %306, i32 noundef 274, i32 noundef 57) #11
  %308 = load ptr, ptr %19, align 8
  %309 = call i32 @regmap_write(ptr noundef %308, i32 noundef 258, i32 noundef 64) #11
  %310 = load ptr, ptr %19, align 8
  %311 = call i32 @regmap_write(ptr noundef %310, i32 noundef 259, i32 noundef 90) #11
  %312 = load ptr, ptr %19, align 8
  %313 = call i32 @regmap_write(ptr noundef %312, i32 noundef 455, i32 noundef 44) #11
  %314 = load ptr, ptr %19, align 8
  %315 = call i32 @regmap_write(ptr noundef %314, i32 noundef 260, i32 noundef 204) #11
  %316 = load ptr, ptr %19, align 8
  %317 = call i32 @regmap_write(ptr noundef %316, i32 noundef 261, i32 noundef 190) #11
  %318 = load ptr, ptr %19, align 8
  %319 = call i32 @regmap_write(ptr noundef %318, i32 noundef 456, i32 noundef 22) #11
  %320 = load ptr, ptr %19, align 8
  %321 = call i32 @regmap_write(ptr noundef %320, i32 noundef 262, i32 noundef 53) #11
  %322 = load ptr, ptr %19, align 8
  %323 = call i32 @regmap_write(ptr noundef %322, i32 noundef 457, i32 noundef 33) #11
  %324 = load ptr, ptr %19, align 8
  %325 = call i32 @regmap_write(ptr noundef %324, i32 noundef 458, i32 noundef 33) #11
  %326 = load ptr, ptr %19, align 8
  %327 = call i32 @regmap_write(ptr noundef %326, i32 noundef 459, i32 noundef 0) #11
  %328 = load ptr, ptr %19, align 8
  %329 = call i32 @regmap_write(ptr noundef %328, i32 noundef 263, i32 noundef 64) #11
  %330 = load ptr, ptr %19, align 8
  %331 = call i32 @regmap_write(ptr noundef %330, i32 noundef 461, i32 noundef 16) #11
  %332 = load ptr, ptr %19, align 8
  %333 = call i32 @regmap_write(ptr noundef %332, i32 noundef 462, i32 noundef 16) #11
  %334 = load ptr, ptr %19, align 8
  %335 = call i32 @regmap_write(ptr noundef %334, i32 noundef 264, i32 noundef 128) #11
  %336 = load ptr, ptr %19, align 8
  %337 = call i32 @regmap_write(ptr noundef %336, i32 noundef 265, i32 noundef 127) #11
  %338 = load ptr, ptr %19, align 8
  %339 = call i32 @regmap_write(ptr noundef %338, i32 noundef 266, i32 noundef 156) #11
  %340 = load ptr, ptr %19, align 8
  %341 = call i32 @regmap_write(ptr noundef %340, i32 noundef 267, i32 noundef 127) #11
  %342 = load ptr, ptr %19, align 8
  %343 = call i32 @regmap_write(ptr noundef %342, i32 noundef 14, i32 noundef 252) #11
  %344 = load ptr, ptr %19, align 8
  %345 = call i32 @regmap_write(ptr noundef %344, i32 noundef 14, i32 noundef 252) #11
  %346 = load ptr, ptr %19, align 8
  %347 = call i32 @regmap_bulk_write(ptr noundef %346, i32 noundef 17, ptr noundef nonnull @.str.21, i32 noundef 2) #11
  br label %349

348:                                              ; preds = %129
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %6, ptr noundef nonnull @.str.7) #12
  br label %349

349:                                              ; preds = %348, %305, %260, %201, %132
  %350 = load ptr, ptr %19, align 8
  %351 = call i32 @regmap_update_bits_base(ptr noundef %350, i32 noundef 257, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %356

353:                                              ; preds = %349
  %354 = load ptr, ptr %19, align 8
  %355 = call i32 @regmap_update_bits_base(ptr noundef %354, i32 noundef 257, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %356

356:                                              ; preds = %353, %349, %125, %121, %117, %113, %109, %105, %91, %74, %69, %62, %48, %31, %27, %23, %18, %14, %1
  %357 = phi i32 [ 0, %1 ], [ 0, %14 ], [ %21, %18 ], [ %25, %23 ], [ %32, %31 ], [ %60, %48 ], [ %67, %62 ], [ %72, %69 ], [ %76, %74 ], [ %103, %91 ], [ %107, %105 ], [ %111, %109 ], [ %115, %113 ], [ %119, %117 ], [ %123, %121 ], [ %127, %125 ], [ %351, %349 ], [ %355, %353 ], [ -22, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret i32 %357
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rtl2832_sdr_alloc_urbs(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %0, i32 0, i32 12
  %3 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %0, i32 0, i32 19
  br label %4

4:                                                ; preds = %18, %1
  %5 = phi i32 [ 0, %1 ], [ %39, %18 ]
  %6 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %7 = getelementptr %struct.rtl2832_sdr_dev, ptr %0, i32 0, i32 14, i32 %5
  store ptr %6, ptr %7, align 4
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %4
  %10 = icmp eq i32 %5, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %11, %9
  %12 = phi i32 [ %15, %11 ], [ 0, %9 ]
  %13 = getelementptr %struct.rtl2832_sdr_dev, ptr %0, i32 0, i32 14, i32 %12
  %14 = load ptr, ptr %13, align 4
  tail call void @usb_free_urb(ptr noundef %14) #11
  store ptr null, ptr %13, align 4
  %15 = add nuw nsw i32 %12, 1
  %16 = icmp eq i32 %15, %5
  br i1 %16, label %17, label %11

17:                                               ; preds = %11, %9
  store i32 0, ptr %3, align 8
  br label %41

18:                                               ; preds = %4
  %19 = load ptr, ptr %2, align 8
  %20 = load i32, ptr %19, align 8
  %21 = shl i32 %20, 8
  %22 = or i32 %21, -1069514624
  %23 = getelementptr %struct.rtl2832_sdr_dev, ptr %0, i32 0, i32 17, i32 %5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 8
  store ptr %19, ptr %25, align 4
  %26 = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 10
  store i32 %22, ptr %26, align 4
  %27 = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 14
  store ptr %24, ptr %27, align 4
  %28 = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 19
  store i32 65536, ptr %28, align 4
  %29 = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 28
  store ptr @rtl2832_sdr_urb_complete, ptr %29, align 4
  %30 = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 27
  store ptr %0, ptr %30, align 4
  %31 = load ptr, ptr %7, align 4
  %32 = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 13
  store i32 4, ptr %32, align 4
  %33 = getelementptr %struct.rtl2832_sdr_dev, ptr %0, i32 0, i32 18, i32 %5
  %34 = load i32, ptr %33, align 4
  %35 = load ptr, ptr %7, align 4
  %36 = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 15
  store i32 %34, ptr %36, align 4
  %37 = load i32, ptr %3, align 8
  %38 = add i32 %37, 1
  store i32 %38, ptr %3, align 8
  %39 = add nuw nsw i32 %5, 1
  %40 = icmp eq i32 %39, 10
  br i1 %40, label %41, label %4

41:                                               ; preds = %18, %17
  %42 = phi i32 [ -12, %17 ], [ 0, %18 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rtl2832_sdr_submit_urbs(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %0, i32 0, i32 19
  %5 = load i32, ptr %4, align 8
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %33

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %0, i32 0, i32 20
  br label %9

9:                                                ; preds = %27, %7
  %10 = phi i32 [ 0, %7 ], [ %30, %27 ]
  %11 = getelementptr %struct.rtl2832_sdr_dev, ptr %0, i32 0, i32 14, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @usb_submit_urb(ptr noundef %12, i32 noundef 3264) #11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.26, i32 noundef %10) #12
  %17 = load i32, ptr %8, align 4
  %18 = add i32 %17, -1
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %20, label %26

20:                                               ; preds = %20, %15
  %21 = phi i32 [ %24, %20 ], [ %18, %15 ]
  %22 = getelementptr %struct.rtl2832_sdr_dev, ptr %0, i32 0, i32 14, i32 %21
  %23 = load ptr, ptr %22, align 4
  tail call void @usb_kill_urb(ptr noundef %23) #11
  %24 = add nsw i32 %21, -1
  %25 = icmp eq i32 %21, 0
  br i1 %25, label %26, label %20

26:                                               ; preds = %20, %15
  store i32 0, ptr %8, align 4
  br label %33

27:                                               ; preds = %9
  %28 = load i32, ptr %8, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %8, align 4
  %30 = add nuw nsw i32 %10, 1
  %31 = load i32, ptr %4, align 8
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %9, label %33

33:                                               ; preds = %27, %26, %1
  %34 = phi i32 [ %13, %26 ], [ 0, %1 ], [ 0, %27 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl2832_sdr_urb_complete(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %8 [
    i32 0, label %14
    i32 -110, label %14
    i32 -104, label %116
    i32 -2, label %116
    i32 -108, label %116
  ]

8:                                                ; preds = %1
  %9 = tail call i32 @___ratelimit(ptr noundef nonnull @rtl2832_sdr_urb_complete._rs, ptr noundef nonnull @__func__.rtl2832_sdr_urb_complete) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %13 = load i32, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.22, i32 noundef %13) #12
  br label %14

14:                                               ; preds = %11, %8, %1, %1
  %15 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 20
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %114, label %18, !prof !12

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %3, i32 0, i32 8
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #11
  %21 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %3, i32 0, i32 7
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %20) #11
  br label %32

25:                                               ; preds = %18
  %26 = getelementptr i8, ptr %22, i32 -640
  %27 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %22, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %28, ptr %30, align 4
  store volatile ptr %29, ptr %28, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %22, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %27, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %20) #11
  %31 = icmp eq ptr %26, null
  br i1 %31, label %32, label %41, !prof !12

32:                                               ; preds = %25, %24
  %33 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %3, i32 0, i32 13
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr %33, align 4
  %36 = tail call i32 @___ratelimit(ptr noundef nonnull @rtl2832_sdr_urb_complete._rs.23, ptr noundef nonnull @__func__.rtl2832_sdr_urb_complete) #11
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %114, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %40 = load i32, ptr %33, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %39, ptr noundef nonnull @.str.24, i32 noundef %40) #12
  br label %114

41:                                               ; preds = %25
  %42 = tail call ptr @vb2_plane_vaddr(ptr noundef nonnull %26, i32 noundef 0) #11
  %43 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 14
  %44 = load ptr, ptr %43, align 4
  %45 = load i32, ptr %15, align 4
  %46 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %3, i32 0, i32 23
  %47 = load i32, ptr %46, align 8
  switch i32 %47, label %65 [
    i32 942691651, label %50
    i32 909202755, label %48
  ]

48:                                               ; preds = %41
  %49 = icmp eq i32 %45, 0
  br i1 %49, label %63, label %51

50:                                               ; preds = %41
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %42, ptr align 1 %44, i32 %45, i1 false) #11
  br label %65

51:                                               ; preds = %51, %48
  %52 = phi i32 [ %61, %51 ], [ 0, %48 ]
  %53 = phi ptr [ %60, %51 ], [ %42, %48 ]
  %54 = getelementptr i8, ptr %44, i32 %52
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 8
  %58 = or i32 %57, %56
  %59 = trunc i32 %58 to i16
  %60 = getelementptr i16, ptr %53, i32 1
  store i16 %59, ptr %53, align 2
  %61 = add nuw i32 %52, 1
  %62 = icmp eq i32 %61, %45
  br i1 %62, label %63, label %51

63:                                               ; preds = %51, %48
  %64 = shl i32 %45, 1
  br label %65

65:                                               ; preds = %63, %50, %41
  %66 = phi i32 [ %45, %50 ], [ %64, %63 ], [ 0, %41 ]
  %67 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %3, i32 0, i32 31
  %68 = load i32, ptr %67, align 4
  %69 = load volatile i32, ptr @jiffies, align 64
  %70 = sub i32 %68, %69
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %75, label %72, !prof !12

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %3, i32 0, i32 29
  %74 = load i32, ptr %73, align 4
  br label %85

75:                                               ; preds = %65
  %76 = load volatile i32, ptr @jiffies, align 64
  %77 = sub i32 1000, %68
  %78 = add i32 %77, %76
  %79 = tail call i32 @jiffies_to_msecs(i32 noundef %78) #11
  %80 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %3, i32 0, i32 29
  %81 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %3, i32 0, i32 30
  %82 = load volatile i32, ptr @jiffies, align 64
  %83 = add i32 %82, 1000
  store i32 %83, ptr %67, align 4
  %84 = load i32, ptr %80, align 4
  store i32 %84, ptr %81, align 8
  br label %85

85:                                               ; preds = %75, %72
  %86 = phi i32 [ %74, %72 ], [ %84, %75 ]
  %87 = lshr i32 %45, 1
  %88 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %3, i32 0, i32 29
  %89 = add i32 %86, %87
  store i32 %89, ptr %88, align 4
  %90 = getelementptr i8, ptr %22, i32 -624
  %91 = load i32, ptr %90, align 8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %107, label %93

93:                                               ; preds = %85
  %94 = getelementptr i8, ptr %22, i32 -552
  %95 = load i32, ptr %94, align 8
  %96 = icmp ult i32 %95, %66
  %97 = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  %98 = xor i1 %97, true
  %99 = select i1 %96, i1 %98, i1 false
  br i1 %99, label %100, label %101, !prof !12

100:                                              ; preds = %93
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 1163, i32 noundef 9, ptr noundef null) #11
  br label %101

101:                                              ; preds = %100, %93
  br i1 %96, label %102, label %104

102:                                              ; preds = %101
  %103 = load i32, ptr %94, align 8
  br label %104

104:                                              ; preds = %102, %101
  %105 = phi i32 [ %103, %102 ], [ %66, %101 ]
  %106 = getelementptr i8, ptr %22, i32 -556
  store i32 %105, ptr %106, align 4
  br label %107

107:                                              ; preds = %104, %85
  %108 = tail call i64 @ktime_get() #11
  %109 = getelementptr i8, ptr %22, i32 -616
  store i64 %108, ptr %109, align 8
  %110 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %3, i32 0, i32 9
  %111 = load i32, ptr %110, align 4
  %112 = add i32 %111, 1
  store i32 %112, ptr %110, align 4
  %113 = getelementptr i8, ptr %22, i32 -272
  store i32 %111, ptr %113, align 8
  tail call void @vb2_buffer_done(ptr noundef nonnull %26, i32 noundef 5) #11
  br label %114

114:                                              ; preds = %107, %38, %32, %14
  %115 = tail call i32 @usb_submit_urb(ptr noundef %0, i32 noundef 2592) #11
  br label %116

116:                                              ; preds = %114, %1, %1, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2832_sdr_querycap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #11
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @strscpy(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 16) #11
  %8 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 1
  %9 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %6, i32 0, i32 3, i32 12
  %10 = tail call i32 @strscpy(ptr noundef %8, ptr noundef %9, i32 noundef 32) #11
  %11 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %6, i32 0, i32 12
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 2
  %14 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 12
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.usb_bus, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 1
  %19 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %13, i32 noundef 32, ptr noundef nonnull @.str.30, ptr noundef %17, ptr noundef %18) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2832_sdr_enum_fmt_sdr_cap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #11
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %2, align 4
  %8 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %6, i32 0, i32 25
  %9 = load i32, ptr %8, align 8
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = getelementptr [2 x %struct.rtl2832_sdr_format], ptr @formats, i32 0, i32 %7, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 4
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi i32 [ 0, %11 ], [ -22, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2832_sdr_g_fmt_sdr_cap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #11
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %6, i32 0, i32 23
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %6, i32 0, i32 24
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2832_sdr_s_fmt_sdr_cap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #11
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %6, i32 0, i32 6, i32 21
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %37

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %6, i32 0, i32 25
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %27, %14
  %18 = phi i32 [ 0, %14 ], [ %28, %27 ]
  %19 = getelementptr [2 x %struct.rtl2832_sdr_format], ptr @formats, i32 0, i32 %18, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, %16
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %6, i32 0, i32 23
  store i32 %16, ptr %23, align 8
  %24 = getelementptr [2 x %struct.rtl2832_sdr_format], ptr @formats, i32 0, i32 %18, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %6, i32 0, i32 24
  store i32 %25, ptr %26, align 4
  br label %34

27:                                               ; preds = %17
  %28 = add nuw i32 %18, 1
  %29 = icmp eq i32 %28, %12
  br i1 %29, label %30, label %17

30:                                               ; preds = %27, %10
  %31 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %6, i32 0, i32 23
  store i32 942691651, ptr %31, align 8
  %32 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %6, i32 0, i32 24
  store i32 65536, ptr %32, align 4
  %33 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  store i32 942691651, ptr %33, align 4
  br label %34

34:                                               ; preds = %30, %22
  %35 = phi i32 [ 65536, %30 ], [ %25, %22 ]
  %36 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 %35, ptr %36, align 4
  br label %37

37:                                               ; preds = %34, %3
  %38 = phi i32 [ -16, %3 ], [ 0, %34 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2832_sdr_try_fmt_sdr_cap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #11
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %6, i32 0, i32 25
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  br label %13

13:                                               ; preds = %21, %10
  %14 = phi i32 [ 0, %10 ], [ %22, %21 ]
  %15 = getelementptr [2 x %struct.rtl2832_sdr_format], ptr @formats, i32 0, i32 %14, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, %12
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = getelementptr [2 x %struct.rtl2832_sdr_format], ptr @formats, i32 0, i32 %14, i32 2
  %20 = load i32, ptr %19, align 4
  br label %26

21:                                               ; preds = %13
  %22 = add nuw i32 %14, 1
  %23 = icmp eq i32 %22, %8
  br i1 %23, label %24, label %13

24:                                               ; preds = %21, %3
  %25 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  store i32 942691651, ptr %25, align 4
  br label %26

26:                                               ; preds = %24, %18
  %27 = phi i32 [ 65536, %24 ], [ %20, %18 ]
  %28 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2832_sdr_g_tuner(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #11
  %5 = load i32, ptr %2, align 4
  switch i32 %5, label %49 [
    i32 0, label %6
    i32 1, label %13
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 1
  %8 = tail call i32 @strscpy(ptr noundef %7, ptr noundef nonnull @.str.31, i32 noundef 32) #11
  %9 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 2
  store i32 4, ptr %9, align 4
  %10 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 3
  store i32 5120, ptr %10, align 4
  %11 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 4
  store i32 300000, ptr %11, align 4
  %12 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 5
  store i32 3200000, ptr %12, align 4
  br label %49

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %15, i32 0, i32 5
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %42, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.v4l2_subdev, ptr %17, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %42, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %21, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %42, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %25, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %42, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %32, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = tail call i32 %36(ptr noundef nonnull %17, ptr noundef %2) #11
  br label %49

40:                                               ; preds = %34, %31
  %41 = tail call i32 %29(ptr noundef nonnull %17, ptr noundef %2) #11
  br label %49

42:                                               ; preds = %27, %23, %19, %13
  %43 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 1
  %44 = tail call i32 @strscpy(ptr noundef %43, ptr noundef nonnull @.str.32, i32 noundef 32) #11
  %45 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 2
  store i32 5, ptr %45, align 4
  %46 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 3
  store i32 5120, ptr %46, align 4
  %47 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 4
  store i32 50000000, ptr %47, align 4
  %48 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 5
  store i32 2000000000, ptr %48, align 4
  br label %49

49:                                               ; preds = %42, %40, %38, %6, %3
  %50 = phi i32 [ 0, %6 ], [ 0, %42 ], [ %39, %38 ], [ %41, %40 ], [ -22, %3 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2832_sdr_s_tuner(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #11
  %5 = load i32, ptr %2, align 4
  switch i32 %5, label %35 [
    i32 0, label %38
    i32 1, label %6
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.v4l2_subdev, ptr %10, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %14, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %18, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %25, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = tail call i32 %29(ptr noundef nonnull %10, ptr noundef %2) #11
  br label %38

33:                                               ; preds = %27, %24
  %34 = tail call i32 %22(ptr noundef nonnull %10, ptr noundef %2) #11
  br label %38

35:                                               ; preds = %20, %16, %12, %6, %3
  %36 = icmp eq i32 %5, 1
  %37 = select i1 %36, i32 0, i32 -22
  br label %38

38:                                               ; preds = %35, %33, %31, %3
  %39 = phi i32 [ %5, %3 ], [ %32, %31 ], [ %34, %33 ], [ %37, %35 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2832_sdr_g_frequency(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #11
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %2, align 4
  switch i32 %7, label %59 [
    i32 0, label %8
    i32 1, label %13
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %6, i32 0, i32 21
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.v4l2_frequency, ptr %2, i32 0, i32 2
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.v4l2_frequency, ptr %2, i32 0, i32 1
  store i32 4, ptr %12, align 4
  br label %59

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %6, i32 0, i32 5
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %54, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.v4l2_subdev, ptr %15, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %54, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %19, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %54, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %23, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %54, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.v4l2_frequency, ptr %2, i32 0, i32 1
  store i32 5, ptr %30, align 4
  %31 = load ptr, ptr %14, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %59, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.v4l2_subdev, ptr %31, i32 0, i32 6
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %59, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %37, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %59, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %44, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = tail call i32 %48(ptr noundef nonnull %31, ptr noundef %2) #11
  br label %59

52:                                               ; preds = %46, %43
  %53 = tail call i32 %41(ptr noundef nonnull %31, ptr noundef %2) #11
  br label %59

54:                                               ; preds = %25, %21, %17, %13
  %55 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %6, i32 0, i32 22
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.v4l2_frequency, ptr %2, i32 0, i32 2
  store i32 %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.v4l2_frequency, ptr %2, i32 0, i32 1
  store i32 5, ptr %58, align 4
  br label %59

59:                                               ; preds = %54, %52, %50, %39, %33, %29, %8, %3
  %60 = phi i32 [ 0, %8 ], [ 0, %54 ], [ %51, %50 ], [ %53, %52 ], [ -19, %29 ], [ -515, %39 ], [ -515, %33 ], [ -22, %3 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2832_sdr_s_frequency(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #11
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %2, align 4
  switch i32 %7, label %60 [
    i32 0, label %8
    i32 1, label %27
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.v4l2_frequency, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %12, label %60

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.v4l2_frequency, ptr %2, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %14, 600000
  %16 = icmp ult i32 %14, 3000000
  %17 = select i1 %16, i32 1, i32 2
  %18 = select i1 %15, i32 0, i32 %17
  %19 = getelementptr [3 x %struct.v4l2_frequency_band], ptr @bands_adc, i32 0, i32 %18, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @llvm.umax.i32(i32 %14, i32 %20)
  %22 = getelementptr [3 x %struct.v4l2_frequency_band], ptr @bands_adc, i32 0, i32 %18, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @llvm.umin.i32(i32 %21, i32 %23)
  %25 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %6, i32 0, i32 21
  store i32 %24, ptr %25, align 8
  %26 = tail call fastcc i32 @rtl2832_sdr_set_adc(ptr noundef %6)
  br label %60

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %6, i32 0, i32 5
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %54, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.v4l2_subdev, ptr %29, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %54, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %33, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %54, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %37, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %54, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %44, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = tail call i32 %48(ptr noundef nonnull %29, ptr noundef %2) #11
  br label %60

52:                                               ; preds = %46, %43
  %53 = tail call i32 %41(ptr noundef nonnull %29, ptr noundef %2) #11
  br label %60

54:                                               ; preds = %39, %35, %31, %27
  %55 = getelementptr inbounds %struct.v4l2_frequency, ptr %2, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = tail call i32 @llvm.umax.i32(i32 %56, i32 50000000)
  %58 = tail call i32 @llvm.umin.i32(i32 %57, i32 2000000000)
  %59 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %6, i32 0, i32 22
  store i32 %58, ptr %59, align 4
  tail call fastcc void @rtl2832_sdr_set_tuner_freq(ptr noundef %6)
  br label %60

60:                                               ; preds = %54, %52, %50, %12, %8, %3
  %61 = phi i32 [ %26, %12 ], [ 0, %54 ], [ %51, %50 ], [ %53, %52 ], [ -22, %8 ], [ -22, %3 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2832_sdr_enum_freq_bands(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #11
  %5 = load i32, ptr %2, align 4
  switch i32 %5, label %46 [
    i32 0, label %6
    i32 1, label %12
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %2, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 2
  br i1 %9, label %46, label %10

10:                                               ; preds = %6
  %11 = getelementptr [3 x %struct.v4l2_frequency_band], ptr @bands_adc, i32 0, i32 %8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(64) %2, ptr noundef align 4 dereferenceable(64) %11, i32 64, i1 false)
  br label %46

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %14, i32 0, i32 5
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %41, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.v4l2_subdev, ptr %16, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %41, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %20, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %41, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %24, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %41, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %31, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = tail call i32 %35(ptr noundef nonnull %16, ptr noundef %2) #11
  br label %46

39:                                               ; preds = %33, %30
  %40 = tail call i32 %28(ptr noundef nonnull %16, ptr noundef %2) #11
  br label %46

41:                                               ; preds = %26, %22, %18, %12
  %42 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %2, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) @bands_fm, i32 64, i1 false)
  br label %46

46:                                               ; preds = %45, %41, %39, %37, %10, %6, %3
  %47 = phi i32 [ -22, %6 ], [ -22, %41 ], [ 0, %10 ], [ 0, %45 ], [ %38, %37 ], [ %40, %39 ], [ -22, %3 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind readnone }

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
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148760630, i64 2148760910, i64 2148761244, i64 2148761578}
!12 = !{!"branch_weights", i32 1, i32 2000}
