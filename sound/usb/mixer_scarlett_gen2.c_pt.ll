; ModuleID = '/llk/IR/sound/usb/mixer_scarlett_gen2.c_pt.bc'
source_filename = "../sound/usb/mixer_scarlett_gen2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scarlett2_device_info = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], [10 x ptr], [6 x [2 x i32]], [3 x [10 x %struct.scarlett2_mux_entry]] }
%struct.scarlett2_mux_entry = type { i8, i8, i8 }
%struct.lock_class_key = type {}
%struct.scarlett2_config = type { i8, i8, i8 }
%struct.scarlett2_port = type { i16, ptr, i32, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.76, i32 }
%union.anon.76 = type { ptr }
%struct.anon.74 = type { i16, i16 }
%struct.anon.73 = type { i32, i32 }
%struct.scarlett2_usb_volume_status = type <{ [2 x i8], i8, [10 x i16], [10 x i16], [10 x i8], [10 x i8], [6 x i8], i16 }>
%struct.usb_mixer_interface = type { ptr, ptr, %struct.list_head, i32, ptr, ptr, i32, ptr, ptr, i32, %struct.wait_queue_head, ptr, ptr, [6 x i8], ptr, i8, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.snd_usb_audio = type { i32, ptr, ptr, [16 x ptr], i32, i16, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i8, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.list_head, i32, i8, i8, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.scarlett2_data = type { ptr, %struct.mutex, %struct.mutex, %struct.delayed_work, ptr, i8, i8, i16, i8, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], [10 x i8], [10 x i8], [2 x i8], [8 x i8], [2 x i8], [8 x i8], [2 x i8], i8, i8, i8, i8, [12 x i8], i8, ptr, ptr, [10 x ptr], [10 x ptr], [10 x ptr], [2 x ptr], [2 x ptr], [8 x ptr], [8 x ptr], [2 x ptr], [77 x ptr], ptr, ptr, ptr, [77 x i8], [300 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_host_config = type { %struct.usb_config_descriptor, ptr, [16 x ptr], [32 x ptr], [32 x ptr], ptr, i32 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_mixer_elem_info = type { %struct.usb_mixer_elem_list, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], i8, i8, ptr }
%struct.usb_mixer_elem_list = type { ptr, ptr, ptr, i32, i8, ptr, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.72, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.72 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.scarlett2_usb_packet = type { i32, i16, i16, i32, i32, [0 x i8] }
%struct.anon.75 = type { i16, i16 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.67, [128 x i8] }
%union.anon.67 = type { %union.anon.69 }
%union.anon.69 = type { [64 x i64] }
%struct.anon.77 = type { i32, i32, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.63, [64 x i8] }
%union.anon.63 = type { %struct.anon.66, [40 x i8] }
%struct.anon.66 = type { i32, i32, [64 x i8], i64, i32 }
%struct.anon.78 = type { i16, i16, [77 x i32] }
%struct.anon.79 = type { i16, [25 x i16] }
%struct.anon.80 = type { i16, i16, i32 }

@.str = private unnamed_addr constant [156 x i8] c"Focusrite Scarlett Gen 2/3 Mixer Driver disabled; use options snd_usb_audio vid=0x%04x pid=0x%04x device_setup=1 to enable and report any issues to g@b4.vu\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"Focusrite Scarlett Gen 2/3 Mixer Driver enabled pid=0x%04x\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Error initialising Scarlett Mixer Driver: %d\00", align 1
@s6i6_gen2_info = internal constant %struct.scarlett2_device_info { i32 305496579, i8 0, i8 1, i8 0, i8 0, i8 0, i8 2, i8 0, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, [10 x i8] zeroinitializer, [10 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [6 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 4, i32 4], [2 x i32] [i32 2, i32 2], [2 x i32] zeroinitializer, [2 x i32] [i32 10, i32 18], [2 x i32] [i32 6, i32 6]], [3 x [10 x %struct.scarlett2_mux_entry]] [[10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 6 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 4 }, %struct.scarlett2_mux_entry { i8 2, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 18 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 8 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer], [10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 6 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 4 }, %struct.scarlett2_mux_entry { i8 2, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 18 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 8 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer], [10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 6 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 4 }, %struct.scarlett2_mux_entry { i8 2, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 18 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 8 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer]] }, align 4
@s18i8_gen2_info = internal constant %struct.scarlett2_device_info { i32 305496580, i8 0, i8 1, i8 0, i8 0, i8 0, i8 2, i8 0, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, [10 x i8] zeroinitializer, [10 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr null, ptr null, ptr null, ptr null], [6 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 8, i32 6], [2 x i32] [i32 2, i32 2], [2 x i32] [i32 8, i32 0], [2 x i32] [i32 10, i32 18], [2 x i32] [i32 8, i32 18]], [3 x [10 x %struct.scarlett2_mux_entry]] [[10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 18 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 6 }, %struct.scarlett2_mux_entry { i8 2, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 18 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 8 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer], [10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 14 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 6 }, %struct.scarlett2_mux_entry { i8 2, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 18 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 8 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer], [10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 10 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 6 }, %struct.scarlett2_mux_entry { i8 2, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 18 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 4 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer]] }, align 4
@s18i20_gen2_info = internal constant %struct.scarlett2_device_info { i32 305496577, i8 0, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, [10 x i8] zeroinitializer, [10 x ptr] [ptr @.str.7, ptr @.str.8, ptr null, ptr null, ptr null, ptr null, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], [6 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 8, i32 10], [2 x i32] [i32 2, i32 2], [2 x i32] [i32 8, i32 8], [2 x i32] [i32 10, i32 18], [2 x i32] [i32 20, i32 18]], [3 x [10 x %struct.scarlett2_mux_entry]] [[10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 18 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 10 }, %struct.scarlett2_mux_entry { i8 2, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 3, i8 0, i8 8 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 18 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 8 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer], [10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 14 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 10 }, %struct.scarlett2_mux_entry { i8 2, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 3, i8 0, i8 4 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 18 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 8 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer], [10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 10 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 10 }, %struct.scarlett2_mux_entry { i8 2, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 18 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 6 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer]] }, align 4
@solo_gen3_info = internal constant %struct.scarlett2_device_info { i32 305496593, i8 1, i8 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 1, i8 1, i8 1, i8 1, i8 0, [10 x i8] zeroinitializer, [10 x ptr] zeroinitializer, [6 x [2 x i32]] zeroinitializer, [3 x [10 x %struct.scarlett2_mux_entry]] zeroinitializer }, align 4
@s2i2_gen3_info = internal constant %struct.scarlett2_device_info { i32 305496592, i8 1, i8 0, i8 0, i8 0, i8 0, i8 2, i8 0, i8 0, i8 2, i8 1, i8 2, i8 2, i8 0, [10 x i8] zeroinitializer, [10 x ptr] zeroinitializer, [6 x [2 x i32]] zeroinitializer, [3 x [10 x %struct.scarlett2_mux_entry]] zeroinitializer }, align 4
@s4i4_gen3_info = internal constant %struct.scarlett2_device_info { i32 305496594, i8 1, i8 1, i8 0, i8 0, i8 0, i8 2, i8 0, i8 2, i8 2, i8 1, i8 2, i8 0, i8 0, [10 x i8] zeroinitializer, [10 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [6 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 4, i32 4], [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] [i32 6, i32 8], [2 x i32] [i32 4, i32 6]], [3 x [10 x %struct.scarlett2_mux_entry]] [[10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 6 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 4 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 8 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 16 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer], [10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 6 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 4 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 8 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 16 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer], [10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 6 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 4 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 8 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 16 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer]] }, align 4
@s8i6_gen3_info = internal constant %struct.scarlett2_device_info { i32 305496595, i8 1, i8 1, i8 0, i8 0, i8 0, i8 2, i8 0, i8 2, i8 2, i8 1, i8 2, i8 0, i8 0, [10 x i8] zeroinitializer, [10 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [6 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 6, i32 4], [2 x i32] [i32 2, i32 2], [2 x i32] zeroinitializer, [2 x i32] [i32 8, i32 8], [2 x i32] [i32 6, i32 10]], [3 x [10 x %struct.scarlett2_mux_entry]] [[10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 8 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 4 }, %struct.scarlett2_mux_entry { i8 2, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 5, i8 8, i8 2 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 8 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 18 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer], [10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 8 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 4 }, %struct.scarlett2_mux_entry { i8 2, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 5, i8 8, i8 2 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 8 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 18 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer], [10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 8 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 4 }, %struct.scarlett2_mux_entry { i8 2, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 5, i8 8, i8 2 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 8 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 18 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer]] }, align 4
@s18i8_gen3_info = internal constant %struct.scarlett2_device_info { i32 305496596, i8 1, i8 1, i8 1, i8 1, i8 0, i8 2, i8 0, i8 4, i8 4, i8 2, i8 2, i8 0, i8 1, [10 x i8] c"\00\01\06\07\02\03\04\05\00\00", [10 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr null, ptr null], [6 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 8, i32 8], [2 x i32] [i32 2, i32 2], [2 x i32] [i32 8, i32 0], [2 x i32] [i32 10, i32 20], [2 x i32] [i32 8, i32 20]], [3 x [10 x %struct.scarlett2_mux_entry]] [[10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 10 }, %struct.scarlett2_mux_entry { i8 5, i8 12, i8 8 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 1, i8 6, i8 2 }, %struct.scarlett2_mux_entry { i8 1, i8 2, i8 4 }, %struct.scarlett2_mux_entry { i8 2, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 5, i8 10, i8 2 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 20 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 10 }, %struct.scarlett2_mux_entry zeroinitializer], [10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 10 }, %struct.scarlett2_mux_entry { i8 5, i8 12, i8 4 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 1, i8 6, i8 2 }, %struct.scarlett2_mux_entry { i8 1, i8 2, i8 4 }, %struct.scarlett2_mux_entry { i8 2, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 5, i8 10, i8 2 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 20 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 10 }, %struct.scarlett2_mux_entry zeroinitializer], [10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 10 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 1, i8 6, i8 2 }, %struct.scarlett2_mux_entry { i8 1, i8 2, i8 4 }, %struct.scarlett2_mux_entry { i8 2, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 20 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 10 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer]] }, align 4
@s18i20_gen3_info = internal constant %struct.scarlett2_device_info { i32 305496597, i8 1, i8 1, i8 1, i8 1, i8 1, i8 2, i8 0, i8 8, i8 8, i8 2, i8 4, i8 0, i8 0, [10 x i8] zeroinitializer, [10 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr null, ptr null, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], [6 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 9, i32 10], [2 x i32] [i32 2, i32 2], [2 x i32] [i32 8, i32 8], [2 x i32] [i32 12, i32 25], [2 x i32] [i32 20, i32 20]], [3 x [10 x %struct.scarlett2_mux_entry]] [[10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 8 }, %struct.scarlett2_mux_entry { i8 5, i8 10, i8 10 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 10 }, %struct.scarlett2_mux_entry { i8 2, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 3, i8 0, i8 8 }, %struct.scarlett2_mux_entry { i8 5, i8 8, i8 2 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 25 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 12 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer], [10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 8 }, %struct.scarlett2_mux_entry { i8 5, i8 10, i8 8 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 10 }, %struct.scarlett2_mux_entry { i8 2, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 3, i8 0, i8 8 }, %struct.scarlett2_mux_entry { i8 5, i8 8, i8 2 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 25 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 10 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer], [10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 10 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 10 }, %struct.scarlett2_mux_entry { i8 2, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 24 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer]] }, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"Headphones 1 L\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Headphones 1 R\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Headphones 2 L\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Headphones 2 R\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Monitor L\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Monitor R\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Headphones L\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Headphones R\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Alt Monitor L\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"Alt Monitor R\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Monitor 1 L\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"Monitor 1 R\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"Monitor 2 L\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Monitor 2 R\00", align 1
@scarlett2_init_private.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"&private->usb_mutex\00", align 1
@scarlett2_init_private.__key.18 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"&private->data_mutex\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.20 = private unnamed_addr constant [51 x i8] c"Scarlett Gen 2/3 USB request result cmd %x was %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [64 x i8] c"Scarlett Gen 2/3 USB response result cmd %x was %d expected %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [93 x i8] c"Scarlett Gen 2/3 USB invalid response; cmd tx/rx %d/%d seq %d/%d size %d/%d error %d pad %d\0A\00", align 1
@scarlett2_config_items = internal unnamed_addr constant [2 x [14 x %struct.scarlett2_config]] [[14 x %struct.scarlett2_config] [%struct.scarlett2_config zeroinitializer, %struct.scarlett2_config zeroinitializer, %struct.scarlett2_config zeroinitializer, %struct.scarlett2_config zeroinitializer, %struct.scarlett2_config { i8 8, i8 1, i8 7 }, %struct.scarlett2_config zeroinitializer, %struct.scarlett2_config { i8 4, i8 8, i8 6 }, %struct.scarlett2_config { i8 9, i8 1, i8 8 }, %struct.scarlett2_config { i8 6, i8 8, i8 3 }, %struct.scarlett2_config { i8 5, i8 8, i8 6 }, %struct.scarlett2_config { i8 7, i8 8, i8 4 }, %struct.scarlett2_config zeroinitializer, %struct.scarlett2_config zeroinitializer, %struct.scarlett2_config zeroinitializer], [14 x %struct.scarlett2_config] [%struct.scarlett2_config { i8 49, i8 8, i8 2 }, %struct.scarlett2_config { i8 52, i8 16, i8 1 }, %struct.scarlett2_config { i8 92, i8 8, i8 1 }, %struct.scarlett2_config { i8 102, i8 8, i8 3 }, %struct.scarlett2_config { i8 124, i8 8, i8 7 }, %struct.scarlett2_config { i8 -124, i8 8, i8 8 }, %struct.scarlett2_config { i8 -99, i8 8, i8 6 }, %struct.scarlett2_config { i8 -116, i8 8, i8 8 }, %struct.scarlett2_config { i8 -100, i8 1, i8 8 }, %struct.scarlett2_config { i8 -98, i8 8, i8 6 }, %struct.scarlett2_config zeroinitializer, %struct.scarlett2_config { i8 -97, i8 1, i8 10 }, %struct.scarlett2_config { i8 -96, i8 1, i8 10 }, %struct.scarlett2_config { i8 -80, i8 16, i8 10 }]], align 1
@scarlett2_mixer_values = internal unnamed_addr constant [173 x i16] [i16 0, i16 0, i16 0, i16 0, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 3, i16 3, i16 3, i16 3, i16 3, i16 4, i16 4, i16 4, i16 4, i16 5, i16 5, i16 5, i16 6, i16 6, i16 6, i16 7, i16 7, i16 8, i16 8, i16 9, i16 9, i16 10, i16 10, i16 11, i16 12, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 23, i16 24, i16 25, i16 27, i16 29, i16 30, i16 32, i16 34, i16 36, i16 38, i16 41, i16 43, i16 46, i16 48, i16 51, i16 54, i16 57, i16 61, i16 65, i16 68, i16 73, i16 77, i16 81, i16 86, i16 91, i16 97, i16 103, i16 109, i16 115, i16 122, i16 129, i16 137, i16 145, i16 154, i16 163, i16 173, i16 183, i16 194, i16 205, i16 217, i16 230, i16 244, i16 259, i16 274, i16 290, i16 307, i16 326, i16 345, i16 365, i16 387, i16 410, i16 434, i16 460, i16 487, i16 516, i16 547, i16 579, i16 614, i16 650, i16 689, i16 730, i16 773, i16 819, i16 867, i16 919, i16 973, i16 1031, i16 1092, i16 1157, i16 1225, i16 1298, i16 1375, i16 1456, i16 1543, i16 1634, i16 1731, i16 1833, i16 1942, i16 2057, i16 2179, i16 2308, i16 2445, i16 2590, i16 2744, i16 2906, i16 3078, i16 3261, i16 3454, i16 3659, i16 3876, i16 4105, i16 4349, i16 4606, i16 4879, i16 5168, i16 5475, i16 5799, i16 6143, i16 6507, i16 6892, i16 7301, i16 7733, i16 8192, i16 8677, i16 9191, i16 9736, i16 10313, i16 10924, i16 11571, i16 12257, i16 12983, i16 13752, i16 14567, i16 15430, i16 16345], align 2
@.str.23 = private unnamed_addr constant [50 x i8] c"BUG: scarlett2_mux_id_to_num(%06x, OUT): %d >= %d\00", align 1
@.str.24 = private unnamed_addr constant [49 x i8] c"BUG: scarlett2_mux_id_to_num(%06x, IN): %d >= %d\00", align 1
@scarlett2_ports = internal unnamed_addr constant [6 x %struct.scarlett2_port] [%struct.scarlett2_port { i16 0, ptr @.str.25, i32 0, ptr null }, %struct.scarlett2_port { i16 128, ptr @.str.26, i32 1, ptr @.str.27 }, %struct.scarlett2_port { i16 384, ptr @.str.28, i32 1, ptr @.str.29 }, %struct.scarlett2_port { i16 512, ptr @.str.30, i32 1, ptr @.str.31 }, %struct.scarlett2_port { i16 768, ptr @.str.32, i32 65, ptr @.str.33 }, %struct.scarlett2_port { i16 1536, ptr @.str.34, i32 1, ptr @.str.35 }], align 4
@.str.25 = private unnamed_addr constant [4 x i8] c"Off\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"Analogue %d\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"Analogue Output %02d Playback\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"S/PDIF %d\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"S/PDIF Output %d Playback\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"ADAT %d\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"ADAT Output %d Playback\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"Mix %c\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"Mixer Input %02d Capture\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"PCM %d\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"PCM %02d Capture\00", align 1
@scarlett2_msd_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @scarlett2_msd_ctl_get, ptr @scarlett2_msd_ctl_put, %union.anon.76 zeroinitializer, i32 0 }, align 4
@.str.36 = private unnamed_addr constant [16 x i8] c"MSD Mode Switch\00", align 1
@.str.37 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.38 = private unnamed_addr constant [26 x i8] c"Master HW Playback Volume\00", align 1
@scarlett2_master_volume_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 17, i32 0, ptr @scarlett2_volume_ctl_info, ptr @scarlett2_master_volume_ctl_get, ptr null, %union.anon.76 { ptr @db_scale_scarlett2_gain }, i32 0 }, align 4
@.str.39 = private unnamed_addr constant [31 x i8] c"Line %02d (%s) Playback Volume\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"Line %02d Playback Volume\00", align 1
@scarlett2_line_out_volume_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 19, i32 0, ptr @scarlett2_volume_ctl_info, ptr @scarlett2_volume_ctl_get, ptr @scarlett2_volume_ctl_put, %union.anon.76 { ptr @db_scale_scarlett2_gain }, i32 0 }, align 4
@.str.41 = private unnamed_addr constant [31 x i8] c"Line %02d Mute Playback Switch\00", align 1
@scarlett2_mute_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @scarlett2_mute_ctl_get, ptr @scarlett2_mute_ctl_put, %union.anon.76 zeroinitializer, i32 0 }, align 4
@.str.42 = private unnamed_addr constant [43 x i8] c"Line Out %02d Volume Control Playback Enum\00", align 1
@scarlett2_sw_hw_enum_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @scarlett2_sw_hw_enum_ctl_info, ptr @scarlett2_sw_hw_enum_ctl_get, ptr @scarlett2_sw_hw_enum_ctl_put, %union.anon.76 zeroinitializer, i32 0 }, align 4
@scarlett2_dim_mute_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @scarlett2_dim_mute_ctl_get, ptr @scarlett2_dim_mute_ctl_put, %union.anon.76 zeroinitializer, i32 0 }, align 4
@db_scale_scarlett2_gain = internal constant [4 x i32] [i32 4, i32 8, i32 -12700, i32 0], align 4
@scarlett2_sw_hw_enum_ctl_info.values = internal constant [2 x ptr] [ptr @.str.43, ptr @.str.44], align 4
@.str.43 = private unnamed_addr constant [3 x i8] c"SW\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"HW\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"Mute Playback Switch\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"Dim Playback Switch\00", align 1
@.str.47 = private unnamed_addr constant [25 x i8] c"Line In %d %s Capture %s\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"Line In %d-%d %s Capture %s\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"Level\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"Enum\00", align 1
@scarlett2_level_enum_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @scarlett2_level_enum_ctl_info, ptr @scarlett2_level_enum_ctl_get, ptr @scarlett2_level_enum_ctl_put, %union.anon.76 zeroinitializer, i32 0 }, align 4
@.str.51 = private unnamed_addr constant [4 x i8] c"Pad\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"Switch\00", align 1
@scarlett2_pad_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @scarlett2_pad_ctl_get, ptr @scarlett2_pad_ctl_put, %union.anon.76 zeroinitializer, i32 0 }, align 4
@.str.53 = private unnamed_addr constant [4 x i8] c"Air\00", align 1
@scarlett2_air_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @scarlett2_air_ctl_get, ptr @scarlett2_air_ctl_put, %union.anon.76 zeroinitializer, i32 0 }, align 4
@.str.54 = private unnamed_addr constant [14 x i8] c"Phantom Power\00", align 1
@scarlett2_phantom_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @scarlett2_phantom_ctl_get, ptr @scarlett2_phantom_ctl_put, %union.anon.76 zeroinitializer, i32 0 }, align 4
@scarlett2_phantom_persistence_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @scarlett2_phantom_persistence_ctl_get, ptr @scarlett2_phantom_persistence_ctl_put, %union.anon.76 zeroinitializer, i32 0 }, align 4
@.str.55 = private unnamed_addr constant [41 x i8] c"Phantom Power Persistence Capture Switch\00", align 1
@scarlett2_level_enum_ctl_info.values = internal constant [2 x ptr] [ptr @.str.56, ptr @.str.57], align 4
@.str.56 = private unnamed_addr constant [5 x i8] c"Line\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"Inst\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c" Enum\00", align 1
@scarlett2_mux_src_enum_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @scarlett2_mux_src_enum_ctl_info, ptr @scarlett2_mux_src_enum_ctl_get, ptr @scarlett2_mux_src_enum_ctl_put, %union.anon.76 zeroinitializer, i32 0 }, align 4
@.str.59 = private unnamed_addr constant [34 x i8] c"Mix %c Input %02d Playback Volume\00", align 1
@scarlett2_mixer_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 19, i32 0, ptr @scarlett2_mixer_ctl_info, ptr @scarlett2_mixer_ctl_get, ptr @scarlett2_mixer_ctl_put, %union.anon.76 { ptr @db_scale_scarlett2_mixer }, i32 6 }, align 4
@db_scale_scarlett2_mixer = internal constant [4 x i32] [i32 4, i32 8, i32 -8000, i32 600], align 4
@scarlett2_meter_ctl = internal constant %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.37, i32 0, i32 5, i32 0, ptr @scarlett2_meter_ctl_info, ptr @scarlett2_meter_ctl_get, ptr null, %union.anon.76 zeroinitializer, i32 0 }, align 4
@.str.60 = private unnamed_addr constant [12 x i8] c"Level Meter\00", align 1
@scarlett2_sync_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 1, i32 0, ptr @scarlett2_sync_ctl_info, ptr @scarlett2_sync_ctl_get, ptr null, %union.anon.76 zeroinitializer, i32 0 }, align 4
@.str.61 = private unnamed_addr constant [12 x i8] c"Sync Status\00", align 1
@scarlett2_sync_ctl_info.texts = internal global [2 x ptr] [ptr @.str.62, ptr @.str.63], align 4
@.str.62 = private unnamed_addr constant [9 x i8] c"Unlocked\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"Locked\00", align 1
@.str.64 = private unnamed_addr constant [31 x i8] c"Direct Monitor Playback Switch\00", align 1
@.str.65 = private unnamed_addr constant [29 x i8] c"Direct Monitor Playback Enum\00", align 1
@scarlett2_direct_monitor_ctl = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @scarlett2_direct_monitor_ctl_get, ptr @scarlett2_direct_monitor_ctl_put, %union.anon.76 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @scarlett2_direct_monitor_stereo_enum_ctl_info, ptr @scarlett2_direct_monitor_ctl_get, ptr @scarlett2_direct_monitor_ctl_put, %union.anon.76 zeroinitializer, i32 0 }], align 4
@scarlett2_direct_monitor_stereo_enum_ctl_info.values = internal constant [3 x ptr] [ptr @.str.25, ptr @.str.66, ptr @.str.67], align 4
@.str.66 = private unnamed_addr constant [5 x i8] c"Mono\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"Stereo\00", align 1
@scarlett2_speaker_switch_enum_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @scarlett2_speaker_switch_enum_ctl_info, ptr @scarlett2_speaker_switch_enum_ctl_get, ptr @scarlett2_speaker_switch_enum_ctl_put, %union.anon.76 zeroinitializer, i32 0 }, align 4
@.str.68 = private unnamed_addr constant [32 x i8] c"Speaker Switching Playback Enum\00", align 1
@scarlett2_speaker_switch_enum_ctl_info.values = internal constant [3 x ptr] [ptr @.str.25, ptr @.str.69, ptr @.str.70], align 4
@.str.69 = private unnamed_addr constant [5 x i8] c"Main\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"Alt\00", align 1
@scarlett2_talkback_enum_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @scarlett2_talkback_enum_ctl_info, ptr @scarlett2_talkback_enum_ctl_get, ptr @scarlett2_talkback_enum_ctl_put, %union.anon.76 zeroinitializer, i32 0 }, align 4
@.str.71 = private unnamed_addr constant [23 x i8] c"Talkback Playback Enum\00", align 1
@.str.72 = private unnamed_addr constant [32 x i8] c"Talkback Mix %c Playback Switch\00", align 1
@scarlett2_talkback_map_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @scarlett2_talkback_map_ctl_get, ptr @scarlett2_talkback_map_ctl_put, %union.anon.76 zeroinitializer, i32 0 }, align 4
@scarlett2_talkback_enum_ctl_info.values = internal constant [3 x ptr] [ptr @.str.73, ptr @.str.25, ptr @.str.74], align 4
@.str.73 = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"On\00", align 1
@.str.75 = private unnamed_addr constant [31 x i8] c"%s: mixer urb already in use!\0A\00", align 1
@__func__.scarlett2_init_notify = private unnamed_addr constant [22 x i8] c"scarlett2_init_notify\00", align 1
@switch.table.snd_scarlett_gen2_init = private unnamed_addr constant [21 x ptr] [ptr @s18i20_gen2_info, ptr @s6i6_gen2_info, ptr @s6i6_gen2_info, ptr @s18i8_gen2_info, ptr @s6i6_gen2_info, ptr @s6i6_gen2_info, ptr @s6i6_gen2_info, ptr @s6i6_gen2_info, ptr @s6i6_gen2_info, ptr @s6i6_gen2_info, ptr @s6i6_gen2_info, ptr @s6i6_gen2_info, ptr @s6i6_gen2_info, ptr @s6i6_gen2_info, ptr @s6i6_gen2_info, ptr @s2i2_gen3_info, ptr @solo_gen3_info, ptr @s4i4_gen3_info, ptr @s8i6_gen3_info, ptr @s18i8_gen3_info, ptr @s18i20_gen3_info], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_scarlett_gen2_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [44 x i8], align 1
  %3 = alloca [44 x i8], align 1
  %4 = alloca %struct.anon.74, align 4
  %5 = alloca [25 x i16], align 2
  %6 = alloca %struct.anon.73, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.anon.73, align 8
  %9 = alloca %struct.anon.73, align 8
  %10 = alloca i8, align 1
  %11 = alloca %struct.scarlett2_usb_volume_status, align 1
  %12 = alloca [24 x i8], align 1
  %13 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %617, label %16

