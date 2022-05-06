; ModuleID = '/llk/IR/sound/pci/hda/patch_hdmi.c_pt.bc'
source_filename = "../sound/pci/hda/patch_hdmi.c"
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
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.60 }
%union.anon.60 = type { ptr }
%struct.hda_device_id = type { i32, i32, i8, ptr, i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.hdmi_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.hda_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.78, i32 }
%union.anon.78 = type { ptr }
%struct.hda_pcm_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.snd_pci_quirk = type { i16, i16, i16, i32 }
%struct.hda_pcm_stream = type { i32, i32, i32, i16, i32, i64, i32, ptr, %struct.hda_pcm_ops }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.hda_verb = type { i16, i32, i32 }
%struct.snd_pcm_chmap_elem = type { i8, [15 x i8] }
%struct.hda_codec_driver = type { %struct.hdac_driver, ptr }
%struct.hdac_driver = type { %struct.device_driver, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hda_codec = type { %struct.hdac_device, ptr, ptr, i32, i32, ptr, ptr, %struct.hda_codec_ops, %struct.list_head, %struct.refcount_struct, %struct.wait_queue_head, ptr, ptr, i32, ptr, %struct.snd_array, %struct.snd_array, %struct.list_head, %struct.mutex, %struct.mutex, %struct.snd_array, i32, ptr, %struct.snd_array, %struct.snd_array, %struct.snd_array, %struct.mutex, %struct.snd_array, %struct.snd_array, %struct.snd_array, i24, i32, i32, i32, ptr, ptr, %struct.snd_array, i32, %struct.delayed_work, i32, i32, ptr, ptr, %struct.snd_array }
%struct.hdac_device = type { %struct.device, i32, ptr, i32, %struct.list_head, i16, i16, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i32, i16, i16, %struct.atomic_t, %struct.mutex, ptr, ptr, %struct.mutex, %struct.snd_array, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_array = type { i32, i32, i32, i32, ptr }
%struct.hdmi_spec = type { ptr, i32, %struct.snd_array, [4 x i16], i32, i32, i32, %struct.snd_array, [16 x %struct.hdmi_pcm], %struct.mutex, %struct.mutex, i32, i32, i32, %struct.hdmi_eld, %struct.hdmi_ops, i8, i8, i8, i8, %struct.hda_multi_out, %struct.hda_pcm_stream, i8, i8, i8, %struct.drm_audio_component_audio_ops, ptr, %struct.hdac_chmap, i16, ptr, i32, i8 }
%struct.hdmi_pcm = type { ptr, ptr, ptr }
%struct.hdmi_eld = type { i8, i8, i32, [256 x i8], %struct.parsed_hdmi_eld }
%struct.parsed_hdmi_eld = type { i32, i32, i32, [17 x i8], i32, i32, i64, i32, i32, i32, i32, i32, i32, [16 x %struct.cea_sad] }
%struct.cea_sad = type { i32, i32, i32, i32, i32, i32 }
%struct.hda_multi_out = type { i32, ptr, i16, [5 x i16], [5 x i16], i16, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64 }
%struct.drm_audio_component_audio_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.hdac_chmap = type { i32, %struct.hdac_chmap_ops, ptr }
%struct.hdac_chmap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hdmi_spec_per_cvt = type { i16, i32, i32, i32, i32, i64, i32 }
%struct.hdac_cea_channel_speaker_allocation = type { i32, [8 x i32], i32, i32 }
%struct.hdmi_spec_per_pin = type { i16, i32, i32, i32, [32 x i16], i32, i16, ptr, %struct.hdmi_eld, %struct.mutex, %struct.delayed_work, ptr, i32, i32, i8, i8, i32, i8, i8, [8 x i8], ptr }
%struct.hda_jack_callback = type { i16, i32, ptr, i32, i32, ptr, ptr }
%struct.hda_pcm = type { ptr, [2 x %struct.hda_pcm_stream], i32, i32, ptr, i8, ptr, %struct.list_head, i8 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8 }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, ptr, ptr, %struct.device }
%struct.hda_spdif_out = type { i16, i32, i16 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64 }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.77, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.77 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.drm_audio_component = type { ptr, ptr, ptr, %struct.completion }
%struct.hda_bus = type { %struct.hdac_bus, ptr, ptr, ptr, %struct.mutex, [8 x i32], i8, i32, i32 }
%struct.hdac_bus = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, [16 x ptr], [128 x i32], i32, i32, %struct.work_struct, i32, i32, %struct.hdac_rb, %struct.hdac_rb, [8 x i32], %struct.wait_queue_head, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.list_head, i16, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, i32, %struct.list_head, i8, i32 }
%struct.hdac_rb = type { ptr, i32, i16, i16, [8 x i32], [8 x i32] }
%struct.hda_jack_tbl = type { i16, i32, i8, ptr, i32, i8, i16, i16, i16, i32, i32, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.66, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.66 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.snd_jack = type { %struct.list_head, ptr, ptr, ptr, i32, i32, [100 x i8], [6 x i32], i32, ptr, ptr }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.68, [64 x i8] }
%union.anon.68 = type { %struct.anon.71, [40 x i8] }
%struct.anon.71 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.72, [128 x i8] }
%union.anon.72 = type { %union.anon.74 }
%union.anon.74 = type { [64 x i64] }
%struct.hdac_stream = type { ptr, %struct.snd_dma_buffer, ptr, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i8, i64, i32, i32, %struct.timecounter, %struct.cyclecounter, i32, %struct.list_head }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.snd_pcm_chmap = type { ptr, i32, ptr, ptr, i32, i32, ptr }

@__param_str_static_hdmi_pcm = internal constant [16 x i8] c"static_hdmi_pcm\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@static_hdmi_pcm = internal global i8 0, align 1
@__param_static_hdmi_pcm = internal constant %struct.kernel_param { ptr @__param_str_static_hdmi_pcm, ptr @__this_module, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.60 { ptr @static_hdmi_pcm } }, section "__param", align 4
@__UNIQUE_ID_static_hdmi_pcmtype235 = internal constant [30 x i8] c"parmtype=static_hdmi_pcm:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_static_hdmi_pcm236 = internal constant [64 x i8] c"parm=static_hdmi_pcm:Don't restrict PCM parameters per ELD info\00", section ".modinfo", align 1
@__param_str_enable_acomp = internal constant [13 x i8] c"enable_acomp\00", align 1
@enable_acomp = internal global i8 1, align 1
@__param_enable_acomp = internal constant %struct.kernel_param { ptr @__param_str_enable_acomp, ptr @__this_module, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.60 { ptr @enable_acomp } }, section "__param", align 4
@__UNIQUE_ID_enable_acomptype237 = internal constant [27 x i8] c"parmtype=enable_acomp:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_acomp238 = internal constant [63 x i8] c"parm=enable_acomp:Enable audio component binding (default=yes)\00", section ".modinfo", align 1
@__param_str_enable_silent_stream = internal constant [21 x i8] c"enable_silent_stream\00", align 1
@enable_silent_stream = internal global i8 0, align 1
@__param_enable_silent_stream = internal constant %struct.kernel_param { ptr @__param_str_enable_silent_stream, ptr @__this_module, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.60 { ptr @enable_silent_stream } }, section "__param", align 4
@__UNIQUE_ID_enable_silent_streamtype239 = internal constant [35 x i8] c"parmtype=enable_silent_stream:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_silent_stream240 = internal constant [64 x i8] c"parm=enable_silent_stream:Enable Silent Stream for HDMI devices\00", section ".modinfo", align 1
@__param_str_enable_all_pins = internal constant [16 x i8] c"enable_all_pins\00", align 1
@enable_all_pins = internal global i8 0, align 1
@__param_enable_all_pins = internal constant %struct.kernel_param { ptr @__param_str_enable_all_pins, ptr @__this_module, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.60 { ptr @enable_all_pins } }, section "__param", align 4
@__UNIQUE_ID_enable_all_pinstype241 = internal constant [30 x i8] c"parmtype=enable_all_pins:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_all_pins242 = internal constant [46 x i8] c"parm=enable_all_pins:Forcibly enable all pins\00", section ".modinfo", align 1
@snd_hda_id_hdmi = internal constant [118 x %struct.hda_device_id] [%struct.hda_device_id { i32 268597564, i32 0, i8 1, ptr @.str, i32 ptrtoint (ptr @patch_atihdmi to i32) }, %struct.hda_device_id { i32 268597529, i32 0, i8 1, ptr @.str, i32 ptrtoint (ptr @patch_atihdmi to i32) }, %struct.hda_device_id { i32 268597530, i32 0, i8 1, ptr @.str.1, i32 ptrtoint (ptr @patch_atihdmi to i32) }, %struct.hda_device_id { i32 268610049, i32 0, i8 1, ptr @.str.2, i32 ptrtoint (ptr @patch_atihdmi to i32) }, %struct.hda_device_id { i32 278205328, i32 0, i8 1, ptr @.str.3, i32 ptrtoint (ptr @patch_generic_hdmi to i32) }, %struct.hda_device_id { i32 278205330, i32 0, i8 1, ptr @.str.4, i32 ptrtoint (ptr @patch_generic_hdmi to i32) }, %struct.hda_device_id { i32 401080391, i32 0, i8 1, ptr @.str.5, i32 ptrtoint (ptr @patch_generic_hdmi to i32) }, %struct.hda_device_id { i32 282984449, i32 0, i8 1, ptr @.str.6, i32 ptrtoint (ptr @patch_nvhdmi_2ch to i32) }, %struct.hda_device_id { i32 282984450, i32 0, i8 1, ptr @.str.7, i32 ptrtoint (ptr @patch_nvhdmi_8ch_7x to i32) }, %struct.hda_device_id { i32 282984451, i32 0, i8 1, ptr @.str.7, i32 ptrtoint (ptr @patch_nvhdmi_8ch_7x to i32) }, %struct.hda_device_id { i32 282984452, i32 0, i8 1, ptr @.str.8, i32 ptrtoint (ptr @patch_nvhdmi_8ch_7x to i32) }, %struct.hda_device_id { i32 282984453, i32 0, i8 1, ptr @.str.7, i32 ptrtoint (ptr @patch_nvhdmi_8ch_7x to i32) }, %struct.hda_device_id { i32 282984454, i32 0, i8 1, ptr @.str.7, i32 ptrtoint (ptr @patch_nvhdmi_8ch_7x to i32) }, %struct.hda_device_id { i32 282984455, i32 0, i8 1, ptr @.str.9, i32 ptrtoint (ptr @patch_nvhdmi_8ch_7x to i32) }, %struct.hda_device_id { i32 282984456, i32 0, i8 1, ptr @.str.10, i32 ptrtoint (ptr @patch_nvhdmi_legacy to i32) }, %struct.hda_device_id { i32 282984457, i32 0, i8 1, ptr @.str.11, i32 ptrtoint (ptr @patch_nvhdmi_legacy to i32) }, %struct.hda_device_id { i32 282984458, i32 0, i8 1, ptr @.str.12, i32 ptrtoint (ptr @patch_nvhdmi_legacy to i32) }, %struct.hda_device_id { i32 282984459, i32 0, i8 1, ptr @.str.13, i32 ptrtoint (ptr @patch_nvhdmi_legacy to i32) }, %struct.hda_device_id { i32 282984460, i32 0, i8 1, ptr @.str.14, i32 ptrtoint (ptr @patch_nvhdmi_legacy to i32) }, %struct.hda_device_id { i32 282984461, i32 0, i8 1, ptr @.str.15, i32 ptrtoint (ptr @patch_nvhdmi_legacy to i32) }, %struct.hda_device_id { i32 282984464, i32 0, i8 1, ptr @.str.16, i32 ptrtoint (ptr @patch_nvhdmi_legacy to i32) }, %struct.hda_device_id { i32 282984465, i32 0, i8 1, ptr @.str.17, i32 ptrtoint (ptr @patch_nvhdmi_legacy to i32) }, %struct.hda_device_id { i32 282984466, i32 0, i8 1, ptr @.str.18, i32 ptrtoint (ptr @patch_nvhdmi_legacy to i32) }, %struct.hda_device_id { i32 282984467, i32 0, i8 1, ptr @.str.19, i32 ptrtoint (ptr @patch_nvhdmi_legacy to i32) }, %struct.hda_device_id { i32 282984468, i32 0, i8 1, ptr @.str.20, i32 ptrtoint (ptr @patch_nvhdmi_legacy to i32) }, %struct.hda_device_id { i32 282984469, i32 0, i8 1, ptr @.str.21, i32 ptrtoint (ptr @patch_nvhdmi_legacy to i32) }, %struct.hda_device_id { i32 282984470, i32 0, i8 1, ptr @.str.22, i32 ptrtoint (ptr @patch_nvhdmi_legacy to i32) }, %struct.hda_device_id { i32 282984472, i32 0, i8 1, ptr @.str.23, i32 ptrtoint (ptr @patch_nvhdmi_legacy to i32) }, %struct.hda_device_id { i32 282984473, i32 0, i8 1, ptr @.str.24, i32 ptrtoint (ptr @patch_nvhdmi_legacy to i32) }, %struct.hda_device_id { i32 282984474, i32 0, i8 1, ptr @.str.25, i32 ptrtoint (ptr @patch_nvhdmi_legacy to i32) }, %struct.hda_device_id { i32 282984475, i32 0, i8 1, ptr @.str.26, i32 ptrtoint (ptr @patch_nvhdmi_legacy to i32) }, %struct.hda_device_id { i32 282984476, i32 0, i8 1, ptr @.str.27, i32 ptrtoint (ptr @patch_nvhdmi_legacy to i32) }, %struct.hda_device_id { i32 282984480, i32 0, i8 1, ptr @.str.28, i32 ptrtoint (ptr @patch_tegra_hdmi to i32) }, %struct.hda_device_id { i32 282984482, i32 0, i8 1, ptr @.str.29, i32 ptrtoint (ptr @patch_tegra_hdmi to i32) }, %struct.hda_device_id { i32 282984488, i32 0, i8 1, ptr @.str.30, i32 ptrtoint (ptr @patch_tegra_hdmi to i32) }, %struct.hda_device_id { i32 282984489, i32 0, i8 1, ptr @.str.31, i32 ptrtoint (ptr @patch_tegra_hdmi to i32) }, %struct.hda_device_id { i32 282984493, i32 0, i8 1, ptr @.str.32, i32 ptrtoint (ptr @patch_tegra_hdmi to i32) }, %struct.hda_device_id { i32 282984494, i32 0, i8 1, ptr @.str.33, i32 ptrtoint (ptr @patch_tegra_hdmi to i32) }, %struct.hda_device_id { i32 282984495, i32 0, i8 1, ptr @.str.34, i32 ptrtoint (ptr @patch_tegra_hdmi to i32) }, %struct.hda_device_id { i32 282984496, i32 0, i8 1, ptr @.str.35, i32 ptrtoint (ptr @patch_tegra_hdmi to i32) }, %struct.hda_device_id { i32 282984512, i32 0, i8 1, ptr @.str.36, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984513, i32 0, i8 1, ptr @.str.37, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984514, i32 0, i8 1, ptr @.str.38, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984515, i32 0, i8 1, ptr @.str.39, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984516, i32 0, i8 1, ptr @.str.40, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984517, i32 0, i8 1, ptr @.str.41, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984528, i32 0, i8 1, ptr @.str.42, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984529, i32 0, i8 1, ptr @.str.43, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984530, i32 0, i8 1, ptr @.str.44, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984544, i32 0, i8 1, ptr @.str.45, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984545, i32 0, i8 1, ptr @.str.46, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984546, i32 0, i8 1, ptr @.str.47, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984551, i32 0, i8 1, ptr @.str.48, i32 ptrtoint (ptr @patch_nvhdmi_2ch to i32) }, %struct.hda_device_id { i32 282984560, i32 0, i8 1, ptr @.str.49, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984561, i32 0, i8 1, ptr @.str.50, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984562, i32 0, i8 1, ptr @.str.51, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984563, i32 0, i8 1, ptr @.str.52, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984564, i32 0, i8 1, ptr @.str.53, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984566, i32 0, i8 1, ptr @.str.54, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984571, i32 0, i8 1, ptr @.str.55, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984572, i32 0, i8 1, ptr @.str.56, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984573, i32 0, i8 1, ptr @.str.57, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984574, i32 0, i8 1, ptr @.str.58, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984576, i32 0, i8 1, ptr @.str.59, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984577, i32 0, i8 1, ptr @.str.60, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984578, i32 0, i8 1, ptr @.str.61, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984579, i32 0, i8 1, ptr @.str.62, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984580, i32 0, i8 1, ptr @.str.63, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984592, i32 0, i8 1, ptr @.str.64, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984593, i32 0, i8 1, ptr @.str.65, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984594, i32 0, i8 1, ptr @.str.66, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984595, i32 0, i8 1, ptr @.str.67, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984596, i32 0, i8 1, ptr @.str.68, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984597, i32 0, i8 1, ptr @.str.69, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984599, i32 0, i8 1, ptr @.str.70, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984600, i32 0, i8 1, ptr @.str.71, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984601, i32 0, i8 1, ptr @.str.72, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984602, i32 0, i8 1, ptr @.str.73, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984605, i32 0, i8 1, ptr @.str.74, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984606, i32 0, i8 1, ptr @.str.75, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984607, i32 0, i8 1, ptr @.str.76, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984608, i32 0, i8 1, ptr @.str.77, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 283017217, i32 0, i8 1, ptr @.str.6, i32 ptrtoint (ptr @patch_nvhdmi_2ch to i32) }, %struct.hda_device_id { i32 283017319, i32 0, i8 1, ptr @.str.78, i32 ptrtoint (ptr @patch_nvhdmi_2ch to i32) }, %struct.hda_device_id { i32 285646720, i32 0, i8 1, ptr @.str.79, i32 ptrtoint (ptr @patch_via_hdmi to i32) }, %struct.hda_device_id { i32 285646721, i32 0, i8 1, ptr @.str.79, i32 ptrtoint (ptr @patch_via_hdmi to i32) }, %struct.hda_device_id { i32 285646724, i32 0, i8 1, ptr @.str.80, i32 ptrtoint (ptr @patch_generic_hdmi to i32) }, %struct.hda_device_id { i32 285646725, i32 0, i8 1, ptr @.str.80, i32 ptrtoint (ptr @patch_generic_hdmi to i32) }, %struct.hda_device_id { i32 -2138701740, i32 0, i8 1, ptr @.str.81, i32 ptrtoint (ptr @patch_i915_cpt_hdmi to i32) }, %struct.hda_device_id { i32 -2138691584, i32 0, i8 1, ptr @.str.82, i32 ptrtoint (ptr @patch_i915_glk_hdmi to i32) }, %struct.hda_device_id { i32 -2138691583, i32 0, i8 1, ptr @.str.83, i32 ptrtoint (ptr @patch_generic_hdmi to i32) }, %struct.hda_device_id { i32 -2138691582, i32 0, i8 1, ptr @.str.84, i32 ptrtoint (ptr @patch_generic_hdmi to i32) }, %struct.hda_device_id { i32 -2138691581, i32 0, i8 1, ptr @.str.85, i32 ptrtoint (ptr @patch_generic_hdmi to i32) }, %struct.hda_device_id { i32 -2138691580, i32 0, i8 1, ptr @.str.81, i32 ptrtoint (ptr @patch_i915_cpt_hdmi to i32) }, %struct.hda_device_id { i32 -2138691579, i32 0, i8 1, ptr @.str.86, i32 ptrtoint (ptr @patch_i915_cpt_hdmi to i32) }, %struct.hda_device_id { i32 -2138691578, i32 0, i8 1, ptr @.str.87, i32 ptrtoint (ptr @patch_i915_cpt_hdmi to i32) }, %struct.hda_device_id { i32 -2138691577, i32 0, i8 1, ptr @.str.88, i32 ptrtoint (ptr @patch_i915_hsw_hdmi to i32) }, %struct.hda_device_id { i32 -2138691576, i32 0, i8 1, ptr @.str.89, i32 ptrtoint (ptr @patch_i915_hsw_hdmi to i32) }, %struct.hda_device_id { i32 -2138691575, i32 0, i8 1, ptr @.str.90, i32 ptrtoint (ptr @patch_i915_hsw_hdmi to i32) }, %struct.hda_device_id { i32 -2138691574, i32 0, i8 1, ptr @.str.91, i32 ptrtoint (ptr @patch_i915_hsw_hdmi to i32) }, %struct.hda_device_id { i32 -2138691573, i32 0, i8 1, ptr @.str.92, i32 ptrtoint (ptr @patch_i915_hsw_hdmi to i32) }, %struct.hda_device_id { i32 -2138691572, i32 0, i8 1, ptr @.str.93, i32 ptrtoint (ptr @patch_i915_glk_hdmi to i32) }, %struct.hda_device_id { i32 -2138691571, i32 0, i8 1, ptr @.str.82, i32 ptrtoint (ptr @patch_i915_glk_hdmi to i32) }, %struct.hda_device_id { i32 -2138691569, i32 0, i8 1, ptr @.str.94, i32 ptrtoint (ptr @patch_i915_icl_hdmi to i32) }, %struct.hda_device_id { i32 -2138691566, i32 0, i8 1, ptr @.str.95, i32 ptrtoint (ptr @patch_i915_tgl_hdmi to i32) }, %struct.hda_device_id { i32 -2138691564, i32 0, i8 1, ptr @.str.96, i32 ptrtoint (ptr @patch_i915_tgl_hdmi to i32) }, %struct.hda_device_id { i32 -2138691563, i32 0, i8 1, ptr @.str.97, i32 ptrtoint (ptr @patch_i915_tgl_hdmi to i32) }, %struct.hda_device_id { i32 -2138691562, i32 0, i8 1, ptr @.str.98, i32 ptrtoint (ptr @patch_i915_tgl_hdmi to i32) }, %struct.hda_device_id { i32 -2138691559, i32 0, i8 1, ptr @.str.99, i32 ptrtoint (ptr @patch_i915_tgl_hdmi to i32) }, %struct.hda_device_id { i32 -2138691558, i32 0, i8 1, ptr @.str.100, i32 ptrtoint (ptr @patch_i915_icl_hdmi to i32) }, %struct.hda_device_id { i32 -2138691557, i32 0, i8 1, ptr @.str.101, i32 ptrtoint (ptr @patch_i915_icl_hdmi to i32) }, %struct.hda_device_id { i32 -2138691556, i32 0, i8 1, ptr @.str.102, i32 ptrtoint (ptr @patch_i915_tgl_hdmi to i32) }, %struct.hda_device_id { i32 -2138691456, i32 0, i8 1, ptr @.str.103, i32 ptrtoint (ptr @patch_generic_hdmi to i32) }, %struct.hda_device_id { i32 -2138691454, i32 0, i8 1, ptr @.str.104, i32 ptrtoint (ptr @patch_i915_byt_hdmi to i32) }, %struct.hda_device_id { i32 -2138691453, i32 0, i8 1, ptr @.str.105, i32 ptrtoint (ptr @patch_i915_byt_hdmi to i32) }, %struct.hda_device_id { i32 -2138691077, i32 0, i8 1, ptr @.str.106, i32 ptrtoint (ptr @patch_generic_hdmi to i32) }, %struct.hda_device_id { i32 257, i32 0, i8 1, ptr @.str.107, i32 ptrtoint (ptr @patch_generic_hdmi to i32) }, %struct.hda_device_id zeroinitializer], align 4
@__UNIQUE_ID_license249 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [32 x i8] c"description=HDMI HD-audio codec\00", section ".modinfo", align 1
@__UNIQUE_ID_alias251 = internal constant [30 x i8] c"alias=snd-hda-codec-intelhdmi\00", section ".modinfo", align 1
@__UNIQUE_ID_alias252 = internal constant [27 x i8] c"alias=snd-hda-codec-nvhdmi\00", section ".modinfo", align 1
@__UNIQUE_ID_alias253 = internal constant [28 x i8] c"alias=snd-hda-codec-atihdmi\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"RS600 HDMI\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"RS690/780 HDMI\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"R6xx HDMI\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"SiI1390 HDMI\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"SiI1392 HDMI\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Chrontel HDMI\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"MCP73 HDMI\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"MCP77/78 HDMI\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"GPU 04 HDMI\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"MCP79/7A HDMI\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"GPU 08 HDMI/DP\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"GPU 09 HDMI/DP\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"GPU 0a HDMI/DP\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"GPU 0b HDMI/DP\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"MCP89 HDMI\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"GPU 0d HDMI/DP\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"GPU 10 HDMI/DP\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"GPU 11 HDMI/DP\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"GPU 12 HDMI/DP\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"GPU 13 HDMI/DP\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"GPU 14 HDMI/DP\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"GPU 15 HDMI/DP\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"GPU 16 HDMI/DP\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"GPU 18 HDMI/DP\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"GPU 19 HDMI/DP\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"GPU 1a HDMI/DP\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"GPU 1b HDMI/DP\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"GPU 1c HDMI/DP\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"Tegra30 HDMI\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"Tegra114 HDMI\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"Tegra124 HDMI\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"Tegra210 HDMI/DP\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"Tegra186 HDMI/DP0\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"Tegra186 HDMI/DP1\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"Tegra194 HDMI/DP2\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"Tegra194 HDMI/DP3\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"GPU 40 HDMI/DP\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"GPU 41 HDMI/DP\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"GPU 42 HDMI/DP\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"GPU 43 HDMI/DP\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"GPU 44 HDMI/DP\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"GPU 45 HDMI/DP\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"GPU 50 HDMI/DP\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"GPU 51 HDMI/DP\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"GPU 52 HDMI/DP\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"GPU 60 HDMI/DP\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"GPU 61 HDMI/DP\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"GPU 62 HDMI/DP\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"MCP67 HDMI\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"GPU 70 HDMI/DP\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"GPU 71 HDMI/DP\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"GPU 72 HDMI/DP\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"GPU 73 HDMI/DP\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"GPU 74 HDMI/DP\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"GPU 76 HDMI/DP\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"GPU 7b HDMI/DP\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"GPU 7c HDMI/DP\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"GPU 7d HDMI/DP\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"GPU 7e HDMI/DP\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"GPU 80 HDMI/DP\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"GPU 81 HDMI/DP\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"GPU 82 HDMI/DP\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"GPU 83 HDMI/DP\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"GPU 84 HDMI/DP\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"GPU 90 HDMI/DP\00", align 1
@.str.65 = private unnamed_addr constant [15 x i8] c"GPU 91 HDMI/DP\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"GPU 92 HDMI/DP\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c"GPU 93 HDMI/DP\00", align 1
@.str.68 = private unnamed_addr constant [15 x i8] c"GPU 94 HDMI/DP\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"GPU 95 HDMI/DP\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"GPU 97 HDMI/DP\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"GPU 98 HDMI/DP\00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"GPU 99 HDMI/DP\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"GPU 9a HDMI/DP\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"GPU 9d HDMI/DP\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"GPU 9e HDMI/DP\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"GPU 9f HDMI/DP\00", align 1
@.str.77 = private unnamed_addr constant [15 x i8] c"GPU a0 HDMI/DP\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c"MCP67/68 HDMI\00", align 1
@.str.79 = private unnamed_addr constant [14 x i8] c"VX900 HDMI/DP\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"VX11 HDMI/DP\00", align 1
@.str.81 = private unnamed_addr constant [14 x i8] c"IbexPeak HDMI\00", align 1
@.str.82 = private unnamed_addr constant [16 x i8] c"Geminilake HDMI\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"Bearlake HDMI\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"Cantiga HDMI\00", align 1
@.str.85 = private unnamed_addr constant [15 x i8] c"Eaglelake HDMI\00", align 1
@.str.86 = private unnamed_addr constant [17 x i8] c"CougarPoint HDMI\00", align 1
@.str.87 = private unnamed_addr constant [18 x i8] c"PantherPoint HDMI\00", align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"Haswell HDMI\00", align 1
@.str.89 = private unnamed_addr constant [15 x i8] c"Broadwell HDMI\00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"Skylake HDMI\00", align 1
@.str.91 = private unnamed_addr constant [13 x i8] c"Broxton HDMI\00", align 1
@.str.92 = private unnamed_addr constant [14 x i8] c"Kabylake HDMI\00", align 1
@.str.93 = private unnamed_addr constant [16 x i8] c"Cannonlake HDMI\00", align 1
@.str.94 = private unnamed_addr constant [13 x i8] c"Icelake HDMI\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c"Tigerlake HDMI\00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"DG1 HDMI\00", align 1
@.str.97 = private unnamed_addr constant [15 x i8] c"Alderlake HDMI\00", align 1
@.str.98 = private unnamed_addr constant [16 x i8] c"Rocketlake HDMI\00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"DG2 HDMI\00", align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"Jasperlake HDMI\00", align 1
@.str.101 = private unnamed_addr constant [17 x i8] c"Elkhartlake HDMI\00", align 1
@.str.102 = private unnamed_addr constant [17 x i8] c"Alderlake-P HDMI\00", align 1
@.str.103 = private unnamed_addr constant [16 x i8] c"CedarTrail HDMI\00", align 1
@.str.104 = private unnamed_addr constant [17 x i8] c"Valleyview2 HDMI\00", align 1
@.str.105 = private unnamed_addr constant [14 x i8] c"Braswell HDMI\00", align 1
@.str.106 = private unnamed_addr constant [15 x i8] c"Crestline HDMI\00", align 1
@.str.107 = private unnamed_addr constant [13 x i8] c"Generic HDMI\00", align 1
@.str.108 = private unnamed_addr constant [35 x i8] c"HDMI: pin NID 0x%x not registered\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.109 = private unnamed_addr constant [27 x i8] c"sound/pci/hda/patch_hdmi.c\00", align 1
@.str.110 = private unnamed_addr constant [55 x i8] c"Monitor plugged-in, Failed to power up codec ret=[%d]\0A\00", align 1
@.str.111 = private unnamed_addr constant [58 x i8] c"Monitor plugged-out, Failed to power down codec ret=[%d]\0A\00", align 1
@.str.112 = private unnamed_addr constant [47 x i8] c"hdmi: no free converter to enable silent mode\0A\00", align 1
@.str.113 = private unnamed_addr constant [35 x i8] c"HDMI: cvt NID 0x%x not registered\0A\00", align 1
@.str.114 = private unnamed_addr constant [43 x i8] c"audio component disabled by module option\0A\00", align 1
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@generic_standard_hdmi_ops = internal unnamed_addr constant %struct.hdmi_ops { ptr @hdmi_pin_get_eld, ptr @hdmi_pin_setup_infoframe, ptr @hdmi_pin_hbr_setup, ptr @hdmi_setup_stream, ptr null }, align 4
@alloc_generic_hdmi.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.115 = private unnamed_addr constant [16 x i8] c"&spec->pcm_lock\00", align 1
@alloc_generic_hdmi.__key.116 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.117 = private unnamed_addr constant [17 x i8] c"&spec->bind_lock\00", align 1
@generic_hdmi_patch_ops = internal unnamed_addr constant %struct.hda_codec_ops { ptr @generic_hdmi_build_controls, ptr @generic_hdmi_build_pcms, ptr @generic_hdmi_init, ptr @generic_hdmi_free, ptr @hdmi_unsol_event, ptr null, ptr @generic_hdmi_suspend, ptr @generic_hdmi_resume, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__const.generic_hdmi_build_jack.hdmi_str = private unnamed_addr constant [32 x i8] c"HDMI/DP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c",pcm=%d\00", align 1
@.str.119 = private unnamed_addr constant [9 x i8] c" Phantom\00", align 1
@eld_bytes_ctl = internal constant %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.120, i32 0, i32 5, i32 0, ptr @hdmi_eld_ctl_info, ptr @hdmi_eld_ctl_get, ptr null, %union.anon.78 zeroinitializer, i32 0 }, align 4
@.str.120 = private unnamed_addr constant [4 x i8] c"ELD\00", align 1
@.str.121 = private unnamed_addr constant [8 x i8] c"HDMI %d\00", align 1
@generic_ops = internal unnamed_addr constant %struct.hda_pcm_ops { ptr @hdmi_pcm_open, ptr @hdmi_pcm_close, ptr @generic_hdmi_playback_pcm_prepare, ptr @generic_hdmi_playback_pcm_cleanup, ptr null }, align 4
@.str.122 = private unnamed_addr constant [34 x i8] c"HDMI: hinfo %p not tied to a PCM\0A\00", align 1
@.str.123 = private unnamed_addr constant [68 x i8] c"HDMI CP event: CODEC=%d TAG=%d SUBTAG=0x%x CP_STATE=%d CP_READY=%d\0A\00", align 1
@.str.124 = private unnamed_addr constant [35 x i8] c"HDMI: failed to get afg sub nodes\0A\00", align 1
@force_connect_list = internal constant [5 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4156, i16 -30961, i16 -1, i32 1 }, %struct.snd_pci_quirk { i16 4156, i16 -30950, i16 -1, i32 1 }, %struct.snd_pci_quirk { i16 5218, i16 -4972, i16 -1, i32 1 }, %struct.snd_pci_quirk { i16 -32634, i16 8321, i16 -1, i32 1 }, %struct.snd_pci_quirk zeroinitializer], align 4
@.str.125 = private unnamed_addr constant [63 x i8] c"HDMI: pin NID 0x%x wcaps %#x does not support connection list\0A\00", align 1
@generic_hdmi_init_per_pins.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.126 = private unnamed_addr constant [15 x i8] c"&per_pin->lock\00", align 1
@.str.127 = private unnamed_addr constant [10 x i8] c"eld#%d.%d\00", align 1
@simple_pcm_playback = internal unnamed_addr constant %struct.hda_pcm_stream { i32 1, i32 2, i32 2, i16 0, i32 0, i64 0, i32 0, ptr null, %struct.hda_pcm_ops { ptr @simple_playback_pcm_open, ptr @simple_playback_pcm_close, ptr @simple_playback_pcm_prepare, ptr null, ptr null } }, align 8
@simple_hdmi_patch_ops = internal unnamed_addr constant %struct.hda_codec_ops { ptr @simple_playback_build_controls, ptr @simple_playback_build_pcms, ptr @simple_playback_init, ptr @simple_playback_free, ptr @simple_hdmi_unsol_event, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@hw_constraints_2_8_channels = internal constant %struct.snd_pcm_hw_constraint_list { ptr @channels_2_8, i32 2, i32 0 }, align 4
@hw_constraints_2_6_8_channels = internal constant %struct.snd_pcm_hw_constraint_list { ptr @channels_2_6_8, i32 3, i32 0 }, align 4
@channels_2_8 = internal constant [2 x i32] [i32 2, i32 8], align 4
@channels_2_6_8 = internal constant [3 x i32] [i32 2, i32 6, i32 8], align 4
@.str.128 = private unnamed_addr constant [7 x i8] c"HDMI 0\00", align 1
@nvhdmi_basic_init_7x_2ch = internal constant [3 x %struct.hda_verb] [%struct.hda_verb { i16 1, i32 3992, i32 1 }, %struct.hda_verb { i16 5, i32 1799, i32 69 }, %struct.hda_verb zeroinitializer], align 4
@nvhdmi_pcm_playback_8ch_7x = internal unnamed_addr constant %struct.hda_pcm_stream { i32 1, i32 2, i32 8, i16 4, i32 7904, i64 1028, i32 24, ptr null, %struct.hda_pcm_ops { ptr @simple_playback_pcm_open, ptr @nvhdmi_8ch_7x_pcm_close, ptr @nvhdmi_8ch_7x_pcm_prepare, ptr null, ptr null } }, align 8
@nvhdmi_con_nids_7x = internal unnamed_addr constant [4 x i16] [i16 6, i16 8, i16 10, i16 12], align 2
@nvhdmi_basic_init_7x_8ch = internal constant [7 x %struct.hda_verb] [%struct.hda_verb { i16 1, i32 3992, i32 1 }, %struct.hda_verb { i16 5, i32 1799, i32 69 }, %struct.hda_verb { i16 7, i32 1799, i32 69 }, %struct.hda_verb { i16 9, i32 1799, i32 69 }, %struct.hda_verb { i16 11, i32 1799, i32 69 }, %struct.hda_verb { i16 13, i32 1799, i32 69 }, %struct.hda_verb zeroinitializer], align 4
@snd_pcm_alt_chmaps = external dso_local constant [0 x %struct.snd_pcm_chmap_elem], align 1
@.str.129 = private unnamed_addr constant [41 x i8] c"No i915 binding for Intel HDMI/DP codec\0A\00", align 1
@.str.130 = private unnamed_addr constant [46 x i8] c"Can't find the HDMI/DP port for pin NID 0x%x\0A\00", align 1
@patch_i915_icl_hdmi.map = internal constant [6 x i32] [i32 0, i32 4, i32 6, i32 8, i32 10, i32 11], align 4
@patch_i915_tgl_hdmi.map = internal constant [9 x i32] [i32 4, i32 6, i32 8, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15], align 4
@hdmi_driver = internal global %struct.hda_codec_driver { %struct.hdac_driver zeroinitializer, ptr @snd_hda_id_hdmi }, align 4
@.str.131 = private unnamed_addr constant [19 x i8] c"snd_hda_codec_hdmi\00", align 1
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_alias251, ptr @__UNIQUE_ID_alias252, ptr @__UNIQUE_ID_alias253, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_enable_acomp238, ptr @__UNIQUE_ID_enable_acomptype237, ptr @__UNIQUE_ID_enable_all_pins242, ptr @__UNIQUE_ID_enable_all_pinstype241, ptr @__UNIQUE_ID_enable_silent_stream240, ptr @__UNIQUE_ID_enable_silent_streamtype239, ptr @__UNIQUE_ID_license249, ptr @__UNIQUE_ID_static_hdmi_pcm236, ptr @__UNIQUE_ID_static_hdmi_pcmtype235, ptr @__param_enable_acomp, ptr @__param_enable_all_pins, ptr @__param_enable_silent_stream, ptr @__param_static_hdmi_pcm], section "llvm.metadata"
@switch.table.simple_playback_pcm_open = private unnamed_addr constant [6 x ptr] [ptr @hw_constraints_2_8_channels, ptr @hw_constraints_2_8_channels, ptr @hw_constraints_2_8_channels, ptr @hw_constraints_2_8_channels, ptr @hw_constraints_2_8_channels, ptr @hw_constraints_2_6_8_channels], align 4
@switch.table.nvhdmi_7x_8ch_build_controls = private unnamed_addr constant [6 x i32] [i32 260, i32 260, i32 260, i32 260, i32 260, i32 324], align 4
@switch.table.nvhdmi_8ch_7x_pcm_prepare = private unnamed_addr constant [5 x i32] [i32 8, i32 0, i32 11, i32 0, i32 19], align 4