16:                                               ; preds = %1
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr inbounds %struct.snd_usb_audio, ptr %17, i32 0, i32 24
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.snd_usb_audio, ptr %17, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.snd_usb_audio, ptr %17, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  br i1 %21, label %27, label %30

27:                                               ; preds = %16
  %28 = lshr i32 %26, 16
  %29 = and i32 %26, 65535
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str, i32 noundef %28, i32 noundef %29) #13
  br label %617

30:                                               ; preds = %16
  %31 = and i32 %26, 65535
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.1, i32 noundef %31) #13
  %32 = load ptr, ptr %0, align 4
  %33 = getelementptr inbounds %struct.snd_usb_audio, ptr %32, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, -305496577
  %36 = icmp ult i32 %35, 21
  br i1 %36, label %37, label %611

37:                                               ; preds = %30
  %38 = lshr i32 2064397, %35
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %611, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds [21 x ptr], ptr @switch.table.snd_scarlett_gen2_init, i32 0, i32 %35
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %45 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 3520, i32 noundef 1104) #14
  %46 = icmp eq ptr %45, null
  br i1 %46, label %611, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.scarlett2_data, ptr %45, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %48, ptr noundef nonnull @.str.17, ptr noundef nonnull @scarlett2_init_private.__key) #15
  %49 = getelementptr inbounds %struct.scarlett2_data, ptr %45, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %49, ptr noundef nonnull @.str.19, ptr noundef nonnull @scarlett2_init_private.__key.18) #15
  %50 = getelementptr inbounds %struct.scarlett2_data, ptr %45, i32 0, i32 3
  store i32 -32, ptr %50, align 4
  %51 = getelementptr inbounds %struct.scarlett2_data, ptr %45, i32 0, i32 3, i32 0, i32 1
  store volatile ptr %51, ptr %51, align 8
  %52 = getelementptr inbounds %struct.scarlett2_data, ptr %45, i32 0, i32 3, i32 0, i32 1, i32 1
  store ptr %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.scarlett2_data, ptr %45, i32 0, i32 3, i32 0, i32 2
  store ptr @scarlett2_config_save_work, ptr %53, align 8
  %54 = getelementptr inbounds %struct.scarlett2_data, ptr %45, i32 0, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %54, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #15
  %55 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 16
  store ptr %45, ptr %55, align 4
  %56 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 17
  store ptr @scarlett2_private_free, ptr %56, align 4
  %57 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 18
  store ptr @scarlett2_private_suspend, ptr %57, align 4
  %58 = getelementptr inbounds %struct.scarlett2_data, ptr %45, i32 0, i32 4
  store ptr %43, ptr %58, align 8
  %59 = getelementptr inbounds %struct.scarlett2_device_info, ptr %43, i32 0, i32 16
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr %struct.scarlett2_device_info, ptr %43, i32 0, i32 16, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr %struct.scarlett2_device_info, ptr %43, i32 0, i32 16, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, %60
  %66 = getelementptr %struct.scarlett2_device_info, ptr %43, i32 0, i32 16, i32 1, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = add i32 %67, %62
  %69 = getelementptr %struct.scarlett2_device_info, ptr %43, i32 0, i32 16, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %65, %70
  %72 = getelementptr %struct.scarlett2_device_info, ptr %43, i32 0, i32 16, i32 2, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %68, %73
  %75 = getelementptr %struct.scarlett2_device_info, ptr %43, i32 0, i32 16, i32 3
  %76 = load i32, ptr %75, align 4
  %77 = add i32 %71, %76
  %78 = getelementptr %struct.scarlett2_device_info, ptr %43, i32 0, i32 16, i32 3, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %74, %79
  %81 = getelementptr %struct.scarlett2_device_info, ptr %43, i32 0, i32 16, i32 4
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %77, %82
  %84 = getelementptr %struct.scarlett2_device_info, ptr %43, i32 0, i32 16, i32 4, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = add i32 %80, %85
  %87 = getelementptr %struct.scarlett2_device_info, ptr %43, i32 0, i32 16, i32 5
  %88 = load i32, ptr %87, align 4
  %89 = add i32 %83, %88
  %90 = getelementptr %struct.scarlett2_device_info, ptr %43, i32 0, i32 16, i32 5, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = add i32 %86, %91
  %93 = getelementptr inbounds %struct.scarlett2_data, ptr %45, i32 0, i32 9
  store i32 %89, ptr %93, align 4
  %94 = getelementptr inbounds %struct.scarlett2_data, ptr %45, i32 0, i32 10
  store i32 %92, ptr %94, align 8
  %95 = getelementptr inbounds %struct.scarlett2_data, ptr %45, i32 0, i32 11
  store i16 0, ptr %95, align 4
  store ptr %0, ptr %45, align 8
  %96 = load ptr, ptr %0, align 4
  %97 = getelementptr inbounds %struct.snd_usb_audio, ptr %96, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.usb_device, ptr %98, i32 0, i32 20
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.usb_config_descriptor, ptr %100, i32 0, i32 3
  %102 = load i8, ptr %101, align 4
  %103 = zext i8 %102 to i32
  %104 = icmp eq i8 %102, 0
  br i1 %104, label %611, label %108

105:                                              ; preds = %108
  %106 = add nuw nsw i32 %109, 1
  %107 = icmp eq i32 %106, %103
  br i1 %107, label %611, label %108

108:                                              ; preds = %105, %47
  %109 = phi i32 [ %106, %105 ], [ 0, %47 ]
  %110 = getelementptr %struct.usb_host_config, ptr %100, i32 0, i32 3, i32 %109
  %111 = load ptr, ptr %110, align 4
  %112 = load ptr, ptr %111, align 8
  %113 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %112, i32 0, i32 5
  %114 = load i8, ptr %113, align 1
  %115 = icmp eq i8 %114, -1
  br i1 %115, label %116, label %105

116:                                              ; preds = %108
  %117 = getelementptr inbounds %struct.usb_host_interface, ptr %112, i32 0, i32 3
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %112, i32 0, i32 2
  %120 = load i8, ptr %119, align 1
  %121 = getelementptr inbounds %struct.scarlett2_data, ptr %45, i32 0, i32 5
  store i8 %120, ptr %121, align 4
  %122 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %118, i32 0, i32 2
  %123 = load i8, ptr %122, align 1
  %124 = and i8 %123, 15
  %125 = getelementptr inbounds %struct.scarlett2_data, ptr %45, i32 0, i32 6
  store i8 %124, ptr %125, align 1
  %126 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %118, i32 0, i32 4
  %127 = load i16, ptr %126, align 1
  %128 = getelementptr inbounds %struct.scarlett2_data, ptr %45, i32 0, i32 7
  store i16 %127, ptr %128, align 2
  %129 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %118, i32 0, i32 5
  %130 = load i8, ptr %129, align 1
  %131 = getelementptr inbounds %struct.scarlett2_data, ptr %45, i32 0, i32 8
  store i8 %130, ptr %131, align 8
  %132 = load ptr, ptr %97, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(24) %12, i8 0, i32 24, i1 false) #15, !annotation !8
  %133 = load i32, ptr %132, align 8
  %134 = shl i32 %133, 8
  %135 = or i32 %134, -2147483648
  %136 = tail call i32 @usb_pipe_type_check(ptr noundef %132, i32 noundef %135) #15
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %116
  %139 = load i8, ptr %121, align 4
  %140 = load i32, ptr %132, align 8
  %141 = shl i32 %140, 8
  %142 = or i32 %141, -2147483520
  %143 = zext i8 %139 to i16
  %144 = call i32 @snd_usb_ctl_msg(ptr noundef %132, i32 noundef %142, i8 noundef zeroext 0, i8 noundef zeroext -95, i16 noundef zeroext 0, i16 noundef zeroext %143, ptr noundef nonnull %12, i16 noundef zeroext 24) #15
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %138
  store i16 1, ptr %95, align 4
  %147 = call fastcc i32 @scarlett2_usb(ptr noundef %0, i32 noundef 0, ptr noundef null, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #15
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %146, %138, %116
  %150 = phi i32 [ %147, %146 ], [ %144, %138 ], [ -22, %116 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #15
  br label %611

151:                                              ; preds = %146
  store i16 1, ptr %95, align 4
  %152 = call fastcc i32 @scarlett2_usb(ptr noundef %0, i32 noundef 2, ptr noundef null, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 84) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #15
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %611, label %154

154:                                              ; preds = %151
  %155 = load ptr, ptr %55, align 4
  %156 = getelementptr inbounds %struct.scarlett2_data, ptr %155, i32 0, i32 4
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr %struct.scarlett2_device_info, ptr %157, i32 0, i32 16, i32 1, i32 1
  %159 = load i32, ptr %158, align 4
  %160 = getelementptr %struct.scarlett2_device_info, ptr %157, i32 0, i32 16, i32 4
  %161 = load i32, ptr %160, align 4
  call void @llvm.lifetime.start.p0(i64 71, ptr nonnull %11) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(71) %11, i8 0, i32 71, i1 false) #15, !annotation !8
  %162 = getelementptr inbounds %struct.scarlett2_device_info, ptr %157, i32 0, i32 1
  %163 = load i8, ptr %162, align 4
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %199, label %165

165:                                              ; preds = %154
  %166 = getelementptr inbounds %struct.scarlett2_data, ptr %155, i32 0, i32 33
  %167 = getelementptr inbounds %struct.scarlett2_device_info, ptr %157, i32 0, i32 2
  %168 = load i8, ptr %167, align 1
  %169 = zext i8 %168 to i32
  %170 = getelementptr [2 x [14 x %struct.scarlett2_config]], ptr @scarlett2_config_items, i32 0, i32 %169, i32 6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #15
  store i8 0, ptr %10, align 1, !annotation !8
  %171 = icmp ult i8 %168, 2
  br i1 %171, label %182, label %172

172:                                              ; preds = %165
  %173 = load i8, ptr %170, align 1
  %174 = zext i8 %173 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  store i32 %174, ptr %8, align 8
  %175 = getelementptr inbounds %struct.anon.73, ptr %8, i32 0, i32 1
  store i32 1, ptr %175, align 4
  %176 = call fastcc i32 @scarlett2_usb(ptr noundef %0, i32 noundef 8388608, ptr noundef nonnull %8, i16 noundef zeroext 8, ptr noundef nonnull %10, i16 noundef zeroext 1) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %172
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #15
  br label %326

179:                                              ; preds = %172
  %180 = load i8, ptr %10, align 1
  %181 = and i8 %180, 1
  store i8 %181, ptr %166, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #15
  br label %196

182:                                              ; preds = %165
  %183 = getelementptr [2 x [14 x %struct.scarlett2_config]], ptr @scarlett2_config_items, i32 0, i32 %169, i32 6, i32 1
  %184 = load i8, ptr %183, align 1
  %185 = lshr i8 %184, 3
  %186 = zext i8 %185 to i32
  %187 = load i8, ptr %170, align 1
  %188 = zext i8 %187 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #15
  store i32 %188, ptr %9, align 8
  %189 = getelementptr inbounds %struct.anon.73, ptr %9, i32 0, i32 1
  store i32 %186, ptr %189, align 4
  %190 = zext i8 %185 to i16
  %191 = call fastcc i32 @scarlett2_usb(ptr noundef %0, i32 noundef 8388608, ptr noundef nonnull %9, i16 noundef zeroext 8, ptr noundef %166, i16 noundef zeroext %190) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  %192 = call i32 @llvm.smin.i32(i32 %191, i32 0) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #15
  %193 = icmp slt i32 %191, 0
  br i1 %193, label %329, label %194

194:                                              ; preds = %182
  %195 = load i8, ptr %166, align 2
  br label %196

196:                                              ; preds = %194, %179
  %197 = phi i8 [ %195, %194 ], [ %181, %179 ]
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %199, label %328

199:                                              ; preds = %196, %154
  %200 = call fastcc i32 @scarlett2_update_input_other(ptr noundef %0) #15
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %326, label %202

202:                                              ; preds = %199
  %203 = call fastcc i32 @scarlett2_update_monitor_other(ptr noundef %0) #15
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %326, label %205

205:                                              ; preds = %202
  %206 = getelementptr inbounds %struct.scarlett2_device_info, ptr %157, i32 0, i32 2
  %207 = load i8, ptr %206, align 1
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %328, label %209

209:                                              ; preds = %205
  %210 = load ptr, ptr %55, align 4
  %211 = getelementptr inbounds %struct.scarlett2_data, ptr %210, i32 0, i32 12
  store i8 0, ptr %211, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  store i32 0, ptr %7, align 4, !annotation !8
  %212 = call fastcc i32 @scarlett2_usb(ptr noundef %0, i32 noundef 24580, ptr noundef null, i16 noundef zeroext 0, ptr noundef nonnull %7, i16 noundef zeroext 4) #15
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %209
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  br label %326

215:                                              ; preds = %209
  %216 = getelementptr inbounds %struct.scarlett2_data, ptr %210, i32 0, i32 18
  %217 = load i32, ptr %7, align 4
  %218 = icmp ne i32 %217, 0
  %219 = zext i1 %218 to i8
  store i8 %219, ptr %216, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  store i32 49, ptr %6, align 8
  %220 = getelementptr inbounds %struct.anon.73, ptr %6, i32 0, i32 1
  store i32 71, ptr %220, align 4
  %221 = call fastcc i32 @scarlett2_usb(ptr noundef %0, i32 noundef 8388608, ptr noundef nonnull %6, i16 noundef zeroext 8, ptr noundef nonnull %11, i16 noundef zeroext 71) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %326, label %223

223:                                              ; preds = %215
  %224 = getelementptr inbounds %struct.scarlett2_device_info, ptr %157, i32 0, i32 3
  %225 = load i8, ptr %224, align 2
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %237, label %227

227:                                              ; preds = %223
  %228 = load i8, ptr %11, align 1
  %229 = icmp ne i8 %228, 0
  %230 = zext i1 %229 to i8
  %231 = getelementptr %struct.scarlett2_data, ptr %155, i32 0, i32 25, i32 0
  store i8 %230, ptr %231, align 1
  %232 = getelementptr inbounds [2 x i8], ptr %11, i32 0, i32 1
  %233 = load i8, ptr %232, align 1
  %234 = icmp ne i8 %233, 0
  %235 = zext i1 %234 to i8
  %236 = getelementptr %struct.scarlett2_data, ptr %155, i32 0, i32 25, i32 1
  store i8 %235, ptr %236, align 1
  br label %237

237:                                              ; preds = %227, %223
  %238 = getelementptr inbounds %struct.scarlett2_usb_volume_status, ptr %11, i32 0, i32 7
  %239 = load i16, ptr %238, align 1
  %240 = call i16 @llvm.smax.i16(i16 %239, i16 -127) #15
  %241 = call i16 @llvm.smin.i16(i16 %240, i16 0) #15
  %242 = trunc i16 %241 to i8
  %243 = add nsw i8 %242, 127
  %244 = getelementptr inbounds %struct.scarlett2_data, ptr %155, i32 0, i32 19
  store i8 %243, ptr %244, align 1
  %245 = icmp sgt i32 %159, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %237
  %247 = getelementptr inbounds %struct.scarlett2_data, ptr %155, i32 0, i32 25
  br label %252

248:                                              ; preds = %266, %237
  %249 = icmp sgt i32 %161, 0
  br i1 %249, label %250, label %324

250:                                              ; preds = %248
  %251 = getelementptr inbounds %struct.anon.74, ptr %4, i32 0, i32 1
  br label %281

252:                                              ; preds = %266, %246
  %253 = phi i32 [ 0, %246 ], [ %279, %266 ]
  %254 = load i8, ptr %224, align 2
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %252
  %257 = getelementptr %struct.scarlett2_data, ptr %155, i32 0, i32 21, i32 %253
  store i8 0, ptr %257, align 1
  br label %264

258:                                              ; preds = %252
  %259 = getelementptr %struct.scarlett2_usb_volume_status, ptr %11, i32 0, i32 5, i32 %253
  %260 = load i8, ptr %259, align 1
  %261 = icmp ne i8 %260, 0
  %262 = zext i1 %261 to i8
  %263 = getelementptr %struct.scarlett2_data, ptr %155, i32 0, i32 21, i32 %253
  store i8 %262, ptr %263, align 1
  br i1 %261, label %266, label %264

264:                                              ; preds = %258, %256
  %265 = getelementptr %struct.scarlett2_usb_volume_status, ptr %11, i32 0, i32 2, i32 %253
  br label %266

266:                                              ; preds = %264, %258
  %267 = phi ptr [ %265, %264 ], [ %238, %258 ]
  %268 = phi i1 [ true, %264 ], [ false, %258 ]
  %269 = load i16, ptr %267, align 1
  %270 = call i16 @llvm.smax.i16(i16 %269, i16 -127) #15
  %271 = call i16 @llvm.smin.i16(i16 %270, i16 0) #15
  %272 = trunc i16 %271 to i8
  %273 = add nsw i8 %272, 127
  %274 = getelementptr %struct.scarlett2_data, ptr %155, i32 0, i32 20, i32 %253
  store i8 %273, ptr %274, align 1
  %275 = getelementptr %struct.scarlett2_usb_volume_status, ptr %11, i32 0, i32 4, i32 %253
  %276 = select i1 %268, ptr %275, ptr %247
  %277 = load i8, ptr %276, align 1
  %278 = getelementptr %struct.scarlett2_data, ptr %155, i32 0, i32 22, i32 %253
  store i8 %277, ptr %278, align 1
  %279 = add nuw nsw i32 %253, 1
  %280 = icmp eq i32 %279, %159
  br i1 %280, label %248, label %252

281:                                              ; preds = %321, %250
  %282 = phi i32 [ 0, %250 ], [ %322, %321 ]
  %283 = load ptr, ptr %55, align 4
  %284 = getelementptr inbounds %struct.scarlett2_data, ptr %283, i32 0, i32 4
  %285 = load ptr, ptr %284, align 4
  %286 = getelementptr %struct.scarlett2_device_info, ptr %285, i32 0, i32 16, i32 4, i32 1
  %287 = load i32, ptr %286, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(50) %5, i8 0, i32 50, i1 false) #15, !annotation !8
  %288 = trunc i32 %282 to i16
  store i16 %288, ptr %4, align 4
  %289 = trunc i32 %287 to i16
  store i16 %289, ptr %251, align 2
  %290 = shl i16 %289, 1
  %291 = call fastcc i32 @scarlett2_usb(ptr noundef %0, i32 noundef 8193, ptr noundef nonnull %4, i16 noundef zeroext 4, ptr noundef nonnull %5, i16 noundef zeroext %290) #15
  %292 = icmp slt i32 %291, 0
  br i1 %292, label %320, label %293

293:                                              ; preds = %281
  %294 = icmp sgt i32 %287, 0
  br i1 %294, label %295, label %321

295:                                              ; preds = %293
  %296 = mul i32 %287, %282
  br label %297

297:                                              ; preds = %314, %295
  %298 = phi i32 [ %318, %314 ], [ %296, %295 ]
  %299 = phi i32 [ %317, %314 ], [ 0, %295 ]
  %300 = getelementptr [25 x i16], ptr %5, i32 0, i32 %299
  %301 = load i16, ptr %300, align 2
  br label %302

302:                                              ; preds = %307, %297
  %303 = phi i32 [ 0, %297 ], [ %308, %307 ]
  %304 = getelementptr [173 x i16], ptr @scarlett2_mixer_values, i32 0, i32 %303
  %305 = load i16, ptr %304, align 2
  %306 = icmp ult i16 %305, %301
  br i1 %306, label %307, label %310

307:                                              ; preds = %302
  %308 = add nuw nsw i32 %303, 1
  %309 = icmp eq i32 %308, 173
  br i1 %309, label %313, label %302

310:                                              ; preds = %302
  %311 = icmp eq i32 %303, 173
  %312 = trunc i32 %303 to i8
  br i1 %311, label %313, label %314

313:                                              ; preds = %310, %307
  br label %314

314:                                              ; preds = %313, %310
  %315 = phi i8 [ -84, %313 ], [ %312, %310 ]
  %316 = getelementptr %struct.scarlett2_data, ptr %283, i32 0, i32 49, i32 %298
  store i8 %315, ptr %316, align 1
  %317 = add nuw nsw i32 %299, 1
  %318 = add i32 %298, 1
  %319 = icmp eq i32 %317, %287
  br i1 %319, label %321, label %297

320:                                              ; preds = %281
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  br label %326

321:                                              ; preds = %314, %293
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  %322 = add nuw nsw i32 %282, 1
  %323 = icmp eq i32 %322, %161
  br i1 %323, label %324, label %281

324:                                              ; preds = %321, %248
  %325 = call fastcc i32 @scarlett2_usb_get_mux(ptr noundef %0) #15
  br label %329

326:                                              ; preds = %320, %215, %214, %202, %199, %178
  %327 = phi i32 [ %212, %214 ], [ %176, %178 ], [ %291, %320 ], [ %221, %215 ], [ %203, %202 ], [ %200, %199 ]
  call void @llvm.lifetime.end.p0(i64 71, ptr nonnull %11) #15
  br label %611

328:                                              ; preds = %205, %196
  call void @llvm.lifetime.end.p0(i64 71, ptr nonnull %11) #15
  br label %332

329:                                              ; preds = %324, %182
  %330 = phi i32 [ %325, %324 ], [ %192, %182 ]
  call void @llvm.lifetime.end.p0(i64 71, ptr nonnull %11) #15
  %331 = icmp slt i32 %330, 0
  br i1 %331, label %611, label %332

332:                                              ; preds = %329, %328
  %333 = load ptr, ptr %55, align 4
  %334 = getelementptr inbounds %struct.scarlett2_data, ptr %333, i32 0, i32 4
  %335 = load ptr, ptr %334, align 4
  %336 = getelementptr inbounds %struct.scarlett2_device_info, ptr %335, i32 0, i32 1
  %337 = load i8, ptr %336, align 4
  %338 = icmp eq i8 %337, 0
  br i1 %338, label %370, label %339

339:                                              ; preds = %332
  %340 = getelementptr inbounds %struct.scarlett2_data, ptr %333, i32 0, i32 33
  %341 = load i8, ptr %340, align 2
  %342 = icmp eq i8 %341, 0
  br i1 %342, label %343, label %349

343:                                              ; preds = %339
  %344 = load ptr, ptr %0, align 4
  %345 = getelementptr inbounds %struct.snd_usb_audio, ptr %344, i32 0, i32 24
  %346 = load i32, ptr %345, align 4
  %347 = and i32 %346, 2
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %370, label %349

349:                                              ; preds = %343, %339
  %350 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %351 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %350, i32 noundef 3520, i32 noundef 152) #14
  %352 = icmp eq ptr %351, null
  br i1 %352, label %611, label %353

353:                                              ; preds = %349
  store ptr %0, ptr %351, align 8
  %354 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %351, i32 0, i32 1
  store i32 0, ptr %354, align 4
  %355 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %351, i32 0, i32 3
  store i32 0, ptr %355, align 4
  %356 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %351, i32 0, i32 6
  store i32 1, ptr %356, align 8
  %357 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %351, i32 0, i32 7
  store i32 8, ptr %357, align 4
  %358 = call ptr @snd_ctl_new1(ptr noundef nonnull @scarlett2_msd_ctl, ptr noundef nonnull %351) #15
  %359 = icmp eq ptr %358, null
  br i1 %359, label %360, label %361

360:                                              ; preds = %353
  call void @kfree(ptr noundef nonnull %351) #15
  br label %611

361:                                              ; preds = %353
  %362 = getelementptr inbounds %struct.snd_kcontrol, ptr %358, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %362, align 4
  %363 = getelementptr inbounds %struct.snd_kcontrol, ptr %358, i32 0, i32 1, i32 4
  %364 = call i32 @strscpy(ptr noundef %363, ptr noundef nonnull @.str.36, i32 noundef 44) #15
  %365 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %351, ptr noundef nonnull %358, i1 noundef zeroext true) #15
  %366 = call i32 @llvm.smin.i32(i32 %365, i32 0) #15
  %367 = icmp slt i32 %365, 0
  br i1 %367, label %608, label %368

368:                                              ; preds = %361
  %369 = load ptr, ptr %55, align 4
  br label %370

370:                                              ; preds = %368, %343, %332
  %371 = phi ptr [ %369, %368 ], [ %333, %343 ], [ %333, %332 ]
  %372 = getelementptr inbounds %struct.scarlett2_data, ptr %371, i32 0, i32 33
  %373 = load i8, ptr %372, align 2
  %374 = icmp eq i8 %373, 0
  br i1 %374, label %375, label %617

375:                                              ; preds = %370
  %376 = getelementptr inbounds %struct.scarlett2_data, ptr %371, i32 0, i32 4
  %377 = load ptr, ptr %376, align 4
  %378 = getelementptr %struct.scarlett2_device_info, ptr %377, i32 0, i32 16, i32 1, i32 1
  %379 = load i32, ptr %378, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(44) %3, i8 0, i32 44, i1 false) #15, !annotation !8
  %380 = getelementptr inbounds %struct.scarlett2_device_info, ptr %377, i32 0, i32 3
  %381 = load i8, ptr %380, align 2
  %382 = icmp eq i8 %381, 0
  br i1 %382, label %387, label %383

383:                                              ; preds = %375
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(26) %3, ptr noundef nonnull align 1 dereferenceable(26) @.str.38, i32 26, i1 false) #15
  %384 = getelementptr inbounds %struct.scarlett2_data, ptr %371, i32 0, i32 35
  %385 = call fastcc i32 @scarlett2_add_new_ctl(ptr noundef %0, ptr noundef nonnull @scarlett2_master_volume_ctl, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %3, ptr noundef %384) #15
  %386 = icmp slt i32 %385, 0
  br i1 %386, label %471, label %387

387:                                              ; preds = %383, %375
  %388 = icmp sgt i32 %379, 0
  br i1 %388, label %389, label %463

389:                                              ; preds = %387
  %390 = getelementptr inbounds %struct.scarlett2_data, ptr %371, i32 0, i32 30
  br label %391

391:                                              ; preds = %461, %389
  %392 = phi i32 [ 0, %389 ], [ %406, %461 ]
  %393 = load ptr, ptr %376, align 4
  %394 = getelementptr inbounds %struct.scarlett2_device_info, ptr %393, i32 0, i32 13
  %395 = load i8, ptr %394, align 4
  %396 = icmp eq i8 %395, 0
  br i1 %396, label %401, label %397

397:                                              ; preds = %391
  %398 = getelementptr %struct.scarlett2_device_info, ptr %393, i32 0, i32 14, i32 %392
  %399 = load i8, ptr %398, align 1
  %400 = zext i8 %399 to i32
  br label %401

401:                                              ; preds = %397, %391
  %402 = phi i32 [ %400, %397 ], [ %392, %391 ]
  %403 = getelementptr %struct.scarlett2_device_info, ptr %377, i32 0, i32 15, i32 %392
  %404 = load ptr, ptr %403, align 4
  %405 = icmp eq ptr %404, null
  %406 = add nuw nsw i32 %392, 1
  br i1 %405, label %409, label %407

407:                                              ; preds = %401
  %408 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 44, ptr noundef nonnull @.str.39, i32 noundef %406, ptr noundef nonnull %404) #15
  br label %411

409:                                              ; preds = %401
  %410 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 44, ptr noundef nonnull @.str.40, i32 noundef %406) #15
  br label %411

411:                                              ; preds = %409, %407
  %412 = getelementptr %struct.scarlett2_data, ptr %371, i32 0, i32 36, i32 %392
  %413 = call fastcc i32 @scarlett2_add_new_ctl(ptr noundef %0, ptr noundef nonnull @scarlett2_line_out_volume_ctl, i32 noundef %392, i32 noundef 1, ptr noundef nonnull %3, ptr noundef %412) #15
  %414 = icmp slt i32 %413, 0
  br i1 %414, label %471, label %415

415:                                              ; preds = %411
  %416 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 44, ptr noundef nonnull @.str.41, i32 noundef %406) #15
  %417 = getelementptr %struct.scarlett2_data, ptr %371, i32 0, i32 38, i32 %392
  %418 = call fastcc i32 @scarlett2_add_new_ctl(ptr noundef %0, ptr noundef nonnull @scarlett2_mute_ctl, i32 noundef %392, i32 noundef 1, ptr noundef nonnull %3, ptr noundef %417) #15
  %419 = icmp slt i32 %418, 0
  br i1 %419, label %471, label %420

420:                                              ; preds = %415
  %421 = getelementptr %struct.scarlett2_data, ptr %371, i32 0, i32 21, i32 %402
  %422 = load i8, ptr %421, align 1
  %423 = icmp eq i8 %422, 0
  br i1 %423, label %443, label %424

424:                                              ; preds = %420
  %425 = load ptr, ptr %55, align 4
  %426 = load ptr, ptr %0, align 4
  %427 = getelementptr inbounds %struct.snd_usb_audio, ptr %426, i32 0, i32 2
  %428 = load ptr, ptr %427, align 4
  %429 = getelementptr %struct.scarlett2_data, ptr %425, i32 0, i32 36, i32 %392
  %430 = load ptr, ptr %429, align 4
  %431 = getelementptr inbounds %struct.snd_kcontrol, ptr %430, i32 1, i32 0, i32 1
  %432 = load i32, ptr %431, align 4
  %433 = and i32 %432, -3
  store i32 %433, ptr %431, align 4
  %434 = getelementptr %struct.scarlett2_data, ptr %425, i32 0, i32 38, i32 %392
  %435 = load ptr, ptr %434, align 4
  %436 = getelementptr inbounds %struct.snd_kcontrol, ptr %435, i32 1, i32 0, i32 1
  %437 = load i32, ptr %436, align 4
  %438 = and i32 %437, -3
  store i32 %438, ptr %436, align 4
  %439 = load ptr, ptr %429, align 4
  %440 = getelementptr inbounds %struct.snd_kcontrol, ptr %439, i32 0, i32 1
  call void @snd_ctl_notify(ptr noundef %428, i32 noundef 3, ptr noundef %440) #15
  %441 = load ptr, ptr %434, align 4
  %442 = getelementptr inbounds %struct.snd_kcontrol, ptr %441, i32 0, i32 1
  call void @snd_ctl_notify(ptr noundef %428, i32 noundef 3, ptr noundef %442) #15
  br label %443

443:                                              ; preds = %424, %420
  %444 = load i8, ptr %380, align 2
  %445 = icmp eq i8 %444, 0
  br i1 %445, label %461, label %446

446:                                              ; preds = %443
  %447 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 44, ptr noundef nonnull @.str.42, i32 noundef %406) #15
  %448 = getelementptr %struct.scarlett2_data, ptr %371, i32 0, i32 37, i32 %392
  %449 = call fastcc i32 @scarlett2_add_new_ctl(ptr noundef %0, ptr noundef nonnull @scarlett2_sw_hw_enum_ctl, i32 noundef %392, i32 noundef 1, ptr noundef nonnull %3, ptr noundef %448) #15
  %450 = icmp slt i32 %449, 0
  br i1 %450, label %471, label %451

451:                                              ; preds = %446
  %452 = load i8, ptr %390, align 4
  %453 = icmp ne i8 %452, 0
  %454 = icmp ult i32 %392, 4
  %455 = and i1 %454, %453
  br i1 %455, label %456, label %461

456:                                              ; preds = %451
  %457 = load ptr, ptr %448, align 4
  %458 = getelementptr inbounds %struct.snd_kcontrol, ptr %457, i32 1, i32 0, i32 1
  %459 = load i32, ptr %458, align 4
  %460 = and i32 %459, -3
  store i32 %460, ptr %458, align 4
  br label %461

461:                                              ; preds = %456, %451, %443
  %462 = icmp eq i32 %406, %379
  br i1 %462, label %463, label %391

463:                                              ; preds = %461, %387
  %464 = load i8, ptr %380, align 2
  %465 = icmp eq i8 %464, 0
  br i1 %465, label %466, label %467

466:                                              ; preds = %463
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #15
  br label %478

467:                                              ; preds = %463
  %468 = getelementptr %struct.scarlett2_data, ptr %371, i32 0, i32 39, i32 0
  %469 = call fastcc i32 @scarlett2_add_new_ctl(ptr noundef %0, ptr noundef nonnull @scarlett2_dim_mute_ctl, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @.str.45, ptr noundef %468) #15
  %470 = icmp slt i32 %469, 0
  br i1 %470, label %471, label %473

471:                                              ; preds = %467, %446, %415, %411, %383
  %472 = phi i32 [ %469, %467 ], [ %385, %383 ], [ %413, %411 ], [ %418, %415 ], [ %449, %446 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #15
  br label %611

473:                                              ; preds = %467
  %474 = getelementptr %struct.scarlett2_data, ptr %371, i32 0, i32 39, i32 1
  %475 = call fastcc i32 @scarlett2_add_new_ctl(ptr noundef %0, ptr noundef nonnull @scarlett2_dim_mute_ctl, i32 noundef 1, i32 noundef 1, ptr noundef nonnull @.str.46, ptr noundef %474) #15
  %476 = call i32 @llvm.smin.i32(i32 %475, i32 0) #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #15
  %477 = icmp slt i32 %475, 0
  br i1 %477, label %608, label %478

478:                                              ; preds = %473, %466
  %479 = load ptr, ptr %55, align 4
  %480 = getelementptr inbounds %struct.scarlett2_data, ptr %479, i32 0, i32 4
  %481 = load ptr, ptr %480, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %2) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(44) %2, i8 0, i32 44, i1 false) #15, !annotation !8
  %482 = getelementptr inbounds %struct.scarlett2_device_info, ptr %481, i32 0, i32 6
  %483 = getelementptr inbounds %struct.scarlett2_device_info, ptr %481, i32 0, i32 7
  br label %484

484:                                              ; preds = %491, %478
  %485 = phi i32 [ 0, %478 ], [ %492, %491 ]
  %486 = load i8, ptr %482, align 1
  %487 = zext i8 %486 to i32
  %488 = icmp ult i32 %485, %487
  br i1 %488, label %491, label %489

489:                                              ; preds = %484
  %490 = getelementptr inbounds %struct.scarlett2_device_info, ptr %481, i32 0, i32 8
  br label %500

491:                                              ; preds = %484
  %492 = add nuw nsw i32 %485, 1
  %493 = load i8, ptr %483, align 2
  %494 = zext i8 %493 to i32
  %495 = add nuw nsw i32 %492, %494
  %496 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 44, ptr noundef nonnull @.str.47, i32 noundef %495, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50) #15
  %497 = getelementptr %struct.scarlett2_data, ptr %479, i32 0, i32 40, i32 %485
  %498 = call fastcc i32 @scarlett2_add_new_ctl(ptr noundef %0, ptr noundef nonnull @scarlett2_level_enum_ctl, i32 noundef %485, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %497) #15
  %499 = icmp slt i32 %498, 0
  br i1 %499, label %582, label %484

500:                                              ; preds = %507, %489
  %501 = phi i32 [ %508, %507 ], [ 0, %489 ]
  %502 = load i8, ptr %490, align 1
  %503 = zext i8 %502 to i32
  %504 = icmp ult i32 %501, %503
  br i1 %504, label %507, label %505

505:                                              ; preds = %500
  %506 = getelementptr inbounds %struct.scarlett2_device_info, ptr %481, i32 0, i32 9
  br label %513

507:                                              ; preds = %500
  %508 = add nuw nsw i32 %501, 1
  %509 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 44, ptr noundef nonnull @.str.47, i32 noundef %508, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52) #15
  %510 = getelementptr %struct.scarlett2_data, ptr %479, i32 0, i32 41, i32 %501
  %511 = call fastcc i32 @scarlett2_add_new_ctl(ptr noundef %0, ptr noundef nonnull @scarlett2_pad_ctl, i32 noundef %501, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %510) #15
  %512 = icmp slt i32 %511, 0
  br i1 %512, label %582, label %500

513:                                              ; preds = %518, %505
  %514 = phi i32 [ %519, %518 ], [ 0, %505 ]
  %515 = load i8, ptr %506, align 4
  %516 = zext i8 %515 to i32
  %517 = icmp ult i32 %514, %516
  br i1 %517, label %518, label %524

518:                                              ; preds = %513
  %519 = add nuw nsw i32 %514, 1
  %520 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 44, ptr noundef nonnull @.str.47, i32 noundef %519, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52) #15
  %521 = getelementptr %struct.scarlett2_data, ptr %479, i32 0, i32 42, i32 %514
  %522 = call fastcc i32 @scarlett2_add_new_ctl(ptr noundef %0, ptr noundef nonnull @scarlett2_air_ctl, i32 noundef %514, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %521) #15
  %523 = icmp slt i32 %522, 0
  br i1 %523, label %582, label %513

524:                                              ; preds = %513
  %525 = getelementptr inbounds %struct.scarlett2_device_info, ptr %481, i32 0, i32 11
  %526 = load i8, ptr %525, align 2
  switch i8 %526, label %532 [
    i8 1, label %530
    i8 0, label %527
  ]

527:                                              ; preds = %524
  %528 = getelementptr inbounds %struct.scarlett2_device_info, ptr %481, i32 0, i32 10
  %529 = load i8, ptr %528, align 1
  br label %561

530:                                              ; preds = %524
  %531 = getelementptr inbounds %struct.scarlett2_device_info, ptr %481, i32 0, i32 10
  br label %534

532:                                              ; preds = %524
  %533 = getelementptr inbounds %struct.scarlett2_device_info, ptr %481, i32 0, i32 10
  br label %545

534:                                              ; preds = %539, %530
  %535 = phi i32 [ %540, %539 ], [ 0, %530 ]
  %536 = load i8, ptr %531, align 1
  %537 = zext i8 %536 to i32
  %538 = icmp ult i32 %535, %537
  br i1 %538, label %539, label %561

539:                                              ; preds = %534
  %540 = add nuw nsw i32 %535, 1
  %541 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 44, ptr noundef nonnull @.str.47, i32 noundef %540, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.52) #15
  %542 = getelementptr %struct.scarlett2_data, ptr %479, i32 0, i32 43, i32 %535
  %543 = call fastcc i32 @scarlett2_add_new_ctl(ptr noundef %0, ptr noundef nonnull @scarlett2_phantom_ctl, i32 noundef %535, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %542) #15
  %544 = icmp slt i32 %543, 0
  br i1 %544, label %582, label %534

545:                                              ; preds = %550, %532
  %546 = phi i32 [ %555, %550 ], [ 0, %532 ]
  %547 = load i8, ptr %533, align 1
  %548 = zext i8 %547 to i32
  %549 = icmp ult i32 %546, %548
  br i1 %549, label %550, label %561

550:                                              ; preds = %545
  %551 = load i8, ptr %525, align 2
  %552 = zext i8 %551 to i32
  %553 = mul i32 %546, %552
  %554 = add i32 %553, 1
  %555 = add nuw nsw i32 %546, 1
  %556 = mul i32 %555, %552
  %557 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 44, ptr noundef nonnull @.str.48, i32 noundef %554, i32 noundef %556, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.52) #15
  %558 = getelementptr %struct.scarlett2_data, ptr %479, i32 0, i32 43, i32 %546
  %559 = call fastcc i32 @scarlett2_add_new_ctl(ptr noundef %0, ptr noundef nonnull @scarlett2_phantom_ctl, i32 noundef %546, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %558) #15
  %560 = icmp slt i32 %559, 0
  br i1 %560, label %582, label %545

561:                                              ; preds = %545, %534, %527
  %562 = phi i8 [ %529, %527 ], [ %547, %545 ], [ %536, %534 ]
  %563 = icmp eq i8 %562, 0
  br i1 %563, label %584, label %564

564:                                              ; preds = %561
  %565 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %566 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %565, i32 noundef 3520, i32 noundef 152) #14
  %567 = icmp eq ptr %566, null
  br i1 %567, label %582, label %568

568:                                              ; preds = %564
  store ptr %0, ptr %566, align 8
  %569 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %566, i32 0, i32 1
  store i32 0, ptr %569, align 4
  %570 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %566, i32 0, i32 3
  store i32 0, ptr %570, align 4
  %571 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %566, i32 0, i32 6
  store i32 1, ptr %571, align 8
  %572 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %566, i32 0, i32 7
  store i32 8, ptr %572, align 4
  %573 = call ptr @snd_ctl_new1(ptr noundef nonnull @scarlett2_phantom_persistence_ctl, ptr noundef nonnull %566) #15
  %574 = icmp eq ptr %573, null
  br i1 %574, label %575, label %576

575:                                              ; preds = %568
  call void @kfree(ptr noundef nonnull %566) #15
  br label %582

576:                                              ; preds = %568
  %577 = getelementptr inbounds %struct.snd_kcontrol, ptr %573, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %577, align 4
  %578 = getelementptr inbounds %struct.snd_kcontrol, ptr %573, i32 0, i32 1, i32 4
  %579 = call i32 @strscpy(ptr noundef %578, ptr noundef nonnull @.str.55, i32 noundef 44) #15
  %580 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %566, ptr noundef nonnull %573, i1 noundef zeroext true) #15
  %581 = icmp slt i32 %580, 0
  br i1 %581, label %582, label %584

582:                                              ; preds = %576, %575, %564, %550, %539, %518, %507, %491
  %583 = phi i32 [ %580, %576 ], [ -12, %564 ], [ -12, %575 ], [ %559, %550 ], [ %543, %539 ], [ %522, %518 ], [ %511, %507 ], [ %498, %491 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %2) #15
  br label %611

584:                                              ; preds = %576, %561
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %2) #15
  %585 = call fastcc i32 @scarlett2_add_mux_enums(ptr noundef %0) #15
  %586 = icmp slt i32 %585, 0
  br i1 %586, label %611, label %587

587:                                              ; preds = %584
  %588 = call fastcc i32 @scarlett2_add_mixer_ctls(ptr noundef %0) #15
  %589 = icmp slt i32 %588, 0
  br i1 %589, label %611, label %590

590:                                              ; preds = %587
  %591 = call fastcc i32 @scarlett2_add_meter_ctl(ptr noundef %0) #15
  %592 = icmp slt i32 %591, 0
  br i1 %592, label %611, label %593

593:                                              ; preds = %590
  %594 = call fastcc i32 @scarlett2_add_sync_ctl(ptr noundef %0) #15
  %595 = icmp slt i32 %594, 0
  br i1 %595, label %611, label %596

596:                                              ; preds = %593
  %597 = call fastcc i32 @scarlett2_add_direct_monitor_ctl(ptr noundef %0) #15
  %598 = icmp slt i32 %597, 0
  br i1 %598, label %611, label %599

599:                                              ; preds = %596
  %600 = call fastcc i32 @scarlett2_add_speaker_switch_ctl(ptr noundef %0) #15
  %601 = icmp slt i32 %600, 0
  br i1 %601, label %611, label %602

602:                                              ; preds = %599
  %603 = call fastcc i32 @scarlett2_add_talkback_ctls(ptr noundef %0) #15
  %604 = icmp slt i32 %603, 0
  br i1 %604, label %611, label %605

605:                                              ; preds = %602
  %606 = call fastcc i32 @scarlett2_init_notify(ptr noundef %0) #15
  %607 = call i32 @llvm.smin.i32(i32 %606, i32 0) #15
  br label %608

608:                                              ; preds = %605, %473, %361
  %609 = phi i32 [ %366, %361 ], [ %476, %473 ], [ %607, %605 ]
  %610 = icmp slt i32 %609, 0
  br i1 %610, label %611, label %617