@__mod_hdaudio__snd_hda_id_hdmi_device_table = dso_local alias [118 x %struct.hda_device_id], ptr @snd_hda_id_hdmi

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__hda_codec_driver_register(ptr noundef nonnull @hdmi_driver, ptr noundef nonnull @.str.131, ptr noundef nonnull @__this_module) #20
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @hda_codec_driver_unregister(ptr noundef nonnull @hdmi_driver) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @patch_atihdmi(ptr noundef %0) #1 {
  %2 = tail call i32 @patch_generic_hdmi(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %80

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 7, i32 2
  store ptr @atihdmi_init, ptr %5, align 8
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 15
  store ptr @atihdmi_pin_get_eld, ptr %8, align 8
  %9 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 15, i32 1
  store ptr @atihdmi_pin_setup_infoframe, ptr %9, align 4
  %10 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 15, i32 2
  store ptr @atihdmi_pin_hbr_setup, ptr %10, align 8
  %11 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 15, i32 3
  store ptr @atihdmi_setup_stream, ptr %11, align 4
  %12 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 27
  %13 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 27, i32 1
  %14 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 27, i32 1, i32 7
  store ptr @atihdmi_pin_get_slot_channel, ptr %14, align 4
  %15 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 27, i32 1, i32 8
  store ptr @atihdmi_pin_set_slot_channel, ptr %15, align 4
  %16 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 7
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 268610049
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 9
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65280
  %23 = icmp ugt i32 %22, 767
  br i1 %23, label %27, label %24

24:                                               ; preds = %19, %4
  store ptr @atihdmi_paired_chmap_cea_alloc_validate_get_type, ptr %13, align 4
  %25 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 27, i32 1, i32 1
  store ptr @atihdmi_paired_cea_alloc_to_tlv_chmap, ptr %25, align 4
  %26 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 27, i32 1, i32 2
  store ptr @atihdmi_paired_chmap_validate, ptr %26, align 4
  br label %27

27:                                               ; preds = %24, %19
  %28 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 2, i32 4
  %33 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 2, i32 2
  br label %34

34:                                               ; preds = %34, %31
  %35 = phi i32 [ 0, %31 ], [ %52, %34 ]
  %36 = load ptr, ptr %32, align 4
  %37 = load i32, ptr %33, align 4
  %38 = mul i32 %37, %35
  %39 = getelementptr i8, ptr %36, i32 %38
  %40 = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %39, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = tail call i32 @llvm.umax.i32(i32 %41, i32 8)
  store i32 %42, ptr %40, align 4
  %43 = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %39, i32 0, i32 4
  %44 = load i32, ptr %43, align 8
  %45 = or i32 %44, 7904
  store i32 %45, ptr %43, align 8
  %46 = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %39, i32 0, i32 5
  %47 = load i64, ptr %46, align 8
  %48 = or i64 %47, 1028
  store i64 %48, ptr %46, align 8
  %49 = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %39, i32 0, i32 6
  %50 = load i32, ptr %49, align 8
  %51 = tail call i32 @llvm.umax.i32(i32 %50, i32 24)
  store i32 %51, ptr %49, align 8
  %52 = add nuw nsw i32 %35, 1
  %53 = load i32, ptr %28, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %34, label %55

55:                                               ; preds = %34, %27
  %56 = load i32, ptr %12, align 4
  %57 = tail call i32 @llvm.umax.i32(i32 %56, i32 8)
  store i32 %57, ptr %12, align 4
  %58 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 30
  %59 = load i32, ptr %58, align 8
  %60 = or i32 %59, 1048576
  store i32 %60, ptr %58, align 8
  %61 = load ptr, ptr %6, align 8
  %62 = load i8, ptr @enable_acomp, align 1, !range !8
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.114) #21
  br label %80

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.hdmi_spec, ptr %61, i32 0, i32 26
  store ptr @atihdmi_port2pin, ptr %66, align 8
  %67 = load ptr, ptr %6, align 8
  %68 = getelementptr inbounds %struct.hdmi_spec, ptr %67, i32 0, i32 25
  store ptr %0, ptr %68, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !9
  tail call void @arm_heavy_mb() #20
  %69 = getelementptr inbounds %struct.hdmi_spec, ptr %67, i32 0, i32 25, i32 2
  store ptr @atihdmi_pin2port, ptr %69, align 4
  %70 = getelementptr inbounds %struct.hdmi_spec, ptr %67, i32 0, i32 25, i32 1
  store ptr @generic_acomp_pin_eld_notify, ptr %70, align 4
  %71 = getelementptr inbounds %struct.hdmi_spec, ptr %67, i32 0, i32 25, i32 3
  store ptr @generic_acomp_master_bind, ptr %71, align 4
  %72 = getelementptr inbounds %struct.hdmi_spec, ptr %67, i32 0, i32 25, i32 4
  store ptr @generic_acomp_master_unbind, ptr %72, align 4
  %73 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 1
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %struct.hdmi_spec, ptr %61, i32 0, i32 25
  %76 = tail call i32 @snd_hdac_acomp_init(ptr noundef %74, ptr noundef %75, ptr noundef nonnull @match_bound_vga, i32 noundef 0) #20
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %65
  %79 = getelementptr inbounds %struct.hdmi_spec, ptr %61, i32 0, i32 23
  store i8 1, ptr %79, align 1
  br label %80

80:                                               ; preds = %78, %65, %64, %1
  %81 = phi i32 [ %2, %1 ], [ 0, %64 ], [ 0, %65 ], [ 0, %78 ]
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @patch_generic_hdmi(ptr noundef %0) #1 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1304) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %34, label %5

5:                                                ; preds = %1
  store ptr %0, ptr %3, align 8
  %6 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 15
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) @generic_standard_hdmi_ops, i32 20, i1 false) #20
  %7 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 6
  store i32 1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %8, ptr noundef nonnull @.str.115, ptr noundef nonnull @alloc_generic_hdmi.__key) #20
  %9 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %9, ptr noundef nonnull @.str.117, ptr noundef nonnull @alloc_generic_hdmi.__key.116) #20
  %10 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 27
  tail call void @snd_hdac_register_chmap_ops(ptr noundef %0, ptr noundef %10) #20
  %11 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 27, i32 1, i32 4
  store ptr @hdmi_get_chmap, ptr %11, align 8
  %12 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 27, i32 1, i32 5
  store ptr @hdmi_set_chmap, ptr %12, align 4
  %13 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 27, i32 1, i32 6
  store ptr @is_hdmi_pcm_attached, ptr %13, align 8
  %14 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 27, i32 1, i32 3
  store ptr @hdmi_get_spk_alloc, ptr %14, align 4
  %15 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  store ptr %3, ptr %15, align 8
  %16 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 7, i32 2
  store i32 920, ptr %16, align 8
  %17 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 7, i32 3
  store i32 4, ptr %17, align 4
  %18 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 2, i32 2
  store i32 40, ptr %18, align 8
  %19 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 2, i32 3
  store i32 4, ptr %19, align 4
  %20 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(40) %20, ptr noundef nonnull align 4 dereferenceable(40) @generic_hdmi_patch_ops, i32 40, i1 false) #20
  %21 = tail call fastcc i32 @hdmi_parse_codec(ptr noundef %0)
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %5
  %24 = load ptr, ptr %15, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.hdmi_spec, ptr %24, i32 0, i32 7
  tail call void @snd_array_free(ptr noundef %27) #20
  %28 = getelementptr inbounds %struct.hdmi_spec, ptr %24, i32 0, i32 2
  tail call void @snd_array_free(ptr noundef %28) #20
  tail call void @kfree(ptr noundef nonnull %24) #20
  store ptr null, ptr %15, align 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 30
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, -32769
  store i32 %32, ptr %30, align 8
  br label %34

33:                                               ; preds = %5
  tail call fastcc void @generic_hdmi_init_per_pins(ptr noundef %0)
  br label %34

34:                                               ; preds = %33, %29, %1
  %35 = phi i32 [ %21, %29 ], [ 0, %33 ], [ -12, %1 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @patch_nvhdmi_2ch(ptr noundef %0) #1 {
  %2 = tail call fastcc i32 @patch_simple_hdmi(ptr noundef %0, i16 noundef zeroext 4, i16 noundef zeroext 5)
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 7, i32 2
  store ptr @nvhdmi_7x_init_2ch, ptr %5, align 8
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 21, i32 4
  store i32 7904, ptr %8, align 8
  %9 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 21, i32 6
  store i32 24, ptr %9, align 8
  %10 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 21, i32 5
  store i64 1028, ptr %10, align 8
  br label %11

11:                                               ; preds = %4, %1
  %12 = phi i32 [ 0, %4 ], [ %2, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @patch_nvhdmi_8ch_7x(ptr noundef %0) #1 {
  %2 = tail call fastcc i32 @patch_simple_hdmi(ptr noundef %0, i16 noundef zeroext 4, i16 noundef zeroext 5) #20
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 7, i32 2
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 21, i32 4
  store i32 7904, ptr %8, align 8
  %9 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 21, i32 6
  store i32 24, ptr %9, align 8
  %10 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 21, i32 5
  store i64 1028, ptr %10, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr inbounds %struct.hdmi_spec, ptr %11, i32 0, i32 20, i32 7
  store i32 8, ptr %12, align 4
  %13 = getelementptr inbounds %struct.hdmi_spec, ptr %11, i32 0, i32 21
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(64) %13, ptr noundef nonnull align 8 dereferenceable(64) @nvhdmi_pcm_playback_8ch_7x, i32 64, i1 false)
  %14 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 7
  store ptr @nvhdmi_7x_init_8ch, ptr %5, align 8
  %15 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 7, i32 1
  store ptr @nvhdmi_7x_8ch_build_pcms, ptr %15, align 4
  store ptr @nvhdmi_7x_8ch_build_controls, ptr %14, align 8
  %16 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 3961, i32 noundef 19) #20
  %17 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 3962, i32 noundef 87) #20
  br label %18

18:                                               ; preds = %4, %1
  %19 = phi i32 [ 0, %4 ], [ %2, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @patch_nvhdmi_legacy(ptr noundef %0) #1 {
  %2 = tail call i32 @patch_generic_hdmi(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.hdmi_spec, ptr %6, i32 0, i32 16
  store i8 1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.hdmi_spec, ptr %6, i32 0, i32 27, i32 1
  store ptr @nvhdmi_chmap_cea_alloc_validate_get_type, ptr %8, align 4
  %9 = getelementptr inbounds %struct.hdmi_spec, ptr %6, i32 0, i32 27, i32 1, i32 2
  store ptr @nvhdmi_chmap_validate, ptr %9, align 4
  %10 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 30
  %11 = load i32, ptr %10, align 8
  %12 = or i32 %11, 1048576
  store i32 %12, ptr %10, align 8
  br label %13

13:                                               ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @patch_tegra_hdmi(ptr noundef %0) #1 {
  %2 = tail call i32 @patch_generic_hdmi(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 7, i32 1
  store ptr @tegra_hdmi_build_pcms, ptr %5, align 4
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 27, i32 1
  store ptr @nvhdmi_chmap_cea_alloc_validate_get_type, ptr %8, align 4
  %9 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 27, i32 1, i32 2
  store ptr @nvhdmi_chmap_validate, ptr %9, align 4
  br label %10

10:                                               ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @patch_nvhdmi(ptr noundef %0) #1 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1304) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %61, label %5

5:                                                ; preds = %1
  store ptr %0, ptr %3, align 8
  %6 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 15
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) @generic_standard_hdmi_ops, i32 20, i1 false) #20
  %7 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 6
  store i32 1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %8, ptr noundef nonnull @.str.115, ptr noundef nonnull @alloc_generic_hdmi.__key) #20
  %9 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %9, ptr noundef nonnull @.str.117, ptr noundef nonnull @alloc_generic_hdmi.__key.116) #20
  %10 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 27
  tail call void @snd_hdac_register_chmap_ops(ptr noundef %0, ptr noundef %10) #20
  %11 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 27, i32 1, i32 4
  store ptr @hdmi_get_chmap, ptr %11, align 8
  %12 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 27, i32 1, i32 5
  store ptr @hdmi_set_chmap, ptr %12, align 4
  %13 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 27, i32 1, i32 6
  store ptr @is_hdmi_pcm_attached, ptr %13, align 8
  %14 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 27, i32 1, i32 3
  store ptr @hdmi_get_spk_alloc, ptr %14, align 4
  %15 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  store ptr %3, ptr %15, align 8
  %16 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 7, i32 2
  store i32 920, ptr %16, align 8
  %17 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 7, i32 3
  store i32 4, ptr %17, align 4
  %18 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 2, i32 2
  store i32 40, ptr %18, align 8
  %19 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 2, i32 3
  store i32 4, ptr %19, align 4
  %20 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(40) %20, ptr noundef nonnull align 4 dereferenceable(40) @generic_hdmi_patch_ops, i32 40, i1 false) #20
  %21 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 30
  %22 = load i32, ptr %21, align 8
  %23 = or i32 %22, 32768
  store i32 %23, ptr %21, align 8
  %24 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 17
  store i8 1, ptr %24, align 1
  %25 = tail call fastcc i32 @hdmi_parse_codec(ptr noundef %0)
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %5
  %28 = load ptr, ptr %15, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.hdmi_spec, ptr %28, i32 0, i32 7
  tail call void @snd_array_free(ptr noundef %31) #20
  %32 = getelementptr inbounds %struct.hdmi_spec, ptr %28, i32 0, i32 2
  tail call void @snd_array_free(ptr noundef %32) #20
  tail call void @kfree(ptr noundef nonnull %28) #20
  store ptr null, ptr %15, align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32, ptr %21, align 8
  %35 = and i32 %34, -32769
  store i32 %35, ptr %21, align 8
  br label %61

36:                                               ; preds = %5
  tail call fastcc void @generic_hdmi_init_per_pins(ptr noundef %0)
  %37 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 16
  store i8 1, ptr %37, align 4
  %38 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 27, i32 1
  store ptr @nvhdmi_chmap_cea_alloc_validate_get_type, ptr %38, align 8
  %39 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 27, i32 1, i32 2
  store ptr @nvhdmi_chmap_validate, ptr %39, align 8
  %40 = load i32, ptr %21, align 8
  %41 = or i32 %40, 1048576
  store i32 %41, ptr %21, align 8
  %42 = load ptr, ptr %15, align 8
  %43 = load i8, ptr @enable_acomp, align 1, !range !8
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.114) #21
  br label %61

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.hdmi_spec, ptr %42, i32 0, i32 26
  store ptr @nvhdmi_port2pin, ptr %47, align 8
  %48 = load ptr, ptr %15, align 8
  %49 = getelementptr inbounds %struct.hdmi_spec, ptr %48, i32 0, i32 25
  store ptr %0, ptr %49, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !9
  tail call void @arm_heavy_mb() #20
  %50 = getelementptr inbounds %struct.hdmi_spec, ptr %48, i32 0, i32 25, i32 2
  store ptr @nvhdmi_pin2port, ptr %50, align 4
  %51 = getelementptr inbounds %struct.hdmi_spec, ptr %48, i32 0, i32 25, i32 1
  store ptr @generic_acomp_pin_eld_notify, ptr %51, align 4
  %52 = getelementptr inbounds %struct.hdmi_spec, ptr %48, i32 0, i32 25, i32 3
  store ptr @generic_acomp_master_bind, ptr %52, align 4
  %53 = getelementptr inbounds %struct.hdmi_spec, ptr %48, i32 0, i32 25, i32 4
  store ptr @generic_acomp_master_unbind, ptr %53, align 4
  %54 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 1
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.hdmi_spec, ptr %42, i32 0, i32 25
  %57 = tail call i32 @snd_hdac_acomp_init(ptr noundef %55, ptr noundef %56, ptr noundef nonnull @match_bound_vga, i32 noundef 0) #20
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %46
  %60 = getelementptr inbounds %struct.hdmi_spec, ptr %42, i32 0, i32 23
  store i8 1, ptr %60, align 1
  br label %61

61:                                               ; preds = %59, %46, %45, %33, %1
  %62 = phi i32 [ %25, %33 ], [ 0, %45 ], [ 0, %46 ], [ 0, %59 ], [ -12, %1 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @patch_via_hdmi(ptr noundef %0) #1 {
  %2 = tail call fastcc i32 @patch_simple_hdmi(ptr noundef %0, i16 noundef zeroext 2, i16 noundef zeroext 3)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @patch_i915_cpt_hdmi(ptr noundef %0) #1 {
  %2 = tail call fastcc i32 @alloc_intel_hdmi(ptr noundef %0)
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @parse_intel_hdmi(ptr noundef %0)
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ %5, %4 ], [ %2, %1 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @patch_i915_glk_hdmi(ptr noundef %0) #1 {
  %2 = tail call fastcc i32 @intel_hsw_common_init(ptr noundef %0, i16 noundef zeroext 11, ptr noundef null, i32 noundef 0, i32 noundef 3, i1 noundef zeroext false)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @patch_i915_hsw_hdmi(ptr noundef %0) #1 {
  %2 = load i8, ptr @enable_silent_stream, align 1, !range !8
  %3 = icmp ne i8 %2, 0
  %4 = tail call fastcc i32 @intel_hsw_common_init(ptr noundef %0, i16 noundef zeroext 8, ptr noundef null, i32 noundef 0, i32 noundef 3, i1 noundef zeroext %3)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @patch_i915_icl_hdmi(ptr noundef %0) #1 {
  %2 = load i8, ptr @enable_silent_stream, align 1, !range !8
  %3 = icmp ne i8 %2, 0
  %4 = tail call fastcc i32 @intel_hsw_common_init(ptr noundef %0, i16 noundef zeroext 2, ptr noundef nonnull @patch_i915_icl_hdmi.map, i32 noundef 6, i32 noundef 3, i1 noundef zeroext %3)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @patch_i915_tgl_hdmi(ptr noundef %0) #1 {
  %2 = load i8, ptr @enable_silent_stream, align 1, !range !8
  %3 = icmp ne i8 %2, 0
  %4 = tail call fastcc i32 @intel_hsw_common_init(ptr noundef %0, i16 noundef zeroext 2, ptr noundef nonnull @patch_i915_tgl_hdmi.map, i32 noundef 9, i32 noundef 4, i1 noundef zeroext %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.hdmi_spec, ptr %8, i32 0, i32 18
  store i8 1, ptr %9, align 2
  br label %10

10:                                               ; preds = %6, %1
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @patch_i915_byt_hdmi(ptr noundef %0) #1 {
  %2 = tail call fastcc i32 @alloc_intel_hdmi(ptr noundef %0)
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 30
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 39
  store i32 0, ptr %9, align 4
  %10 = or i32 %8, 262152
  store i32 %10, ptr %7, align 8
  %11 = getelementptr inbounds %struct.hdmi_spec, ptr %6, i32 0, i32 15, i32 4
  store ptr @i915_pin_cvt_fixup, ptr %11, align 8
  %12 = tail call fastcc i32 @parse_intel_hdmi(ptr noundef %0)
  br label %13

13:                                               ; preds = %4, %1
  %14 = phi i32 [ %12, %4 ], [ %2, %1 ]
  ret i32 %14
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atihdmi_init(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @generic_hdmi_init(ptr noundef %0)
  %5 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %34

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 7, i32 4
  %10 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 7, i32 2
  %11 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 7
  %12 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 9
  br label %13

13:                                               ; preds = %30, %8
  %14 = phi i32 [ 0, %8 ], [ %31, %30 ]
  %15 = load ptr, ptr %9, align 4
  %16 = load i32, ptr %10, align 4
  %17 = mul i32 %16, %14
  %18 = getelementptr i8, ptr %15, i32 %17
  %19 = load i16, ptr %18, align 8
  %20 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %19, i32 noundef 0, i32 noundef 1906, i32 noundef 0) #20
  %21 = load i32, ptr %11, align 8
  %22 = icmp eq i32 %21, 268610049
  br i1 %22, label %23, label %30

23:                                               ; preds = %13
  %24 = load i32, ptr %12, align 8
  %25 = and i32 %24, 65280
  %26 = icmp ugt i32 %25, 767
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i16, ptr %18, align 8
  %29 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %28, i32 noundef 0, i32 noundef 1929, i32 noundef 1) #20
  br label %30

30:                                               ; preds = %27, %23, %13
  %31 = add nuw nsw i32 %14, 1
  %32 = load i32, ptr %5, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %13, label %34

34:                                               ; preds = %30, %1
  %35 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 30
  %36 = load i32, ptr %35, align 8
  %37 = or i32 %36, 262144
  store i32 %37, ptr %35, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atihdmi_pin_get_eld(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #1 {
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %8, label %7, !prof !10

7:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.109, i32 noundef 3922, i32 noundef 9, ptr noundef null) #20
  br label %8

8:                                                ; preds = %7, %5
  %9 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 268610049
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 9
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65280
  %16 = icmp ugt i32 %15, 767
  br label %17

17:                                               ; preds = %12, %8
  %18 = phi i1 [ false, %8 ], [ %16, %12 ]
  %19 = tail call i32 @snd_hdmi_get_eld_ati(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %18) #20
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atihdmi_pin_setup_infoframe(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #1 {
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %9, label %8, !prof !10

8:                                                ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.109, i32 noundef 3932, i32 noundef 9, ptr noundef null) #20
  br label %9

9:                                                ; preds = %8, %6
  %10 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1905, i32 noundef %3) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atihdmi_pin_hbr_setup(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, i1 noundef zeroext %3) #1 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %7, label %6, !prof !10

6:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.109, i32 noundef 4127, i32 noundef 9, ptr noundef null) #20
  br label %7

7:                                                ; preds = %6, %4
  %8 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3964, i32 noundef 0) #20
  %9 = and i32 %8, -2147483647
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = and i32 %8, -17
  %13 = select i1 %3, i32 16, i32 0
  %14 = or i32 %12, %13
  %15 = icmp eq i32 %8, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1916, i32 noundef %14) #20
  br label %19

18:                                               ; preds = %7
  br i1 %3, label %20, label %19

19:                                               ; preds = %18, %16, %11
  br label %20

20:                                               ; preds = %19, %18
  %21 = phi i32 [ 0, %19 ], [ -22, %18 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atihdmi_setup_stream(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #1 {
  %7 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 268610049
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 9
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65280
  %14 = icmp ugt i32 %13, 767
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = and i32 %5, 32768
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 180, i32 0
  %19 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1904, i32 noundef %18) #20
  br label %20

20:                                               ; preds = %15, %10, %6
  %21 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.hdmi_spec, ptr %22, i32 0, i32 15, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = and i32 %5, 32783
  %26 = icmp eq i32 %25, 32775
  %27 = tail call i32 %24(ptr noundef %0, i16 noundef zeroext %2, i32 noundef %3, i1 noundef zeroext %26) #20
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.hdmi_spec, ptr %22, i32 0, i32 19
  %31 = load i8, ptr %30, align 1, !range !8
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3853, i32 noundef 0) #20
  %35 = lshr i32 %34, 16
  %36 = and i32 %35, 65520
  %37 = zext i1 %26 to i32
  %38 = or i32 %36, %37
  %39 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1854, i32 noundef %38) #20
  br label %40