611:                                              ; preds = %608, %602, %599, %596, %593, %590, %587, %584, %582, %471, %360, %349, %329, %326, %151, %149, %105, %47, %41, %37, %30
  %612 = phi i32 [ %609, %608 ], [ -22, %30 ], [ -12, %349 ], [ -12, %360 ], [ -12, %41 ], [ -22, %47 ], [ %583, %582 ], [ %472, %471 ], [ %327, %326 ], [ %150, %149 ], [ %603, %602 ], [ %600, %599 ], [ %597, %596 ], [ %594, %593 ], [ %591, %590 ], [ %588, %587 ], [ %585, %584 ], [ %330, %329 ], [ %152, %151 ], [ -22, %37 ], [ -22, %105 ]
  %613 = load ptr, ptr %0, align 4
  %614 = getelementptr inbounds %struct.snd_usb_audio, ptr %613, i32 0, i32 1
  %615 = load ptr, ptr %614, align 4
  %616 = getelementptr inbounds %struct.usb_device, ptr %615, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %616, ptr noundef nonnull @.str.2, i32 noundef %612) #13
  br label %617

617:                                              ; preds = %611, %608, %370, %27, %1
  %618 = phi i32 [ 0, %27 ], [ 0, %1 ], [ %612, %611 ], [ 0, %608 ], [ 0, %370 ]
  ret i32 %618
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scarlett2_add_mux_enums(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [44 x i8], align 1
  %3 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.scarlett2_data, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.scarlett2_device_info, ptr %6, i32 0, i32 16
  br label %8

8:                                                ; preds = %31, %1
  %9 = phi i32 [ 0, %1 ], [ %32, %31 ]
  %10 = phi i32 [ 0, %1 ], [ %33, %31 ]
  %11 = getelementptr [2 x i32], ptr %7, i32 %10, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %8
  %15 = getelementptr [6 x %struct.scarlett2_port], ptr @scarlett2_ports, i32 0, i32 %10, i32 3
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %27, %14
  %18 = phi i32 [ %9, %14 ], [ %28, %27 ]
  %19 = phi i32 [ 0, %14 ], [ %20, %27 ]
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %2) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(44) %2, i8 0, i32 44, i1 false), !annotation !8
  %20 = add nuw nsw i32 %19, 1
  %21 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 39, ptr noundef %16, i32 noundef %20)
  %22 = call i32 @strlen(ptr noundef nonnull %2)
  %23 = getelementptr i8, ptr %2, i32 %22
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %23, ptr noundef nonnull align 1 dereferenceable(6) @.str.58, i32 6, i1 false)
  %24 = getelementptr %struct.scarlett2_data, ptr %4, i32 0, i32 44, i32 %18
  %25 = call fastcc i32 @scarlett2_add_new_ctl(ptr noundef %0, ptr noundef nonnull @scarlett2_mux_src_enum_ctl, i32 noundef %18, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %24)
  %26 = icmp slt i32 %25, 0
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %2) #15
  br i1 %26, label %35, label %27

27:                                               ; preds = %17
  %28 = add i32 %18, 1
  %29 = load i32, ptr %11, align 4
  %30 = icmp slt i32 %20, %29
  br i1 %30, label %17, label %31

31:                                               ; preds = %27, %8
  %32 = phi i32 [ %9, %8 ], [ %28, %27 ]
  %33 = add nuw nsw i32 %10, 1
  %34 = icmp eq i32 %33, 6
  br i1 %34, label %35, label %8

35:                                               ; preds = %31, %17
  %36 = phi i32 [ %25, %17 ], [ 0, %31 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scarlett2_add_mixer_ctls(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [44 x i8], align 1
  %3 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.scarlett2_data, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %2) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(44) %2, i8 0, i32 44, i1 false), !annotation !8
  %7 = getelementptr %struct.scarlett2_device_info, ptr %6, i32 0, i32 16, i32 4
  %8 = getelementptr %struct.scarlett2_device_info, ptr %6, i32 0, i32 16, i32 4, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %7, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %48

12:                                               ; preds = %1
  %13 = icmp sgt i32 %9, 0
  br label %14

14:                                               ; preds = %44, %12
  %15 = phi i32 [ 0, %12 ], [ %45, %44 ]
  %16 = phi i32 [ 0, %12 ], [ %46, %44 ]
  br i1 %13, label %17, label %44

17:                                               ; preds = %14
  %18 = add nuw i32 %16, 65
  br label %19

19:                                               ; preds = %41, %17
  %20 = phi i32 [ %15, %17 ], [ %42, %41 ]
  %21 = phi i32 [ 0, %17 ], [ %22, %41 ]
  %22 = add nuw nsw i32 %21, 1
  %23 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 44, ptr noundef nonnull @.str.59, i32 noundef %18, i32 noundef %22)
  %24 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %25 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 152) #14
  %26 = icmp eq ptr %25, null
  br i1 %26, label %48, label %27

27:                                               ; preds = %19
  store ptr %0, ptr %25, align 8
  %28 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %25, i32 0, i32 1
  store i32 %20, ptr %28, align 4
  %29 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %25, i32 0, i32 3
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %25, i32 0, i32 6
  store i32 1, ptr %30, align 8
  %31 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %25, i32 0, i32 7
  store i32 8, ptr %31, align 4
  %32 = call ptr @snd_ctl_new1(ptr noundef nonnull @scarlett2_mixer_ctl, ptr noundef nonnull %25) #15
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  call void @kfree(ptr noundef nonnull %25) #15
  br label %48

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.snd_kcontrol, ptr %32, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %36, align 4
  %37 = getelementptr inbounds %struct.snd_kcontrol, ptr %32, i32 0, i32 1, i32 4
  %38 = call i32 @strscpy(ptr noundef %37, ptr noundef nonnull %2, i32 noundef 44) #15
  %39 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %25, ptr noundef nonnull %32, i1 noundef zeroext true) #15
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %35
  %42 = add i32 %20, 1
  %43 = icmp eq i32 %22, %9
  br i1 %43, label %44, label %19

44:                                               ; preds = %41, %14
  %45 = phi i32 [ %15, %14 ], [ %42, %41 ]
  %46 = add nuw nsw i32 %16, 1
  %47 = icmp eq i32 %46, %10
  br i1 %47, label %48, label %14

48:                                               ; preds = %44, %35, %34, %19, %1
  %49 = phi i32 [ -12, %34 ], [ 0, %1 ], [ -12, %19 ], [ %39, %35 ], [ 0, %44 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %2) #15
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scarlett2_add_meter_ctl(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.scarlett2_data, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.scarlett2_device_info, ptr %5, i32 0, i32 2
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %29, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.scarlett2_data, ptr %3, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 152) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %9
  store ptr %0, ptr %13, align 8
  %16 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %13, i32 0, i32 1
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %13, i32 0, i32 3
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %13, i32 0, i32 6
  store i32 %11, ptr %18, align 8
  %19 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %13, i32 0, i32 7
  store i32 8, ptr %19, align 4
  %20 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @scarlett2_meter_ctl, ptr noundef nonnull %13) #15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  tail call void @kfree(ptr noundef nonnull %13) #15
  br label %29

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.snd_kcontrol, ptr %20, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %24, align 4
  %25 = getelementptr inbounds %struct.snd_kcontrol, ptr %20, i32 0, i32 1, i32 4
  %26 = tail call i32 @strscpy(ptr noundef %25, ptr noundef nonnull @.str.60, i32 noundef 44) #15
  %27 = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %13, ptr noundef nonnull %20, i1 noundef zeroext true) #15
  %28 = tail call i32 @llvm.smin.i32(i32 %27, i32 0)
  br label %29

29:                                               ; preds = %23, %22, %9, %1
  %30 = phi i32 [ 0, %1 ], [ -12, %22 ], [ -12, %9 ], [ %28, %23 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scarlett2_add_sync_ctl(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.scarlett2_data, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.scarlett2_device_info, ptr %5, i32 0, i32 2
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.scarlett2_data, ptr %3, i32 0, i32 34
  %11 = tail call fastcc i32 @scarlett2_add_new_ctl(ptr noundef %0, ptr noundef nonnull @scarlett2_sync_ctl, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @.str.61, ptr noundef %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = phi i32 [ %11, %9 ], [ 0, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scarlett2_add_direct_monitor_ctl(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.scarlett2_data, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.scarlett2_device_info, ptr %5, i32 0, i32 12
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %1
  %10 = zext i8 %7 to i32
  %11 = icmp eq i8 %7, 1
  %12 = select i1 %11, ptr @.str.64, ptr @.str.65
  %13 = add nsw i32 %10, -1
  %14 = getelementptr [2 x %struct.snd_kcontrol_new], ptr @scarlett2_direct_monitor_ctl, i32 0, i32 %13
  %15 = getelementptr inbounds %struct.scarlett2_data, ptr %3, i32 0, i32 45
  %16 = tail call fastcc i32 @scarlett2_add_new_ctl(ptr noundef %0, ptr noundef %14, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %12, ptr noundef %15)
  br label %17

17:                                               ; preds = %9, %1
  %18 = phi i32 [ %16, %9 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scarlett2_add_speaker_switch_ctl(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.scarlett2_data, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.scarlett2_device_info, ptr %5, i32 0, i32 4
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.scarlett2_data, ptr %3, i32 0, i32 46
  %11 = tail call fastcc i32 @scarlett2_add_new_ctl(ptr noundef %0, ptr noundef nonnull @scarlett2_speaker_switch_enum_ctl, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @.str.68, ptr noundef %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = phi i32 [ %11, %9 ], [ 0, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scarlett2_add_talkback_ctls(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [44 x i8], align 1
  %3 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.scarlett2_data, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.scarlett2_device_info, ptr %6, i32 0, i32 16, i32 4
  %8 = load i32, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %2) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(44) %2, i8 0, i32 44, i1 false), !annotation !8
  %9 = getelementptr inbounds %struct.scarlett2_device_info, ptr %6, i32 0, i32 5
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %42, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.scarlett2_data, ptr %4, i32 0, i32 47
  %14 = tail call fastcc i32 @scarlett2_add_new_ctl(ptr noundef %0, ptr noundef nonnull @scarlett2_talkback_enum_ctl, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @.str.71, ptr noundef %13)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %42, label %16

16:                                               ; preds = %12
  %17 = icmp sgt i32 %8, 0
  br i1 %17, label %21, label %42

18:                                               ; preds = %36
  %19 = add nuw nsw i32 %22, 1
  %20 = icmp eq i32 %19, %8
  br i1 %20, label %42, label %21

21:                                               ; preds = %18, %16
  %22 = phi i32 [ %19, %18 ], [ 0, %16 ]
  %23 = add nuw i32 %22, 65
  %24 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 44, ptr noundef nonnull @.str.72, i32 noundef %23)
  %25 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %26 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 152) #14
  %27 = icmp eq ptr %26, null
  br i1 %27, label %42, label %28

28:                                               ; preds = %21
  store ptr %0, ptr %26, align 8
  %29 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %26, i32 0, i32 1
  store i32 %22, ptr %29, align 4
  %30 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %26, i32 0, i32 3
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %26, i32 0, i32 6
  store i32 1, ptr %31, align 8
  %32 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %26, i32 0, i32 7
  store i32 8, ptr %32, align 4
  %33 = call ptr @snd_ctl_new1(ptr noundef nonnull @scarlett2_talkback_map_ctl, ptr noundef nonnull %26) #15
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  call void @kfree(ptr noundef nonnull %26) #15
  br label %42

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.snd_kcontrol, ptr %33, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %37, align 4
  %38 = getelementptr inbounds %struct.snd_kcontrol, ptr %33, i32 0, i32 1, i32 4
  %39 = call i32 @strscpy(ptr noundef %38, ptr noundef nonnull %2, i32 noundef 44) #15
  %40 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %26, ptr noundef nonnull %33, i1 noundef zeroext true) #15
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %18

42:                                               ; preds = %36, %35, %21, %18, %16, %12, %1
  %43 = phi i32 [ 0, %1 ], [ %14, %12 ], [ -12, %35 ], [ 0, %16 ], [ 0, %18 ], [ -12, %21 ], [ %40, %36 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %2) #15
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scarlett2_init_notify(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.snd_usb_audio, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.scarlett2_data, ptr %6, i32 0, i32 6
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = load i32, ptr %4, align 8
  %11 = shl i32 %10, 8
  %12 = shl nuw nsw i32 %9, 15
  %13 = or i32 %12, %11
  %14 = or i32 %13, 1073741952
  %15 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.75, ptr noundef nonnull @__func__.scarlett2_init_notify) #13
  br label %61

20:                                               ; preds = %1
  %21 = tail call i32 @usb_pipe_type_check(ptr noundef %4, i32 noundef %14) #15
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %61

23:                                               ; preds = %20
  %24 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #15
  store ptr %24, ptr %15, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %61, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.scarlett2_data, ptr %6, i32 0, i32 7
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  %30 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %29, i32 noundef 3264) #16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %61, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %15, align 4
  %34 = load i16, ptr %27, align 2
  %35 = zext i16 %34 to i32
  %36 = getelementptr inbounds %struct.scarlett2_data, ptr %6, i32 0, i32 8
  %37 = load i8, ptr %36, align 4
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds %struct.urb, ptr %33, i32 0, i32 8
  store ptr %4, ptr %39, align 4
  %40 = getelementptr inbounds %struct.urb, ptr %33, i32 0, i32 10
  store i32 %14, ptr %40, align 4
  %41 = getelementptr inbounds %struct.urb, ptr %33, i32 0, i32 14
  store ptr %30, ptr %41, align 4
  %42 = getelementptr inbounds %struct.urb, ptr %33, i32 0, i32 19
  store i32 %35, ptr %42, align 4
  %43 = getelementptr inbounds %struct.urb, ptr %33, i32 0, i32 28
  store ptr @scarlett2_notify, ptr %43, align 4
  %44 = getelementptr inbounds %struct.urb, ptr %33, i32 0, i32 27
  store ptr %0, ptr %44, align 4
  %45 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 3
  %48 = icmp ugt i32 %46, 4
  %49 = or i1 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %32
  %51 = tail call i32 @llvm.smax.i32(i32 %38, i32 1) #15
  %52 = tail call i32 @llvm.umin.i32(i32 %51, i32 16) #15
  %53 = add nsw i32 %52, -1
  %54 = shl nuw nsw i32 1, %53
  br label %55

55:                                               ; preds = %50, %32
  %56 = phi i32 [ %54, %50 ], [ %38, %32 ]
  %57 = getelementptr inbounds %struct.urb, ptr %33, i32 0, i32 25
  store i32 %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.urb, ptr %33, i32 0, i32 23
  store i32 -1, ptr %58, align 4
  %59 = load ptr, ptr %15, align 4
  %60 = tail call i32 @usb_submit_urb(ptr noundef %59, i32 noundef 3264) #15
  br label %61

61:                                               ; preds = %55, %26, %23, %20, %18
  %62 = phi i32 [ 0, %18 ], [ %60, %55 ], [ -22, %20 ], [ -12, %23 ], [ -12, %26 ]
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scarlett2_config_save_work(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -44
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 6, ptr %2, align 4
  %5 = call fastcc i32 @scarlett2_usb(ptr noundef %4, i32 noundef 8388610, ptr noundef nonnull %2, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scarlett2_private_free(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.scarlett2_data, ptr %3, i32 0, i32 3
  %5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %4) #15
  tail call void @kfree(ptr noundef %3) #15
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scarlett2_private_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.scarlett2_data, ptr %4, i32 0, i32 3
  %6 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %5) #15
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 6, ptr %2, align 4
  %9 = call fastcc i32 @scarlett2_usb(ptr noundef %8, i32 noundef 8388610, ptr noundef nonnull %2, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  br label %10

10:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scarlett2_usb(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i16 noundef zeroext %3, ptr noundef writeonly %4, i16 noundef zeroext %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.snd_usb_audio, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = zext i16 %3 to i32
  %13 = add i16 %3, 16
  %14 = zext i16 %5 to i32
  %15 = add i16 %5, 16
  %16 = zext i16 %13 to i32
  %17 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %16, i32 noundef 3264) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %115, label %19

19:                                               ; preds = %6
  %20 = zext i16 %15 to i32
  %21 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %20, i32 noundef 3264) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %115, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.scarlett2_data, ptr %8, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %24) #15
  %25 = getelementptr inbounds %struct.scarlett2_data, ptr %8, i32 0, i32 11
  %26 = load i16, ptr %25, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %25, align 4
  store i32 %1, ptr %17, align 64
  %28 = getelementptr inbounds %struct.scarlett2_usb_packet, ptr %17, i32 0, i32 1
  store i16 %3, ptr %28, align 4
  %29 = getelementptr inbounds %struct.scarlett2_usb_packet, ptr %17, i32 0, i32 2
  store i16 %26, ptr %29, align 2
  %30 = getelementptr inbounds %struct.scarlett2_usb_packet, ptr %17, i32 0, i32 3
  store i32 0, ptr %30, align 8
  %31 = getelementptr inbounds %struct.scarlett2_usb_packet, ptr %17, i32 0, i32 4
  store i32 0, ptr %31, align 4
  %32 = icmp eq i16 %3, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.scarlett2_usb_packet, ptr %17, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 16 %34, ptr align 1 %2, i32 %12, i1 false)
  br label %35

35:                                               ; preds = %33, %23
  %36 = getelementptr inbounds %struct.scarlett2_data, ptr %8, i32 0, i32 5
  %37 = load i8, ptr %36, align 4
  %38 = load i32, ptr %11, align 8
  %39 = shl i32 %38, 8
  %40 = or i32 %39, -2147483648
  %41 = zext i8 %37 to i16
  %42 = tail call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %40, i8 noundef zeroext 2, i8 noundef zeroext 33, i16 noundef zeroext 0, i16 noundef zeroext %41, ptr noundef nonnull %17, i16 noundef zeroext %13) #15
  %43 = icmp eq i32 %42, %16
  br i1 %43, label %49, label %44

44:                                               ; preds = %35
  %45 = load ptr, ptr %0, align 4
  %46 = getelementptr inbounds %struct.snd_usb_audio, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.usb_device, ptr %47, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.20, i32 noundef %1, i32 noundef %42) #13
  br label %113

49:                                               ; preds = %35
  %50 = load i8, ptr %36, align 4
  %51 = load i32, ptr %11, align 8
  %52 = shl i32 %51, 8
  %53 = or i32 %52, -2147483520
  %54 = zext i8 %50 to i16
  %55 = tail call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %53, i8 noundef zeroext 3, i8 noundef zeroext -95, i16 noundef zeroext 0, i16 noundef zeroext %54, ptr noundef nonnull %21, i16 noundef zeroext %15) #15
  %56 = icmp eq i32 %55, %20
  br i1 %56, label %62, label %57

57:                                               ; preds = %49
  %58 = load ptr, ptr %0, align 4
  %59 = getelementptr inbounds %struct.snd_usb_audio, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.usb_device, ptr %60, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.21, i32 noundef %1, i32 noundef %55, i32 noundef %20) #13
  br label %113

62:                                               ; preds = %49
  %63 = load i32, ptr %21, align 64
  %64 = load i32, ptr %17, align 64
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i16, ptr %29, align 2
  %68 = getelementptr inbounds %struct.scarlett2_usb_packet, ptr %21, i32 0, i32 2
  %69 = load i16, ptr %68, align 2
  br label %91

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.scarlett2_usb_packet, ptr %21, i32 0, i32 2
  %72 = load i16, ptr %71, align 2
  %73 = load i16, ptr %29, align 2
  %74 = icmp eq i16 %72, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %70
  %76 = icmp eq i16 %73, 1
  %77 = icmp eq i16 %72, 0
  %78 = select i1 %76, i1 %77, i1 false
  br i1 %78, label %79, label %91

79:                                               ; preds = %75, %70
  %80 = getelementptr inbounds %struct.scarlett2_usb_packet, ptr %21, i32 0, i32 1
  %81 = load i16, ptr %80, align 4
  %82 = icmp eq i16 %81, %5
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.scarlett2_usb_packet, ptr %21, i32 0, i32 3
  %85 = load i32, ptr %84, align 8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.scarlett2_usb_packet, ptr %21, i32 0, i32 4
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %107, label %91

91:                                               ; preds = %87, %83, %79, %75, %66
  %92 = phi i16 [ %69, %66 ], [ %72, %75 ], [ %72, %79 ], [ %72, %83 ], [ %72, %87 ]
  %93 = phi i16 [ %67, %66 ], [ %73, %75 ], [ %73, %79 ], [ %73, %83 ], [ %73, %87 ]
  %94 = load ptr, ptr %0, align 4
  %95 = getelementptr inbounds %struct.snd_usb_audio, ptr %94, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.usb_device, ptr %96, i32 0, i32 15
  %98 = zext i16 %93 to i32
  %99 = zext i16 %92 to i32
  %100 = getelementptr inbounds %struct.scarlett2_usb_packet, ptr %21, i32 0, i32 1
  %101 = load i16, ptr %100, align 4
  %102 = zext i16 %101 to i32
  %103 = getelementptr inbounds %struct.scarlett2_usb_packet, ptr %21, i32 0, i32 3
  %104 = load i32, ptr %103, align 8
  %105 = getelementptr inbounds %struct.scarlett2_usb_packet, ptr %21, i32 0, i32 4
  %106 = load i32, ptr %105, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.22, i32 noundef %64, i32 noundef %63, i32 noundef %98, i32 noundef %99, i32 noundef %14, i32 noundef %102, i32 noundef %104, i32 noundef %106) #13
  br label %113

107:                                              ; preds = %87
  %108 = icmp ne ptr %4, null
  %109 = icmp ne i16 %5, 0
  %110 = and i1 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.scarlett2_usb_packet, ptr %21, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %4, ptr align 16 %112, i32 %14, i1 false)
  br label %113

113:                                              ; preds = %111, %107, %91, %57, %44
  %114 = phi i32 [ -22, %44 ], [ -22, %57 ], [ -22, %91 ], [ %20, %111 ], [ %20, %107 ]
  tail call void @mutex_unlock(ptr noundef %24) #15
  br label %115