40:                                               ; preds = %33, %29
  tail call void @snd_hda_codec_setup_stream(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %4, i32 noundef 0, i32 noundef %5) #20
  br label %41

41:                                               ; preds = %40, %20
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atihdmi_pin_get_slot_channel(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) #1 {
  %4 = icmp sgt i32 %2, 7
  br i1 %4, label %37, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 268610049
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 9
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65280
  %13 = icmp ugt i32 %12, 767
  br i1 %13, label %21, label %14

14:                                               ; preds = %9, %5
  switch i32 %2, label %16 [
    i32 2, label %17
    i32 3, label %15
  ]

15:                                               ; preds = %14
  br label %17

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %16, %15, %14
  %18 = phi i32 [ %2, %16 ], [ 2, %15 ], [ 3, %14 ]
  %19 = and i32 %18, 1
  %20 = and i32 %18, -2
  br label %21

21:                                               ; preds = %17, %9
  %22 = phi i32 [ 0, %9 ], [ %19, %17 ]
  %23 = phi i32 [ %2, %9 ], [ %20, %17 ]
  %24 = sdiv i32 %23, 2
  %25 = add nsw i32 %24, 3959
  %26 = mul i32 %24, 2
  %27 = sub i32 %23, %26
  %28 = mul nsw i32 %27, 14
  %29 = add nsw i32 %25, %28
  %30 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef %29, i32 noundef 0) #20
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %21
  %34 = lshr i32 %30, 4
  %35 = and i32 %34, 15
  %36 = add nuw nsw i32 %35, %22
  br label %37

37:                                               ; preds = %33, %21, %3
  %38 = phi i32 [ %36, %33 ], [ -22, %3 ], [ 15, %21 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atihdmi_pin_set_slot_channel(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = icmp sgt i32 %2, 7
  br i1 %5, label %45, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 268610049
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 9
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65280
  %14 = icmp ugt i32 %13, 767
  br i1 %14, label %31, label %15

15:                                               ; preds = %10, %6
  switch i32 %2, label %18 [
    i32 2, label %19
    i32 3, label %16
  ]

16:                                               ; preds = %15
  %17 = icmp eq i32 %3, 15
  br i1 %17, label %31, label %27

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %18, %15
  %20 = phi i32 [ %2, %18 ], [ 3, %15 ]
  %21 = srem i32 %20, 2
  %22 = icmp ne i32 %21, 0
  %23 = icmp eq i32 %3, 15
  %24 = and i1 %23, %22
  br i1 %24, label %45, label %25

25:                                               ; preds = %19
  %26 = sub i32 %20, %21
  br i1 %23, label %31, label %27

27:                                               ; preds = %25, %16
  %28 = phi i32 [ 2, %16 ], [ %26, %25 ]
  %29 = srem i32 %3, 2
  %30 = sub i32 %3, %29
  br label %31

31:                                               ; preds = %27, %25, %16, %10
  %32 = phi i32 [ %3, %10 ], [ %30, %27 ], [ 15, %25 ], [ 15, %16 ]
  %33 = phi i32 [ %2, %10 ], [ %28, %27 ], [ %26, %25 ], [ 2, %16 ]
  %34 = sdiv i32 %33, 2
  %35 = add nsw i32 %34, 1911
  %36 = mul i32 %34, 2
  %37 = sub i32 %33, %36
  %38 = mul nsw i32 %37, 14
  %39 = add nsw i32 %35, %38
  %40 = icmp eq i32 %32, 15
  %41 = shl i32 %32, 4
  %42 = or i32 %41, 1
  %43 = select i1 %40, i32 0, i32 %42
  %44 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef %39, i32 noundef %43) #20
  br label %45

45:                                               ; preds = %31, %19, %4
  %46 = phi i32 [ %44, %31 ], [ -22, %4 ], [ 0, %19 ]
  ret i32 %46
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @atihdmi_paired_chmap_cea_alloc_validate_get_type(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #3 {
  %4 = and i32 %2, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %53

6:                                                ; preds = %3
  %7 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr %1, i32 0, i32 1, i32 0
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr %1, i32 0, i32 1, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %6
  br label %15

15:                                               ; preds = %14, %10
  %16 = phi i32 [ 1, %14 ], [ 0, %10 ]
  %17 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr %1, i32 0, i32 1, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr %1, i32 0, i32 1, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20, %15
  %25 = add nuw nsw i32 %16, 1
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi i32 [ %25, %24 ], [ %16, %20 ]
  %28 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr %1, i32 0, i32 1, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr %1, i32 0, i32 1, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31, %26
  %36 = add nuw nsw i32 %27, 1
  br label %37

37:                                               ; preds = %35, %31
  %38 = phi i32 [ %36, %35 ], [ %27, %31 ]
  %39 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr %1, i32 0, i32 1, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr %1, i32 0, i32 1, i32 7
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42, %37
  %47 = add nuw nsw i32 %38, 1
  br label %48

48:                                               ; preds = %46, %42
  %49 = phi i32 [ %47, %46 ], [ %38, %42 ]
  %50 = shl nuw nsw i32 %49, 1
  %51 = icmp eq i32 %50, %2
  %52 = select i1 %51, i32 259, i32 -1
  br label %53

53:                                               ; preds = %48, %3
  %54 = phi i32 [ -1, %3 ], [ %52, %48 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atihdmi_paired_cea_alloc_to_tlv_chmap(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #1 {
  br label %5

5:                                                ; preds = %31, %4
  %6 = phi i32 [ 0, %4 ], [ %32, %31 ]
  %7 = phi i32 [ 7, %4 ], [ %33, %31 ]
  %8 = sub nuw nsw i32 7, %7
  switch i32 %8, label %10 [
    i32 2, label %11
    i32 3, label %9
  ]

9:                                                ; preds = %5
  br label %11

10:                                               ; preds = %5
  br label %11

11:                                               ; preds = %10, %9, %5
  %12 = phi i32 [ %8, %10 ], [ 2, %9 ], [ 3, %5 ]
  %13 = sub nuw nsw i32 7, %12
  %14 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr %1, i32 0, i32 1, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = and i32 %13, 1
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 1, i32 -1
  %21 = add nsw i32 %20, %13
  %22 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr %1, i32 0, i32 1, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %27

25:                                               ; preds = %11
  %26 = tail call i32 @snd_hdac_spk_to_chmap(i32 noundef %15) #20
  br label %27

27:                                               ; preds = %25, %17
  %28 = phi i32 [ %26, %25 ], [ 1, %17 ]
  %29 = add i32 %6, 1
  %30 = getelementptr i32, ptr %2, i32 %6
  store i32 %28, ptr %30, align 4
  br label %31

31:                                               ; preds = %27, %17
  %32 = phi i32 [ %6, %17 ], [ %29, %27 ]
  %33 = add nsw i32 %7, -1
  %34 = icmp eq i32 %7, 0
  br i1 %34, label %35, label %5

35:                                               ; preds = %31
  %36 = icmp eq i32 %32, %3
  br i1 %36, label %38, label %37, !prof !10

37:                                               ; preds = %35
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.109, i32 noundef 4119, i32 noundef 9, ptr noundef null) #20
  br label %38

38:                                               ; preds = %37, %35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atihdmi_paired_chmap_validate(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #1 {
  %5 = tail call ptr @snd_hdac_get_ch_alloc_from_ca(i32 noundef %1) #20
  %6 = icmp sgt i32 %2, 0
  br i1 %6, label %7, label %79

7:                                                ; preds = %75, %4
  %8 = phi i32 [ %77, %75 ], [ 0, %4 ]
  %9 = getelementptr i8, ptr %3, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = tail call i32 @snd_hdac_chmap_to_spk_mask(i8 noundef zeroext %10) #20
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %75, label %13

13:                                               ; preds = %7
  %14 = srem i32 %8, 2
  %15 = sub nsw i32 7, %14
  %16 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr %5, i32 0, i32 1, i32 %15
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %11
  br i1 %18, label %19, label %38

19:                                               ; preds = %67, %58, %52, %42, %13
  %20 = phi i32 [ %14, %13 ], [ %39, %42 ], [ %49, %52 ], [ %59, %58 ], [ %65, %67 ]
  %21 = icmp eq i32 %14, 0
  br i1 %21, label %22, label %72

22:                                               ; preds = %19
  %23 = add i32 %8, 1
  %24 = icmp slt i32 %23, %2
  br i1 %24, label %25, label %72

25:                                               ; preds = %22
  switch i32 %20, label %27 [
    i32 1, label %29
    i32 2, label %26
  ]

26:                                               ; preds = %25
  br label %29

27:                                               ; preds = %25
  %28 = xor i32 %20, -1
  br label %29

29:                                               ; preds = %27, %26, %25
  %30 = phi i32 [ %28, %27 ], [ -2, %26 ], [ -3, %25 ]
  %31 = add i32 %30, 7
  %32 = getelementptr i8, ptr %3, i32 %23
  %33 = load i8, ptr %32, align 1
  %34 = tail call i32 @snd_hdac_chmap_to_spk_mask(i8 noundef zeroext %33) #20
  %35 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr %5, i32 0, i32 1, i32 %31
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %72, label %79

38:                                               ; preds = %13
  %39 = add nsw i32 %14, 2
  switch i32 %14, label %41 [
    i32 0, label %42
    i32 1, label %40
  ]

40:                                               ; preds = %38
  br label %42

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %41, %40, %38
  %43 = phi i32 [ %39, %41 ], [ 2, %40 ], [ 3, %38 ]
  %44 = sub nsw i32 7, %43
  %45 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr %5, i32 0, i32 1, i32 %44
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, %11
  br i1 %47, label %19, label %48

48:                                               ; preds = %42
  %49 = add nsw i32 %14, 4
  switch i32 %14, label %51 [
    i32 -2, label %52
    i32 -1, label %50
  ]

50:                                               ; preds = %48
  br label %52

51:                                               ; preds = %48
  br label %52

52:                                               ; preds = %51, %50, %48
  %53 = phi i32 [ %49, %51 ], [ 2, %50 ], [ 3, %48 ]
  %54 = sub nsw i32 7, %53
  %55 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr %5, i32 0, i32 1, i32 %54
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, %11
  br i1 %57, label %19, label %58

58:                                               ; preds = %52
  %59 = add nsw i32 %14, 6
  %60 = sub nsw i32 7, %59
  %61 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr %5, i32 0, i32 1, i32 %60
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, %11
  br i1 %63, label %19, label %64

64:                                               ; preds = %58
  %65 = add nsw i32 %14, 8
  %66 = icmp slt i32 %14, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %64
  %68 = sub nsw i32 7, %65
  %69 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr %5, i32 0, i32 1, i32 %68
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, %11
  br i1 %71, label %19, label %79

72:                                               ; preds = %29, %22, %19
  %73 = phi i32 [ 0, %19 ], [ 0, %22 ], [ 1, %29 ]
  %74 = add i32 %73, %8
  br label %75

75:                                               ; preds = %72, %7
  %76 = phi i32 [ %74, %72 ], [ %8, %7 ]
  %77 = add i32 %76, 1
  %78 = icmp slt i32 %77, %2
  br i1 %78, label %7, label %79

79:                                               ; preds = %75, %67, %64, %29, %4
  %80 = phi i32 [ 0, %4 ], [ -22, %64 ], [ -22, %67 ], [ 0, %75 ], [ -22, %29 ]
  ret i32 %80
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @atihdmi_port2pin(ptr nocapture noundef readnone %0, i32 noundef %1) #4 {
  %3 = shl i32 %1, 1
  %4 = add i32 %3, 3
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @generic_hdmi_init(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %4) #20
  %5 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %58

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 7, i32 4
  %10 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 7, i32 2
  %11 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 18
  %12 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 17
  %13 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 14
  br label %14

14:                                               ; preds = %54, %8
  %15 = phi i32 [ 0, %8 ], [ %55, %54 ]
  %16 = load ptr, ptr %9, align 4
  %17 = load i32, ptr %10, align 4
  %18 = mul i32 %17, %15
  %19 = getelementptr i8, ptr %16, i32 %18
  %20 = load i16, ptr %19, align 8
  %21 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %19, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @snd_hda_set_dev_select(ptr noundef %0, i16 noundef zeroext %20, i32 noundef %22) #20
  %24 = load ptr, ptr %2, align 8
  %25 = zext i16 %20 to i32
  %26 = load i16, ptr %11, align 4
  %27 = zext i16 %26 to i32
  %28 = icmp ugt i16 %26, %20
  br i1 %28, label %42, label %29

29:                                               ; preds = %14
  %30 = load i32, ptr %12, align 8
  %31 = add i32 %30, %27
  %32 = icmp ugt i32 %31, %25
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load ptr, ptr %13, align 4
  %35 = sub nsw i32 %25, %27
  %36 = getelementptr i32, ptr %34, i32 %35
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  %41 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %20, i32 noundef 0, i32 noundef 768, i32 noundef 45056) #20
  br label %42

42:                                               ; preds = %40, %33, %29, %14
  %43 = getelementptr inbounds %struct.hdmi_spec, ptr %24, i32 0, i32 16
  %44 = load i8, ptr %43, align 4, !range !8
  %45 = icmp eq i8 %44, 0
  %46 = select i1 %45, i32 64, i32 0
  %47 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %20, i32 noundef 0, i32 noundef 1799, i32 noundef %46) #20
  %48 = load ptr, ptr %2, align 8
  %49 = getelementptr inbounds %struct.hdmi_spec, ptr %48, i32 0, i32 22
  %50 = load i8, ptr %49, align 8, !range !8
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = tail call ptr @snd_hda_jack_detect_enable_callback_mst(ptr noundef %0, i16 noundef zeroext %20, i32 noundef %22, ptr noundef nonnull @jack_callback) #20
  br label %54

54:                                               ; preds = %52, %42
  %55 = add nuw nsw i32 %15, 1
  %56 = load i32, ptr %5, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %14, label %58

58:                                               ; preds = %54, %1
  tail call void @mutex_unlock(ptr noundef %4) #20
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_set_dev_select(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_hda_jack_detect_enable_callback_mst(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @jack_callback(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hdmi_spec, ptr %4, i32 0, i32 22
  %6 = load i8, ptr %5, align 8, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %43

8:                                                ; preds = %2
  %9 = load i16, ptr %1, align 4
  %10 = getelementptr inbounds %struct.hda_jack_callback, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, -1
  %13 = select i1 %12, i32 0, i32 %11
  %14 = getelementptr inbounds %struct.hdmi_spec, ptr %4, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.hdmi_spec, ptr %4, i32 0, i32 7, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.hdmi_spec, ptr %4, i32 0, i32 7, i32 2
  %21 = load i32, ptr %20, align 4
  br label %22

22:                                               ; preds = %32, %17
  %23 = phi i32 [ 0, %17 ], [ %33, %32 ]
  %24 = mul i32 %23, %21
  %25 = getelementptr i8, ptr %19, i32 %24
  %26 = load i16, ptr %25, align 8
  %27 = icmp eq i16 %26, %9
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %25, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %13
  br i1 %31, label %37, label %32

32:                                               ; preds = %28, %22
  %33 = add nuw nsw i32 %23, 1
  %34 = icmp eq i32 %33, %15
  br i1 %34, label %35, label %22

35:                                               ; preds = %32, %8
  %36 = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.108, i32 noundef %36) #21
  br label %43

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.hdmi_spec, ptr %4, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %38) #20
  %39 = load ptr, ptr %18, align 4
  %40 = load i32, ptr %20, align 4
  %41 = mul i32 %40, %23
  %42 = getelementptr i8, ptr %39, i32 %41
  tail call fastcc void @hdmi_present_sense(ptr noundef %42, i32 noundef 1) #20
  tail call void @mutex_unlock(ptr noundef %38) #20
  br label %43

43:                                               ; preds = %37, %35, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hdmi_present_sense(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.hda_codec, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 22
  %9 = load i8, ptr %8, align 8, !range !8
  %10 = icmp eq i8 %9, 0
  %11 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 14
  br i1 %10, label %12, label %53

12:                                               ; preds = %2
  %13 = load i16, ptr %0, align 8
  %14 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %5) #20
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 11, i32 18
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 11, i32 15
  %24 = load i16, ptr %23, align 8
  %25 = and i16 %24, 7
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %51, label %27

27:                                               ; preds = %22, %18, %12
  %28 = tail call i32 @snd_hda_jack_pin_sense(ptr noundef %5, i16 noundef zeroext %13, i32 noundef %15) #20
  %29 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %29) #20
  %30 = icmp slt i32 %28, 0
  %31 = lshr i32 %28, 31
  %32 = trunc i32 %31 to i8
  store i8 %32, ptr %11, align 8
  br i1 %30, label %35, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 14, i32 1
  br label %48

35:                                               ; preds = %27
  %36 = lshr i32 %28, 30
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, 1
  %39 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 14, i32 1
  store i8 %38, ptr %39, align 1
  %40 = icmp eq i8 %38, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 15
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 14, i32 3
  %45 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 14, i32 2
  %46 = tail call i32 %43(ptr noundef %5, i16 noundef zeroext %13, i32 noundef %15, ptr noundef %44, ptr noundef %45) #20
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41, %33
  %49 = phi ptr [ %34, %33 ], [ %39, %41 ]
  store i8 0, ptr %49, align 1
  br label %50

50:                                               ; preds = %48, %41, %35
  tail call fastcc void @update_eld(ptr noundef %5, ptr noundef %0, ptr noundef %11, i32 noundef %1) #20
  tail call void @mutex_unlock(ptr noundef %29) #20
  br label %51

51:                                               ; preds = %50, %22
  %52 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %5) #20
  br label %205

53:                                               ; preds = %2
  %54 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %54) #20
  store i8 0, ptr %11, align 8
  %55 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %0, i32 0, i32 8
  %56 = load i8, ptr %55, align 8, !range !8
  %57 = icmp eq i8 %56, 0
  %58 = load i16, ptr %0, align 8
  %59 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %0, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 14, i32 3
  %62 = tail call i32 @snd_hdac_acomp_get_eld(ptr noundef %5, i16 noundef zeroext %58, i32 noundef %60, ptr noundef %11, ptr noundef %61, i32 noundef 256) #20
  %63 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 14, i32 2
  store i32 %62, ptr %63, align 4
  %64 = icmp sgt i32 %62, 0
  %65 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 14, i32 1
  %66 = zext i1 %64 to i8
  store i8 %66, ptr %65, align 1
  tail call fastcc void @update_eld(ptr noundef %5, ptr noundef %0, ptr noundef %11, i32 noundef 0) #20
  %67 = load i8, ptr %55, align 8, !range !8
  %68 = icmp eq i8 %67, 0
  tail call void @mutex_unlock(ptr noundef %54) #20
  %69 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 31
  %70 = load i8, ptr %69, align 8, !range !8
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %205, label %72

72:                                               ; preds = %53
  %73 = xor i1 %57, true
  %74 = select i1 %73, i1 true, i1 %68
  br i1 %74, label %157, label %75

75:                                               ; preds = %72
  %76 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %5) #20
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.110, i32 noundef %76) #21
  br label %79

79:                                               ; preds = %78, %75
  %80 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  store i32 0, ptr %3, align 4, !annotation !11
  tail call void @mutex_lock(ptr noundef %54) #20
  %81 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %0, i32 0, i32 14
  %82 = load i8, ptr %81, align 4, !range !8
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %156

84:                                               ; preds = %79
  %85 = load i16, ptr %0, align 8
  %86 = load i32, ptr %59, align 4
  %87 = load ptr, ptr %6, align 8
  %88 = icmp eq i32 %86, -1
  %89 = select i1 %88, i32 0, i32 %86
  %90 = getelementptr inbounds %struct.hdmi_spec, ptr %87, i32 0, i32 4
  %91 = load i32, ptr %90, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %111

93:                                               ; preds = %84
  %94 = getelementptr inbounds %struct.hdmi_spec, ptr %87, i32 0, i32 7, i32 4
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.hdmi_spec, ptr %87, i32 0, i32 7, i32 2
  %97 = load i32, ptr %96, align 4
  br label %98

98:                                               ; preds = %108, %93
  %99 = phi i32 [ 0, %93 ], [ %109, %108 ]
  %100 = mul i32 %99, %97
  %101 = getelementptr i8, ptr %95, i32 %100
  %102 = load i16, ptr %101, align 8
  %103 = icmp eq i16 %102, %85
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %101, i32 0, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %106, %89
  br i1 %107, label %113, label %108

108:                                              ; preds = %104, %98
  %109 = add nuw nsw i32 %99, 1
  %110 = icmp eq i32 %109, %91
  br i1 %110, label %111, label %98

111:                                              ; preds = %108, %84
  %112 = zext i16 %85 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.108, i32 noundef %112) #21
  br label %113

113:                                              ; preds = %111, %104
  %114 = phi i32 [ -22, %111 ], [ %99, %104 ]
  %115 = call fastcc i32 @hdmi_choose_cvt(ptr noundef %5, i32 noundef %114, ptr noundef nonnull %3) #20
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.112) #21
  br label %156

118:                                              ; preds = %113
  %119 = load i32, ptr %3, align 4
  %120 = getelementptr inbounds %struct.hdmi_spec, ptr %80, i32 0, i32 2, i32 4
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.hdmi_spec, ptr %80, i32 0, i32 2, i32 2
  %123 = load i32, ptr %122, align 4
  %124 = mul i32 %123, %119
  %125 = getelementptr i8, ptr %121, i32 %124
  %126 = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %125, i32 0, i32 1
  store i32 1, ptr %126, align 4
  %127 = load i16, ptr %125, align 8
  %128 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %0, i32 0, i32 6
  store i16 %127, ptr %128, align 4
  %129 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %0, i32 0, i32 15
  store i8 1, ptr %129, align 1
  %130 = load i16, ptr %0, align 8
  %131 = load i32, ptr %59, align 4
  %132 = call i32 @snd_hda_set_dev_select(ptr noundef %5, i16 noundef zeroext %130, i32 noundef %131) #20
  %133 = load i16, ptr %0, align 8
  %134 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %0, i32 0, i32 5
  %135 = load i32, ptr %134, align 8
  %136 = zext i16 %133 to i32
  %137 = shl i32 %136, 20
  %138 = or i32 %137, 983296
  %139 = call i32 @snd_hdac_regmap_write_raw(ptr noundef %5, i32 noundef %138, i32 noundef %135) #20
  %140 = load ptr, ptr %6, align 8
  %141 = getelementptr inbounds %struct.hdmi_spec, ptr %140, i32 0, i32 15, i32 4
  %142 = load ptr, ptr %141, align 8
  %143 = icmp eq ptr %142, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %118
  call void %142(ptr noundef %5, ptr noundef %0, i16 noundef zeroext 0) #20
  br label %145

145:                                              ; preds = %144, %118
  %146 = load i16, ptr %0, align 8
  %147 = load i32, ptr %59, align 4
  %148 = call i32 @snd_hdac_sync_audio_rate(ptr noundef %5, i16 noundef zeroext %146, i32 noundef %147, i32 noundef 48000) #20
  %149 = call i32 @snd_hdac_calc_stream_format(i32 noundef 48000, i32 noundef 2, i32 noundef 2, i32 noundef 16, i16 noundef zeroext 0) #20
  %150 = load i16, ptr %128, align 4
  call void @snd_hda_codec_setup_stream(ptr noundef %5, i16 noundef zeroext %150, i32 noundef 15, i32 noundef 15, i32 noundef %149) #20
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #20
  %151 = load i16, ptr %128, align 4
  call void @snd_hda_codec_setup_stream(ptr noundef %5, i16 noundef zeroext %151, i32 noundef 15, i32 noundef 0, i32 noundef %149) #20
  %152 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %0, i32 0, i32 16
  store i32 2, ptr %152, align 8
  %153 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %0, i32 0, i32 17
  %154 = load i8, ptr %153, align 4, !range !8
  %155 = icmp ne i8 %154, 0
  call fastcc void @hdmi_setup_audio_infoframe(ptr noundef %5, ptr noundef %0, i1 noundef zeroext %155) #20
  br label %156

156:                                              ; preds = %145, %117, %79
  call void @mutex_unlock(ptr noundef %54) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  br label %205

157:                                              ; preds = %72
  %158 = xor i1 %68, true
  %159 = select i1 %57, i1 true, i1 %158
  br i1 %159, label %205, label %160

160:                                              ; preds = %157
  %161 = load ptr, ptr %6, align 8
  tail call void @mutex_lock(ptr noundef %54) #20
  %162 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %0, i32 0, i32 15
  %163 = load i8, ptr %162, align 1, !range !8
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %201, label %165

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %0, i32 0, i32 6
  %167 = load i16, ptr %166, align 4
  %168 = load ptr, ptr %6, align 8
  %169 = getelementptr inbounds %struct.hdmi_spec, ptr %168, i32 0, i32 1
  %170 = load i32, ptr %169, align 4
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %186

172:                                              ; preds = %165
  %173 = getelementptr inbounds %struct.hdmi_spec, ptr %168, i32 0, i32 2, i32 4
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr inbounds %struct.hdmi_spec, ptr %168, i32 0, i32 2, i32 2
  %176 = load i32, ptr %175, align 4
  br label %177

177:                                              ; preds = %183, %172
  %178 = phi i32 [ 0, %172 ], [ %184, %183 ]
  %179 = mul i32 %178, %176
  %180 = getelementptr i8, ptr %174, i32 %179
  %181 = load i16, ptr %180, align 8
  %182 = icmp eq i16 %181, %167
  br i1 %182, label %188, label %183

183:                                              ; preds = %177
  %184 = add nuw nsw i32 %178, 1
  %185 = icmp eq i32 %184, %170
  br i1 %185, label %186, label %177

186:                                              ; preds = %183, %165
  %187 = zext i16 %167 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.113, i32 noundef %187) #21
  br label %200

188:                                              ; preds = %177
  %189 = getelementptr inbounds %struct.hdmi_spec, ptr %161, i32 0, i32 1
  %190 = load i32, ptr %189, align 4
  %191 = icmp slt i32 %178, %190
  br i1 %191, label %192, label %200

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.hdmi_spec, ptr %161, i32 0, i32 2, i32 4
  %194 = load ptr, ptr %193, align 4
  %195 = getelementptr inbounds %struct.hdmi_spec, ptr %161, i32 0, i32 2, i32 2
  %196 = load i32, ptr %195, align 4
  %197 = mul i32 %196, %178
  %198 = getelementptr i8, ptr %194, i32 %197
  %199 = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %198, i32 0, i32 1
  store i32 0, ptr %199, align 4
  br label %200

200:                                              ; preds = %192, %188, %186
  store i16 0, ptr %166, align 4
  store i8 0, ptr %162, align 1
  br label %201

201:                                              ; preds = %200, %160
  tail call void @mutex_unlock(ptr noundef %54) #20
  %202 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %5) #20
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %201
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.111, i32 noundef %202) #21
  br label %205