115:                                              ; preds = %113, %19, %6
  %116 = phi ptr [ %17, %113 ], [ null, %6 ], [ %17, %19 ]
  %117 = phi ptr [ %21, %113 ], [ null, %6 ], [ null, %19 ]
  %118 = phi i32 [ %114, %113 ], [ -12, %6 ], [ -12, %19 ]
  tail call void @kfree(ptr noundef %116) #15
  tail call void @kfree(ptr noundef %117) #15
  ret i32 %118
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_ctl_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_pipe_type_check(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scarlett2_usb_get_config(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.anon.73, align 8
  %6 = alloca %struct.anon.73, align 8
  %7 = alloca i8, align 1
  %8 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 16
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.scarlett2_data, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.scarlett2_device_info, ptr %11, i32 0, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = getelementptr [2 x [14 x %struct.scarlett2_config]], ptr @scarlett2_config_items, i32 0, i32 %14, i32 %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #15
  store i8 0, ptr %7, align 1, !annotation !8
  %16 = getelementptr [2 x [14 x %struct.scarlett2_config]], ptr @scarlett2_config_items, i32 0, i32 %14, i32 %1, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = icmp ugt i8 %17, 7
  br i1 %18, label %19, label %29

19:                                               ; preds = %4
  %20 = lshr i8 %17, 3
  %21 = zext i8 %20 to i32
  %22 = mul i32 %21, %2
  %23 = load i8, ptr %15, align 1
  %24 = zext i8 %23 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  store i32 %24, ptr %6, align 8
  %25 = getelementptr inbounds %struct.anon.73, ptr %6, i32 0, i32 1
  store i32 %22, ptr %25, align 4
  %26 = trunc i32 %22 to i16
  %27 = call fastcc i32 @scarlett2_usb(ptr noundef %0, i32 noundef 8388608, ptr noundef nonnull %6, i16 noundef zeroext 8, ptr noundef %3, i16 noundef zeroext %26) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  %28 = call i32 @llvm.smin.i32(i32 %27, i32 0)
  br label %76

29:                                               ; preds = %4
  %30 = load i8, ptr %15, align 1
  %31 = zext i8 %30 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  store i32 %31, ptr %5, align 8
  %32 = getelementptr inbounds %struct.anon.73, ptr %5, i32 0, i32 1
  store i32 1, ptr %32, align 4
  %33 = call fastcc i32 @scarlett2_usb(ptr noundef %0, i32 noundef 8388608, ptr noundef nonnull %5, i16 noundef zeroext 8, ptr noundef nonnull %7, i16 noundef zeroext 1) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %76, label %35

35:                                               ; preds = %29
  %36 = icmp sgt i32 %2, 0
  br i1 %36, label %37, label %76

37:                                               ; preds = %35
  %38 = add nsw i32 %2, -1
  %39 = call i32 @llvm.umin.i32(i32 %38, i32 7)
  %40 = load i8, ptr %7, align 1
  %41 = and i8 %40, 1
  store i8 %41, ptr %3, align 1
  %42 = icmp eq i32 %39, 0
  br i1 %42, label %76, label %43

43:                                               ; preds = %37
  %44 = lshr i8 %40, 1
  %45 = getelementptr i8, ptr %3, i32 1
  %46 = and i8 %44, 1
  store i8 %46, ptr %45, align 1
  %47 = icmp eq i32 %39, 1
  br i1 %47, label %76, label %48

48:                                               ; preds = %43
  %49 = lshr i8 %40, 2
  %50 = getelementptr i8, ptr %3, i32 2
  %51 = and i8 %49, 1
  store i8 %51, ptr %50, align 1
  %52 = icmp eq i32 %39, 2
  br i1 %52, label %76, label %53

53:                                               ; preds = %48
  %54 = lshr i8 %40, 3
  %55 = getelementptr i8, ptr %3, i32 3
  %56 = and i8 %54, 1
  store i8 %56, ptr %55, align 1
  %57 = icmp eq i32 %39, 3
  br i1 %57, label %76, label %58

58:                                               ; preds = %53
  %59 = lshr i8 %40, 4
  %60 = getelementptr i8, ptr %3, i32 4
  %61 = and i8 %59, 1
  store i8 %61, ptr %60, align 1
  %62 = icmp eq i32 %39, 4
  br i1 %62, label %76, label %63

63:                                               ; preds = %58
  %64 = lshr i8 %40, 5
  %65 = getelementptr i8, ptr %3, i32 5
  %66 = and i8 %64, 1
  store i8 %66, ptr %65, align 1
  %67 = icmp eq i32 %39, 5
  br i1 %67, label %76, label %68

68:                                               ; preds = %63
  %69 = lshr i8 %40, 6
  %70 = getelementptr i8, ptr %3, i32 6
  %71 = and i8 %69, 1
  store i8 %71, ptr %70, align 1
  %72 = icmp eq i32 %39, 6
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = lshr i8 %40, 7
  %75 = getelementptr i8, ptr %3, i32 7
  store i8 %74, ptr %75, align 1
  br label %76

76:                                               ; preds = %73, %68, %63, %58, %53, %48, %43, %37, %35, %29, %19
  %77 = phi i32 [ %33, %29 ], [ 0, %35 ], [ %28, %19 ], [ 0, %73 ], [ 0, %68 ], [ 0, %63 ], [ 0, %58 ], [ 0, %53 ], [ 0, %48 ], [ 0, %43 ], [ 0, %37 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #15
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scarlett2_update_input_other(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.anon.73, align 8
  %3 = alloca %struct.anon.73, align 8
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.scarlett2_data, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.scarlett2_data, ptr %6, i32 0, i32 14
  store i8 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.scarlett2_device_info, ptr %8, i32 0, i32 6
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %1
  %14 = zext i8 %11 to i32
  %15 = getelementptr inbounds %struct.scarlett2_device_info, ptr %8, i32 0, i32 7
  %16 = load i8, ptr %15, align 2
  %17 = zext i8 %16 to i32
  %18 = add nuw nsw i32 %17, %14
  %19 = getelementptr inbounds %struct.scarlett2_data, ptr %6, i32 0, i32 23
  %20 = tail call fastcc i32 @scarlett2_usb_get_config(ptr noundef %0, i32 noundef 4, i32 noundef %18, ptr noundef %19)
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %82, label %22

22:                                               ; preds = %13, %1
  %23 = getelementptr inbounds %struct.scarlett2_device_info, ptr %8, i32 0, i32 8
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = zext i8 %24 to i32
  %28 = getelementptr inbounds %struct.scarlett2_data, ptr %6, i32 0, i32 24
  %29 = tail call fastcc i32 @scarlett2_usb_get_config(ptr noundef %0, i32 noundef 5, i32 noundef %27, ptr noundef %28)
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %82, label %31

31:                                               ; preds = %26, %22
  %32 = getelementptr inbounds %struct.scarlett2_device_info, ptr %8, i32 0, i32 9
  %33 = load i8, ptr %32, align 4
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = zext i8 %33 to i32
  %37 = getelementptr inbounds %struct.scarlett2_data, ptr %6, i32 0, i32 26
  %38 = tail call fastcc i32 @scarlett2_usb_get_config(ptr noundef %0, i32 noundef 7, i32 noundef %36, ptr noundef %37)
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %82, label %40

40:                                               ; preds = %35, %31
  %41 = getelementptr inbounds %struct.scarlett2_device_info, ptr %8, i32 0, i32 10
  %42 = load i8, ptr %41, align 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %81, label %44

44:                                               ; preds = %40
  %45 = zext i8 %42 to i32
  %46 = getelementptr inbounds %struct.scarlett2_data, ptr %6, i32 0, i32 27
  %47 = tail call fastcc i32 @scarlett2_usb_get_config(ptr noundef %0, i32 noundef 8, i32 noundef %45, ptr noundef %46)
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %82, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.scarlett2_data, ptr %6, i32 0, i32 28
  %51 = load ptr, ptr %5, align 4
  %52 = getelementptr inbounds %struct.scarlett2_data, ptr %51, i32 0, i32 4
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.scarlett2_device_info, ptr %53, i32 0, i32 2
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = getelementptr [2 x [14 x %struct.scarlett2_config]], ptr @scarlett2_config_items, i32 0, i32 %56, i32 9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  store i8 0, ptr %4, align 1, !annotation !8
  %58 = icmp ult i8 %55, 2
  br i1 %58, label %69, label %59

59:                                               ; preds = %49
  %60 = load i8, ptr %57, align 1
  %61 = zext i8 %60 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store i32 %61, ptr %2, align 8
  %62 = getelementptr inbounds %struct.anon.73, ptr %2, i32 0, i32 1
  store i32 1, ptr %62, align 4
  %63 = call fastcc i32 @scarlett2_usb(ptr noundef %0, i32 noundef 8388608, ptr noundef nonnull %2, i16 noundef zeroext 8, ptr noundef nonnull %4, i16 noundef zeroext 1) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  br label %82

66:                                               ; preds = %59
  %67 = load i8, ptr %4, align 1
  %68 = and i8 %67, 1
  store i8 %68, ptr %50, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  br label %81

69:                                               ; preds = %49
  %70 = getelementptr [2 x [14 x %struct.scarlett2_config]], ptr @scarlett2_config_items, i32 0, i32 %56, i32 9, i32 1
  %71 = load i8, ptr %70, align 1
  %72 = lshr i8 %71, 3
  %73 = zext i8 %72 to i32
  %74 = load i8, ptr %57, align 1
  %75 = zext i8 %74 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  store i32 %75, ptr %3, align 8
  %76 = getelementptr inbounds %struct.anon.73, ptr %3, i32 0, i32 1
  store i32 %73, ptr %76, align 4
  %77 = zext i8 %72 to i16
  %78 = call fastcc i32 @scarlett2_usb(ptr noundef %0, i32 noundef 8388608, ptr noundef nonnull %3, i16 noundef zeroext 8, ptr noundef %50, i16 noundef zeroext %77) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  %79 = tail call i32 @llvm.smin.i32(i32 %78, i32 0) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  %80 = icmp slt i32 %78, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %69, %66, %40
  br label %82

82:                                               ; preds = %81, %69, %65, %44, %35, %26, %13
  %83 = phi i32 [ 0, %81 ], [ %79, %69 ], [ %38, %35 ], [ %29, %26 ], [ %20, %13 ], [ %63, %65 ], [ %47, %44 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scarlett2_update_monitor_other(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.anon.73, align 8
  %3 = alloca %struct.anon.73, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.anon.73, align 8
  %6 = alloca %struct.anon.73, align 8
  %7 = alloca i8, align 1
  %8 = alloca [2 x i8], align 2
  %9 = alloca [2 x i8], align 2
  %10 = alloca i16, align 2
  %11 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 16
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.scarlett2_data, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #15
  store i16 0, ptr %8, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #15
  store i16 0, ptr %9, align 2, !annotation !8
  %15 = getelementptr inbounds %struct.scarlett2_data, ptr %12, i32 0, i32 15
  store i8 0, ptr %15, align 1
  %16 = getelementptr inbounds %struct.scarlett2_device_info, ptr %14, i32 0, i32 12
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %51, label %19

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.scarlett2_data, ptr %12, i32 0, i32 29
  %21 = load ptr, ptr %11, align 4
  %22 = getelementptr inbounds %struct.scarlett2_data, ptr %21, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.scarlett2_device_info, ptr %23, i32 0, i32 2
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = getelementptr [2 x [14 x %struct.scarlett2_config]], ptr @scarlett2_config_items, i32 0, i32 %26, i32 10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #15
  store i8 0, ptr %7, align 1, !annotation !8
  %28 = icmp eq i8 %25, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %19
  %30 = getelementptr [2 x [14 x %struct.scarlett2_config]], ptr @scarlett2_config_items, i32 0, i32 %26, i32 10, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = lshr i8 %31, 3
  %33 = zext i8 %32 to i32
  %34 = load i8, ptr %27, align 1
  %35 = zext i8 %34 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  store i32 %35, ptr %6, align 8
  %36 = getelementptr inbounds %struct.anon.73, ptr %6, i32 0, i32 1
  store i32 %33, ptr %36, align 4
  %37 = zext i8 %32 to i16
  %38 = call fastcc i32 @scarlett2_usb(ptr noundef %0, i32 noundef 8388608, ptr noundef nonnull %6, i16 noundef zeroext 8, ptr noundef %20, i16 noundef zeroext %37) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  %39 = tail call i32 @llvm.smin.i32(i32 %38, i32 0) #15
  br label %49

40:                                               ; preds = %19
  %41 = load i8, ptr %27, align 1
  %42 = zext i8 %41 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  store i32 %42, ptr %5, align 8
  %43 = getelementptr inbounds %struct.anon.73, ptr %5, i32 0, i32 1
  store i32 1, ptr %43, align 4
  %44 = call fastcc i32 @scarlett2_usb(ptr noundef %0, i32 noundef 8388608, ptr noundef nonnull %5, i16 noundef zeroext 8, ptr noundef nonnull %7, i16 noundef zeroext 1) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i8, ptr %7, align 1
  %48 = and i8 %47, 1
  store i8 %48, ptr %20, align 1
  br label %49

49:                                               ; preds = %46, %40, %29
  %50 = phi i32 [ %44, %40 ], [ %39, %29 ], [ 0, %46 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #15
  br label %131

51:                                               ; preds = %1
  %52 = getelementptr inbounds %struct.scarlett2_device_info, ptr %14, i32 0, i32 4
  %53 = load i8, ptr %52, align 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %131, label %55

55:                                               ; preds = %51
  %56 = call fastcc i32 @scarlett2_usb_get_config(ptr noundef %0, i32 noundef 12, i32 noundef 2, ptr noundef nonnull %8)
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %131, label %58

58:                                               ; preds = %55
  %59 = call fastcc i32 @scarlett2_usb_get_config(ptr noundef %0, i32 noundef 11, i32 noundef 2, ptr noundef nonnull %9)
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %131, label %61

61:                                               ; preds = %58
  %62 = load i8, ptr %8, align 2
  %63 = icmp eq i8 %62, 0
  %64 = load i8, ptr %9, align 2
  %65 = add i8 %64, 1
  %66 = select i1 %63, i8 0, i8 %65
  %67 = getelementptr inbounds %struct.scarlett2_data, ptr %12, i32 0, i32 30
  store i8 %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.scarlett2_device_info, ptr %14, i32 0, i32 5
  %69 = load i8, ptr %68, align 4
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %131, label %71

71:                                               ; preds = %61
  %72 = getelementptr %struct.scarlett2_device_info, ptr %14, i32 0, i32 16, i32 4
  %73 = load i32, ptr %72, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #15
  store i16 0, ptr %10, align 2, !annotation !8
  %74 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  %75 = load i8, ptr %74, align 1
  %76 = icmp eq i8 %75, 0
  %77 = getelementptr inbounds [2 x i8], ptr %9, i32 0, i32 1
  %78 = load i8, ptr %77, align 1
  %79 = add i8 %78, 1
  %80 = select i1 %76, i8 0, i8 %79
  %81 = getelementptr inbounds %struct.scarlett2_data, ptr %12, i32 0, i32 31
  store i8 %80, ptr %81, align 1
  %82 = load ptr, ptr %11, align 4
  %83 = getelementptr inbounds %struct.scarlett2_data, ptr %82, i32 0, i32 4
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.scarlett2_device_info, ptr %84, i32 0, i32 2
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i32
  %88 = getelementptr [2 x [14 x %struct.scarlett2_config]], ptr @scarlett2_config_items, i32 0, i32 %87, i32 13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  store i8 0, ptr %4, align 1, !annotation !8
  %89 = icmp eq i8 %86, 1
  br i1 %89, label %100, label %90

90:                                               ; preds = %71
  %91 = load i8, ptr %88, align 1
  %92 = zext i8 %91 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store i32 %92, ptr %2, align 8
  %93 = getelementptr inbounds %struct.anon.73, ptr %2, i32 0, i32 1
  store i32 1, ptr %93, align 4
  %94 = call fastcc i32 @scarlett2_usb(ptr noundef %0, i32 noundef 8388608, ptr noundef nonnull %2, i16 noundef zeroext 8, ptr noundef nonnull %4, i16 noundef zeroext 1) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  br label %129

97:                                               ; preds = %90
  %98 = load i8, ptr %4, align 1
  %99 = and i8 %98, 1
  store i8 %99, ptr %10, align 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  br label %112

100:                                              ; preds = %71
  %101 = getelementptr [2 x [14 x %struct.scarlett2_config]], ptr @scarlett2_config_items, i32 0, i32 %87, i32 13, i32 1
  %102 = load i8, ptr %101, align 1
  %103 = lshr i8 %102, 3
  %104 = zext i8 %103 to i32
  %105 = load i8, ptr %88, align 1
  %106 = zext i8 %105 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  store i32 %106, ptr %3, align 8
  %107 = getelementptr inbounds %struct.anon.73, ptr %3, i32 0, i32 1
  store i32 %104, ptr %107, align 4
  %108 = zext i8 %103 to i16
  %109 = call fastcc i32 @scarlett2_usb(ptr noundef %0, i32 noundef 8388608, ptr noundef nonnull %3, i16 noundef zeroext 8, ptr noundef nonnull %10, i16 noundef zeroext %108) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  %110 = call i32 @llvm.smin.i32(i32 %109, i32 0) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  %111 = icmp slt i32 %109, 0
  br i1 %111, label %129, label %112

112:                                              ; preds = %100, %97
  %113 = icmp sgt i32 %73, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %112
  %115 = load i16, ptr %10, align 2
  %116 = trunc i16 %115 to i8
  br label %117

117:                                              ; preds = %117, %114
  %118 = phi i8 [ %126, %117 ], [ %116, %114 ]
  %119 = phi i32 [ %122, %117 ], [ 0, %114 ]
  %120 = and i8 %118, 1
  %121 = getelementptr %struct.scarlett2_data, ptr %12, i32 0, i32 32, i32 %119
  store i8 %120, ptr %121, align 1
  %122 = add nuw nsw i32 %119, 1
  %123 = load i16, ptr %10, align 2
  %124 = lshr i16 %123, 1
  store i16 %124, ptr %10, align 2
  %125 = icmp eq i32 %122, %73
  %126 = trunc i16 %124 to i8
  br i1 %125, label %127, label %117

127:                                              ; preds = %117
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #15
  br label %131

128:                                              ; preds = %112
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #15
  br label %131

129:                                              ; preds = %100, %96
  %130 = phi i32 [ %94, %96 ], [ %110, %100 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #15
  br label %131

131:                                              ; preds = %129, %128, %127, %61, %58, %55, %51, %49
  %132 = phi i32 [ %50, %49 ], [ 0, %51 ], [ %56, %55 ], [ %59, %58 ], [ %130, %129 ], [ 0, %127 ], [ 0, %128 ], [ 0, %61 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #15
  ret i32 %132
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scarlett2_usb_get_mux(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.anon.75, align 4
  %3 = alloca [77 x i32], align 4
  %4 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 308, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(308) %3, i8 0, i32 308, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 16
  store i8 0, ptr %8, align 2
  %9 = trunc i32 %7 to i16
  %10 = getelementptr inbounds %struct.anon.75, ptr %2, i32 0, i32 1
  store i16 %9, ptr %10, align 2
  %11 = shl i16 %9, 2
  %12 = call fastcc i32 @scarlett2_usb(ptr noundef %0, i32 noundef 12289, ptr noundef nonnull %2, i16 noundef zeroext 4, ptr noundef nonnull %3, i16 noundef zeroext %11)
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %159, label %14

14:                                               ; preds = %1
  %15 = icmp sgt i32 %7, 0
  br i1 %15, label %16, label %159

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 4
  %18 = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 9
  br label %19

19:                                               ; preds = %156, %16
  %20 = phi i32 [ 0, %16 ], [ %157, %156 ]
  %21 = getelementptr [77 x i32], ptr %3, i32 0, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %17, align 4
  %24 = getelementptr inbounds %struct.scarlett2_device_info, ptr %23, i32 0, i32 16
  %25 = and i32 %22, 4095
  %26 = getelementptr %struct.scarlett2_device_info, ptr %23, i32 0, i32 16, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp ugt i32 %27, %25
  br i1 %28, label %79, label %29

29:                                               ; preds = %19
  %30 = getelementptr %struct.scarlett2_device_info, ptr %23, i32 0, i32 16, i32 1, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp ugt i32 %25, 127
  %33 = add i32 %31, 128
  %34 = icmp ugt i32 %33, %25
  %35 = select i1 %32, i1 %34, i1 false
  %36 = add nsw i32 %25, -128
  %37 = add i32 %36, %27
  br i1 %35, label %76, label %38

38:                                               ; preds = %29
  %39 = add i32 %31, %27
  %40 = getelementptr %struct.scarlett2_device_info, ptr %23, i32 0, i32 16, i32 2, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = icmp ugt i32 %25, 383
  %43 = add i32 %41, 384
  %44 = icmp ugt i32 %43, %25
  %45 = select i1 %42, i1 %44, i1 false
  %46 = add nsw i32 %25, -384
  %47 = add i32 %46, %39
  br i1 %45, label %76, label %48

48:                                               ; preds = %38
  %49 = add i32 %41, %39
  %50 = getelementptr %struct.scarlett2_device_info, ptr %23, i32 0, i32 16, i32 3, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = icmp ugt i32 %25, 511
  %53 = add i32 %51, 512
  %54 = icmp ugt i32 %53, %25
  %55 = select i1 %52, i1 %54, i1 false
  %56 = add i32 %49, %25
  %57 = add i32 %56, -512
  br i1 %55, label %76, label %58

58:                                               ; preds = %48
  %59 = getelementptr %struct.scarlett2_device_info, ptr %23, i32 0, i32 16, i32 4, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = icmp ugt i32 %25, 767
  %62 = add i32 %60, 768
  %63 = icmp ugt i32 %62, %25
  %64 = select i1 %61, i1 %63, i1 false
  %65 = add i32 %56, %51
  %66 = add i32 %65, -768
  br i1 %64, label %76, label %67

67:                                               ; preds = %58
  %68 = getelementptr %struct.scarlett2_device_info, ptr %23, i32 0, i32 16, i32 5, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = icmp ugt i32 %25, 1535
  %71 = add i32 %69, 1536
  %72 = icmp ugt i32 %71, %25
  %73 = select i1 %70, i1 %72, i1 false
  %74 = add i32 %65, -1536
  %75 = add i32 %74, %60
  br i1 %73, label %76, label %156

76:                                               ; preds = %67, %58, %48, %38, %29
  %77 = phi i32 [ %37, %29 ], [ %47, %38 ], [ %57, %48 ], [ %66, %58 ], [ %75, %67 ]
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %156, label %79

79:                                               ; preds = %76, %19
  %80 = phi i32 [ %77, %76 ], [ %25, %19 ]
  %81 = load i32, ptr %6, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %89, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %5, align 4
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.snd_usb_audio, ptr %85, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.usb_device, ptr %87, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.23, i32 noundef %22, i32 noundef %80, i32 noundef %81) #13
  br label %156

89:                                               ; preds = %79
  %90 = lshr i32 %22, 12
  %91 = load i32, ptr %24, align 4
  %92 = icmp ugt i32 %91, %90
  br i1 %92, label %143, label %93

93:                                               ; preds = %89
  %94 = getelementptr %struct.scarlett2_device_info, ptr %23, i32 0, i32 16, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = icmp ugt i32 %22, 524287
  %97 = add i32 %95, 128
  %98 = icmp ugt i32 %97, %90
  %99 = select i1 %96, i1 %98, i1 false
  %100 = add nsw i32 %90, -128
  %101 = add i32 %100, %91
  br i1 %99, label %140, label %102

102:                                              ; preds = %93
  %103 = add i32 %95, %91
  %104 = getelementptr %struct.scarlett2_device_info, ptr %23, i32 0, i32 16, i32 2
  %105 = load i32, ptr %104, align 4
  %106 = icmp ugt i32 %22, 1572863
  %107 = add i32 %105, 384
  %108 = icmp ugt i32 %107, %90
  %109 = select i1 %106, i1 %108, i1 false
  %110 = add nsw i32 %90, -384
  %111 = add i32 %110, %103
  br i1 %109, label %140, label %112

112:                                              ; preds = %102
  %113 = add i32 %105, %103
  %114 = getelementptr %struct.scarlett2_device_info, ptr %23, i32 0, i32 16, i32 3
  %115 = load i32, ptr %114, align 4
  %116 = icmp ugt i32 %22, 2097151
  %117 = add i32 %115, 512
  %118 = icmp ugt i32 %117, %90
  %119 = select i1 %116, i1 %118, i1 false
  %120 = add i32 %113, %90
  %121 = add i32 %120, -512
  br i1 %119, label %140, label %122

122:                                              ; preds = %112
  %123 = getelementptr %struct.scarlett2_device_info, ptr %23, i32 0, i32 16, i32 4
  %124 = load i32, ptr %123, align 4
  %125 = icmp ugt i32 %22, 3145727
  %126 = add i32 %124, 768
  %127 = icmp ugt i32 %126, %90
  %128 = select i1 %125, i1 %127, i1 false
  %129 = add i32 %120, %115
  %130 = add i32 %129, -768
  br i1 %128, label %140, label %131

131:                                              ; preds = %122
  %132 = getelementptr %struct.scarlett2_device_info, ptr %23, i32 0, i32 16, i32 5
  %133 = load i32, ptr %132, align 4
  %134 = icmp ugt i32 %22, 6291455
  %135 = add i32 %133, 1536
  %136 = icmp ugt i32 %135, %90
  %137 = select i1 %134, i1 %136, i1 false
  %138 = add i32 %129, -1536
  %139 = add i32 %138, %124
  br i1 %137, label %140, label %156

140:                                              ; preds = %131, %122, %112, %102, %93
  %141 = phi i32 [ %101, %93 ], [ %111, %102 ], [ %121, %112 ], [ %130, %122 ], [ %139, %131 ]
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %156, label %143

143:                                              ; preds = %140, %89
  %144 = phi i32 [ %141, %140 ], [ %90, %89 ]
  %145 = load i32, ptr %18, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %153, label %147

147:                                              ; preds = %143
  %148 = load ptr, ptr %5, align 4
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr inbounds %struct.snd_usb_audio, ptr %149, i32 0, i32 1
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.usb_device, ptr %151, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %152, ptr noundef nonnull @.str.24, i32 noundef %22, i32 noundef %144, i32 noundef %145) #13
  br label %156

153:                                              ; preds = %143
  %154 = trunc i32 %144 to i8
  %155 = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 48, i32 %80
  store i8 %154, ptr %155, align 1
  br label %156

156:                                              ; preds = %153, %147, %140, %131, %83, %76, %67
  %157 = add nuw nsw i32 %20, 1
  %158 = icmp eq i32 %157, %7
  br i1 %158, label %159, label %19

159:                                              ; preds = %156, %14, %1
  %160 = phi i32 [ %12, %1 ], [ 0, %14 ], [ 0, %156 ]
  call void @llvm.lifetime.end.p0(i64 308, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  ret i32 %160
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scarlett2_add_new_ctl(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef writeonly %5) unnamed_addr #0 {
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 152) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %6
  store ptr %0, ptr %8, align 8
  %11 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %8, i32 0, i32 1
  store i32 %2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %8, i32 0, i32 3
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %8, i32 0, i32 6
  store i32 %3, ptr %13, align 8
  %14 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %8, i32 0, i32 7
  store i32 8, ptr %14, align 4
  %15 = tail call ptr @snd_ctl_new1(ptr noundef %1, ptr noundef nonnull %8) #15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  tail call void @kfree(ptr noundef nonnull %8) #15
  br label %27

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.snd_kcontrol, ptr %15, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %19, align 4
  %20 = getelementptr inbounds %struct.snd_kcontrol, ptr %15, i32 0, i32 1, i32 4
  %21 = tail call i32 @strscpy(ptr noundef %20, ptr noundef %4, i32 noundef 44) #15
  %22 = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %8, ptr noundef nonnull %15, i1 noundef zeroext true) #15
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = icmp eq ptr %5, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %24
  store ptr %15, ptr %5, align 4
  br label %27

27:                                               ; preds = %26, %24, %18, %17, %6
  %28 = phi i32 [ -12, %17 ], [ -12, %6 ], [ %22, %18 ], [ 0, %26 ], [ 0, %24 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_mixer_elem_free(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_mixer_add_list(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @scarlett2_msd_ctl_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 33
  %9 = load i8, ptr %8, align 2
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %10, ptr %11, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_msd_ctl_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %8) #15
  %9 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 33
  %10 = load i8, ptr %9, align 2
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i8
  %15 = icmp eq i8 %10, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = zext i1 %13 to i32
  store i8 %14, ptr %9, align 2
  %18 = tail call fastcc i32 @scarlett2_usb_set_config(ptr noundef %5, i32 noundef 6, i32 noundef 0, i32 noundef %17)
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 1, i32 %18
  br label %21

21:                                               ; preds = %16, %2
  %22 = phi i32 [ 0, %2 ], [ %20, %16 ]
  tail call void @mutex_unlock(ptr noundef %8) #15
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scarlett2_usb_set_config(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.anon.73, align 8
  %6 = alloca %struct.anon.77, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 16
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.scarlett2_data, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.scarlett2_device_info, ptr %12, i32 0, i32 2
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr [2 x [14 x %struct.scarlett2_config]], ptr @scarlett2_config_items, i32 0, i32 %15, i32 %1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  %17 = getelementptr inbounds %struct.scarlett2_data, ptr %10, i32 0, i32 3
  %18 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %17) #15
  %19 = getelementptr [2 x [14 x %struct.scarlett2_config]], ptr @scarlett2_config_items, i32 0, i32 %15, i32 %1, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = icmp ugt i8 %20, 7
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = lshr i8 %20, 3
  %24 = zext i8 %23 to i32
  %25 = load i8, ptr %16, align 1
  %26 = zext i8 %25 to i32
  %27 = mul i32 %24, %2
  %28 = add i32 %27, %26
  br label %43

29:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #15
  store i8 0, ptr %8, align 1, !annotation !8
  %30 = load i8, ptr %16, align 1
  %31 = zext i8 %30 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  store i32 %31, ptr %5, align 8
  %32 = getelementptr inbounds %struct.anon.73, ptr %5, i32 0, i32 1
  store i32 1, ptr %32, align 4
  %33 = call fastcc i32 @scarlett2_usb(ptr noundef %0, i32 noundef 8388608, ptr noundef nonnull %5, i16 noundef zeroext 8, ptr noundef nonnull %8, i16 noundef zeroext 1) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  %34 = icmp eq i32 %3, 0
  %35 = shl nuw i32 1, %2
  %36 = load i8, ptr %8, align 1
  %37 = trunc i32 %35 to i8
  %38 = xor i8 %37, -1
  %39 = and i8 %36, %38
  %40 = or i8 %36, %37
  %41 = select i1 %34, i8 %39, i8 %40
  %42 = zext i8 %41 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #15
  br label %43

43:                                               ; preds = %29, %22
  %44 = phi i32 [ %3, %22 ], [ %42, %29 ]
  %45 = phi i32 [ %28, %22 ], [ %31, %29 ]
  %46 = phi i32 [ %24, %22 ], [ 1, %29 ]
  store i32 %45, ptr %6, align 4
  %47 = getelementptr inbounds %struct.anon.77, ptr %6, i32 0, i32 1
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.anon.77, ptr %6, i32 0, i32 2
  store i32 %44, ptr %48, align 4
  %49 = trunc i32 %46 to i16
  %50 = add nuw nsw i16 %49, 8
  %51 = call fastcc i32 @scarlett2_usb(ptr noundef %0, i32 noundef 8388609, ptr noundef nonnull %6, i16 noundef zeroext %50, ptr noundef null, i16 noundef zeroext 0)
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %43
  %54 = getelementptr [2 x [14 x %struct.scarlett2_config]], ptr @scarlett2_config_items, i32 0, i32 %15, i32 %1, i32 2
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  store i32 %56, ptr %7, align 4
  %57 = call fastcc i32 @scarlett2_usb(ptr noundef %0, i32 noundef 8388610, ptr noundef nonnull %7, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0)
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %53
  %60 = icmp eq i8 %55, 6
  br i1 %60, label %64, label %61

61:                                               ; preds = %59
  %62 = load ptr, ptr @system_wq, align 4
  %63 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %62, ptr noundef %17, i32 noundef 200) #15
  br label %64

64:                                               ; preds = %61, %59, %53, %43
  %65 = phi i32 [ %51, %43 ], [ %57, %53 ], [ 0, %61 ], [ 0, %59 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @scarlett2_volume_ctl_info(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 2, ptr %5, align 8
  %6 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 %7, ptr %8, align 8
  %9 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5
  store i32 0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 1
  store i32 127, ptr %10, align 4
  %11 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 2
  store i32 1, ptr %11, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_master_volume_ctl_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %8) #15
  %9 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 13
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  tail call fastcc void @scarlett2_update_volumes(ptr noundef %5)
  br label %13

13:                                               ; preds = %12, %2
  tail call void @mutex_unlock(ptr noundef %8) #15
  %14 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 19
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %16, ptr %17, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @scarlett2_update_volumes(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.anon.73, align 8
  %3 = alloca %struct.scarlett2_usb_volume_status, align 1
  %4 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 71, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(71) %3, i8 0, i32 71, i1 false), !annotation !8
  %8 = getelementptr %struct.scarlett2_device_info, ptr %7, i32 0, i32 16, i32 1, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 13
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store i32 49, ptr %2, align 8
  %11 = getelementptr inbounds %struct.anon.73, ptr %2, i32 0, i32 1
  store i32 71, ptr %11, align 4
  %12 = call fastcc i32 @scarlett2_usb(ptr noundef %0, i32 noundef 8388608, ptr noundef nonnull %2, i16 noundef zeroext 8, ptr noundef nonnull %3, i16 noundef zeroext 71) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %52, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.scarlett2_usb_volume_status, ptr %3, i32 0, i32 7
  %16 = load i16, ptr %15, align 1
  %17 = call i16 @llvm.smax.i16(i16 %16, i16 -127)
  %18 = call i16 @llvm.smin.i16(i16 %17, i16 0)
  %19 = trunc i16 %18 to i8
  %20 = add nsw i8 %19, 127
  %21 = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 19
  store i8 %20, ptr %21, align 1
  %22 = getelementptr inbounds %struct.scarlett2_device_info, ptr %7, i32 0, i32 3
  %23 = load i8, ptr %22, align 2
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 25
  %27 = load i8, ptr %26, align 2
  br label %38

28:                                               ; preds = %14
  %29 = load i8, ptr %3, align 1
  %30 = icmp ne i8 %29, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 25, i32 0
  store i8 %31, ptr %32, align 1
  %33 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = icmp ne i8 %34, 0
  %36 = zext i1 %35 to i8
  %37 = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 25, i32 1
  store i8 %36, ptr %37, align 1
  br label %38

38:                                               ; preds = %28, %25
  %39 = phi i8 [ %27, %25 ], [ %31, %28 ]
  %40 = icmp sgt i32 %9, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %49, %38
  %42 = phi i32 [ %50, %49 ], [ 0, %38 ]
  %43 = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 21, i32 %42
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 20, i32 %42
  store i8 %20, ptr %47, align 1
  %48 = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 22, i32 %42
  store i8 %39, ptr %48, align 1
  br label %49

49:                                               ; preds = %46, %41
  %50 = add nuw nsw i32 %42, 1
  %51 = icmp eq i32 %50, %9
  br i1 %51, label %52, label %41

52:                                               ; preds = %49, %38, %1
  call void @llvm.lifetime.end.p0(i64 71, ptr nonnull %3) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_volume_ctl_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.scarlett2_device_info, ptr %11, i32 0, i32 13
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = getelementptr %struct.scarlett2_device_info, ptr %11, i32 0, i32 14, i32 %9
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  br label %19

19:                                               ; preds = %15, %2
  %20 = phi i32 [ %18, %15 ], [ %9, %2 ]
  %21 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %21) #15
  %22 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 13
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  tail call fastcc void @scarlett2_update_volumes(ptr noundef %5)
  br label %26

26:                                               ; preds = %25, %19
  tail call void @mutex_unlock(ptr noundef %21) #15
  %27 = getelementptr %struct.scarlett2_data, ptr %7, i32 0, i32 20, i32 %20
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %29, ptr %30, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_volume_ctl_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.scarlett2_device_info, ptr %11, i32 0, i32 13
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = getelementptr %struct.scarlett2_device_info, ptr %11, i32 0, i32 14, i32 %9
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  br label %19

19:                                               ; preds = %15, %2
  %20 = phi i32 [ %18, %15 ], [ %9, %2 ]
  %21 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %21) #15
  %22 = getelementptr %struct.scarlett2_data, ptr %7, i32 0, i32 20, i32 %20
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %26 = load i32, ptr %25, align 8
  %27 = icmp eq i32 %26, %24
  br i1 %27, label %34, label %28

28:                                               ; preds = %19
  %29 = trunc i32 %26 to i8
  store i8 %29, ptr %22, align 1
  %30 = add i32 %26, -127
  %31 = tail call fastcc i32 @scarlett2_usb_set_config(ptr noundef %5, i32 noundef 1, i32 noundef %20, i32 noundef %30)
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 1, i32 %31
  br label %34

34:                                               ; preds = %28, %19
  %35 = phi i32 [ 0, %19 ], [ %33, %28 ]
  tail call void @mutex_unlock(ptr noundef %21) #15
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_mute_ctl_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.scarlett2_device_info, ptr %11, i32 0, i32 13
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = getelementptr %struct.scarlett2_device_info, ptr %11, i32 0, i32 14, i32 %9
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  br label %19

19:                                               ; preds = %15, %2
  %20 = phi i32 [ %18, %15 ], [ %9, %2 ]
  %21 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %21) #15
  %22 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 13
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  tail call fastcc void @scarlett2_update_volumes(ptr noundef %5)
  br label %26

26:                                               ; preds = %25, %19
  tail call void @mutex_unlock(ptr noundef %21) #15
  %27 = getelementptr %struct.scarlett2_data, ptr %7, i32 0, i32 22, i32 %20
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %29, ptr %30, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_mute_ctl_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.scarlett2_device_info, ptr %11, i32 0, i32 13
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = getelementptr %struct.scarlett2_device_info, ptr %11, i32 0, i32 14, i32 %9
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  br label %19

19:                                               ; preds = %15, %2
  %20 = phi i32 [ %18, %15 ], [ %9, %2 ]
  %21 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %21) #15
  %22 = getelementptr %struct.scarlett2_data, ptr %7, i32 0, i32 22, i32 %20
  %23 = load i8, ptr %22, align 1
  %24 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i8
  %28 = icmp eq i8 %23, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %19
  %30 = zext i1 %26 to i32
  store i8 %27, ptr %22, align 1
  %31 = tail call fastcc i32 @scarlett2_usb_set_config(ptr noundef %5, i32 noundef 2, i32 noundef %20, i32 noundef %30)
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 1, i32 %31
  br label %34

34:                                               ; preds = %29, %19
  %35 = phi i32 [ 0, %19 ], [ %33, %29 ]
  tail call void @mutex_unlock(ptr noundef %21) #15
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_sw_hw_enum_ctl_info(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @snd_ctl_enum_info(ptr noundef %1, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @scarlett2_sw_hw_enum_ctl_info.values) #15
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @scarlett2_sw_hw_enum_ctl_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.scarlett2_device_info, ptr %11, i32 0, i32 13
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = getelementptr %struct.scarlett2_device_info, ptr %11, i32 0, i32 14, i32 %9
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  br label %19

19:                                               ; preds = %15, %2
  %20 = phi i32 [ %18, %15 ], [ %9, %2 ]
  %21 = getelementptr %struct.scarlett2_data, ptr %7, i32 0, i32 21, i32 %20
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %23, ptr %24, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_sw_hw_enum_ctl_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.scarlett2_device_info, ptr %11, i32 0, i32 13
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = getelementptr %struct.scarlett2_device_info, ptr %11, i32 0, i32 14, i32 %9
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  br label %19

19:                                               ; preds = %15, %2
  %20 = phi i32 [ %18, %15 ], [ %9, %2 ]
  %21 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %21) #15
  %22 = getelementptr %struct.scarlett2_data, ptr %7, i32 0, i32 21, i32 %20
  %23 = load i8, ptr %22, align 1
  %24 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i8
  %28 = icmp eq i8 %23, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %19
  %30 = zext i1 %26 to i32
  %31 = tail call fastcc i32 @scarlett2_sw_hw_change(ptr noundef %5, i32 noundef %9, i32 noundef %30)
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 1, i32 %31
  br label %34

34:                                               ; preds = %29, %19
  %35 = phi i32 [ 0, %19 ], [ %33, %29 ]
  tail call void @mutex_unlock(ptr noundef %21) #15
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scarlett2_sw_hw_change(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scarlett2_device_info, ptr %7, i32 0, i32 13
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = getelementptr %struct.scarlett2_device_info, ptr %7, i32 0, i32 14, i32 %1
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi i32 [ %14, %11 ], [ %1, %3 ]
  %17 = trunc i32 %2 to i8
  %18 = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 21, i32 %16
  store i8 %17, ptr %18, align 1
  %19 = icmp eq i32 %2, 0
  %20 = load ptr, ptr %4, align 4
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr inbounds %struct.snd_usb_audio, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr %struct.scarlett2_data, ptr %20, i32 0, i32 36, i32 %1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.snd_kcontrol, ptr %25, i32 1, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  br i1 %19, label %28, label %35

28:                                               ; preds = %15
  %29 = or i32 %27, 2
  store i32 %29, ptr %26, align 4
  %30 = getelementptr %struct.scarlett2_data, ptr %20, i32 0, i32 38, i32 %1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.snd_kcontrol, ptr %31, i32 1, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = or i32 %33, 2
  store i32 %34, ptr %32, align 4
  br label %42

35:                                               ; preds = %15
  %36 = and i32 %27, -3
  store i32 %36, ptr %26, align 4
  %37 = getelementptr %struct.scarlett2_data, ptr %20, i32 0, i32 38, i32 %1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.snd_kcontrol, ptr %38, i32 1, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, -3
  store i32 %41, ptr %39, align 4
  br label %42

42:                                               ; preds = %35, %28
  %43 = load ptr, ptr %24, align 4
  %44 = getelementptr inbounds %struct.snd_kcontrol, ptr %43, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %23, i32 noundef 3, ptr noundef %44) #15
  %45 = getelementptr %struct.scarlett2_data, ptr %20, i32 0, i32 38, i32 %1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.snd_kcontrol, ptr %46, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %23, i32 noundef 3, ptr noundef %47) #15
  %48 = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 19
  %49 = load i8, ptr %48, align 1
  %50 = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 20, i32 %16
  store i8 %49, ptr %50, align 1
  %51 = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 25
  %52 = load i8, ptr %51, align 2
  %53 = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 22, i32 %16
  store i8 %52, ptr %53, align 1
  %54 = load i8, ptr %48, align 1
  %55 = zext i8 %54 to i32
  %56 = add nsw i32 %55, -127
  %57 = tail call fastcc i32 @scarlett2_usb_set_config(ptr noundef %0, i32 noundef 1, i32 noundef %16, i32 noundef %56)
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %42
  %60 = load i8, ptr %51, align 2
  %61 = zext i8 %60 to i32
  %62 = tail call fastcc i32 @scarlett2_usb_set_config(ptr noundef %0, i32 noundef 2, i32 noundef %16, i32 noundef %61)
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = tail call fastcc i32 @scarlett2_usb_set_config(ptr noundef %0, i32 noundef 3, i32 noundef %16, i32 noundef %2)
  br label %66

66:                                               ; preds = %64, %59, %42
  %67 = phi i32 [ %65, %64 ], [ %57, %42 ], [ %62, %59 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_dim_mute_ctl_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %8) #15
  %9 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 13
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  tail call fastcc void @scarlett2_update_volumes(ptr noundef %5)
  br label %13

13:                                               ; preds = %12, %2
  tail call void @mutex_unlock(ptr noundef %8) #15
  %14 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.scarlett2_data, ptr %7, i32 0, i32 25, i32 %15
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %18, ptr %19, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_dim_mute_ctl_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.scarlett2_device_info, ptr %9, i32 0, i32 16, i32 1, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %14) #15
  %15 = getelementptr %struct.scarlett2_data, ptr %7, i32 0, i32 25, i32 %13
  %16 = load i8, ptr %15, align 1
  %17 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i8
  %21 = icmp eq i8 %16, %20
  br i1 %21, label %56, label %22

22:                                               ; preds = %2
  %23 = zext i1 %19 to i32
  store i8 %20, ptr %15, align 1
  %24 = tail call fastcc i32 @scarlett2_usb_set_config(ptr noundef %5, i32 noundef 0, i32 noundef %13, i32 noundef %23)
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 1, i32 %24
  %27 = icmp eq i32 %13, 0
  %28 = icmp sgt i32 %11, 0
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %56

30:                                               ; preds = %53, %22
  %31 = phi i32 [ %54, %53 ], [ 0, %22 ]
  %32 = load ptr, ptr %8, align 4
  %33 = getelementptr inbounds %struct.scarlett2_device_info, ptr %32, i32 0, i32 13
  %34 = load i8, ptr %33, align 4
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = getelementptr %struct.scarlett2_device_info, ptr %32, i32 0, i32 14, i32 %31
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  br label %40

40:                                               ; preds = %36, %30
  %41 = phi i32 [ %39, %36 ], [ %31, %30 ]
  %42 = getelementptr %struct.scarlett2_data, ptr %7, i32 0, i32 21, i32 %41
  %43 = load i8, ptr %42, align 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %40
  %46 = getelementptr %struct.scarlett2_data, ptr %7, i32 0, i32 22, i32 %41
  store i8 %20, ptr %46, align 1
  %47 = load ptr, ptr %5, align 4
  %48 = getelementptr inbounds %struct.snd_usb_audio, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr %struct.scarlett2_data, ptr %7, i32 0, i32 38, i32 %31
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.snd_kcontrol, ptr %51, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %49, i32 noundef 1, ptr noundef %52) #15
  br label %53

53:                                               ; preds = %45, %40
  %54 = add nuw nsw i32 %31, 1
  %55 = icmp eq i32 %54, %11
  br i1 %55, label %56, label %30

56:                                               ; preds = %53, %22, %2
  %57 = phi i32 [ 0, %2 ], [ %26, %22 ], [ %26, %53 ]
  tail call void @mutex_unlock(ptr noundef %14) #15
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_level_enum_ctl_info(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @snd_ctl_enum_info(ptr noundef %1, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @scarlett2_level_enum_ctl_info.values) #15
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_level_enum_ctl_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.scarlett2_device_info, ptr %9, i32 0, i32 7
  %13 = load i8, ptr %12, align 2
  %14 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %14) #15
  %15 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 14
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = tail call fastcc i32 @scarlett2_update_input_other(ptr noundef %5)
  br label %20

20:                                               ; preds = %18, %2
  %21 = zext i8 %13 to i32
  %22 = add i32 %11, %21
  %23 = getelementptr %struct.scarlett2_data, ptr %7, i32 0, i32 23, i32 %22
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %25, ptr %26, align 8
  tail call void @mutex_unlock(ptr noundef %14) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_level_enum_ctl_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.scarlett2_device_info, ptr %9, i32 0, i32 7
  %13 = load i8, ptr %12, align 2
  %14 = zext i8 %13 to i32
  %15 = add i32 %11, %14
  %16 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %16) #15
  %17 = getelementptr %struct.scarlett2_data, ptr %7, i32 0, i32 23, i32 %15
  %18 = load i8, ptr %17, align 1
  %19 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i8
  %23 = icmp eq i8 %18, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %2
  %25 = zext i1 %21 to i32
  store i8 %22, ptr %17, align 1
  %26 = tail call fastcc i32 @scarlett2_usb_set_config(ptr noundef %5, i32 noundef 4, i32 noundef %15, i32 noundef %25)
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 1, i32 %26
  br label %29

29:                                               ; preds = %24, %2
  %30 = phi i32 [ 0, %2 ], [ %28, %24 ]
  tail call void @mutex_unlock(ptr noundef %16) #15
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_pad_ctl_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %8) #15
  %9 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 14
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = tail call fastcc i32 @scarlett2_update_input_other(ptr noundef %5)
  br label %14