205:                                              ; preds = %204, %201, %157, %156, %53, %51
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_power_up_pm(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_jack_pin_sense(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @update_eld(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 8
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 8, i32 1
  %9 = load i8, ptr %8, align 1, !range !8
  %10 = icmp ne i8 %9, 0
  %11 = getelementptr inbounds %struct.hdmi_eld, ptr %2, i32 0, i32 1
  %12 = load i8, ptr %11, align 1, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %39, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.hdmi_eld, ptr %2, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hdmi_eld, ptr %2, i32 0, i32 4
  %20 = getelementptr inbounds %struct.hdmi_eld, ptr %2, i32 0, i32 3
  %21 = tail call i32 @snd_hdmi_parse_eld(ptr noundef %0, ptr noundef %19, ptr noundef %20, i32 noundef %16) #20
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18, %14
  store i8 0, ptr %11, align 1
  %24 = icmp eq i32 %3, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 10
  %27 = load ptr, ptr @system_wq, align 4
  %28 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %27, ptr noundef %26, i32 noundef 30) #20
  br label %358

29:                                               ; preds = %18
  %30 = load i8, ptr %11, align 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr %15, align 4
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.hdmi_eld, ptr %2, i32 0, i32 4, i32 12
  %37 = load i32, ptr %36, align 4
  %38 = icmp slt i32 %37, 1
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %32, %29, %23, %4
  store i8 0, ptr %11, align 1
  %40 = getelementptr inbounds %struct.hdmi_eld, ptr %2, i32 0, i32 2
  store i32 0, ptr %40, align 4
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi i1 [ true, %39 ], [ false, %35 ]
  %43 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 12
  %44 = load i32, ptr %43, align 4
  %45 = icmp sgt i32 %44, -1
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load ptr, ptr %6, align 8
  %48 = getelementptr %struct.hdmi_spec, ptr %47, i32 0, i32 8, i32 %44, i32 1
  %49 = load ptr, ptr %48, align 4
  br label %50

50:                                               ; preds = %46, %41
  %51 = phi ptr [ %49, %46 ], [ null, %41 ]
  %52 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 17
  %53 = load i8, ptr %52, align 1, !range !8
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %258, label %55

55:                                               ; preds = %50
  br i1 %42, label %233, label %56

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 11
  %58 = load ptr, ptr %57, align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %150

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 18
  %62 = load i8, ptr %61, align 2, !range !8
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 5
  %66 = load i32, ptr %65, align 8
  br label %126

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 19
  %73 = load i8, ptr %72, align 1, !range !8
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %91, label %75

75:                                               ; preds = %71, %67
  %76 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 2
  %77 = load i32, ptr %76, align 8
  %78 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 11
  %79 = lshr i32 %77, 5
  %80 = getelementptr i32, ptr %78, i32 %79
  %81 = load volatile i32, ptr %80, align 4
  %82 = and i32 %77, 31
  %83 = shl nuw i32 1, %82
  %84 = and i32 %83, %81
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %142, label %86

86:                                               ; preds = %75
  %87 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 5
  %88 = load i32, ptr %87, align 8
  %89 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 12
  %90 = load i32, ptr %89, align 8
  br label %108

91:                                               ; preds = %71
  %92 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 5
  %93 = load i32, ptr %92, align 8
  %94 = add i32 %69, -1
  %95 = add i32 %94, %93
  %96 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 12
  %97 = load i32, ptr %96, align 8
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 11
  %101 = lshr i32 %95, 5
  %102 = getelementptr i32, ptr %100, i32 %101
  %103 = load volatile i32, ptr %102, align 4
  %104 = and i32 %95, 31
  %105 = shl nuw i32 1, %104
  %106 = and i32 %103, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %142, label %108

108:                                              ; preds = %99, %91, %86
  %109 = phi i32 [ %90, %86 ], [ %97, %91 ], [ %97, %99 ]
  %110 = phi i32 [ %88, %86 ], [ %93, %91 ], [ %93, %99 ]
  %111 = icmp slt i32 %110, %109
  br i1 %111, label %112, label %126

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 11
  br label %114

114:                                              ; preds = %123, %112
  %115 = phi i32 [ %110, %112 ], [ %124, %123 ]
  %116 = lshr i32 %115, 5
  %117 = getelementptr i32, ptr %113, i32 %116
  %118 = load volatile i32, ptr %117, align 4
  %119 = and i32 %115, 31
  %120 = shl nuw i32 1, %119
  %121 = and i32 %120, %118
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %142, label %123

123:                                              ; preds = %114
  %124 = add i32 %115, 1
  %125 = icmp eq i32 %124, %109
  br i1 %125, label %126, label %114

126:                                              ; preds = %123, %108, %64
  %127 = phi i32 [ %66, %64 ], [ %110, %108 ], [ %110, %123 ]
  %128 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 11
  %129 = icmp sgt i32 %127, 0
  br i1 %129, label %130, label %150

130:                                              ; preds = %139, %126
  %131 = phi i32 [ %140, %139 ], [ 0, %126 ]
  %132 = lshr i32 %131, 5
  %133 = getelementptr i32, ptr %128, i32 %132
  %134 = load volatile i32, ptr %133, align 4
  %135 = and i32 %131, 31
  %136 = shl nuw i32 1, %135
  %137 = and i32 %136, %134
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %145, label %139

139:                                              ; preds = %130
  %140 = add nuw nsw i32 %131, 1
  %141 = icmp eq i32 %140, %127
  br i1 %141, label %150, label %130

142:                                              ; preds = %114, %99, %75
  %143 = phi i32 [ %95, %99 ], [ %77, %75 ], [ %115, %114 ]
  %144 = icmp eq i32 %143, -16
  br i1 %144, label %150, label %145

145:                                              ; preds = %142, %130
  %146 = phi i32 [ %143, %142 ], [ %131, %130 ]
  store i32 %146, ptr %43, align 4
  %147 = getelementptr %struct.hdmi_spec, ptr %7, i32 0, i32 8, i32 %146
  store ptr %147, ptr %57, align 8
  %148 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 11
  tail call void @_set_bit(i32 noundef %146, ptr noundef %148) #20
  %149 = load i32, ptr %43, align 4
  br label %150

150:                                              ; preds = %145, %142, %139, %126, %56
  %151 = phi i32 [ %44, %56 ], [ %44, %126 ], [ %44, %142 ], [ %149, %145 ], [ %44, %139 ]
  %152 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 7
  %153 = load ptr, ptr %152, align 8
  %154 = icmp sgt i32 %151, -1
  br i1 %154, label %155, label %258

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 12
  %157 = load i32, ptr %156, align 8
  %158 = icmp slt i32 %151, %157
  br i1 %158, label %159, label %258

159:                                              ; preds = %155
  %160 = getelementptr %struct.hdmi_spec, ptr %7, i32 0, i32 8, i32 %151
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.hda_pcm, ptr %161, i32 0, i32 4
  %163 = load ptr, ptr %162, align 8
  %164 = icmp eq ptr %163, null
  br i1 %164, label %258, label %165

165:                                              ; preds = %159
  %166 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 13
  %167 = lshr i32 %151, 5
  %168 = getelementptr i32, ptr %166, i32 %167
  %169 = load volatile i32, ptr %168, align 4
  %170 = and i32 %151, 31
  %171 = shl nuw i32 1, %170
  %172 = and i32 %169, %171
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %258, label %174

174:                                              ; preds = %165
  %175 = getelementptr inbounds %struct.snd_pcm, ptr %163, i32 0, i32 8, i32 0, i32 4
  %176 = load ptr, ptr %175, align 8
  %177 = getelementptr inbounds %struct.hda_pcm, ptr %161, i32 0, i32 1, i32 0, i32 3
  %178 = load i16, ptr %177, align 4
  %179 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 6
  store i16 %178, ptr %179, align 4
  %180 = load i16, ptr %177, align 4
  %181 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 3
  %182 = load i32, ptr %181, align 4
  %183 = icmp sgt i32 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %189, %174
  %185 = phi i32 [ %190, %189 ], [ 0, %174 ]
  %186 = getelementptr %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 4, i32 %185
  %187 = load i16, ptr %186, align 2
  %188 = icmp eq i16 %187, %180
  br i1 %188, label %192, label %189

189:                                              ; preds = %184
  %190 = add nuw nsw i32 %185, 1
  %191 = icmp eq i32 %190, %182
  br i1 %191, label %207, label %184

192:                                              ; preds = %184, %174
  %193 = phi i32 [ 0, %174 ], [ %185, %184 ]
  %194 = icmp slt i32 %193, %182
  br i1 %194, label %195, label %207

195:                                              ; preds = %192
  %196 = load i16, ptr %1, align 8
  %197 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 1
  %198 = load i32, ptr %197, align 4
  %199 = tail call i32 @snd_hda_set_dev_select(ptr noundef %153, i16 noundef zeroext %196, i32 noundef %198) #20
  %200 = load i16, ptr %1, align 8
  %201 = zext i16 %200 to i32
  %202 = shl i32 %201, 20
  %203 = or i32 %202, 983296
  %204 = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %153, i32 noundef %203, i32 noundef %193) #20
  %205 = load i32, ptr %43, align 4
  %206 = load i16, ptr %177, align 4
  br label %207

207:                                              ; preds = %195, %192, %189
  %208 = phi i16 [ %206, %195 ], [ %180, %192 ], [ %180, %189 ]
  %209 = phi i32 [ %205, %195 ], [ %151, %192 ], [ %151, %189 ]
  %210 = phi i32 [ %193, %195 ], [ %193, %192 ], [ %182, %189 ]
  tail call void @snd_hda_spdif_ctls_assign(ptr noundef %153, i32 noundef %209, i16 noundef zeroext %208) #20
  %211 = load i16, ptr %177, align 4
  %212 = getelementptr inbounds %struct.hda_codec, ptr %153, i32 0, i32 18
  tail call void @mutex_lock(ptr noundef %212) #20
  %213 = tail call ptr @snd_hda_spdif_out_of_nid(ptr noundef %153, i16 noundef zeroext %211) #20
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %216, !prof !12

215:                                              ; preds = %207
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.109, i32 noundef 2018, i32 noundef 9, ptr noundef null) #20
  br label %221

216:                                              ; preds = %207
  %217 = getelementptr inbounds %struct.hda_spdif_out, ptr %213, i32 0, i32 1
  %218 = load i32, ptr %217, align 4
  %219 = and i32 %218, 2
  %220 = icmp ne i32 %219, 0
  br label %221

221:                                              ; preds = %216, %215
  %222 = phi i1 [ true, %215 ], [ %220, %216 ]
  tail call void @mutex_unlock(ptr noundef %212) #20
  %223 = getelementptr inbounds %struct.snd_pcm_substream, ptr %176, i32 0, i32 11
  %224 = load ptr, ptr %223, align 4
  %225 = icmp eq ptr %224, null
  br i1 %225, label %230, label %226

226:                                              ; preds = %221
  %227 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %224, i32 0, i32 15
  %228 = load i32, ptr %227, align 8
  %229 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 16
  store i32 %228, ptr %229, align 8
  br label %230

230:                                              ; preds = %226, %221
  %231 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 14
  store i8 1, ptr %231, align 4
  %232 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 5
  store i32 %210, ptr %232, align 8
  tail call fastcc void @hdmi_setup_audio_infoframe(ptr noundef %153, ptr noundef %1, i1 noundef zeroext %222) #20
  br label %258

233:                                              ; preds = %55
  br i1 %45, label %234, label %241

234:                                              ; preds = %233
  %235 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 12
  %236 = load i32, ptr %235, align 8
  %237 = icmp slt i32 %44, %236
  br i1 %237, label %238, label %241

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 7
  %240 = load ptr, ptr %239, align 8
  tail call void @snd_hda_spdif_ctls_unassign(ptr noundef %240, i32 noundef %44) #20
  br label %241

241:                                              ; preds = %238, %234, %233
  %242 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 18
  store i8 0, ptr %242, align 1
  %243 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 19
  store i64 0, ptr %243, align 2
  %244 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 14
  store i8 0, ptr %244, align 4
  %245 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 16
  store i32 0, ptr %245, align 8
  %246 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 11
  %247 = load ptr, ptr %246, align 8
  %248 = icmp eq ptr %247, null
  br i1 %248, label %258, label %249

249:                                              ; preds = %241
  %250 = load i32, ptr %43, align 4
  store i32 -1, ptr %43, align 4
  store ptr null, ptr %246, align 8
  %251 = icmp sgt i32 %250, -1
  br i1 %251, label %252, label %258

252:                                              ; preds = %249
  %253 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 12
  %254 = load i32, ptr %253, align 8
  %255 = icmp slt i32 %250, %254
  br i1 %255, label %256, label %258

256:                                              ; preds = %252
  %257 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef %250, ptr noundef %257) #20
  br label %258

258:                                              ; preds = %256, %252, %249, %241, %230, %165, %159, %155, %150, %50
  %259 = icmp eq i32 %44, -1
  br i1 %259, label %260, label %262

260:                                              ; preds = %258
  %261 = load i32, ptr %43, align 4
  br label %262

262:                                              ; preds = %260, %258
  %263 = phi i32 [ %261, %260 ], [ %44, %258 ]
  %264 = icmp eq ptr %51, null
  br i1 %264, label %265, label %272

265:                                              ; preds = %262
  %266 = load i32, ptr %43, align 4
  %267 = icmp sgt i32 %266, -1
  br i1 %267, label %268, label %272

268:                                              ; preds = %265
  %269 = load ptr, ptr %6, align 8
  %270 = getelementptr %struct.hdmi_spec, ptr %269, i32 0, i32 8, i32 %266, i32 1
  %271 = load ptr, ptr %270, align 4
  br label %272

272:                                              ; preds = %268, %265, %262
  %273 = phi ptr [ %51, %262 ], [ %271, %268 ], [ null, %265 ]
  %274 = load i8, ptr %11, align 1, !range !8
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %279, label %276

276:                                              ; preds = %272
  %277 = getelementptr inbounds %struct.hdmi_eld, ptr %2, i32 0, i32 4
  tail call void @snd_hdmi_show_eld(ptr noundef %0, ptr noundef %277) #20
  %278 = load i8, ptr %11, align 1, !range !8
  br label %279

279:                                              ; preds = %276, %272
  %280 = phi i8 [ %278, %276 ], [ 0, %272 ]
  %281 = load i8, ptr %8, align 1, !range !8
  %282 = icmp eq i8 %281, 0
  %283 = icmp ne i8 %281, %280
  %284 = load i8, ptr %5, align 8, !range !8
  %285 = load i8, ptr %2, align 8, !range !8
  %286 = icmp ne i8 %284, %285
  %287 = or i1 %283, %286
  %288 = icmp eq i8 %280, 0
  %289 = or i1 %288, %287
  %290 = select i1 %289, i1 true, i1 %282
  br i1 %290, label %302, label %291

291:                                              ; preds = %279
  %292 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 8, i32 2
  %293 = load i32, ptr %292, align 4
  %294 = getelementptr inbounds %struct.hdmi_eld, ptr %2, i32 0, i32 2
  %295 = load i32, ptr %294, align 4
  %296 = icmp eq i32 %293, %295
  br i1 %296, label %297, label %303

297:                                              ; preds = %291
  %298 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 8, i32 3
  %299 = getelementptr inbounds %struct.hdmi_eld, ptr %2, i32 0, i32 3
  %300 = tail call i32 @bcmp(ptr %298, ptr %299, i32 %293)
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %318, label %303

302:                                              ; preds = %279
  br i1 %287, label %303, label %318

303:                                              ; preds = %302, %297, %291
  store i8 %285, ptr %5, align 8
  %304 = load i8, ptr %11, align 1, !range !8
  store i8 %304, ptr %8, align 1
  %305 = getelementptr inbounds %struct.hdmi_eld, ptr %2, i32 0, i32 2
  %306 = load i32, ptr %305, align 4
  %307 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 8, i32 2
  store i32 %306, ptr %307, align 4
  %308 = load i8, ptr %11, align 1, !range !8
  %309 = icmp eq i8 %308, 0
  br i1 %309, label %314, label %310

310:                                              ; preds = %303
  %311 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 8, i32 3
  %312 = getelementptr inbounds %struct.hdmi_eld, ptr %2, i32 0, i32 3
  %313 = load i32, ptr %305, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %311, ptr align 8 %312, i32 %313, i1 false)
  br label %314

314:                                              ; preds = %310, %303
  %315 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 8, i32 4
  %316 = getelementptr inbounds %struct.hdmi_eld, ptr %2, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(456) %315, ptr noundef align 8 dereferenceable(456) %316, i32 456, i1 false)
  %317 = load i8, ptr %11, align 1, !range !8
  br label %318

318:                                              ; preds = %314, %302, %297
  %319 = phi i8 [ %317, %314 ], [ %280, %302 ], [ 1, %297 ]
  %320 = phi i1 [ true, %314 ], [ false, %302 ], [ false, %297 ]
  %321 = icmp eq i8 %319, 0
  %322 = select i1 %321, i1 true, i1 %10
  br i1 %322, label %337, label %323

323:                                              ; preds = %318
  %324 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 14
  %325 = load i8, ptr %324, align 4, !range !8
  %326 = icmp eq i8 %325, 0
  br i1 %326, label %337, label %327

327:                                              ; preds = %323
  %328 = load ptr, ptr %6, align 8
  %329 = getelementptr inbounds %struct.hdmi_spec, ptr %328, i32 0, i32 15, i32 4
  %330 = load ptr, ptr %329, align 8
  %331 = icmp eq ptr %330, null
  br i1 %331, label %333, label %332

332:                                              ; preds = %327
  tail call void %330(ptr noundef %0, ptr noundef %1, i16 noundef zeroext 0) #20
  br label %333

333:                                              ; preds = %332, %327
  %334 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 17
  %335 = load i8, ptr %334, align 4, !range !8
  %336 = icmp ne i8 %335, 0
  tail call fastcc void @hdmi_setup_audio_infoframe(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %336)
  br label %337

337:                                              ; preds = %333, %323, %318
  %338 = icmp sgt i32 %263, -1
  %339 = select i1 %320, i1 %338, i1 false
  br i1 %339, label %340, label %346

340:                                              ; preds = %337
  %341 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 2
  %342 = load ptr, ptr %341, align 4
  %343 = getelementptr %struct.hdmi_spec, ptr %7, i32 0, i32 8, i32 %263, i32 2
  %344 = load ptr, ptr %343, align 4
  %345 = getelementptr inbounds %struct.snd_kcontrol, ptr %344, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %342, i32 noundef 3, ptr noundef %345) #20
  br label %346

346:                                              ; preds = %340, %337
  %347 = icmp ne ptr %273, null
  %348 = select i1 %320, i1 %347, i1 false
  br i1 %348, label %349, label %358

349:                                              ; preds = %346
  %350 = load i8, ptr %2, align 8, !range !8
  %351 = icmp eq i8 %350, 0
  br i1 %351, label %356, label %352

352:                                              ; preds = %349
  %353 = load i8, ptr %11, align 1, !range !8
  %354 = icmp eq i8 %353, 0
  %355 = select i1 %354, i32 0, i32 20
  br label %356

356:                                              ; preds = %352, %349
  %357 = phi i32 [ 0, %349 ], [ %355, %352 ]
  tail call void @snd_jack_report(ptr noundef nonnull %273, i32 noundef %357) #20
  br label %358

358:                                              ; preds = %356, %346, %25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_power_down_pm(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdmi_parse_eld(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdmi_show_eld(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hdmi_setup_audio_infoframe(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #1 {
  %4 = zext i1 %2 to i8
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.hdmi_spec, ptr %6, i32 0, i32 27
  %8 = load i16, ptr %1, align 8
  %9 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 16
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %56, label %14

14:                                               ; preds = %3
  %15 = tail call i32 @snd_hda_set_dev_select(ptr noundef %0, i16 noundef zeroext %8, i32 noundef %10) #20
  %16 = zext i16 %8 to i32
  %17 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 18
  %18 = load i16, ptr %17, align 4
  %19 = zext i16 %18 to i32
  %20 = icmp ugt i16 %18, %8
  br i1 %20, label %36, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 17
  %23 = load i32, ptr %22, align 8
  %24 = add i32 %23, %19
  %25 = icmp ugt i32 %24, %16
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 14
  %28 = load ptr, ptr %27, align 4
  %29 = sub nsw i32 %16, %19
  %30 = getelementptr i32, ptr %28, i32 %29
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %26
  %35 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %8, i32 noundef 0, i32 noundef 768, i32 noundef 45056) #20
  br label %36

36:                                               ; preds = %34, %26, %21, %14
  %37 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 8, i32 4, i32 11
  %38 = load i32, ptr %37, align 8
  %39 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 18
  %40 = load i8, ptr %39, align 1, !range !8
  %41 = icmp ne i8 %40, 0
  %42 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 19
  %43 = tail call i32 @snd_hdac_channel_allocation(ptr noundef %0, i32 noundef %38, i32 noundef %12, i1 noundef zeroext %41, i1 noundef zeroext %2, ptr noundef %42) #20
  %44 = tail call i32 @snd_hdac_get_active_channels(i32 noundef %43) #20
  %45 = getelementptr inbounds %struct.hdmi_spec, ptr %6, i32 0, i32 27, i32 1, i32 9
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 6
  %48 = load i16, ptr %47, align 4
  tail call void %46(ptr noundef %0, i16 noundef zeroext %48, i32 noundef %44) #20
  %49 = load i8, ptr %39, align 1, !range !8
  %50 = icmp ne i8 %49, 0
  tail call void @snd_hdac_setup_channel_mapping(ptr noundef %7, i16 noundef zeroext %8, i1 noundef zeroext %2, i32 noundef %43, i32 noundef %12, ptr noundef %42, i1 noundef zeroext %50) #20
  %51 = getelementptr inbounds %struct.hdmi_spec, ptr %6, i32 0, i32 15, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 8, i32 4, i32 9
  %54 = load i32, ptr %53, align 8
  tail call void %52(ptr noundef %0, i16 noundef zeroext %8, i32 noundef %10, i32 noundef %43, i32 noundef %44, i32 noundef %54) #20
  %55 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 17
  store i8 %4, ptr %55, align 4
  br label %56

56:                                               ; preds = %36, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_jack_report(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_spdif_ctls_assign(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_regmap_write_raw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_hda_spdif_out_of_nid(ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_spdif_ctls_unassign(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_channel_allocation(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_get_active_channels(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_setup_channel_mapping(ptr noundef, i16 noundef zeroext, i1 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_acomp_get_eld(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hdmi_choose_cvt(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = icmp slt i32 %1, 0
  br i1 %6, label %44, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 7, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 7, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = mul i32 %11, %1
  %13 = getelementptr i8, ptr %9, i32 %12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %44, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %13, i32 0, i32 15
  %17 = load i8, ptr %16, align 1, !range !8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %44, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %13, i32 0, i32 6
  %21 = load i16, ptr %20, align 4
  %22 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 2, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 2, i32 2
  %29 = load i32, ptr %28, align 4
  br label %30

30:                                               ; preds = %36, %25
  %31 = phi i32 [ 0, %25 ], [ %37, %36 ]
  %32 = mul i32 %31, %29
  %33 = getelementptr i8, ptr %27, i32 %32
  %34 = load i16, ptr %33, align 8
  %35 = icmp eq i16 %34, %21
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = add nuw nsw i32 %31, 1
  %38 = icmp eq i32 %37, %23
  br i1 %38, label %39, label %30

39:                                               ; preds = %36, %19
  %40 = zext i16 %21 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.113, i32 noundef %40) #21
  br label %41

41:                                               ; preds = %39, %30
  %42 = phi i32 [ -22, %39 ], [ %31, %30 ]
  %43 = icmp eq ptr %2, null
  br i1 %43, label %95, label %93

44:                                               ; preds = %15, %7, %3
  %45 = phi i1 [ false, %15 ], [ true, %7 ], [ true, %3 ]
  %46 = phi ptr [ %13, %15 ], [ null, %7 ], [ null, %3 ]
  %47 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %83

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 2, i32 4
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 2, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %46, i32 0, i32 3
  br label %56

56:                                               ; preds = %80, %50
  %57 = phi i32 [ 0, %50 ], [ %81, %80 ]
  %58 = mul i32 %54, %57
  %59 = getelementptr i8, ptr %52, i32 %58
  %60 = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %59, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %56
  br i1 %45, label %90, label %64

64:                                               ; preds = %63
  %65 = load i32, ptr %55, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = load i16, ptr %59, align 8
  br label %69

69:                                               ; preds = %74, %67
  %70 = phi i32 [ 0, %67 ], [ %75, %74 ]
  %71 = getelementptr %struct.hdmi_spec_per_pin, ptr %46, i32 0, i32 4, i32 %70
  %72 = load i16, ptr %71, align 2
  %73 = icmp eq i16 %72, %68
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = add nuw nsw i32 %70, 1
  %76 = icmp eq i32 %75, %65
  br i1 %76, label %80, label %69

77:                                               ; preds = %69, %64
  %78 = phi i32 [ 0, %64 ], [ %70, %69 ]
  %79 = icmp eq i32 %78, %65
  br i1 %79, label %80, label %83

80:                                               ; preds = %77, %74, %56
  %81 = add nuw nsw i32 %57, 1
  %82 = icmp eq i32 %81, %48
  br i1 %82, label %95, label %56

83:                                               ; preds = %77, %44
  %84 = phi i32 [ 0, %44 ], [ %57, %77 ]
  %85 = phi i32 [ 0, %44 ], [ %78, %77 ]
  %86 = icmp eq i32 %84, %48
  br i1 %86, label %95, label %87

87:                                               ; preds = %83
  br i1 %45, label %90, label %88

88:                                               ; preds = %87
  %89 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %46, i32 0, i32 5
  store i32 %85, ptr %89, align 8
  br label %90

90:                                               ; preds = %88, %87, %63
  %91 = phi i32 [ %84, %88 ], [ %84, %87 ], [ %57, %63 ]
  %92 = icmp eq ptr %2, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %90, %41
  %94 = phi i32 [ %42, %41 ], [ %91, %90 ]
  store i32 %94, ptr %2, align 4
  br label %95

95:                                               ; preds = %93, %90, %83, %80, %41
  %96 = phi i32 [ 0, %41 ], [ -16, %83 ], [ 0, %90 ], [ 0, %93 ], [ -16, %80 ]
  ret i32 %96
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_sync_audio_rate(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_calc_stream_format(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_codec_setup_stream(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_write(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdmi_get_eld_ati(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_read(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_setup_stream(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #1 {
  %7 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.hdmi_spec, ptr %8, i32 0, i32 15, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = and i32 %5, 32783
  %12 = icmp eq i32 %11, 32775
  %13 = tail call i32 %10(ptr noundef %0, i16 noundef zeroext %2, i32 noundef %3, i1 noundef zeroext %12) #20
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.hdmi_spec, ptr %8, i32 0, i32 19
  %17 = load i8, ptr %16, align 1, !range !8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3853, i32 noundef 0) #20
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 65520
  %23 = zext i1 %12 to i32
  %24 = or i32 %22, %23
  %25 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1854, i32 noundef %24) #20
  br label %26

26:                                               ; preds = %19, %15
  tail call void @snd_hda_codec_setup_stream(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %4, i32 noundef 0, i32 noundef %5) #20
  br label %27

27:                                               ; preds = %26, %6
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_spk_to_chmap(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_hdac_get_ch_alloc_from_ca(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_chmap_to_spk_mask(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_acomp_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @match_bound_vga(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #9 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @pci_bus_type
  br i1 %6, label %7, label %19

7:                                                ; preds = %3
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, @pci_bus_type
  br i1 %11, label %12, label %19

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %8, i32 -128
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr i8, ptr %0, i32 -128
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %14, %16
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %12, %7, %3
  %20 = phi i32 [ %18, %12 ], [ 0, %7 ], [ 0, %3 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @generic_acomp_pin_eld_notify(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 26
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 %7(ptr noundef %0, i32 noundef %1) #20
  %9 = trunc i32 %8 to i16
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %70, label %11

11:                                               ; preds = %3
  %12 = and i32 %8, 65535
  %13 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 18
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = icmp ugt i16 %14, %9
  br i1 %16, label %70, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 17
  %19 = load i32, ptr %18, align 8
  %20 = add i32 %19, %15
  %21 = icmp ugt i32 %20, %12
  br i1 %21, label %22, label %70

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 14
  %24 = load ptr, ptr %23, align 4
  %25 = sub nsw i32 %12, %15
  %26 = getelementptr i32, ptr %24, i32 %25
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 15728640
  %29 = icmp eq i32 %28, 4194304
  br i1 %29, label %30, label %70

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11
  %32 = load i32, ptr %31, align 8
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %70, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 20
  %36 = load volatile i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %70

38:                                               ; preds = %34
  %39 = load ptr, ptr %4, align 8
  %40 = icmp eq i32 %2, -1
  %41 = select i1 %40, i32 0, i32 %2
  %42 = getelementptr inbounds %struct.hdmi_spec, ptr %39, i32 0, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.hdmi_spec, ptr %39, i32 0, i32 7, i32 4
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.hdmi_spec, ptr %39, i32 0, i32 7, i32 2
  %49 = load i32, ptr %48, align 4
  br label %50

50:                                               ; preds = %60, %45
  %51 = phi i32 [ 0, %45 ], [ %61, %60 ]
  %52 = mul i32 %51, %49
  %53 = getelementptr i8, ptr %47, i32 %52
  %54 = load i16, ptr %53, align 8
  %55 = icmp eq i16 %54, %9
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %53, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, %41
  br i1 %59, label %64, label %60

60:                                               ; preds = %56, %50
  %61 = add nuw nsw i32 %51, 1
  %62 = icmp eq i32 %61, %43
  br i1 %62, label %63, label %50

63:                                               ; preds = %60, %38
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.108, i32 noundef %12) #21
  br label %70

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.hdmi_spec, ptr %39, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %65) #20
  %66 = load ptr, ptr %46, align 4
  %67 = load i32, ptr %48, align 4
  %68 = mul i32 %67, %51
  %69 = getelementptr i8, ptr %66, i32 %68
  tail call fastcc void @hdmi_present_sense(ptr noundef %69, i32 noundef 1) #20
  tail call void @mutex_unlock(ptr noundef %65) #20
  br label %70

70:                                               ; preds = %64, %63, %34, %30, %22, %17, %11, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @atihdmi_pin2port(ptr nocapture noundef readnone %0, i32 noundef %1) #4 {
  %3 = sdiv i32 %1, 2
  %4 = add nsw i32 %3, -1
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @generic_acomp_master_bind(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #1 {
  tail call fastcc void @generic_acomp_notifier_set(ptr noundef %1, i1 noundef zeroext true)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @generic_acomp_master_unbind(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #1 {
  tail call fastcc void @generic_acomp_notifier_set(ptr noundef %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @generic_acomp_notifier_set(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #1 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %struct.drm_audio_component, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -1212
  %7 = getelementptr i8, ptr %5, i32 -932
  tail call void @mutex_lock(ptr noundef %7) #20
  %8 = getelementptr i8, ptr %5, i32 -4
  store i8 %3, ptr %8, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = getelementptr inbounds %struct.hda_codec, ptr %9, i32 0, i32 30
  %11 = load i32, ptr %10, align 8
  %12 = select i1 %1, i32 2097152, i32 0
  %13 = and i32 %11, -2097153
  %14 = or i32 %13, %12
  store i32 %14, ptr %10, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr inbounds %struct.hda_codec, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.hda_bus, ptr %17, i32 0, i32 6
  %19 = load i8, ptr %18, align 4
  %20 = and i8 %19, -65
  store i8 %20, ptr %18, align 4
  %21 = getelementptr i8, ptr %5, i32 -1176
  %22 = load i32, ptr %21, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %2
  %25 = getelementptr i8, ptr %5, i32 -1148
  %26 = getelementptr i8, ptr %5, i32 -1156
  br label %27

27:                                               ; preds = %51, %24
  %28 = phi i32 [ 0, %24 ], [ %52, %51 ]
  %29 = load ptr, ptr %6, align 8
  %30 = load ptr, ptr %25, align 4
  %31 = load i32, ptr %26, align 4
  %32 = mul i32 %31, %28
  %33 = getelementptr i8, ptr %30, i32 %32
  %34 = load i16, ptr %33, align 8
  %35 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %33, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = tail call ptr @snd_hda_jack_tbl_get_mst(ptr noundef %29, i16 noundef zeroext %34, i32 noundef %36) #20
  %38 = icmp eq ptr %37, null
  br i1 %38, label %51, label %39

39:                                               ; preds = %27
  br i1 %1, label %45, label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.hda_jack_tbl, ptr %37, i32 0, i32 2
  %42 = load i8, ptr %41, align 4
  %43 = or i8 %42, -128
  %44 = zext i8 %43 to i32
  br label %45

45:                                               ; preds = %40, %39
  %46 = phi i32 [ %44, %40 ], [ 0, %39 ]
  %47 = zext i16 %34 to i32
  %48 = shl i32 %47, 20
  %49 = or i32 %48, 985088
  %50 = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %29, i32 noundef %49, i32 noundef %46) #20
  br label %51

51:                                               ; preds = %45, %27
  %52 = add nuw nsw i32 %28, 1
  %53 = load i32, ptr %21, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %27, label %55

55:                                               ; preds = %51, %2
  tail call void @mutex_unlock(ptr noundef %7) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_hda_jack_tbl_get_mst(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hdmi_parse_codec(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #20
  store i16 0, ptr %3, align 2, !annotation !11
  %6 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 5
  %7 = load i16, ptr %6, align 4
  %8 = call i32 @snd_hdac_get_sub_nodes(ptr noundef %0, i16 noundef zeroext %7, ptr noundef nonnull %3) #20
  %9 = load i16, ptr %3, align 2
  %10 = icmp eq i16 %9, 0
  %11 = icmp slt i32 %8, 0
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.124) #21
  br label %241

14:                                               ; preds = %1
  %15 = load i8, ptr @enable_all_pins, align 1, !range !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 24
  store i8 1, ptr %18, align 2
  br label %19

19:                                               ; preds = %17, %14
  %20 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.hda_bus, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = call ptr @snd_pci_quirk_lookup(ptr noundef %23, ptr noundef nonnull @force_connect_list) #20
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.snd_pci_quirk, ptr %24, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 24
  store i8 1, ptr %31, align 2
  br label %32

32:                                               ; preds = %30, %26, %19
  %33 = icmp eq i32 %8, 0
  br i1 %33, label %241, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 18
  %36 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 17
  %37 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 14
  br label %44

38:                                               ; preds = %95
  br i1 %33, label %241, label %39

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 18
  %41 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 17
  %42 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 14
  %43 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 30
  br label %98

44:                                               ; preds = %95, %34
  %45 = phi i32 [ 0, %34 ], [ %96, %95 ]
  %46 = load i16, ptr %3, align 2
  %47 = trunc i32 %45 to i16
  %48 = add i16 %46, %47
  %49 = zext i16 %48 to i32
  %50 = load i16, ptr %35, align 4
  %51 = zext i16 %50 to i32
  %52 = icmp ugt i16 %50, %48
  br i1 %52, label %95, label %53

53:                                               ; preds = %44
  %54 = load i32, ptr %36, align 8
  %55 = add i32 %54, %51
  %56 = icmp ugt i32 %55, %49
  br i1 %56, label %57, label %95

57:                                               ; preds = %53
  %58 = load ptr, ptr %37, align 4
  %59 = sub nsw i32 %49, %51
  %60 = getelementptr i32, ptr %58, i32 %59
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, 15729152
  %63 = icmp eq i32 %62, 512
  br i1 %63, label %64, label %95

64:                                               ; preds = %57
  %65 = load ptr, ptr %4, align 8
  %66 = lshr i32 %61, 12
  %67 = and i32 %66, 14
  %68 = add nuw nsw i32 %67, 2
  %69 = getelementptr inbounds %struct.hdmi_spec, ptr %65, i32 0, i32 2
  %70 = call ptr @snd_array_new(ptr noundef %69) #20
  %71 = icmp eq ptr %70, null
  br i1 %71, label %95, label %72

72:                                               ; preds = %64
  store i16 %48, ptr %70, align 8
  %73 = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %70, i32 0, i32 2
  store i32 2, ptr %73, align 8
  %74 = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %70, i32 0, i32 3
  store i32 %68, ptr %74, align 4
  %75 = getelementptr inbounds %struct.hdmi_spec, ptr %65, i32 0, i32 27
  %76 = load i32, ptr %75, align 4
  %77 = icmp ugt i32 %68, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store i32 %68, ptr %75, align 4
  br label %79

79:                                               ; preds = %78, %72
  %80 = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %70, i32 0, i32 4
  %81 = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %70, i32 0, i32 5
  %82 = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %70, i32 0, i32 6
  %83 = call i32 @snd_hdac_query_supported_pcm(ptr noundef %0, i16 noundef zeroext %48, ptr noundef %80, ptr noundef %81, ptr noundef %82) #20
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.hdmi_spec, ptr %65, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = icmp ult i32 %87, 4
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = getelementptr %struct.hdmi_spec, ptr %65, i32 0, i32 3, i32 %87
  store i16 %48, ptr %90, align 2
  %91 = load i32, ptr %86, align 4
  br label %92

92:                                               ; preds = %89, %85
  %93 = phi i32 [ %91, %89 ], [ %87, %85 ]
  %94 = add i32 %93, 1
  store i32 %94, ptr %86, align 4
  br label %95

95:                                               ; preds = %92, %79, %64, %57, %53, %44
  %96 = add nuw nsw i32 %45, 1
  %97 = icmp eq i32 %96, %8
  br i1 %97, label %38, label %44

98:                                               ; preds = %238, %39
  %99 = phi i32 [ 0, %39 ], [ %239, %238 ]
  %100 = load i16, ptr %3, align 2
  %101 = trunc i32 %99 to i16
  %102 = add i16 %100, %101
  %103 = zext i16 %102 to i32
  %104 = load i16, ptr %40, align 4
  %105 = zext i16 %104 to i32
  %106 = icmp ugt i16 %104, %102
  br i1 %106, label %238, label %107

107:                                              ; preds = %98
  %108 = load i32, ptr %41, align 8
  %109 = add i32 %108, %105
  %110 = icmp ugt i32 %109, %103
  br i1 %110, label %111, label %238

111:                                              ; preds = %107
  %112 = load ptr, ptr %42, align 4
  %113 = sub nsw i32 %103, %105
  %114 = getelementptr i32, ptr %112, i32 %113
  %115 = load i32, ptr %114, align 4
  %116 = and i32 %115, 15729152
  %117 = icmp eq i32 %116, 4194816
  br i1 %117, label %118, label %238

118:                                              ; preds = %111
  %119 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  store i32 0, ptr %2, align 4, !annotation !11
  %120 = call i32 @_snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %102, i32 noundef 12, ptr noundef nonnull %2) #20
  %121 = load i32, ptr %2, align 4
  %122 = icmp sgt i32 %120, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  %123 = and i32 %121, 16777344
  %124 = icmp eq i32 %123, 0
  %125 = select i1 %122, i1 %124, i1 false
  br i1 %125, label %238, label %126

126:                                              ; preds = %118
  %127 = call i32 @snd_hda_codec_get_pincfg(ptr noundef %0, i16 noundef zeroext %102) #20
  %128 = and i32 %127, -1073741824
  %129 = icmp eq i32 %128, 1073741824
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.hdmi_spec, ptr %119, i32 0, i32 24
  %132 = load i8, ptr %131, align 2, !range !8
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %238, label %134

134:                                              ; preds = %130, %126
  %135 = getelementptr inbounds %struct.hdmi_spec, ptr %119, i32 0, i32 19
  %136 = load i8, ptr %135, align 1, !range !8
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.hdmi_spec, ptr %119, i32 0, i32 6
  %140 = load i32, ptr %139, align 4
  br label %157

141:                                              ; preds = %134
  %142 = getelementptr inbounds %struct.hdmi_spec, ptr %119, i32 0, i32 17
  %143 = load i8, ptr %142, align 1, !range !8
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %155, label %145

145:                                              ; preds = %141
  %146 = load i32, ptr %43, align 8
  %147 = and i32 %146, 32768
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %145
  %150 = call i32 @snd_hda_get_num_devices(ptr noundef %0, i16 noundef zeroext %102) #20
  %151 = add i32 %150, 1
  %152 = getelementptr inbounds %struct.hdmi_spec, ptr %119, i32 0, i32 6
  %153 = load i32, ptr %152, align 4
  %154 = call i32 @llvm.smax.i32(i32 %153, i32 %151) #20
  store i32 %154, ptr %152, align 4
  br label %157

155:                                              ; preds = %145, %141
  %156 = getelementptr inbounds %struct.hdmi_spec, ptr %119, i32 0, i32 6
  store i32 1, ptr %156, align 4
  br label %160

157:                                              ; preds = %149, %138
  %158 = phi i32 [ %140, %138 ], [ %151, %149 ]
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %234

160:                                              ; preds = %157, %155
  %161 = phi i32 [ 1, %155 ], [ %158, %157 ]
  %162 = getelementptr inbounds %struct.hdmi_spec, ptr %119, i32 0, i32 4
  %163 = getelementptr inbounds %struct.hdmi_spec, ptr %119, i32 0, i32 7
  %164 = getelementptr inbounds %struct.hdmi_spec, ptr %119, i32 0, i32 17
  %165 = getelementptr inbounds %struct.hdmi_spec, ptr %119, i32 0, i32 5
  %166 = load i32, ptr %162, align 4
  br label %167

167:                                              ; preds = %227, %160
  %168 = phi i32 [ %166, %160 ], [ %231, %227 ]
  %169 = phi i32 [ 0, %160 ], [ %232, %227 ]
  %170 = call ptr @snd_array_new(ptr noundef %163) #20
  %171 = icmp eq ptr %170, null
  br i1 %171, label %238, label %172

172:                                              ; preds = %167
  %173 = load i8, ptr %164, align 1, !range !8
  %174 = icmp eq i8 %173, 0
  %175 = getelementptr %struct.hdmi_spec, ptr %119, i32 0, i32 8, i32 %168
  %176 = select i1 %174, ptr %175, ptr null
  %177 = select i1 %174, i32 %168, i32 -1
  %178 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %170, i32 0, i32 11
  store ptr %176, ptr %178, align 8
  %179 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %170, i32 0, i32 12
  store i32 %177, ptr %179, align 4
  store i16 %102, ptr %170, align 8
  %180 = load i32, ptr %165, align 8
  %181 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %170, i32 0, i32 2
  store i32 %180, ptr %181, align 8
  %182 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %170, i32 0, i32 1
  store i32 %169, ptr %182, align 4
  %183 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %170, i32 0, i32 17
  store i8 0, ptr %183, align 4
  %184 = call i32 @snd_hda_set_dev_select(ptr noundef %0, i16 noundef zeroext %102, i32 noundef %169) #20
  %185 = load ptr, ptr %4, align 8
  %186 = getelementptr inbounds %struct.hdmi_spec, ptr %185, i32 0, i32 7, i32 4
  %187 = load ptr, ptr %186, align 4
  %188 = getelementptr inbounds %struct.hdmi_spec, ptr %185, i32 0, i32 7, i32 2
  %189 = load i32, ptr %188, align 4
  %190 = mul i32 %189, %168
  %191 = getelementptr i8, ptr %187, i32 %190
  %192 = load i16, ptr %191, align 8
  %193 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %191, i32 0, i32 1
  %194 = load i32, ptr %193, align 4
  %195 = zext i16 %192 to i32
  %196 = load i16, ptr %40, align 4
  %197 = zext i16 %196 to i32
  %198 = icmp ugt i16 %196, %192
  br i1 %198, label %210, label %199

199:                                              ; preds = %172
  %200 = load i32, ptr %41, align 8
  %201 = add i32 %200, %197
  %202 = icmp ugt i32 %201, %195
  br i1 %202, label %203, label %210

203:                                              ; preds = %199
  %204 = load ptr, ptr %42, align 4
  %205 = sub nsw i32 %195, %197
  %206 = getelementptr i32, ptr %204, i32 %205
  %207 = load i32, ptr %206, align 4
  %208 = and i32 %207, 256
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %203, %199, %172
  %211 = phi i32 [ 0, %172 ], [ 0, %199 ], [ %207, %203 ]
  %212 = zext i16 %192 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.125, i32 noundef %212, i32 noundef %211) #21
  br label %238

213:                                              ; preds = %203
  %214 = call i32 @snd_hda_set_dev_select(ptr noundef %0, i16 noundef zeroext %192, i32 noundef %194) #20
  %215 = getelementptr inbounds %struct.hdmi_spec, ptr %185, i32 0, i32 19
  %216 = load i8, ptr %215, align 1, !range !8
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %224, label %218

218:                                              ; preds = %213
  %219 = getelementptr inbounds %struct.hdmi_spec, ptr %185, i32 0, i32 1
  %220 = load i32, ptr %219, align 4
  %221 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %191, i32 0, i32 4
  %222 = getelementptr inbounds %struct.hdmi_spec, ptr %185, i32 0, i32 3
  %223 = shl i32 %220, 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %221, ptr align 4 %222, i32 %223, i1 false) #20
  br label %227

224:                                              ; preds = %213
  %225 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %191, i32 0, i32 4
  %226 = call i32 @snd_hdac_get_connections(ptr noundef %0, i16 noundef zeroext %192, ptr noundef %225, i32 noundef 32) #20
  br label %227

227:                                              ; preds = %224, %218
  %228 = phi i32 [ %220, %218 ], [ %226, %224 ]
  %229 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %191, i32 0, i32 3
  store i32 %228, ptr %229, align 4
  %230 = load i32, ptr %162, align 4
  %231 = add i32 %230, 1
  store i32 %231, ptr %162, align 4
  %232 = add nuw nsw i32 %169, 1
  %233 = icmp eq i32 %232, %161
  br i1 %233, label %234, label %167

234:                                              ; preds = %227, %157
  %235 = getelementptr inbounds %struct.hdmi_spec, ptr %119, i32 0, i32 5
  %236 = load i32, ptr %235, align 8
  %237 = add i32 %236, 1
  store i32 %237, ptr %235, align 8
  br label %238

238:                                              ; preds = %234, %210, %167, %130, %118, %111, %107, %98
  %239 = add nuw nsw i32 %99, 1
  %240 = icmp eq i32 %239, %8
  br i1 %240, label %241, label %98

241:                                              ; preds = %238, %38, %32, %13
  %242 = phi i32 [ -22, %13 ], [ 0, %38 ], [ 0, %32 ], [ 0, %238 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #20
  ret i32 %242
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @generic_hdmi_init_per_pins(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca [32 x i8], align 1
  %3 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hdmi_spec, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %46

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.hdmi_spec, ptr %4, i32 0, i32 7, i32 4
  %10 = getelementptr inbounds %struct.hdmi_spec, ptr %4, i32 0, i32 7, i32 2
  br label %11

11:                                               ; preds = %42, %8
  %12 = phi i32 [ 0, %8 ], [ %43, %42 ]
  %13 = load ptr, ptr %9, align 4
  %14 = load i32, ptr %10, align 4
  %15 = mul i32 %14, %12
  %16 = getelementptr i8, ptr %13, i32 %15
  %17 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %16, i32 0, i32 7
  store ptr %0, ptr %17, align 8
  %18 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %16, i32 0, i32 9
  call void @__mutex_init(ptr noundef %18, ptr noundef nonnull @.str.126, ptr noundef nonnull @generic_hdmi_init_per_pins.__key) #20
  %19 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %16, i32 0, i32 10
  store i32 -32, ptr %19, align 4
  %20 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %16, i32 0, i32 10, i32 0, i32 1
  store volatile ptr %20, ptr %20, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %16, i32 0, i32 10, i32 0, i32 2
  store ptr @hdmi_repoll_eld, ptr %22, align 4
  %23 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %16, i32 0, i32 10, i32 1
  call void @init_timer_key(ptr noundef %23, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false) #20, !annotation !11
  %24 = load ptr, ptr %17, align 8
  %25 = getelementptr inbounds %struct.hda_codec, ptr %24, i32 0, i32 3
  %26 = load i32, ptr %25, align 8
  %27 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.127, i32 noundef %26, i32 noundef %12) #20
  %28 = getelementptr inbounds %struct.hda_codec, ptr %24, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.snd_card, ptr %29, i32 0, i32 20
  %31 = load ptr, ptr %30, align 8
  %32 = call ptr @snd_info_create_card_entry(ptr noundef %29, ptr noundef nonnull %2, ptr noundef %31) #20
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %11
  %35 = getelementptr inbounds %struct.snd_info_entry, ptr %32, i32 0, i32 7
  store ptr %16, ptr %35, align 4
  %36 = getelementptr inbounds %struct.snd_info_entry, ptr %32, i32 0, i32 4
  store ptr @print_eld_info, ptr %36, align 4
  %37 = getelementptr inbounds %struct.snd_info_entry, ptr %32, i32 0, i32 4, i32 0, i32 1
  store ptr @write_eld_info, ptr %37, align 4
  %38 = getelementptr inbounds %struct.snd_info_entry, ptr %32, i32 0, i32 1
  %39 = load i16, ptr %38, align 4
  %40 = or i16 %39, 128
  store i16 %40, ptr %38, align 4
  %41 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %16, i32 0, i32 20
  store ptr %32, ptr %41, align 8
  br label %42

42:                                               ; preds = %34, %11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #20
  %43 = add nuw nsw i32 %12, 1
  %44 = load i32, ptr %5, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %11, label %46

46:                                               ; preds = %42, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_register_chmap_ops(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hdmi_get_chmap(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 7, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 7, i32 2
  %13 = load i32, ptr %12, align 4
  br label %17

14:                                               ; preds = %17
  %15 = add nuw nsw i32 %18, 1
  %16 = icmp eq i32 %15, %7
  br i1 %16, label %29, label %17

17:                                               ; preds = %14, %9
  %18 = phi i32 [ 0, %9 ], [ %15, %14 ]
  %19 = mul i32 %18, %13
  %20 = getelementptr i8, ptr %11, i32 %19
  %21 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %20, i32 0, i32 12
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, %1
  br i1 %23, label %24, label %14

24:                                               ; preds = %17
  %25 = icmp eq ptr %20, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %20, i32 0, i32 19
  %28 = load i64, ptr %27, align 2
  store i64 %28, ptr %2, align 1
  br label %29

29:                                               ; preds = %26, %24, %14, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hdmi_set_chmap(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #1 {
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.hdmi_spec, ptr %6, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.hdmi_spec, ptr %6, i32 0, i32 7, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.hdmi_spec, ptr %6, i32 0, i32 7, i32 2
  %14 = load i32, ptr %13, align 4
  br label %18

15:                                               ; preds = %18
  %16 = add nuw nsw i32 %19, 1
  %17 = icmp eq i32 %16, %8
  br i1 %17, label %38, label %18

18:                                               ; preds = %15, %10
  %19 = phi i32 [ 0, %10 ], [ %16, %15 ]
  %20 = mul i32 %19, %14
  %21 = getelementptr i8, ptr %12, i32 %20
  %22 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %21, i32 0, i32 12
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, %1
  br i1 %24, label %25, label %15

25:                                               ; preds = %18
  %26 = icmp eq ptr %21, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %21, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %28) #20
  %29 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %21, i32 0, i32 18
  store i8 1, ptr %29, align 1
  %30 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %21, i32 0, i32 19
  %31 = load i64, ptr %2, align 1
  store i64 %31, ptr %30, align 2
  %32 = icmp eq i32 %3, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %21, i32 0, i32 17
  %35 = load i8, ptr %34, align 4, !range !8
  %36 = icmp ne i8 %35, 0
  tail call fastcc void @hdmi_setup_audio_infoframe(ptr noundef %0, ptr noundef nonnull %21, i1 noundef zeroext %36)
  br label %37

37:                                               ; preds = %33, %27
  tail call void @mutex_unlock(ptr noundef %28) #20
  br label %38

38:                                               ; preds = %37, %25, %15, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal zeroext i1 @is_hdmi_pcm_attached(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hdmi_spec, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.hdmi_spec, ptr %4, i32 0, i32 7, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.hdmi_spec, ptr %4, i32 0, i32 7, i32 2
  %12 = load i32, ptr %11, align 4
  br label %16

13:                                               ; preds = %16
  %14 = add nuw nsw i32 %17, 1
  %15 = icmp eq i32 %14, %6
  br i1 %15, label %23, label %16

16:                                               ; preds = %13, %8
  %17 = phi i32 [ 0, %8 ], [ %14, %13 ]
  %18 = mul i32 %17, %12
  %19 = getelementptr i8, ptr %10, i32 %18
  %20 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %19, i32 0, i32 12
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %23, label %13

23:                                               ; preds = %16, %13, %2
  %24 = phi ptr [ null, %2 ], [ %19, %16 ], [ null, %13 ]
  %25 = icmp ne ptr %24, null
  ret i1 %25
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @hdmi_get_spk_alloc(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hdmi_spec, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.hdmi_spec, ptr %4, i32 0, i32 7, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.hdmi_spec, ptr %4, i32 0, i32 7, i32 2
  %12 = load i32, ptr %11, align 4
  br label %16

13:                                               ; preds = %16
  %14 = add nuw nsw i32 %17, 1
  %15 = icmp eq i32 %14, %6
  br i1 %15, label %28, label %16

16:                                               ; preds = %13, %8
  %17 = phi i32 [ 0, %8 ], [ %14, %13 ]
  %18 = mul i32 %17, %12
  %19 = getelementptr i8, ptr %10, i32 %18
  %20 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %19, i32 0, i32 12
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %23, label %13

23:                                               ; preds = %16
  %24 = icmp eq ptr %19, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %19, i32 0, i32 8, i32 4, i32 11
  %27 = load i32, ptr %26, align 8
  br label %28

28:                                               ; preds = %25, %23, %13, %2
  %29 = phi i32 [ %27, %25 ], [ 0, %23 ], [ 0, %2 ], [ 0, %13 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_pin_get_eld(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #1 {
  %6 = tail call i32 @snd_hda_set_dev_select(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) #20
  %7 = tail call i32 @snd_hdmi_get_eld(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %3, ptr noundef %4) #20
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hdmi_pin_setup_infoframe(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #1 {
  switch i32 %5, label %85 [
    i32 0, label %7
    i32 1, label %13
  ]

7:                                                ; preds = %6
  %8 = trunc i32 %4 to i8
  %9 = add i8 %8, -1
  %10 = trunc i32 %3 to i8
  %11 = add i8 %10, %8
  %12 = sub i8 114, %11
  br label %17

13:                                               ; preds = %6
  %14 = trunc i32 %4 to i8
  %15 = add i8 %14, -1
  %16 = trunc i32 %3 to i8
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi i8 [ 27, %13 ], [ 1, %7 ]
  %19 = phi i8 [ 68, %13 ], [ 10, %7 ]
  %20 = phi i8 [ %15, %13 ], [ %12, %7 ]
  %21 = phi i8 [ 0, %13 ], [ %9, %7 ]
  %22 = phi i8 [ %16, %13 ], [ 0, %7 ]
  %23 = phi i8 [ 0, %13 ], [ %10, %7 ]
  %24 = tail call i32 @snd_hda_set_dev_select(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) #20
  %25 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1840, i32 noundef 0) #20
  %26 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3890, i32 noundef 0) #20
  %27 = icmp eq i32 %26, 192
  br i1 %27, label %28, label %64

28:                                               ; preds = %17
  %29 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3889, i32 noundef 0) #20
  %30 = trunc i32 %29 to i8
  %31 = icmp eq i8 %30, -124
  br i1 %31, label %32, label %64

32:                                               ; preds = %28
  %33 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3889, i32 noundef 0) #20
  %34 = trunc i32 %33 to i8
  %35 = icmp eq i8 %18, %34
  br i1 %35, label %36, label %64

36:                                               ; preds = %32
  %37 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3889, i32 noundef 0) #20
  %38 = trunc i32 %37 to i8
  %39 = icmp eq i8 %19, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %36
  %41 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3889, i32 noundef 0) #20
  %42 = trunc i32 %41 to i8
  %43 = icmp eq i8 %20, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %40
  %45 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3889, i32 noundef 0) #20
  %46 = trunc i32 %45 to i8
  %47 = icmp eq i8 %21, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %44
  %49 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3889, i32 noundef 0) #20
  %50 = trunc i32 %49 to i8
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3889, i32 noundef 0) #20
  %54 = trunc i32 %53 to i8
  %55 = icmp eq i8 %22, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3889, i32 noundef 0) #20
  %58 = trunc i32 %57 to i8
  %59 = icmp eq i8 %23, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3889, i32 noundef 0) #20
  %62 = trunc i32 %61 to i8
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %85, label %64

64:                                               ; preds = %60, %56, %52, %48, %44, %40, %36, %32, %28, %17
  %65 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1840, i32 noundef 0) #20
  %66 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1842, i32 noundef 0) #20
  %67 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1840, i32 noundef 0) #20
  %68 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1841, i32 noundef 132) #20
  %69 = zext i8 %18 to i32
  %70 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1841, i32 noundef %69) #20
  %71 = zext i8 %19 to i32
  %72 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1841, i32 noundef %71) #20
  %73 = zext i8 %20 to i32
  %74 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1841, i32 noundef %73) #20
  %75 = zext i8 %21 to i32
  %76 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1841, i32 noundef %75) #20
  %77 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1841, i32 noundef 0) #20
  %78 = zext i8 %22 to i32
  %79 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1841, i32 noundef %78) #20
  %80 = zext i8 %23 to i32
  %81 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1841, i32 noundef %80) #20
  %82 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1841, i32 noundef 0) #20
  %83 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1840, i32 noundef 0) #20
  %84 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1842, i32 noundef 192) #20
  br label %85

85:                                               ; preds = %64, %60, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_pin_hbr_setup(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, i1 noundef zeroext %3) #1 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !annotation !11
  %6 = call i32 @_snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 12, ptr noundef nonnull %5) #20
  %7 = load i32, ptr %5, align 4
  %8 = icmp sgt i32 %6, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  %9 = and i32 %7, 134217728
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %25, label %12

12:                                               ; preds = %4
  %13 = call i32 @snd_hda_set_dev_select(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) #20
  %14 = call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3847, i32 noundef 0) #20
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = select i1 %3, i32 -22, i32 0
  br label %27

18:                                               ; preds = %12
  %19 = and i32 %14, -4
  %20 = select i1 %3, i32 3, i32 0
  %21 = or i32 %19, %20
  %22 = icmp eq i32 %14, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1799, i32 noundef %21) #20
  br label %26

25:                                               ; preds = %4
  br i1 %3, label %27, label %26

26:                                               ; preds = %25, %23, %18
  br label %27

27:                                               ; preds = %26, %25, %16
  %28 = phi i32 [ %17, %16 ], [ 0, %26 ], [ -22, %25 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdmi_get_eld(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_snd_hdac_read_parm(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @generic_hdmi_build_controls(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 12
  %5 = load i32, ptr %4, align 8
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 17
  %9 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 3
  %10 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 7, i32 4
  %11 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 7, i32 2
  %12 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 11
  br label %21

13:                                               ; preds = %66, %1
  %14 = phi i32 [ %5, %1 ], [ %68, %66 ]
  %15 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %72

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 7, i32 4
  %20 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 7, i32 2
  br label %76

21:                                               ; preds = %66, %7
  %22 = phi i32 [ 0, %7 ], [ %67, %66 ]
  %23 = getelementptr %struct.hdmi_spec, ptr %3, i32 0, i32 8, i32 %22
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.hda_pcm, ptr %24, i32 0, i32 4
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  tail call void @_set_bit(i32 noundef %22, ptr noundef %12) #20
  br label %66

29:                                               ; preds = %21
  %30 = tail call fastcc i32 @generic_hdmi_build_jack(ptr noundef %0, i32 noundef %22)
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %102, label %32

32:                                               ; preds = %29
  %33 = load i8, ptr %8, align 1, !range !8
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i16, ptr %9, align 4
  %37 = tail call i32 @snd_hda_create_dig_out_ctls(ptr noundef %0, i16 noundef zeroext 0, i16 noundef zeroext %36, i32 noundef 2) #20
  br label %47

38:                                               ; preds = %32
  %39 = load ptr, ptr %10, align 4
  %40 = load i32, ptr %11, align 4
  %41 = mul i32 %40, %22
  %42 = getelementptr i8, ptr %39, i32 %41
  %43 = load i16, ptr %42, align 8
  %44 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %42, i32 0, i32 4
  %45 = load i16, ptr %44, align 8
  %46 = tail call i32 @snd_hda_create_dig_out_ctls(ptr noundef %0, i16 noundef zeroext %43, i16 noundef zeroext %45, i32 noundef 2) #20
  br label %47

47:                                               ; preds = %38, %35
  %48 = phi i32 [ %37, %35 ], [ %46, %38 ]
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %102, label %50

50:                                               ; preds = %47
  tail call void @snd_hda_spdif_ctls_unassign(ptr noundef %0, i32 noundef %22) #20
  %51 = load ptr, ptr %23, align 4
  %52 = getelementptr inbounds %struct.hda_pcm, ptr %51, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %66, label %55

55:                                               ; preds = %50
  %56 = load ptr, ptr %2, align 8
  %57 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @eld_bytes_ctl, ptr noundef %0) #20
  %58 = icmp eq ptr %57, null
  br i1 %58, label %102, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.snd_kcontrol, ptr %57, i32 0, i32 7
  store i32 %22, ptr %60, align 4
  %61 = getelementptr inbounds %struct.snd_kcontrol, ptr %57, i32 0, i32 1, i32 2
  store i32 %53, ptr %61, align 4
  %62 = tail call i32 @snd_hda_ctl_add(ptr noundef %0, i16 noundef zeroext 0, ptr noundef nonnull %57) #20
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %102, label %64

64:                                               ; preds = %59
  %65 = getelementptr %struct.hdmi_spec, ptr %56, i32 0, i32 8, i32 %22, i32 2
  store ptr %57, ptr %65, align 4
  br label %66

66:                                               ; preds = %64, %50, %28
  %67 = add nuw nsw i32 %22, 1
  %68 = load i32, ptr %4, align 8
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %21, label %13

70:                                               ; preds = %76
  %71 = load i32, ptr %4, align 8
  br label %72

72:                                               ; preds = %70, %13
  %73 = phi i32 [ %71, %70 ], [ %14, %13 ]
  %74 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 27
  %75 = icmp sgt i32 %73, 0
  br i1 %75, label %90, label %102

76:                                               ; preds = %76, %18
  %77 = phi i32 [ 0, %18 ], [ %83, %76 ]
  %78 = load ptr, ptr %19, align 4
  %79 = load i32, ptr %20, align 4
  %80 = mul i32 %79, %77
  %81 = getelementptr i8, ptr %78, i32 %80
  %82 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %81, i32 0, i32 8, i32 1
  store i8 0, ptr %82, align 1
  tail call fastcc void @hdmi_present_sense(ptr noundef %81, i32 noundef 0)
  %83 = add nuw nsw i32 %77, 1
  %84 = load i32, ptr %15, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %76, label %70

86:                                               ; preds = %99
  %87 = add nuw nsw i32 %91, 1
  %88 = load i32, ptr %4, align 8
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %86, %72
  %91 = phi i32 [ %87, %86 ], [ 0, %72 ]
  %92 = getelementptr %struct.hdmi_spec, ptr %3, i32 0, i32 8, i32 %91
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %102, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.hda_pcm, ptr %93, i32 0, i32 4
  %97 = load ptr, ptr %96, align 8
  %98 = icmp eq ptr %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = tail call i32 @snd_hdac_add_chmap_ctls(ptr noundef nonnull %97, i32 noundef %91, ptr noundef %74) #20
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %86

102:                                              ; preds = %99, %95, %90, %86, %72, %59, %55, %47, %29
  %103 = phi i32 [ 0, %72 ], [ 0, %86 ], [ %100, %99 ], [ 0, %95 ], [ 0, %90 ], [ -12, %55 ], [ %62, %59 ], [ %48, %47 ], [ %30, %29 ]
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @generic_hdmi_build_pcms(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 30
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 8388608
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 5
  %9 = load i32, ptr %8, align 8
  br i1 %7, label %10, label %15

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %9, -1
  %14 = add i32 %13, %12
  br label %15

15:                                               ; preds = %10, %1
  %16 = phi i32 [ %14, %10 ], [ %9, %1 ]
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 12
  br label %20

20:                                               ; preds = %24, %18
  %21 = phi i32 [ 0, %18 ], [ %34, %24 ]
  %22 = tail call ptr (ptr, ptr, ...) @snd_hda_codec_pcm_new(ptr noundef %0, ptr noundef nonnull @.str.121, i32 noundef %21) #20
  %23 = icmp eq ptr %22, null
  br i1 %23, label %37, label %24

24:                                               ; preds = %20
  %25 = getelementptr %struct.hdmi_spec, ptr %3, i32 0, i32 8, i32 %21
  store ptr %22, ptr %25, align 4
  %26 = load i32, ptr %19, align 8
  %27 = add i32 %26, 1
  store i32 %27, ptr %19, align 8
  %28 = getelementptr inbounds %struct.hda_pcm, ptr %22, i32 0, i32 2
  store i32 2, ptr %28, align 8
  %29 = getelementptr inbounds %struct.hda_pcm, ptr %22, i32 0, i32 5
  store i8 1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.hda_pcm, ptr %22, i32 0, i32 1
  store i32 1, ptr %30, align 8
  %31 = getelementptr inbounds %struct.hda_pcm, ptr %22, i32 0, i32 1, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(20) %31, ptr noundef nonnull align 4 dereferenceable(20) @generic_ops, i32 20, i1 false)
  %32 = load i32, ptr %19, align 8
  %33 = icmp sgt i32 %32, 15
  %34 = add nuw nsw i32 %21, 1
  %35 = icmp eq i32 %34, %16
  %36 = select i1 %33, i1 true, i1 %35
  br i1 %36, label %37, label %20

37:                                               ; preds = %24, %20, %15
  %38 = phi i32 [ 0, %15 ], [ -12, %20 ], [ 0, %24 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @generic_hdmi_free(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 23
  %5 = load i8, ptr %4, align 1, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @snd_hdac_acomp_exit(ptr noundef %9) #20
  br label %19

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 22
  %13 = load i8, ptr %12, align 8, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = tail call i32 @snd_hdac_acomp_register_notifier(ptr noundef %17, ptr noundef null) #20
  br label %19

19:                                               ; preds = %15, %11, %7
  %20 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 30
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, -2097153
  store i32 %22, ptr %20, align 8
  %23 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 7, i32 4
  %28 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 7, i32 2
  br label %36

29:                                               ; preds = %55, %19
  %30 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 12
  %31 = load i32, ptr %30, align 8
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %74

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 17
  %35 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 2
  br label %59

36:                                               ; preds = %55, %26
  %37 = phi i32 [ 0, %26 ], [ %56, %55 ]
  %38 = load ptr, ptr %27, align 4
  %39 = load i32, ptr %28, align 4
  %40 = mul i32 %39, %37
  %41 = getelementptr i8, ptr %38, i32 %40
  %42 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %41, i32 0, i32 10
  %43 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %42) #20
  %44 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %41, i32 0, i32 7
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.hda_codec, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.hda_bus, ptr %47, i32 0, i32 6
  %49 = load i8, ptr %48, align 4
  %50 = and i8 %49, 2
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %36
  %53 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %41, i32 0, i32 20
  %54 = load ptr, ptr %53, align 8
  tail call void @snd_info_free_entry(ptr noundef %54) #20
  store ptr null, ptr %53, align 8
  br label %55

55:                                               ; preds = %52, %36
  %56 = add nuw nsw i32 %37, 1
  %57 = load i32, ptr %23, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %36, label %29

59:                                               ; preds = %70, %33
  %60 = phi i32 [ 0, %33 ], [ %71, %70 ]
  %61 = getelementptr %struct.hdmi_spec, ptr %3, i32 0, i32 8, i32 %60, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %59
  %65 = load i8, ptr %34, align 1, !range !8
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr %35, align 4
  tail call void @snd_device_free(ptr noundef %68, ptr noundef nonnull %62) #20
  br label %70

69:                                               ; preds = %64
  store ptr null, ptr %61, align 4
  br label %70

70:                                               ; preds = %69, %67, %59
  %71 = add nuw nsw i32 %60, 1
  %72 = load i32, ptr %30, align 8
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %59, label %74

74:                                               ; preds = %70, %29
  %75 = load ptr, ptr %2, align 8
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.hdmi_spec, ptr %75, i32 0, i32 7
  tail call void @snd_array_free(ptr noundef %78) #20
  %79 = getelementptr inbounds %struct.hdmi_spec, ptr %75, i32 0, i32 2
  tail call void @snd_array_free(ptr noundef %79) #20
  tail call void @kfree(ptr noundef nonnull %75) #20
  store ptr null, ptr %2, align 8
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i32, ptr %20, align 8
  %82 = and i32 %81, -32769
  store i32 %82, ptr %20, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hdmi_unsol_event(ptr noundef %0, i32 noundef %1) #1 {
  %3 = lshr i32 %1, 26
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 22
  %7 = load i8, ptr %6, align 8, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %70

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 30
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 32768
  %13 = icmp eq i32 %12, 0
  %14 = lshr i32 %1, 15
  %15 = and i32 %14, 63
  %16 = select i1 %13, i32 0, i32 %15
  %17 = trunc i32 %3 to i8
  %18 = tail call ptr @snd_hda_jack_tbl_get_from_tag(ptr noundef %0, i8 noundef zeroext %17, i32 noundef %16) #20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %70, label %20

20:                                               ; preds = %9
  %21 = and i32 %1, 65011712
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %62

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.hda_jack_tbl, ptr %18, i32 0, i32 5
  %25 = load i8, ptr %24, align 4
  %26 = or i8 %25, 2
  store i8 %26, ptr %24, align 4
  %27 = load i16, ptr %18, align 4
  %28 = getelementptr inbounds %struct.hda_jack_tbl, ptr %18, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = load ptr, ptr %4, align 8
  %31 = icmp eq i32 %29, -1
  %32 = select i1 %31, i32 0, i32 %29
  %33 = getelementptr inbounds %struct.hdmi_spec, ptr %30, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.hdmi_spec, ptr %30, i32 0, i32 7, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.hdmi_spec, ptr %30, i32 0, i32 7, i32 2
  %40 = load i32, ptr %39, align 4
  br label %41

41:                                               ; preds = %51, %36
  %42 = phi i32 [ 0, %36 ], [ %52, %51 ]
  %43 = mul i32 %42, %40
  %44 = getelementptr i8, ptr %38, i32 %43
  %45 = load i16, ptr %44, align 8
  %46 = icmp eq i16 %45, %27
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %44, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, %32
  br i1 %50, label %56, label %51

51:                                               ; preds = %47, %41
  %52 = add nuw nsw i32 %42, 1
  %53 = icmp eq i32 %52, %34
  br i1 %53, label %54, label %41

54:                                               ; preds = %51, %23
  %55 = zext i16 %27 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.108, i32 noundef %55) #21
  br label %70

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.hdmi_spec, ptr %30, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %57) #20
  %58 = load ptr, ptr %37, align 4
  %59 = load i32, ptr %39, align 4
  %60 = mul i32 %59, %42
  %61 = getelementptr i8, ptr %58, i32 %60
  tail call fastcc void @hdmi_present_sense(ptr noundef %61, i32 noundef 1) #20
  tail call void @mutex_unlock(ptr noundef %57) #20
  br label %70

62:                                               ; preds = %20
  %63 = lshr i32 %1, 21
  %64 = and i32 %63, 31
  %65 = lshr i32 %1, 1
  %66 = and i32 %65, 1
  %67 = and i32 %1, 1
  %68 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 3
  %69 = load i32, ptr %68, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.123, i32 noundef %69, i32 noundef %3, i32 noundef %64, i32 noundef %66, i32 noundef %67) #21
  br label %70

70:                                               ; preds = %62, %56, %54, %9, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @generic_hdmi_suspend(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 7, i32 4
  %9 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 7, i32 2
  br label %10

10:                                               ; preds = %10, %7
  %11 = phi i32 [ 0, %7 ], [ %18, %10 ]
  %12 = load ptr, ptr %8, align 4
  %13 = load i32, ptr %9, align 4
  %14 = mul i32 %13, %11
  %15 = getelementptr i8, ptr %12, i32 %14
  %16 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %15, i32 0, i32 10
  %17 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %16) #20
  %18 = add nuw nsw i32 %11, 1
  %19 = load i32, ptr %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %10, label %21

21:                                               ; preds = %10, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @generic_hdmi_resume(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 7, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 %5(ptr noundef %0) #20
  tail call void @snd_hdac_regmap_sync(ptr noundef %0) #20
  %7 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 7, i32 4
  %12 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 7, i32 2
  br label %13

13:                                               ; preds = %13, %10
  %14 = phi i32 [ 0, %10 ], [ %19, %13 ]
  %15 = load ptr, ptr %11, align 4
  %16 = load i32, ptr %12, align 4
  %17 = mul i32 %16, %14
  %18 = getelementptr i8, ptr %15, i32 %17
  tail call fastcc void @hdmi_present_sense(ptr noundef %18, i32 noundef 1)
  %19 = add nuw nsw i32 %14, 1
  %20 = load i32, ptr %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %13, label %22

22:                                               ; preds = %13, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @generic_hdmi_build_jack(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = alloca [32 x i8], align 1
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(32) @__const.generic_hdmi_build_jack.hdmi_str, i32 32, i1 false)
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.hdmi_spec, ptr %6, i32 0, i32 7, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.hdmi_spec, ptr %6, i32 0, i32 7, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = mul i32 %10, %1
  %12 = getelementptr i8, ptr %8, i32 %11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store ptr null, ptr %4, align 4, !annotation !11
  %13 = getelementptr %struct.hdmi_spec, ptr %6, i32 0, i32 8, i32 %1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.hda_pcm, ptr %14, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = call i32 @strlen(ptr noundef nonnull %3)
  %20 = getelementptr i8, ptr %3, i32 %19
  %21 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %20, ptr noundef nonnull @.str.118, i32 noundef %16)
  br label %22

22:                                               ; preds = %18, %2
  %23 = getelementptr inbounds %struct.hdmi_spec, ptr %6, i32 0, i32 17
  %24 = load i8, ptr %23, align 1, !range !8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i16, ptr %12, align 8
  %28 = tail call zeroext i1 @is_jack_detectable(ptr noundef %0, i16 noundef zeroext %27) #20
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = call i32 @strlen(ptr noundef nonnull %3)
  %31 = sub i32 31, %30
  %32 = call ptr @strncat(ptr noundef nonnull %3, ptr noundef nonnull @.str.119, i32 noundef %31)
  br label %33

33:                                               ; preds = %29, %26, %22
  %34 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = call i32 @snd_jack_new(ptr noundef %35, ptr noundef nonnull %3, i32 noundef 20, ptr noundef nonnull %4, i1 noundef zeroext true, i1 noundef zeroext false) #20
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr %struct.hdmi_spec, ptr %6, i32 0, i32 8, i32 %1, i32 1
  store ptr %39, ptr %40, align 4
  %41 = load ptr, ptr %4, align 4
  %42 = getelementptr inbounds %struct.snd_jack, ptr %41, i32 0, i32 9
  store ptr %13, ptr %42, align 4
  %43 = getelementptr inbounds %struct.snd_jack, ptr %41, i32 0, i32 10
  store ptr @free_hdmi_jack_priv, ptr %43, align 4
  br label %44

44:                                               ; preds = %38, %33
  %45 = phi i32 [ 0, %38 ], [ %36, %33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_create_dig_out_ctls(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_add_chmap_ctls(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_jack_detectable(ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_jack_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @free_hdmi_jack_priv(ptr nocapture noundef readonly %0) #16 {
  %2 = getelementptr inbounds %struct.snd_jack, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.hdmi_pcm, ptr %3, i32 0, i32 1
  store ptr null, ptr %4, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_ctl_add(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_eld_ctl_info(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.hda_codec, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 4, ptr %7, align 8
  %8 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.hdmi_spec, ptr %6, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %10) #20
  %11 = getelementptr inbounds %struct.hdmi_spec, ptr %6, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.hdmi_spec, ptr %6, i32 0, i32 7, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.hdmi_spec, ptr %6, i32 0, i32 7, i32 2
  %18 = load i32, ptr %17, align 4
  br label %22

19:                                               ; preds = %22
  %20 = add nuw nsw i32 %23, 1
  %21 = icmp eq i32 %20, %12
  br i1 %21, label %38, label %22

22:                                               ; preds = %19, %14
  %23 = phi i32 [ 0, %14 ], [ %20, %19 ]
  %24 = mul i32 %23, %18
  %25 = getelementptr i8, ptr %16, i32 %24
  %26 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %25, i32 0, i32 12
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, %9
  br i1 %28, label %29, label %19

29:                                               ; preds = %22
  %30 = icmp eq ptr %25, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %25, i32 0, i32 8, i32 1
  %33 = load i8, ptr %32, align 1, !range !8
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %25, i32 0, i32 8, i32 2
  %37 = load i32, ptr %36, align 4
  br label %38

38:                                               ; preds = %35, %31, %29, %19, %2
  %39 = phi i32 [ 0, %2 ], [ 0, %29 ], [ %37, %35 ], [ 0, %31 ], [ 0, %19 ]
  %40 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 %39, ptr %40, align 8
  tail call void @mutex_unlock(ptr noundef %10) #20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_eld_ctl_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.hda_codec, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.hdmi_spec, ptr %6, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %9) #20
  %10 = getelementptr inbounds %struct.hdmi_spec, ptr %6, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.hdmi_spec, ptr %6, i32 0, i32 7, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.hdmi_spec, ptr %6, i32 0, i32 7, i32 2
  %17 = load i32, ptr %16, align 4
  br label %21

18:                                               ; preds = %21
  %19 = add nuw nsw i32 %22, 1
  %20 = icmp eq i32 %19, %11
  br i1 %20, label %30, label %21

21:                                               ; preds = %18, %13
  %22 = phi i32 [ 0, %13 ], [ %19, %18 ]
  %23 = mul i32 %22, %17
  %24 = getelementptr i8, ptr %15, i32 %23
  %25 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %24, i32 0, i32 12
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, %8
  br i1 %27, label %28, label %18

28:                                               ; preds = %21
  %29 = icmp eq ptr %24, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %28, %18, %2
  %31 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(512) %31, i8 0, i32 512, i1 false)
  br label %44

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %24, i32 0, i32 8, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = icmp ugt i32 %34, 256
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(512) %37, i8 0, i32 512, i1 false)
  %38 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %24, i32 0, i32 8, i32 1
  %39 = load i8, ptr %38, align 1, !range !8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %24, i32 0, i32 8, i32 3
  %43 = load i32, ptr %33, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %37, ptr align 8 %42, i32 %43, i1 false)
  br label %44

44:                                               ; preds = %41, %36, %32, %30
  %45 = phi i32 [ 0, %41 ], [ 0, %36 ], [ 0, %30 ], [ -22, %32 ]
  tail call void @mutex_unlock(ptr noundef %9) #20
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_hda_codec_pcm_new(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_pcm_open(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_substream, ptr %2, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store i32 0, ptr %4, align 4, !annotation !11
  %9 = getelementptr inbounds %struct.hdmi_spec, ptr %6, i32 0, i32 12
  %10 = load i32, ptr %9, align 8
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %18, %3
  %13 = phi i32 [ %19, %18 ], [ 0, %3 ]
  %14 = getelementptr %struct.hdmi_spec, ptr %6, i32 0, i32 8, i32 %13
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.hda_pcm, ptr %15, i32 0, i32 1
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = add nuw nsw i32 %13, 1
  %20 = icmp eq i32 %19, %10
  br i1 %20, label %21, label %12

21:                                               ; preds = %18, %3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.122, ptr noundef %0) #21
  br label %251

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.hdmi_spec, ptr %6, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %23) #20
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds %struct.hdmi_spec, ptr %24, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.hdmi_spec, ptr %24, i32 0, i32 7, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.hdmi_spec, ptr %24, i32 0, i32 7, i32 2
  %32 = load i32, ptr %31, align 4
  br label %33

33:                                               ; preds = %44, %28
  %34 = phi i32 [ 0, %28 ], [ %45, %44 ]
  %35 = mul i32 %34, %32
  %36 = getelementptr i8, ptr %30, i32 %35
  %37 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %36, i32 0, i32 11
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %33
  %41 = load ptr, ptr %38, align 4
  %42 = getelementptr inbounds %struct.hda_pcm, ptr %41, i32 0, i32 1
  %43 = icmp eq ptr %42, %0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40, %33
  %45 = add nuw nsw i32 %34, 1
  %46 = icmp eq i32 %45, %26
  br i1 %46, label %47, label %33

47:                                               ; preds = %44, %40, %22
  %48 = phi i32 [ -22, %22 ], [ %34, %40 ], [ -22, %44 ]
  %49 = getelementptr inbounds %struct.hdmi_spec, ptr %6, i32 0, i32 17
  %50 = load i8, ptr %49, align 1, !range !8
  %51 = icmp eq i8 %50, 0
  %52 = icmp slt i32 %48, 0
  br i1 %51, label %53, label %54

53:                                               ; preds = %47
  br i1 %52, label %249, label %137

54:                                               ; preds = %47
  br i1 %52, label %55, label %137

55:                                               ; preds = %54
  %56 = load ptr, ptr %7, align 4
  %57 = getelementptr inbounds %struct.hdmi_spec, ptr %24, i32 0, i32 12
  %58 = load i32, ptr %57, align 8
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %66, %55
  %61 = phi i32 [ %67, %66 ], [ 0, %55 ]
  %62 = getelementptr %struct.hdmi_spec, ptr %24, i32 0, i32 8, i32 %61
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.hda_pcm, ptr %63, i32 0, i32 1
  %65 = icmp eq ptr %64, %0
  br i1 %65, label %70, label %66

66:                                               ; preds = %60
  %67 = add nuw nsw i32 %61, 1
  %68 = icmp eq i32 %67, %58
  br i1 %68, label %69, label %60

69:                                               ; preds = %66, %55
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.122, ptr noundef %0) #21
  br label %249

70:                                               ; preds = %60
  %71 = getelementptr inbounds %struct.hdmi_spec, ptr %24, i32 0, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.hdmi_spec, ptr %24, i32 0, i32 2, i32 4
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.hdmi_spec, ptr %24, i32 0, i32 2, i32 2
  %78 = load i32, ptr %77, align 4
  br label %79

79:                                               ; preds = %86, %74
  %80 = phi i32 [ 0, %74 ], [ %87, %86 ]
  %81 = mul i32 %80, %78
  %82 = getelementptr i8, ptr %76, i32 %81
  %83 = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %82, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %79
  %87 = add nuw nsw i32 %80, 1
  %88 = icmp eq i32 %87, %72
  br i1 %88, label %249, label %79

89:                                               ; preds = %70
  %90 = icmp eq i32 %72, 0
  br i1 %90, label %249, label %91

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.hdmi_spec, ptr %24, i32 0, i32 2, i32 4
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.hdmi_spec, ptr %24, i32 0, i32 2, i32 2
  %95 = load i32, ptr %94, align 4
  br label %96

96:                                               ; preds = %91, %79
  %97 = phi i32 [ %95, %91 ], [ %78, %79 ]
  %98 = phi ptr [ %93, %91 ], [ %76, %79 ]
  %99 = phi i32 [ 0, %91 ], [ %80, %79 ]
  %100 = mul i32 %99, %97
  %101 = getelementptr i8, ptr %98, i32 %100
  %102 = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %101, i32 0, i32 1
  store i32 1, ptr %102, align 4
  %103 = load i16, ptr %101, align 8
  %104 = getelementptr inbounds %struct.hda_pcm_stream, ptr %0, i32 0, i32 3
  store i16 %103, ptr %104, align 4
  %105 = load ptr, ptr %5, align 8
  %106 = getelementptr inbounds %struct.hdmi_spec, ptr %105, i32 0, i32 15, i32 4
  %107 = load ptr, ptr %106, align 8
  %108 = icmp eq ptr %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %96
  %110 = load i16, ptr %101, align 8
  tail call void %107(ptr noundef %1, ptr noundef null, i16 noundef zeroext %110) #20
  br label %111

111:                                              ; preds = %109, %96
  %112 = getelementptr inbounds %struct.hdmi_spec, ptr %24, i32 0, i32 13
  tail call void @_set_bit(i32 noundef %61, ptr noundef %112) #20
  %113 = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %101, i32 0, i32 2
  %114 = load i32, ptr %113, align 8
  %115 = getelementptr inbounds %struct.hda_pcm_stream, ptr %0, i32 0, i32 1
  store i32 %114, ptr %115, align 4
  %116 = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %101, i32 0, i32 3
  %117 = load i32, ptr %116, align 4
  %118 = getelementptr inbounds %struct.hda_pcm_stream, ptr %0, i32 0, i32 2
  store i32 %117, ptr %118, align 8
  %119 = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %101, i32 0, i32 4
  %120 = load i32, ptr %119, align 8
  %121 = getelementptr inbounds %struct.hda_pcm_stream, ptr %0, i32 0, i32 4
  store i32 %120, ptr %121, align 8
  %122 = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %101, i32 0, i32 5
  %123 = load i64, ptr %122, align 8
  %124 = getelementptr inbounds %struct.hda_pcm_stream, ptr %0, i32 0, i32 5
  store i64 %123, ptr %124, align 8
  %125 = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %101, i32 0, i32 6
  %126 = load i32, ptr %125, align 8
  %127 = getelementptr inbounds %struct.hda_pcm_stream, ptr %0, i32 0, i32 6
  store i32 %126, ptr %127, align 8
  %128 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %56, i32 0, i32 46, i32 5
  store i32 %114, ptr %128, align 4
  %129 = load i32, ptr %118, align 8
  %130 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %56, i32 0, i32 46, i32 6
  store i32 %129, ptr %130, align 8
  %131 = load i64, ptr %124, align 8
  %132 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %56, i32 0, i32 46, i32 1
  store i64 %131, ptr %132, align 8
  %133 = load i32, ptr %121, align 8
  %134 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %56, i32 0, i32 46, i32 2
  store i32 %133, ptr %134, align 8
  %135 = load ptr, ptr %7, align 4
  %136 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %135, i32 noundef 0, i32 noundef 10, i32 noundef 2) #20
  br label %249

137:                                              ; preds = %54, %53
  %138 = call fastcc i32 @hdmi_choose_cvt(ptr noundef %1, i32 noundef %48, ptr noundef nonnull %4)
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %249, label %140

140:                                              ; preds = %137
  %141 = load i32, ptr %4, align 4
  %142 = getelementptr inbounds %struct.hdmi_spec, ptr %6, i32 0, i32 2, i32 4
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.hdmi_spec, ptr %6, i32 0, i32 2, i32 2
  %145 = load i32, ptr %144, align 4
  %146 = mul i32 %145, %141
  %147 = getelementptr i8, ptr %143, i32 %146
  %148 = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %147, i32 0, i32 1
  store i32 1, ptr %148, align 4
  %149 = getelementptr inbounds %struct.hdmi_spec, ptr %6, i32 0, i32 13
  call void @_set_bit(i32 noundef %13, ptr noundef %149) #20
  %150 = getelementptr inbounds %struct.hdmi_spec, ptr %6, i32 0, i32 7, i32 4
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.hdmi_spec, ptr %6, i32 0, i32 7, i32 2
  %153 = load i32, ptr %152, align 4
  %154 = mul i32 %153, %48
  %155 = getelementptr i8, ptr %151, i32 %154
  %156 = load i16, ptr %147, align 8
  %157 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %155, i32 0, i32 6
  store i16 %156, ptr %157, align 4
  %158 = load i16, ptr %147, align 8
  %159 = getelementptr inbounds %struct.hda_pcm_stream, ptr %0, i32 0, i32 3
  store i16 %158, ptr %159, align 4
  %160 = load i16, ptr %147, align 8
  %161 = zext i16 %160 to i32
  %162 = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 18
  %163 = load i16, ptr %162, align 4
  %164 = zext i16 %163 to i32
  %165 = icmp ugt i16 %163, %160
  br i1 %165, label %186, label %166

166:                                              ; preds = %140
  %167 = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 17
  %168 = load i32, ptr %167, align 8
  %169 = add i32 %168, %164
  %170 = icmp ugt i32 %169, %161
  br i1 %170, label %171, label %186

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 14
  %173 = load ptr, ptr %172, align 4
  %174 = sub nsw i32 %161, %164
  %175 = getelementptr i32, ptr %173, i32 %174
  %176 = load i32, ptr %175, align 4
  %177 = and i32 %176, 32
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %186, label %179

179:                                              ; preds = %171
  %180 = load ptr, ptr %7, align 4
  %181 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %180, i32 0, i32 44
  %182 = load ptr, ptr %181, align 8
  %183 = getelementptr inbounds %struct.hdac_stream, ptr %182, i32 0, i32 16
  %184 = load i8, ptr %183, align 8
  %185 = or i8 %184, 32
  store i8 %185, ptr %183, align 8
  br label %186

186:                                              ; preds = %179, %171, %166, %140
  %187 = load i16, ptr %155, align 8
  %188 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %155, i32 0, i32 1
  %189 = load i32, ptr %188, align 4
  %190 = call i32 @snd_hda_set_dev_select(ptr noundef %1, i16 noundef zeroext %187, i32 noundef %189) #20
  %191 = load i16, ptr %155, align 8
  %192 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %155, i32 0, i32 5
  %193 = load i32, ptr %192, align 8
  %194 = zext i16 %191 to i32
  %195 = shl i32 %194, 20
  %196 = or i32 %195, 983296
  %197 = call i32 @snd_hdac_regmap_write_raw(ptr noundef %1, i32 noundef %196, i32 noundef %193) #20
  %198 = load ptr, ptr %5, align 8
  %199 = getelementptr inbounds %struct.hdmi_spec, ptr %198, i32 0, i32 15, i32 4
  %200 = load ptr, ptr %199, align 8
  %201 = icmp eq ptr %200, null
  br i1 %201, label %203, label %202

202:                                              ; preds = %186
  call void %200(ptr noundef %1, ptr noundef %155, i16 noundef zeroext 0) #20
  br label %203

203:                                              ; preds = %202, %186
  %204 = load i16, ptr %147, align 8
  call void @snd_hda_spdif_ctls_assign(ptr noundef %1, i32 noundef %13, i16 noundef zeroext %204) #20
  %205 = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %147, i32 0, i32 2
  %206 = load i32, ptr %205, align 8
  %207 = getelementptr inbounds %struct.hda_pcm_stream, ptr %0, i32 0, i32 1
  store i32 %206, ptr %207, align 4
  %208 = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %147, i32 0, i32 3
  %209 = load i32, ptr %208, align 4
  %210 = getelementptr inbounds %struct.hda_pcm_stream, ptr %0, i32 0, i32 2
  store i32 %209, ptr %210, align 8
  %211 = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %147, i32 0, i32 4
  %212 = load i32, ptr %211, align 8
  %213 = getelementptr inbounds %struct.hda_pcm_stream, ptr %0, i32 0, i32 4
  store i32 %212, ptr %213, align 8
  %214 = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %147, i32 0, i32 5
  %215 = load i64, ptr %214, align 8
  %216 = getelementptr inbounds %struct.hda_pcm_stream, ptr %0, i32 0, i32 5
  store i64 %215, ptr %216, align 8
  %217 = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %147, i32 0, i32 6
  %218 = load i32, ptr %217, align 8
  %219 = getelementptr inbounds %struct.hda_pcm_stream, ptr %0, i32 0, i32 6
  store i32 %218, ptr %219, align 8
  %220 = load i8, ptr @static_hdmi_pcm, align 1, !range !8
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %222, label %238

222:                                              ; preds = %203
  %223 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %155, i32 0, i32 8, i32 1
  %224 = load i8, ptr %223, align 1, !range !8
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %238, label %226

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %155, i32 0, i32 8, i32 4
  call void @snd_hdmi_eld_update_pcm_info(ptr noundef %227, ptr noundef %0) #20
  %228 = load i32, ptr %207, align 4
  %229 = load i32, ptr %210, align 8
  %230 = icmp ugt i32 %228, %229
  br i1 %230, label %237, label %231

231:                                              ; preds = %226
  %232 = load i32, ptr %213, align 8
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %237, label %234

234:                                              ; preds = %231
  %235 = load i64, ptr %216, align 8
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %234, %231, %226
  store i32 0, ptr %148, align 4
  store i16 0, ptr %159, align 4
  call void @snd_hda_spdif_ctls_unassign(ptr noundef %1, i32 noundef %13) #20
  br label %249

238:                                              ; preds = %234, %222, %203
  %239 = phi i32 [ %228, %234 ], [ %206, %222 ], [ %206, %203 ]
  %240 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 46, i32 5
  store i32 %239, ptr %240, align 4
  %241 = load i32, ptr %210, align 8
  %242 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 46, i32 6
  store i32 %241, ptr %242, align 8
  %243 = load i64, ptr %216, align 8
  %244 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 46, i32 1
  store i64 %243, ptr %244, align 8
  %245 = load i32, ptr %213, align 8
  %246 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 46, i32 2
  store i32 %245, ptr %246, align 8
  %247 = load ptr, ptr %7, align 4
  %248 = call i32 @snd_pcm_hw_constraint_step(ptr noundef %247, i32 noundef 0, i32 noundef 10, i32 noundef 2) #20
  br label %249

249:                                              ; preds = %238, %237, %137, %111, %89, %86, %69, %53
  %250 = phi i32 [ %138, %137 ], [ 0, %238 ], [ -19, %237 ], [ -22, %53 ], [ 0, %111 ], [ -22, %69 ], [ -16, %89 ], [ -16, %86 ]
  call void @mutex_unlock(ptr noundef %23) #20
  br label %251

251:                                              ; preds = %249, %21
  %252 = phi i32 [ %250, %249 ], [ -22, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  ret i32 %252
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_pcm_close(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %6) #20
  %7 = getelementptr inbounds %struct.hda_pcm_stream, ptr %0, i32 0, i32 3
  %8 = load i16, ptr %7, align 4
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %119, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds %struct.hdmi_spec, ptr %11, i32 0, i32 12
  %13 = load i32, ptr %12, align 8
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %21, %10
  %16 = phi i32 [ %22, %21 ], [ 0, %10 ]
  %17 = getelementptr %struct.hdmi_spec, ptr %11, i32 0, i32 8, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.hda_pcm, ptr %18, i32 0, i32 1
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = add nuw nsw i32 %16, 1
  %23 = icmp eq i32 %22, %13
  br i1 %23, label %24, label %15

24:                                               ; preds = %21, %10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.122, ptr noundef %0) #21
  br label %119

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.hdmi_spec, ptr %11, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.hdmi_spec, ptr %11, i32 0, i32 2, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.hdmi_spec, ptr %11, i32 0, i32 2, i32 2
  %33 = load i32, ptr %32, align 4
  br label %34

34:                                               ; preds = %40, %29
  %35 = phi i32 [ 0, %29 ], [ %41, %40 ]
  %36 = mul i32 %35, %33
  %37 = getelementptr i8, ptr %31, i32 %36
  %38 = load i16, ptr %37, align 8
  %39 = icmp eq i16 %38, %8
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = add nuw nsw i32 %35, 1
  %42 = icmp eq i32 %41, %27
  br i1 %42, label %43, label %34

43:                                               ; preds = %40, %25
  %44 = zext i16 %8 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.113, i32 noundef %44) #21
  br label %119

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 2, i32 4
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 2, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = mul i32 %49, %35
  %51 = getelementptr i8, ptr %47, i32 %50
  %52 = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %51, i32 0, i32 1
  store i32 0, ptr %52, align 4
  store i16 0, ptr %7, align 4
  %53 = getelementptr inbounds %struct.snd_pcm_substream, ptr %2, i32 0, i32 11
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %54, i32 0, i32 44
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.hdac_stream, ptr %56, i32 0, i32 16
  %58 = load i8, ptr %57, align 8
  %59 = and i8 %58, -33
  store i8 %59, ptr %57, align 8
  tail call void @snd_hda_spdif_ctls_unassign(ptr noundef %1, i32 noundef %16) #20
  %60 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef %16, ptr noundef %60) #20
  %61 = load ptr, ptr %4, align 8
  %62 = getelementptr inbounds %struct.hdmi_spec, ptr %61, i32 0, i32 4
  %63 = load i32, ptr %62, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %84