14:                                               ; preds = %12, %2
  %15 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr %struct.scarlett2_data, ptr %7, i32 0, i32 24, i32 %16
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %19, ptr %20, align 8
  tail call void @mutex_unlock(ptr noundef %8) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_pad_ctl_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %10) #15
  %11 = getelementptr %struct.scarlett2_data, ptr %7, i32 0, i32 24, i32 %9
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i8
  %17 = icmp eq i8 %12, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = zext i1 %15 to i32
  store i8 %16, ptr %11, align 1
  %20 = tail call fastcc i32 @scarlett2_usb_set_config(ptr noundef %5, i32 noundef 5, i32 noundef %9, i32 noundef %19)
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 1, i32 %20
  br label %23

23:                                               ; preds = %18, %2
  %24 = phi i32 [ 0, %2 ], [ %22, %18 ]
  tail call void @mutex_unlock(ptr noundef %10) #15
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_air_ctl_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %8) #15
  %9 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 14
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = tail call fastcc i32 @scarlett2_update_input_other(ptr noundef %5)
  br label %14

14:                                               ; preds = %12, %2
  %15 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr %struct.scarlett2_data, ptr %7, i32 0, i32 26, i32 %16
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %19, ptr %20, align 8
  tail call void @mutex_unlock(ptr noundef %8) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_air_ctl_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %10) #15
  %11 = getelementptr %struct.scarlett2_data, ptr %7, i32 0, i32 26, i32 %9
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i8
  %17 = icmp eq i8 %12, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = zext i1 %15 to i32
  store i8 %16, ptr %11, align 1
  %20 = tail call fastcc i32 @scarlett2_usb_set_config(ptr noundef %5, i32 noundef 7, i32 noundef %9, i32 noundef %19)
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 1, i32 %20
  br label %23