65:                                               ; preds = %45
  %66 = getelementptr inbounds %struct.hdmi_spec, ptr %61, i32 0, i32 7, i32 4
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.hdmi_spec, ptr %61, i32 0, i32 7, i32 2
  %69 = load i32, ptr %68, align 4
  br label %70

70:                                               ; preds = %81, %65
  %71 = phi i32 [ 0, %65 ], [ %82, %81 ]
  %72 = mul i32 %71, %69
  %73 = getelementptr i8, ptr %67, i32 %72
  %74 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %73, i32 0, i32 11
  %75 = load ptr, ptr %74, align 8
  %76 = icmp eq ptr %75, null
  br i1 %76, label %81, label %77

77:                                               ; preds = %70
  %78 = load ptr, ptr %75, align 4
  %79 = getelementptr inbounds %struct.hda_pcm, ptr %78, i32 0, i32 1
  %80 = icmp eq ptr %79, %0
  br i1 %80, label %84, label %81

81:                                               ; preds = %77, %70
  %82 = add nuw nsw i32 %71, 1
  %83 = icmp eq i32 %82, %63
  br i1 %83, label %84, label %70

84:                                               ; preds = %81, %77, %45
  %85 = phi i32 [ -22, %45 ], [ %71, %77 ], [ -22, %81 ]
  %86 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 17
  %87 = load i8, ptr %86, align 1, !range !8
  %88 = icmp ne i8 %87, 0
  %89 = icmp slt i32 %85, 0
  %90 = select i1 %88, i1 %89, i1 false
  %91 = select i1 %90, i1 true, i1 %89
  %92 = select i1 %90, i32 0, i32 -22
  br i1 %91, label %119, label %93