23:                                               ; preds = %18, %2
  %24 = phi i32 [ 0, %2 ], [ %22, %18 ]
  tail call void @mutex_unlock(ptr noundef %10) #15
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_phantom_ctl_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %8) #15
  %9 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 14
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = tail call fastcc i32 @scarlett2_update_input_other(ptr noundef %5)
  br label %14

14:                                               ; preds = %12, %2
  %15 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr %struct.scarlett2_data, ptr %7, i32 0, i32 27, i32 %16
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %19, ptr %20, align 8
  tail call void @mutex_unlock(ptr noundef %8) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_phantom_ctl_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %10) #15
  %11 = getelementptr %struct.scarlett2_data, ptr %7, i32 0, i32 27, i32 %9
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i8
  %17 = icmp eq i8 %12, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = zext i1 %15 to i32
  store i8 %16, ptr %11, align 1
  %20 = tail call fastcc i32 @scarlett2_usb_set_config(ptr noundef %5, i32 noundef 8, i32 noundef %9, i32 noundef %19)
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 1, i32 %20
  br label %23

23:                                               ; preds = %18, %2
  %24 = phi i32 [ 0, %2 ], [ %22, %18 ]
  tail call void @mutex_unlock(ptr noundef %10) #15
  ret i32 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @scarlett2_phantom_persistence_ctl_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 28
  %9 = load i8, ptr %8, align 2
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %10, ptr %11, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_phantom_persistence_ctl_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %10) #15
  %11 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 28
  %12 = load i8, ptr %11, align 2
  %13 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i8
  %17 = icmp eq i8 %12, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = zext i1 %15 to i32
  store i8 %16, ptr %11, align 2
  %20 = tail call fastcc i32 @scarlett2_usb_set_config(ptr noundef %5, i32 noundef 9, i32 noundef %9, i32 noundef %19)
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 1, i32 %20
  br label %23

23:                                               ; preds = %18, %2
  %24 = phi i32 [ 0, %2 ], [ %22, %18 ]
  tail call void @mutex_unlock(ptr noundef %10) #15
  ret i32 %24
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_mux_src_enum_ctl_info(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #10 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.scarlett2_device_info, ptr %9, i32 0, i32 16
  %11 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5
  %12 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 9
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 3, ptr %16, align 8
  %17 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 %18, ptr %19, align 8
  store i32 %15, ptr %11, align 8
  %20 = icmp ult i32 %13, %15
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = add i32 %15, -1
  store i32 %22, ptr %12, align 4
  br label %23

23:                                               ; preds = %21, %2
  %24 = phi i32 [ %22, %21 ], [ %13, %2 ]
  %25 = load i32, ptr %10, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %57, %52, %47, %42, %37, %23
  %28 = phi i32 [ 0, %23 ], [ 1, %37 ], [ 2, %42 ], [ 3, %47 ], [ 4, %52 ], [ 5, %57 ]
  %29 = phi i32 [ %24, %23 ], [ %38, %37 ], [ %43, %42 ], [ %48, %47 ], [ %53, %52 ], [ %58, %57 ]
  %30 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 2
  %31 = getelementptr [6 x %struct.scarlett2_port], ptr @scarlett2_ports, i32 0, i32 %28, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr [6 x %struct.scarlett2_port], ptr @scarlett2_ports, i32 0, i32 %28, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %29
  %36 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %30, ptr noundef %32, i32 noundef %35)
  br label %62

37:                                               ; preds = %23
  %38 = sub i32 %24, %25
  %39 = getelementptr %struct.scarlett2_device_info, ptr %9, i32 0, i32 16, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp ult i32 %38, %40
  br i1 %41, label %27, label %42

42:                                               ; preds = %37
  %43 = sub i32 %38, %40
  %44 = getelementptr %struct.scarlett2_device_info, ptr %9, i32 0, i32 16, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = icmp ult i32 %43, %45
  br i1 %46, label %27, label %47

47:                                               ; preds = %42
  %48 = sub i32 %43, %45
  %49 = getelementptr %struct.scarlett2_device_info, ptr %9, i32 0, i32 16, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = icmp ult i32 %48, %50
  br i1 %51, label %27, label %52

52:                                               ; preds = %47
  %53 = sub i32 %48, %50
  %54 = getelementptr %struct.scarlett2_device_info, ptr %9, i32 0, i32 16, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = icmp ult i32 %53, %55
  br i1 %56, label %27, label %57

57:                                               ; preds = %52
  %58 = sub i32 %53, %55
  %59 = getelementptr %struct.scarlett2_device_info, ptr %9, i32 0, i32 16, i32 5
  %60 = load i32, ptr %59, align 4
  %61 = icmp ult i32 %58, %60
  br i1 %61, label %27, label %62

62:                                               ; preds = %57, %27
  %63 = phi i32 [ 0, %27 ], [ -22, %57 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_mux_src_enum_ctl_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.scarlett2_device_info, ptr %9, i32 0, i32 16, i32 1, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp slt i32 %13, %11
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.scarlett2_device_info, ptr %9, i32 0, i32 13
  %17 = load i8, ptr %16, align 4
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr %struct.scarlett2_device_info, ptr %9, i32 0, i32 14, i32 %13
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  br label %23

23:                                               ; preds = %19, %15, %2
  %24 = phi i32 [ %13, %2 ], [ %22, %19 ], [ %13, %15 ]
  %25 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %25) #15
  %26 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 16
  %27 = load i8, ptr %26, align 2
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = tail call fastcc i32 @scarlett2_usb_get_mux(ptr noundef %5)
  br label %31

31:                                               ; preds = %29, %23
  %32 = getelementptr %struct.scarlett2_data, ptr %7, i32 0, i32 48, i32 %24
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %34, ptr %35, align 8
  tail call void @mutex_unlock(ptr noundef %25) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_mux_src_enum_ctl_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.anon.78, align 2
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_mixer_interface, ptr %6, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.scarlett2_data, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.scarlett2_device_info, ptr %10, i32 0, i32 16, i32 1, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp slt i32 %14, %12
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.scarlett2_device_info, ptr %10, i32 0, i32 13
  %18 = load i8, ptr %17, align 4
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr %struct.scarlett2_device_info, ptr %10, i32 0, i32 14, i32 %14
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  br label %24

24:                                               ; preds = %20, %16, %2
  %25 = phi i32 [ %14, %2 ], [ %23, %20 ], [ %14, %16 ]
  %26 = getelementptr inbounds %struct.scarlett2_data, ptr %8, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %26) #15
  %27 = getelementptr %struct.scarlett2_data, ptr %8, i32 0, i32 48, i32 %25
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %31 = load i32, ptr %30, align 8
  %32 = getelementptr inbounds %struct.scarlett2_data, ptr %8, i32 0, i32 9
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, -1
  %35 = tail call i32 @llvm.umin.i32(i32 %31, i32 %34)
  %36 = icmp eq i32 %35, %29
  br i1 %36, label %157, label %37

37:                                               ; preds = %24
  %38 = trunc i32 %35 to i8
  store i8 %38, ptr %27, align 1
  %39 = load ptr, ptr %7, align 4
  %40 = getelementptr inbounds %struct.scarlett2_data, ptr %39, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.scarlett2_device_info, ptr %41, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 312, ptr nonnull %3) #15
  %43 = getelementptr inbounds %struct.anon.78, ptr %3, i32 0, i32 1
  %44 = getelementptr %struct.scarlett2_device_info, ptr %41, i32 0, i32 16, i32 1
  %45 = getelementptr %struct.scarlett2_device_info, ptr %41, i32 0, i32 16, i32 2
  %46 = getelementptr %struct.scarlett2_device_info, ptr %41, i32 0, i32 16, i32 3
  %47 = getelementptr %struct.scarlett2_device_info, ptr %41, i32 0, i32 16, i32 4
  %48 = getelementptr %struct.scarlett2_device_info, ptr %41, i32 0, i32 16, i32 5
  %49 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(312) %3, i8 0, i64 312, i1 false) #15
  br label %53

50:                                               ; preds = %148
  %51 = add nuw nsw i32 %54, 1
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %156, label %53

53:                                               ; preds = %50, %37
  %54 = phi i32 [ 0, %37 ], [ %51, %50 ]
  %55 = trunc i32 %54 to i16
  store i16 %55, ptr %43, align 2
  %56 = getelementptr %struct.scarlett2_device_info, ptr %41, i32 0, i32 17, i32 %54
  %57 = getelementptr inbounds %struct.scarlett2_mux_entry, ptr %56, i32 0, i32 2
  %58 = load i8, ptr %57, align 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %148, label %60

60:                                               ; preds = %142, %53
  %61 = phi i8 [ %146, %142 ], [ %58, %53 ]
  %62 = phi i32 [ %143, %142 ], [ 0, %53 ]
  %63 = phi ptr [ %144, %142 ], [ %56, %53 ]
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  %66 = getelementptr inbounds %struct.scarlett2_mux_entry, ptr %63, i32 0, i32 1
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp eq i8 %64, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %70, %60
  %71 = phi i32 [ %75, %70 ], [ 0, %60 ]
  %72 = phi i32 [ %76, %70 ], [ 0, %60 ]
  %73 = getelementptr [2 x i32], ptr %42, i32 %72, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, %71
  %76 = add nuw nsw i32 %72, 1
  %77 = icmp eq i32 %76, %65
  br i1 %77, label %78, label %70

78:                                               ; preds = %70, %60
  %79 = phi i32 [ 0, %60 ], [ %75, %70 ]
  %80 = getelementptr [6 x %struct.scarlett2_port], ptr @scarlett2_ports, i32 0, i32 %65
  %81 = load i16, ptr %80, align 4
  %82 = zext i16 %81 to i32
  %83 = add nuw nsw i32 %82, %68
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %78
  %86 = shl i32 %62, 2
  %87 = getelementptr i8, ptr %49, i32 %86
  %88 = tail call i8 @llvm.umax.i8(i8 %61, i8 1) #15
  %89 = zext i8 %88 to i32
  %90 = shl nuw nsw i32 %89, 2
  call void @llvm.memset.p0.i32(ptr align 2 %87, i8 0, i32 %90, i1 false) #15
  %91 = add i32 %62, %89
  br label %142

92:                                               ; preds = %78
  %93 = add i32 %79, %68
  %94 = load i32, ptr %42, align 4
  %95 = tail call i8 @llvm.umax.i8(i8 %61, i8 1) #15
  %96 = zext i8 %95 to i32
  %97 = add i32 %62, %96
  br label %98

98:                                               ; preds = %134, %92
  %99 = phi i32 [ %83, %92 ], [ %140, %134 ]
  %100 = phi i32 [ %93, %92 ], [ %102, %134 ]
  %101 = phi i32 [ %62, %92 ], [ %138, %134 ]
  %102 = add i32 %100, 1
  %103 = getelementptr %struct.scarlett2_data, ptr %39, i32 0, i32 48, i32 %100
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp sgt i32 %94, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %130, %126, %122, %118, %114, %98
  %108 = phi i32 [ 0, %98 ], [ 1, %114 ], [ 2, %118 ], [ 3, %122 ], [ 4, %126 ], [ 5, %130 ]
  %109 = phi i32 [ %105, %98 ], [ %115, %114 ], [ %119, %118 ], [ %123, %122 ], [ %127, %126 ], [ %131, %130 ]
  %110 = getelementptr [6 x %struct.scarlett2_port], ptr @scarlett2_ports, i32 0, i32 %108
  %111 = load i16, ptr %110, align 4
  %112 = zext i16 %111 to i32
  %113 = or i32 %109, %112
  br label %134

114:                                              ; preds = %98
  %115 = sub i32 %105, %94
  %116 = load i32, ptr %44, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %107, label %118

118:                                              ; preds = %114
  %119 = sub i32 %115, %116
  %120 = load i32, ptr %45, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %107, label %122

122:                                              ; preds = %118
  %123 = sub i32 %119, %120
  %124 = load i32, ptr %46, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %107, label %126

126:                                              ; preds = %122
  %127 = sub i32 %123, %124
  %128 = load i32, ptr %47, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %107, label %130

130:                                              ; preds = %126
  %131 = sub i32 %127, %128
  %132 = load i32, ptr %48, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %107, label %134

134:                                              ; preds = %130, %107
  %135 = phi i32 [ %113, %107 ], [ 0, %130 ]
  %136 = shl i32 %135, 12
  %137 = or i32 %136, %99
  %138 = add i32 %101, 1
  %139 = getelementptr %struct.anon.78, ptr %3, i32 0, i32 2, i32 %101
  store i32 %137, ptr %139, align 2
  %140 = add nuw nsw i32 %99, 1
  %141 = icmp eq i32 %138, %97
  br i1 %141, label %142, label %98

142:                                              ; preds = %134, %85
  %143 = phi i32 [ %91, %85 ], [ %97, %134 ]
  %144 = getelementptr %struct.scarlett2_mux_entry, ptr %63, i32 1
  %145 = getelementptr %struct.scarlett2_mux_entry, ptr %63, i32 1, i32 2
  %146 = load i8, ptr %145, align 1
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %60

148:                                              ; preds = %142, %53
  %149 = phi i32 [ 0, %53 ], [ %143, %142 ]
  %150 = trunc i32 %149 to i16
  %151 = shl i16 %150, 2
  %152 = add i16 %151, 4
  %153 = call fastcc i32 @scarlett2_usb(ptr noundef %6, i32 noundef 12290, ptr noundef nonnull %3, i16 noundef zeroext %152, ptr noundef null, i16 noundef zeroext 0) #15
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %50

155:                                              ; preds = %148
  call void @llvm.lifetime.end.p0(i64 312, ptr nonnull %3) #15
  br label %157

156:                                              ; preds = %50
  call void @llvm.lifetime.end.p0(i64 312, ptr nonnull %3) #15
  br label %157

157:                                              ; preds = %156, %155, %24
  %158 = phi i32 [ 0, %24 ], [ 1, %156 ], [ %153, %155 ]
  tail call void @mutex_unlock(ptr noundef %26) #15
  ret i32 %158
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @scarlett2_mixer_ctl_info(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 2, ptr %5, align 8
  %6 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 %7, ptr %8, align 8
  %9 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5
  store i32 0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 1
  store i32 172, ptr %10, align 4
  %11 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 2
  store i32 1, ptr %11, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @scarlett2_mixer_ctl_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.scarlett2_data, ptr %7, i32 0, i32 49, i32 %9
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %12, ptr %13, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_mixer_ctl_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.anon.79, align 2
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_mixer_interface, ptr %6, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.scarlett2_data, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.scarlett2_data, ptr %8, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %13) #15
  %14 = getelementptr %struct.scarlett2_data, ptr %8, i32 0, i32 49, i32 %12
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, %16
  br i1 %19, label %54, label %20

20:                                               ; preds = %2
  %21 = getelementptr %struct.scarlett2_device_info, ptr %10, i32 0, i32 16, i32 4, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = sdiv i32 %12, %22
  %24 = trunc i32 %18 to i8
  store i8 %24, ptr %14, align 1
  %25 = load ptr, ptr %7, align 4
  %26 = getelementptr inbounds %struct.scarlett2_data, ptr %25, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %3) #15
  %28 = getelementptr inbounds i8, ptr %3, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(52) %28, i8 0, i32 50, i1 false) #15, !annotation !8
  %29 = getelementptr %struct.scarlett2_device_info, ptr %27, i32 0, i32 16, i32 4, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = trunc i32 %23 to i16
  store i16 %31, ptr %3, align 2
  %32 = icmp sgt i32 %30, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %20
  %34 = mul i32 %30, %23
  br label %35

35:                                               ; preds = %35, %33
  %36 = phi i32 [ %45, %35 ], [ %34, %33 ]
  %37 = phi i32 [ %44, %35 ], [ 0, %33 ]
  %38 = getelementptr %struct.scarlett2_data, ptr %25, i32 0, i32 49, i32 %36
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = getelementptr [173 x i16], ptr @scarlett2_mixer_values, i32 0, i32 %40
  %42 = load i16, ptr %41, align 2
  %43 = getelementptr %struct.anon.79, ptr %3, i32 0, i32 1, i32 %37
  store i16 %42, ptr %43, align 2
  %44 = add nuw nsw i32 %37, 1
  %45 = add i32 %36, 1
  %46 = icmp eq i32 %44, %30
  br i1 %46, label %47, label %35

47:                                               ; preds = %35, %20
  %48 = trunc i32 %30 to i16
  %49 = shl i16 %48, 1
  %50 = add i16 %49, 2
  %51 = call fastcc i32 @scarlett2_usb(ptr noundef %6, i32 noundef 8194, ptr noundef nonnull %3, i16 noundef zeroext %50, ptr noundef null, i16 noundef zeroext 0) #15
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %3) #15
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i32 1, i32 %51
  br label %54

54:                                               ; preds = %47, %2
  %55 = phi i32 [ 0, %2 ], [ %53, %47 ]
  tail call void @mutex_unlock(ptr noundef %13) #15
  ret i32 %55
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @scarlett2_meter_ctl_info(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 2, ptr %5, align 8
  %6 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 %7, ptr %8, align 8
  %9 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5
  store i32 0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 1
  store i32 4095, ptr %10, align 4
  %11 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 2
  store i32 1, ptr %11, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_meter_ctl_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca %struct.anon.80, align 8
  %4 = alloca [65 x i32], align 4
  %5 = alloca [65 x i16], align 2
  %6 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(130) %5, i8 0, i32 130, i1 false), !annotation !8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %7, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = trunc i32 %10 to i16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  store i64 4294967296, ptr %3, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(260) %4, i8 0, i32 260, i1 false) #15, !annotation !8
  %12 = getelementptr inbounds %struct.anon.80, ptr %3, i32 0, i32 1
  store i16 %11, ptr %12, align 2
  %13 = and i32 %10, 65535
  %14 = shl i16 %11, 2
  %15 = call fastcc i32 @scarlett2_usb(ptr noundef %8, i32 noundef 4097, ptr noundef nonnull %3, i16 noundef zeroext 8, ptr noundef nonnull %4, i16 noundef zeroext %14) #15
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %42

18:                                               ; preds = %2
  %19 = icmp eq i16 %11, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %20, %18
  %21 = phi i32 [ %26, %20 ], [ 0, %18 ]
  %22 = getelementptr [65 x i32], ptr %4, i32 0, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = trunc i32 %23 to i16
  %25 = getelementptr i16, ptr %5, i32 %21
  store i16 %24, ptr %25, align 2
  %26 = add nuw nsw i32 %21, 1
  %27 = icmp eq i32 %26, %13
  br i1 %27, label %28, label %20

28:                                               ; preds = %20, %18
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  %29 = load i32, ptr %9, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  br label %33

33:                                               ; preds = %33, %31
  %34 = phi i32 [ 0, %31 ], [ %39, %33 ]
  %35 = getelementptr [65 x i16], ptr %5, i32 0, i32 %34
  %36 = load i16, ptr %35, align 2
  %37 = zext i16 %36 to i32
  %38 = getelementptr [128 x i32], ptr %32, i32 0, i32 %34
  store i32 %37, ptr %38, align 4
  %39 = add nuw nsw i32 %34, 1
  %40 = load i32, ptr %9, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %33, label %42

42:                                               ; preds = %33, %28, %17
  %43 = phi i32 [ %15, %17 ], [ 0, %28 ], [ 0, %33 ]
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %5) #15
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_sync_ctl_info(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @snd_ctl_enum_info(ptr noundef %1, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @scarlett2_sync_ctl_info.texts) #15
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_sync_ctl_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_mixer_interface, ptr %6, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.scarlett2_data, ptr %8, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %9) #15
  %10 = getelementptr inbounds %struct.scarlett2_data, ptr %8, i32 0, i32 12
  %11 = load i8, ptr %10, align 2
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr inbounds %struct.scarlett2_data, ptr %14, i32 0, i32 12
  store i8 0, ptr %15, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !annotation !8
  %16 = call fastcc i32 @scarlett2_usb(ptr noundef %6, i32 noundef 24580, ptr noundef null, i16 noundef zeroext 0, ptr noundef nonnull %3, i16 noundef zeroext 4) #15
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.scarlett2_data, ptr %14, i32 0, i32 18
  %20 = load i32, ptr %3, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i8
  store i8 %22, ptr %19, align 1
  br label %23

23:                                               ; preds = %18, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  br label %24

24:                                               ; preds = %23, %2
  %25 = getelementptr inbounds %struct.scarlett2_data, ptr %8, i32 0, i32 18
  %26 = load i8, ptr %25, align 4
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %27, ptr %28, align 8
  call void @mutex_unlock(ptr noundef %9) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_direct_monitor_ctl_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %8) #15
  %9 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 15
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = tail call fastcc i32 @scarlett2_update_monitor_other(ptr noundef %5)
  br label %14

14:                                               ; preds = %12, %2
  %15 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 29
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %17, ptr %18, align 8
  tail call void @mutex_unlock(ptr noundef %8) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_direct_monitor_ctl_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %10) #15
  %11 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 29
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 2)
  %17 = icmp eq i32 %16, %13
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = trunc i32 %16 to i8
  store i8 %19, ptr %11, align 1
  %20 = tail call fastcc i32 @scarlett2_usb_set_config(ptr noundef %5, i32 noundef 10, i32 noundef %9, i32 noundef %16)
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 1, i32 %20
  br label %23

23:                                               ; preds = %18, %2
  %24 = phi i32 [ 0, %2 ], [ %22, %18 ]
  tail call void @mutex_unlock(ptr noundef %10) #15
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_direct_monitor_stereo_enum_ctl_info(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @snd_ctl_enum_info(ptr noundef %1, i32 noundef 1, i32 noundef 3, ptr noundef nonnull @scarlett2_direct_monitor_stereo_enum_ctl_info.values) #15
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_speaker_switch_enum_ctl_info(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @snd_ctl_enum_info(ptr noundef %1, i32 noundef 1, i32 noundef 3, ptr noundef nonnull @scarlett2_speaker_switch_enum_ctl_info.values) #15
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_speaker_switch_enum_ctl_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %8) #15
  %9 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 15
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = tail call fastcc i32 @scarlett2_update_monitor_other(ptr noundef %5)
  br label %14

14:                                               ; preds = %12, %2
  %15 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 30
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %17, ptr %18, align 8
  tail call void @mutex_unlock(ptr noundef %8) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_speaker_switch_enum_ctl_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %8) #15
  %9 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 30
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 2)
  %15 = icmp eq i32 %14, %11
  br i1 %15, label %174, label %16

16:                                               ; preds = %2
  %17 = trunc i32 %14 to i8
  store i8 %17, ptr %9, align 4
  %18 = icmp ne i32 %14, 0
  %19 = zext i1 %18 to i32
  %20 = tail call fastcc i32 @scarlett2_usb_set_config(ptr noundef %5, i32 noundef 12, i32 noundef 0, i32 noundef %19)
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %174, label %22

22:                                               ; preds = %16
  %23 = icmp ugt i32 %13, 1
  %24 = zext i1 %23 to i32
  %25 = tail call fastcc i32 @scarlett2_usb_set_config(ptr noundef %5, i32 noundef 11, i32 noundef 0, i32 noundef %24)
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %174, label %27