93:                                               ; preds = %84
  %94 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 7, i32 4
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 7, i32 2
  %97 = load i32, ptr %96, align 4
  %98 = mul i32 %97, %85
  %99 = getelementptr i8, ptr %95, i32 %98
  %100 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 16
  %101 = load i8, ptr %100, align 4, !range !8
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %113, label %103

103:                                              ; preds = %93
  %104 = load i16, ptr %99, align 8
  %105 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %99, i32 0, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = tail call i32 @snd_hda_set_dev_select(ptr noundef %1, i16 noundef zeroext %104, i32 noundef %106) #20
  %108 = load i16, ptr %99, align 8
  %109 = tail call i32 @snd_hdac_codec_read(ptr noundef %1, i16 noundef zeroext %108, i32 noundef 0, i32 noundef 3847, i32 noundef 0) #20
  %110 = load i16, ptr %99, align 8
  %111 = and i32 %109, -65
  %112 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext %110, i32 noundef 0, i32 noundef 1799, i32 noundef %111) #20
  br label %113

113:                                              ; preds = %103, %93
  %114 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %99, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %114) #20
  %115 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %99, i32 0, i32 18
  store i8 0, ptr %115, align 1
  %116 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %99, i32 0, i32 19
  store i64 0, ptr %116, align 2
  %117 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %99, i32 0, i32 14
  store i8 0, ptr %117, align 4
  %118 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %99, i32 0, i32 16
  store i32 0, ptr %118, align 8
  tail call void @mutex_unlock(ptr noundef %114) #20
  br label %119

119:                                              ; preds = %113, %84, %43, %24, %3
  %120 = phi i32 [ %92, %84 ], [ 0, %113 ], [ 0, %3 ], [ -22, %24 ], [ -22, %43 ]
  tail call void @mutex_unlock(ptr noundef %6) #20
  ret i32 %120
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @generic_hdmi_playback_pcm_prepare(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #1 {
  %6 = getelementptr inbounds %struct.hda_pcm_stream, ptr %0, i32 0, i32 3
  %7 = load i16, ptr %6, align 4
  %8 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, ptr %4, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.hdmi_spec, ptr %9, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %12) #20
  %13 = load ptr, ptr %8, align 8
  %14 = getelementptr inbounds %struct.hdmi_spec, ptr %13, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.hdmi_spec, ptr %13, i32 0, i32 7, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.hdmi_spec, ptr %13, i32 0, i32 7, i32 2
  %21 = load i32, ptr %20, align 4
  br label %22

22:                                               ; preds = %33, %17
  %23 = phi i32 [ 0, %17 ], [ %34, %33 ]
  %24 = mul i32 %23, %21
  %25 = getelementptr i8, ptr %19, i32 %24
  %26 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %25, i32 0, i32 11
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = load ptr, ptr %27, align 4
  %31 = getelementptr inbounds %struct.hda_pcm, ptr %30, i32 0, i32 1
  %32 = icmp eq ptr %31, %0
  br i1 %32, label %46, label %33

33:                                               ; preds = %29, %22
  %34 = add nuw nsw i32 %23, 1
  %35 = icmp eq i32 %34, %15
  br i1 %35, label %36, label %22

36:                                               ; preds = %33, %5
  %37 = getelementptr inbounds %struct.hdmi_spec, ptr %9, i32 0, i32 17
  %38 = load i8, ptr %37, align 1, !range !8
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %132, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.hdmi_spec, ptr %13, i32 0, i32 15, i32 4
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void %42(ptr noundef %1, ptr noundef null, i16 noundef zeroext %7) #20
  br label %45

45:                                               ; preds = %44, %40
  tail call void @snd_hda_codec_setup_stream(ptr noundef %1, i16 noundef zeroext %7, i32 noundef %2, i32 noundef 0, i32 noundef %3) #20
  br label %132

46:                                               ; preds = %29
  %47 = getelementptr inbounds %struct.hdmi_spec, ptr %9, i32 0, i32 7, i32 4
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.hdmi_spec, ptr %9, i32 0, i32 7, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = mul i32 %50, %23
  %52 = getelementptr i8, ptr %48, i32 %51
  %53 = getelementptr inbounds %struct.hdmi_spec, ptr %13, i32 0, i32 15, i32 4
  %54 = load ptr, ptr %53, align 8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %46
  tail call void %54(ptr noundef %1, ptr noundef %52, i16 noundef zeroext 0) #20
  %57 = load ptr, ptr %8, align 8
  br label %58

58:                                               ; preds = %56, %46
  %59 = phi ptr [ %13, %46 ], [ %57, %56 ]
  %60 = getelementptr inbounds %struct.hdmi_spec, ptr %59, i32 0, i32 22
  %61 = load i8, ptr %60, align 8, !range !8
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %58
  %64 = load i16, ptr %52, align 8
  %65 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %52, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 14
  %68 = load i32, ptr %67, align 4
  %69 = tail call i32 @snd_hdac_sync_audio_rate(ptr noundef %1, i16 noundef zeroext %64, i32 noundef %66, i32 noundef %68) #20
  br label %70

70:                                               ; preds = %63, %58
  %71 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 18
  tail call void @mutex_lock(ptr noundef %71) #20
  %72 = tail call ptr @snd_hda_spdif_out_of_nid(ptr noundef %1, i16 noundef zeroext %7) #20
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %75, !prof !12

74:                                               ; preds = %70
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.109, i32 noundef 2018, i32 noundef 9, ptr noundef null) #20
  br label %80

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.hda_spdif_out, ptr %72, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %77, 2
  %79 = icmp ne i32 %78, 0
  br label %80

80:                                               ; preds = %75, %74
  %81 = phi i1 [ true, %74 ], [ %79, %75 ]
  tail call void @mutex_unlock(ptr noundef %71) #20
  %82 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %52, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %82) #20
  %83 = load ptr, ptr %10, align 4
  %84 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %83, i32 0, i32 15
  %85 = load i32, ptr %84, align 8
  %86 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %52, i32 0, i32 16
  store i32 %85, ptr %86, align 8
  %87 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %52, i32 0, i32 14
  store i8 1, ptr %87, align 4
  %88 = zext i16 %7 to i32
  %89 = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 18
  %90 = load i16, ptr %89, align 4
  %91 = zext i16 %90 to i32
  %92 = icmp ugt i16 %90, %7
  br i1 %92, label %111, label %93

93:                                               ; preds = %80
  %94 = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 17
  %95 = load i32, ptr %94, align 8
  %96 = add i32 %95, %91
  %97 = icmp ugt i32 %96, %88
  br i1 %97, label %98, label %111

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 14
  %100 = load ptr, ptr %99, align 4
  %101 = sub nsw i32 %88, %91
  %102 = getelementptr i32, ptr %100, i32 %101
  %103 = load i32, ptr %102, align 4
  %104 = and i32 %103, 32
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %98
  %107 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 1
  %108 = load ptr, ptr %107, align 8
  %109 = tail call i32 @snd_hdac_get_stream_stripe_ctl(ptr noundef %108, ptr noundef %4) #20
  %110 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext %7, i32 noundef 0, i32 noundef 1828, i32 noundef %109) #20
  br label %111

111:                                              ; preds = %106, %98, %93, %80
  tail call fastcc void @hdmi_setup_audio_infoframe(ptr noundef %1, ptr noundef %52, i1 noundef zeroext %81)
  tail call void @mutex_unlock(ptr noundef %82) #20
  %112 = getelementptr inbounds %struct.hdmi_spec, ptr %9, i32 0, i32 16
  %113 = load i8, ptr %112, align 4, !range !8
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %125, label %115

115:                                              ; preds = %111
  %116 = load i16, ptr %52, align 8
  %117 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %52, i32 0, i32 1
  %118 = load i32, ptr %117, align 4
  %119 = tail call i32 @snd_hda_set_dev_select(ptr noundef %1, i16 noundef zeroext %116, i32 noundef %118) #20
  %120 = load i16, ptr %52, align 8
  %121 = tail call i32 @snd_hdac_codec_read(ptr noundef %1, i16 noundef zeroext %120, i32 noundef 0, i32 noundef 3847, i32 noundef 0) #20
  %122 = load i16, ptr %52, align 8
  %123 = or i32 %121, 64
  %124 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext %122, i32 noundef 0, i32 noundef 1799, i32 noundef %123) #20
  br label %125

125:                                              ; preds = %115, %111
  %126 = getelementptr inbounds %struct.hdmi_spec, ptr %9, i32 0, i32 15, i32 3
  %127 = load ptr, ptr %126, align 4
  %128 = load i16, ptr %52, align 8
  %129 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %52, i32 0, i32 1
  %130 = load i32, ptr %129, align 4
  %131 = tail call i32 %127(ptr noundef %1, i16 noundef zeroext %7, i16 noundef zeroext %128, i32 noundef %130, i32 noundef %2, i32 noundef %3) #20
  br label %132

132:                                              ; preds = %125, %45, %36
  %133 = phi i32 [ 0, %45 ], [ %131, %125 ], [ -22, %36 ]
  tail call void @mutex_unlock(ptr noundef %12) #20
  ret i32 %133
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @generic_hdmi_playback_pcm_cleanup(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2) #1 {
  %4 = getelementptr inbounds %struct.hda_pcm_stream, ptr %0, i32 0, i32 3
  %5 = load i16, ptr %4, align 4
  tail call void @__snd_hda_codec_cleanup_stream(ptr noundef %1, i16 noundef zeroext %5, i32 noundef 0) #20
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdmi_eld_update_pcm_info(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_get_stream_stripe_ctl(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__snd_hda_codec_cleanup_stream(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_acomp_exit(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_acomp_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_device_free(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_info_free_entry(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_hda_jack_tbl_get_from_tag(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_regmap_sync(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_get_sub_nodes(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_pci_quirk_lookup(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_array_new(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_query_supported_pcm(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_codec_get_pincfg(ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_get_num_devices(ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_get_connections(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_array_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hdmi_repoll_eld(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -836
  %3 = getelementptr i8, ptr %0, i32 -748
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hda_codec, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = load i16, ptr %2, align 8
  %8 = getelementptr i8, ptr %0, i32 -832
  %9 = load i32, ptr %8, align 4
  %10 = tail call ptr @snd_hda_jack_tbl_get_mst(ptr noundef %4, i16 noundef zeroext %7, i32 noundef %9) #20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.hda_jack_tbl, ptr %10, i32 0, i32 5
  %14 = load i8, ptr %13, align 4
  %15 = or i8 %14, 2
  store i8 %15, ptr %13, align 4
  br label %16

16:                                               ; preds = %12, %1
  %17 = getelementptr i8, ptr %0, i32 52
  %18 = load i32, ptr %17, align 8
  %19 = add i32 %18, 1
  %20 = icmp sgt i32 %18, 6
  %21 = select i1 %20, i32 0, i32 %19
  store i32 %21, ptr %17, align 8
  %22 = getelementptr inbounds %struct.hdmi_spec, ptr %6, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %22) #20
  %23 = load i32, ptr %17, align 8
  tail call fastcc void @hdmi_present_sense(ptr noundef %2, i32 noundef %23)
  tail call void @mutex_unlock(ptr noundef %22) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @print_eld_info(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.snd_info_entry, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %4, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %5) #20
  %6 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %4, i32 0, i32 8
  tail call void @snd_hdmi_print_eld_info(ptr noundef %6, ptr noundef %1) #20
  tail call void @mutex_unlock(ptr noundef %5) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @write_eld_info(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.snd_info_entry, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %4, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %5) #20
  %6 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %4, i32 0, i32 8
  tail call void @snd_hdmi_write_eld_info(ptr noundef %6, ptr noundef %1) #20
  tail call void @mutex_unlock(ptr noundef %5) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_info_create_card_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdmi_print_eld_info(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdmi_write_eld_info(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @patch_simple_hdmi(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #1 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1304) #22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %3
  store ptr %0, ptr %5, align 8
  %8 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  store ptr %5, ptr %8, align 8
  %9 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 7, i32 2
  store i32 920, ptr %9, align 8
  %10 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 7, i32 3
  store i32 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 2, i32 2
  store i32 40, ptr %11, align 8
  %12 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 2, i32 3
  store i32 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 20
  store i32 0, ptr %13, align 8
  %14 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 20, i32 7
  store i32 2, ptr %14, align 4
  %15 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 20, i32 5
  store i16 %1, ptr %15, align 2
  %16 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 1
  store i32 1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 4
  store i32 1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 7
  %19 = tail call ptr @snd_array_new(ptr noundef %18) #20
  %20 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 2
  %21 = tail call ptr @snd_array_new(ptr noundef %20) #20
  %22 = icmp ne ptr %19, null
  %23 = icmp ne ptr %21, null
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %29, label %25

25:                                               ; preds = %7
  %26 = load ptr, ptr %8, align 8
  %27 = getelementptr inbounds %struct.hdmi_spec, ptr %26, i32 0, i32 7
  tail call void @snd_array_free(ptr noundef %27) #20
  %28 = getelementptr inbounds %struct.hdmi_spec, ptr %26, i32 0, i32 2
  tail call void @snd_array_free(ptr noundef %28) #20
  tail call void @kfree(ptr noundef %26) #20
  br label %32

29:                                               ; preds = %7
  store i16 %1, ptr %21, align 8
  store i16 %2, ptr %19, align 8
  %30 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 21
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(64) %30, ptr noundef nonnull align 8 dereferenceable(64) @simple_pcm_playback, i32 64, i1 false)
  %31 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(40) %31, ptr noundef nonnull align 4 dereferenceable(40) @simple_hdmi_patch_ops, i32 40, i1 false)
  br label %32

32:                                               ; preds = %29, %25, %3
  %33 = phi i32 [ 0, %29 ], [ -12, %25 ], [ -12, %3 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvhdmi_7x_init_2ch(ptr noundef %0) #1 {
  tail call void @snd_hda_sequence_write(ptr noundef %0, ptr noundef nonnull @nvhdmi_basic_init_7x_2ch) #20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @simple_playback_free(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 7
  tail call void @snd_array_free(ptr noundef %4) #20
  %5 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 2
  tail call void @snd_array_free(ptr noundef %5) #20
  tail call void @kfree(ptr noundef %3) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @simple_playback_pcm_open(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -282984450
  %10 = icmp ult i32 %9, 6
  br i1 %10, label %11, label %22

11:                                               ; preds = %3
  %12 = trunc i32 %9 to i8
  %13 = lshr i8 59, %12
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds [6 x ptr], ptr @switch.table.simple_playback_pcm_open, i32 0, i32 %9
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.snd_pcm_substream, ptr %2, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %20, i32 noundef 0, i32 noundef 10, ptr noundef nonnull %18) #20
  br label %26

22:                                               ; preds = %11, %3
  %23 = getelementptr inbounds %struct.snd_pcm_substream, ptr %2, i32 0, i32 11
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %24, i32 noundef 0, i32 noundef 10, i32 noundef 2) #20
  br label %26

26:                                               ; preds = %22, %16
  %27 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 20
  %28 = tail call i32 @snd_hda_multi_out_dig_open(ptr noundef %1, ptr noundef %27) #20
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @simple_playback_pcm_close(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2) #1 {
  %4 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 20
  %7 = tail call i32 @snd_hda_multi_out_dig_close(ptr noundef %1, ptr noundef %6) #20
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @simple_playback_pcm_prepare(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #1 {
  %6 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 20
  %9 = tail call i32 @snd_hda_multi_out_dig_prepare(ptr noundef %1, ptr noundef %8, i32 noundef %2, i32 noundef %3, ptr noundef %4) #20
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_multi_out_dig_open(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_multi_out_dig_close(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_multi_out_dig_prepare(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @simple_playback_build_controls(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 2, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = load i16, ptr %5, align 8
  %7 = tail call i32 @snd_hda_create_dig_out_ctls(ptr noundef %0, i16 noundef zeroext %6, i16 noundef zeroext %6, i32 noundef 2) #20
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call fastcc i32 @generic_hdmi_build_jack(ptr noundef %0, i32 noundef 0)
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi i32 [ %10, %9 ], [ %7, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @simple_playback_build_pcms(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 2, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = load i16, ptr %5, align 8
  %7 = zext i16 %6 to i32
  %8 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 18
  %9 = load i16, ptr %8, align 4
  %10 = zext i16 %9 to i32
  %11 = icmp ugt i16 %9, %6
  br i1 %11, label %26, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 17
  %14 = load i32, ptr %13, align 8
  %15 = add i32 %14, %10
  %16 = icmp ugt i32 %15, %7
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 14
  %19 = load ptr, ptr %18, align 4
  %20 = sub nsw i32 %7, %10
  %21 = getelementptr i32, ptr %19, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = lshr i32 %22, 12
  %24 = and i32 %23, 14
  %25 = add nuw nsw i32 %24, 2
  br label %26

26:                                               ; preds = %17, %12, %1
  %27 = phi i32 [ %25, %17 ], [ 2, %12 ], [ 2, %1 ]
  %28 = tail call ptr (ptr, ptr, ...) @snd_hda_codec_pcm_new(ptr noundef %0, ptr noundef nonnull @.str.128) #20
  %29 = icmp eq ptr %28, null
  br i1 %29, label %41, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 8
  store ptr %28, ptr %31, align 4
  %32 = getelementptr inbounds %struct.hda_pcm, ptr %28, i32 0, i32 2
  store i32 2, ptr %32, align 8
  %33 = getelementptr inbounds %struct.hda_pcm, ptr %28, i32 0, i32 1
  %34 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 21
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(64) %33, ptr noundef align 8 dereferenceable(64) %34, i32 64, i1 false)
  %35 = load i16, ptr %5, align 8
  %36 = getelementptr inbounds %struct.hda_pcm, ptr %28, i32 0, i32 1, i32 0, i32 3
  store i16 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.hda_pcm, ptr %28, i32 0, i32 1, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  %39 = icmp ult i32 %38, 3
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  store i32 %27, ptr %37, align 8
  br label %41

41:                                               ; preds = %40, %30, %26
  %42 = phi i32 [ -12, %26 ], [ 0, %40 ], [ 0, %30 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @simple_playback_init(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 7, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = load i16, ptr %5, align 8
  %7 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %6, i32 noundef 0, i32 noundef 1799, i32 noundef 64) #20
  %8 = zext i16 %6 to i32
  %9 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 18
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = icmp ugt i16 %10, %6
  br i1 %12, label %28, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 17
  %15 = load i32, ptr %14, align 8
  %16 = add i32 %15, %11
  %17 = icmp ugt i32 %16, %8
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 14
  %20 = load ptr, ptr %19, align 4
  %21 = sub nsw i32 %8, %11
  %22 = getelementptr i32, ptr %20, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  %27 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %6, i32 noundef 0, i32 noundef 768, i32 noundef 45056) #20
  br label %28

28:                                               ; preds = %26, %18, %13, %1
  %29 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %5, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 @snd_hda_jack_detect_enable(ptr noundef %0, i16 noundef zeroext %6, i32 noundef %30) #20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @simple_hdmi_unsol_event(ptr noundef %0, i32 noundef %1) #1 {
  tail call void @snd_hda_jack_set_dirty_all(ptr noundef %0) #20
  tail call void @snd_hda_jack_report_sync(ptr noundef %0) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_jack_detect_enable(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_jack_set_dirty_all(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_jack_report_sync(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_sequence_write(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvhdmi_7x_init_8ch(ptr noundef %0) #1 {
  tail call void @snd_hda_sequence_write(ptr noundef %0, ptr noundef nonnull @nvhdmi_basic_init_7x_8ch) #20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvhdmi_7x_8ch_build_pcms(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 2, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = load i16, ptr %5, align 8
  %7 = zext i16 %6 to i32
  %8 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 18
  %9 = load i16, ptr %8, align 4
  %10 = zext i16 %9 to i32
  %11 = icmp ugt i16 %9, %6
  br i1 %11, label %26, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 17
  %14 = load i32, ptr %13, align 8
  %15 = add i32 %14, %10
  %16 = icmp ugt i32 %15, %7
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 14
  %19 = load ptr, ptr %18, align 4
  %20 = sub nsw i32 %7, %10
  %21 = getelementptr i32, ptr %19, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = lshr i32 %22, 12
  %24 = and i32 %23, 14
  %25 = add nuw nsw i32 %24, 2
  br label %26

26:                                               ; preds = %17, %12, %1
  %27 = phi i32 [ %25, %17 ], [ 2, %12 ], [ 2, %1 ]
  %28 = tail call ptr (ptr, ptr, ...) @snd_hda_codec_pcm_new(ptr noundef %0, ptr noundef nonnull @.str.128) #20
  %29 = icmp eq ptr %28, null
  br i1 %29, label %44, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 8
  store ptr %28, ptr %31, align 4
  %32 = getelementptr inbounds %struct.hda_pcm, ptr %28, i32 0, i32 2
  store i32 2, ptr %32, align 8
  %33 = getelementptr inbounds %struct.hda_pcm, ptr %28, i32 0, i32 1
  %34 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 21
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(64) %33, ptr noundef align 8 dereferenceable(64) %34, i32 64, i1 false) #20
  %35 = load i16, ptr %5, align 8
  %36 = getelementptr inbounds %struct.hda_pcm, ptr %28, i32 0, i32 1, i32 0, i32 3
  store i16 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.hda_pcm, ptr %28, i32 0, i32 1, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  %39 = icmp ult i32 %38, 3
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  store i32 %27, ptr %37, align 8
  br label %41

41:                                               ; preds = %40, %30
  %42 = load ptr, ptr %31, align 4
  %43 = getelementptr inbounds %struct.hda_pcm, ptr %42, i32 0, i32 5
  store i8 1, ptr %43, align 4
  br label %44

44:                                               ; preds = %41, %26
  %45 = phi i32 [ 0, %41 ], [ -12, %26 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvhdmi_7x_8ch_build_controls(ptr noundef %0) #1 {
  %2 = alloca ptr, align 4
  %3 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  store ptr null, ptr %2, align 4, !annotation !11
  %5 = getelementptr inbounds %struct.hdmi_spec, ptr %4, i32 0, i32 2, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = load i16, ptr %6, align 8
  %8 = tail call i32 @snd_hda_create_dig_out_ctls(ptr noundef %0, i16 noundef zeroext %7, i16 noundef zeroext %7, i32 noundef 2) #20
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %36, label %10

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @generic_hdmi_build_jack(ptr noundef %0, i32 noundef 0) #20
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %36, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.hdmi_spec, ptr %4, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.hda_pcm, ptr %15, i32 0, i32 4
  %17 = load ptr, ptr %16, align 8
  %18 = call i32 @snd_pcm_add_chmap_ctls(ptr noundef %17, i32 noundef 0, ptr noundef nonnull @snd_pcm_alt_chmaps, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %2) #20
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 5
  %22 = load ptr, ptr %21, align 8
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, -282984450
  %25 = icmp ult i32 %24, 6
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = trunc i32 %24 to i8
  %28 = lshr i8 59, %27
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds [6 x i32], ptr @switch.table.nvhdmi_7x_8ch_build_controls, i32 0, i32 %24
  %33 = load i32, ptr %32, align 4
  %34 = load ptr, ptr %2, align 4
  %35 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %34, i32 0, i32 5
  store i32 %33, ptr %35, align 4
  br label %36

36:                                               ; preds = %31, %26, %20, %13, %10, %1
  %37 = phi i32 [ %11, %10 ], [ %18, %13 ], [ 0, %20 ], [ %8, %1 ], [ 0, %31 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvhdmi_8ch_7x_pcm_close(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2) #1 {
  %4 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 4, i32 noundef 0, i32 noundef 1798, i32 noundef 0) #20
  %7 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 6, i32 noundef 0, i32 noundef 1798, i32 noundef 0) #20
  %8 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 6, i32 noundef 0, i32 noundef 512, i32 noundef 0) #20
  %9 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 8, i32 noundef 0, i32 noundef 1798, i32 noundef 0) #20
  %10 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 8, i32 noundef 0, i32 noundef 512, i32 noundef 0) #20
  %11 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 10, i32 noundef 0, i32 noundef 1798, i32 noundef 0) #20
  %12 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 10, i32 noundef 0, i32 noundef 512, i32 noundef 0) #20
  %13 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 12, i32 noundef 0, i32 noundef 1798, i32 noundef 0) #20
  %14 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 12, i32 noundef 0, i32 noundef 512, i32 noundef 0) #20
  %15 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 3961, i32 noundef 19) #20
  %16 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 3962, i32 noundef 87) #20
  %17 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 20
  %18 = tail call i32 @snd_hda_multi_out_dig_close(ptr noundef %1, ptr noundef %17) #20
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvhdmi_8ch_7x_pcm_prepare(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) #1 {
  %6 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 18
  tail call void @mutex_lock(ptr noundef %8) #20
  %9 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 2, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = load i16, ptr %10, align 8
  %12 = tail call ptr @snd_hda_spdif_out_of_nid(ptr noundef %1, i16 noundef zeroext %11) #20
  %13 = getelementptr inbounds %struct.snd_pcm_substream, ptr %4, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 15
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 30
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.hda_spdif_out, ptr %12, i32 0, i32 2
  %23 = load i16, ptr %22, align 4
  %24 = zext i16 %23 to i32
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = and i32 %24, 254
  %29 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 4, i32 noundef 0, i32 noundef 1805, i32 noundef %28) #20
  br label %30

30:                                               ; preds = %27, %21, %5
  %31 = shl i32 %2, 4
  %32 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 4, i32 noundef 0, i32 noundef 1798, i32 noundef %31) #20
  %33 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 4, i32 noundef 0, i32 noundef 512, i32 noundef %3) #20
  %34 = load i32, ptr %17, align 8
  %35 = and i32 %34, 16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.hda_spdif_out, ptr %12, i32 0, i32 2
  %39 = load i16, ptr %38, align 4
  %40 = zext i16 %39 to i32
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = and i32 %40, 255
  %45 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 4, i32 noundef 0, i32 noundef 1805, i32 noundef %44) #20
  %46 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 4, i32 noundef 0, i32 noundef 1806, i32 noundef 2) #20
  br label %47

47:                                               ; preds = %43, %37, %30
  %48 = icmp eq i32 %16, 2
  %49 = getelementptr inbounds %struct.hda_spdif_out, ptr %12, i32 0, i32 2
  br label %50

50:                                               ; preds = %85, %47
  %51 = phi i32 [ 0, %47 ], [ %86, %85 ]
  %52 = shl nuw i32 %51, 1
  %53 = select i1 %48, i32 0, i32 %52
  %54 = load i32, ptr %17, align 8
  %55 = and i32 %54, 16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %50
  %58 = load i16, ptr %49, align 4
  %59 = zext i16 %58 to i32
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = getelementptr [4 x i16], ptr @nvhdmi_con_nids_7x, i32 0, i32 %51
  %64 = load i16, ptr %63, align 2
  %65 = and i32 %59, 254
  %66 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext %64, i32 noundef 0, i32 noundef 1805, i32 noundef %65) #20
  br label %67

67:                                               ; preds = %62, %57, %50
  %68 = getelementptr [4 x i16], ptr @nvhdmi_con_nids_7x, i32 0, i32 %51
  %69 = load i16, ptr %68, align 2
  %70 = or i32 %53, %31
  %71 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext %69, i32 noundef 0, i32 noundef 1798, i32 noundef %70) #20
  %72 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext %69, i32 noundef 0, i32 noundef 512, i32 noundef %3) #20
  %73 = load i32, ptr %17, align 8
  %74 = and i32 %73, 16
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %67
  %77 = load i16, ptr %49, align 4
  %78 = zext i16 %77 to i32
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %76
  %82 = and i32 %78, 255
  %83 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext %69, i32 noundef 0, i32 noundef 1805, i32 noundef %82) #20
  %84 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext %69, i32 noundef 0, i32 noundef 1806, i32 noundef 2) #20
  br label %85

85:                                               ; preds = %81, %76, %67
  %86 = add nuw nsw i32 %51, 1
  %87 = icmp eq i32 %86, 4
  br i1 %87, label %88, label %50

88:                                               ; preds = %85
  %89 = add i32 %16, -4
  %90 = icmp ult i32 %89, 5
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = getelementptr inbounds [5 x i32], ptr @switch.table.nvhdmi_8ch_7x_pcm_prepare, i32 0, i32 %89
  %93 = load i32, ptr %92, align 4
  br label %94

94:                                               ; preds = %91, %88
  %95 = phi i32 [ 0, %88 ], [ %93, %91 ]
  %96 = icmp eq i32 %16, 0
  %97 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 3961, i32 noundef %95) #20
  %98 = sub i32 114, %16
  %99 = select i1 %96, i32 112, i32 %98
  %100 = sub i32 %99, %95
  %101 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 3962, i32 noundef %100) #20
  tail call void @mutex_unlock(ptr noundef %8) #20
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_add_chmap_ctls(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @nvhdmi_chmap_cea_alloc_validate_get_type(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #17 {
  %4 = load i32, ptr %1, align 4
  %5 = icmp eq i32 %4, 0
  %6 = icmp eq i32 %2, 2
  %7 = and i1 %6, %5
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.hdac_cea_channel_speaker_allocation, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %2
  %12 = select i1 %11, i32 258, i32 -1
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ 257, %3 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @nvhdmi_chmap_validate(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #17 {
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %4
  %7 = load i8, ptr %3, align 1
  %8 = icmp eq i8 %7, 3
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = getelementptr i8, ptr %3, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 4
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %4
  br label %14

14:                                               ; preds = %13, %9, %6
  %15 = phi i32 [ 0, %13 ], [ -22, %9 ], [ -22, %6 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_hdmi_build_pcms(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 30
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 8388608
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 5
  %9 = load i32, ptr %8, align 8
  br i1 %7, label %10, label %15

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %9, -1
  %14 = add i32 %13, %12
  br label %15

15:                                               ; preds = %10, %1
  %16 = phi i32 [ %14, %10 ], [ %9, %1 ]
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 12
  br label %20

20:                                               ; preds = %24, %18
  %21 = phi i32 [ 0, %18 ], [ %34, %24 ]
  %22 = tail call ptr (ptr, ptr, ...) @snd_hda_codec_pcm_new(ptr noundef %0, ptr noundef nonnull @.str.121, i32 noundef %21) #20
  %23 = icmp eq ptr %22, null
  br i1 %23, label %59, label %24

24:                                               ; preds = %20
  %25 = getelementptr %struct.hdmi_spec, ptr %3, i32 0, i32 8, i32 %21
  store ptr %22, ptr %25, align 4
  %26 = load i32, ptr %19, align 8
  %27 = add i32 %26, 1
  store i32 %27, ptr %19, align 8
  %28 = getelementptr inbounds %struct.hda_pcm, ptr %22, i32 0, i32 2
  store i32 2, ptr %28, align 8
  %29 = getelementptr inbounds %struct.hda_pcm, ptr %22, i32 0, i32 5
  store i8 1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.hda_pcm, ptr %22, i32 0, i32 1
  store i32 1, ptr %30, align 8
  %31 = getelementptr inbounds %struct.hda_pcm, ptr %22, i32 0, i32 1, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(20) %31, ptr noundef nonnull align 4 dereferenceable(20) @generic_ops, i32 20, i1 false) #20
  %32 = load i32, ptr %19, align 8
  %33 = icmp sgt i32 %32, 15
  %34 = add nuw nsw i32 %21, 1
  %35 = icmp eq i32 %34, %16
  %36 = select i1 %33, i1 true, i1 %35
  br i1 %36, label %37, label %20

37:                                               ; preds = %24
  %38 = load ptr, ptr %2, align 8
  br label %39

39:                                               ; preds = %37, %15
  %40 = phi ptr [ %38, %37 ], [ %3, %15 ]
  %41 = getelementptr inbounds %struct.hdmi_spec, ptr %40, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %59, label %47

44:                                               ; preds = %47
  %45 = add nuw i32 %48, 1
  %46 = icmp eq i32 %45, %42
  br i1 %46, label %59, label %47

47:                                               ; preds = %44, %39
  %48 = phi i32 [ %45, %44 ], [ 0, %39 ]
  %49 = getelementptr %struct.hdmi_spec, ptr %40, i32 0, i32 8, i32 %48
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.hda_pcm, ptr %50, i32 0, i32 2
  %52 = load i32, ptr %51, align 8
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %44

54:                                               ; preds = %47
  %55 = icmp eq ptr %50, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.hda_pcm, ptr %50, i32 0, i32 1, i32 0, i32 8, i32 2
  store ptr @tegra_hdmi_pcm_prepare, ptr %57, align 8
  %58 = getelementptr inbounds %struct.hda_pcm, ptr %50, i32 0, i32 1, i32 0, i32 8, i32 3
  store ptr @tegra_hdmi_pcm_cleanup, ptr %58, align 4
  br label %59

59:                                               ; preds = %56, %54, %44, %39, %20
  %60 = phi i32 [ 0, %56 ], [ -19, %54 ], [ -19, %39 ], [ -19, %44 ], [ -12, %20 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_hdmi_pcm_prepare(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #1 {
  %6 = tail call i32 @generic_hdmi_playback_pcm_prepare(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @snd_hdac_codec_read(ptr noundef %1, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 4006, i32 noundef 0) #20
  %10 = lshr i32 %9, 24
  %11 = and i32 %3, 255
  %12 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 4007, i32 noundef %11) #20
  %13 = lshr i32 %3, 8
  %14 = and i32 %13, 255
  %15 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 4008, i32 noundef %14) #20
  %16 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 4009, i32 noundef 0) #20
  %17 = icmp eq i32 %3, 0
  %18 = and i32 %10, 191
  %19 = or i32 %10, 64
  %20 = select i1 %17, i32 %18, i32 %19
  %21 = xor i32 %20, 128
  %22 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 4010, i32 noundef %21) #20
  br label %23

23:                                               ; preds = %8, %5
  %24 = phi i32 [ 0, %8 ], [ %6, %5 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_hdmi_pcm_cleanup(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2) #1 {
  %4 = tail call i32 @snd_hdac_codec_read(ptr noundef %1, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 4006, i32 noundef 0) #20
  %5 = lshr i32 %4, 24
  %6 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 4007, i32 noundef 0) #20
  %7 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 4008, i32 noundef 0) #20
  %8 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 4009, i32 noundef 0) #20
  %9 = and i32 %5, 191
  %10 = xor i32 %9, 128
  %11 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 4010, i32 noundef %10) #20
  %12 = getelementptr inbounds %struct.hda_pcm_stream, ptr %0, i32 0, i32 3
  %13 = load i16, ptr %12, align 4
  tail call void @__snd_hda_codec_cleanup_stream(ptr noundef %1, i16 noundef zeroext %13, i32 noundef 0) #20
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @nvhdmi_port2pin(ptr nocapture noundef readnone %0, i32 noundef %1) #4 {
  %3 = add i32 %1, 4
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @nvhdmi_pin2port(ptr nocapture noundef readnone %0, i32 noundef %1) #4 {
  %3 = add i32 %1, -4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @alloc_intel_hdmi(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hdac_bus, ptr %3, i32 0, i32 35
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.129) #21
  %8 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 4
  store i32 1, ptr %8, align 4
  br label %30

9:                                                ; preds = %1
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 1304) #22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %9
  store ptr %0, ptr %11, align 8
  %14 = getelementptr inbounds %struct.hdmi_spec, ptr %11, i32 0, i32 15
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(20) %14, ptr noundef nonnull align 4 dereferenceable(20) @generic_standard_hdmi_ops, i32 20, i1 false) #20
  %15 = getelementptr inbounds %struct.hdmi_spec, ptr %11, i32 0, i32 6
  store i32 1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.hdmi_spec, ptr %11, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %16, ptr noundef nonnull @.str.115, ptr noundef nonnull @alloc_generic_hdmi.__key) #20
  %17 = getelementptr inbounds %struct.hdmi_spec, ptr %11, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %17, ptr noundef nonnull @.str.117, ptr noundef nonnull @alloc_generic_hdmi.__key.116) #20
  %18 = getelementptr inbounds %struct.hdmi_spec, ptr %11, i32 0, i32 27
  tail call void @snd_hdac_register_chmap_ops(ptr noundef %0, ptr noundef %18) #20
  %19 = getelementptr inbounds %struct.hdmi_spec, ptr %11, i32 0, i32 27, i32 1, i32 4
  store ptr @hdmi_get_chmap, ptr %19, align 8
  %20 = getelementptr inbounds %struct.hdmi_spec, ptr %11, i32 0, i32 27, i32 1, i32 5
  store ptr @hdmi_set_chmap, ptr %20, align 4
  %21 = getelementptr inbounds %struct.hdmi_spec, ptr %11, i32 0, i32 27, i32 1, i32 6
  store ptr @is_hdmi_pcm_attached, ptr %21, align 8
  %22 = getelementptr inbounds %struct.hdmi_spec, ptr %11, i32 0, i32 27, i32 1, i32 3
  store ptr @hdmi_get_spk_alloc, ptr %22, align 4
  %23 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  store ptr %11, ptr %23, align 8
  %24 = getelementptr inbounds %struct.hdmi_spec, ptr %11, i32 0, i32 7, i32 2
  store i32 920, ptr %24, align 8
  %25 = getelementptr inbounds %struct.hdmi_spec, ptr %11, i32 0, i32 7, i32 3
  store i32 4, ptr %25, align 4
  %26 = getelementptr inbounds %struct.hdmi_spec, ptr %11, i32 0, i32 2, i32 2
  store i32 40, ptr %26, align 8
  %27 = getelementptr inbounds %struct.hdmi_spec, ptr %11, i32 0, i32 2, i32 3
  store i32 4, ptr %27, align 4
  %28 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(40) %28, ptr noundef nonnull align 4 dereferenceable(40) @generic_hdmi_patch_ops, i32 40, i1 false) #20
  %29 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 7, i32 4
  store ptr null, ptr %29, align 8
  br label %30

30:                                               ; preds = %13, %9, %7
  %31 = phi i32 [ 0, %13 ], [ -19, %7 ], [ -12, %9 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @parse_intel_hdmi(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @hdmi_parse_codec(ptr noundef %0)
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @hdmi_parse_codec(ptr noundef %0)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @hdmi_parse_codec(ptr noundef %0)
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @hdmi_parse_codec(ptr noundef %0)
  %12 = icmp slt i32 %11, 0
  br label %13

13:                                               ; preds = %10, %7, %4, %1
  %14 = phi i32 [ %2, %1 ], [ %5, %4 ], [ %8, %7 ], [ %11, %10 ]
  %15 = phi i1 [ %3, %1 ], [ %6, %4 ], [ %9, %7 ], [ %12, %10 ]
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.hdmi_spec, ptr %18, i32 0, i32 7
  tail call void @snd_array_free(ptr noundef %21) #20
  %22 = getelementptr inbounds %struct.hdmi_spec, ptr %18, i32 0, i32 2
  tail call void @snd_array_free(ptr noundef %22) #20
  tail call void @kfree(ptr noundef nonnull %18) #20
  store ptr null, ptr %17, align 8
  br label %23

23:                                               ; preds = %20, %16
  %24 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 30
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, -32769
  store i32 %26, ptr %24, align 8
  br label %45

27:                                               ; preds = %13
  tail call fastcc void @generic_hdmi_init_per_pins(ptr noundef %0)
  %28 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.hdmi_spec, ptr %29, i32 0, i32 22
  store i8 1, ptr %30, align 8
  %31 = getelementptr inbounds %struct.hdmi_spec, ptr %29, i32 0, i32 26
  store ptr @intel_port2pin, ptr %31, align 8
  %32 = load ptr, ptr %28, align 8
  %33 = getelementptr inbounds %struct.hdmi_spec, ptr %32, i32 0, i32 25
  store ptr %0, ptr %33, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !9
  tail call void @arm_heavy_mb() #20
  %34 = getelementptr inbounds %struct.hdmi_spec, ptr %32, i32 0, i32 25, i32 2
  store ptr @intel_pin2port, ptr %34, align 4
  %35 = getelementptr inbounds %struct.hdmi_spec, ptr %32, i32 0, i32 25, i32 1
  store ptr @intel_pin_eld_notify, ptr %35, align 4
  %36 = getelementptr inbounds %struct.hdmi_spec, ptr %32, i32 0, i32 25, i32 3
  store ptr null, ptr %36, align 4
  %37 = getelementptr inbounds %struct.hdmi_spec, ptr %32, i32 0, i32 25, i32 4
  store ptr null, ptr %37, align 4
  %38 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.hdmi_spec, ptr %29, i32 0, i32 25
  %41 = tail call i32 @snd_hdac_acomp_register_notifier(ptr noundef %39, ptr noundef %40) #20
  %42 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 30
  %43 = load i32, ptr %42, align 8
  %44 = or i32 %43, 2097152
  store i32 %44, ptr %42, align 8
  br label %45

45:                                               ; preds = %27, %23
  %46 = phi i32 [ %14, %23 ], [ 0, %27 ]
  ret i32 %46
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @intel_port2pin(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hdmi_spec, ptr %4, i32 0, i32 30
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = add i32 %1, -4
  %10 = icmp ult i32 %9, -3
  br i1 %10, label %28, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 7
  %13 = load i32, ptr %12, align 8
  switch i32 %13, label %14 [
    i32 -2138701740, label %15
    i32 -2138691580, label %15
    i32 -2138691454, label %15
  ]

14:                                               ; preds = %11
  br label %15

15:                                               ; preds = %14, %11, %11, %11
  %16 = phi i32 [ 5, %14 ], [ 4, %11 ], [ 4, %11 ], [ 4, %11 ]
  %17 = add nsw i32 %1, -1
  %18 = add nuw nsw i32 %17, %16
  br label %28

19:                                               ; preds = %2
  %20 = icmp sgt i32 %1, -1
  %21 = icmp sgt i32 %6, %1
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.hdmi_spec, ptr %4, i32 0, i32 29
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr i32, ptr %25, i32 %1
  %27 = load i32, ptr %26, align 4
  br label %28

28:                                               ; preds = %23, %19, %15, %8
  %29 = phi i32 [ %27, %23 ], [ %18, %15 ], [ 0, %8 ], [ 0, %19 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @intel_pin_eld_notify(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 30
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %3
  %10 = add i32 %1, -4
  %11 = icmp ult i32 %10, -3
  br i1 %11, label %72, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 7
  %14 = load i32, ptr %13, align 8
  switch i32 %14, label %15 [
    i32 -2138701740, label %16
    i32 -2138691580, label %16
    i32 -2138691454, label %16
  ]

15:                                               ; preds = %12
  br label %16

16:                                               ; preds = %15, %12, %12, %12
  %17 = phi i32 [ 5, %15 ], [ 4, %12 ], [ 4, %12 ], [ 4, %12 ]
  %18 = add nsw i32 %1, -1
  %19 = add nuw nsw i32 %18, %17
  br label %30

20:                                               ; preds = %3
  %21 = icmp sgt i32 %1, -1
  %22 = icmp sgt i32 %7, %1
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %24, label %72

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 29
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr i32, ptr %26, i32 %1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %72, label %30

30:                                               ; preds = %24, %16
  %31 = phi i32 [ %19, %16 ], [ %28, %24 ]
  %32 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %72, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 20
  %37 = load volatile i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %72

39:                                               ; preds = %35
  %40 = trunc i32 %31 to i16
  %41 = icmp eq i32 %2, -1
  %42 = select i1 %41, i32 0, i32 %2
  %43 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 4
  %44 = load i32, ptr %43, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 7, i32 4
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 7, i32 2
  %50 = load i32, ptr %49, align 4
  br label %51

51:                                               ; preds = %61, %46
  %52 = phi i32 [ 0, %46 ], [ %62, %61 ]
  %53 = mul i32 %52, %50
  %54 = getelementptr i8, ptr %48, i32 %53
  %55 = load i16, ptr %54, align 8
  %56 = icmp eq i16 %55, %40
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %54, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, %42
  br i1 %60, label %66, label %61

61:                                               ; preds = %57, %51
  %62 = add nuw nsw i32 %52, 1
  %63 = icmp eq i32 %62, %44
  br i1 %63, label %64, label %51

64:                                               ; preds = %61, %39
  %65 = and i32 %31, 65535
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.108, i32 noundef %65) #21
  br label %72

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %67) #20
  %68 = load ptr, ptr %47, align 4
  %69 = load i32, ptr %49, align 4
  %70 = mul i32 %69, %52
  %71 = getelementptr i8, ptr %68, i32 %70
  tail call fastcc void @hdmi_present_sense(ptr noundef %71, i32 noundef 1) #20
  tail call void @mutex_unlock(ptr noundef %67) #20
  br label %72

72:                                               ; preds = %66, %64, %35, %30, %24, %20, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @intel_pin2port(ptr noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hdmi_spec, ptr %4, i32 0, i32 30
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.hdmi_spec, ptr %4, i32 0, i32 29
  %12 = load ptr, ptr %11, align 8
  br label %27

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 7
  %15 = load i32, ptr %14, align 8
  switch i32 %15, label %16 [
    i32 -2138701740, label %17
    i32 -2138691580, label %17
    i32 -2138691454, label %17
  ]

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %16, %13, %13, %13
  %18 = phi i32 [ 5, %16 ], [ 4, %13 ], [ 4, %13 ], [ 4, %13 ]
  %19 = icmp sgt i32 %18, %1
  %20 = add nuw nsw i32 %18, 3
  %21 = icmp sle i32 %20, %1
  %22 = or i1 %19, %21
  br i1 %22, label %23, label %24, !prof !12

23:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.109, i32 noundef 2806, i32 noundef 9, ptr noundef null) #20
  br label %36

24:                                               ; preds = %17
  %25 = add nsw i32 %1, 1
  %26 = sub i32 %25, %18
  br label %36

27:                                               ; preds = %32, %10
  %28 = phi i32 [ 0, %10 ], [ %33, %32 ]
  %29 = getelementptr i32, ptr %12, i32 %28
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = add nuw nsw i32 %28, 1
  %34 = icmp eq i32 %33, %6
  br i1 %34, label %35, label %27

35:                                               ; preds = %32, %8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.130, i32 noundef %1) #21
  br label %36

36:                                               ; preds = %35, %27, %24, %23
  %37 = phi i32 [ -1, %35 ], [ -1, %23 ], [ %26, %24 ], [ %28, %27 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @intel_hsw_common_init(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #1 {
  %7 = tail call fastcc i32 @alloc_intel_hdmi(ptr noundef %0)
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %60, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 30
  %13 = load i32, ptr %12, align 8
  %14 = or i32 %13, 32768
  store i32 %14, ptr %12, align 8
  %15 = getelementptr inbounds %struct.hdmi_spec, ptr %11, i32 0, i32 17
  store i8 1, ptr %15, align 1
  %16 = getelementptr inbounds %struct.hdmi_spec, ptr %11, i32 0, i32 28
  store i16 %1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.hdmi_spec, ptr %11, i32 0, i32 29
  store ptr %2, ptr %17, align 8
  %18 = getelementptr inbounds %struct.hdmi_spec, ptr %11, i32 0, i32 30
  store i32 %3, ptr %18, align 4
  %19 = getelementptr inbounds %struct.hdmi_spec, ptr %11, i32 0, i32 19
  store i8 1, ptr %19, align 1
  %20 = getelementptr inbounds %struct.hdmi_spec, ptr %11, i32 0, i32 6
  store i32 %4, ptr %20, align 4
  %21 = load ptr, ptr %10, align 8
  %22 = getelementptr inbounds %struct.hdmi_spec, ptr %21, i32 0, i32 28
  %23 = load i16, ptr %22, align 4
  %24 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %23, i32 noundef 0, i32 noundef 3969, i32 noundef 0) #20
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %9
  %28 = or i32 %24, 1
  %29 = load i16, ptr %22, align 4
  %30 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %29, i32 noundef 0, i32 noundef 1921, i32 noundef %28) #20
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = tail call i32 @snd_hda_codec_update_widgets(ptr noundef %0) #20
  br label %34

34:                                               ; preds = %32, %27, %9
  %35 = load ptr, ptr %10, align 8
  %36 = getelementptr inbounds %struct.hdmi_spec, ptr %35, i32 0, i32 28
  %37 = load i16, ptr %36, align 4
  %38 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %37, i32 noundef 0, i32 noundef 3969, i32 noundef 0) #20
  %39 = and i32 %38, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = or i32 %38, 2
  %43 = tail call i32 @snd_hdac_regmap_add_vendor_verb(ptr noundef %0, i32 noundef 1921) #20
  %44 = load i16, ptr %36, align 4
  %45 = zext i16 %44 to i32
  %46 = shl i32 %45, 20
  %47 = or i32 %46, 1016064
  %48 = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %0, i32 noundef %47, i32 noundef %42) #20
  br label %49

49:                                               ; preds = %41, %34
  %50 = load i32, ptr %12, align 8
  %51 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 7, i32 5
  store ptr @haswell_set_power_state, ptr %51, align 4
  %52 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 39
  store i32 0, ptr %52, align 4
  %53 = or i32 %50, 262152
  store i32 %53, ptr %12, align 8
  %54 = getelementptr inbounds %struct.hdmi_spec, ptr %11, i32 0, i32 15, i32 3
  store ptr @i915_hsw_setup_stream, ptr %54, align 4
  %55 = getelementptr inbounds %struct.hdmi_spec, ptr %11, i32 0, i32 15, i32 4
  store ptr @i915_pin_cvt_fixup, ptr %55, align 8
  br i1 %5, label %56, label %58

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.hdmi_spec, ptr %11, i32 0, i32 31
  store i8 1, ptr %57, align 8
  br label %58

58:                                               ; preds = %56, %49
  %59 = tail call fastcc i32 @parse_intel_hdmi(ptr noundef %0)
  br label %60

60:                                               ; preds = %58, %6
  %61 = phi i32 [ %59, %58 ], [ %7, %6 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @haswell_set_power_state(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %32

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 28
  %9 = load i16, ptr %8, align 4
  %10 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %9, i32 noundef 0, i32 noundef 3969, i32 noundef 0) #20
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %5
  %14 = or i32 %10, 1
  %15 = load i16, ptr %8, align 4
  %16 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %15, i32 noundef 0, i32 noundef 1921, i32 noundef %14) #20
  br label %17

17:                                               ; preds = %13, %5
  %18 = load ptr, ptr %6, align 8
  %19 = getelementptr inbounds %struct.hdmi_spec, ptr %18, i32 0, i32 28
  %20 = load i16, ptr %19, align 4
  %21 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %20, i32 noundef 0, i32 noundef 3969, i32 noundef 0) #20
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = or i32 %21, 2
  %26 = tail call i32 @snd_hdac_regmap_add_vendor_verb(ptr noundef %0, i32 noundef 1921) #20
  %27 = load i16, ptr %19, align 4
  %28 = zext i16 %27 to i32
  %29 = shl i32 %28, 20
  %30 = or i32 %29, 1016064
  %31 = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %0, i32 noundef %30, i32 noundef %25) #20
  br label %32

32:                                               ; preds = %24, %17, %3
  %33 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1797, i32 noundef %2) #20
  tail call void @snd_hda_codec_set_power_to_all(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i915_hsw_setup_stream(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #1 {
  tail call fastcc void @haswell_verify_D0(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2)
  %7 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.hdmi_spec, ptr %8, i32 0, i32 15, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = and i32 %5, 32783
  %12 = icmp eq i32 %11, 32775
  %13 = tail call i32 %10(ptr noundef %0, i16 noundef zeroext %2, i32 noundef %3, i1 noundef zeroext %12) #20
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.hdmi_spec, ptr %8, i32 0, i32 19
  %17 = load i8, ptr %16, align 1, !range !8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3853, i32 noundef 0) #20
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 65520
  %23 = zext i1 %12 to i32
  %24 = or i32 %22, %23
  %25 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1854, i32 noundef %24) #20
  br label %26

26:                                               ; preds = %19, %15
  tail call void @snd_hda_codec_setup_stream(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %4, i32 noundef 0, i32 noundef %5) #20
  br label %27

27:                                               ; preds = %26, %6
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @i915_pin_cvt_fixup(ptr noundef %0, ptr noundef readonly %1, i16 noundef zeroext %2) #1 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 6
  %7 = load i16, ptr %6, align 4
  %8 = load i16, ptr %1, align 8
  tail call fastcc void @haswell_verify_D0(ptr noundef %0, i16 noundef zeroext %7, i16 noundef zeroext %8)
  %9 = load i16, ptr %1, align 8
  %10 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @snd_hda_set_dev_select(ptr noundef %0, i16 noundef zeroext %9, i32 noundef %11) #20
  %13 = load i16, ptr %1, align 8
  %14 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %13, i32 noundef 0, i32 noundef 3841, i32 noundef 0) #20
  %17 = icmp eq i32 %16, %15
  br i1 %17, label %23, label %18

18:                                               ; preds = %5
  %19 = zext i16 %13 to i32
  %20 = shl i32 %19, 20
  %21 = or i32 %20, 983296
  %22 = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %0, i32 noundef %21, i32 noundef %15) #20
  br label %23

23:                                               ; preds = %18, %5
  %24 = load i16, ptr %1, align 8
  %25 = load i32, ptr %10, align 4
  %26 = load i32, ptr %14, align 8
  tail call fastcc void @intel_not_share_assigned_cvt(ptr noundef %0, i16 noundef zeroext %24, i32 noundef %25, i32 noundef %26)
  br label %42

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.hdmi_spec, ptr %29, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %38, %27
  %34 = phi i32 [ %39, %38 ], [ 0, %27 ]
  %35 = getelementptr %struct.hdmi_spec, ptr %29, i32 0, i32 3, i32 %34
  %36 = load i16, ptr %35, align 2
  %37 = icmp eq i16 %36, %2
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = add nuw nsw i32 %34, 1
  %40 = icmp eq i32 %39, %31
  br i1 %40, label %42, label %33

41:                                               ; preds = %33
  tail call fastcc void @intel_not_share_assigned_cvt(ptr noundef %0, i16 noundef zeroext 0, i32 noundef 0, i32 noundef %34) #20
  br label %42

42:                                               ; preds = %41, %38, %27, %23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_codec_update_widgets(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_regmap_add_vendor_verb(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_codec_set_power_to_all(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @haswell_verify_D0(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #1 {
  %4 = tail call zeroext i1 @snd_hdac_check_power_state(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0) #20
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1797, i32 noundef 0) #20
  br label %7

7:                                                ; preds = %5, %3
  %8 = tail call zeroext i1 @snd_hdac_check_power_state(ptr noundef %0, i16 noundef zeroext %2, i32 noundef 0) #20
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %2, i32 noundef 0, i32 noundef 1797, i32 noundef 0) #20
  tail call void @msleep(i32 noundef 40) #20
  %11 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %2, i32 noundef 0, i32 noundef 3845, i32 noundef 0) #20
  br label %12

12:                                               ; preds = %9, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_hdac_check_power_state(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @intel_not_share_assigned_cvt(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.hdmi_spec, ptr %6, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %72

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.hdmi_spec, ptr %6, i32 0, i32 7, i32 4
  %12 = getelementptr inbounds %struct.hdmi_spec, ptr %6, i32 0, i32 7, i32 2
  %13 = getelementptr inbounds %struct.hdmi_spec, ptr %6, i32 0, i32 1
  %14 = getelementptr inbounds %struct.hdmi_spec, ptr %6, i32 0, i32 2, i32 4
  %15 = getelementptr inbounds %struct.hdmi_spec, ptr %6, i32 0, i32 2, i32 2
  br label %16

16:                                               ; preds = %68, %10
  %17 = phi i32 [ 0, %10 ], [ %69, %68 ]
  %18 = load ptr, ptr %11, align 4
  %19 = load i32, ptr %12, align 4
  %20 = mul i32 %19, %17
  %21 = getelementptr i8, ptr %18, i32 %20
  %22 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %21, i32 0, i32 11
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %68, label %25

25:                                               ; preds = %16
  %26 = load i16, ptr %21, align 8
  %27 = icmp eq i16 %26, %1
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %21, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %2
  br i1 %31, label %68, label %32

32:                                               ; preds = %28, %25
  %33 = tail call i32 @snd_hda_get_num_devices(ptr noundef %0, i16 noundef zeroext %26) #20
  %34 = add i32 %33, 1
  %35 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %21, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp slt i32 %36, %34
  br i1 %37, label %38, label %68

38:                                               ; preds = %32
  %39 = load i16, ptr %21, align 8
  %40 = tail call i32 @snd_hda_get_dev_select(ptr noundef %0, i16 noundef zeroext %39) #20
  %41 = load i32, ptr %35, align 4
  %42 = tail call i32 @snd_hda_set_dev_select(ptr noundef %0, i16 noundef zeroext %39, i32 noundef %41) #20
  %43 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %39, i32 noundef 0, i32 noundef 3841, i32 noundef 0) #20
  %44 = icmp eq i32 %43, %3
  br i1 %44, label %45, label %66

45:                                               ; preds = %38
  %46 = load i32, ptr %13, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %45
  %49 = load ptr, ptr %14, align 4
  %50 = load i32, ptr %15, align 4
  br label %51

51:                                               ; preds = %63, %48
  %52 = phi i32 [ 0, %48 ], [ %64, %63 ]
  %53 = mul i32 %50, %52
  %54 = getelementptr i8, ptr %49, i32 %53
  %55 = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %54, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = zext i16 %39 to i32
  %60 = shl i32 %59, 20
  %61 = or i32 %60, 983296
  %62 = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %0, i32 noundef %61, i32 noundef %52) #20
  br label %66

63:                                               ; preds = %51
  %64 = add nuw nsw i32 %52, 1
  %65 = icmp eq i32 %64, %46
  br i1 %65, label %66, label %51

66:                                               ; preds = %63, %58, %45, %38
  %67 = tail call i32 @snd_hda_set_dev_select(ptr noundef %0, i16 noundef zeroext %39, i32 noundef %40) #20
  br label %68

68:                                               ; preds = %66, %32, %28, %16
  %69 = add nuw nsw i32 %17, 1
  %70 = load i32, ptr %7, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %16, label %72

72:                                               ; preds = %68, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_get_dev_select(ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hda_codec_driver_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @hda_codec_driver_unregister(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #18

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #19 = { argmemonly nofree nounwind readonly willreturn }
attributes #20 = { nounwind }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind allocsize(2) }

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
!9 = !{i64 2153839921}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"auto-init"}
!12 = !{!"branch_weights", i32 1, i32 2000}