27:                                               ; preds = %22
  %28 = icmp eq i8 %10, 0
  %29 = select i1 %28, i1 %18, i1 false
  br i1 %29, label %30, label %136

30:                                               ; preds = %27
  %31 = load ptr, ptr %5, align 4
  %32 = getelementptr inbounds %struct.snd_usb_audio, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %6, align 4
  %35 = getelementptr inbounds %struct.scarlett2_data, ptr %34, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.scarlett2_device_info, ptr %36, i32 0, i32 13
  %38 = load i8, ptr %37, align 4
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %30
  %41 = getelementptr %struct.scarlett2_device_info, ptr %36, i32 0, i32 14, i32 0
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  br label %44

44:                                               ; preds = %40, %30
  %45 = phi i32 [ %43, %40 ], [ 0, %30 ]
  %46 = getelementptr %struct.scarlett2_data, ptr %34, i32 0, i32 21, i32 %45
  %47 = load i8, ptr %46, align 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load ptr, ptr %34, align 4
  %51 = tail call fastcc i32 @scarlett2_sw_hw_change(ptr noundef %50, i32 noundef 0, i32 noundef 1) #15
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %174, label %53

53:                                               ; preds = %49, %44
  %54 = getelementptr %struct.scarlett2_data, ptr %34, i32 0, i32 37, i32 0
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.snd_kcontrol, ptr %55, i32 1, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, -3
  store i32 %58, ptr %56, align 4
  %59 = load ptr, ptr %54, align 4
  %60 = getelementptr inbounds %struct.snd_kcontrol, ptr %59, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %33, i32 noundef 3, ptr noundef %60) #15
  %61 = load ptr, ptr %35, align 4
  %62 = getelementptr inbounds %struct.scarlett2_device_info, ptr %61, i32 0, i32 13
  %63 = load i8, ptr %62, align 4
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %53
  %66 = getelementptr %struct.scarlett2_device_info, ptr %61, i32 0, i32 14, i32 1
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  br label %69

69:                                               ; preds = %65, %53
  %70 = phi i32 [ %68, %65 ], [ 1, %53 ]
  %71 = getelementptr %struct.scarlett2_data, ptr %34, i32 0, i32 21, i32 %70
  %72 = load i8, ptr %71, align 1
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load ptr, ptr %34, align 4
  %76 = tail call fastcc i32 @scarlett2_sw_hw_change(ptr noundef %75, i32 noundef 1, i32 noundef 1) #15
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %174, label %78

78:                                               ; preds = %74, %69
  %79 = getelementptr %struct.scarlett2_data, ptr %34, i32 0, i32 37, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.snd_kcontrol, ptr %80, i32 1, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = and i32 %82, -3
  store i32 %83, ptr %81, align 4
  %84 = load ptr, ptr %79, align 4
  %85 = getelementptr inbounds %struct.snd_kcontrol, ptr %84, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %33, i32 noundef 3, ptr noundef %85) #15
  %86 = load ptr, ptr %35, align 4
  %87 = getelementptr inbounds %struct.scarlett2_device_info, ptr %86, i32 0, i32 13
  %88 = load i8, ptr %87, align 4
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %78
  %91 = getelementptr %struct.scarlett2_device_info, ptr %86, i32 0, i32 14, i32 2
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %92 to i32
  br label %94

94:                                               ; preds = %90, %78
  %95 = phi i32 [ %93, %90 ], [ 2, %78 ]
  %96 = getelementptr %struct.scarlett2_data, ptr %34, i32 0, i32 21, i32 %95
  %97 = load i8, ptr %96, align 1
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load ptr, ptr %34, align 4
  %101 = tail call fastcc i32 @scarlett2_sw_hw_change(ptr noundef %100, i32 noundef 2, i32 noundef 1) #15
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %174, label %103

103:                                              ; preds = %99, %94
  %104 = getelementptr %struct.scarlett2_data, ptr %34, i32 0, i32 37, i32 2
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.snd_kcontrol, ptr %105, i32 1, i32 0, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = and i32 %107, -3
  store i32 %108, ptr %106, align 4
  %109 = load ptr, ptr %104, align 4
  %110 = getelementptr inbounds %struct.snd_kcontrol, ptr %109, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %33, i32 noundef 3, ptr noundef %110) #15
  %111 = load ptr, ptr %35, align 4
  %112 = getelementptr inbounds %struct.scarlett2_device_info, ptr %111, i32 0, i32 13
  %113 = load i8, ptr %112, align 4
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %103
  %116 = getelementptr %struct.scarlett2_device_info, ptr %111, i32 0, i32 14, i32 3
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  br label %119

119:                                              ; preds = %115, %103
  %120 = phi i32 [ %118, %115 ], [ 3, %103 ]
  %121 = getelementptr %struct.scarlett2_data, ptr %34, i32 0, i32 21, i32 %120
  %122 = load i8, ptr %121, align 1
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load ptr, ptr %34, align 4
  %126 = tail call fastcc i32 @scarlett2_sw_hw_change(ptr noundef %125, i32 noundef 3, i32 noundef 1) #15
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %174, label %128

128:                                              ; preds = %124, %119
  %129 = getelementptr %struct.scarlett2_data, ptr %34, i32 0, i32 37, i32 3
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.snd_kcontrol, ptr %130, i32 1, i32 0, i32 1
  %132 = load i32, ptr %131, align 4
  %133 = and i32 %132, -3
  store i32 %133, ptr %131, align 4
  %134 = load ptr, ptr %129, align 4
  %135 = getelementptr inbounds %struct.snd_kcontrol, ptr %134, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %33, i32 noundef 3, ptr noundef %135) #15
  br label %171

136:                                              ; preds = %27
  %137 = select i1 %28, i1 true, i1 %18
  br i1 %137, label %174, label %138

138:                                              ; preds = %136
  %139 = load ptr, ptr %5, align 4
  %140 = getelementptr inbounds %struct.snd_usb_audio, ptr %139, i32 0, i32 2
  %141 = load ptr, ptr %140, align 4
  %142 = load ptr, ptr %6, align 4
  %143 = getelementptr %struct.scarlett2_data, ptr %142, i32 0, i32 37, i32 0
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.snd_kcontrol, ptr %144, i32 1, i32 0, i32 1
  %146 = load i32, ptr %145, align 4
  %147 = or i32 %146, 2
  store i32 %147, ptr %145, align 4
  %148 = load ptr, ptr %143, align 4
  %149 = getelementptr inbounds %struct.snd_kcontrol, ptr %148, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %141, i32 noundef 2, ptr noundef %149) #15
  %150 = getelementptr %struct.scarlett2_data, ptr %142, i32 0, i32 37, i32 1
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.snd_kcontrol, ptr %151, i32 1, i32 0, i32 1
  %153 = load i32, ptr %152, align 4
  %154 = or i32 %153, 2
  store i32 %154, ptr %152, align 4
  %155 = load ptr, ptr %150, align 4
  %156 = getelementptr inbounds %struct.snd_kcontrol, ptr %155, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %141, i32 noundef 2, ptr noundef %156) #15
  %157 = getelementptr %struct.scarlett2_data, ptr %142, i32 0, i32 37, i32 2
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr inbounds %struct.snd_kcontrol, ptr %158, i32 1, i32 0, i32 1
  %160 = load i32, ptr %159, align 4
  %161 = or i32 %160, 2
  store i32 %161, ptr %159, align 4
  %162 = load ptr, ptr %157, align 4
  %163 = getelementptr inbounds %struct.snd_kcontrol, ptr %162, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %141, i32 noundef 2, ptr noundef %163) #15
  %164 = getelementptr %struct.scarlett2_data, ptr %142, i32 0, i32 37, i32 3
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr inbounds %struct.snd_kcontrol, ptr %165, i32 1, i32 0, i32 1
  %167 = load i32, ptr %166, align 4
  %168 = or i32 %167, 2
  store i32 %168, ptr %166, align 4
  %169 = load ptr, ptr %164, align 4
  %170 = getelementptr inbounds %struct.snd_kcontrol, ptr %169, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %141, i32 noundef 2, ptr noundef %170) #15
  br label %171

171:                                              ; preds = %138, %128
  %172 = phi ptr [ %142, %138 ], [ %34, %128 ]
  %173 = getelementptr inbounds %struct.scarlett2_data, ptr %172, i32 0, i32 17
  store i8 1, ptr %173, align 1
  br label %174

174:                                              ; preds = %171, %136, %124, %99, %74, %49, %22, %16, %2
  %175 = phi i32 [ 0, %2 ], [ %20, %16 ], [ %25, %22 ], [ 1, %136 ], [ %126, %124 ], [ %101, %99 ], [ %76, %74 ], [ %51, %49 ], [ 1, %171 ]
  tail call void @mutex_unlock(ptr noundef %8) #15
  ret i32 %175
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_talkback_enum_ctl_info(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @snd_ctl_enum_info(ptr noundef %1, i32 noundef 1, i32 noundef 3, ptr noundef nonnull @scarlett2_talkback_enum_ctl_info.values) #15
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_talkback_enum_ctl_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %8) #15
  %9 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 15
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = tail call fastcc i32 @scarlett2_update_monitor_other(ptr noundef %5)
  br label %14

14:                                               ; preds = %12, %2
  %15 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 31
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %17, ptr %18, align 8
  tail call void @mutex_unlock(ptr noundef %8) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_talkback_enum_ctl_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %8) #15
  %9 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 31
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 2)
  %15 = icmp eq i32 %14, %11
  br i1 %15, label %28, label %16

16:                                               ; preds = %2
  %17 = trunc i32 %14 to i8
  store i8 %17, ptr %9, align 1
  %18 = icmp ne i32 %14, 0
  %19 = zext i1 %18 to i32
  %20 = tail call fastcc i32 @scarlett2_usb_set_config(ptr noundef %5, i32 noundef 12, i32 noundef 1, i32 noundef %19)
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = icmp ugt i32 %13, 1
  %24 = zext i1 %23 to i32
  %25 = tail call fastcc i32 @scarlett2_usb_set_config(ptr noundef %5, i32 noundef 11, i32 noundef 1, i32 noundef %24)
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 1, i32 %25
  br label %28

28:                                               ; preds = %22, %16, %2
  %29 = phi i32 [ 0, %2 ], [ %20, %16 ], [ %27, %22 ]
  tail call void @mutex_unlock(ptr noundef %8) #15
  ret i32 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @scarlett2_talkback_map_ctl_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.scarlett2_data, ptr %7, i32 0, i32 32, i32 %9
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %12, ptr %13, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett2_talkback_map_ctl_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.scarlett2_device_info, ptr %9, i32 0, i32 16, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.scarlett2_data, ptr %7, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %14) #15
  %15 = getelementptr %struct.scarlett2_data, ptr %7, i32 0, i32 32, i32 %13
  %16 = load i8, ptr %15, align 1
  %17 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i8
  %21 = icmp eq i8 %16, %20
  br i1 %21, label %40, label %22

22:                                               ; preds = %2
  store i8 %20, ptr %15, align 1
  %23 = icmp sgt i32 %11, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %24, %22
  %25 = phi i32 [ %33, %24 ], [ 0, %22 ]
  %26 = phi i32 [ %31, %24 ], [ 0, %22 ]
  %27 = getelementptr %struct.scarlett2_data, ptr %7, i32 0, i32 32, i32 %26
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = shl i32 %29, %26
  %31 = add nuw nsw i32 %26, 1
  %32 = and i32 %30, 65535
  %33 = or i32 %32, %25
  %34 = icmp eq i32 %31, %11
  br i1 %34, label %35, label %24

35:                                               ; preds = %24, %22
  %36 = phi i32 [ 0, %22 ], [ %33, %24 ]
  %37 = tail call fastcc i32 @scarlett2_usb_set_config(ptr noundef %5, i32 noundef 13, i32 noundef 0, i32 noundef %36)
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 1, i32 %37
  br label %40

40:                                               ; preds = %35, %2
  %41 = phi i32 [ 0, %2 ], [ %39, %35 ]
  tail call void @mutex_unlock(ptr noundef %14) #15
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scarlett2_notify(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 20
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = icmp ne i32 %7, 0
  %9 = icmp ne i32 %5, 8
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %193, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 14
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.usb_mixer_interface, ptr %3, i32 0, i32 16
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.scarlett2_data, ptr %19, i32 0, i32 12
  store i8 1, ptr %20, align 2
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr inbounds %struct.snd_usb_audio, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.scarlett2_data, ptr %19, i32 0, i32 34
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.snd_kcontrol, ptr %25, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %23, i32 noundef 1, ptr noundef %26) #15
  br label %27

27:                                               ; preds = %17, %11
  %28 = and i32 %14, 4194304
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %74, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %3, align 4
  %32 = getelementptr inbounds %struct.snd_usb_audio, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.usb_mixer_interface, ptr %3, i32 0, i32 16
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.scarlett2_data, ptr %35, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr %struct.scarlett2_device_info, ptr %37, i32 0, i32 16, i32 1, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.scarlett2_device_info, ptr %37, i32 0, i32 3
  %41 = load i8, ptr %40, align 2
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %74, label %43

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.scarlett2_data, ptr %35, i32 0, i32 13
  store i8 1, ptr %44, align 1
  %45 = load ptr, ptr %3, align 4
  %46 = getelementptr inbounds %struct.snd_usb_audio, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.scarlett2_data, ptr %35, i32 0, i32 35
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.snd_kcontrol, ptr %49, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %47, i32 noundef 1, ptr noundef %50) #15
  %51 = icmp sgt i32 %39, 0
  br i1 %51, label %52, label %74

52:                                               ; preds = %71, %43
  %53 = phi i32 [ %72, %71 ], [ 0, %43 ]
  %54 = load ptr, ptr %36, align 4
  %55 = getelementptr inbounds %struct.scarlett2_device_info, ptr %54, i32 0, i32 13
  %56 = load i8, ptr %55, align 4
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = getelementptr %struct.scarlett2_device_info, ptr %54, i32 0, i32 14, i32 %53
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  br label %62

62:                                               ; preds = %58, %52
  %63 = phi i32 [ %61, %58 ], [ %53, %52 ]
  %64 = getelementptr %struct.scarlett2_data, ptr %35, i32 0, i32 21, i32 %63
  %65 = load i8, ptr %64, align 1
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = getelementptr %struct.scarlett2_data, ptr %35, i32 0, i32 36, i32 %53
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.snd_kcontrol, ptr %69, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %33, i32 noundef 1, ptr noundef %70) #15
  br label %71

71:                                               ; preds = %67, %62
  %72 = add nuw nsw i32 %53, 1
  %73 = icmp eq i32 %72, %39
  br i1 %73, label %74, label %52

74:                                               ; preds = %71, %43, %30, %27
  %75 = and i32 %14, 2097152
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  tail call fastcc void @scarlett2_notify_dim_mute(ptr noundef %3)
  br label %78

78:                                               ; preds = %77, %74
  %79 = and i32 %14, 8388608
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %141, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %3, align 4
  %83 = getelementptr inbounds %struct.snd_usb_audio, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.usb_mixer_interface, ptr %3, i32 0, i32 16
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.scarlett2_data, ptr %86, i32 0, i32 4
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.scarlett2_data, ptr %86, i32 0, i32 14
  store i8 1, ptr %89, align 4
  %90 = getelementptr inbounds %struct.scarlett2_device_info, ptr %88, i32 0, i32 6
  %91 = load i8, ptr %90, align 1
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %97, %81
  %94 = getelementptr inbounds %struct.scarlett2_device_info, ptr %88, i32 0, i32 8
  %95 = load i8, ptr %94, align 1
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %106, label %110

97:                                               ; preds = %97, %81
  %98 = phi i32 [ %102, %97 ], [ 0, %81 ]
  %99 = getelementptr %struct.scarlett2_data, ptr %86, i32 0, i32 40, i32 %98
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.snd_kcontrol, ptr %100, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %84, i32 noundef 1, ptr noundef %101) #15
  %102 = add nuw nsw i32 %98, 1
  %103 = load i8, ptr %90, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp ult i32 %102, %104
  br i1 %105, label %97, label %93

106:                                              ; preds = %110, %93
  %107 = getelementptr inbounds %struct.scarlett2_device_info, ptr %88, i32 0, i32 9
  %108 = load i8, ptr %107, align 4
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %119, label %123

110:                                              ; preds = %110, %93
  %111 = phi i32 [ %115, %110 ], [ 0, %93 ]
  %112 = getelementptr %struct.scarlett2_data, ptr %86, i32 0, i32 41, i32 %111
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.snd_kcontrol, ptr %113, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %84, i32 noundef 1, ptr noundef %114) #15
  %115 = add nuw nsw i32 %111, 1
  %116 = load i8, ptr %94, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp ult i32 %115, %117
  br i1 %118, label %110, label %106

119:                                              ; preds = %123, %106
  %120 = getelementptr inbounds %struct.scarlett2_device_info, ptr %88, i32 0, i32 10
  %121 = load i8, ptr %120, align 1
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %141, label %132

123:                                              ; preds = %123, %106
  %124 = phi i32 [ %128, %123 ], [ 0, %106 ]
  %125 = getelementptr %struct.scarlett2_data, ptr %86, i32 0, i32 42, i32 %124
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.snd_kcontrol, ptr %126, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %84, i32 noundef 1, ptr noundef %127) #15
  %128 = add nuw nsw i32 %124, 1
  %129 = load i8, ptr %107, align 4
  %130 = zext i8 %129 to i32
  %131 = icmp ult i32 %128, %130
  br i1 %131, label %123, label %119

132:                                              ; preds = %132, %119
  %133 = phi i32 [ %137, %132 ], [ 0, %119 ]
  %134 = getelementptr %struct.scarlett2_data, ptr %86, i32 0, i32 43, i32 %133
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.snd_kcontrol, ptr %135, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %84, i32 noundef 1, ptr noundef %136) #15
  %137 = add nuw nsw i32 %133, 1
  %138 = load i8, ptr %120, align 1
  %139 = zext i8 %138 to i32
  %140 = icmp ult i32 %137, %139
  br i1 %140, label %132, label %141

141:                                              ; preds = %132, %119, %78
  %142 = and i32 %14, 16777216
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %193, label %144

144:                                              ; preds = %141
  %145 = load ptr, ptr %3, align 4
  %146 = getelementptr inbounds %struct.snd_usb_audio, ptr %145, i32 0, i32 2
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr inbounds %struct.usb_mixer_interface, ptr %3, i32 0, i32 16
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr inbounds %struct.scarlett2_data, ptr %149, i32 0, i32 4
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.scarlett2_data, ptr %149, i32 0, i32 15
  store i8 1, ptr %152, align 1
  %153 = getelementptr inbounds %struct.scarlett2_device_info, ptr %151, i32 0, i32 12
  %154 = load i8, ptr %153, align 1
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %144
  %157 = getelementptr inbounds %struct.scarlett2_data, ptr %149, i32 0, i32 45
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr inbounds %struct.snd_kcontrol, ptr %158, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %147, i32 noundef 1, ptr noundef %159) #15
  br label %193

160:                                              ; preds = %144
  %161 = getelementptr inbounds %struct.scarlett2_device_info, ptr %151, i32 0, i32 4
  %162 = load i8, ptr %161, align 1
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.scarlett2_data, ptr %149, i32 0, i32 46
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr inbounds %struct.snd_kcontrol, ptr %166, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %147, i32 noundef 1, ptr noundef %167) #15
  br label %168

168:                                              ; preds = %164, %160
  %169 = getelementptr inbounds %struct.scarlett2_device_info, ptr %151, i32 0, i32 5
  %170 = load i8, ptr %169, align 4
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.scarlett2_data, ptr %149, i32 0, i32 47
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr inbounds %struct.snd_kcontrol, ptr %174, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %147, i32 noundef 1, ptr noundef %175) #15
  br label %176

176:                                              ; preds = %172, %168
  %177 = getelementptr inbounds %struct.scarlett2_data, ptr %149, i32 0, i32 17
  %178 = load i8, ptr %177, align 1
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %193, label %180

180:                                              ; preds = %176
  tail call fastcc void @scarlett2_notify_dim_mute(ptr noundef %3) #15
  store i8 0, ptr %177, align 1
  %181 = getelementptr inbounds %struct.scarlett2_data, ptr %149, i32 0, i32 16
  store i8 1, ptr %181, align 2
  %182 = getelementptr inbounds %struct.scarlett2_data, ptr %149, i32 0, i32 10
  %183 = load i32, ptr %182, align 4
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %185, %180
  %186 = phi i32 [ %190, %185 ], [ 0, %180 ]
  %187 = getelementptr %struct.scarlett2_data, ptr %149, i32 0, i32 44, i32 %186
  %188 = load ptr, ptr %187, align 4
  %189 = getelementptr inbounds %struct.snd_kcontrol, ptr %188, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %147, i32 noundef 1, ptr noundef %189) #15
  %190 = add nuw nsw i32 %186, 1
  %191 = load i32, ptr %182, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %185, label %193

193:                                              ; preds = %185, %180, %176, %156, %141, %1
  switch i32 %7, label %194 [
    i32 -2, label %200
    i32 -104, label %200
    i32 -108, label %200
  ]

194:                                              ; preds = %193
  %195 = load ptr, ptr %3, align 4
  %196 = getelementptr inbounds %struct.snd_usb_audio, ptr %195, i32 0, i32 1
  %197 = load ptr, ptr %196, align 4
  %198 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 8
  store ptr %197, ptr %198, align 4
  %199 = tail call i32 @usb_submit_urb(ptr noundef %0, i32 noundef 2592) #15
  br label %200

200:                                              ; preds = %194, %193, %193, %193
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @scarlett2_notify_dim_mute(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.snd_usb_audio, ptr %2, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.scarlett2_data, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.scarlett2_device_info, ptr %8, i32 0, i32 16, i32 1, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.scarlett2_data, ptr %6, i32 0, i32 13
  store i8 1, ptr %11, align 1
  %12 = getelementptr inbounds %struct.scarlett2_device_info, ptr %8, i32 0, i32 3
  %13 = load i8, ptr %12, align 2
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %45, label %15

15:                                               ; preds = %1
  %16 = getelementptr %struct.scarlett2_data, ptr %6, i32 0, i32 39, i32 0
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.snd_kcontrol, ptr %17, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %4, i32 noundef 1, ptr noundef %18) #15
  %19 = getelementptr %struct.scarlett2_data, ptr %6, i32 0, i32 39, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.snd_kcontrol, ptr %20, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %4, i32 noundef 1, ptr noundef %21) #15
  %22 = icmp sgt i32 %10, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %42, %15
  %24 = phi i32 [ %43, %42 ], [ 0, %15 ]
  %25 = load ptr, ptr %7, align 4
  %26 = getelementptr inbounds %struct.scarlett2_device_info, ptr %25, i32 0, i32 13
  %27 = load i8, ptr %26, align 4
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = getelementptr %struct.scarlett2_device_info, ptr %25, i32 0, i32 14, i32 %24
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  br label %33

33:                                               ; preds = %29, %23
  %34 = phi i32 [ %32, %29 ], [ %24, %23 ]
  %35 = getelementptr %struct.scarlett2_data, ptr %6, i32 0, i32 21, i32 %34
  %36 = load i8, ptr %35, align 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = getelementptr %struct.scarlett2_data, ptr %6, i32 0, i32 38, i32 %24
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.snd_kcontrol, ptr %40, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %4, i32 noundef 1, ptr noundef %41) #15
  br label %42

42:                                               ; preds = %38, %33
  %43 = add nuw nsw i32 %24, 1
  %44 = icmp eq i32 %43, %10
  br i1 %44, label %45, label %23

45:                                               ; preds = %42, %15, %1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smin.i16(i16, i16) #11

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strlen(ptr nocapture) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0) }

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
