; ModuleID = '/llk/IR/sound/pci/hda/patch_realtek.c_pt.bc'
source_filename = "../sound/pci/hda/patch_realtek.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hda_device_id = type { i32, i32, i8, ptr, i32 }
%struct.hda_model_fixup = type { i32, ptr }
%struct.snd_pci_quirk = type { i16, i16, i16, i32 }
%struct.hda_fixup = type { i32, i8, i32, %union.anon.67 }
%union.anon.67 = type { ptr }
%struct.snd_hda_pin_quirk = type { i32, i16, ptr, i32 }
%struct.hda_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.alc_codec_rename_table = type { i32, i16, i16, ptr }
%struct.alc_codec_rename_pci_table = type { i32, i16, i16, ptr }
%struct.coef_fw = type { i8, i8, i16, i16 }
%struct.hda_pintbl = type { i16, i32 }
%struct.hda_verb = type { i16, i32, i32 }
%struct.hda_pcm_stream = type { i32, i32, i32, i16, i32, i64, i32, ptr, %struct.hda_pcm_ops }
%struct.hda_pcm_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.hda_alc298_mbxinit = type { i8, i8 }
%struct.hda_jack_keymap = type { i32, i32 }
%struct.component_master_ops = type { ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.79, i32 }
%union.anon.79 = type { ptr }
%struct.snd_pcm_chmap_elem = type { i8, [15 x i8] }
%struct.hda_codec_driver = type { %struct.hdac_driver, ptr }
%struct.hdac_driver = type { %struct.device_driver, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.hda_gen_spec = type <{ [32 x i8], ptr, ptr, [32 x i8], ptr, ptr, [32 x i8], ptr, ptr, i32, %struct.mutex, %struct.hda_multi_out, i16, [3 x i16], i32, i32, [18 x i16], i16, i16, i16, [2 x i8], [36 x ptr], [36 x i32], i16, [2 x i8], i32, i32, %struct.hda_input_mux, [3 x i32], i32, i32, i32, [3 x ptr], %struct.auto_pin_cfg, %struct.snd_array, [5 x i16], [36 x i16], [2 x i8], [36 x i32], i16, i16, i32, i32, [16 x i16], i32, [18 x i16], %struct.snd_array, [5 x i32], [5 x i32], [5 x i32], [3 x i32], [5 x i32], [36 x [18 x i32]], [36 x i32], i32, i32, i32, [3 x %struct.automic_entry], i48, [4 x i8], i64, i64, ptr, ptr, ptr, i8, i8, i16, i16, [2 x i8], [4 x i32], %struct.hda_vmaster_mute_hook, %struct.hda_loopback_check, %struct.snd_array, i32, [4 x %struct.hda_multi_io], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }>
%struct.hda_multi_out = type { i32, ptr, i16, [5 x i16], [5 x i16], i16, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64 }
%struct.hda_input_mux = type { i32, [36 x %struct.hda_input_mux_item] }
%struct.hda_input_mux_item = type { [32 x i8], i32 }
%struct.auto_pin_cfg = type { i32, [5 x i16], i32, [5 x i16], i32, i32, [5 x i16], i32, [18 x %struct.auto_pin_cfg_item], i32, [2 x i16], i16, i16, [2 x i32], i32 }
%struct.auto_pin_cfg_item = type { i16, i32, i8 }
%struct.automic_entry = type { i16, i32, i32 }
%struct.hda_vmaster_mute_hook = type { ptr, ptr, ptr }
%struct.hda_loopback_check = type { ptr, i32 }
%struct.hda_multi_io = type { i16, i16, i32 }
%struct.alc_spec = type { %struct.hda_gen_spec, %struct.alc_customize_define, i32, i32, i32, i32, i8, i32, i32, i16, i16, i32, i32, %struct.alc_coef_led, %struct.alc_coef_led, %struct.mutex, i16, i16, i32, i32, ptr, ptr, ptr, i32, i32, i8, i16, i32, i32, i32, ptr, [1 x i8], ptr, [4 x %struct.hda_component], [4 x i8] }
%struct.alc_customize_define = type { i32, i8, i8, i8, i8, i8 }
%struct.alc_coef_led = type { i32, i32, i32, i32 }
%struct.hda_component = type { ptr, [50 x i8], ptr, ptr }
%struct.hda_bus = type { %struct.hdac_bus, ptr, ptr, ptr, %struct.mutex, [8 x i32], i8, i32, i32 }
%struct.hdac_bus = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, [16 x ptr], [128 x i32], i32, i32, %struct.work_struct, i32, i32, %struct.hdac_rb, %struct.hdac_rb, [8 x i32], %struct.wait_queue_head, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.list_head, i16, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, i32, %struct.list_head, i8, i32 }
%struct.hdac_rb = type { ptr, i32, i16, i16, [8 x i32], [8 x i32] }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.dmi_device = type { %struct.list_head, i32, ptr, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.77, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.77 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, %struct.mutex }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.hda_jack_callback = type { i16, i32, ptr, i32, i32, ptr, ptr }
%struct.hda_pcm = type { ptr, [2 x %struct.hda_pcm_stream], i32, i32, ptr, i8, ptr, %struct.list_head, i8 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.72, [128 x i8] }
%union.anon.72 = type { %union.anon.74 }
%union.anon.74 = type { [64 x i64] }

@snd_hda_id_realtek = internal constant [79 x %struct.hda_device_id] [%struct.hda_device_id { i32 283902485, i32 0, i8 1, ptr @.str, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283902497, i32 0, i8 1, ptr @.str.1, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283902498, i32 0, i8 1, ptr @.str.2, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283902501, i32 0, i8 1, ptr @.str.3, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283902512, i32 0, i8 1, ptr @.str.4, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283902513, i32 0, i8 1, ptr @.str.5, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283902515, i32 0, i8 1, ptr @.str.6, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283902516, i32 0, i8 1, ptr @.str.7, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283902517, i32 0, i8 1, ptr @.str.6, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283902518, i32 0, i8 1, ptr @.str.4, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283902533, i32 0, i8 1, ptr @.str.8, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283902549, i32 0, i8 1, ptr @.str.9, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283902550, i32 0, i8 1, ptr @.str.10, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283902551, i32 0, i8 1, ptr @.str.11, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283902560, i32 0, i8 1, ptr @.str.12, i32 ptrtoint (ptr @patch_alc260 to i32) }, %struct.hda_device_id { i32 283902562, i32 0, i8 1, ptr @.str.13, i32 ptrtoint (ptr @patch_alc262 to i32) }, %struct.hda_device_id { i32 283902567, i32 0, i8 1, ptr @.str.14, i32 ptrtoint (ptr @patch_alc268 to i32) }, %struct.hda_device_id { i32 283902568, i32 0, i8 1, ptr @.str.15, i32 ptrtoint (ptr @patch_alc268 to i32) }, %struct.hda_device_id { i32 283902569, i32 0, i8 1, ptr @.str.16, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283902576, i32 0, i8 1, ptr @.str.17, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283902578, i32 0, i8 1, ptr @.str.18, i32 ptrtoint (ptr @patch_alc662 to i32) }, %struct.hda_device_id { i32 283902580, i32 0, i8 1, ptr @.str.19, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283902581, i32 0, i8 1, ptr @.str.20, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283902582, i32 0, i8 1, ptr @.str.21, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283902592, i32 0, i8 1, ptr @.str.22, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283902594, i32 0, i8 1, ptr @.str.23, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283902595, i32 0, i8 1, ptr @.str.24, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283902596, i32 0, i8 1, ptr @.str.25, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283902597, i32 0, i8 1, ptr @.str.26, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283902598, i32 0, i8 1, ptr @.str.27, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283902599, i32 0, i8 1, ptr @.str.28, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283902600, i32 0, i8 1, ptr @.str.29, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283902601, i32 0, i8 1, ptr @.str.30, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283902608, i32 0, i8 1, ptr @.str.31, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283902610, i32 0, i8 1, ptr @.str.32, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283902611, i32 0, i8 1, ptr @.str.33, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283902612, i32 0, i8 1, ptr @.str.34, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283902613, i32 0, i8 1, ptr @.str.35, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283902616, i32 0, i8 1, ptr @.str.36, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283902617, i32 0, i8 1, ptr @.str.37, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283902720, i32 0, i8 1, ptr @.str.38, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283903523, i32 0, i8 1, ptr @.str.39, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283904097, i32 1049408, i8 1, ptr @.str.40, i32 ptrtoint (ptr @patch_alc861 to i32) }, %struct.hda_device_id { i32 283903584, i32 0, i8 1, ptr @.str.41, i32 ptrtoint (ptr @patch_alc861vd to i32) }, %struct.hda_device_id { i32 283904097, i32 0, i8 1, ptr @.str.42, i32 ptrtoint (ptr @patch_alc861 to i32) }, %struct.hda_device_id { i32 283904098, i32 0, i8 1, ptr @.str.43, i32 ptrtoint (ptr @patch_alc861vd to i32) }, %struct.hda_device_id { i32 283903586, i32 1048578, i8 1, ptr @.str.44, i32 ptrtoint (ptr @patch_alc882 to i32) }, %struct.hda_device_id { i32 283903586, i32 1048833, i8 1, ptr @.str.45, i32 ptrtoint (ptr @patch_alc662 to i32) }, %struct.hda_device_id { i32 283903586, i32 1049344, i8 1, ptr @.str.46, i32 ptrtoint (ptr @patch_alc662 to i32) }, %struct.hda_device_id { i32 283903587, i32 0, i8 1, ptr @.str.47, i32 ptrtoint (ptr @patch_alc662 to i32) }, %struct.hda_device_id { i32 283903589, i32 0, i8 1, ptr @.str.48, i32 ptrtoint (ptr @patch_alc662 to i32) }, %struct.hda_device_id { i32 283903591, i32 0, i8 1, ptr @.str.49, i32 ptrtoint (ptr @patch_alc662 to i32) }, %struct.hda_device_id { i32 283903592, i32 0, i8 1, ptr @.str.50, i32 ptrtoint (ptr @patch_alc662 to i32) }, %struct.hda_device_id { i32 283903600, i32 0, i8 1, ptr @.str.51, i32 ptrtoint (ptr @patch_alc662 to i32) }, %struct.hda_device_id { i32 283903601, i32 0, i8 1, ptr @.str.52, i32 ptrtoint (ptr @patch_alc662 to i32) }, %struct.hda_device_id { i32 283903616, i32 0, i8 1, ptr @.str.53, i32 ptrtoint (ptr @patch_alc680 to i32) }, %struct.hda_device_id { i32 283903744, i32 0, i8 1, ptr @.str.54, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283903745, i32 0, i8 1, ptr @.str.55, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283903747, i32 0, i8 1, ptr @.str.56, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283903761, i32 0, i8 1, ptr @.str.57, i32 ptrtoint (ptr @patch_alc269 to i32) }, %struct.hda_device_id { i32 283904103, i32 0, i8 1, ptr @.str.58, i32 ptrtoint (ptr @patch_alc662 to i32) }, %struct.hda_device_id { i32 283904128, i32 0, i8 1, ptr @.str.59, i32 ptrtoint (ptr @patch_alc880 to i32) }, %struct.hda_device_id { i32 283904130, i32 0, i8 1, ptr @.str.60, i32 ptrtoint (ptr @patch_alc882 to i32) }, %struct.hda_device_id { i32 283904131, i32 0, i8 1, ptr @.str.61, i32 ptrtoint (ptr @patch_alc882 to i32) }, %struct.hda_device_id { i32 283904133, i32 1048833, i8 1, ptr @.str.62, i32 ptrtoint (ptr @patch_alc882 to i32) }, %struct.hda_device_id { i32 283904133, i32 1048835, i8 1, ptr @.str.62, i32 ptrtoint (ptr @patch_alc882 to i32) }, %struct.hda_device_id { i32 283904133, i32 0, i8 1, ptr @.str.63, i32 ptrtoint (ptr @patch_alc882 to i32) }, %struct.hda_device_id { i32 283904135, i32 0, i8 1, ptr @.str.64, i32 ptrtoint (ptr @patch_alc882 to i32) }, %struct.hda_device_id { i32 283904136, i32 1048833, i8 1, ptr @.str.65, i32 ptrtoint (ptr @patch_alc882 to i32) }, %struct.hda_device_id { i32 283904136, i32 0, i8 1, ptr @.str.66, i32 ptrtoint (ptr @patch_alc882 to i32) }, %struct.hda_device_id { i32 283904137, i32 0, i8 1, ptr @.str.67, i32 ptrtoint (ptr @patch_alc882 to i32) }, %struct.hda_device_id { i32 283904146, i32 0, i8 1, ptr @.str.68, i32 ptrtoint (ptr @patch_alc662 to i32) }, %struct.hda_device_id { i32 283904151, i32 0, i8 1, ptr @.str.69, i32 ptrtoint (ptr @patch_alc662 to i32) }, %struct.hda_device_id { i32 283904153, i32 0, i8 1, ptr @.str.70, i32 ptrtoint (ptr @patch_alc882 to i32) }, %struct.hda_device_id { i32 283904256, i32 0, i8 1, ptr @.str.71, i32 ptrtoint (ptr @patch_alc882 to i32) }, %struct.hda_device_id { i32 283904768, i32 0, i8 1, ptr @.str.72, i32 ptrtoint (ptr @patch_alc882 to i32) }, %struct.hda_device_id { i32 283906408, i32 0, i8 1, ptr @.str.73, i32 ptrtoint (ptr @patch_alc882 to i32) }, %struct.hda_device_id { i32 283906592, i32 0, i8 1, ptr @.str.73, i32 ptrtoint (ptr @patch_alc882 to i32) }, %struct.hda_device_id zeroinitializer], align 4
@__UNIQUE_ID_license235 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [35 x i8] c"description=Realtek HD-audio codec\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [7 x i8] c"ALC215\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ALC221\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ALC222\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ALC225\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ALC236\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ALC231\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"ALC233\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"ALC234\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"ALC245\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"ALC255\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"ALC256\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"ALC257\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"ALC260\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"ALC262\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"ALC267\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"ALC268\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"ALC269\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"ALC270\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"ALC272\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"ALC274\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"ALC275\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"ALC276\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"ALC280\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"ALC282\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"ALC283\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"ALC284\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"ALC285\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"ALC286\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"ALC287\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"ALC288\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"ALC289\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"ALC290\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"ALC292\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"ALC293\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"ALC294\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"ALC295\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"ALC298\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"ALC299\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"ALC300\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"ALC623\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"ALC660\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"ALC660-VD\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"ALC861\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"ALC861-VD\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"ALC662 rev2\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"ALC662 rev1\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"ALC662 rev3\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"ALC663\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"ALC665\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"ALC667\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"ALC668\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"ALC670\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"ALC671\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"ALC680\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"ALC700\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"ALC701\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"ALC703\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"ALC711\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"ALC891\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"ALC880\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"ALC882\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"ALC883\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"ALC889A\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"ALC885\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"ALC887\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"ALC1200\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"ALC888\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"ALC889\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"ALC892\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"ALC897\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"ALC898\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"ALC1150\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"ALCS1200A\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"ALC1220\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"ALC271X\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"ALC3202\00", align 1
@alc269_fixup_models = internal constant [122 x %struct.hda_model_fixup] [%struct.hda_model_fixup { i32 19, ptr @.str.118 }, %struct.hda_model_fixup { i32 20, ptr @.str.119 }, %struct.hda_model_fixup { i32 11, ptr @.str.120 }, %struct.hda_model_fixup { i32 9, ptr @.str.121 }, %struct.hda_model_fixup { i32 30, ptr @.str.122 }, %struct.hda_model_fixup { i32 12, ptr @.str.123 }, %struct.hda_model_fixup { i32 40, ptr @.str.124 }, %struct.hda_model_fixup { i32 41, ptr @.str.125 }, %struct.hda_model_fixup { i32 31, ptr @.str.126 }, %struct.hda_model_fixup { i32 32, ptr @.str.127 }, %struct.hda_model_fixup { i32 27, ptr @.str.128 }, %struct.hda_model_fixup { i32 82, ptr @.str.129 }, %struct.hda_model_fixup { i32 36, ptr @.str.130 }, %struct.hda_model_fixup { i32 37, ptr @.str.131 }, %struct.hda_model_fixup { i32 38, ptr @.str.132 }, %struct.hda_model_fixup { i32 39, ptr @.str.133 }, %struct.hda_model_fixup { i32 55, ptr @.str.134 }, %struct.hda_model_fixup { i32 56, ptr @.str.135 }, %struct.hda_model_fixup { i32 72, ptr @.str.136 }, %struct.hda_model_fixup { i32 73, ptr @.str.137 }, %struct.hda_model_fixup { i32 107, ptr @.str.138 }, %struct.hda_model_fixup { i32 126, ptr @.str.139 }, %struct.hda_model_fixup { i32 127, ptr @.str.140 }, %struct.hda_model_fixup { i32 118, ptr @.str.141 }, %struct.hda_model_fixup { i32 123, ptr @.str.142 }, %struct.hda_model_fixup { i32 1, ptr @.str.143 }, %struct.hda_model_fixup { i32 3, ptr @.str.144 }, %struct.hda_model_fixup { i32 5, ptr @.str.145 }, %struct.hda_model_fixup { i32 6, ptr @.str.146 }, %struct.hda_model_fixup { i32 7, ptr @.str.147 }, %struct.hda_model_fixup { i32 10, ptr @.str.148 }, %struct.hda_model_fixup { i32 14, ptr @.str.149 }, %struct.hda_model_fixup { i32 15, ptr @.str.150 }, %struct.hda_model_fixup { i32 16, ptr @.str.151 }, %struct.hda_model_fixup { i32 18, ptr @.str.152 }, %struct.hda_model_fixup { i32 21, ptr @.str.153 }, %struct.hda_model_fixup { i32 22, ptr @.str.154 }, %struct.hda_model_fixup { i32 24, ptr @.str.155 }, %struct.hda_model_fixup { i32 25, ptr @.str.156 }, %struct.hda_model_fixup { i32 26, ptr @.str.157 }, %struct.hda_model_fixup { i32 28, ptr @.str.158 }, %struct.hda_model_fixup { i32 29, ptr @.str.159 }, %struct.hda_model_fixup { i32 33, ptr @.str.160 }, %struct.hda_model_fixup { i32 34, ptr @.str.161 }, %struct.hda_model_fixup { i32 42, ptr @.str.162 }, %struct.hda_model_fixup { i32 45, ptr @.str.163 }, %struct.hda_model_fixup { i32 47, ptr @.str.164 }, %struct.hda_model_fixup { i32 48, ptr @.str.165 }, %struct.hda_model_fixup { i32 49, ptr @.str.166 }, %struct.hda_model_fixup { i32 50, ptr @.str.167 }, %struct.hda_model_fixup { i32 51, ptr @.str.168 }, %struct.hda_model_fixup { i32 52, ptr @.str.169 }, %struct.hda_model_fixup { i32 54, ptr @.str.170 }, %struct.hda_model_fixup { i32 57, ptr @.str.171 }, %struct.hda_model_fixup { i32 58, ptr @.str.172 }, %struct.hda_model_fixup { i32 60, ptr @.str.173 }, %struct.hda_model_fixup { i32 62, ptr @.str.174 }, %struct.hda_model_fixup { i32 63, ptr @.str.175 }, %struct.hda_model_fixup { i32 64, ptr @.str.176 }, %struct.hda_model_fixup { i32 65, ptr @.str.177 }, %struct.hda_model_fixup { i32 66, ptr @.str.178 }, %struct.hda_model_fixup { i32 67, ptr @.str.179 }, %struct.hda_model_fixup { i32 68, ptr @.str.180 }, %struct.hda_model_fixup { i32 71, ptr @.str.181 }, %struct.hda_model_fixup { i32 74, ptr @.str.182 }, %struct.hda_model_fixup { i32 75, ptr @.str.183 }, %struct.hda_model_fixup { i32 76, ptr @.str.184 }, %struct.hda_model_fixup { i32 77, ptr @.str.185 }, %struct.hda_model_fixup { i32 78, ptr @.str.186 }, %struct.hda_model_fixup { i32 79, ptr @.str.128 }, %struct.hda_model_fixup { i32 80, ptr @.str.187 }, %struct.hda_model_fixup { i32 81, ptr @.str.188 }, %struct.hda_model_fixup { i32 82, ptr @.str.189 }, %struct.hda_model_fixup { i32 83, ptr @.str.190 }, %struct.hda_model_fixup { i32 86, ptr @.str.191 }, %struct.hda_model_fixup { i32 87, ptr @.str.192 }, %struct.hda_model_fixup { i32 88, ptr @.str.193 }, %struct.hda_model_fixup { i32 91, ptr @.str.194 }, %struct.hda_model_fixup { i32 93, ptr @.str.195 }, %struct.hda_model_fixup { i32 95, ptr @.str.196 }, %struct.hda_model_fixup { i32 96, ptr @.str.197 }, %struct.hda_model_fixup { i32 97, ptr @.str.198 }, %struct.hda_model_fixup { i32 98, ptr @.str.199 }, %struct.hda_model_fixup { i32 99, ptr @.str.200 }, %struct.hda_model_fixup { i32 100, ptr @.str.201 }, %struct.hda_model_fixup { i32 102, ptr @.str.202 }, %struct.hda_model_fixup { i32 103, ptr @.str.203 }, %struct.hda_model_fixup { i32 104, ptr @.str.204 }, %struct.hda_model_fixup { i32 105, ptr @.str.205 }, %struct.hda_model_fixup { i32 106, ptr @.str.206 }, %struct.hda_model_fixup { i32 108, ptr @.str.207 }, %struct.hda_model_fixup { i32 110, ptr @.str.208 }, %struct.hda_model_fixup { i32 111, ptr @.str.209 }, %struct.hda_model_fixup { i32 112, ptr @.str.206 }, %struct.hda_model_fixup { i32 113, ptr @.str.210 }, %struct.hda_model_fixup { i32 114, ptr @.str.211 }, %struct.hda_model_fixup { i32 115, ptr @.str.212 }, %struct.hda_model_fixup { i32 116, ptr @.str.213 }, %struct.hda_model_fixup { i32 117, ptr @.str.214 }, %struct.hda_model_fixup { i32 120, ptr @.str.215 }, %struct.hda_model_fixup { i32 121, ptr @.str.216 }, %struct.hda_model_fixup { i32 125, ptr @.str.217 }, %struct.hda_model_fixup { i32 128, ptr @.str.218 }, %struct.hda_model_fixup { i32 129, ptr @.str.219 }, %struct.hda_model_fixup { i32 132, ptr @.str.220 }, %struct.hda_model_fixup { i32 144, ptr @.str.221 }, %struct.hda_model_fixup { i32 143, ptr @.str.222 }, %struct.hda_model_fixup { i32 151, ptr @.str.223 }, %struct.hda_model_fixup { i32 131, ptr @.str.224 }, %struct.hda_model_fixup { i32 152, ptr @.str.225 }, %struct.hda_model_fixup { i32 172, ptr @.str.226 }, %struct.hda_model_fixup { i32 190, ptr @.str.227 }, %struct.hda_model_fixup { i32 191, ptr @.str.228 }, %struct.hda_model_fixup { i32 84, ptr @.str.229 }, %struct.hda_model_fixup { i32 206, ptr @.str.230 }, %struct.hda_model_fixup { i32 207, ptr @.str.231 }, %struct.hda_model_fixup { i32 85, ptr @.str.232 }, %struct.hda_model_fixup { i32 208, ptr @.str.233 }, %struct.hda_model_fixup { i32 209, ptr @.str.234 }, %struct.hda_model_fixup { i32 210, ptr @.str.235 }, %struct.hda_model_fixup { i32 180, ptr @.str.236 }, %struct.hda_model_fixup zeroinitializer], align 4
@alc269_fixup_tbl = internal constant [460 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4133, i16 643, i16 -1, i32 30 }, %struct.snd_pci_quirk { i16 4133, i16 667, i16 -1, i32 30 }, %struct.snd_pci_quirk { i16 4133, i16 841, i16 -1, i32 30 }, %struct.snd_pci_quirk { i16 4133, i16 1148, i16 -1, i32 49 }, %struct.snd_pci_quirk { i16 4133, i16 1837, i16 -1, i32 42 }, %struct.snd_pci_quirk { i16 4133, i16 1856, i16 -1, i32 47 }, %struct.snd_pci_quirk { i16 4133, i16 1858, i16 -1, i32 47 }, %struct.snd_pci_quirk { i16 4133, i16 1890, i16 -1, i32 48 }, %struct.snd_pci_quirk { i16 4133, i16 1909, i16 -1, i32 48 }, %struct.snd_pci_quirk { i16 4133, i16 1947, i16 -1, i32 76 }, %struct.snd_pci_quirk { i16 4133, i16 2061, i16 -1, i32 42 }, %struct.snd_pci_quirk { i16 4133, i16 2112, i16 -1, i32 77 }, %struct.snd_pci_quirk { i16 4133, i16 4124, i16 -1, i32 14 }, %struct.snd_pci_quirk { i16 4133, i16 4139, i16 -1, i32 136 }, %struct.snd_pci_quirk { i16 4133, i16 4197, i16 -1, i32 175 }, %struct.snd_pci_quirk { i16 4133, i16 4205, i16 -1, i32 55 }, %struct.snd_pci_quirk { i16 4133, i16 4244, i16 -1, i32 201 }, %struct.snd_pci_quirk { i16 4133, i16 4249, i16 -1, i32 65 }, %struct.snd_pci_quirk { i16 4133, i16 4366, i16 -1, i32 65 }, %struct.snd_pci_quirk { i16 4133, i16 4454, i16 -1, i32 14 }, %struct.snd_pci_quirk { i16 4133, i16 4455, i16 -1, i32 14 }, %struct.snd_pci_quirk { i16 4133, i16 4678, i16 -1, i32 151 }, %struct.snd_pci_quirk { i16 4133, i16 4679, i16 -1, i32 174 }, %struct.snd_pci_quirk { i16 4133, i16 4680, i16 -1, i32 176 }, %struct.snd_pci_quirk { i16 4133, i16 4713, i16 -1, i32 202 }, %struct.snd_pci_quirk { i16 4133, i16 4751, i16 -1, i32 148 }, %struct.snd_pci_quirk { i16 4133, i16 4752, i16 -1, i32 148 }, %struct.snd_pci_quirk { i16 4133, i16 4753, i16 -1, i32 148 }, %struct.snd_pci_quirk { i16 4133, i16 4764, i16 -1, i32 202 }, %struct.snd_pci_quirk { i16 4133, i16 4864, i16 -1, i32 179 }, %struct.snd_pci_quirk { i16 4133, i16 4872, i16 -1, i32 148 }, %struct.snd_pci_quirk { i16 4133, i16 4906, i16 -1, i32 119 }, %struct.snd_pci_quirk { i16 4133, i16 4912, i16 -1, i32 142 }, %struct.snd_pci_quirk { i16 4133, i16 5151, i16 -1, i32 65 }, %struct.snd_pci_quirk { i16 4133, i16 5163, i16 -1, i32 65 }, %struct.snd_pci_quirk { i16 4133, i16 5168, i16 -1, i32 179 }, %struct.snd_pci_quirk { i16 4133, i16 5222, i16 -1, i32 210 }, %struct.snd_pci_quirk { i16 4136, i16 1136, i16 -1, i32 3 }, %struct.snd_pci_quirk { i16 4136, i16 1355, i16 -1, i32 97 }, %struct.snd_pci_quirk { i16 4136, i16 1469, i16 -1, i32 91 }, %struct.snd_pci_quirk { i16 4136, i16 1470, i16 -1, i32 91 }, %struct.snd_pci_quirk { i16 4136, i16 1482, i16 -1, i32 91 }, %struct.snd_pci_quirk { i16 4136, i16 1483, i16 -1, i32 91 }, %struct.snd_pci_quirk { i16 4136, i16 1498, i16 -1, i32 61 }, %struct.snd_pci_quirk { i16 4136, i16 1524, i16 -1, i32 36 }, %struct.snd_pci_quirk { i16 4136, i16 1525, i16 -1, i32 36 }, %struct.snd_pci_quirk { i16 4136, i16 1526, i16 -1, i32 36 }, %struct.snd_pci_quirk { i16 4136, i16 1557, i16 -1, i32 62 }, %struct.snd_pci_quirk { i16 4136, i16 1558, i16 -1, i32 62 }, %struct.snd_pci_quirk { i16 4136, i16 1580, i16 -1, i32 91 }, %struct.snd_pci_quirk { i16 4136, i16 1582, i16 -1, i32 91 }, %struct.snd_pci_quirk { i16 4136, i16 1592, i16 -1, i32 60 }, %struct.snd_pci_quirk { i16 4136, i16 1610, i16 -1, i32 71 }, %struct.snd_pci_quirk { i16 4136, i16 1611, i16 -1, i32 71 }, %struct.snd_pci_quirk { i16 4136, i16 1637, i16 -1, i32 88 }, %struct.snd_pci_quirk { i16 4136, i16 1641, i16 -1, i32 67 }, %struct.snd_pci_quirk { i16 4136, i16 1690, i16 -1, i32 62 }, %struct.snd_pci_quirk { i16 4136, i16 1735, i16 -1, i32 67 }, %struct.snd_pci_quirk { i16 4136, i16 1753, i16 -1, i32 71 }, %struct.snd_pci_quirk { i16 4136, i16 1754, i16 -1, i32 71 }, %struct.snd_pci_quirk { i16 4136, i16 1755, i16 -1, i32 93 }, %struct.snd_pci_quirk { i16 4136, i16 1757, i16 -1, i32 93 }, %struct.snd_pci_quirk { i16 4136, i16 1758, i16 -1, i32 93 }, %struct.snd_pci_quirk { i16 4136, i16 1759, i16 -1, i32 93 }, %struct.snd_pci_quirk { i16 4136, i16 1760, i16 -1, i32 93 }, %struct.snd_pci_quirk { i16 4136, i16 1798, i16 -1, i32 110 }, %struct.snd_pci_quirk { i16 4136, i16 1829, i16 -1, i32 100 }, %struct.snd_pci_quirk { i16 4136, i16 1848, i16 -1, i32 33 }, %struct.snd_pci_quirk { i16 4136, i16 1884, i16 -1, i32 108 }, %struct.snd_pci_quirk { i16 4136, i16 1885, i16 -1, i32 108 }, %struct.snd_pci_quirk { i16 4136, i16 1944, i16 -1, i32 110 }, %struct.snd_pci_quirk { i16 4136, i16 1968, i16 -1, i32 103 }, %struct.snd_pci_quirk { i16 4136, i16 2060, i16 -1, i32 121 }, %struct.snd_pci_quirk { i16 4136, i16 2123, i16 -1, i32 125 }, %struct.snd_pci_quirk { i16 4136, i16 2126, i16 -1, i32 125 }, %struct.snd_pci_quirk { i16 4136, i16 2161, i16 -1, i32 129 }, %struct.snd_pci_quirk { i16 4136, i16 2162, i16 -1, i32 129 }, %struct.snd_pci_quirk { i16 4136, i16 2163, i16 -1, i32 128 }, %struct.snd_pci_quirk { i16 4136, i16 2221, i16 -1, i32 145 }, %struct.snd_pci_quirk { i16 4136, i16 2222, i16 -1, i32 102 }, %struct.snd_pci_quirk { i16 4136, i16 2357, i16 -1, i32 125 }, %struct.snd_pci_quirk { i16 4136, i16 2429, i16 -1, i32 154 }, %struct.snd_pci_quirk { i16 4136, i16 2430, i16 -1, i32 154 }, %struct.snd_pci_quirk { i16 4136, i16 2445, i16 -1, i32 116 }, %struct.snd_pci_quirk { i16 4136, i16 2495, i16 -1, i32 116 }, %struct.snd_pci_quirk { i16 4136, i16 2606, i16 -1, i32 199 }, %struct.snd_pci_quirk { i16 4136, i16 2608, i16 -1, i32 199 }, %struct.snd_pci_quirk { i16 4136, i16 2648, i16 -1, i32 129 }, %struct.snd_pci_quirk { i16 4136, i16 2657, i16 -1, i32 154 }, %struct.snd_pci_quirk { i16 4136, i16 2658, i16 -1, i32 154 }, %struct.snd_pci_quirk { i16 4136, i16 2717, i16 -1, i32 39 }, %struct.snd_pci_quirk { i16 4136, i16 2718, i16 -1, i32 39 }, %struct.snd_pci_quirk { i16 4136, i16 5706, i16 -1, i32 71 }, %struct.snd_pci_quirk { i16 4136, i16 5707, i16 -1, i32 71 }, %struct.snd_pci_quirk { i16 4156, i16 5510, i16 -1, i32 25 }, %struct.snd_pci_quirk { i16 4156, i16 6374, i16 -1, i32 27 }, %struct.snd_pci_quirk { i16 4156, i16 8587, i16 -1, i32 53 }, %struct.snd_pci_quirk { i16 4156, i16 8697, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 4156, i16 8720, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 4156, i16 8724, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 4156, i16 8731, i16 -1, i32 28 }, %struct.snd_pci_quirk { i16 4156, i16 8732, i16 -1, i32 105 }, %struct.snd_pci_quirk { i16 4156, i16 8737, i16 -1, i32 28 }, %struct.snd_pci_quirk { i16 4156, i16 8741, i16 -1, i32 28 }, %struct.snd_pci_quirk { i16 4156, i16 8758, i16 -1, i32 29 }, %struct.snd_pci_quirk { i16 4156, i16 8759, i16 -1, i32 29 }, %struct.snd_pci_quirk { i16 4156, i16 8760, i16 -1, i32 29 }, %struct.snd_pci_quirk { i16 4156, i16 8761, i16 -1, i32 29 }, %struct.snd_pci_quirk { i16 4156, i16 8779, i16 -1, i32 29 }, %struct.snd_pci_quirk { i16 4156, i16 8787, i16 -1, i32 28 }, %struct.snd_pci_quirk { i16 4156, i16 8788, i16 -1, i32 28 }, %struct.snd_pci_quirk { i16 4156, i16 8789, i16 -1, i32 28 }, %struct.snd_pci_quirk { i16 4156, i16 8790, i16 -1, i32 28 }, %struct.snd_pci_quirk { i16 4156, i16 8791, i16 -1, i32 28 }, %struct.snd_pci_quirk { i16 4156, i16 8793, i16 -1, i32 28 }, %struct.snd_pci_quirk { i16 4156, i16 8794, i16 -1, i32 82 }, %struct.snd_pci_quirk { i16 4156, i16 8799, i16 -1, i32 80 }, %struct.snd_pci_quirk { i16 4156, i16 8800, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 4156, i16 8803, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 4156, i16 8804, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 4156, i16 8805, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 4156, i16 8808, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 4156, i16 8810, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 4156, i16 8811, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 4156, i16 8814, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 4156, i16 8817, i16 -1, i32 79 }, %struct.snd_pci_quirk { i16 4156, i16 8818, i16 -1, i32 28 }, %struct.snd_pci_quirk { i16 4156, i16 8818, i16 -1, i32 81 }, %struct.snd_pci_quirk { i16 4156, i16 8819, i16 -1, i32 28 }, %struct.snd_pci_quirk { i16 4156, i16 8819, i16 -1, i32 81 }, %struct.snd_pci_quirk { i16 4156, i16 8824, i16 -1, i32 28 }, %struct.snd_pci_quirk { i16 4156, i16 8831, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 4156, i16 8834, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 4156, i16 8843, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 4156, i16 8846, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 4156, i16 8862, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 4156, i16 8882, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 4156, i16 8887, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 4156, i16 8895, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 4156, i16 8900, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 4156, i16 8901, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 4156, i16 8903, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 4156, i16 8904, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 4156, i16 8911, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 4156, i16 8923, i16 -1, i32 83 }, %struct.snd_pci_quirk { i16 4156, i16 8924, i16 -1, i32 28 }, %struct.snd_pci_quirk { i16 4156, i16 8955, i16 -1, i32 28 }, %struct.snd_pci_quirk { i16 4156, i16 9012, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 4156, i16 9013, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 4156, i16 9014, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 4156, i16 9015, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 4156, i16 -32722, i16 -1, i32 112 }, %struct.snd_pci_quirk { i16 4156, i16 -32721, i16 -1, i32 112 }, %struct.snd_pci_quirk { i16 4156, i16 -32649, i16 -1, i32 197 }, %struct.snd_pci_quirk { i16 4156, i16 -32424, i16 -1, i32 197 }, %struct.snd_pci_quirk { i16 4156, i16 -32243, i16 -1, i32 26 }, %struct.snd_pci_quirk { i16 4156, i16 -32170, i16 -1, i32 106 }, %struct.snd_pci_quirk { i16 4156, i16 -32130, i16 -1, i32 132 }, %struct.snd_pci_quirk { i16 4156, i16 -32129, i16 -1, i32 26 }, %struct.snd_pci_quirk { i16 4156, i16 -32065, i16 -1, i32 112 }, %struct.snd_pci_quirk { i16 4156, i16 -32064, i16 -1, i32 112 }, %struct.snd_pci_quirk { i16 4156, i16 -31815, i16 -1, i32 26 }, %struct.snd_pci_quirk { i16 4156, i16 -31716, i16 -1, i32 26 }, %struct.snd_pci_quirk { i16 4156, i16 -31593, i16 -1, i32 26 }, %struct.snd_pci_quirk { i16 4156, i16 -31526, i16 -1, i32 206 }, %struct.snd_pci_quirk { i16 4156, i16 -31513, i16 -1, i32 26 }, %struct.snd_pci_quirk { i16 4156, i16 -31463, i16 -1, i32 207 }, %struct.snd_pci_quirk { i16 4156, i16 -31217, i16 -1, i32 180 }, %struct.snd_pci_quirk { i16 4156, i16 -31201, i16 -1, i32 180 }, %struct.snd_pci_quirk { i16 4156, i16 -31075, i16 -1, i32 170 }, %struct.snd_pci_quirk { i16 4156, i16 -31033, i16 -1, i32 193 }, %struct.snd_pci_quirk { i16 4156, i16 -30954, i16 -1, i32 180 }, %struct.snd_pci_quirk { i16 4156, i16 -30944, i16 -1, i32 180 }, %struct.snd_pci_quirk { i16 4156, i16 -30940, i16 -1, i32 167 }, %struct.snd_pci_quirk { i16 4156, i16 -30936, i16 -1, i32 167 }, %struct.snd_pci_quirk { i16 4156, i16 -30935, i16 -1, i32 167 }, %struct.snd_pci_quirk { i16 4156, i16 -30928, i16 -1, i32 171 }, %struct.snd_pci_quirk { i16 4156, i16 -30923, i16 -1, i32 171 }, %struct.snd_pci_quirk { i16 4156, i16 -30922, i16 -1, i32 180 }, %struct.snd_pci_quirk { i16 4156, i16 -30880, i16 -1, i32 168 }, %struct.snd_pci_quirk { i16 4156, i16 -30854, i16 -1, i32 168 }, %struct.snd_pci_quirk { i16 4156, i16 -30851, i16 -1, i32 170 }, %struct.snd_pci_quirk { i16 4156, i16 -30848, i16 -1, i32 180 }, %struct.snd_pci_quirk { i16 4156, i16 -30845, i16 -1, i32 180 }, %struct.snd_pci_quirk { i16 4156, i16 -30840, i16 -1, i32 168 }, %struct.snd_pci_quirk { i16 4156, i16 -30776, i16 -1, i32 196 }, %struct.snd_pci_quirk { i16 4156, i16 -30747, i16 -1, i32 169 }, %struct.snd_pci_quirk { i16 4156, i16 -30745, i16 -1, i32 169 }, %struct.snd_pci_quirk { i16 4156, i16 -30735, i16 -1, i32 169 }, %struct.snd_pci_quirk { i16 4156, i16 -30734, i16 -1, i32 169 }, %struct.snd_pci_quirk { i16 4156, i16 -30732, i16 -1, i32 196 }, %struct.snd_pci_quirk { i16 4156, i16 -30731, i16 -1, i32 196 }, %struct.snd_pci_quirk { i16 4156, i16 -30730, i16 -1, i32 84 }, %struct.snd_pci_quirk { i16 4156, i16 -30729, i16 -1, i32 84 }, %struct.snd_pci_quirk { i16 4156, i16 -30715, i16 -1, i32 169 }, %struct.snd_pci_quirk { i16 4156, i16 -30707, i16 -1, i32 167 }, %struct.snd_pci_quirk { i16 4156, i16 -30703, i16 -1, i32 85 }, %struct.snd_pci_quirk { i16 4156, i16 -30702, i16 -1, i32 85 }, %struct.snd_pci_quirk { i16 4156, i16 -30650, i16 -1, i32 167 }, %struct.snd_pci_quirk { i16 4156, i16 -30649, i16 -1, i32 167 }, %struct.snd_pci_quirk { i16 4156, i16 -30645, i16 -1, i32 167 }, %struct.snd_pci_quirk { i16 4156, i16 -30644, i16 -1, i32 167 }, %struct.snd_pci_quirk { i16 4156, i16 -30622, i16 -1, i32 211 }, %struct.snd_pci_quirk { i16 4156, i16 -30621, i16 -1, i32 211 }, %struct.snd_pci_quirk { i16 4156, i16 -30611, i16 -1, i32 180 }, %struct.snd_pci_quirk { i16 4156, i16 -30608, i16 -1, i32 180 }, %struct.snd_pci_quirk { i16 4156, i16 -30605, i16 -1, i32 180 }, %struct.snd_pci_quirk { i16 4156, i16 -30579, i16 -1, i32 169 }, %struct.snd_pci_quirk { i16 4156, i16 -30571, i16 -1, i32 224 }, %struct.snd_pci_quirk { i16 4156, i16 -30570, i16 -1, i32 168 }, %struct.snd_pci_quirk { i16 4156, i16 -30568, i16 -1, i32 204 }, %struct.snd_pci_quirk { i16 4156, i16 -30512, i16 -1, i32 196 }, %struct.snd_pci_quirk { i16 4156, i16 -30269, i16 -1, i32 167 }, %struct.snd_pci_quirk { i16 4156, i16 -30262, i16 -1, i32 171 }, %struct.snd_pci_quirk { i16 4163, i16 4158, i16 -1, i32 114 }, %struct.snd_pci_quirk { i16 4163, i16 4159, i16 -1, i32 57 }, %struct.snd_pci_quirk { i16 4163, i16 4205, i16 -1, i32 50 }, %struct.snd_pci_quirk { i16 4163, i16 4257, i16 -1, i32 139 }, %struct.snd_pci_quirk { i16 4163, i16 4288, i16 -1, i32 114 }, %struct.snd_pci_quirk { i16 4163, i16 4304, i16 -1, i32 66 }, %struct.snd_pci_quirk { i16 4163, i16 4445, i16 -1, i32 50 }, %struct.snd_pci_quirk { i16 4163, i16 4544, i16 -1, i32 66 }, %struct.snd_pci_quirk { i16 4163, i16 4702, i16 -1, i32 66 }, %struct.snd_pci_quirk { i16 4163, i16 4721, i16 -1, i32 150 }, %struct.snd_pci_quirk { i16 4163, i16 4752, i16 -1, i32 117 }, %struct.snd_pci_quirk { i16 4163, i16 4768, i16 -1, i32 117 }, %struct.snd_pci_quirk { i16 4163, i16 4832, i16 -1, i32 114 }, %struct.snd_pci_quirk { i16 4163, i16 4848, i16 -1, i32 114 }, %struct.snd_pci_quirk { i16 4163, i16 5040, i16 -1, i32 114 }, %struct.snd_pci_quirk { i16 4163, i16 5159, i16 -1, i32 51 }, %struct.snd_pci_quirk { i16 4163, i16 5399, i16 -1, i32 52 }, %struct.snd_pci_quirk { i16 4163, i16 5859, i16 -1, i32 11 }, %struct.snd_pci_quirk { i16 4163, i16 5952, i16 -1, i32 205 }, %struct.snd_pci_quirk { i16 4163, i16 6097, i16 -1, i32 156 }, %struct.snd_pci_quirk { i16 4163, i16 5730, i16 -1, i32 156 }, %struct.snd_pci_quirk { i16 4163, i16 6273, i16 -1, i32 162 }, %struct.snd_pci_quirk { i16 4163, i16 6321, i16 -1, i32 149 }, %struct.snd_pci_quirk { i16 4163, i16 6385, i16 -1, i32 149 }, %struct.snd_pci_quirk { i16 4163, i16 6478, i16 -1, i32 159 }, %struct.snd_pci_quirk { i16 4163, i16 6512, i16 -1, i32 177 }, %struct.snd_pci_quirk { i16 4163, i16 6530, i16 -1, i32 194 }, %struct.snd_pci_quirk { i16 4163, i16 6606, i16 -1, i32 159 }, %struct.snd_pci_quirk { i16 4163, i16 6625, i16 -1, i32 173 }, %struct.snd_pci_quirk { i16 4163, i16 6675, i16 -1, i32 5 }, %struct.snd_pci_quirk { i16 4163, i16 6704, i16 -1, i32 114 }, %struct.snd_pci_quirk { i16 4163, i16 6929, i16 -1, i32 160 }, %struct.snd_pci_quirk { i16 4163, i16 6931, i16 -1, i32 30 }, %struct.snd_pci_quirk { i16 4163, i16 7101, i16 -1, i32 66 }, %struct.snd_pci_quirk { i16 4163, i16 7203, i16 -1, i32 50 }, %struct.snd_pci_quirk { i16 4163, i16 7373, i16 -1, i32 114 }, %struct.snd_pci_quirk { i16 4163, i16 7502, i16 -1, i32 194 }, %struct.snd_pci_quirk { i16 4163, i16 7697, i16 -1, i32 178 }, %struct.snd_pci_quirk { i16 4163, i16 7761, i16 -1, i32 165 }, %struct.snd_pci_quirk { i16 4163, i16 7822, i16 -1, i32 177 }, %struct.snd_pci_quirk { i16 4163, i16 7953, i16 -1, i32 177 }, %struct.snd_pci_quirk { i16 4163, i16 5810, i16 -1, i32 177 }, %struct.snd_pci_quirk { i16 4163, i16 12336, i16 -1, i32 115 }, %struct.snd_pci_quirk { i16 4163, i16 -31974, i16 -1, i32 11 }, %struct.snd_pci_quirk { i16 4163, i16 -31926, i16 -1, i32 11 }, %struct.snd_pci_quirk { i16 4163, i16 -31848, i16 -1, i32 11 }, %struct.snd_pci_quirk { i16 4163, i16 -31794, i16 -1, i32 11 }, %struct.snd_pci_quirk { i16 4163, i16 -31466, i16 -1, i32 45 }, %struct.snd_pci_quirk { i16 4173, i16 -28557, i16 -1, i32 2 }, %struct.snd_pci_quirk { i16 4173, i16 -28549, i16 -1, i32 7 }, %struct.snd_pci_quirk { i16 4173, i16 -28540, i16 -1, i32 7 }, %struct.snd_pci_quirk { i16 4173, i16 -28519, i16 -1, i32 8 }, %struct.snd_pci_quirk { i16 4173, i16 -28491, i16 -1, i32 34 }, %struct.snd_pci_quirk { i16 4173, i16 -28490, i16 -1, i32 34 }, %struct.snd_pci_quirk { i16 4303, i16 5237, i16 -1, i32 14 }, %struct.snd_pci_quirk { i16 4303, i16 5535, i16 -1, i32 17 }, %struct.snd_pci_quirk { i16 4303, i16 5596, i16 -1, i32 16 }, %struct.snd_pci_quirk { i16 4303, i16 5673, i16 -1, i32 18 }, %struct.snd_pci_quirk { i16 4303, i16 5975, i16 -1, i32 16 }, %struct.snd_pci_quirk { i16 4303, i16 6213, i16 -1, i32 15 }, %struct.snd_pci_quirk { i16 4332, i16 4338, i16 -1, i32 123 }, %struct.snd_pci_quirk { i16 4332, i16 4492, i16 -1, i32 152 }, %struct.snd_pci_quirk { i16 4332, i16 4656, i16 -1, i32 143 }, %struct.snd_pci_quirk { i16 4332, i16 4690, i16 -1, i32 143 }, %struct.snd_pci_quirk { i16 4332, i16 4692, i16 -1, i32 143 }, %struct.snd_pci_quirk { i16 4343, i16 -31944, i16 -1, i32 40 }, %struct.snd_pci_quirk { i16 5197, i16 -16119, i16 -1, i32 30 }, %struct.snd_pci_quirk { i16 5197, i16 -16023, i16 -1, i32 172 }, %struct.snd_pci_quirk { i16 5197, i16 -16010, i16 -1, i32 172 }, %struct.snd_pci_quirk { i16 5197, i16 -15991, i16 -1, i32 172 }, %struct.snd_pci_quirk { i16 5197, i16 -15990, i16 -1, i32 172 }, %struct.snd_pci_quirk { i16 5197, i16 -14528, i16 -1, i32 111 }, %struct.snd_pci_quirk { i16 5197, i16 -14318, i16 -1, i32 172 }, %struct.snd_pci_quirk { i16 5197, i16 -14288, i16 -1, i32 172 }, %struct.snd_pci_quirk { i16 5208, i16 -1453, i16 -1, i32 74 }, %struct.snd_pci_quirk { i16 5218, i16 -20192, i16 -1, i32 74 }, %struct.snd_pci_quirk { i16 5218, i16 -20111, i16 -1, i32 74 }, %struct.snd_pci_quirk { i16 5421, i16 4226, i16 -1, i32 14 }, %struct.snd_pci_quirk { i16 5464, i16 4899, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 4901, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 5121, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 5123, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 5124, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 5281, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 16408, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 16409, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 16416, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 16545, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 16577, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 16593, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 20501, i16 -1, i32 217 }, %struct.snd_pci_quirk { i16 5464, i16 20503, i16 -1, i32 217 }, %struct.snd_pci_quirk { i16 5464, i16 20643, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 20659, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 20662, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 20664, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 20693, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 20705, i16 -1, i32 217 }, %struct.snd_pci_quirk { i16 5464, i16 20706, i16 -1, i32 217 }, %struct.snd_pci_quirk { i16 5464, i16 20720, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 20722, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 20723, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 20725, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 20726, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 20737, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 20823, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 20897, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 28833, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 28851, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 28914, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 28915, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 28916, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 28918, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 -32216, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 -31456, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 -31455, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 -31435, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 -31434, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 -31408, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 -31407, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 -31392, i16 -1, i32 12 }, %struct.snd_pci_quirk { i16 5464, i16 -31391, i16 -1, i32 12 }, %struct.snd_pci_quirk { i16 5464, i16 -31390, i16 -1, i32 20 }, %struct.snd_pci_quirk { i16 5464, i16 -31128, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 -31104, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 -31098, i16 -1, i32 219 }, %struct.snd_pci_quirk { i16 5464, i16 -30176, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 -30127, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 -29360, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 -27363, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 -27136, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 -27107, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 -26851, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 -23296, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 -23040, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 -20456, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 -20455, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 -20446, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 -16360, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 -16359, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 5464, i16 -16350, i16 -1, i32 140 }, %struct.snd_pci_quirk { i16 6058, i16 4150, i16 -1, i32 118 }, %struct.snd_pci_quirk { i16 6058, i16 4168, i16 -1, i32 209 }, %struct.snd_pci_quirk { i16 6058, i16 8434, i16 -1, i32 4 }, %struct.snd_pci_quirk { i16 6058, i16 8542, i16 -1, i32 4 }, %struct.snd_pci_quirk { i16 6058, i16 8632, i16 -1, i32 4 }, %struct.snd_pci_quirk { i16 6058, i16 8650, i16 -1, i32 4 }, %struct.snd_pci_quirk { i16 6058, i16 8681, i16 -1, i32 4 }, %struct.snd_pci_quirk { i16 6058, i16 8691, i16 -1, i32 31 }, %struct.snd_pci_quirk { i16 6058, i16 8694, i16 -1, i32 32 }, %struct.snd_pci_quirk { i16 6058, i16 8698, i16 -1, i32 31 }, %struct.snd_pci_quirk { i16 6058, i16 8699, i16 -1, i32 31 }, %struct.snd_pci_quirk { i16 6058, i16 8707, i16 -1, i32 31 }, %struct.snd_pci_quirk { i16 6058, i16 8712, i16 -1, i32 31 }, %struct.snd_pci_quirk { i16 6058, i16 8716, i16 -1, i32 73 }, %struct.snd_pci_quirk { i16 6058, i16 8718, i16 -1, i32 72 }, %struct.snd_pci_quirk { i16 6058, i16 8720, i16 -1, i32 72 }, %struct.snd_pci_quirk { i16 6058, i16 8721, i16 -1, i32 72 }, %struct.snd_pci_quirk { i16 6058, i16 8722, i16 -1, i32 72 }, %struct.snd_pci_quirk { i16 6058, i16 8724, i16 -1, i32 72 }, %struct.snd_pci_quirk { i16 6058, i16 8725, i16 -1, i32 50 }, %struct.snd_pci_quirk { i16 6058, i16 8728, i16 -1, i32 72 }, %struct.snd_pci_quirk { i16 6058, i16 8739, i16 -1, i32 72 }, %struct.snd_pci_quirk { i16 6058, i16 8742, i16 -1, i32 72 }, %struct.snd_pci_quirk { i16 6058, i16 8749, i16 -1, i32 127 }, %struct.snd_pci_quirk { i16 6058, i16 8750, i16 -1, i32 127 }, %struct.snd_pci_quirk { i16 6058, i16 8753, i16 -1, i32 107 }, %struct.snd_pci_quirk { i16 6058, i16 8755, i16 -1, i32 107 }, %struct.snd_pci_quirk { i16 6058, i16 8773, i16 -1, i32 127 }, %struct.snd_pci_quirk { i16 6058, i16 8774, i16 -1, i32 127 }, %struct.snd_pci_quirk { i16 6058, i16 8775, i16 -1, i32 127 }, %struct.snd_pci_quirk { i16 6058, i16 8777, i16 -1, i32 107 }, %struct.snd_pci_quirk { i16 6058, i16 8779, i16 -1, i32 127 }, %struct.snd_pci_quirk { i16 6058, i16 8780, i16 -1, i32 127 }, %struct.snd_pci_quirk { i16 6058, i16 8781, i16 -1, i32 127 }, %struct.snd_pci_quirk { i16 6058, i16 8797, i16 -1, i32 50 }, %struct.snd_pci_quirk { i16 6058, i16 8850, i16 -1, i32 158 }, %struct.snd_pci_quirk { i16 6058, i16 8894, i16 -1, i32 158 }, %struct.snd_pci_quirk { i16 6058, i16 8897, i16 -1, i32 195 }, %struct.snd_pci_quirk { i16 6058, i16 8898, i16 -1, i32 195 }, %struct.snd_pci_quirk { i16 6058, i16 8945, i16 -1, i32 223 }, %struct.snd_pci_quirk { i16 6058, i16 8946, i16 -1, i32 223 }, %struct.snd_pci_quirk { i16 6058, i16 8947, i16 -1, i32 223 }, %struct.snd_pci_quirk { i16 6058, i16 12475, i16 -1, i32 99 }, %struct.snd_pci_quirk { i16 6058, i16 12514, i16 -1, i32 99 }, %struct.snd_pci_quirk { i16 6058, i16 12556, i16 -1, i32 120 }, %struct.snd_pci_quirk { i16 6058, i16 12561, i16 -1, i32 120 }, %struct.snd_pci_quirk { i16 6058, i16 12586, i16 -1, i32 120 }, %struct.snd_pci_quirk { i16 6058, i16 12591, i16 -1, i32 120 }, %struct.snd_pci_quirk { i16 6058, i16 12604, i16 -1, i32 120 }, %struct.snd_pci_quirk { i16 6058, i16 12625, i16 -1, i32 74 }, %struct.snd_pci_quirk { i16 6058, i16 12662, i16 -1, i32 74 }, %struct.snd_pci_quirk { i16 6058, i16 12664, i16 -1, i32 74 }, %struct.snd_pci_quirk { i16 6058, i16 12719, i16 -1, i32 209 }, %struct.snd_pci_quirk { i16 6058, i16 14355, i16 -1, i32 212 }, %struct.snd_pci_quirk { i16 6058, i16 14360, i16 -1, i32 109 }, %struct.snd_pci_quirk { i16 6058, i16 14361, i16 -1, i32 215 }, %struct.snd_pci_quirk { i16 6058, i16 14372, i16 -1, i32 220 }, %struct.snd_pci_quirk { i16 6058, i16 14375, i16 -1, i32 203 }, %struct.snd_pci_quirk { i16 6058, i16 14388, i16 -1, i32 214 }, %struct.snd_pci_quirk { i16 6058, i16 14397, i16 -1, i32 220 }, %struct.snd_pci_quirk { i16 6058, i16 14403, i16 -1, i32 208 }, %struct.snd_pci_quirk { i16 6058, i16 14407, i16 -1, i32 222 }, %struct.snd_pci_quirk { i16 6058, i16 14410, i16 -1, i32 214 }, %struct.snd_pci_quirk { i16 6058, i16 14418, i16 -1, i32 214 }, %struct.snd_pci_quirk { i16 6058, i16 14419, i16 -1, i32 214 }, %struct.snd_pci_quirk { i16 6058, i16 14594, i16 -1, i32 64 }, %struct.snd_pci_quirk { i16 6058, i16 14711, i16 -1, i32 58 }, %struct.snd_pci_quirk { i16 6058, i16 14712, i16 -1, i32 64 }, %struct.snd_pci_quirk { i16 6058, i16 15352, i16 -1, i32 10 }, %struct.snd_pci_quirk { i16 6058, i16 20499, i16 -1, i32 50 }, %struct.snd_pci_quirk { i16 6058, i16 20506, i16 -1, i32 58 }, %struct.snd_pci_quirk { i16 6058, i16 20510, i16 -1, i32 72 }, %struct.snd_pci_quirk { i16 6058, i16 20518, i16 -1, i32 50 }, %struct.snd_pci_quirk { i16 6058, i16 20532, i16 -1, i32 72 }, %struct.snd_pci_quirk { i16 6058, i16 20534, i16 -1, i32 72 }, %struct.snd_pci_quirk { i16 6058, i16 20540, i16 -1, i32 72 }, %struct.snd_pci_quirk { i16 6058, i16 20554, i16 -1, i32 72 }, %struct.snd_pci_quirk { i16 6058, i16 20555, i16 -1, i32 98 }, %struct.snd_pci_quirk { i16 6058, i16 20560, i16 -1, i32 107 }, %struct.snd_pci_quirk { i16 6058, i16 20561, i16 -1, i32 107 }, %struct.snd_pci_quirk { i16 6058, i16 20563, i16 -1, i32 107 }, %struct.snd_pci_quirk { i16 6058, i16 20573, i16 -1, i32 127 }, %struct.snd_pci_quirk { i16 6058, i16 20575, i16 -1, i32 127 }, %struct.snd_pci_quirk { i16 6058, i16 20578, i16 -1, i32 127 }, %struct.snd_pci_quirk { i16 6058, i16 20745, i16 -1, i32 50 }, %struct.snd_pci_quirk { i16 6058, i16 20766, i16 -1, i32 127 }, %struct.snd_pci_quirk { i16 6058, i16 20767, i16 -1, i32 127 }, %struct.snd_pci_quirk { i16 6058, i16 -25004, i16 -1, i32 6 }, %struct.snd_pci_quirk { i16 6217, i16 4659, i16 -1, i32 218 }, %struct.snd_pci_quirk { i16 6629, i16 12804, i16 -1, i32 130 }, %struct.snd_pci_quirk { i16 6965, i16 4661, i16 -1, i32 181 }, %struct.snd_pci_quirk { i16 6965, i16 4662, i16 -1, i32 182 }, %struct.snd_pci_quirk { i16 6965, i16 4663, i16 -1, i32 183 }, %struct.snd_pci_quirk { i16 7037, i16 -22479, i16 -1, i32 54 }, %struct.snd_pci_quirk { i16 7174, i16 8211, i16 -1, i32 184 }, %struct.snd_pci_quirk { i16 7174, i16 8213, i16 -1, i32 185 }, %struct.snd_pci_quirk { i16 7429, i16 4402, i16 -1, i32 216 }, %struct.snd_pci_quirk { i16 7538, i16 5634, i16 -1, i32 190 }, %struct.snd_pci_quirk { i16 7538, i16 5889, i16 -1, i32 95 }, %struct.snd_pci_quirk { i16 7538, i16 6401, i16 -1, i32 149 }, %struct.snd_pci_quirk { i16 7538, i16 6471, i16 -1, i32 190 }, %struct.snd_pci_quirk { i16 -32634, i16 8308, i16 -1, i32 187 }, %struct.snd_pci_quirk { i16 -32634, i16 8320, i16 -1, i32 186 }, %struct.snd_pci_quirk { i16 -32634, i16 8321, i16 -1, i32 189 }, %struct.snd_pci_quirk zeroinitializer], align 4
@alc269_fixups = internal constant [225 x %struct.hda_fixup] [%struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc_fixup_gpio2 } }, %struct.hda_fixup { i32 4, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral } }, %struct.hda_fixup { i32 3, i8 1, i32 1, %union.anon.67 { ptr @alc275_fixup_gpio4_off } }, %struct.hda_fixup { i32 2, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.237 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc_fixup_sku_ignore } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.238 } }, %struct.hda_fixup { i32 2, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.239 } }, %struct.hda_fixup { i32 3, i8 1, i32 2, %union.anon.67 { ptr @alc269_fixup_hweq } }, %struct.hda_fixup { i32 3, i8 1, i32 1, %union.anon.67 { ptr @alc_fixup_disable_aamix } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc271_fixup_dmic } }, %struct.hda_fixup { i32 3, i8 1, i32 13, %union.anon.67 { ptr @alc269_fixup_pcm_44k } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc269_fixup_stereo_dmic } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc269_fixup_headset_mic } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc269_fixup_quanta_mute } }, %struct.hda_fixup { i32 1, i8 1, i32 13, %union.anon.67 { ptr @.compoundliteral.240 } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.241 } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.242 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc269_fixup_pincfg_no_hp_to_lineout } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc269_fixup_pincfg_U7x7_headset_mic } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.243 } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.244 } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.245 } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.246 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc269_fixup_hp_mute_led } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc269_fixup_hp_mute_led_mic1 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc269_fixup_hp_mute_led_mic2 } }, %struct.hda_fixup { i32 3, i8 1, i32 135, %union.anon.67 { ptr @alc269_fixup_hp_mute_led_mic3 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc269_fixup_hp_gpio_led } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc269_fixup_hp_gpio_mic1_led } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc269_fixup_hp_line1_mic1_led } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc_fixup_inv_dmic } }, %struct.hda_fixup { i32 1, i8 1, i32 35, %union.anon.67 { ptr @.compoundliteral.247 } }, %struct.hda_fixup { i32 3, i8 1, i32 31, %union.anon.67 { ptr @alc269_fixup_limit_int_mic_boost } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc_fixup_no_shutup } }, %struct.hda_fixup { i32 1, i8 1, i32 12, %union.anon.67 { ptr @.compoundliteral.248 } }, %struct.hda_fixup { i32 3, i8 1, i32 63, %union.anon.67 { ptr @alc269_fixup_pincfg_no_hp_to_lineout } }, %struct.hda_fixup { i32 1, i8 1, i32 40, %union.anon.67 { ptr @.compoundliteral.249 } }, %struct.hda_fixup { i32 1, i8 1, i32 41, %union.anon.67 { ptr @.compoundliteral.250 } }, %struct.hda_fixup { i32 1, i8 1, i32 41, %union.anon.67 { ptr @.compoundliteral.251 } }, %struct.hda_fixup { i32 1, i8 1, i32 40, %union.anon.67 { ptr @.compoundliteral.252 } }, %struct.hda_fixup { i32 3, i8 1, i32 75, %union.anon.67 { ptr @alc_fixup_headset_mode } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc_fixup_headset_mode_no_hp_mic } }, %struct.hda_fixup { i32 1, i8 1, i32 40, %union.anon.67 { ptr @.compoundliteral.253 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc269_fixup_x101_headset_mic } }, %struct.hda_fixup { i32 2, i8 1, i32 43, %union.anon.67 { ptr @.compoundliteral.254 } }, %struct.hda_fixup { i32 1, i8 1, i32 44, %union.anon.67 { ptr @.compoundliteral.255 } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.256 } }, %struct.hda_fixup { i32 3, i8 1, i32 46, %union.anon.67 { ptr @alc271_hp_gate_mic_jack } }, %struct.hda_fixup { i32 3, i8 1, i32 47, %union.anon.67 { ptr @alc269_fixup_limit_int_mic_boost } }, %struct.hda_fixup { i32 1, i8 1, i32 9, %union.anon.67 { ptr @.compoundliteral.257 } }, %struct.hda_fixup { i32 3, i8 1, i32 63, %union.anon.67 { ptr @alc269_fixup_limit_int_mic_boost } }, %struct.hda_fixup { i32 3, i8 1, i32 22, %union.anon.67 { ptr @alc269_fixup_limit_int_mic_boost } }, %struct.hda_fixup { i32 2, i8 1, i32 51, %union.anon.67 { ptr @.compoundliteral.258 } }, %struct.hda_fixup { i32 3, i8 1, i32 24, %union.anon.67 { ptr @alc269_fixup_limit_int_mic_boost } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.259 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc283_fixup_chromebook } }, %struct.hda_fixup { i32 3, i8 1, i32 55, %union.anon.67 { ptr @alc283_fixup_sense_combo_jack } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc282_fixup_asus_tx300 } }, %struct.hda_fixup { i32 2, i8 1, i32 50, %union.anon.67 { ptr @.compoundliteral.260 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc290_fixup_mono_speakers } }, %struct.hda_fixup { i32 3, i8 1, i32 38, %union.anon.67 { ptr @alc290_fixup_mono_speakers } }, %struct.hda_fixup { i32 1, i8 1, i32 59, %union.anon.67 { ptr @.compoundliteral.261 } }, %struct.hda_fixup { i32 1, i8 1, i32 60, %union.anon.67 { ptr @.compoundliteral.262 } }, %struct.hda_fixup { i32 3, i8 1, i32 4, %union.anon.67 { ptr @alc_fixup_thinkpad_acpi } }, %struct.hda_fixup { i32 3, i8 1, i32 63, %union.anon.67 { ptr @alc_fixup_inv_dmic } }, %struct.hda_fixup { i32 1, i8 1, i32 69, %union.anon.67 { ptr @.compoundliteral.263 } }, %struct.hda_fixup { i32 1, i8 1, i32 69, %union.anon.67 { ptr @.compoundliteral.264 } }, %struct.hda_fixup { i32 1, i8 1, i32 69, %union.anon.67 { ptr @.compoundliteral.265 } }, %struct.hda_fixup { i32 1, i8 1, i32 70, %union.anon.67 { ptr @.compoundliteral.266 } }, %struct.hda_fixup { i32 3, i8 1, i32 75, %union.anon.67 { ptr @alc_fixup_headset_mode_alc255 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc_fixup_headset_mode_alc255_no_hp_mic } }, %struct.hda_fixup { i32 1, i8 1, i32 40, %union.anon.67 { ptr @.compoundliteral.267 } }, %struct.hda_fixup { i32 3, i8 1, i32 50, %union.anon.67 { ptr @alc_fixup_tpt440_dock } }, %struct.hda_fixup { i32 3, i8 1, i32 72, %union.anon.67 { ptr @alc_fixup_disable_aamix } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.268 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc_fixup_micmute_led } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.269 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc269vb_fixup_aspire_e1_coef } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc280_fixup_hp_gpio4 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc286_fixup_hp_gpio_led } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc280_fixup_hp_gpio2_mic_hotkey } }, %struct.hda_fixup { i32 1, i8 1, i32 78, %union.anon.67 { ptr @.compoundliteral.270 } }, %struct.hda_fixup { i32 1, i8 1, i32 28, %union.anon.67 { ptr @.compoundliteral.271 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc280_fixup_hp_9480m } }, %struct.hda_fixup { i32 3, i8 1, i32 198, %union.anon.67 { ptr @alc245_fixup_hp_x360_amp } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc285_fixup_hp_spectre_x360_eb1 } }, %struct.hda_fixup { i32 3, i8 1, i32 75, %union.anon.67 { ptr @alc_fixup_headset_mode_dell_alc288 } }, %struct.hda_fixup { i32 1, i8 1, i32 86, %union.anon.67 { ptr @.compoundliteral.272 } }, %struct.hda_fixup { i32 3, i8 1, i32 89, %union.anon.67 { ptr @alc_fixup_dell_xps13 } }, %struct.hda_fixup { i32 3, i8 1, i32 87, %union.anon.67 { ptr @alc_fixup_disable_aamix } }, %struct.hda_fixup { i32 3, i8 1, i32 92, %union.anon.67 { ptr @alc_fixup_dell_xps13 } }, %struct.hda_fixup { i32 3, i8 2, i32 90, %union.anon.67 { ptr @alc_fixup_micmute_led } }, %struct.hda_fixup { i32 3, i8 1, i32 37, %union.anon.67 { ptr @alc_fixup_disable_aamix } }, %struct.hda_fixup { i32 3, i8 1, i32 71, %union.anon.67 { ptr @alc_fixup_disable_aamix } }, %struct.hda_fixup { i32 1, i8 2, i32 40, %union.anon.67 { ptr @.compoundliteral.273 } }, %struct.hda_fixup { i32 1, i8 1, i32 40, %union.anon.67 { ptr @.compoundliteral.274 } }, %struct.hda_fixup { i32 1, i8 1, i32 40, %union.anon.67 { ptr @.compoundliteral.275 } }, %struct.hda_fixup { i32 2, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.276 } }, %struct.hda_fixup { i32 3, i8 1, i32 63, %union.anon.67 { ptr @alc_fixup_disable_aamix } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc233_fixup_lenovo_line2_mic_hotkey } }, %struct.hda_fixup { i32 3, i8 1, i32 67, %union.anon.67 { ptr @alc_fixup_disable_aamix } }, %struct.hda_fixup { i32 3, i8 1, i32 36, %union.anon.67 { ptr @alc_fixup_disable_mic_vref } }, %struct.hda_fixup { i32 2, i8 1, i32 101, %union.anon.67 { ptr @.compoundliteral.277 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc295_fixup_disable_dac3 } }, %struct.hda_fixup { i32 3, i8 1, i32 63, %union.anon.67 { ptr @alc285_fixup_speaker2_to_dac1 } }, %struct.hda_fixup { i32 3, i8 1, i32 12, %union.anon.67 { ptr @alc_fixup_disable_aamix } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.278 } }, %struct.hda_fixup { i32 3, i8 1, i32 98, %union.anon.67 { ptr @alc_fixup_tpt440_dock } }, %struct.hda_fixup { i32 3, i8 1, i32 96, %union.anon.67 { ptr @alc298_fixup_speaker_volume } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc298_fixup_speaker_volume } }, %struct.hda_fixup { i32 1, i8 1, i32 67, %union.anon.67 { ptr @.compoundliteral.279 } }, %struct.hda_fixup { i32 3, i8 1, i32 33, %union.anon.67 { ptr @alc_fixup_auto_mute_via_amp } }, %struct.hda_fixup { i32 1, i8 1, i32 40, %union.anon.67 { ptr @.compoundliteral.280 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc_fixup_headset_mode } }, %struct.hda_fixup { i32 1, i8 1, i32 113, %union.anon.67 { ptr @.compoundliteral.281 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc_fixup_gpio4 } }, %struct.hda_fixup { i32 1, i8 1, i32 12, %union.anon.67 { ptr @.compoundliteral.282 } }, %struct.hda_fixup { i32 2, i8 1, i32 116, %union.anon.67 { ptr @.compoundliteral.283 } }, %struct.hda_fixup { i32 3, i8 1, i32 0, %union.anon.67 { ptr @alc233_alc662_fixup_lenovo_dual_codecs } }, %struct.hda_fixup { i32 2, i8 1, i32 116, %union.anon.67 { ptr @.compoundliteral.284 } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.285 } }, %struct.hda_fixup { i32 1, i8 1, i32 122, %union.anon.67 { ptr @.compoundliteral.286 } }, %struct.hda_fixup { i32 3, i8 1, i32 41, %union.anon.67 { ptr @alc225_fixup_s3_pop_noise } }, %struct.hda_fixup { i32 2, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.287 } }, %struct.hda_fixup { i32 3, i8 1, i32 36, %union.anon.67 { ptr @alc274_fixup_bind_dacs } }, %struct.hda_fixup { i32 1, i8 1, i32 124, %union.anon.67 { ptr @.compoundliteral.288 } }, %struct.hda_fixup { i32 3, i8 1, i32 98, %union.anon.67 { ptr @alc_fixup_tpt470_dock } }, %struct.hda_fixup { i32 3, i8 1, i32 126, %union.anon.67 { ptr @alc_fixup_tpt470_dacs } }, %struct.hda_fixup { i32 1, i8 1, i32 67, %union.anon.67 { ptr @.compoundliteral.289 } }, %struct.hda_fixup { i32 1, i8 1, i32 12, %union.anon.67 { ptr @.compoundliteral.290 } }, %struct.hda_fixup { i32 1, i8 1, i32 75, %union.anon.67 { ptr @.compoundliteral.291 } }, %struct.hda_fixup { i32 3, i8 1, i32 75, %union.anon.67 { ptr @alc298_fixup_huawei_mbx_stereo } }, %struct.hda_fixup { i32 3, i8 1, i32 26, %union.anon.67 { ptr @alc295_fixup_hp_top_speakers } }, %struct.hda_fixup { i32 1, i8 1, i32 12, %union.anon.67 { ptr @.compoundliteral.292 } }, %struct.hda_fixup { i32 3, i8 1, i32 63, %union.anon.67 { ptr @alc285_fixup_invalidate_dacs } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc_fixup_auto_mute_via_amp } }, %struct.hda_fixup { i32 1, i8 1, i32 12, %union.anon.67 { ptr @.compoundliteral.293 } }, %struct.hda_fixup { i32 1, i8 1, i32 12, %union.anon.67 { ptr @.compoundliteral.294 } }, %struct.hda_fixup { i32 1, i8 1, i32 12, %union.anon.67 { ptr @.compoundliteral.295 } }, %struct.hda_fixup { i32 2, i8 1, i32 138, %union.anon.67 { ptr @.compoundliteral.296 } }, %struct.hda_fixup { i32 1, i8 1, i32 41, %union.anon.67 { ptr @.compoundliteral.297 } }, %struct.hda_fixup { i32 2, i8 1, i32 134, %union.anon.67 { ptr @.compoundliteral.298 } }, %struct.hda_fixup { i32 1, i8 1, i32 70, %union.anon.67 { ptr @.compoundliteral.299 } }, %struct.hda_fixup { i32 3, i8 1, i32 144, %union.anon.67 { ptr @alc295_fixup_chromebook } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc_fixup_headset_jack } }, %struct.hda_fixup { i32 1, i8 1, i32 146, %union.anon.67 { ptr @.compoundliteral.300 } }, %struct.hda_fixup { i32 3, i8 1, i32 147, %union.anon.67 { ptr @alc_fixup_auto_mute_via_amp } }, %struct.hda_fixup { i32 3, i8 1, i32 41, %union.anon.67 { ptr @alc_fixup_disable_mic_vref } }, %struct.hda_fixup { i32 2, i8 1, i32 136, %union.anon.67 { ptr @.compoundliteral.301 } }, %struct.hda_fixup { i32 1, i8 1, i32 113, %union.anon.67 { ptr @.compoundliteral.302 } }, %struct.hda_fixup { i32 1, i8 1, i32 113, %union.anon.67 { ptr @.compoundliteral.303 } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.304 } }, %struct.hda_fixup { i32 1, i8 1, i32 113, %union.anon.67 { ptr @.compoundliteral.305 } }, %struct.hda_fixup { i32 1, i8 1, i32 39, %union.anon.67 { ptr @.compoundliteral.306 } }, %struct.hda_fixup { i32 3, i8 1, i32 153, %union.anon.67 { ptr @alc285_fixup_speaker2_to_dac1 } }, %struct.hda_fixup { i32 3, i8 1, i32 138, %union.anon.67 { ptr @alc285_fixup_speaker2_to_dac1 } }, %struct.hda_fixup { i32 3, i8 1, i32 155, %union.anon.67 { ptr @alc_fixup_gpio4 } }, %struct.hda_fixup { i32 3, i8 1, i32 63, %union.anon.67 { ptr @alc285_fixup_thinkpad_x1_gen7 } }, %struct.hda_fixup { i32 3, i8 1, i32 157, %union.anon.67 { ptr @alc_fixup_headset_jack } }, %struct.hda_fixup { i32 2, i8 1, i32 138, %union.anon.67 { ptr @.compoundliteral.307 } }, %struct.hda_fixup { i32 2, i8 1, i32 177, %union.anon.67 { ptr @.compoundliteral.308 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc294_fixup_gx502_hp } }, %struct.hda_fixup { i32 1, i8 1, i32 163, %union.anon.67 { ptr @.compoundliteral.309 } }, %struct.hda_fixup { i32 2, i8 1, i32 161, %union.anon.67 { ptr @.compoundliteral.310 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc294_fixup_gu502_hp } }, %struct.hda_fixup { i32 1, i8 1, i32 166, %union.anon.67 { ptr @.compoundliteral.311 } }, %struct.hda_fixup { i32 2, i8 1, i32 164, %union.anon.67 { ptr @.compoundliteral.312 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc285_fixup_hp_gpio_led } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc285_fixup_hp_mute_led } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc236_fixup_hp_gpio_led } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc236_fixup_hp_mute_led } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc236_fixup_hp_mute_led_micmute_vref } }, %struct.hda_fixup { i32 2, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.313 } }, %struct.hda_fixup { i32 1, i8 1, i32 40, %union.anon.67 { ptr @.compoundliteral.314 } }, %struct.hda_fixup { i32 1, i8 1, i32 12, %union.anon.67 { ptr @.compoundliteral.315 } }, %struct.hda_fixup { i32 1, i8 1, i32 12, %union.anon.67 { ptr @.compoundliteral.316 } }, %struct.hda_fixup { i32 1, i8 1, i32 12, %union.anon.67 { ptr @.compoundliteral.317 } }, %struct.hda_fixup { i32 3, i8 1, i32 178, %union.anon.67 { ptr @alc289_fixup_asus_ga401 } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.318 } }, %struct.hda_fixup { i32 1, i8 1, i32 113, %union.anon.67 { ptr @.compoundliteral.319 } }, %struct.hda_fixup { i32 3, i8 1, i32 167, %union.anon.67 { ptr @alc285_fixup_hp_gpio_amp_init } }, %struct.hda_fixup { i32 1, i8 0, i32 20, %union.anon.67 { ptr @.compoundliteral.320 } }, %struct.hda_fixup { i32 1, i8 0, i32 20, %union.anon.67 { ptr @.compoundliteral.321 } }, %struct.hda_fixup { i32 1, i8 0, i32 20, %union.anon.67 { ptr @.compoundliteral.322 } }, %struct.hda_fixup { i32 1, i8 0, i32 20, %union.anon.67 { ptr @.compoundliteral.323 } }, %struct.hda_fixup { i32 1, i8 0, i32 20, %union.anon.67 { ptr @.compoundliteral.324 } }, %struct.hda_fixup { i32 1, i8 1, i32 40, %union.anon.67 { ptr @.compoundliteral.325 } }, %struct.hda_fixup { i32 3, i8 1, i32 188, %union.anon.67 { ptr @alc_fixup_inv_dmic } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc269_fixup_limit_int_mic_boost } }, %struct.hda_fixup { i32 1, i8 1, i32 40, %union.anon.67 { ptr @.compoundliteral.326 } }, %struct.hda_fixup { i32 2, i8 1, i32 178, %union.anon.67 { ptr @.compoundliteral.327 } }, %struct.hda_fixup { i32 2, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.328 } }, %struct.hda_fixup { i32 3, i8 1, i32 191, %union.anon.67 { ptr @alc274_fixup_hp_headset_mic } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc274_fixup_hp_envy_gpio } }, %struct.hda_fixup { i32 2, i8 1, i32 138, %union.anon.67 { ptr @.compoundliteral.329 } }, %struct.hda_fixup { i32 3, i8 1, i32 63, %union.anon.67 { ptr @alc_fixup_headset_jack } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc287_fixup_hp_gpio_led } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc274_fixup_hp_headset_mic } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc245_fixup_hp_gpio_led } }, %struct.hda_fixup { i32 3, i8 1, i32 67, %union.anon.67 { ptr @alc_fixup_no_int_mic } }, %struct.hda_fixup { i32 1, i8 1, i32 40, %union.anon.67 { ptr @.compoundliteral.330 } }, %struct.hda_fixup { i32 3, i8 1, i32 65, %union.anon.67 { ptr @alc269_fixup_limit_int_mic_boost } }, %struct.hda_fixup { i32 1, i8 1, i32 41, %union.anon.67 { ptr @.compoundliteral.331 } }, %struct.hda_fixup { i32 3, i8 1, i32 63, %union.anon.67 { ptr @alc285_fixup_ideapad_s740_coef } }, %struct.hda_fixup { i32 3, i8 1, i32 168, %union.anon.67 { ptr @alc269_fixup_limit_int_mic_boost } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc295_fixup_asus_dacs } }, %struct.hda_fixup { i32 1, i8 1, i32 29, %union.anon.67 { ptr @.compoundliteral.332 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc285_fixup_hp_spectre_x360 } }, %struct.hda_fixup { i32 3, i8 1, i32 158, %union.anon.67 { ptr @alc285_fixup_ideapad_s740_coef } }, %struct.hda_fixup { i32 3, i8 1, i32 74, %union.anon.67 { ptr @alc_fixup_no_shutup } }, %struct.hda_fixup { i32 1, i8 1, i32 190, %union.anon.67 { ptr @.compoundliteral.333 } }, %struct.hda_fixup { i32 3, i8 1, i32 171, %union.anon.67 { ptr @alc269_fixup_limit_int_mic_boost } }, %struct.hda_fixup { i32 2, i8 1, i32 213, %union.anon.67 { ptr @.compoundliteral.334 } }, %struct.hda_fixup { i32 3, i8 1, i32 40, %union.anon.67 { ptr @alc287_fixup_legion_15imhg05_speakers } }, %struct.hda_fixup { i32 2, i8 1, i32 40, %union.anon.67 { ptr @.compoundliteral.335 } }, %struct.hda_fixup { i32 2, i8 1, i32 40, %union.anon.67 { ptr @.compoundliteral.336 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc256_fixup_set_coef_defaults } }, %struct.hda_fixup { i32 1, i8 1, i32 41, %union.anon.67 { ptr @.compoundliteral.337 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc233_fixup_no_audio_jack } }, %struct.hda_fixup { i32 3, i8 1, i32 41, %union.anon.67 { ptr @alc256_fixup_mic_no_presence_and_resume } }, %struct.hda_fixup { i32 3, i8 1, i32 221, %union.anon.67 { ptr @alc285_fixup_ideapad_s740_coef } }, %struct.hda_fixup { i32 3, i8 1, i32 63, %union.anon.67 { ptr @alc287_fixup_legion_15imhg05_speakers } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc287_fixup_legion_16achg6_speakers } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @cs35l41_fixup_i2c_two } }, %struct.hda_fixup { i32 2, i8 1, i32 168, %union.anon.67 { ptr @.compoundliteral.338 } }], align 4
@alc269_pin_fixup_tbl = internal constant [95 x %struct.snd_hda_pin_quirk] [%struct.snd_hda_pin_quirk { i32 283902497, i16 4156, ptr @.compoundliteral.365, i32 133 }, %struct.snd_hda_pin_quirk { i32 283902549, i16 4133, ptr @.compoundliteral.366, i32 65 }, %struct.snd_hda_pin_quirk { i32 283902549, i16 4163, ptr @.compoundliteral.367, i32 66 }, %struct.snd_hda_pin_quirk { i32 283902549, i16 4163, ptr @.compoundliteral.368, i32 66 }, %struct.snd_hda_pin_quirk { i32 283902501, i16 4136, ptr @.compoundliteral.369, i32 102 }, %struct.snd_hda_pin_quirk { i32 283902501, i16 4136, ptr @.compoundliteral.370, i32 102 }, %struct.snd_hda_pin_quirk { i32 283902501, i16 4136, ptr @.compoundliteral.371, i32 102 }, %struct.snd_hda_pin_quirk { i32 283902501, i16 4136, ptr @.compoundliteral.372, i32 102 }, %struct.snd_hda_pin_quirk { i32 283902501, i16 4136, ptr @.compoundliteral.373, i32 102 }, %struct.snd_hda_pin_quirk { i32 283902515, i16 -32634, ptr @.compoundliteral.374, i32 36 }, %struct.snd_hda_pin_quirk { i32 283902517, i16 6058, ptr @.compoundliteral.375, i32 99 }, %struct.snd_hda_pin_quirk { i32 283902517, i16 6058, ptr @.compoundliteral.376, i32 120 }, %struct.snd_hda_pin_quirk { i32 283902517, i16 6058, ptr @.compoundliteral.377, i32 120 }, %struct.snd_hda_pin_quirk { i32 283902517, i16 6058, ptr @.compoundliteral.378, i32 120 }, %struct.snd_hda_pin_quirk { i32 283902518, i16 4136, ptr @.compoundliteral.379, i32 199 }, %struct.snd_hda_pin_quirk { i32 283902518, i16 4156, ptr @.compoundliteral.380, i32 197 }, %struct.snd_hda_pin_quirk { i32 283902549, i16 4136, ptr @.compoundliteral.381, i32 68 }, %struct.snd_hda_pin_quirk { i32 283902549, i16 4136, ptr @.compoundliteral.382, i32 67 }, %struct.snd_hda_pin_quirk { i32 283902549, i16 4136, ptr @.compoundliteral.383, i32 67 }, %struct.snd_hda_pin_quirk { i32 283902549, i16 4136, ptr @.compoundliteral.384, i32 67 }, %struct.snd_hda_pin_quirk { i32 283902549, i16 4136, ptr @.compoundliteral.385, i32 67 }, %struct.snd_hda_pin_quirk { i32 283902549, i16 4136, ptr @.compoundliteral.386, i32 67 }, %struct.snd_hda_pin_quirk { i32 283902549, i16 4136, ptr @.compoundliteral.387, i32 67 }, %struct.snd_hda_pin_quirk { i32 283902549, i16 4136, ptr @.compoundliteral.388, i32 67 }, %struct.snd_hda_pin_quirk { i32 283902549, i16 4136, ptr @.compoundliteral.389, i32 67 }, %struct.snd_hda_pin_quirk { i32 283902549, i16 4136, ptr @.compoundliteral.390, i32 67 }, %struct.snd_hda_pin_quirk { i32 283902549, i16 4136, ptr @.compoundliteral.391, i32 67 }, %struct.snd_hda_pin_quirk { i32 283902549, i16 4136, ptr @.compoundliteral.392, i32 67 }, %struct.snd_hda_pin_quirk { i32 283902549, i16 4136, ptr @.compoundliteral.393, i32 67 }, %struct.snd_hda_pin_quirk { i32 283902549, i16 4136, ptr @.compoundliteral.394, i32 67 }, %struct.snd_hda_pin_quirk { i32 283902549, i16 4136, ptr @.compoundliteral.395, i32 67 }, %struct.snd_hda_pin_quirk { i32 283902549, i16 4136, ptr @.compoundliteral.396, i32 67 }, %struct.snd_hda_pin_quirk { i32 283902549, i16 4136, ptr @.compoundliteral.397, i32 67 }, %struct.snd_hda_pin_quirk { i32 283902549, i16 4136, ptr @.compoundliteral.398, i32 67 }, %struct.snd_hda_pin_quirk { i32 283902549, i16 4136, ptr @.compoundliteral.399, i32 67 }, %struct.snd_hda_pin_quirk { i32 283902549, i16 4136, ptr @.compoundliteral.400, i32 67 }, %struct.snd_hda_pin_quirk { i32 283902549, i16 4136, ptr @.compoundliteral.401, i32 67 }, %struct.snd_hda_pin_quirk { i32 283902550, i16 4163, ptr @.compoundliteral.402, i32 114 }, %struct.snd_hda_pin_quirk { i32 283902550, i16 4163, ptr @.compoundliteral.403, i32 114 }, %struct.snd_hda_pin_quirk { i32 283902550, i16 4163, ptr @.compoundliteral.404, i32 150 }, %struct.snd_hda_pin_quirk { i32 283902550, i16 4163, ptr @.compoundliteral.405, i32 150 }, %struct.snd_hda_pin_quirk { i32 283902550, i16 4163, ptr @.compoundliteral.406, i32 150 }, %struct.snd_hda_pin_quirk { i32 283902550, i16 4156, ptr @.compoundliteral.407, i32 197 }, %struct.snd_hda_pin_quirk { i32 283902580, i16 4156, ptr @.compoundliteral.408, i32 192 }, %struct.snd_hda_pin_quirk { i32 283902592, i16 4156, ptr @.compoundliteral.409, i32 78 }, %struct.snd_hda_pin_quirk { i32 283902592, i16 4156, ptr @.compoundliteral.410, i32 28 }, %struct.snd_hda_pin_quirk { i32 283902594, i16 4156, ptr @.compoundliteral.411, i32 24 }, %struct.snd_hda_pin_quirk { i32 283902594, i16 4156, ptr @.compoundliteral.412, i32 24 }, %struct.snd_hda_pin_quirk { i32 283902594, i16 4156, ptr @.compoundliteral.413, i32 24 }, %struct.snd_hda_pin_quirk { i32 283902594, i16 4156, ptr @.compoundliteral.414, i32 24 }, %struct.snd_hda_pin_quirk { i32 283902594, i16 4156, ptr @.compoundliteral.415, i32 29 }, %struct.snd_hda_pin_quirk { i32 283902594, i16 4133, ptr @.compoundliteral.416, i32 200 }, %struct.snd_hda_pin_quirk { i32 283902594, i16 4133, ptr @.compoundliteral.417, i32 200 }, %struct.snd_hda_pin_quirk { i32 283902595, i16 4136, ptr @.compoundliteral.418, i32 36 }, %struct.snd_hda_pin_quirk { i32 283902595, i16 4136, ptr @.compoundliteral.419, i32 36 }, %struct.snd_hda_pin_quirk { i32 283902595, i16 4136, ptr @.compoundliteral.420, i32 36 }, %struct.snd_hda_pin_quirk { i32 283902597, i16 6058, ptr @.compoundliteral.421, i32 141 }, %struct.snd_hda_pin_quirk { i32 283902597, i16 6058, ptr @.compoundliteral.422, i32 141 }, %struct.snd_hda_pin_quirk { i32 283902597, i16 6058, ptr @.compoundliteral.423, i32 195 }, %struct.snd_hda_pin_quirk { i32 283902599, i16 6058, ptr @.compoundliteral.424, i32 158 }, %struct.snd_hda_pin_quirk { i32 283902598, i16 4133, ptr @.compoundliteral.425, i32 136 }, %struct.snd_hda_pin_quirk { i32 283902600, i16 4136, ptr @.compoundliteral.426, i32 87 }, %struct.snd_hda_pin_quirk { i32 283902608, i16 4156, ptr @.compoundliteral.427, i32 24 }, %struct.snd_hda_pin_quirk { i32 283902608, i16 4156, ptr @.compoundliteral.428, i32 24 }, %struct.snd_hda_pin_quirk { i32 283902608, i16 4156, ptr @.compoundliteral.429, i32 24 }, %struct.snd_hda_pin_quirk { i32 283902608, i16 4156, ptr @.compoundliteral.430, i32 24 }, %struct.snd_hda_pin_quirk { i32 283902608, i16 4156, ptr @.compoundliteral.431, i32 24 }, %struct.snd_hda_pin_quirk { i32 283902608, i16 4156, ptr @.compoundliteral.432, i32 24 }, %struct.snd_hda_pin_quirk { i32 283902608, i16 4156, ptr @.compoundliteral.433, i32 24 }, %struct.snd_hda_pin_quirk { i32 283902610, i16 4136, ptr @.compoundliteral.434, i32 37 }, %struct.snd_hda_pin_quirk { i32 283902610, i16 4136, ptr @.compoundliteral.435, i32 37 }, %struct.snd_hda_pin_quirk { i32 283902610, i16 4136, ptr @.compoundliteral.436, i32 38 }, %struct.snd_hda_pin_quirk { i32 283902611, i16 4136, ptr @.compoundliteral.437, i32 71 }, %struct.snd_hda_pin_quirk { i32 283902611, i16 4136, ptr @.compoundliteral.438, i32 71 }, %struct.snd_hda_pin_quirk { i32 283902612, i16 4163, ptr @.compoundliteral.439, i32 159 }, %struct.snd_hda_pin_quirk { i32 283902612, i16 4163, ptr @.compoundliteral.440, i32 137 }, %struct.snd_hda_pin_quirk { i32 283902612, i16 4163, ptr @.compoundliteral.441, i32 139 }, %struct.snd_hda_pin_quirk { i32 283902612, i16 4163, ptr @.compoundliteral.442, i32 139 }, %struct.snd_hda_pin_quirk { i32 283902613, i16 4163, ptr @.compoundliteral.443, i32 139 }, %struct.snd_hda_pin_quirk { i32 283902613, i16 4163, ptr @.compoundliteral.444, i32 173 }, %struct.snd_hda_pin_quirk { i32 283902613, i16 4163, ptr @.compoundliteral.445, i32 173 }, %struct.snd_hda_pin_quirk { i32 283902613, i16 4163, ptr @.compoundliteral.446, i32 173 }, %struct.snd_hda_pin_quirk { i32 283902613, i16 4136, ptr @.compoundliteral.447, i32 39 }, %struct.snd_hda_pin_quirk { i32 283902613, i16 4136, ptr @.compoundliteral.448, i32 39 }, %struct.snd_hda_pin_quirk { i32 283902613, i16 4136, ptr @.compoundliteral.449, i32 36 }, %struct.snd_hda_pin_quirk { i32 283902613, i16 4136, ptr @.compoundliteral.450, i32 36 }, %struct.snd_hda_pin_quirk { i32 283902613, i16 4136, ptr @.compoundliteral.451, i32 36 }, %struct.snd_hda_pin_quirk { i32 283902616, i16 4136, ptr @.compoundliteral.452, i32 95 }, %struct.snd_hda_pin_quirk { i32 283902616, i16 4136, ptr @.compoundliteral.453, i32 95 }, %struct.snd_hda_pin_quirk { i32 283902616, i16 4136, ptr @.compoundliteral.454, i32 95 }, %struct.snd_hda_pin_quirk { i32 283902616, i16 4136, ptr @.compoundliteral.455, i32 108 }, %struct.snd_hda_pin_quirk { i32 283902616, i16 4136, ptr @.compoundliteral.456, i32 94 }, %struct.snd_hda_pin_quirk { i32 283902617, i16 4136, ptr @.compoundliteral.457, i32 39 }, %struct.snd_hda_pin_quirk { i32 283903523, i16 6058, ptr @.compoundliteral.458, i32 74 }, %struct.snd_hda_pin_quirk zeroinitializer], align 4
@alc269_fallback_pin_fixup_tbl = internal constant [5 x %struct.snd_hda_pin_quirk] [%struct.snd_hda_pin_quirk { i32 283902601, i16 4136, ptr @.compoundliteral.459, i32 39 }, %struct.snd_hda_pin_quirk { i32 283902550, i16 4136, ptr @.compoundliteral.460, i32 67 }, %struct.snd_hda_pin_quirk { i32 283902518, i16 4136, ptr @.compoundliteral.461, i32 67 }, %struct.snd_hda_pin_quirk { i32 283902580, i16 4136, ptr @.compoundliteral.462, i32 125 }, %struct.snd_hda_pin_quirk zeroinitializer], align 4
@alc269_fixup_vendor_tbl = internal constant [6 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4133, i16 0, i16 0, i32 9 }, %struct.snd_pci_quirk { i16 4156, i16 0, i16 0, i32 23 }, %struct.snd_pci_quirk { i16 4173, i16 0, i16 0, i32 1 }, %struct.snd_pci_quirk { i16 6058, i16 0, i16 0, i32 63 }, %struct.snd_pci_quirk { i16 6629, i16 0, i16 0, i32 75 }, %struct.snd_pci_quirk zeroinitializer], align 4
@alc_patch_ops = internal unnamed_addr constant %struct.hda_codec_ops { ptr @alc_build_controls, ptr @snd_hda_gen_build_pcms, ptr @alc_init, ptr @snd_hda_gen_free, ptr @snd_hda_jack_unsol_event, ptr null, ptr @alc_suspend, ptr @alc_resume, ptr @snd_hda_gen_check_power_status, ptr null }, align 4
@alc_alloc_spec.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.76 = private unnamed_addr constant [18 x i8] c"&spec->coef_mutex\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@alc_auto_setup_eapd.pins = internal unnamed_addr constant [6 x i16] [i16 15, i16 16, i16 20, i16 21, i16 23, i16 0], align 2
@.str.77 = private unnamed_addr constant [7 x i8] c"shutup\00", align 1
@rename_tbl = internal unnamed_addr constant [18 x %struct.alc_codec_rename_table] [%struct.alc_codec_rename_table { i32 283902497, i16 -4081, i16 4099, ptr @.str.5 }, %struct.alc_codec_rename_table { i32 283902569, i16 -16, i16 12304, ptr @.str.78 }, %struct.alc_codec_rename_table { i32 283902569, i16 -3856, i16 8208, ptr @.str.79 }, %struct.alc_codec_rename_table { i32 283902569, i16 -3856, i16 12304, ptr @.str.80 }, %struct.alc_codec_rename_table { i32 283902569, i16 240, i16 16, ptr @.str.81 }, %struct.alc_codec_rename_table { i32 283902569, i16 -1, i16 -24541, ptr @.str.79 }, %struct.alc_codec_rename_table { i32 283902569, i16 -1, i16 24611, ptr @.str.82 }, %struct.alc_codec_rename_table { i32 283902569, i16 240, i16 32, ptr @.str.83 }, %struct.alc_codec_rename_table { i32 283902569, i16 240, i16 48, ptr @.str.84 }, %struct.alc_codec_rename_table { i32 283903586, i16 -1, i16 16416, ptr @.str.85 }, %struct.alc_codec_rename_table { i32 283904135, i16 240, i16 48, ptr @.str.86 }, %struct.alc_codec_rename_table { i32 283904136, i16 240, i16 48, ptr @.str.87 }, %struct.alc_codec_rename_table { i32 283904136, i16 -3856, i16 12320, ptr @.str.88 }, %struct.alc_codec_rename_table { i32 283904153, i16 8192, i16 8192, ptr @.str.89 }, %struct.alc_codec_rename_table { i32 283904146, i16 -1, i16 -32736, ptr @.str.90 }, %struct.alc_codec_rename_table { i32 283904146, i16 -1, i16 -32751, ptr @.str.90 }, %struct.alc_codec_rename_table { i32 283904146, i16 -1, i16 16401, ptr @.str.85 }, %struct.alc_codec_rename_table zeroinitializer], align 4
@rename_pci_tbl = internal unnamed_addr constant [28 x %struct.alc_codec_rename_pci_table] [%struct.alc_codec_rename_pci_table { i32 283902592, i16 4136, i16 0, ptr @.str.91 }, %struct.alc_codec_rename_pci_table { i32 283902594, i16 4136, i16 0, ptr @.str.92 }, %struct.alc_codec_rename_pci_table { i32 283902595, i16 4136, i16 0, ptr @.str.93 }, %struct.alc_codec_rename_pci_table { i32 283902600, i16 4136, i16 0, ptr @.str.94 }, %struct.alc_codec_rename_pci_table { i32 283902610, i16 4136, i16 0, ptr @.str.95 }, %struct.alc_codec_rename_pci_table { i32 283902611, i16 4136, i16 0, ptr @.str.96 }, %struct.alc_codec_rename_pci_table { i32 283902549, i16 4136, i16 0, ptr @.str.97 }, %struct.alc_codec_rename_pci_table { i32 283903592, i16 4136, i16 0, ptr @.str.98 }, %struct.alc_codec_rename_pci_table { i32 283902581, i16 4136, i16 0, ptr @.str.99 }, %struct.alc_codec_rename_pci_table { i32 283904153, i16 4136, i16 0, ptr @.str.100 }, %struct.alc_codec_rename_pci_table { i32 283902616, i16 4136, i16 0, ptr @.str.101 }, %struct.alc_codec_rename_pci_table { i32 283902518, i16 4136, i16 0, ptr @.str.102 }, %struct.alc_codec_rename_pci_table { i32 283902550, i16 4136, i16 0, ptr @.str.103 }, %struct.alc_codec_rename_pci_table { i32 283902501, i16 4136, i16 0, ptr @.str.104 }, %struct.alc_codec_rename_pci_table { i32 283902613, i16 4136, i16 0, ptr @.str.105 }, %struct.alc_codec_rename_pci_table { i32 283902617, i16 4136, i16 0, ptr @.str.106 }, %struct.alc_codec_rename_pci_table { i32 283903600, i16 4133, i16 0, ptr @.str.107 }, %struct.alc_codec_rename_pci_table { i32 283903606, i16 4133, i16 0, ptr @.str.108 }, %struct.alc_codec_rename_pci_table { i32 283902594, i16 4163, i16 0, ptr @.str.109 }, %struct.alc_codec_rename_pci_table { i32 283902515, i16 4163, i16 0, ptr @.str.110 }, %struct.alc_codec_rename_pci_table { i32 283902592, i16 4156, i16 0, ptr @.str.111 }, %struct.alc_codec_rename_pci_table { i32 283902594, i16 4156, i16 0, ptr @.str.112 }, %struct.alc_codec_rename_pci_table { i32 283902598, i16 4156, i16 0, ptr @.str.113 }, %struct.alc_codec_rename_pci_table { i32 283902608, i16 4156, i16 0, ptr @.str.114 }, %struct.alc_codec_rename_pci_table { i32 283903592, i16 4156, i16 0, ptr @.str.115 }, %struct.alc_codec_rename_pci_table { i32 283902595, i16 6058, i16 0, ptr @.str.116 }, %struct.alc_codec_rename_pci_table { i32 283902610, i16 6058, i16 0, ptr @.str.117 }, %struct.alc_codec_rename_pci_table zeroinitializer], align 4
@.str.78 = private unnamed_addr constant [7 x i8] c"ALC277\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"ALC259\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"ALC258\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"ALC269VB\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"ALC281X\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"ALC269VC\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"ALC269VD\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"ALC656\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"ALC887-VD\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"ALC888-VD\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"ALC886\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"ALC899\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"ALC661\00", align 1
@.str.91 = private unnamed_addr constant [8 x i8] c"ALC3220\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"ALC3221\00", align 1
@.str.93 = private unnamed_addr constant [8 x i8] c"ALC3223\00", align 1
@.str.94 = private unnamed_addr constant [8 x i8] c"ALC3263\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"ALC3226\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"ALC3235\00", align 1
@.str.97 = private unnamed_addr constant [8 x i8] c"ALC3234\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c"ALC3661\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c"ALC3260\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"ALC3861\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c"ALC3266\00", align 1
@.str.102 = private unnamed_addr constant [8 x i8] c"ALC3204\00", align 1
@.str.103 = private unnamed_addr constant [8 x i8] c"ALC3246\00", align 1
@.str.104 = private unnamed_addr constant [8 x i8] c"ALC3253\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"ALC3254\00", align 1
@.str.106 = private unnamed_addr constant [8 x i8] c"ALC3271\00", align 1
@.str.107 = private unnamed_addr constant [8 x i8] c"ALC669X\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c"ALC679X\00", align 1
@.str.109 = private unnamed_addr constant [8 x i8] c"ALC3229\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"ALC3236\00", align 1
@.str.111 = private unnamed_addr constant [8 x i8] c"ALC3228\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c"ALC3227\00", align 1
@.str.113 = private unnamed_addr constant [8 x i8] c"ALC3242\00", align 1
@.str.114 = private unnamed_addr constant [8 x i8] c"ALC3241\00", align 1
@.str.115 = private unnamed_addr constant [8 x i8] c"ALC3662\00", align 1
@.str.116 = private unnamed_addr constant [8 x i8] c"ALC3239\00", align 1
@.str.117 = private unnamed_addr constant [8 x i8] c"ALC3232\00", align 1
@alc282_coefs = internal constant [30 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 3, i16 -1, i16 2 }, %struct.coef_fw { i8 32, i8 5, i16 -193, i16 1792 }, %struct.coef_fw { i8 32, i8 7, i16 -1, i16 512 }, %struct.coef_fw { i8 32, i8 6, i16 240, i16 0 }, %struct.coef_fw { i8 32, i8 8, i16 -4, i16 3116 }, %struct.coef_fw { i8 32, i8 10, i16 -1, i16 -13108 }, %struct.coef_fw { i8 32, i8 11, i16 -1, i16 -13108 }, %struct.coef_fw { i8 32, i8 14, i16 -1, i16 28160 }, %struct.coef_fw { i8 32, i8 15, i16 -2048, i16 4096 }, %struct.coef_fw { i8 32, i8 16, i16 -1024, i16 3072 }, %struct.coef_fw { i8 32, i8 111, i16 -1, i16 0 }, %struct.coef_fw { i8 32, i8 12, i16 -512, i16 0 }, %struct.coef_fw { i8 32, i8 52, i16 -1, i16 -24384 }, %struct.coef_fw { i8 32, i8 22, i16 8, i16 0 }, %struct.coef_fw { i8 32, i8 29, i16 224, i16 0 }, %struct.coef_fw { i8 32, i8 31, i16 224, i16 0 }, %struct.coef_fw { i8 32, i8 33, i16 -1, i16 -30716 }, %struct.coef_fw { i8 32, i8 99, i16 -1, i16 10498 }, %struct.coef_fw { i8 32, i8 104, i16 -1, i16 -24448 }, %struct.coef_fw { i8 32, i8 105, i16 -1, i16 13312 }, %struct.coef_fw { i8 32, i8 106, i16 -1, i16 12094 }, %struct.coef_fw { i8 32, i8 107, i16 -1, i16 0 }, %struct.coef_fw { i8 32, i8 109, i16 4095, i16 2304 }, %struct.coef_fw { i8 32, i8 110, i16 -1, i16 4362 }, %struct.coef_fw { i8 32, i8 112, i16 248, i16 216 }, %struct.coef_fw { i8 32, i8 113, i16 -1, i16 20 }, %struct.coef_fw { i8 32, i8 114, i16 -1, i16 -15686 }, %struct.coef_fw { i8 32, i8 119, i16 3968, i16 0 }, %struct.coef_fw { i8 32, i8 108, i16 -1, i16 -1018 }, %struct.coef_fw zeroinitializer], align 2
@alc283_coefs = internal constant [34 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 3, i16 -1, i16 2 }, %struct.coef_fw { i8 32, i8 5, i16 -193, i16 1792 }, %struct.coef_fw { i8 32, i8 7, i16 -1, i16 512 }, %struct.coef_fw { i8 32, i8 6, i16 240, i16 0 }, %struct.coef_fw { i8 32, i8 8, i16 -4, i16 3116 }, %struct.coef_fw { i8 32, i8 10, i16 -1, i16 -13108 }, %struct.coef_fw { i8 32, i8 11, i16 -1, i16 -13108 }, %struct.coef_fw { i8 32, i8 14, i16 -1, i16 28608 }, %struct.coef_fw { i8 32, i8 15, i16 -2048, i16 4096 }, %struct.coef_fw { i8 32, i8 16, i16 -1024, i16 3072 }, %struct.coef_fw { i8 32, i8 58, i16 -1, i16 0 }, %struct.coef_fw { i8 32, i8 12, i16 -512, i16 0 }, %struct.coef_fw { i8 32, i8 34, i16 -1, i16 -24384 }, %struct.coef_fw { i8 83, i8 1, i16 15, i16 8 }, %struct.coef_fw { i8 32, i8 29, i16 224, i16 0 }, %struct.coef_fw { i8 32, i8 31, i16 224, i16 0 }, %struct.coef_fw { i8 32, i8 33, i16 -1, i16 -30716 }, %struct.coef_fw { i8 32, i8 46, i16 -1, i16 10498 }, %struct.coef_fw { i8 32, i8 51, i16 -1, i16 -24448 }, %struct.coef_fw { i8 32, i8 52, i16 -1, i16 13312 }, %struct.coef_fw { i8 32, i8 53, i16 -1, i16 12094 }, %struct.coef_fw { i8 32, i8 54, i16 -1, i16 0 }, %struct.coef_fw { i8 32, i8 56, i16 4095, i16 2304 }, %struct.coef_fw { i8 32, i8 57, i16 -1, i16 4362 }, %struct.coef_fw { i8 32, i8 59, i16 248, i16 216 }, %struct.coef_fw { i8 32, i8 60, i16 -1, i16 20 }, %struct.coef_fw { i8 32, i8 61, i16 -1, i16 -15686 }, %struct.coef_fw { i8 32, i8 66, i16 3968, i16 0 }, %struct.coef_fw { i8 32, i8 73, i16 -1, i16 0 }, %struct.coef_fw { i8 32, i8 64, i16 -2048, i16 -26624 }, %struct.coef_fw { i8 32, i8 66, i16 -4096, i16 8192 }, %struct.coef_fw { i8 32, i8 55, i16 -1, i16 -1018 }, %struct.coef_fw { i8 32, i8 27, i16 -32768, i16 0 }, %struct.coef_fw zeroinitializer], align 2
@.str.118 = private unnamed_addr constant [12 x i8] c"laptop-amic\00", align 1
@.str.119 = private unnamed_addr constant [12 x i8] c"laptop-dmic\00", align 1
@.str.120 = private unnamed_addr constant [12 x i8] c"alc269-dmic\00", align 1
@.str.121 = private unnamed_addr constant [12 x i8] c"alc271-dmic\00", align 1
@.str.122 = private unnamed_addr constant [9 x i8] c"inv-dmic\00", align 1
@.str.123 = private unnamed_addr constant [12 x i8] c"headset-mic\00", align 1
@.str.124 = private unnamed_addr constant [13 x i8] c"headset-mode\00", align 1
@.str.125 = private unnamed_addr constant [23 x i8] c"headset-mode-no-hp-mic\00", align 1
@.str.126 = private unnamed_addr constant [12 x i8] c"lenovo-dock\00", align 1
@.str.127 = private unnamed_addr constant [24 x i8] c"lenovo-dock-limit-boost\00", align 1
@.str.128 = private unnamed_addr constant [12 x i8] c"hp-gpio-led\00", align 1
@.str.129 = private unnamed_addr constant [22 x i8] c"hp-dock-gpio-mic1-led\00", align 1
@.str.130 = private unnamed_addr constant [19 x i8] c"dell-headset-multi\00", align 1
@.str.131 = private unnamed_addr constant [18 x i8] c"dell-headset-dock\00", align 1
@.str.132 = private unnamed_addr constant [14 x i8] c"dell-headset3\00", align 1
@.str.133 = private unnamed_addr constant [14 x i8] c"dell-headset4\00", align 1
@.str.134 = private unnamed_addr constant [17 x i8] c"alc283-dac-wcaps\00", align 1
@.str.135 = private unnamed_addr constant [19 x i8] c"alc283-sense-combo\00", align 1
@.str.136 = private unnamed_addr constant [12 x i8] c"tpt440-dock\00", align 1
@.str.137 = private unnamed_addr constant [7 x i8] c"tpt440\00", align 1
@.str.138 = private unnamed_addr constant [7 x i8] c"tpt460\00", align 1
@.str.139 = private unnamed_addr constant [16 x i8] c"tpt470-dock-fix\00", align 1
@.str.140 = private unnamed_addr constant [12 x i8] c"tpt470-dock\00", align 1
@.str.141 = private unnamed_addr constant [12 x i8] c"dual-codecs\00", align 1
@.str.142 = private unnamed_addr constant [11 x i8] c"alc700-ref\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c"vaio\00", align 1
@.str.144 = private unnamed_addr constant [11 x i8] c"dell-m101z\00", align 1
@.str.145 = private unnamed_addr constant [11 x i8] c"asus-g73jw\00", align 1
@.str.146 = private unnamed_addr constant [12 x i8] c"lenovo-eapd\00", align 1
@.str.147 = private unnamed_addr constant [10 x i8] c"sony-hweq\00", align 1
@.str.148 = private unnamed_addr constant [7 x i8] c"pcm44k\00", align 1
@.str.149 = private unnamed_addr constant [9 x i8] c"lifebook\00", align 1
@.str.150 = private unnamed_addr constant [16 x i8] c"lifebook-extmic\00", align 1
@.str.151 = private unnamed_addr constant [16 x i8] c"lifebook-hp-pin\00", align 1
@.str.152 = private unnamed_addr constant [14 x i8] c"lifebook-u7x7\00", align 1
@.str.153 = private unnamed_addr constant [14 x i8] c"alc269vb-amic\00", align 1
@.str.154 = private unnamed_addr constant [14 x i8] c"alc269vb-dmic\00", align 1
@.str.155 = private unnamed_addr constant [17 x i8] c"hp-mute-led-mic1\00", align 1
@.str.156 = private unnamed_addr constant [17 x i8] c"hp-mute-led-mic2\00", align 1
@.str.157 = private unnamed_addr constant [17 x i8] c"hp-mute-led-mic3\00", align 1
@.str.158 = private unnamed_addr constant [13 x i8] c"hp-gpio-mic1\00", align 1
@.str.159 = private unnamed_addr constant [14 x i8] c"hp-line1-mic1\00", align 1
@.str.160 = private unnamed_addr constant [9 x i8] c"noshutup\00", align 1
@.str.161 = private unnamed_addr constant [11 x i8] c"sony-nomic\00", align 1
@.str.162 = private unnamed_addr constant [19 x i8] c"aspire-headset-mic\00", align 1
@.str.163 = private unnamed_addr constant [10 x i8] c"asus-x101\00", align 1
@.str.164 = private unnamed_addr constant [11 x i8] c"acer-ao7xx\00", align 1
@.str.165 = private unnamed_addr constant [15 x i8] c"acer-aspire-e1\00", align 1
@.str.166 = private unnamed_addr constant [11 x i8] c"acer-ac700\00", align 1
@.str.167 = private unnamed_addr constant [16 x i8] c"limit-mic-boost\00", align 1
@.str.168 = private unnamed_addr constant [13 x i8] c"asus-zenbook\00", align 1
@.str.169 = private unnamed_addr constant [19 x i8] c"asus-zenbook-ux31a\00", align 1
@.str.170 = private unnamed_addr constant [10 x i8] c"ordissimo\00", align 1
@.str.171 = private unnamed_addr constant [11 x i8] c"asus-tx300\00", align 1
@.str.172 = private unnamed_addr constant [15 x i8] c"alc283-int-mic\00", align 1
@.str.173 = private unnamed_addr constant [14 x i8] c"mono-speakers\00", align 1
@.str.174 = private unnamed_addr constant [17 x i8] c"alc290-subwoofer\00", align 1
@.str.175 = private unnamed_addr constant [9 x i8] c"thinkpad\00", align 1
@.str.176 = private unnamed_addr constant [14 x i8] c"dmic-thinkpad\00", align 1
@.str.177 = private unnamed_addr constant [12 x i8] c"alc255-acer\00", align 1
@.str.178 = private unnamed_addr constant [12 x i8] c"alc255-asus\00", align 1
@.str.179 = private unnamed_addr constant [13 x i8] c"alc255-dell1\00", align 1
@.str.180 = private unnamed_addr constant [13 x i8] c"alc255-dell2\00", align 1
@.str.181 = private unnamed_addr constant [13 x i8] c"alc293-dell1\00", align 1
@.str.182 = private unnamed_addr constant [15 x i8] c"alc283-headset\00", align 1
@.str.183 = private unnamed_addr constant [17 x i8] c"alc255-dell-mute\00", align 1
@.str.184 = private unnamed_addr constant [10 x i8] c"aspire-v5\00", align 1
@.str.185 = private unnamed_addr constant [15 x i8] c"aspire-e1-coef\00", align 1
@.str.186 = private unnamed_addr constant [9 x i8] c"hp-gpio4\00", align 1
@.str.187 = private unnamed_addr constant [16 x i8] c"hp-gpio2-hotkey\00", align 1
@.str.188 = private unnamed_addr constant [13 x i8] c"hp-dock-pins\00", align 1
@.str.189 = private unnamed_addr constant [17 x i8] c"hp-dock-gpio-mic\00", align 1
@.str.190 = private unnamed_addr constant [9 x i8] c"hp-9480m\00", align 1
@.str.191 = private unnamed_addr constant [20 x i8] c"alc288-dell-headset\00", align 1
@.str.192 = private unnamed_addr constant [13 x i8] c"alc288-dell1\00", align 1
@.str.193 = private unnamed_addr constant [18 x i8] c"alc288-dell-xps13\00", align 1
@.str.194 = private unnamed_addr constant [9 x i8] c"dell-e7x\00", align 1
@.str.195 = private unnamed_addr constant [12 x i8] c"alc293-dell\00", align 1
@.str.196 = private unnamed_addr constant [13 x i8] c"alc298-dell1\00", align 1
@.str.197 = private unnamed_addr constant [16 x i8] c"alc298-dell-aio\00", align 1
@.str.198 = private unnamed_addr constant [16 x i8] c"alc275-dell-xps\00", align 1
@.str.199 = private unnamed_addr constant [17 x i8] c"lenovo-spk-noise\00", align 1
@.str.200 = private unnamed_addr constant [14 x i8] c"lenovo-hotkey\00", align 1
@.str.201 = private unnamed_addr constant [15 x i8] c"dell-spk-noise\00", align 1
@.str.202 = private unnamed_addr constant [13 x i8] c"alc225-dell1\00", align 1
@.str.203 = private unnamed_addr constant [20 x i8] c"alc295-disable-dac3\00", align 1
@.str.204 = private unnamed_addr constant [24 x i8] c"alc285-speaker2-to-dac1\00", align 1
@.str.205 = private unnamed_addr constant [18 x i8] c"alc280-hp-headset\00", align 1
@.str.206 = private unnamed_addr constant [14 x i8] c"alc221-hp-mic\00", align 1
@.str.207 = private unnamed_addr constant [18 x i8] c"alc298-spk-volume\00", align 1
@.str.208 = private unnamed_addr constant [19 x i8] c"dell-inspiron-7559\00", align 1
@.str.209 = private unnamed_addr constant [10 x i8] c"ativ-book\00", align 1
@.str.210 = private unnamed_addr constant [20 x i8] c"alc256-asus-headset\00", align 1
@.str.211 = private unnamed_addr constant [16 x i8] c"alc256-asus-mic\00", align 1
@.str.212 = private unnamed_addr constant [16 x i8] c"alc256-asus-aio\00", align 1
@.str.213 = private unnamed_addr constant [12 x i8] c"alc233-asus\00", align 1
@.str.214 = private unnamed_addr constant [12 x i8] c"alc233-eapd\00", align 1
@.str.215 = private unnamed_addr constant [18 x i8] c"alc294-lenovo-mic\00", align 1
@.str.216 = private unnamed_addr constant [12 x i8] c"alc225-wyse\00", align 1
@.str.217 = private unnamed_addr constant [16 x i8] c"alc274-dell-aio\00", align 1
@.str.218 = private unnamed_addr constant [21 x i8] c"alc255-dummy-lineout\00", align 1
@.str.219 = private unnamed_addr constant [20 x i8] c"alc255-dell-headset\00", align 1
@.str.220 = private unnamed_addr constant [15 x i8] c"alc295-hp-x360\00", align 1
@.str.221 = private unnamed_addr constant [17 x i8] c"alc-headset-jack\00", align 1
@.str.222 = private unnamed_addr constant [16 x i8] c"alc-chrome-book\00", align 1
@.str.223 = private unnamed_addr constant [13 x i8] c"predator-spk\00", align 1
@.str.224 = private unnamed_addr constant [18 x i8] c"huawei-mbx-stereo\00", align 1
@.str.225 = private unnamed_addr constant [22 x i8] c"alc256-medion-headset\00", align 1
@.str.226 = private unnamed_addr constant [25 x i8] c"alc298-samsung-headphone\00", align 1
@.str.227 = private unnamed_addr constant [22 x i8] c"alc255-xiaomi-headset\00", align 1
@.str.228 = private unnamed_addr constant [21 x i8] c"alc274-hp-mic-detect\00", align 1
@.str.229 = private unnamed_addr constant [19 x i8] c"alc245-hp-x360-amp\00", align 1
@.str.230 = private unnamed_addr constant [15 x i8] c"alc295-hp-omen\00", align 1
@.str.231 = private unnamed_addr constant [23 x i8] c"alc285-hp-spectre-x360\00", align 1
@.str.232 = private unnamed_addr constant [27 x i8] c"alc285-hp-spectre-x360-eb1\00", align 1
@.str.233 = private unnamed_addr constant [28 x i8] c"alc287-ideapad-bass-spk-amp\00", align 1
@.str.234 = private unnamed_addr constant [32 x i8] c"alc623-lenovo-thinkstation-p340\00", align 1
@.str.235 = private unnamed_addr constant [30 x i8] c"alc255-acer-headphone-and-mic\00", align 1
@.str.236 = private unnamed_addr constant [19 x i8] c"alc285-hp-amp-init\00", align 1
@.compoundliteral = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 34 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.237 = internal constant [3 x %struct.hda_verb] [%struct.hda_verb { i16 32, i32 1280, i32 13 }, %struct.hda_verb { i16 32, i32 1024, i32 16448 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.238 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 23, i32 -1726807791 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.239 = internal constant [2 x %struct.hda_verb] [%struct.hda_verb { i16 20, i32 1804, i32 0 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.240 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 26, i32 553717823 }, %struct.hda_pintbl { i16 27, i32 597758016 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.241 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 27365436 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.242 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 33, i32 35721263 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.243 = internal constant [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1726807792 }, %struct.hda_pintbl { i16 21, i32 18956319 }, %struct.hda_pintbl { i16 24, i32 27368480 }, %struct.hda_pintbl { i16 25, i32 -1717368529 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.244 = internal constant [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1717368529 }, %struct.hda_pintbl { i16 20, i32 -1726807792 }, %struct.hda_pintbl { i16 21, i32 18956319 }, %struct.hda_pintbl { i16 24, i32 27368480 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.245 = internal constant [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1726807792 }, %struct.hda_pintbl { i16 24, i32 27368480 }, %struct.hda_pintbl { i16 25, i32 -1717368529 }, %struct.hda_pintbl { i16 33, i32 18956319 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.246 = internal constant [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1717368529 }, %struct.hda_pintbl { i16 20, i32 -1726807792 }, %struct.hda_pintbl { i16 24, i32 27368480 }, %struct.hda_pintbl { i16 33, i32 18956319 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.247 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 597758016 }, %struct.hda_pintbl { i16 27, i32 555814975 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.248 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 24, i32 27365692 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.249 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 27365692 }, %struct.hda_pintbl { i16 26, i32 27365693 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.250 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 22, i32 553730080 }, %struct.hda_pintbl { i16 25, i32 564236336 }, %struct.hda_pintbl { i16 26, i32 27365692 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.251 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 26, i32 27365692 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.252 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 27365692 }, %struct.hda_pintbl { i16 27, i32 27365693 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.253 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 27365692 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.254 = internal constant [4 x %struct.hda_verb] [%struct.hda_verb { i16 24, i32 1799, i32 0 }, %struct.hda_verb { i16 32, i32 1280, i32 8 }, %struct.hda_verb { i16 32, i32 1024, i32 784 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.255 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 24, i32 77666348 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.256 = internal constant [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1726807792 }, %struct.hda_pintbl { i16 25, i32 27368480 }, %struct.hda_pintbl { i16 27, i32 -1717108433 }, %struct.hda_pintbl { i16 33, i32 18956319 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.257 = internal constant [6 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1717368529 }, %struct.hda_pintbl { i16 20, i32 -1726807792 }, %struct.hda_pintbl { i16 24, i32 60890144 }, %struct.hda_pintbl { i16 30, i32 54923294 }, %struct.hda_pintbl { i16 33, i32 52498463 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.258 = internal constant [3 x %struct.hda_verb] [%struct.hda_verb { i16 32, i32 1280, i32 18 }, %struct.hda_verb { i16 32, i32 1024, i32 10240 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.259 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1717368529 }, %struct.hda_pintbl { i16 24, i32 60890400 }, %struct.hda_pintbl { i16 25, i32 1091637744 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.260 = internal constant [3 x %struct.hda_verb] [%struct.hda_verb { i16 32, i32 1280, i32 26 }, %struct.hda_verb { i16 32, i32 1024, i32 17 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.261 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 23, i32 -1877540590 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.262 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 23, i32 -1877540590 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.263 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 27365692 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.264 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 27365692 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.265 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 27365692 }, %struct.hda_pintbl { i16 26, i32 27365693 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.266 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 27365692 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.267 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 24, i32 27365693 }, %struct.hda_pintbl { i16 26, i32 27365692 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.268 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 77664496 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.269 = internal constant [11 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1868168912 }, %struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 23, i32 1073741832 }, %struct.hda_pintbl { i16 24, i32 1091637744 }, %struct.hda_pintbl { i16 25, i32 27365692 }, %struct.hda_pintbl { i16 26, i32 1091637744 }, %struct.hda_pintbl { i16 27, i32 1091637744 }, %struct.hda_pintbl { i16 29, i32 1090034477 }, %struct.hda_pintbl { i16 30, i32 1091637744 }, %struct.hda_pintbl { i16 33, i32 52498463 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.270 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 27, i32 553717792 }, %struct.hda_pintbl { i16 26, i32 27365436 }, %struct.hda_pintbl { i16 24, i32 562106431 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.271 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 27, i32 553717792 }, %struct.hda_pintbl { i16 24, i32 562106431 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.272 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 24, i32 27365692 }, %struct.hda_pintbl { i16 26, i32 27365693 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.273 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 24, i32 27365692 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.274 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 24, i32 27365692 }, %struct.hda_pintbl { i16 26, i32 27365693 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.275 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 24, i32 27365692 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.276 = internal constant [5 x %struct.hda_verb] [%struct.hda_verb { i16 32, i32 1280, i32 31 }, %struct.hda_verb { i16 32, i32 1024, i32 192 }, %struct.hda_verb { i16 32, i32 1280, i32 48 }, %struct.hda_verb { i16 32, i32 1024, i32 177 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.277 = internal constant [3 x %struct.hda_verb] [%struct.hda_verb { i16 32, i32 1280, i32 54 }, %struct.hda_verb { i16 32, i32 1024, i32 22487 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.278 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 44142624 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.279 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 27, i32 -1877540527 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.280 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 24, i32 27365692 }, %struct.hda_pintbl { i16 26, i32 27365693 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.281 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 19, i32 -1868168864 }, %struct.hda_pintbl { i16 25, i32 77664544 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.282 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 27365692 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.283 = internal constant [3 x %struct.hda_verb] [%struct.hda_verb { i16 32, i32 1280, i32 64 }, %struct.hda_verb { i16 32, i32 1024, i32 34816 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.284 = internal constant [3 x %struct.hda_verb] [%struct.hda_verb { i16 32, i32 1280, i32 69 }, %struct.hda_verb { i16 32, i32 1024, i32 20617 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.285 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 26, i32 77697088 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.286 = internal constant [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 22, i32 16846895 }, %struct.hda_pintbl { i16 25, i32 44142908 }, %struct.hda_pintbl { i16 26, i32 27365424 }, %struct.hda_pintbl { i16 27, i32 33624096 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.287 = internal constant [9 x %struct.hda_verb] [%struct.hda_verb { i16 32, i32 1280, i32 69 }, %struct.hda_verb { i16 32, i32 1024, i32 21129 }, %struct.hda_verb { i16 32, i32 1280, i32 74 }, %struct.hda_verb { i16 32, i32 1024, i32 27 }, %struct.hda_verb { i16 88, i32 1280, i32 0 }, %struct.hda_verb { i16 88, i32 1024, i32 14472 }, %struct.hda_verb { i16 32, i32 1280, i32 111 }, %struct.hda_verb { i16 32, i32 1024, i32 11275 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.288 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 27, i32 67178543 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.289 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 33624095 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.290 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 27365692 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.291 = internal constant [11 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1868168912 }, %struct.hda_pintbl { i16 19, i32 1073741824 }, %struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 24, i32 1091637744 }, %struct.hda_pintbl { i16 25, i32 77664320 }, %struct.hda_pintbl { i16 26, i32 1091637744 }, %struct.hda_pintbl { i16 27, i32 -1877540590 }, %struct.hda_pintbl { i16 29, i32 1081448965 }, %struct.hda_pintbl { i16 30, i32 1091637744 }, %struct.hda_pintbl { i16 33, i32 69275680 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.292 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 25243967 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.293 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 24, i32 27365692 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.294 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 19, i32 -1868168864 }, %struct.hda_pintbl { i16 25, i32 77664544 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.295 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 27332668 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.296 = internal constant [5 x %struct.hda_verb] [%struct.hda_verb { i16 32, i32 1280, i32 64 }, %struct.hda_verb { i16 32, i32 1024, i32 34816 }, %struct.hda_verb { i16 32, i32 1280, i32 15 }, %struct.hda_verb { i16 32, i32 1024, i32 30580 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.297 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 26, i32 27365692 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.298 = internal constant [3 x %struct.hda_verb] [%struct.hda_verb { i16 32, i32 1280, i32 54 }, %struct.hda_verb { i16 32, i32 1024, i32 22487 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.299 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 60887344 }, %struct.hda_pintbl { i16 26, i32 -1868168896 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.300 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 22, i32 16846880 }, %struct.hda_pintbl { i16 25, i32 27365692 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.301 = internal constant [3 x %struct.hda_verb] [%struct.hda_verb { i16 32, i32 1280, i32 79 }, %struct.hda_verb { i16 32, i32 1024, i32 20521 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.302 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 60887072 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.303 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 77664544 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.304 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 33, i32 -1877540528 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.305 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 77664320 }, %struct.hda_pintbl { i16 33, i32 69275680 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.306 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 23, i32 -1877540560 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.307 = internal constant [3 x %struct.hda_verb] [%struct.hda_verb { i16 32, i32 1280, i32 15 }, %struct.hda_verb { i16 32, i32 1024, i32 30580 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.308 = internal constant [3 x %struct.hda_verb] [%struct.hda_verb { i16 32, i32 1280, i32 27 }, %struct.hda_verb { i16 32, i32 1024, i32 20043 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.309 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 60887120 }, %struct.hda_pintbl { i16 26, i32 27334704 }, %struct.hda_pintbl { i16 33, i32 52498464 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.310 = internal constant [3 x %struct.hda_verb] [%struct.hda_verb { i16 21, i32 1799, i32 192 }, %struct.hda_verb { i16 21, i32 768, i32 45056 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.311 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 27332688 }, %struct.hda_pintbl { i16 26, i32 27334704 }, %struct.hda_pintbl { i16 33, i32 18944240 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.312 = internal constant [4 x %struct.hda_verb] [%struct.hda_verb { i16 21, i32 1799, i32 192 }, %struct.hda_verb { i16 21, i32 768, i32 45056 }, %struct.hda_verb { i16 27, i32 1799, i32 36 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.313 = internal constant [2 x %struct.hda_verb] [%struct.hda_verb { i16 26, i32 1799, i32 197 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.314 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 27365692 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.315 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877999328 }, %struct.hda_pintbl { i16 24, i32 44110320 }, %struct.hda_pintbl { i16 26, i32 16846880 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.316 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 24, i32 44109872 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.317 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 24, i32 27332912 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.318 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 60887072 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.319 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 44110112 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.320 = internal constant [11 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 1091637744 }, %struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 21, i32 53415968 }, %struct.hda_pintbl { i16 23, i32 1091637744 }, %struct.hda_pintbl { i16 24, i32 61542464 }, %struct.hda_pintbl { i16 25, i32 -1213791937 }, %struct.hda_pintbl { i16 26, i32 25243743 }, %struct.hda_pintbl { i16 27, i32 1091637744 }, %struct.hda_pintbl { i16 29, i32 1091637744 }, %struct.hda_pintbl { i16 30, i32 1091637744 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.321 = internal constant [12 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 1073790976 }, %struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 21, i32 69287967 }, %struct.hda_pintbl { i16 23, i32 1091637744 }, %struct.hda_pintbl { i16 24, i32 77697056 }, %struct.hda_pintbl { i16 25, i32 1091637744 }, %struct.hda_pintbl { i16 26, i32 1091637744 }, %struct.hda_pintbl { i16 27, i32 1091637744 }, %struct.hda_pintbl { i16 29, i32 1078232325 }, %struct.hda_pintbl { i16 30, i32 1091637744 }, %struct.hda_pintbl { i16 32, i32 -2147418113 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.322 = internal constant [12 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 1073741824 }, %struct.hda_pintbl { i16 20, i32 16859152 }, %struct.hda_pintbl { i16 21, i32 1091637744 }, %struct.hda_pintbl { i16 22, i32 1091637744 }, %struct.hda_pintbl { i16 24, i32 27365408 }, %struct.hda_pintbl { i16 25, i32 44142625 }, %struct.hda_pintbl { i16 26, i32 25243695 }, %struct.hda_pintbl { i16 27, i32 35733535 }, %struct.hda_pintbl { i16 28, i32 1091637744 }, %struct.hda_pintbl { i16 29, i32 1078248961 }, %struct.hda_pintbl { i16 30, i32 1091637744 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.323 = internal constant [12 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 1073741824 }, %struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 23, i32 1091637744 }, %struct.hda_pintbl { i16 24, i32 60919872 }, %struct.hda_pintbl { i16 25, i32 -1868103376 }, %struct.hda_pintbl { i16 26, i32 1091637744 }, %struct.hda_pintbl { i16 27, i32 1091637744 }, %struct.hda_pintbl { i16 29, i32 1078500653 }, %struct.hda_pintbl { i16 30, i32 1091637744 }, %struct.hda_pintbl { i16 32, i32 262143 }, %struct.hda_pintbl { i16 33, i32 52510752 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.324 = internal constant [6 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1726807792 }, %struct.hda_pintbl { i16 21, i32 18956319 }, %struct.hda_pintbl { i16 24, i32 27368480 }, %struct.hda_pintbl { i16 25, i32 -1717368529 }, %struct.hda_pintbl { i16 27, i32 33636383 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.325 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 27, i32 27365692 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.326 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 27365692 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.327 = internal constant [3 x %struct.hda_verb] [%struct.hda_verb { i16 32, i32 1280, i32 69 }, %struct.hda_verb { i16 32, i32 1024, i32 20617 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.328 = internal constant [3 x %struct.hda_verb] [%struct.hda_verb { i16 32, i32 1280, i32 69 }, %struct.hda_verb { i16 32, i32 1024, i32 20617 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.329 = internal constant [3 x %struct.hda_verb] [%struct.hda_verb { i16 32, i32 1280, i32 15 }, %struct.hda_verb { i16 32, i32 1024, i32 30584 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.330 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 27, i32 1091637744 }, %struct.hda_pintbl { i16 24, i32 27365692 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.331 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 44110140 }, %struct.hda_pintbl { i16 26, i32 -1868494545 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.332 = internal constant [13 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1213857488 }, %struct.hda_pintbl { i16 19, i32 1073741824 }, %struct.hda_pintbl { i16 20, i32 1091637744 }, %struct.hda_pintbl { i16 22, i32 1091637744 }, %struct.hda_pintbl { i16 23, i32 -1877540592 }, %struct.hda_pintbl { i16 24, i32 1091637744 }, %struct.hda_pintbl { i16 25, i32 44109872 }, %struct.hda_pintbl { i16 26, i32 1091637744 }, %struct.hda_pintbl { i16 27, i32 77697072 }, %struct.hda_pintbl { i16 29, i32 1080033281 }, %struct.hda_pintbl { i16 30, i32 1091637744 }, %struct.hda_pintbl { i16 33, i32 52498464 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.333 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 33, i32 52498480 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.334 = internal constant [25 x %struct.hda_verb] [%struct.hda_verb { i16 32, i32 1280, i32 36 }, %struct.hda_verb { i16 32, i32 1024, i32 65 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 12 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 26 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 2 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 36 }, %struct.hda_verb { i16 32, i32 1024, i32 66 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 12 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 42 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 2 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.335 = internal constant [25 x %struct.hda_verb] [%struct.hda_verb { i16 32, i32 1280, i32 36 }, %struct.hda_verb { i16 32, i32 1024, i32 65 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 12 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 26 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 2 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 36 }, %struct.hda_verb { i16 32, i32 1024, i32 70 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 12 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 42 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 2 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.336 = internal constant [15 x %struct.hda_verb] [%struct.hda_verb { i16 32, i32 1280, i32 36 }, %struct.hda_verb { i16 32, i32 1024, i32 65 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 2 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 36 }, %struct.hda_verb { i16 32, i32 1024, i32 66 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 2 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.337 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 60887328 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.338 = internal constant [3 x %struct.hda_verb] [%struct.hda_verb { i16 32, i32 1280, i32 25 }, %struct.hda_verb { i16 32, i32 1024, i32 36369 }, %struct.hda_verb zeroinitializer], align 4
@alc271_fixup_dmic.verbs = internal constant [3 x %struct.hda_verb] [%struct.hda_verb { i16 32, i32 1280, i32 13 }, %struct.hda_verb { i16 32, i32 1024, i32 16384 }, %struct.hda_verb zeroinitializer], align 4
@alc269_44k_pcm_analog_playback = internal constant %struct.hda_pcm_stream { i32 0, i32 0, i32 0, i16 0, i32 64, i64 0, i32 0, ptr null, %struct.hda_pcm_ops zeroinitializer }, align 8
@alc269_44k_pcm_analog_capture = internal constant %struct.hda_pcm_stream { i32 0, i32 0, i32 0, i16 0, i32 64, i64 0, i32 0, ptr null, %struct.hda_pcm_ops zeroinitializer }, align 8
@.str.339 = private unnamed_addr constant [18 x i8] c"HP_Mute_LED_%d_%x\00", align 1
@.str.340 = private unnamed_addr constant [30 x i8] c"sound/pci/hda/patch_realtek.c\00", align 1
@alc_headset_mode_unplugged.coef0255 = internal constant [6 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 27, i16 -1, i16 3083 }, %struct.coef_fw { i8 32, i8 69, i16 -1, i16 -12151 }, %struct.coef_fw { i8 87, i8 5, i16 16384, i16 0 }, %struct.coef_fw { i8 32, i8 6, i16 -1, i16 24836 }, %struct.coef_fw { i8 87, i8 3, i16 -1, i16 -30042 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_unplugged.coef0256 = internal constant [6 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 27, i16 -1, i16 3147 }, %struct.coef_fw { i8 32, i8 69, i16 -1, i16 -12151 }, %struct.coef_fw { i8 32, i8 6, i16 -1, i16 24836 }, %struct.coef_fw { i8 87, i8 3, i16 -1, i16 2467 }, %struct.coef_fw { i8 87, i8 5, i16 16384, i16 0 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_unplugged.coef0233 = internal constant [8 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 27, i16 -1, i16 3083 }, %struct.coef_fw { i8 32, i8 69, i16 -1, i16 -15319 }, %struct.coef_fw { i8 32, i8 53, i16 16384, i16 0 }, %struct.coef_fw { i8 32, i8 6, i16 -1, i16 8452 }, %struct.coef_fw { i8 32, i8 26, i16 -1, i16 1 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 4 }, %struct.coef_fw { i8 32, i8 50, i16 -1, i16 17059 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_unplugged.coef0288 = internal constant [6 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 79, i16 -832, i16 -15360 }, %struct.coef_fw { i8 32, i8 80, i16 8192, i16 8192 }, %struct.coef_fw { i8 32, i8 86, i16 6, i16 6 }, %struct.coef_fw { i8 32, i8 102, i16 8, i16 0 }, %struct.coef_fw { i8 32, i8 103, i16 8192, i16 0 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_unplugged.coef0298 = internal constant [2 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 25, i16 4864, i16 768 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_unplugged.coef0292 = internal constant [5 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 118, i16 -1, i16 14 }, %struct.coef_fw { i8 32, i8 108, i16 -1, i16 9216 }, %struct.coef_fw { i8 32, i8 24, i16 -1, i16 29448 }, %struct.coef_fw { i8 32, i8 107, i16 -1, i16 -15319 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_unplugged.coef0293 = internal constant [7 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 16, i16 1792, i16 1536 }, %struct.coef_fw { i8 87, i8 5, i16 -24576, i16 0 }, %struct.coef_fw { i8 87, i8 3, i16 1024, i16 1024 }, %struct.coef_fw { i8 32, i8 26, i16 8, i16 8 }, %struct.coef_fw { i8 32, i8 69, i16 -1, i16 -15319 }, %struct.coef_fw { i8 32, i8 74, i16 15, i16 14 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_unplugged.coef0668 = internal constant [3 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 21, i16 -1, i16 3392 }, %struct.coef_fw { i8 32, i8 -73, i16 -1, i16 -32725 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_unplugged.coef0225 = internal constant [2 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 99, i16 -16384, i16 0 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_unplugged.coef0274 = internal constant [8 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 74, i16 256, i16 0 }, %struct.coef_fw { i8 87, i8 5, i16 16384, i16 0 }, %struct.coef_fw { i8 32, i8 107, i16 -4096, i16 20480 }, %struct.coef_fw { i8 32, i8 74, i16 16, i16 0 }, %struct.coef_fw { i8 32, i8 74, i16 3072, i16 3072 }, %struct.coef_fw { i8 32, i8 69, i16 -1, i16 21129 }, %struct.coef_fw { i8 32, i8 74, i16 3072, i16 0 }, %struct.coef_fw zeroinitializer], align 2
@alc225_pre_hsmode = internal constant [8 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 74, i16 256, i16 0 }, %struct.coef_fw { i8 87, i8 5, i16 16384, i16 0 }, %struct.coef_fw { i8 32, i8 99, i16 -16384, i16 -16384 }, %struct.coef_fw { i8 32, i8 74, i16 48, i16 32 }, %struct.coef_fw { i8 32, i8 74, i16 3072, i16 3072 }, %struct.coef_fw { i8 32, i8 69, i16 -1024, i16 -12288 }, %struct.coef_fw { i8 32, i8 74, i16 3072, i16 0 }, %struct.coef_fw zeroinitializer], align 2
@alc_determine_headset_type.coef0255 = internal constant [3 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 69, i16 -1, i16 -12151 }, %struct.coef_fw { i8 32, i8 73, i16 -1, i16 329 }, %struct.coef_fw zeroinitializer], align 2
@alc_determine_headset_type.coef0288 = internal constant [2 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 79, i16 -832, i16 -11264 }, %struct.coef_fw zeroinitializer], align 2
@alc_determine_headset_type.coef0298 = internal constant [6 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 80, i16 8192, i16 8192 }, %struct.coef_fw { i8 32, i8 86, i16 6, i16 6 }, %struct.coef_fw { i8 32, i8 102, i16 8, i16 0 }, %struct.coef_fw { i8 32, i8 103, i16 8192, i16 0 }, %struct.coef_fw { i8 32, i8 25, i16 4864, i16 4864 }, %struct.coef_fw zeroinitializer], align 2
@alc_determine_headset_type.coef0293 = internal constant [3 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 74, i16 15, i16 8 }, %struct.coef_fw { i8 32, i8 69, i16 -1, i16 -11223 }, %struct.coef_fw zeroinitializer], align 2
@alc_determine_headset_type.coef0688 = internal constant [5 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 17, i16 -1, i16 1 }, %struct.coef_fw { i8 32, i8 -73, i16 -1, i16 -32725 }, %struct.coef_fw { i8 32, i8 21, i16 -1, i16 3424 }, %struct.coef_fw { i8 32, i8 -61, i16 -1, i16 3072 }, %struct.coef_fw zeroinitializer], align 2
@alc_determine_headset_type.coef0274 = internal constant [5 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 74, i16 16, i16 0 }, %struct.coef_fw { i8 32, i8 74, i16 -32768, i16 0 }, %struct.coef_fw { i8 32, i8 69, i16 -1, i16 -11639 }, %struct.coef_fw { i8 32, i8 73, i16 768, i16 768 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_ctia.coef0255 = internal constant [4 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 69, i16 -1, i16 -11127 }, %struct.coef_fw { i8 32, i8 27, i16 -1, i16 3115 }, %struct.coef_fw { i8 87, i8 3, i16 -1, i16 -29018 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_ctia.coef0256 = internal constant [3 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 69, i16 -1, i16 -11127 }, %struct.coef_fw { i8 32, i8 27, i16 -1, i16 3691 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_ctia.coef0233 = internal constant [4 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 69, i16 -1, i16 -11223 }, %struct.coef_fw { i8 32, i8 27, i16 -1, i16 3115 }, %struct.coef_fw { i8 32, i8 50, i16 -1, i16 20131 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_ctia.coef0288 = internal constant [5 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 80, i16 8192, i16 8192 }, %struct.coef_fw { i8 32, i8 86, i16 6, i16 6 }, %struct.coef_fw { i8 32, i8 102, i16 8, i16 0 }, %struct.coef_fw { i8 32, i8 103, i16 8192, i16 0 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_ctia.coef0292 = internal constant [4 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 107, i16 -1, i16 -11223 }, %struct.coef_fw { i8 32, i8 118, i16 -1, i16 8 }, %struct.coef_fw { i8 32, i8 24, i16 -1, i16 29576 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_ctia.coef0293 = internal constant [3 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 69, i16 -1, i16 -11223 }, %struct.coef_fw { i8 32, i8 16, i16 1792, i16 1792 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_ctia.coef0688 = internal constant [4 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 17, i16 -1, i16 1 }, %struct.coef_fw { i8 32, i8 21, i16 -1, i16 3424 }, %struct.coef_fw { i8 32, i8 -61, i16 -1, i16 0 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_ctia.coef0225_1 = internal constant [3 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 69, i16 -1024, i16 -11264 }, %struct.coef_fw { i8 32, i8 99, i16 -16384, i16 -32768 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_ctia.coef0225_2 = internal constant [3 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 69, i16 -1024, i16 -11264 }, %struct.coef_fw { i8 32, i8 99, i16 -16384, i16 16384 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_omtp.coef0255 = internal constant [4 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 69, i16 -1, i16 -7031 }, %struct.coef_fw { i8 32, i8 27, i16 -1, i16 3115 }, %struct.coef_fw { i8 87, i8 3, i16 -1, i16 -29018 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_omtp.coef0256 = internal constant [3 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 69, i16 -1, i16 -7031 }, %struct.coef_fw { i8 32, i8 27, i16 -1, i16 3691 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_omtp.coef0233 = internal constant [4 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 69, i16 -1, i16 -7127 }, %struct.coef_fw { i8 32, i8 27, i16 -1, i16 3115 }, %struct.coef_fw { i8 32, i8 50, i16 -1, i16 20131 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_omtp.coef0288 = internal constant [5 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 80, i16 8192, i16 8192 }, %struct.coef_fw { i8 32, i8 86, i16 6, i16 6 }, %struct.coef_fw { i8 32, i8 102, i16 8, i16 0 }, %struct.coef_fw { i8 32, i8 103, i16 8192, i16 0 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_omtp.coef0292 = internal constant [4 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 107, i16 -1, i16 -7127 }, %struct.coef_fw { i8 32, i8 118, i16 -1, i16 8 }, %struct.coef_fw { i8 32, i8 24, i16 -1, i16 29576 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_omtp.coef0293 = internal constant [3 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 69, i16 -1, i16 -7127 }, %struct.coef_fw { i8 32, i8 16, i16 1792, i16 1792 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_omtp.coef0688 = internal constant [4 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 17, i16 -1, i16 1 }, %struct.coef_fw { i8 32, i8 21, i16 -1, i16 3408 }, %struct.coef_fw { i8 32, i8 -61, i16 -1, i16 0 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_omtp.coef0225 = internal constant [3 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 69, i16 -1024, i16 -7168 }, %struct.coef_fw { i8 32, i8 99, i16 -16384, i16 -32768 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_mic_in.coef0255 = internal constant [3 x %struct.coef_fw] [%struct.coef_fw { i8 87, i8 3, i16 -1, i16 -30042 }, %struct.coef_fw { i8 32, i8 6, i16 -1, i16 24832 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_mic_in.coef0256 = internal constant [4 x %struct.coef_fw] [%struct.coef_fw { i8 87, i8 5, i16 16384, i16 16384 }, %struct.coef_fw { i8 87, i8 3, i16 -1, i16 2467 }, %struct.coef_fw { i8 32, i8 6, i16 -1, i16 24832 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_mic_in.coef0233 = internal constant [5 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 53, i16 0, i16 16384 }, %struct.coef_fw { i8 32, i8 6, i16 -1, i16 8448 }, %struct.coef_fw { i8 32, i8 26, i16 -1, i16 33 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 140 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_mic_in.coef0288 = internal constant [7 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 79, i16 192, i16 0 }, %struct.coef_fw { i8 32, i8 80, i16 8192, i16 0 }, %struct.coef_fw { i8 32, i8 86, i16 6, i16 0 }, %struct.coef_fw { i8 32, i8 79, i16 -832, i16 -15360 }, %struct.coef_fw { i8 32, i8 102, i16 8, i16 8 }, %struct.coef_fw { i8 32, i8 103, i16 8192, i16 8192 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_mic_in.coef0292 = internal constant [3 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 25, i16 -1, i16 -24056 }, %struct.coef_fw { i8 32, i8 46, i16 -1, i16 -21264 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_mic_in.coef0293 = internal constant [4 x %struct.coef_fw] [%struct.coef_fw { i8 87, i8 5, i16 0, i16 -24576 }, %struct.coef_fw { i8 87, i8 3, i16 1024, i16 0 }, %struct.coef_fw { i8 32, i8 26, i16 8, i16 0 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_mic_in.coef0688 = internal constant [4 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 -73, i16 -1, i16 -32725 }, %struct.coef_fw { i8 32, i8 -75, i16 -1, i16 4160 }, %struct.coef_fw { i8 32, i8 -61, i16 0, i16 4096 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_mic_in.coef0225 = internal constant [4 x %struct.coef_fw] [%struct.coef_fw { i8 87, i8 5, i16 16384, i16 16384 }, %struct.coef_fw { i8 32, i8 74, i16 48, i16 32 }, %struct.coef_fw { i8 32, i8 99, i16 -16384, i16 0 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_mic_in.coef0274 = internal constant [4 x %struct.coef_fw] [%struct.coef_fw { i8 87, i8 5, i16 16384, i16 16384 }, %struct.coef_fw { i8 32, i8 74, i16 16, i16 0 }, %struct.coef_fw { i8 32, i8 107, i16 -4096, i16 0 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_default.coef0225 = internal constant [7 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 69, i16 -1024, i16 -16384 }, %struct.coef_fw { i8 32, i8 69, i16 -1024, i16 -15360 }, %struct.coef_fw { i8 32, i8 73, i16 768, i16 0 }, %struct.coef_fw { i8 32, i8 74, i16 48, i16 48 }, %struct.coef_fw { i8 32, i8 99, i16 -16384, i16 0 }, %struct.coef_fw { i8 32, i8 103, i16 -4096, i16 12288 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_default.coef0255 = internal constant [5 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 69, i16 -1, i16 -16247 }, %struct.coef_fw { i8 32, i8 69, i16 -1, i16 -15223 }, %struct.coef_fw { i8 87, i8 3, i16 -1, i16 -29018 }, %struct.coef_fw { i8 32, i8 73, i16 -1, i16 73 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_default.coef0256 = internal constant [6 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 69, i16 -1, i16 -15223 }, %struct.coef_fw { i8 87, i8 3, i16 -1, i16 3491 }, %struct.coef_fw { i8 32, i8 73, i16 -1, i16 73 }, %struct.coef_fw { i8 87, i8 5, i16 16384, i16 0 }, %struct.coef_fw { i8 32, i8 6, i16 -1, i16 24832 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_default.coef0233 = internal constant [3 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 6, i16 -1, i16 8448 }, %struct.coef_fw { i8 32, i8 50, i16 -1, i16 20131 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_default.coef0288 = internal constant [6 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 79, i16 -832, i16 -15360 }, %struct.coef_fw { i8 32, i8 80, i16 8192, i16 8192 }, %struct.coef_fw { i8 32, i8 86, i16 6, i16 6 }, %struct.coef_fw { i8 32, i8 102, i16 8, i16 0 }, %struct.coef_fw { i8 32, i8 103, i16 8192, i16 0 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_default.coef0292 = internal constant [5 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 118, i16 -1, i16 14 }, %struct.coef_fw { i8 32, i8 108, i16 -1, i16 9216 }, %struct.coef_fw { i8 32, i8 107, i16 -1, i16 -15319 }, %struct.coef_fw { i8 32, i8 24, i16 -1, i16 29448 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_default.coef0293 = internal constant [4 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 74, i16 15, i16 14 }, %struct.coef_fw { i8 32, i8 69, i16 -1, i16 -15319 }, %struct.coef_fw { i8 32, i8 26, i16 8, i16 0 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_default.coef0688 = internal constant [4 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 17, i16 -1, i16 65 }, %struct.coef_fw { i8 32, i8 21, i16 -1, i16 3392 }, %struct.coef_fw { i8 32, i8 -73, i16 -1, i16 -32725 }, %struct.coef_fw zeroinitializer], align 2
@alc_headset_mode_default.coef0274 = internal constant [5 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 69, i16 -1, i16 17033 }, %struct.coef_fw { i8 32, i8 74, i16 16, i16 16 }, %struct.coef_fw { i8 32, i8 107, i16 3840, i16 0 }, %struct.coef_fw { i8 32, i8 73, i16 768, i16 768 }, %struct.coef_fw zeroinitializer], align 2
@alc282_fixup_asus_tx300.dock_pins = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 27, i32 554778624 }, %struct.hda_pintbl zeroinitializer], align 4
@.str.341 = private unnamed_addr constant [24 x i8] c"Speaker Playback Switch\00", align 1
@.str.342 = private unnamed_addr constant [29 x i8] c"Dock Speaker Playback Switch\00", align 1
@.str.343 = private unnamed_addr constant [29 x i8] c"Bass Speaker Playback Switch\00", align 1
@alc290_fixup_mono_speakers.conn1 = internal constant [1 x i16] [i16 12], align 2
@alc255_set_default_jack_type.alc255fw = internal constant [6 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 27, i16 -1, i16 -30709 }, %struct.coef_fw { i8 32, i8 69, i16 -1, i16 -12151 }, %struct.coef_fw { i8 32, i8 27, i16 -1, i16 2059 }, %struct.coef_fw { i8 32, i8 70, i16 -1, i16 4 }, %struct.coef_fw { i8 32, i8 27, i16 -1, i16 3083 }, %struct.coef_fw zeroinitializer], align 2
@alc255_set_default_jack_type.alc256fw = internal constant [6 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 27, i16 -1, i16 -30645 }, %struct.coef_fw { i8 32, i8 69, i16 -1, i16 -12151 }, %struct.coef_fw { i8 32, i8 27, i16 -1, i16 2123 }, %struct.coef_fw { i8 32, i8 70, i16 -1, i16 4 }, %struct.coef_fw { i8 32, i8 27, i16 -1, i16 3147 }, %struct.coef_fw zeroinitializer], align 2
@alc_fixup_tpt440_dock.pincfgs = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 22, i32 555814928 }, %struct.hda_pintbl { i16 25, i32 564203536 }, %struct.hda_pintbl zeroinitializer], align 4
@.str.344 = private unnamed_addr constant [39 x i8] c"Out of memory (input_allocate_device)\0A\00", align 1
@.str.345 = private unnamed_addr constant [23 x i8] c"Microphone Mute Button\00", align 1
@.str.346 = private unnamed_addr constant [30 x i8] c"input_register_device failed\0A\00", align 1
@alc285_fixup_hp_spectre_x360_eb1.conn = internal constant [1 x i16] [i16 2], align 2
@alc285_fixup_hp_spectre_x360_eb1.pincfgs = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 23, i32 -1877540560 }, %struct.hda_pintbl zeroinitializer], align 4
@alc295_fixup_disable_dac3.conn = internal constant [2 x i16] [i16 2, i16 3], align 2
@alc285_fixup_speaker2_to_dac1.conn = internal constant [1 x i16] [i16 2], align 2
@alc298_fixup_speaker_volume.conn1 = internal constant [1 x i16] [i16 12], align 2
@.str.347 = private unnamed_addr constant [26 x i8] c"HDAudio-Lenovo-DualCodecs\00", align 1
@.str.348 = private unnamed_addr constant [15 x i8] c"Capture Volume\00", align 1
@.str.349 = private unnamed_addr constant [26 x i8] c"Rear-Panel Capture Volume\00", align 1
@.str.350 = private unnamed_addr constant [27 x i8] c"Front-Panel Capture Volume\00", align 1
@.str.351 = private unnamed_addr constant [15 x i8] c"Capture Switch\00", align 1
@.str.352 = private unnamed_addr constant [26 x i8] c"Rear-Panel Capture Switch\00", align 1
@.str.353 = private unnamed_addr constant [27 x i8] c"Front-Panel Capture Switch\00", align 1
@alc274_fixup_bind_dacs.preferred_pairs = internal constant [7 x i16] [i16 33, i16 3, i16 27, i16 3, i16 22, i16 2, i16 0], align 2
@alc_fixup_tpt470_dock.pincfgs = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 23, i32 555814928 }, %struct.hda_pintbl { i16 25, i32 564203536 }, %struct.hda_pintbl zeroinitializer], align 4
@alc_fixup_tpt470_dacs.preferred_pairs = internal constant [7 x i16] [i16 20, i16 3, i16 23, i16 2, i16 33, i16 2, i16 0], align 2
@alc298_fixup_huawei_mbx_stereo.dac_init = internal constant [37 x %struct.hda_alc298_mbxinit] [%struct.hda_alc298_mbxinit { i8 12, i8 0 }, %struct.hda_alc298_mbxinit { i8 13, i8 0 }, %struct.hda_alc298_mbxinit { i8 14, i8 0 }, %struct.hda_alc298_mbxinit { i8 15, i8 0 }, %struct.hda_alc298_mbxinit { i8 16, i8 0 }, %struct.hda_alc298_mbxinit { i8 26, i8 64 }, %struct.hda_alc298_mbxinit { i8 27, i8 -126 }, %struct.hda_alc298_mbxinit { i8 28, i8 0 }, %struct.hda_alc298_mbxinit { i8 29, i8 0 }, %struct.hda_alc298_mbxinit { i8 30, i8 0 }, %struct.hda_alc298_mbxinit { i8 31, i8 0 }, %struct.hda_alc298_mbxinit { i8 32, i8 -62 }, %struct.hda_alc298_mbxinit { i8 33, i8 -56 }, %struct.hda_alc298_mbxinit { i8 34, i8 38 }, %struct.hda_alc298_mbxinit { i8 35, i8 36 }, %struct.hda_alc298_mbxinit { i8 39, i8 -1 }, %struct.hda_alc298_mbxinit { i8 40, i8 -1 }, %struct.hda_alc298_mbxinit { i8 41, i8 -1 }, %struct.hda_alc298_mbxinit { i8 42, i8 -113 }, %struct.hda_alc298_mbxinit { i8 43, i8 2 }, %struct.hda_alc298_mbxinit { i8 44, i8 72 }, %struct.hda_alc298_mbxinit { i8 45, i8 52 }, %struct.hda_alc298_mbxinit { i8 46, i8 0 }, %struct.hda_alc298_mbxinit { i8 47, i8 0 }, %struct.hda_alc298_mbxinit { i8 48, i8 0 }, %struct.hda_alc298_mbxinit { i8 49, i8 0 }, %struct.hda_alc298_mbxinit { i8 50, i8 0 }, %struct.hda_alc298_mbxinit { i8 51, i8 0 }, %struct.hda_alc298_mbxinit { i8 52, i8 0 }, %struct.hda_alc298_mbxinit { i8 53, i8 1 }, %struct.hda_alc298_mbxinit { i8 54, i8 -109 }, %struct.hda_alc298_mbxinit { i8 55, i8 12 }, %struct.hda_alc298_mbxinit { i8 56, i8 0 }, %struct.hda_alc298_mbxinit { i8 57, i8 0 }, %struct.hda_alc298_mbxinit { i8 58, i8 -8 }, %struct.hda_alc298_mbxinit { i8 56, i8 -128 }, %struct.hda_alc298_mbxinit zeroinitializer], align 1
@alc295_fixup_hp_top_speakers.pincfgs = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 23, i32 -1877540592 }, %struct.hda_pintbl zeroinitializer], align 4
@alc295_fixup_hp_top_speakers.alc295_hp_speakers_coefs = internal constant [280 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 0 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 0 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 63 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 4096 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 4 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 1536 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 106 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 6 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 108 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 -16192 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 8 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 -20480 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 46 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 2048 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 106 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 193 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 108 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 800 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 57 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 0 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 59 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 -1 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 60 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 -48 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 58 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 7678 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 128 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 2176 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 58 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 3582 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 24 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 537 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 106 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 93 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 108 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 -28350 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 192 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 462 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 193 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 -4852 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 194 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 7168 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 195 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 0 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 196 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 512 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 197 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 0 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 198 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 921 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 199 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 9008 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 200 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 7773 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 201 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 28415 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 202 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 448 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 203 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 -4852 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 204 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 7168 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 205 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 0 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 206 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 512 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 207 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 0 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 208 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 921 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 209 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 9008 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 210 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 7773 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 211 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 28415 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 98 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 -32768 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 99 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 24415 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 100 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 4096 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 101 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 0 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 102 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 16388 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 103 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 2050 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 104 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 -30449 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 105 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 -8159 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 112 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 -32750 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 113 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 13392 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 114 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 291 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 115 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 17731 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 116 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 8448 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 117 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 17185 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 118 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 0 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 80 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 -32256 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 58 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 7678 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 81 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 1799 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 82 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 16528 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 106 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 144 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 108 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 29215 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 -5141 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 158 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 0 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 96 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 8723 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 106 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 6 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 108 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 0 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 63 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 12288 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 4 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 1280 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 64 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 -32756 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 70 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 -15826 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 75 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 0 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 18 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 80 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 -32020 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 -20444 }], align 2
@alc_headset_btn_keymap = internal constant [5 x %struct.hda_jack_keymap] [%struct.hda_jack_keymap { i32 16384, i32 164 }, %struct.hda_jack_keymap { i32 8192, i32 582 }, %struct.hda_jack_keymap { i32 4096, i32 115 }, %struct.hda_jack_keymap { i32 2048, i32 114 }, %struct.hda_jack_keymap zeroinitializer], align 4
@.str.354 = private unnamed_addr constant [13 x i8] c"Headset Jack\00", align 1
@alc285_fixup_thinkpad_x1_gen7.conn = internal constant [2 x i16] [i16 2, i16 3], align 2
@alc285_fixup_thinkpad_x1_gen7.preferred_pairs = internal constant [7 x i16] [i16 20, i16 2, i16 23, i16 3, i16 33, i16 3, i16 0], align 2
@.str.355 = private unnamed_addr constant [22 x i8] c"Front Playback Volume\00", align 1
@.str.356 = private unnamed_addr constant [21 x i8] c"DAC1 Playback Volume\00", align 1
@.str.357 = private unnamed_addr constant [29 x i8] c"Bass Speaker Playback Volume\00", align 1
@.str.358 = private unnamed_addr constant [21 x i8] c"DAC2 Playback Volume\00", align 1
@alc289_fixup_asus_ga401.preferred_pairs = internal constant [7 x i16] [i16 20, i16 2, i16 23, i16 2, i16 33, i16 3, i16 0], align 2
@alc285_ideapad_s740_coefs = internal constant [476 x %struct.hda_verb] [%struct.hda_verb { i16 32, i32 1280, i32 16 }, %struct.hda_verb { i16 32, i32 1024, i32 800 }, %struct.hda_verb { i16 32, i32 1280, i32 36 }, %struct.hda_verb { i16 32, i32 1024, i32 65 }, %struct.hda_verb { i16 32, i32 1280, i32 36 }, %struct.hda_verb { i16 32, i32 1024, i32 65 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 127 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 127 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 1 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 1 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 1 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 1 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 60 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 17 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 60 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 17 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 12 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 26 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 12 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 26 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 15 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 66 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 15 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 66 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 16 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 64 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 16 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 64 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 3 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 9 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 3 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 9 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 28 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 76 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 28 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 76 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 29 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 78 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 29 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 78 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 27 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 1 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 27 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 1 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 25 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 37 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 25 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 37 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 24 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 55 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 24 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 55 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 26 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 64 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 26 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 64 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 22 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 118 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 22 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 118 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 23 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 16 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 23 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 16 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 21 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 21 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 21 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 21 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 7 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 134 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 7 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 134 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 2 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 1 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 2 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 1 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 2 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 2 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 36 }, %struct.hda_verb { i16 32, i32 1024, i32 66 }, %struct.hda_verb { i16 32, i32 1280, i32 36 }, %struct.hda_verb { i16 32, i32 1024, i32 66 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 127 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 127 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 1 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 1 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 1 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 1 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 60 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 17 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 60 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 17 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 12 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 42 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 12 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 42 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 15 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 70 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 15 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 70 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 16 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 68 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 16 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 68 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 3 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 9 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 3 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 9 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 28 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 76 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 28 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 76 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 27 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 1 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 27 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 1 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 25 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 37 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 25 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 37 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 24 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 55 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 24 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 55 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 26 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 64 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 26 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 64 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 22 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 118 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 22 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 118 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 23 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 16 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 23 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 16 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 21 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 21 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 21 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 21 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 7 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 134 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 7 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 134 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 2 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 1 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 2 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 1 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 41 }, %struct.hda_verb { i16 32, i32 1280, i32 38 }, %struct.hda_verb { i16 32, i32 1024, i32 2 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1024, i32 45088 }, %struct.hda_verb zeroinitializer], align 4
@alc295_fixup_asus_dacs.preferred_pairs = internal constant [5 x i16] [i16 23, i16 2, i16 33, i16 3, i16 0], align 2
@alc285_fixup_hp_spectre_x360.conn = internal constant [1 x i16] [i16 2], align 2
@alc285_fixup_hp_spectre_x360.pincfgs = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl zeroinitializer], align 4
@alc256_fixup_set_coef_defaults_coefs = internal constant [7 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 16, i16 -1, i16 32 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 0 }, %struct.coef_fw { i8 32, i8 38, i16 -1, i16 0 }, %struct.coef_fw { i8 32, i8 41, i16 -1, i16 12288 }, %struct.coef_fw { i8 32, i8 55, i16 -1, i16 -507 }, %struct.coef_fw { i8 32, i8 69, i16 -1, i16 20617 }, %struct.coef_fw zeroinitializer], align 2
@alc233_fixup_no_audio_jack_coefs = internal constant [8 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 26, i16 -1, i16 -28669 }, %struct.coef_fw { i8 32, i8 27, i16 -1, i16 3627 }, %struct.coef_fw { i8 32, i8 55, i16 -1, i16 -506 }, %struct.coef_fw { i8 32, i8 56, i16 -1, i16 18817 }, %struct.coef_fw { i8 32, i8 69, i16 -1, i16 -11127 }, %struct.coef_fw { i8 32, i8 70, i16 -1, i16 116 }, %struct.coef_fw { i8 32, i8 73, i16 -1, i16 329 }, %struct.coef_fw zeroinitializer], align 2
@.str.359 = private unnamed_addr constant [30 x i8] c"i2c-CLSA0100:00-cs35l41-hda.0\00", align 1
@.str.360 = private unnamed_addr constant [30 x i8] c"i2c-CLSA0100:00-cs35l41-hda.1\00", align 1
@comp_master_ops = internal constant %struct.component_master_ops { ptr @comp_bind, ptr @comp_unbind }, align 4
@.str.361 = private unnamed_addr constant [42 x i8] c"Fail to register component aggregator %d\0A\00", align 1
@.str.362 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@.str.363 = private unnamed_addr constant [8 x i8] c"CSC3551\00", align 1
@.str.364 = private unnamed_addr constant [24 x i8] c"%s-%s:00-cs35l41-hda.%d\00", align 1
@.compoundliteral.365 = internal constant [6 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 16859168 }, %struct.hda_pintbl { i16 23, i32 -1877540592 }, %struct.hda_pintbl { i16 24, i32 44109872 }, %struct.hda_pintbl { i16 25, i32 25243711 }, %struct.hda_pintbl { i16 33, i32 35721263 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.366 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1868168768 }, %struct.hda_pintbl { i16 20, i32 -1877536480 }, %struct.hda_pintbl { i16 33, i32 35721264 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.367 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 27, i32 -1868103376 }, %struct.hda_pintbl { i16 33, i32 52498464 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.368 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 26, i32 -1868103376 }, %struct.hda_pintbl { i16 27, i32 -1877540592 }, %struct.hda_pintbl { i16 33, i32 52498464 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.369 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 33, i32 69275680 }, %struct.hda_pintbl { i16 18, i32 -1213857488 }, %struct.hda_pintbl { i16 20, i32 -1877540448 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.370 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 33, i32 69275680 }, %struct.hda_pintbl { i16 18, i32 -1213857488 }, %struct.hda_pintbl { i16 20, i32 -1877540432 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.371 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 33, i32 69275680 }, %struct.hda_pintbl { i16 18, i32 -1213857456 }, %struct.hda_pintbl { i16 20, i32 -1877540448 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.372 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 33, i32 69275680 }, %struct.hda_pintbl { i16 18, i32 -1213857456 }, %struct.hda_pintbl { i16 20, i32 -1877540432 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.373 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 33, i32 69275680 }, %struct.hda_pintbl { i16 18, i32 -1213857488 }, %struct.hda_pintbl { i16 27, i32 -1877540592 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.374 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 27, i32 17895440 }, %struct.hda_pintbl { i16 30, i32 21303600 }, %struct.hda_pintbl { i16 33, i32 35721248 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.375 = internal constant [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1868168896 }, %struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 25, i32 44109872 }, %struct.hda_pintbl { i16 33, i32 35721248 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.376 = internal constant [6 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 25, i32 44109872 }, %struct.hda_pintbl { i16 26, i32 44109888 }, %struct.hda_pintbl { i16 27, i32 16859168 }, %struct.hda_pintbl { i16 33, i32 35721247 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.377 = internal constant [6 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 25, i32 44109872 }, %struct.hda_pintbl { i16 26, i32 44109888 }, %struct.hda_pintbl { i16 27, i32 16846880 }, %struct.hda_pintbl { i16 33, i32 35721247 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.378 = internal constant [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 25, i32 44109856 }, %struct.hda_pintbl { i16 26, i32 44109872 }, %struct.hda_pintbl { i16 33, i32 35721247 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.379 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 33, i32 35721232 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.380 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 25, i32 44109856 }, %struct.hda_pintbl { i16 33, i32 35721264 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.381 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 33, i32 35721248 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.382 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540560 }, %struct.hda_pintbl { i16 33, i32 35721280 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.383 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1868168896 }, %struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 33, i32 35721248 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.384 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1868168864 }, %struct.hda_pintbl { i16 20, i32 -1877540576 }, %struct.hda_pintbl { i16 33, i32 35721264 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.385 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 27, i32 33624096 }, %struct.hda_pintbl { i16 33, i32 35721247 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.386 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 27, i32 16846880 }, %struct.hda_pintbl { i16 33, i32 35721247 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.387 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540560 }, %struct.hda_pintbl { i16 27, i32 16859168 }, %struct.hda_pintbl { i16 33, i32 35721279 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.388 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540560 }, %struct.hda_pintbl { i16 27, i32 16846880 }, %struct.hda_pintbl { i16 33, i32 35721279 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.389 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540560 }, %struct.hda_pintbl { i16 27, i32 33624096 }, %struct.hda_pintbl { i16 33, i32 35721279 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.390 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540528 }, %struct.hda_pintbl { i16 27, i32 33624096 }, %struct.hda_pintbl { i16 33, i32 35721311 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.391 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 27, i32 16859168 }, %struct.hda_pintbl { i16 33, i32 35721247 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.392 = internal constant [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1868168864 }, %struct.hda_pintbl { i16 20, i32 -1877540576 }, %struct.hda_pintbl { i16 23, i32 -1877540544 }, %struct.hda_pintbl { i16 33, i32 52498479 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.393 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1868168864 }, %struct.hda_pintbl { i16 20, i32 -1877540560 }, %struct.hda_pintbl { i16 33, i32 35721280 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.394 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1868168864 }, %struct.hda_pintbl { i16 20, i32 -1877540544 }, %struct.hda_pintbl { i16 33, i32 35721296 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.395 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1868168848 }, %struct.hda_pintbl { i16 20, i32 -1877540576 }, %struct.hda_pintbl { i16 33, i32 35721264 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.396 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1868168848 }, %struct.hda_pintbl { i16 20, i32 -1877540560 }, %struct.hda_pintbl { i16 33, i32 35721280 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.397 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1868168848 }, %struct.hda_pintbl { i16 20, i32 -1877536464 }, %struct.hda_pintbl { i16 33, i32 35721280 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.398 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1868168848 }, %struct.hda_pintbl { i16 20, i32 -1877540544 }, %struct.hda_pintbl { i16 33, i32 35721296 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.399 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1868168832 }, %struct.hda_pintbl { i16 20, i32 -1877540560 }, %struct.hda_pintbl { i16 33, i32 35721280 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.400 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1868168832 }, %struct.hda_pintbl { i16 20, i32 -1877540576 }, %struct.hda_pintbl { i16 33, i32 35721264 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.401 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 27, i32 16846880 }, %struct.hda_pintbl { i16 33, i32 35721232 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.402 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 27, i32 -1868103376 }, %struct.hda_pintbl { i16 33, i32 69275680 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.403 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 27, i32 -1868103376 }, %struct.hda_pintbl { i16 33, i32 52498464 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.404 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1868168912 }, %struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 33, i32 52498464 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.405 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1868168912 }, %struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 33, i32 69275680 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.406 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 26, i32 -1868103376 }, %struct.hda_pintbl { i16 27, i32 -1877540592 }, %struct.hda_pintbl { i16 33, i32 52498464 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.407 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 25, i32 44109856 }, %struct.hda_pintbl { i16 33, i32 35721247 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.408 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 23, i32 -1877540592 }, %struct.hda_pintbl { i16 25, i32 60887088 }, %struct.hda_pintbl { i16 33, i32 52498464 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.409 = internal constant [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1868168912 }, %struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 21, i32 69275679 }, %struct.hda_pintbl { i16 26, i32 77664288 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.410 = internal constant [7 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1868168896 }, %struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 21, i32 69275679 }, %struct.hda_pintbl { i16 24, i32 42012720 }, %struct.hda_pintbl { i16 26, i32 77664319 }, %struct.hda_pintbl { i16 27, i32 33624096 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.411 = internal constant [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 18, i32 -1717370576 }, %struct.hda_pintbl { i16 25, i32 60887072 }, %struct.hda_pintbl { i16 33, i32 52498463 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.412 = internal constant [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 18, i32 -1717370576 }, %struct.hda_pintbl { i16 25, i32 60887072 }, %struct.hda_pintbl { i16 33, i32 52498496 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.413 = internal constant [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 18, i32 -1717370576 }, %struct.hda_pintbl { i16 25, i32 60887088 }, %struct.hda_pintbl { i16 33, i32 52498464 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.414 = internal constant [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 18, i32 -1717370576 }, %struct.hda_pintbl { i16 25, i32 77664288 }, %struct.hda_pintbl { i16 33, i32 69275679 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.415 = internal constant [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 18, i32 -1868168896 }, %struct.hda_pintbl { i16 25, i32 77664304 }, %struct.hda_pintbl { i16 33, i32 69275680 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.416 = internal constant [8 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 18, i32 -1868166720 }, %struct.hda_pintbl { i16 24, i32 60889136 }, %struct.hda_pintbl { i16 25, i32 77699121 }, %struct.hda_pintbl { i16 26, i32 75575359 }, %struct.hda_pintbl { i16 27, i32 69275680 }, %struct.hda_pintbl { i16 33, i32 52498463 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.417 = internal constant [8 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 18, i32 -1868166848 }, %struct.hda_pintbl { i16 24, i32 60889136 }, %struct.hda_pintbl { i16 25, i32 77699121 }, %struct.hda_pintbl { i16 26, i32 75575359 }, %struct.hda_pintbl { i16 27, i32 69275680 }, %struct.hda_pintbl { i16 33, i32 52498463 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.418 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 18, i32 -1868168912 }, %struct.hda_pintbl { i16 33, i32 52498463 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.419 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1868168864 }, %struct.hda_pintbl { i16 20, i32 -1877540576 }, %struct.hda_pintbl { i16 33, i32 35721264 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.420 = internal constant [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 18, i32 -1868168912 }, %struct.hda_pintbl { i16 25, i32 60887072 }, %struct.hda_pintbl { i16 33, i32 52498463 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.421 = internal constant [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1868168912 }, %struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 25, i32 77664320 }, %struct.hda_pintbl { i16 33, i32 69275680 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.422 = internal constant [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 25, i32 77664320 }, %struct.hda_pintbl { i16 29, i32 1080033281 }, %struct.hda_pintbl { i16 33, i32 69275680 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.423 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 25, i32 77664320 }, %struct.hda_pintbl { i16 33, i32 69275680 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.424 = internal constant [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 23, i32 -1877540591 }, %struct.hda_pintbl { i16 25, i32 60887088 }, %struct.hda_pintbl { i16 33, i32 52498464 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.425 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1868168912 }, %struct.hda_pintbl { i16 23, i32 -1877540592 }, %struct.hda_pintbl { i16 33, i32 35721248 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.426 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1868168928 }, %struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 33, i32 52498463 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.427 = internal constant [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1717370576 }, %struct.hda_pintbl { i16 21, i32 69275712 }, %struct.hda_pintbl { i16 24, i32 -1877540590 }, %struct.hda_pintbl { i16 26, i32 77664288 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.428 = internal constant [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1717370576 }, %struct.hda_pintbl { i16 21, i32 69275712 }, %struct.hda_pintbl { i16 24, i32 -1877540592 }, %struct.hda_pintbl { i16 26, i32 77664288 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.429 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1717370576 }, %struct.hda_pintbl { i16 21, i32 69275679 }, %struct.hda_pintbl { i16 26, i32 77664288 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.430 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1717370576 }, %struct.hda_pintbl { i16 21, i32 69275680 }, %struct.hda_pintbl { i16 26, i32 77664320 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.431 = internal constant [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1717370576 }, %struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 21, i32 69275680 }, %struct.hda_pintbl { i16 26, i32 77664320 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.432 = internal constant [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1717370576 }, %struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 21, i32 69275680 }, %struct.hda_pintbl { i16 26, i32 77664288 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.433 = internal constant [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1717370576 }, %struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 21, i32 69275679 }, %struct.hda_pintbl { i16 26, i32 77664288 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.434 = internal constant [6 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 21, i32 35733535 }, %struct.hda_pintbl { i16 18, i32 -1868168896 }, %struct.hda_pintbl { i16 22, i32 16859168 }, %struct.hda_pintbl { i16 25, i32 27365424 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.435 = internal constant [7 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 21, i32 35733535 }, %struct.hda_pintbl { i16 18, i32 -1868168896 }, %struct.hda_pintbl { i16 22, i32 16859168 }, %struct.hda_pintbl { i16 24, i32 44142641 }, %struct.hda_pintbl { i16 25, i32 27365438 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.436 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 21, i32 35733535 }, %struct.hda_pintbl { i16 18, i32 -1868168896 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.437 = internal constant [6 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 21, i32 35733535 }, %struct.hda_pintbl { i16 19, i32 -1868168896 }, %struct.hda_pintbl { i16 22, i32 553730080 }, %struct.hda_pintbl { i16 25, i32 564236336 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.438 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 21, i32 35733535 }, %struct.hda_pintbl { i16 19, i32 -1868168896 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.439 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 23, i32 -1877540592 }, %struct.hda_pintbl { i16 33, i32 69275680 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.440 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 27, i32 -1868103376 }, %struct.hda_pintbl { i16 33, i32 69275680 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.441 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1868168912 }, %struct.hda_pintbl { i16 23, i32 -1877540592 }, %struct.hda_pintbl { i16 33, i32 52498464 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.442 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1868168912 }, %struct.hda_pintbl { i16 23, i32 -1877540592 }, %struct.hda_pintbl { i16 33, i32 69275680 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.443 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1868168912 }, %struct.hda_pintbl { i16 23, i32 -1877540592 }, %struct.hda_pintbl { i16 33, i32 52498464 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.444 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1868168928 }, %struct.hda_pintbl { i16 23, i32 -1877540592 }, %struct.hda_pintbl { i16 33, i32 69275696 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.445 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1868168912 }, %struct.hda_pintbl { i16 23, i32 -1877540592 }, %struct.hda_pintbl { i16 33, i32 52498464 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.446 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1868168912 }, %struct.hda_pintbl { i16 23, i32 -1877540592 }, %struct.hda_pintbl { i16 33, i32 52498464 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.447 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 33, i32 69275680 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.448 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 33, i32 69275696 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.449 = internal constant [6 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1213857488 }, %struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 33, i32 69275680 }, %struct.hda_pintbl { i16 23, i32 553730080 }, %struct.hda_pintbl { i16 24, i32 564236336 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.450 = internal constant [6 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1213857488 }, %struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 33, i32 69275680 }, %struct.hda_pintbl { i16 23, i32 553730112 }, %struct.hda_pintbl { i16 24, i32 564236368 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.451 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1213857488 }, %struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 33, i32 69275680 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.452 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1868168912 }, %struct.hda_pintbl { i16 33, i32 52498464 }, %struct.hda_pintbl { i16 23, i32 -1877540592 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.453 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1868168912 }, %struct.hda_pintbl { i16 33, i32 52498464 }, %struct.hda_pintbl { i16 23, i32 -1877540544 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.454 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1868168912 }, %struct.hda_pintbl { i16 33, i32 52498464 }, %struct.hda_pintbl { i16 23, i32 -1877540528 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.455 = internal constant [6 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1213857472 }, %struct.hda_pintbl { i16 19, i32 -1213857456 }, %struct.hda_pintbl { i16 23, i32 -1877540592 }, %struct.hda_pintbl { i16 26, i32 50401312 }, %struct.hda_pintbl { i16 33, i32 52498480 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.456 = internal constant [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1213857472 }, %struct.hda_pintbl { i16 23, i32 -1877540592 }, %struct.hda_pintbl { i16 26, i32 60887088 }, %struct.hda_pintbl { i16 33, i32 52498464 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.457 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 33, i32 69275680 }, %struct.hda_pintbl { i16 18, i32 -1213857488 }, %struct.hda_pintbl { i16 23, i32 -1877540592 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.458 = internal constant [6 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 16859152 }, %struct.hda_pintbl { i16 23, i32 -1877540576 }, %struct.hda_pintbl { i16 24, i32 44109872 }, %struct.hda_pintbl { i16 25, i32 44109887 }, %struct.hda_pintbl { i16 33, i32 35721247 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.459 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 1073741824 }, %struct.hda_pintbl { i16 27, i32 1073741824 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.460 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 1073741824 }, %struct.hda_pintbl { i16 26, i32 1073741824 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.461 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 1073741824 }, %struct.hda_pintbl { i16 26, i32 1073741824 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.462 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 1073741824 }, %struct.hda_pintbl { i16 26, i32 1073741824 }, %struct.hda_pintbl zeroinitializer], align 4
@.str.463 = private unnamed_addr constant [26 x i8] c"%s: SKU not ready 0x%08x\0A\00", align 1
@beep_allow_list = internal constant [12 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4163, i16 4156, i16 -1, i32 1 }, %struct.snd_pci_quirk { i16 4163, i16 4445, i16 -1, i32 1 }, %struct.snd_pci_quirk { i16 4163, i16 -32097, i16 -1, i32 1 }, %struct.snd_pci_quirk { i16 4163, i16 -31882, i16 -1, i32 1 }, %struct.snd_pci_quirk { i16 4163, i16 -31794, i16 -1, i32 1 }, %struct.snd_pci_quirk { i16 4163, i16 -31974, i16 -1, i32 1 }, %struct.snd_pci_quirk { i16 4163, i16 -31926, i16 -1, i32 1 }, %struct.snd_pci_quirk { i16 5208, i16 -24574, i16 -1, i32 1 }, %struct.snd_pci_quirk { i16 -32634, i16 -10733, i16 -1, i32 1 }, %struct.snd_pci_quirk { i16 6058, i16 12446, i16 -1, i32 0 }, %struct.snd_pci_quirk { i16 6058, i16 12451, i16 -1, i32 0 }, %struct.snd_pci_quirk zeroinitializer], align 4
@alc269_parse_auto_config.alc269_ignore = internal constant [2 x i16] [i16 29, i16 0], align 2
@alc269_parse_auto_config.alc269_ssids = internal constant [4 x i16] [i16 0, i16 27, i16 20, i16 33], align 2
@alc269_parse_auto_config.alc269va_ssids = internal constant [4 x i16] [i16 21, i16 27, i16 20, i16 0], align 2
@alc_beep_mixer = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 1073741824, ptr @.str.464, i32 0, i32 268435475, i32 0, ptr @snd_hda_mixer_amp_volume_info, ptr @snd_hda_mixer_amp_volume_get, ptr @snd_hda_mixer_amp_volume_put, %union.anon.79 { ptr @snd_hda_mixer_amp_tlv }, i32 196608 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 1073741824, ptr @.str.465, i32 0, i32 0, i32 0, ptr @snd_hda_mixer_amp_switch_info, ptr @snd_hda_mixer_amp_switch_get_beep, ptr @snd_hda_mixer_amp_switch_put_beep, %union.anon.79 zeroinitializer, i32 196608 }], align 4
@.str.464 = private unnamed_addr constant [21 x i8] c"Beep Playback Volume\00", align 1
@.str.465 = private unnamed_addr constant [21 x i8] c"Beep Playback Switch\00", align 1
@alc260_fixup_models = internal constant [5 x %struct.hda_model_fixup] [%struct.hda_model_fixup { i32 3, ptr @.str.466 }, %struct.hda_model_fixup { i32 2, ptr @.str.467 }, %struct.hda_model_fixup { i32 8, ptr @.str.468 }, %struct.hda_model_fixup { i32 9, ptr @.str.469 }, %struct.hda_model_fixup zeroinitializer], align 4
@alc260_fixup_tbl = internal constant [13 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4133, i16 123, i16 -1, i32 3 }, %struct.snd_pci_quirk { i16 4133, i16 127, i16 -1, i32 2 }, %struct.snd_pci_quirk { i16 4133, i16 143, i16 -1, i32 3 }, %struct.snd_pci_quirk { i16 4156, i16 10250, i16 -1, i32 0 }, %struct.snd_pci_quirk { i16 4156, i16 12474, i16 -1, i32 6 }, %struct.snd_pci_quirk { i16 4173, i16 -32325, i16 -1, i32 10 }, %struct.snd_pci_quirk { i16 4173, i16 -32286, i16 -1, i32 1 }, %struct.snd_pci_quirk { i16 4303, i16 4902, i16 -1, i32 8 }, %struct.snd_pci_quirk { i16 5385, i16 17728, i16 -1, i32 3 }, %struct.snd_pci_quirk { i16 5421, i16 1833, i16 -1, i32 7 }, %struct.snd_pci_quirk { i16 5663, i16 8279, i16 -1, i32 5 }, %struct.snd_pci_quirk { i16 5681, i16 -16361, i16 -1, i32 2 }, %struct.snd_pci_quirk zeroinitializer], align 4
@alc260_fixups = internal constant [11 x %struct.hda_fixup] [%struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.470 } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.471 } }, %struct.hda_fixup { i32 2, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.472 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc_fixup_gpio1 } }, %struct.hda_fixup { i32 3, i8 1, i32 1, %union.anon.67 { ptr @alc260_fixup_gpio1_toggle } }, %struct.hda_fixup { i32 2, i8 1, i32 4, %union.anon.67 { ptr @.compoundliteral.473 } }, %struct.hda_fixup { i32 3, i8 1, i32 2, %union.anon.67 { ptr @alc260_fixup_gpio1_toggle } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc260_fixup_kn1 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc260_fixup_fsc_s7020 } }, %struct.hda_fixup { i32 3, i8 1, i32 8, %union.anon.67 { ptr @alc260_fixup_fsc_s7020_jwse } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.474 } }], align 4
@.str.466 = private unnamed_addr constant [6 x i8] c"gpio1\00", align 1
@.str.467 = private unnamed_addr constant [5 x i8] c"coef\00", align 1
@.str.468 = private unnamed_addr constant [8 x i8] c"fujitsu\00", align 1
@.str.469 = private unnamed_addr constant [13 x i8] c"fujitsu-jwse\00", align 1
@.compoundliteral.470 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 17, i32 -1877802736 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.471 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 15, i32 18956288 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.472 = internal constant [3 x %struct.hda_verb] [%struct.hda_verb { i16 26, i32 1280, i32 7 }, %struct.hda_verb { i16 26, i32 1024, i32 12352 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.473 = internal constant [3 x %struct.hda_verb] [%struct.hda_verb { i16 26, i32 1280, i32 7 }, %struct.hda_verb { i16 26, i32 1024, i32 12368 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.474 = internal constant [12 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 15, i32 18944032 }, %struct.hda_pintbl { i16 16, i32 65599 }, %struct.hda_pintbl { i16 17, i32 1091637744 }, %struct.hda_pintbl { i16 18, i32 27351344 }, %struct.hda_pintbl { i16 19, i32 1091637744 }, %struct.hda_pintbl { i16 20, i32 1091637744 }, %struct.hda_pintbl { i16 21, i32 1091637744 }, %struct.hda_pintbl { i16 22, i32 1091637744 }, %struct.hda_pintbl { i16 23, i32 1091637744 }, %struct.hda_pintbl { i16 24, i32 1091637744 }, %struct.hda_pintbl { i16 25, i32 1091637744 }, %struct.hda_pintbl zeroinitializer], align 4
@alc260_fixup_kn1.pincfgs = internal constant [12 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 15, i32 35733504 }, %struct.hda_pintbl { i16 18, i32 -1868168864 }, %struct.hda_pintbl { i16 19, i32 44142592 }, %struct.hda_pintbl { i16 24, i32 21258240 }, %struct.hda_pintbl { i16 16, i32 1091637744 }, %struct.hda_pintbl { i16 17, i32 1091637744 }, %struct.hda_pintbl { i16 20, i32 1091637744 }, %struct.hda_pintbl { i16 21, i32 1091637744 }, %struct.hda_pintbl { i16 22, i32 1091637744 }, %struct.hda_pintbl { i16 23, i32 1091637744 }, %struct.hda_pintbl { i16 25, i32 1091637744 }, %struct.hda_pintbl zeroinitializer], align 4
@alc260_parse_auto_config.alc260_ignore = internal constant [2 x i16] [i16 23, i16 0], align 2
@alc260_parse_auto_config.alc260_ssids = internal constant [4 x i16] [i16 16, i16 21, i16 15, i16 0], align 2
@alc262_fixup_models = internal constant [10 x %struct.hda_model_fixup] [%struct.hda_model_fixup { i32 7, ptr @.str.122 }, %struct.hda_model_fixup { i32 0, ptr @.str.475 }, %struct.hda_model_fixup { i32 1, ptr @.str.476 }, %struct.hda_model_fixup { i32 2, ptr @.str.477 }, %struct.hda_model_fixup { i32 3, ptr @.str.478 }, %struct.hda_model_fixup { i32 4, ptr @.str.479 }, %struct.hda_model_fixup { i32 5, ptr @.str.480 }, %struct.hda_model_fixup { i32 6, ptr @.str.481 }, %struct.hda_model_fixup { i32 8, ptr @.str.482 }, %struct.hda_model_fixup zeroinitializer], align 4
@alc262_fixup_tbl = internal constant [11 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4156, i16 5899, i16 -1, i32 2 }, %struct.snd_pci_quirk { i16 4303, i16 5015, i16 -1, i32 1 }, %struct.snd_pci_quirk { i16 4303, i16 5165, i16 -1, i32 5 }, %struct.snd_pci_quirk { i16 4337, i16 10517, i16 -1, i32 3 }, %struct.snd_pci_quirk { i16 5940, i16 4417, i16 -1, i32 0 }, %struct.snd_pci_quirk { i16 5940, i16 4423, i16 -1, i32 0 }, %struct.snd_pci_quirk { i16 6058, i16 14414, i16 -1, i32 4 }, %struct.snd_pci_quirk { i16 6143, i16 1376, i16 -1, i32 5 }, %struct.snd_pci_quirk { i16 6143, i16 1421, i16 -1, i32 6 }, %struct.snd_pci_quirk { i16 -32634, i16 29296, i16 -1, i32 8 }, %struct.snd_pci_quirk zeroinitializer], align 4
@alc262_fixups = internal constant [9 x %struct.hda_fixup] [%struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.483 } }, %struct.hda_fixup { i32 1, i8 1, i32 5, %union.anon.67 { ptr @.compoundliteral.484 } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.485 } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.486 } }, %struct.hda_fixup { i32 4, i8 1, i32 5, %union.anon.67 { ptr @.compoundliteral.487 } }, %struct.hda_fixup { i32 2, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.488 } }, %struct.hda_fixup { i32 2, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.489 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc_fixup_inv_dmic } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc_fixup_no_depop_delay } }], align 4
@.str.475 = private unnamed_addr constant [9 x i8] c"fsc-h270\00", align 1
@.str.476 = private unnamed_addr constant [10 x i8] c"fsc-s7110\00", align 1
@.str.477 = private unnamed_addr constant [8 x i8] c"hp-z200\00", align 1
@.str.478 = private unnamed_addr constant [5 x i8] c"tyan\00", align 1
@.str.479 = private unnamed_addr constant [12 x i8] c"lenovo-3000\00", align 1
@.str.480 = private unnamed_addr constant [5 x i8] c"benq\00", align 1
@.str.481 = private unnamed_addr constant [9 x i8] c"benq-t31\00", align 1
@.str.482 = private unnamed_addr constant [10 x i8] c"bayleybay\00", align 1
@.compoundliteral.483 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1726807792 }, %struct.hda_pintbl { i16 21, i32 35722287 }, %struct.hda_pintbl { i16 27, i32 18945055 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.484 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 21, i32 -1877540592 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.485 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 22, i32 -1726807776 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.486 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 429122032 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.487 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 33 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.488 = internal constant [3 x %struct.hda_verb] [%struct.hda_verb { i16 32, i32 1280, i32 7 }, %struct.hda_verb { i16 32, i32 1024, i32 12400 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.489 = internal constant [3 x %struct.hda_verb] [%struct.hda_verb { i16 32, i32 1280, i32 7 }, %struct.hda_verb { i16 32, i32 1024, i32 12368 }, %struct.hda_verb zeroinitializer], align 4
@alc262_parse_auto_config.alc262_ignore = internal constant [2 x i16] [i16 29, i16 0], align 2
@alc262_parse_auto_config.alc262_ssids = internal constant [4 x i16] [i16 21, i16 27, i16 20, i16 0], align 2
@alc268_fixup_models = internal constant [4 x %struct.hda_model_fixup] [%struct.hda_model_fixup { i32 0, ptr @.str.122 }, %struct.hda_model_fixup { i32 1, ptr @.str.490 }, %struct.hda_model_fixup { i32 2, ptr @.str.491 }, %struct.hda_model_fixup zeroinitializer], align 4
@alc268_fixup_tbl = internal constant [4 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4133, i16 313, i16 -1, i32 2 }, %struct.snd_pci_quirk { i16 4133, i16 347, i16 -1, i32 0 }, %struct.snd_pci_quirk { i16 4473, i16 -250, i16 -1, i32 1 }, %struct.snd_pci_quirk zeroinitializer], align 4
@alc268_fixups = internal constant [3 x %struct.hda_fixup] [%struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc_fixup_inv_dmic } }, %struct.hda_fixup { i32 2, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.492 } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.493 } }], align 4
@alc268_beep_mixer = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 1073741824, ptr @.str.464, i32 0, i32 268435475, i32 0, ptr @snd_hda_mixer_amp_volume_info, ptr @snd_hda_mixer_amp_volume_get, ptr @snd_hda_mixer_amp_volume_put, %union.anon.79 { ptr @snd_hda_mixer_amp_tlv }, i32 196637 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 1073741824, ptr @.str.465, i32 0, i32 0, i32 0, ptr @snd_hda_mixer_amp_switch_info, ptr @snd_hda_mixer_amp_switch_get, ptr @alc268_beep_switch_put, %union.anon.79 zeroinitializer, i32 720911 }], align 4
@alc268_beep_init_verbs = internal constant [4 x %struct.hda_verb] [%struct.hda_verb { i16 29, i32 768, i32 28672 }, %struct.hda_verb { i16 15, i32 768, i32 29056 }, %struct.hda_verb { i16 16, i32 768, i32 29056 }, %struct.hda_verb zeroinitializer], align 4
@.str.490 = private unnamed_addr constant [8 x i8] c"hp-eapd\00", align 1
@.str.491 = private unnamed_addr constant [6 x i8] c"spdif\00", align 1
@.compoundliteral.492 = internal constant [2 x %struct.hda_verb] [%struct.hda_verb { i16 21, i32 1804, i32 0 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.493 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 30, i32 21696896 }, %struct.hda_pintbl zeroinitializer], align 4
@alc268_parse_auto_config.alc268_ssids = internal constant [4 x i16] [i16 21, i16 27, i16 20, i16 0], align 2
@alc662_fixup_models = internal constant [33 x %struct.hda_model_fixup] [%struct.hda_model_fixup { i32 0, ptr @.str.495 }, %struct.hda_model_fixup { i32 2, ptr @.str.496 }, %struct.hda_model_fixup { i32 3, ptr @.str.497 }, %struct.hda_model_fixup { i32 7, ptr @.str.498 }, %struct.hda_model_fixup { i32 8, ptr @.str.499 }, %struct.hda_model_fixup { i32 9, ptr @.str.500 }, %struct.hda_model_fixup { i32 10, ptr @.str.501 }, %struct.hda_model_fixup { i32 11, ptr @.str.502 }, %struct.hda_model_fixup { i32 12, ptr @.str.503 }, %struct.hda_model_fixup { i32 13, ptr @.str.504 }, %struct.hda_model_fixup { i32 14, ptr @.str.505 }, %struct.hda_model_fixup { i32 15, ptr @.str.506 }, %struct.hda_model_fixup { i32 17, ptr @.str.507 }, %struct.hda_model_fixup { i32 18, ptr @.str.122 }, %struct.hda_model_fixup { i32 19, ptr @.str.508 }, %struct.hda_model_fixup { i32 20, ptr @.str.130 }, %struct.hda_model_fixup { i32 21, ptr @.str.509 }, %struct.hda_model_fixup { i32 22, ptr @.str.510 }, %struct.hda_model_fixup { i32 24, ptr @.str.511 }, %struct.hda_model_fixup { i32 25, ptr @.str.512 }, %struct.hda_model_fixup { i32 27, ptr @.str.513 }, %struct.hda_model_fixup { i32 29, ptr @.str.514 }, %struct.hda_model_fixup { i32 30, ptr @.str.515 }, %struct.hda_model_fixup { i32 32, ptr @.str.516 }, %struct.hda_model_fixup { i32 34, ptr @.str.517 }, %struct.hda_model_fixup { i32 35, ptr @.str.518 }, %struct.hda_model_fixup { i32 36, ptr @.str.519 }, %struct.hda_model_fixup { i32 37, ptr @.str.520 }, %struct.hda_model_fixup { i32 38, ptr @.str.521 }, %struct.hda_model_fixup { i32 40, ptr @.str.522 }, %struct.hda_model_fixup { i32 41, ptr @.str.141 }, %struct.hda_model_fixup { i32 42, ptr @.str.523 }, %struct.hda_model_fixup zeroinitializer], align 4
@alc662_fixup_tbl = internal constant [53 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4121, i16 -28537, i16 -1, i32 9 }, %struct.snd_pci_quirk { i16 4133, i16 559, i16 -1, i32 18 }, %struct.snd_pci_quirk { i16 4133, i16 577, i16 -1, i32 18 }, %struct.snd_pci_quirk { i16 4133, i16 776, i16 -1, i32 0 }, %struct.snd_pci_quirk { i16 4133, i16 796, i16 -1, i32 6 }, %struct.snd_pci_quirk { i16 4133, i16 841, i16 -1, i32 18 }, %struct.snd_pci_quirk { i16 4133, i16 842, i16 -1, i32 18 }, %struct.snd_pci_quirk { i16 4133, i16 907, i16 -1, i32 0 }, %struct.snd_pci_quirk { i16 4133, i16 1382, i16 -1, i32 42 }, %struct.snd_pci_quirk { i16 4133, i16 4668, i16 -1, i32 46 }, %struct.snd_pci_quirk { i16 4133, i16 4686, i16 -1, i32 45 }, %struct.snd_pci_quirk { i16 4136, i16 1496, i16 -1, i32 20 }, %struct.snd_pci_quirk { i16 4136, i16 1499, i16 -1, i32 20 }, %struct.snd_pci_quirk { i16 4136, i16 1534, i16 -1, i32 29 }, %struct.snd_pci_quirk { i16 4136, i16 1546, i16 -1, i32 29 }, %struct.snd_pci_quirk { i16 4136, i16 1549, i16 -1, i32 29 }, %struct.snd_pci_quirk { i16 4136, i16 1573, i16 -1, i32 20 }, %struct.snd_pci_quirk { i16 4136, i16 1574, i16 -1, i32 20 }, %struct.snd_pci_quirk { i16 4136, i16 1686, i16 -1, i32 20 }, %struct.snd_pci_quirk { i16 4136, i16 1688, i16 -1, i32 20 }, %struct.snd_pci_quirk { i16 4136, i16 1695, i16 -1, i32 20 }, %struct.snd_pci_quirk { i16 4156, i16 5682, i16 -1, i32 7 }, %struct.snd_pci_quirk { i16 4156, i16 -30914, i16 -1, i32 44 }, %struct.snd_pci_quirk { i16 4163, i16 4224, i16 -1, i32 22 }, %struct.snd_pci_quirk { i16 4163, i16 4557, i16 -1, i32 30 }, %struct.snd_pci_quirk { i16 4163, i16 4765, i16 -1, i32 30 }, %struct.snd_pci_quirk { i16 4163, i16 4863, i16 -1, i32 34 }, %struct.snd_pci_quirk { i16 4163, i16 5087, i16 -1, i32 25 }, %struct.snd_pci_quirk { i16 4163, i16 5239, i16 -1, i32 23 }, %struct.snd_pci_quirk { i16 4163, i16 5543, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 4163, i16 6013, i16 -1, i32 32 }, %struct.snd_pci_quirk { i16 4163, i16 6077, i16 -1, i32 32 }, %struct.snd_pci_quirk { i16 4163, i16 6237, i16 -1, i32 47 }, %struct.snd_pci_quirk { i16 4163, i16 6499, i16 -1, i32 15 }, %struct.snd_pci_quirk { i16 4163, i16 7027, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 4163, i16 7155, i16 -1, i32 23 }, %struct.snd_pci_quirk { i16 4163, i16 -31639, i16 -1, i32 16 }, %struct.snd_pci_quirk { i16 4187, i16 3286, i16 -1, i32 9 }, %struct.snd_pci_quirk { i16 5197, i16 -16303, i16 -1, i32 2 }, %struct.snd_pci_quirk { i16 5325, i16 20483, i16 -1, i32 40 }, %struct.snd_pci_quirk { i16 6058, i16 4150, i16 -1, i32 41 }, %struct.snd_pci_quirk { i16 6058, i16 13002, i16 -1, i32 51 }, %struct.snd_pci_quirk { i16 6058, i16 13003, i16 -1, i32 51 }, %struct.snd_pci_quirk { i16 6058, i16 13007, i16 -1, i32 51 }, %struct.snd_pci_quirk { i16 6058, i16 13047, i16 -1, i32 51 }, %struct.snd_pci_quirk { i16 6058, i16 14511, i16 -1, i32 2 }, %struct.snd_pci_quirk { i16 6058, i16 14861, i16 -1, i32 2 }, %struct.snd_pci_quirk { i16 6217, i16 22674, i16 -1, i32 38 }, %struct.snd_pci_quirk { i16 6618, i16 -24272, i16 -1, i32 17 }, %struct.snd_pci_quirk { i16 6922, i16 440, i16 -1, i32 37 }, %struct.snd_pci_quirk { i16 6965, i16 4660, i16 -1, i32 4 }, %struct.snd_pci_quirk { i16 6965, i16 8710, i16 -1, i32 5 }, %struct.snd_pci_quirk zeroinitializer], align 4
@alc662_fixups = internal constant [52 x %struct.hda_fixup] [%struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.524 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc662_fixup_led_gpio1 } }, %struct.hda_fixup { i32 1, i8 1, i32 1, %union.anon.67 { ptr @.compoundliteral.525 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc272_fixup_mario } }, %struct.hda_fixup { i32 1, i8 1, i32 6, %union.anon.67 { ptr @.compoundliteral.526 } }, %struct.hda_fixup { i32 2, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.527 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc_fixup_sku_ignore } }, %struct.hda_fixup { i32 1, i8 1, i32 6, %union.anon.67 { ptr @.compoundliteral.528 } }, %struct.hda_fixup { i32 1, i8 1, i32 6, %union.anon.67 { ptr @.compoundliteral.529 } }, %struct.hda_fixup { i32 1, i8 1, i32 6, %union.anon.67 { ptr @.compoundliteral.530 } }, %struct.hda_fixup { i32 1, i8 1, i32 6, %union.anon.67 { ptr @.compoundliteral.531 } }, %struct.hda_fixup { i32 1, i8 1, i32 6, %union.anon.67 { ptr @.compoundliteral.532 } }, %struct.hda_fixup { i32 1, i8 1, i32 6, %union.anon.67 { ptr @.compoundliteral.533 } }, %struct.hda_fixup { i32 1, i8 1, i32 6, %union.anon.67 { ptr @.compoundliteral.534 } }, %struct.hda_fixup { i32 1, i8 1, i32 6, %union.anon.67 { ptr @.compoundliteral.535 } }, %struct.hda_fixup { i32 1, i8 1, i32 6, %union.anon.67 { ptr @.compoundliteral.536 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc_fixup_no_jack_detect } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.537 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc_fixup_inv_dmic } }, %struct.hda_fixup { i32 1, i8 1, i32 21, %union.anon.67 { ptr @.compoundliteral.538 } }, %struct.hda_fixup { i32 1, i8 1, i32 22, %union.anon.67 { ptr @.compoundliteral.539 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc_fixup_headset_mode_alc662 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc_fixup_headset_mode_alc668 } }, %struct.hda_fixup { i32 3, i8 1, i32 11, %union.anon.67 { ptr @alc_fixup_bass_chmap } }, %struct.hda_fixup { i32 1, i8 1, i32 26, %union.anon.67 { ptr @.compoundliteral.540 } }, %struct.hda_fixup { i32 1, i8 1, i32 26, %union.anon.67 { ptr @.compoundliteral.541 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc_fixup_bass_chmap } }, %struct.hda_fixup { i32 3, i8 1, i32 20, %union.anon.67 { ptr @alc_fixup_auto_mute_via_amp } }, %struct.hda_fixup { i32 3, i8 1, i32 20, %union.anon.67 { ptr @alc_fixup_disable_aamix } }, %struct.hda_fixup { i32 3, i8 1, i32 28, %union.anon.67 { ptr @alc_fixup_dell_xps13 } }, %struct.hda_fixup { i32 3, i8 1, i32 25, %union.anon.67 { ptr @alc_fixup_auto_mute_via_amp } }, %struct.hda_fixup { i32 3, i8 0, i32 26, %union.anon.67 { ptr @alc_fixup_headset_mode_alc668 } }, %struct.hda_fixup { i32 1, i8 1, i32 31, %union.anon.67 { ptr @.compoundliteral.542 } }, %struct.hda_fixup { i32 2, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.543 } }, %struct.hda_fixup { i32 1, i8 1, i32 33, %union.anon.67 { ptr @.compoundliteral.544 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc_fixup_headset_mode } }, %struct.hda_fixup { i32 1, i8 1, i32 35, %union.anon.67 { ptr @.compoundliteral.545 } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.546 } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.547 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc662_fixup_usi_headset_mic } }, %struct.hda_fixup { i32 1, i8 1, i32 39, %union.anon.67 { ptr @.compoundliteral.548 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc233_alc662_fixup_lenovo_dual_codecs } }, %struct.hda_fixup { i32 1, i8 1, i32 43, %union.anon.67 { ptr @.compoundliteral.549 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc662_fixup_aspire_ethos_hp } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc671_fixup_hp_headset_mic2 } }, %struct.hda_fixup { i32 1, i8 1, i32 39, %union.anon.67 { ptr @.compoundliteral.550 } }, %struct.hda_fixup { i32 1, i8 1, i32 39, %union.anon.67 { ptr @.compoundliteral.551 } }, %struct.hda_fixup { i32 1, i8 1, i32 48, %union.anon.67 { ptr @.compoundliteral.552 } }, %struct.hda_fixup { i32 3, i8 1, i32 49, %union.anon.67 { ptr @alc269_fixup_headset_mic } }, %struct.hda_fixup { i32 2, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.553 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc897_fixup_lenovo_headset_mic } }, %struct.hda_fixup { i32 1, i8 1, i32 50, %union.anon.67 { ptr @.compoundliteral.554 } }], align 4
@alc662_pin_fixup_tbl = internal constant [12 x %struct.snd_hda_pin_quirk] [%struct.snd_hda_pin_quirk { i32 283904103, i16 4136, ptr @.compoundliteral.557, i32 36 }, %struct.snd_hda_pin_quirk { i32 283904103, i16 4136, ptr @.compoundliteral.558, i32 36 }, %struct.snd_hda_pin_quirk { i32 283903586, i16 4136, ptr @.compoundliteral.559, i32 19 }, %struct.snd_hda_pin_quirk { i32 283903592, i16 4136, ptr @.compoundliteral.560, i32 27 }, %struct.snd_hda_pin_quirk { i32 283903592, i16 4136, ptr @.compoundliteral.561, i32 27 }, %struct.snd_hda_pin_quirk { i32 283903592, i16 4136, ptr @.compoundliteral.562, i32 27 }, %struct.snd_hda_pin_quirk { i32 283903592, i16 4136, ptr @.compoundliteral.563, i32 27 }, %struct.snd_hda_pin_quirk { i32 283903592, i16 4136, ptr @.compoundliteral.564, i32 27 }, %struct.snd_hda_pin_quirk { i32 283903601, i16 4156, ptr @.compoundliteral.565, i32 44 }, %struct.snd_hda_pin_quirk { i32 283903601, i16 4156, ptr @.compoundliteral.566, i32 44 }, %struct.snd_hda_pin_quirk { i32 283903601, i16 4156, ptr @.compoundliteral.567, i32 44 }, %struct.snd_hda_pin_quirk zeroinitializer], align 4
@.str.494 = private unnamed_addr constant [8 x i8] c"ALC272X\00", align 1
@alc668_coefs = internal constant [60 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 1, i16 -1, i16 -16706 }, %struct.coef_fw { i8 32, i8 2, i16 -1, i16 -21846 }, %struct.coef_fw { i8 32, i8 3, i16 -1, i16 0 }, %struct.coef_fw { i8 32, i8 4, i16 -1, i16 384 }, %struct.coef_fw { i8 32, i8 6, i16 -1, i16 0 }, %struct.coef_fw { i8 32, i8 7, i16 -1, i16 3968 }, %struct.coef_fw { i8 32, i8 8, i16 -1, i16 49 }, %struct.coef_fw { i8 32, i8 10, i16 -1, i16 96 }, %struct.coef_fw { i8 32, i8 11, i16 -1, i16 0 }, %struct.coef_fw { i8 32, i8 12, i16 -1, i16 31991 }, %struct.coef_fw { i8 32, i8 13, i16 -1, i16 4224 }, %struct.coef_fw { i8 32, i8 14, i16 -1, i16 32639 }, %struct.coef_fw { i8 32, i8 15, i16 -1, i16 -13108 }, %struct.coef_fw { i8 32, i8 16, i16 -1, i16 -8756 }, %struct.coef_fw { i8 32, i8 17, i16 -1, i16 1 }, %struct.coef_fw { i8 32, i8 19, i16 -1, i16 0 }, %struct.coef_fw { i8 32, i8 20, i16 -1, i16 10912 }, %struct.coef_fw { i8 32, i8 23, i16 -1, i16 -22208 }, %struct.coef_fw { i8 32, i8 25, i16 -1, i16 0 }, %struct.coef_fw { i8 32, i8 26, i16 -1, i16 0 }, %struct.coef_fw { i8 32, i8 27, i16 -1, i16 0 }, %struct.coef_fw { i8 32, i8 28, i16 -1, i16 0 }, %struct.coef_fw { i8 32, i8 29, i16 -1, i16 0 }, %struct.coef_fw { i8 32, i8 30, i16 -1, i16 29720 }, %struct.coef_fw { i8 32, i8 31, i16 -1, i16 2052 }, %struct.coef_fw { i8 32, i8 32, i16 -1, i16 16896 }, %struct.coef_fw { i8 32, i8 33, i16 -1, i16 1128 }, %struct.coef_fw { i8 32, i8 34, i16 -1, i16 -29492 }, %struct.coef_fw { i8 32, i8 35, i16 -1, i16 592 }, %struct.coef_fw { i8 32, i8 36, i16 -1, i16 29720 }, %struct.coef_fw { i8 32, i8 39, i16 -1, i16 0 }, %struct.coef_fw { i8 32, i8 40, i16 -1, i16 -29492 }, %struct.coef_fw { i8 32, i8 42, i16 -1, i16 -256 }, %struct.coef_fw { i8 32, i8 43, i16 -1, i16 -32768 }, %struct.coef_fw { i8 32, i8 -89, i16 -1, i16 -256 }, %struct.coef_fw { i8 32, i8 -88, i16 -1, i16 -32768 }, %struct.coef_fw { i8 32, i8 -86, i16 -1, i16 11799 }, %struct.coef_fw { i8 32, i8 -85, i16 -1, i16 -24384 }, %struct.coef_fw { i8 32, i8 -84, i16 -1, i16 0 }, %struct.coef_fw { i8 32, i8 -83, i16 -1, i16 0 }, %struct.coef_fw { i8 32, i8 -82, i16 -1, i16 10950 }, %struct.coef_fw { i8 32, i8 -81, i16 -1, i16 -23424 }, %struct.coef_fw { i8 32, i8 -80, i16 -1, i16 0 }, %struct.coef_fw { i8 32, i8 -79, i16 -1, i16 0 }, %struct.coef_fw { i8 32, i8 -78, i16 -1, i16 0 }, %struct.coef_fw { i8 32, i8 -77, i16 -1, i16 0 }, %struct.coef_fw { i8 32, i8 -76, i16 -1, i16 0 }, %struct.coef_fw { i8 32, i8 -75, i16 -1, i16 4160 }, %struct.coef_fw { i8 32, i8 -74, i16 -1, i16 -10601 }, %struct.coef_fw { i8 32, i8 -73, i16 -1, i16 -28629 }, %struct.coef_fw { i8 32, i8 -72, i16 -1, i16 -10601 }, %struct.coef_fw { i8 32, i8 -71, i16 -1, i16 -28629 }, %struct.coef_fw { i8 32, i8 -70, i16 -1, i16 -18246 }, %struct.coef_fw { i8 32, i8 -69, i16 -1, i16 -21845 }, %struct.coef_fw { i8 32, i8 -68, i16 -1, i16 -21841 }, %struct.coef_fw { i8 32, i8 -67, i16 -1, i16 27306 }, %struct.coef_fw { i8 32, i8 -66, i16 -1, i16 7170 }, %struct.coef_fw { i8 32, i8 -64, i16 -1, i16 255 }, %struct.coef_fw { i8 32, i8 -63, i16 -1, i16 4006 }, %struct.coef_fw zeroinitializer], align 2
@.str.495 = private unnamed_addr constant [7 x i8] c"aspire\00", align 1
@.str.496 = private unnamed_addr constant [8 x i8] c"ideapad\00", align 1
@.str.497 = private unnamed_addr constant [6 x i8] c"mario\00", align 1
@.str.498 = private unnamed_addr constant [10 x i8] c"hp-rp5800\00", align 1
@.str.499 = private unnamed_addr constant [11 x i8] c"asus-mode1\00", align 1
@.str.500 = private unnamed_addr constant [11 x i8] c"asus-mode2\00", align 1
@.str.501 = private unnamed_addr constant [11 x i8] c"asus-mode3\00", align 1
@.str.502 = private unnamed_addr constant [11 x i8] c"asus-mode4\00", align 1
@.str.503 = private unnamed_addr constant [11 x i8] c"asus-mode5\00", align 1
@.str.504 = private unnamed_addr constant [11 x i8] c"asus-mode6\00", align 1
@.str.505 = private unnamed_addr constant [11 x i8] c"asus-mode7\00", align 1
@.str.506 = private unnamed_addr constant [11 x i8] c"asus-mode8\00", align 1
@.str.507 = private unnamed_addr constant [10 x i8] c"zotac-z68\00", align 1
@.str.508 = private unnamed_addr constant [21 x i8] c"alc662-headset-multi\00", align 1
@.str.509 = private unnamed_addr constant [15 x i8] c"alc662-headset\00", align 1
@.str.510 = private unnamed_addr constant [15 x i8] c"alc668-headset\00", align 1
@.str.511 = private unnamed_addr constant [7 x i8] c"bass16\00", align 1
@.str.512 = private unnamed_addr constant [7 x i8] c"bass1a\00", align 1
@.str.513 = private unnamed_addr constant [9 x i8] c"automute\00", align 1
@.str.514 = private unnamed_addr constant [11 x i8] c"dell-xps13\00", align 1
@.str.515 = private unnamed_addr constant [10 x i8] c"asus-nx50\00", align 1
@.str.516 = private unnamed_addr constant [10 x i8] c"asus-nx51\00", align 1
@.str.517 = private unnamed_addr constant [10 x i8] c"asus-g751\00", align 1
@.str.518 = private unnamed_addr constant [15 x i8] c"alc891-headset\00", align 1
@.str.519 = private unnamed_addr constant [21 x i8] c"alc891-headset-multi\00", align 1
@.str.520 = private unnamed_addr constant [13 x i8] c"acer-veriton\00", align 1
@.str.521 = private unnamed_addr constant [12 x i8] c"asrock-mobo\00", align 1
@.str.522 = private unnamed_addr constant [12 x i8] c"usi-headset\00", align 1
@.str.523 = private unnamed_addr constant [13 x i8] c"aspire-ethos\00", align 1
@.compoundliteral.524 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 21, i32 -1726807790 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.525 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 23, i32 -1726807790 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.526 = internal constant [12 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 1077723136 }, %struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 21, i32 1091637744 }, %struct.hda_pintbl { i16 22, i32 1091637744 }, %struct.hda_pintbl { i16 24, i32 27365424 }, %struct.hda_pintbl { i16 25, i32 -1868103361 }, %struct.hda_pintbl { i16 26, i32 16859168 }, %struct.hda_pintbl { i16 27, i32 18956319 }, %struct.hda_pintbl { i16 28, i32 1091637744 }, %struct.hda_pintbl { i16 29, i32 1091637744 }, %struct.hda_pintbl { i16 30, i32 1078431285 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.527 = internal constant [2 x %struct.hda_verb] [%struct.hda_verb { i16 20, i32 1804, i32 0 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.528 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 35725343 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.529 = internal constant [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1726807792 }, %struct.hda_pintbl { i16 24, i32 27368480 }, %struct.hda_pintbl { i16 25, i32 -1717368529 }, %struct.hda_pintbl { i16 33, i32 18956319 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.530 = internal constant [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1726807792 }, %struct.hda_pintbl { i16 24, i32 27367456 }, %struct.hda_pintbl { i16 25, i32 -1717368529 }, %struct.hda_pintbl { i16 27, i32 18956319 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.531 = internal constant [6 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1726807792 }, %struct.hda_pintbl { i16 21, i32 18957343 }, %struct.hda_pintbl { i16 24, i32 27367488 }, %struct.hda_pintbl { i16 25, i32 -1717368497 }, %struct.hda_pintbl { i16 33, i32 18945056 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.532 = internal constant [6 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1726807792 }, %struct.hda_pintbl { i16 22, i32 -1726807791 }, %struct.hda_pintbl { i16 24, i32 27367488 }, %struct.hda_pintbl { i16 25, i32 -1717368497 }, %struct.hda_pintbl { i16 33, i32 18957343 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.533 = internal constant [6 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1726807792 }, %struct.hda_pintbl { i16 21, i32 18957343 }, %struct.hda_pintbl { i16 22, i32 -1726807791 }, %struct.hda_pintbl { i16 24, i32 27367488 }, %struct.hda_pintbl { i16 25, i32 -1717368497 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.534 = internal constant [6 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1726807792 }, %struct.hda_pintbl { i16 21, i32 18945056 }, %struct.hda_pintbl { i16 24, i32 27367488 }, %struct.hda_pintbl { i16 25, i32 -1717368497 }, %struct.hda_pintbl { i16 27, i32 18957343 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.535 = internal constant [7 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1726807792 }, %struct.hda_pintbl { i16 23, i32 -1726807791 }, %struct.hda_pintbl { i16 24, i32 27367488 }, %struct.hda_pintbl { i16 25, i32 -1717368497 }, %struct.hda_pintbl { i16 27, i32 18956320 }, %struct.hda_pintbl { i16 33, i32 18956319 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.536 = internal constant [7 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1726807792 }, %struct.hda_pintbl { i16 18, i32 -1717368464 }, %struct.hda_pintbl { i16 21, i32 18956320 }, %struct.hda_pintbl { i16 23, i32 -1726807791 }, %struct.hda_pintbl { i16 24, i32 27367488 }, %struct.hda_pintbl { i16 33, i32 18956319 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.537 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 27, i32 35733536 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.538 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 60887356 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.539 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 60920125 }, %struct.hda_pintbl { i16 27, i32 60887356 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.540 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 22, i32 -2146410223 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.541 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 26, i32 -2146410223 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.542 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 60920125 }, %struct.hda_pintbl { i16 26, i32 -1877540527 }, %struct.hda_pintbl { i16 27, i32 60887356 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.543 = internal constant [3 x %struct.hda_verb] [%struct.hda_verb { i16 32, i32 1280, i32 195 }, %struct.hda_verb { i16 32, i32 1024, i32 16384 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.544 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 22, i32 69275679 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.545 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 60920125 }, %struct.hda_pintbl { i16 27, i32 60887356 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.546 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 21, i32 1343684896 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.547 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 21, i32 1089470704 }, %struct.hda_pintbl { i16 22, i32 1089470704 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.548 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 44142908 }, %struct.hda_pintbl { i16 24, i32 27365437 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.549 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 21, i32 -1844248304 }, %struct.hda_pintbl { i16 24, i32 -1726807791 }, %struct.hda_pintbl { i16 27, i32 286457874 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.550 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 26, i32 44110140 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.551 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 26, i32 27332928 }, %struct.hda_pintbl { i16 27, i32 35722319 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.552 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 27, i32 77664556 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.553 = internal constant [3 x %struct.hda_verb] [%struct.hda_verb { i16 32, i32 1280, i32 21 }, %struct.hda_verb { i16 32, i32 1024, i32 3424 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.554 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 26, i32 60887120 }, %struct.hda_pintbl zeroinitializer], align 4
@.str.555 = private unnamed_addr constant [41 x i8] c"failed to override amp caps for NID 0x2\0A\00", align 1
@asus_pcm_2_1_chmaps = internal constant <{ { i8, <{ i8, i8, [13 x i8] }> }, { i8, <{ i8, i8, i8, i8, [11 x i8] }> }, %struct.snd_pcm_chmap_elem }> <{ { i8, <{ i8, i8, [13 x i8] }> } { i8 2, <{ i8, i8, [13 x i8] }> <{ i8 3, i8 4, [13 x i8] zeroinitializer }> }, { i8, <{ i8, i8, i8, i8, [11 x i8] }> } { i8 4, <{ i8, i8, i8, i8, [11 x i8] }> <{ i8 3, i8 4, i8 1, i8 8, [11 x i8] zeroinitializer }> }, %struct.snd_pcm_chmap_elem zeroinitializer }>, align 1
@alc671_fixup_hp_headset_mic2.pincfgs = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 44109888 }, %struct.hda_pintbl { i16 27, i32 25243727 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.557 = internal constant [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 23, i32 35721232 }, %struct.hda_pintbl { i16 24, i32 27365424 }, %struct.hda_pintbl { i16 26, i32 25243712 }, %struct.hda_pintbl { i16 33, i32 16859168 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.558 = internal constant [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 22, i32 25243696 }, %struct.hda_pintbl { i16 23, i32 35721232 }, %struct.hda_pintbl { i16 24, i32 27365440 }, %struct.hda_pintbl { i16 33, i32 16859168 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.559 = internal constant [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 16859152 }, %struct.hda_pintbl { i16 24, i32 27365408 }, %struct.hda_pintbl { i16 26, i32 25243695 }, %struct.hda_pintbl { i16 27, i32 35733535 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.560 = internal constant [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1717370576 }, %struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 21, i32 52498463 }, %struct.hda_pintbl { i16 22, i32 50401312 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.561 = internal constant [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1717370560 }, %struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 21, i32 52498463 }, %struct.hda_pintbl { i16 22, i32 50401312 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.562 = internal constant [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1717370544 }, %struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 21, i32 52498463 }, %struct.hda_pintbl { i16 22, i32 50401312 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.563 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 21, i32 52498463 }, %struct.hda_pintbl { i16 22, i32 50401312 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.564 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1868168912 }, %struct.hda_pintbl { i16 20, i32 -1877540592 }, %struct.hda_pintbl { i16 21, i32 52498463 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.565 = internal constant [6 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 16859152 }, %struct.hda_pintbl { i16 23, i32 -1877540528 }, %struct.hda_pintbl { i16 25, i32 44109920 }, %struct.hda_pintbl { i16 27, i32 25243696 }, %struct.hda_pintbl { i16 33, i32 35721248 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.566 = internal constant [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 16859152 }, %struct.hda_pintbl { i16 24, i32 27365440 }, %struct.hda_pintbl { i16 27, i32 25243696 }, %struct.hda_pintbl { i16 33, i32 35721248 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.567 = internal constant [6 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 16859168 }, %struct.hda_pintbl { i16 23, i32 -1877540592 }, %struct.hda_pintbl { i16 24, i32 27365456 }, %struct.hda_pintbl { i16 27, i32 25243712 }, %struct.hda_pintbl { i16 33, i32 35721264 }, %struct.hda_pintbl zeroinitializer], align 4
@alc662_parse_auto_config.alc662_ignore = internal constant [2 x i16] [i16 29, i16 0], align 2
@alc662_parse_auto_config.alc663_ssids = internal constant [4 x i16] [i16 21, i16 27, i16 20, i16 33], align 2
@alc662_parse_auto_config.alc662_ssids = internal constant [4 x i16] [i16 21, i16 27, i16 20, i16 0], align 2
@alc861_fixup_tbl = internal constant [8 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4163, i16 4691, i16 -1, i32 4 }, %struct.snd_pci_quirk { i16 4163, i16 4707, i16 -1, i32 4 }, %struct.snd_pci_quirk { i16 4163, i16 5011, i16 -1, i32 3 }, %struct.snd_pci_quirk { i16 4163, i16 0, i16 0, i32 1 }, %struct.snd_pci_quirk { i16 5218, i16 29268, i16 -1, i32 2 }, %struct.snd_pci_quirk { i16 5508, i16 0, i16 0, i32 1 }, %struct.snd_pci_quirk { i16 5940, i16 4295, i16 -1, i32 0 }, %struct.snd_pci_quirk zeroinitializer], align 4
@alc861_fixups = internal constant [5 x %struct.hda_fixup] [%struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.568 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc861_fixup_asus_amp_vref_0f } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc_fixup_no_jack_detect } }, %struct.hda_fixup { i32 3, i8 1, i32 2, %union.anon.67 { ptr @alc861_fixup_asus_amp_vref_0f } }, %struct.hda_fixup { i32 2, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.569 } }], align 4
@.compoundliteral.568 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 11, i32 35721247 }, %struct.hda_pintbl { i16 15, i32 -1877540080 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.569 = internal constant [2 x %struct.hda_verb] [%struct.hda_verb { i16 16, i32 1799, i32 36 }, %struct.hda_verb zeroinitializer], align 4
@alc861_parse_auto_config.alc861_ignore = internal constant [2 x i16] [i16 29, i16 0], align 2
@alc861_parse_auto_config.alc861_ssids = internal constant [4 x i16] [i16 14, i16 15, i16 11, i16 0], align 2
@alc861vd_fixup_tbl = internal constant [4 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4156, i16 12479, i16 -1, i32 1 }, %struct.snd_pci_quirk { i16 4163, i16 4921, i16 -1, i32 0 }, %struct.snd_pci_quirk { i16 4473, i16 -207, i16 -1, i32 1 }, %struct.snd_pci_quirk zeroinitializer], align 4
@alc861vd_fixups = internal constant [2 x %struct.hda_fixup] [%struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc660vd_fixup_asus_gpio1 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc861vd_fixup_dallas } }], align 4
@alc861vd_parse_auto_config.alc861vd_ignore = internal constant [2 x i16] [i16 29, i16 0], align 2
@alc861vd_parse_auto_config.alc861vd_ssids = internal constant [4 x i16] [i16 21, i16 27, i16 20, i16 0], align 2
@alc882_fixup_models = internal constant [33 x %struct.hda_model_fixup] [%struct.hda_model_fixup { i32 0, ptr @.str.570 }, %struct.hda_model_fixup { i32 1, ptr @.str.571 }, %struct.hda_model_fixup { i32 3, ptr @.str.572 }, %struct.hda_model_fixup { i32 4, ptr @.str.573 }, %struct.hda_model_fixup { i32 5, ptr @.str.574 }, %struct.hda_model_fixup { i32 6, ptr @.str.575 }, %struct.hda_model_fixup { i32 7, ptr @.str.576 }, %struct.hda_model_fixup { i32 8, ptr @.str.577 }, %struct.hda_model_fixup { i32 10, ptr @.str.578 }, %struct.hda_model_fixup { i32 11, ptr @.str.579 }, %struct.hda_model_fixup { i32 13, ptr @.str.466 }, %struct.hda_model_fixup { i32 14, ptr @.str.580 }, %struct.hda_model_fixup { i32 15, ptr @.str.581 }, %struct.hda_model_fixup { i32 16, ptr @.str.582 }, %struct.hda_model_fixup { i32 17, ptr @.str.583 }, %struct.hda_model_fixup { i32 18, ptr @.str.584 }, %struct.hda_model_fixup { i32 19, ptr @.str.585 }, %struct.hda_model_fixup { i32 12, ptr @.str.586 }, %struct.hda_model_fixup { i32 21, ptr @.str.587 }, %struct.hda_model_fixup { i32 22, ptr @.str.588 }, %struct.hda_model_fixup { i32 23, ptr @.str.589 }, %struct.hda_model_fixup { i32 24, ptr @.str.590 }, %struct.hda_model_fixup { i32 25, ptr @.str.591 }, %struct.hda_model_fixup { i32 26, ptr @.str.592 }, %struct.hda_model_fixup { i32 27, ptr @.str.593 }, %struct.hda_model_fixup { i32 28, ptr @.str.594 }, %struct.hda_model_fixup { i32 29, ptr @.str.122 }, %struct.hda_model_fixup { i32 30, ptr @.str.595 }, %struct.hda_model_fixup { i32 31, ptr @.str.596 }, %struct.hda_model_fixup { i32 33, ptr @.str.141 }, %struct.hda_model_fixup { i32 34, ptr @.str.597 }, %struct.hda_model_fixup { i32 35, ptr @.str.598 }, %struct.hda_model_fixup zeroinitializer], align 4
@alc882_fixup_tbl = internal constant [101 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4133, i16 108, i16 -1, i32 12 }, %struct.snd_pci_quirk { i16 4133, i16 144, i16 -1, i32 12 }, %struct.snd_pci_quirk { i16 4133, i16 263, i16 -1, i32 12 }, %struct.snd_pci_quirk { i16 4133, i16 266, i16 -1, i32 12 }, %struct.snd_pci_quirk { i16 4133, i16 272, i16 -1, i32 12 }, %struct.snd_pci_quirk { i16 4133, i16 274, i16 -1, i32 12 }, %struct.snd_pci_quirk { i16 4133, i16 289, i16 -1, i32 12 }, %struct.snd_pci_quirk { i16 4133, i16 318, i16 -1, i32 18 }, %struct.snd_pci_quirk { i16 4133, i16 319, i16 -1, i32 18 }, %struct.snd_pci_quirk { i16 4133, i16 325, i16 -1, i32 19 }, %struct.snd_pci_quirk { i16 4133, i16 326, i16 -1, i32 19 }, %struct.snd_pci_quirk { i16 4133, i16 322, i16 -1, i32 18 }, %struct.snd_pci_quirk { i16 4133, i16 341, i16 -1, i32 2 }, %struct.snd_pci_quirk { i16 4133, i16 350, i16 -1, i32 18 }, %struct.snd_pci_quirk { i16 4133, i16 358, i16 -1, i32 18 }, %struct.snd_pci_quirk { i16 4133, i16 542, i16 -1, i32 18 }, %struct.snd_pci_quirk { i16 4133, i16 601, i16 -1, i32 22 }, %struct.snd_pci_quirk { i16 4133, i16 619, i16 -1, i32 19 }, %struct.snd_pci_quirk { i16 4133, i16 662, i16 -1, i32 3 }, %struct.snd_pci_quirk { i16 4163, i16 5058, i16 -1, i32 10 }, %struct.snd_pci_quirk { i16 4163, i16 6259, i16 -1, i32 4 }, %struct.snd_pci_quirk { i16 4163, i16 6513, i16 -1, i32 17 }, %struct.snd_pci_quirk { i16 4163, i16 9104, i16 -1, i32 39 }, %struct.snd_pci_quirk { i16 4163, i16 -31905, i16 -1, i32 8 }, %struct.snd_pci_quirk { i16 4163, i16 -31556, i16 -1, i32 31 }, %struct.snd_pci_quirk { i16 4163, i16 -31087, i16 -1, i32 15 }, %struct.snd_pci_quirk { i16 4173, i16 -28605, i16 -1, i32 30 }, %struct.snd_pci_quirk { i16 4173, i16 -28604, i16 -1, i32 30 }, %struct.snd_pci_quirk { i16 4173, i16 -28601, i16 -1, i32 7 }, %struct.snd_pci_quirk { i16 4173, i16 -28582, i16 -1, i32 30 }, %struct.snd_pci_quirk { i16 4173, i16 -28576, i16 -1, i32 30 }, %struct.snd_pci_quirk { i16 4203, i16 160, i16 -1, i32 23 }, %struct.snd_pci_quirk { i16 4203, i16 161, i16 -1, i32 23 }, %struct.snd_pci_quirk { i16 4203, i16 164, i16 -1, i32 23 }, %struct.snd_pci_quirk { i16 4203, i16 3072, i16 -1, i32 27 }, %struct.snd_pci_quirk { i16 4203, i16 4096, i16 -1, i32 21 }, %struct.snd_pci_quirk { i16 4203, i16 10240, i16 -1, i32 21 }, %struct.snd_pci_quirk { i16 4203, i16 11264, i16 -1, i32 23 }, %struct.snd_pci_quirk { i16 4203, i16 12288, i16 -1, i32 23 }, %struct.snd_pci_quirk { i16 4203, i16 12800, i16 -1, i32 10 }, %struct.snd_pci_quirk { i16 4203, i16 13312, i16 -1, i32 25 }, %struct.snd_pci_quirk { i16 4203, i16 13568, i16 -1, i32 26 }, %struct.snd_pci_quirk { i16 4203, i16 13824, i16 -1, i32 23 }, %struct.snd_pci_quirk { i16 4203, i16 14336, i16 -1, i32 23 }, %struct.snd_pci_quirk { i16 4203, i16 15872, i16 -1, i32 21 }, %struct.snd_pci_quirk { i16 4203, i16 16128, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 4203, i16 16384, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 4203, i16 16640, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 4203, i16 16896, i16 -1, i32 28 }, %struct.snd_pci_quirk { i16 4203, i16 17152, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 4203, i16 17920, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 4203, i16 18688, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 4203, i16 18944, i16 -1, i32 25 }, %struct.snd_pci_quirk { i16 4209, i16 -32168, i16 -1, i32 10 }, %struct.snd_pci_quirk { i16 5118, i16 4105, i16 -1, i32 9 }, %struct.snd_pci_quirk { i16 5208, i16 -24574, i16 -1, i32 6 }, %struct.snd_pci_quirk { i16 5208, i16 -24392, i16 -1, i32 33 }, %struct.snd_pci_quirk { i16 5208, i16 -24371, i16 -1, i32 34 }, %struct.snd_pci_quirk { i16 5208, i16 -24370, i16 -1, i32 34 }, %struct.snd_pci_quirk { i16 5208, i16 -24363, i16 -1, i32 34 }, %struct.snd_pci_quirk { i16 5218, i16 4599, i16 -1, i32 35 }, %struct.snd_pci_quirk { i16 5218, i16 4648, i16 -1, i32 35 }, %struct.snd_pci_quirk { i16 5218, i16 4649, i16 -1, i32 35 }, %struct.snd_pci_quirk { i16 5218, i16 4725, i16 -1, i32 35 }, %struct.snd_pci_quirk { i16 5218, i16 4726, i16 -1, i32 35 }, %struct.snd_pci_quirk { i16 5218, i16 4755, i16 -1, i32 35 }, %struct.snd_pci_quirk { i16 5218, i16 29520, i16 -1, i32 5 }, %struct.snd_pci_quirk { i16 5218, i16 -13260, i16 -1, i32 33 }, %struct.snd_pci_quirk { i16 5218, i16 -9641, i16 -1, i32 33 }, %struct.snd_pci_quirk { i16 5218, i16 0, i16 0, i32 15 }, %struct.snd_pci_quirk { i16 5243, i16 4218, i16 -1, i32 0 }, %struct.snd_pci_quirk { i16 5464, i16 20691, i16 -1, i32 37 }, %struct.snd_pci_quirk { i16 5464, i16 26065, i16 -1, i32 37 }, %struct.snd_pci_quirk { i16 5464, i16 26066, i16 -1, i32 37 }, %struct.snd_pci_quirk { i16 5464, i16 26081, i16 -1, i32 37 }, %struct.snd_pci_quirk { i16 5464, i16 26085, i16 -1, i32 37 }, %struct.snd_pci_quirk { i16 5464, i16 26097, i16 -1, i32 37 }, %struct.snd_pci_quirk { i16 5464, i16 26577, i16 -1, i32 37 }, %struct.snd_pci_quirk { i16 5464, i16 26593, i16 -1, i32 37 }, %struct.snd_pci_quirk { i16 5464, i16 26597, i16 -1, i32 37 }, %struct.snd_pci_quirk { i16 5464, i16 26609, i16 -1, i32 37 }, %struct.snd_pci_quirk { i16 5464, i16 28881, i16 -1, i32 37 }, %struct.snd_pci_quirk { i16 5464, i16 30484, i16 -1, i32 37 }, %struct.snd_pci_quirk { i16 5464, i16 30485, i16 -1, i32 36 }, %struct.snd_pci_quirk { i16 5464, i16 -27391, i16 -1, i32 35 }, %struct.snd_pci_quirk { i16 5464, i16 -27386, i16 -1, i32 35 }, %struct.snd_pci_quirk { i16 5464, i16 -27382, i16 -1, i32 35 }, %struct.snd_pci_quirk { i16 5464, i16 -27167, i16 -1, i32 35 }, %struct.snd_pci_quirk { i16 5464, i16 -27166, i16 -1, i32 35 }, %struct.snd_pci_quirk { i16 5464, i16 -27165, i16 -1, i32 35 }, %struct.snd_pci_quirk { i16 5464, i16 -27164, i16 -1, i32 35 }, %struct.snd_pci_quirk { i16 5464, i16 -27163, i16 -1, i32 35 }, %struct.snd_pci_quirk { i16 5464, i16 -27162, i16 -1, i32 35 }, %struct.snd_pci_quirk { i16 5464, i16 -26911, i16 -1, i32 35 }, %struct.snd_pci_quirk { i16 5464, i16 -26655, i16 -1, i32 35 }, %struct.snd_pci_quirk { i16 5464, i16 -26654, i16 -1, i32 35 }, %struct.snd_pci_quirk { i16 5464, i16 0, i16 0, i32 10 }, %struct.snd_pci_quirk { i16 5663, i16 8276, i16 -1, i32 11 }, %struct.snd_pci_quirk { i16 6058, i16 14861, i16 -1, i32 1 }, %struct.snd_pci_quirk { i16 -32634, i16 34, i16 -1, i32 16 }, %struct.snd_pci_quirk zeroinitializer], align 4
@alc882_fixups = internal constant [40 x %struct.hda_fixup] [%struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.599 } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.600 } }, %struct.hda_fixup { i32 4, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.601 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc_fixup_sku_ignore } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.602 } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.603 } }, %struct.hda_fixup { i32 1, i8 1, i32 5, %union.anon.67 { ptr @.compoundliteral.604 } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.605 } }, %struct.hda_fixup { i32 2, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.606 } }, %struct.hda_fixup { i32 2, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.607 } }, %struct.hda_fixup { i32 2, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.608 } }, %struct.hda_fixup { i32 2, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.609 } }, %struct.hda_fixup { i32 2, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.610 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc_fixup_gpio1 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc_fixup_gpio2 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc_fixup_gpio3 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc889_fixup_coef } }, %struct.hda_fixup { i32 3, i8 1, i32 10, %union.anon.67 { ptr @alc_fixup_gpio1 } }, %struct.hda_fixup { i32 1, i8 1, i32 13, %union.anon.67 { ptr @.compoundliteral.611 } }, %struct.hda_fixup { i32 1, i8 1, i32 20, %union.anon.67 { ptr @.compoundliteral.612 } }, %struct.hda_fixup { i32 2, i8 1, i32 13, %union.anon.67 { ptr @.compoundliteral.613 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc885_fixup_macpro_gpio } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc889_fixup_dac_route } }, %struct.hda_fixup { i32 3, i8 1, i32 13, %union.anon.67 { ptr @alc889_fixup_mbp_vref } }, %struct.hda_fixup { i32 3, i8 1, i32 13, %union.anon.67 { ptr @alc889_fixup_imac91_vref } }, %struct.hda_fixup { i32 3, i8 1, i32 23, %union.anon.67 { ptr @alc889_fixup_mba11_vref } }, %struct.hda_fixup { i32 3, i8 1, i32 23, %union.anon.67 { ptr @alc889_fixup_mba21_vref } }, %struct.hda_fixup { i32 3, i8 1, i32 21, %union.anon.67 { ptr @alc889_fixup_mba11_vref } }, %struct.hda_fixup { i32 3, i8 1, i32 21, %union.anon.67 { ptr @alc889_fixup_mbp_vref } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc_fixup_inv_dmic } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc882_fixup_no_primary_hp } }, %struct.hda_fixup { i32 1, i8 1, i32 32, %union.anon.67 { ptr @.compoundliteral.614 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc_fixup_bass_chmap } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc1220_fixup_gb_dual_codecs } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc1220_fixup_gb_x570 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc1220_fixup_clevo_p950 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc1220_fixup_clevo_pb51ed } }, %struct.hda_fixup { i32 1, i8 1, i32 36, %union.anon.67 { ptr @.compoundliteral.615 } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.616 } }, %struct.hda_fixup { i32 3, i8 1, i32 38, %union.anon.67 { ptr @alc887_fixup_asus_jack } }], align 4
@alc882_pin_fixup_tbl = internal constant [3 x %struct.snd_hda_pin_quirk] [%struct.snd_hda_pin_quirk { i32 283906592, i16 4163, ptr @.compoundliteral.618, i32 35 }, %struct.snd_hda_pin_quirk { i32 283906592, i16 5218, ptr @.compoundliteral.619, i32 35 }, %struct.snd_hda_pin_quirk zeroinitializer], align 4
@.str.570 = private unnamed_addr constant [10 x i8] c"abit-aw9d\00", align 1
@.str.571 = private unnamed_addr constant [12 x i8] c"lenovo-y530\00", align 1
@.str.572 = private unnamed_addr constant [17 x i8] c"acer-aspire-7736\00", align 1
@.str.573 = private unnamed_addr constant [10 x i8] c"asus-w90v\00", align 1
@.str.574 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@.str.575 = private unnamed_addr constant [12 x i8] c"no-front-hp\00", align 1
@.str.576 = private unnamed_addr constant [8 x i8] c"vaio-tt\00", align 1
@.str.577 = private unnamed_addr constant [8 x i8] c"eee1601\00", align 1
@.str.578 = private unnamed_addr constant [12 x i8] c"alc882-eapd\00", align 1
@.str.579 = private unnamed_addr constant [12 x i8] c"alc883-eapd\00", align 1
@.str.580 = private unnamed_addr constant [6 x i8] c"gpio2\00", align 1
@.str.581 = private unnamed_addr constant [6 x i8] c"gpio3\00", align 1
@.str.582 = private unnamed_addr constant [12 x i8] c"alc889-coef\00", align 1
@.str.583 = private unnamed_addr constant [10 x i8] c"asus-w2jc\00", align 1
@.str.584 = private unnamed_addr constant [18 x i8] c"acer-aspire-4930g\00", align 1
@.str.585 = private unnamed_addr constant [18 x i8] c"acer-aspire-8930g\00", align 1
@.str.586 = private unnamed_addr constant [12 x i8] c"acer-aspire\00", align 1
@.str.587 = private unnamed_addr constant [12 x i8] c"macpro-gpio\00", align 1
@.str.588 = private unnamed_addr constant [10 x i8] c"dac-route\00", align 1
@.str.589 = private unnamed_addr constant [9 x i8] c"mbp-vref\00", align 1
@.str.590 = private unnamed_addr constant [12 x i8] c"imac91-vref\00", align 1
@.str.591 = private unnamed_addr constant [11 x i8] c"mba11-vref\00", align 1
@.str.592 = private unnamed_addr constant [11 x i8] c"mba21-vref\00", align 1
@.str.593 = private unnamed_addr constant [10 x i8] c"mp11-vref\00", align 1
@.str.594 = private unnamed_addr constant [10 x i8] c"mp41-vref\00", align 1
@.str.595 = private unnamed_addr constant [14 x i8] c"no-primary-hp\00", align 1
@.str.596 = private unnamed_addr constant [10 x i8] c"asus-bass\00", align 1
@.str.597 = private unnamed_addr constant [8 x i8] c"gb-x570\00", align 1
@.str.598 = private unnamed_addr constant [11 x i8] c"clevo-p950\00", align 1
@.compoundliteral.599 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 21, i32 17301764 }, %struct.hda_pintbl { i16 22, i32 16846866 }, %struct.hda_pintbl { i16 23, i32 16867345 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.600 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 21, i32 -1726807790 }, %struct.hda_pintbl { i16 22, i32 -1726807791 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.601 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 33 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.602 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 22, i32 -1726807792 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.603 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 28, i32 -1724710416 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.604 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 27, i32 35733792 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.605 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 23, i32 -1877540591 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.606 = internal constant [3 x %struct.hda_verb] [%struct.hda_verb { i16 32, i32 1280, i32 11 }, %struct.hda_verb { i16 32, i32 1024, i32 2104 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.607 = internal constant [3 x %struct.hda_verb] [%struct.hda_verb { i16 32, i32 1280, i32 7 }, %struct.hda_verb { i16 32, i32 1024, i32 104 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.608 = internal constant [3 x %struct.hda_verb] [%struct.hda_verb { i16 32, i32 1280, i32 7 }, %struct.hda_verb { i16 32, i32 1024, i32 12384 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.609 = internal constant [3 x %struct.hda_verb] [%struct.hda_verb { i16 32, i32 1280, i32 7 }, %struct.hda_verb { i16 32, i32 1024, i32 12400 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.610 = internal constant [3 x %struct.hda_verb] [%struct.hda_verb { i16 32, i32 1280, i32 7 }, %struct.hda_verb { i16 32, i32 1024, i32 12368 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.611 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 22, i32 -1726807791 }, %struct.hda_pintbl { i16 23, i32 -1726807790 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.612 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 22, i32 -1726807791 }, %struct.hda_pintbl { i16 27, i32 -1726807790 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.613 = internal constant [9 x %struct.hda_verb] [%struct.hda_verb { i16 32, i32 1280, i32 3 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1280, i32 8 }, %struct.hda_verb { i16 32, i32 1024, i32 0 }, %struct.hda_verb { i16 32, i32 1280, i32 11 }, %struct.hda_verb { i16 32, i32 1024, i32 3 }, %struct.hda_verb { i16 32, i32 1280, i32 7 }, %struct.hda_verb { i16 32, i32 1024, i32 12368 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.614 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 22, i32 -1726807760 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.615 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 27365692 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.616 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 21, i32 44122448 }, %struct.hda_pintbl { i16 25, i32 572625952 }, %struct.hda_pintbl zeroinitializer], align 4
@alc889_fixup_dac_route.conn1 = internal constant [2 x i16] [i16 12, i16 13], align 2
@alc889_fixup_dac_route.conn2 = internal constant [2 x i16] [i16 14, i16 15], align 2
@alc889_fixup_dac_route.conn = internal constant [5 x i16] [i16 12, i16 13, i16 14, i16 15, i16 38], align 2
@.str.617 = private unnamed_addr constant [35 x i8] c"HDAudio-Gigabyte-ALC1220DualCodecs\00", align 1
@alc1220_fixup_gb_x570.conn1 = internal constant [1 x i16] [i16 12], align 2
@alc1220_fixup_gb_x570.gb_x570_coefs = internal constant [5 x %struct.coef_fw] [%struct.coef_fw { i8 32, i8 7, i16 -1, i16 960 }, %struct.coef_fw { i8 32, i8 26, i16 -1, i16 449 }, %struct.coef_fw { i8 32, i8 27, i16 -1, i16 514 }, %struct.coef_fw { i8 32, i8 67, i16 -1, i16 12293 }, %struct.coef_fw zeroinitializer], align 2
@alc1220_fixup_clevo_p950.conn1 = internal constant [1 x i16] [i16 12], align 2
@.compoundliteral.618 = internal constant [9 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 16859152 }, %struct.hda_pintbl { i16 21, i32 16846866 }, %struct.hda_pintbl { i16 22, i32 16867345 }, %struct.hda_pintbl { i16 24, i32 27365440 }, %struct.hda_pintbl { i16 25, i32 44142672 }, %struct.hda_pintbl { i16 26, i32 25243727 }, %struct.hda_pintbl { i16 27, i32 35733535 }, %struct.hda_pintbl { i16 30, i32 21324080 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.619 = internal constant [9 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 16863248 }, %struct.hda_pintbl { i16 21, i32 16846866 }, %struct.hda_pintbl { i16 22, i32 16846865 }, %struct.hda_pintbl { i16 24, i32 27332672 }, %struct.hda_pintbl { i16 25, i32 44142672 }, %struct.hda_pintbl { i16 26, i32 25235535 }, %struct.hda_pintbl { i16 27, i32 35733535 }, %struct.hda_pintbl { i16 30, i32 21303600 }, %struct.hda_pintbl zeroinitializer], align 4
@alc882_parse_auto_config.alc882_ignore = internal constant [2 x i16] [i16 29, i16 0], align 2
@alc882_parse_auto_config.alc882_ssids = internal constant [4 x i16] [i16 21, i16 27, i16 20, i16 0], align 2
@alc880_fixup_models = internal constant [8 x %struct.hda_model_fixup] [%struct.hda_model_fixup { i32 16, ptr @.str.620 }, %struct.hda_model_fixup { i32 17, ptr @.str.621 }, %struct.hda_model_fixup { i32 19, ptr @.str.622 }, %struct.hda_model_fixup { i32 20, ptr @.str.623 }, %struct.hda_model_fixup { i32 22, ptr @.str.624 }, %struct.hda_model_fixup { i32 23, ptr @.str.625 }, %struct.hda_model_fixup { i32 24, ptr @.str.626 }, %struct.hda_model_fixup zeroinitializer], align 4
@alc880_fixup_tbl = internal constant [60 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4121, i16 3945, i16 -1, i32 5 }, %struct.snd_pci_quirk { i16 4163, i16 4291, i16 -1, i32 14 }, %struct.snd_pci_quirk { i16 4163, i16 6500, i16 -1, i32 13 }, %struct.snd_pci_quirk { i16 4163, i16 0, i16 0, i32 0 }, %struct.snd_pci_quirk { i16 5243, i16 4165, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 5464, i16 21505, i16 -1, i32 1 }, %struct.snd_pci_quirk { i16 5464, i16 0, i16 0, i32 6 }, %struct.snd_pci_quirk { i16 5508, i16 -28592, i16 -1, i32 12 }, %struct.snd_pci_quirk { i16 5508, i16 -28588, i16 -1, i32 10 }, %struct.snd_pci_quirk { i16 5508, i16 -28560, i16 -1, i32 11 }, %struct.snd_pci_quirk { i16 5508, i16 -28553, i16 -1, i32 8 }, %struct.snd_pci_quirk { i16 5663, i16 8253, i16 -1, i32 5 }, %struct.snd_pci_quirk { i16 5663, i16 8285, i16 -1, i32 2 }, %struct.snd_pci_quirk { i16 5681, i16 -8175, i16 -1, i32 24 }, %struct.snd_pci_quirk { i16 5940, i16 4220, i16 -1, i32 9 }, %struct.snd_pci_quirk { i16 5940, i16 4244, i16 -1, i32 9 }, %struct.snd_pci_quirk { i16 5940, i16 4268, i16 -1, i32 10 }, %struct.snd_pci_quirk { i16 5940, i16 4272, i16 -1, i32 9 }, %struct.snd_pci_quirk { i16 6228, i16 59, i16 -1, i32 3 }, %struct.snd_pci_quirk { i16 6228, i16 95, i16 -1, i32 3 }, %struct.snd_pci_quirk { i16 6228, i16 104, i16 -1, i32 3 }, %struct.snd_pci_quirk { i16 6228, i16 119, i16 -1, i32 4 }, %struct.snd_pci_quirk { i16 6619, i16 16776, i16 -1, i32 7 }, %struct.snd_pci_quirk { i16 4121, i16 -22400, i16 -1, i32 20 }, %struct.snd_pci_quirk { i16 4121, i16 -22396, i16 -1, i32 22 }, %struct.snd_pci_quirk { i16 4133, i16 112, i16 -1, i32 17 }, %struct.snd_pci_quirk { i16 4133, i16 119, i16 -1, i32 23 }, %struct.snd_pci_quirk { i16 4133, i16 120, i16 -1, i32 23 }, %struct.snd_pci_quirk { i16 4133, i16 135, i16 -1, i32 23 }, %struct.snd_pci_quirk { i16 4133, i16 -7415, i16 -1, i32 17 }, %struct.snd_pci_quirk { i16 4133, i16 -7408, i16 -1, i32 16 }, %struct.snd_pci_quirk { i16 4153, i16 4660, i16 -1, i32 23 }, %struct.snd_pci_quirk { i16 4173, i16 -32352, i16 -1, i32 16 }, %struct.snd_pci_quirk { i16 4173, i16 -32298, i16 -1, i32 16 }, %struct.snd_pci_quirk { i16 4219, i16 12338, i16 -1, i32 19 }, %struct.snd_pci_quirk { i16 4219, i16 12339, i16 -1, i32 19 }, %struct.snd_pci_quirk { i16 4219, i16 16441, i16 -1, i32 19 }, %struct.snd_pci_quirk { i16 4759, i16 -14448, i16 -1, i32 23 }, %struct.snd_pci_quirk { i16 5208, i16 -24318, i16 -1, i32 23 }, %struct.snd_pci_quirk { i16 5218, i16 4432, i16 -1, i32 23 }, %struct.snd_pci_quirk { i16 5385, i16 -28067, i16 -1, i32 23 }, %struct.snd_pci_quirk { i16 5477, i16 -32254, i16 -1, i32 20 }, %struct.snd_pci_quirk { i16 5781, i16 16397, i16 -1, i32 20 }, %struct.snd_pci_quirk { i16 5781, i16 16402, i16 -1, i32 20 }, %struct.snd_pci_quirk { i16 9832, i16 -32634, i16 -1, i32 23 }, %struct.snd_pci_quirk { i16 -32634, i16 9832, i16 -1, i32 23 }, %struct.snd_pci_quirk { i16 -32634, i16 -24320, i16 -1, i32 20 }, %struct.snd_pci_quirk { i16 -32634, i16 -11264, i16 -1, i32 20 }, %struct.snd_pci_quirk { i16 -32634, i16 -11263, i16 -1, i32 20 }, %struct.snd_pci_quirk { i16 -32634, i16 -11262, i16 -1, i32 17 }, %struct.snd_pci_quirk { i16 -32634, i16 -7644, i16 -1, i32 20 }, %struct.snd_pci_quirk { i16 -32634, i16 -7419, i16 -1, i32 17 }, %struct.snd_pci_quirk { i16 -32634, i16 -7416, i16 -1, i32 17 }, %struct.snd_pci_quirk { i16 -32634, i16 -7168, i16 -1, i32 20 }, %struct.snd_pci_quirk { i16 -32634, i16 -7167, i16 -1, i32 20 }, %struct.snd_pci_quirk { i16 -32634, i16 -7166, i16 -1, i32 20 }, %struct.snd_pci_quirk { i16 -32634, i16 0, i16 0, i32 16 }, %struct.snd_pci_quirk { i16 -24416, i16 1376, i16 -1, i32 20 }, %struct.snd_pci_quirk { i16 -6141, i16 4121, i16 -1, i32 23 }, %struct.snd_pci_quirk zeroinitializer], align 4
@alc880_fixups = internal constant [25 x %struct.hda_fixup] [%struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc_fixup_gpio1 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc_fixup_gpio2 } }, %struct.hda_fixup { i32 2, i8 1, i32 1, %union.anon.67 { ptr @.compoundliteral.627 } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.628 } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.629 } }, %struct.hda_fixup { i32 1, i8 1, i32 1, %union.anon.67 { ptr @.compoundliteral.630 } }, %struct.hda_fixup { i32 2, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.631 } }, %struct.hda_fixup { i32 2, i8 1, i32 1, %union.anon.67 { ptr @.compoundliteral.632 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.67 { ptr @alc880_fixup_vol_knob } }, %struct.hda_fixup { i32 1, i8 1, i32 8, %union.anon.67 { ptr @.compoundliteral.633 } }, %struct.hda_fixup { i32 1, i8 1, i32 8, %union.anon.67 { ptr @.compoundliteral.634 } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.635 } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.636 } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.637 } }, %struct.hda_fixup { i32 1, i8 1, i32 0, %union.anon.67 { ptr @.compoundliteral.638 } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.639 } }, %struct.hda_fixup { i32 1, i8 1, i32 15, %union.anon.67 { ptr @.compoundliteral.640 } }, %struct.hda_fixup { i32 1, i8 1, i32 15, %union.anon.67 { ptr @.compoundliteral.641 } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.642 } }, %struct.hda_fixup { i32 1, i8 1, i32 18, %union.anon.67 { ptr @.compoundliteral.643 } }, %struct.hda_fixup { i32 1, i8 1, i32 18, %union.anon.67 { ptr @.compoundliteral.644 } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.67 { ptr @.compoundliteral.645 } }, %struct.hda_fixup { i32 1, i8 1, i32 21, %union.anon.67 { ptr @.compoundliteral.646 } }, %struct.hda_fixup { i32 1, i8 1, i32 21, %union.anon.67 { ptr @.compoundliteral.647 } }, %struct.hda_fixup { i32 1, i8 2, i32 21, %union.anon.67 { ptr @.compoundliteral.648 } }], align 4
@.str.620 = private unnamed_addr constant [7 x i8] c"3stack\00", align 1
@.str.621 = private unnamed_addr constant [14 x i8] c"3stack-digout\00", align 1
@.str.622 = private unnamed_addr constant [7 x i8] c"5stack\00", align 1
@.str.623 = private unnamed_addr constant [14 x i8] c"5stack-digout\00", align 1
@.str.624 = private unnamed_addr constant [7 x i8] c"6stack\00", align 1
@.str.625 = private unnamed_addr constant [14 x i8] c"6stack-digout\00", align 1
@.str.626 = private unnamed_addr constant [16 x i8] c"6stack-automute\00", align 1
@.compoundliteral.627 = internal constant [3 x %struct.hda_verb] [%struct.hda_verb { i16 32, i32 1280, i32 7 }, %struct.hda_verb { i16 32, i32 1024, i32 12384 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.628 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 22, i32 1091637744 }, %struct.hda_pintbl { i16 24, i32 1091637744 }, %struct.hda_pintbl { i16 26, i32 1091637744 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.629 = internal constant [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 26, i32 25244751 }, %struct.hda_pintbl { i16 27, i32 52510783 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.630 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 23, i32 1091637744 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.631 = internal constant [3 x %struct.hda_verb] [%struct.hda_verb { i16 32, i32 1280, i32 7 }, %struct.hda_verb { i16 32, i32 1024, i32 12384 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.632 = internal constant [3 x %struct.hda_verb] [%struct.hda_verb { i16 32, i32 1280, i32 7 }, %struct.hda_verb { i16 32, i32 1024, i32 12400 }, %struct.hda_verb zeroinitializer], align 4
@.compoundliteral.633 = internal constant [12 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 18956319 }, %struct.hda_pintbl { i16 21, i32 -1727856352 }, %struct.hda_pintbl { i16 22, i32 -1727856336 }, %struct.hda_pintbl { i16 23, i32 1091637744 }, %struct.hda_pintbl { i16 24, i32 1091637744 }, %struct.hda_pintbl { i16 25, i32 27367760 }, %struct.hda_pintbl { i16 26, i32 1091637744 }, %struct.hda_pintbl { i16 27, i32 1091637744 }, %struct.hda_pintbl { i16 28, i32 1091637744 }, %struct.hda_pintbl { i16 29, i32 1091637744 }, %struct.hda_pintbl { i16 30, i32 21315904 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.634 = internal constant [12 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 18956319 }, %struct.hda_pintbl { i16 21, i32 -1727856352 }, %struct.hda_pintbl { i16 22, i32 1091637744 }, %struct.hda_pintbl { i16 23, i32 1091637744 }, %struct.hda_pintbl { i16 24, i32 1091637744 }, %struct.hda_pintbl { i16 25, i32 27367760 }, %struct.hda_pintbl { i16 26, i32 1091637744 }, %struct.hda_pintbl { i16 27, i32 1091637744 }, %struct.hda_pintbl { i16 28, i32 1091637744 }, %struct.hda_pintbl { i16 29, i32 1091637744 }, %struct.hda_pintbl { i16 30, i32 1091637744 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.635 = internal constant [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 18956575 }, %struct.hda_pintbl { i16 21, i32 -1727856352 }, %struct.hda_pintbl { i16 22, i32 -1727856336 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.636 = internal constant [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 23, i32 1091637744 }, %struct.hda_pintbl { i16 25, i32 1091637744 }, %struct.hda_pintbl { i16 27, i32 1091637744 }, %struct.hda_pintbl { i16 31, i32 1091637744 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.637 = internal constant [12 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 -1727856352 }, %struct.hda_pintbl { i16 21, i32 18956575 }, %struct.hda_pintbl { i16 22, i32 1091637744 }, %struct.hda_pintbl { i16 23, i32 1091637744 }, %struct.hda_pintbl { i16 24, i32 27367760 }, %struct.hda_pintbl { i16 25, i32 1091637744 }, %struct.hda_pintbl { i16 26, i32 25243697 }, %struct.hda_pintbl { i16 27, i32 1091637744 }, %struct.hda_pintbl { i16 28, i32 1091637744 }, %struct.hda_pintbl { i16 29, i32 1091637744 }, %struct.hda_pintbl { i16 30, i32 21238046 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.638 = internal constant [12 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 18956575 }, %struct.hda_pintbl { i16 21, i32 1091637744 }, %struct.hda_pintbl { i16 22, i32 1091637744 }, %struct.hda_pintbl { i16 23, i32 1091637744 }, %struct.hda_pintbl { i16 24, i32 -1868168864 }, %struct.hda_pintbl { i16 25, i32 1091637744 }, %struct.hda_pintbl { i16 26, i32 1091637744 }, %struct.hda_pintbl { i16 27, i32 1091637744 }, %struct.hda_pintbl { i16 28, i32 1091637744 }, %struct.hda_pintbl { i16 29, i32 1091637744 }, %struct.hda_pintbl { i16 30, i32 -1220341474 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.639 = internal constant [12 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 16859152 }, %struct.hda_pintbl { i16 21, i32 1091637744 }, %struct.hda_pintbl { i16 22, i32 1091637744 }, %struct.hda_pintbl { i16 23, i32 1091637744 }, %struct.hda_pintbl { i16 24, i32 27368496 }, %struct.hda_pintbl { i16 25, i32 18956575 }, %struct.hda_pintbl { i16 26, i32 25243697 }, %struct.hda_pintbl { i16 27, i32 44145728 }, %struct.hda_pintbl { i16 28, i32 1091637744 }, %struct.hda_pintbl { i16 29, i32 1091637744 }, %struct.hda_pintbl { i16 31, i32 1091637744 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.640 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 30, i32 1091637744 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.641 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 30, i32 21238046 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.642 = internal constant [12 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 16859152 }, %struct.hda_pintbl { i16 21, i32 1091637744 }, %struct.hda_pintbl { i16 22, i32 16847889 }, %struct.hda_pintbl { i16 23, i32 16868370 }, %struct.hda_pintbl { i16 24, i32 27368496 }, %struct.hda_pintbl { i16 25, i32 18956575 }, %struct.hda_pintbl { i16 26, i32 25243697 }, %struct.hda_pintbl { i16 27, i32 44145728 }, %struct.hda_pintbl { i16 28, i32 1091637744 }, %struct.hda_pintbl { i16 29, i32 1091637744 }, %struct.hda_pintbl { i16 31, i32 1091637744 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.643 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 30, i32 1091637744 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.644 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 30, i32 21238046 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.645 = internal constant [12 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 20, i32 16859152 }, %struct.hda_pintbl { i16 21, i32 16868370 }, %struct.hda_pintbl { i16 22, i32 16847889 }, %struct.hda_pintbl { i16 23, i32 16851988 }, %struct.hda_pintbl { i16 24, i32 27368496 }, %struct.hda_pintbl { i16 25, i32 44145728 }, %struct.hda_pintbl { i16 26, i32 25243697 }, %struct.hda_pintbl { i16 27, i32 18956575 }, %struct.hda_pintbl { i16 28, i32 1091637744 }, %struct.hda_pintbl { i16 29, i32 1091637744 }, %struct.hda_pintbl { i16 31, i32 1091637744 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.646 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 30, i32 1091637744 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.647 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 30, i32 21238046 }, %struct.hda_pintbl zeroinitializer], align 4
@.compoundliteral.648 = internal constant [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 27, i32 18956319 }, %struct.hda_pintbl zeroinitializer], align 4
@.str.649 = private unnamed_addr constant [23 x i8] c"Master Playback Volume\00", align 1
@alc880_parse_auto_config.alc880_ignore = internal constant [2 x i16] [i16 29, i16 0], align 2
@alc880_parse_auto_config.alc880_ssids = internal constant [4 x i16] [i16 21, i16 27, i16 20, i16 0], align 2
@realtek_driver = internal global %struct.hda_codec_driver { %struct.hdac_driver zeroinitializer, ptr @snd_hda_id_realtek }, align 4
@.str.650 = private unnamed_addr constant [22 x i8] c"snd_hda_codec_realtek\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_license235], section "llvm.metadata"
@switch.table.patch_alc269 = private unnamed_addr constant [21 x ptr] [ptr @alc269_parse_auto_config.alc269va_ssids, ptr @alc269_parse_auto_config.alc269_ssids, ptr @alc269_parse_auto_config.alc269va_ssids, ptr @alc269_parse_auto_config.alc269_ssids, ptr @alc269_parse_auto_config.alc269va_ssids, ptr @alc269_parse_auto_config.alc269_ssids, ptr @alc269_parse_auto_config.alc269_ssids, ptr @alc269_parse_auto_config.alc269va_ssids, ptr @alc269_parse_auto_config.alc269va_ssids, ptr @alc269_parse_auto_config.alc269_ssids, ptr @alc269_parse_auto_config.alc269_ssids, ptr @alc269_parse_auto_config.alc269_ssids, ptr @alc269_parse_auto_config.alc269_ssids, ptr @alc269_parse_auto_config.alc269_ssids, ptr @alc269_parse_auto_config.alc269_ssids, ptr @alc269_parse_auto_config.alc269_ssids, ptr @alc269_parse_auto_config.alc269_ssids, ptr @alc269_parse_auto_config.alc269_ssids, ptr @alc269_parse_auto_config.alc269_ssids, ptr @alc269_parse_auto_config.alc269_ssids, ptr @alc269_parse_auto_config.alc269_ssids], align 4

@__mod_hdaudio__snd_hda_id_realtek_device_table = dso_local alias [79 x %struct.hda_device_id], ptr @snd_hda_id_realtek

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__hda_codec_driver_register(ptr noundef nonnull @realtek_driver, ptr noundef nonnull @.str.650, ptr noundef nonnull @__this_module) #15
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @hda_codec_driver_unregister(ptr noundef nonnull @realtek_driver) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @patch_alc269(ptr noundef %0) #1 {
  %2 = tail call fastcc i32 @alc_alloc_spec(ptr noundef %0, i16 noundef zeroext 11)
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %178, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 39
  store i16 24, ptr %7, align 8
  %8 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 30
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, -131073
  store i32 %10, ptr %8, align 8
  %11 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 7, i32 6
  store ptr @alc269_suspend, ptr %11, align 8
  %12 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 7, i32 7
  store ptr @alc269_resume, ptr %12, align 4
  %13 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 22
  store ptr @alc_default_shutup, ptr %13, align 4
  %14 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 20
  store ptr @alc_default_init, ptr %14, align 4
  %15 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 7
  %16 = load i32, ptr %15, align 8
  switch i32 %16, label %103 [
    i32 283902569, label %17
    i32 283902592, label %61
    i32 283902608, label %61
    i32 283902594, label %63
    i32 283902515, label %65
    i32 283902595, label %65
    i32 283902596, label %67
    i32 283902610, label %67
    i32 283902611, label %69
    i32 283902598, label %71
    i32 283902600, label %71
    i32 283902616, label %73
    i32 283902517, label %75
    i32 283902549, label %75
    i32 283902512, label %77
    i32 283902518, label %77
    i32 283902550, label %77
    i32 283902551, label %80
    i32 283902485, label %83
    i32 283902533, label %83
    i32 283902597, label %83
    i32 283902601, label %83
    i32 283902501, label %86
    i32 283902613, label %86
    i32 283902617, label %86
    i32 283902599, label %89
    i32 283902516, label %92
    i32 283902580, label %92
    i32 283902612, label %92
    i32 283902720, label %95
    i32 283903523, label %98
    i32 283903744, label %100
    i32 283903745, label %100
    i32 283903747, label %100
    i32 283903761, label %100
  ]

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 24
  store i32 0, ptr %18, align 4
  %19 = tail call fastcc i32 @alc_get_coef0(ptr noundef %0)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, -16
  switch i8 %21, label %52 [
    i8 16, label %22
    i8 32, label %37
    i8 48, label %51
  ]

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.hda_bus, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %53, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 9
  %30 = load i16, ptr %29, align 4
  %31 = icmp eq i16 %30, 4133
  br i1 %31, label %32, label %53

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 1, i32 5
  %34 = load i8, ptr %33, align 8
  %35 = and i8 %34, 2
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %53, label %55

37:                                               ; preds = %17
  %38 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.hda_bus, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %53, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 9
  %45 = load i16, ptr %44, align 4
  %46 = icmp eq i16 %45, 6058
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 10
  %49 = load i16, ptr %48, align 2
  %50 = icmp eq i16 %49, 8691
  br i1 %50, label %55, label %53

51:                                               ; preds = %17
  store i32 3, ptr %18, align 4
  br label %60

52:                                               ; preds = %17
  tail call fastcc void @alc_fix_pll_init(ptr noundef %0, i32 noundef 4, i32 noundef 15)
  br label %60

53:                                               ; preds = %47, %43, %37, %32, %28, %22
  %54 = phi i32 [ 2, %37 ], [ 2, %43 ], [ 2, %47 ], [ 1, %22 ], [ 1, %28 ], [ 1, %32 ]
  store i32 %54, ptr %18, align 4
  br label %60

55:                                               ; preds = %47, %32
  %56 = phi ptr [ @.str.74, %32 ], [ @.str.75, %47 ]
  %57 = phi i32 [ 1, %32 ], [ 2, %47 ]
  %58 = tail call i32 @snd_hda_codec_set_name(ptr noundef %0, ptr noundef nonnull %56) #15
  store i32 %57, ptr %18, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %176, label %60

60:                                               ; preds = %55, %53, %52, %51
  store ptr @alc269_shutup, ptr %13, align 4
  store ptr @alc269_fill_coef, ptr %14, align 4
  tail call void @alc269_fill_coef(ptr noundef %0)
  br label %103

61:                                               ; preds = %4, %4
  %62 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 24
  store i32 4, ptr %62, align 4
  br label %103

63:                                               ; preds = %4
  %64 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 24
  store i32 5, ptr %64, align 4
  store ptr @alc282_shutup, ptr %13, align 4
  store ptr @alc282_init, ptr %14, align 4
  br label %103

65:                                               ; preds = %4, %4
  %66 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 24
  store i32 6, ptr %66, align 4
  store ptr @alc283_shutup, ptr %13, align 4
  store ptr @alc283_init, ptr %14, align 4
  br label %103

67:                                               ; preds = %4, %4
  %68 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 24
  store i32 7, ptr %68, align 4
  br label %103

69:                                               ; preds = %4
  %70 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 24
  store i32 8, ptr %70, align 4
  br label %103

71:                                               ; preds = %4, %4
  %72 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 24
  store i32 9, ptr %72, align 4
  br label %103

73:                                               ; preds = %4
  %74 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 24
  store i32 10, ptr %74, align 4
  br label %103

75:                                               ; preds = %4, %4
  %76 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 24
  store i32 11, ptr %76, align 4
  store ptr @alc256_shutup, ptr %13, align 4
  store ptr @alc256_init, ptr %14, align 4
  br label %103

77:                                               ; preds = %4, %4, %4
  %78 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 24
  store i32 12, ptr %78, align 4
  store ptr @alc256_shutup, ptr %13, align 4
  store ptr @alc256_init, ptr %14, align 4
  %79 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 18
  store i16 0, ptr %79, align 2
  br label %103

80:                                               ; preds = %4
  %81 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 24
  store i32 13, ptr %81, align 4
  store ptr @alc256_shutup, ptr %13, align 4
  store ptr @alc256_init, ptr %14, align 4
  %82 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 18
  store i16 0, ptr %82, align 2
  br label %103

83:                                               ; preds = %4, %4, %4, %4
  %84 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 24
  store i32 14, ptr %84, align 4
  store ptr @alc225_shutup, ptr %13, align 4
  store ptr @alc225_init, ptr %14, align 4
  %85 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 18
  store i16 0, ptr %85, align 2
  br label %103

86:                                               ; preds = %4, %4, %4
  %87 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 24
  store i32 15, ptr %87, align 4
  store ptr @alc225_shutup, ptr %13, align 4
  store ptr @alc225_init, ptr %14, align 4
  %88 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 18
  store i16 0, ptr %88, align 2
  br label %103

89:                                               ; preds = %4
  %90 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 24
  store i32 16, ptr %90, align 4
  store ptr @alc225_shutup, ptr %13, align 4
  store ptr @alc225_init, ptr %14, align 4
  %91 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 18
  store i16 0, ptr %91, align 2
  br label %103

92:                                               ; preds = %4, %4, %4
  %93 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 24
  store i32 17, ptr %93, align 4
  %94 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 18
  store i16 0, ptr %94, align 2
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 107, i32 noundef 24, i32 noundef 24)
  store ptr @alc294_init, ptr %14, align 4
  br label %103

95:                                               ; preds = %4
  %96 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 24
  store i32 18, ptr %96, align 4
  %97 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 18
  store i16 0, ptr %97, align 2
  br label %103

98:                                               ; preds = %4
  %99 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 24
  store i32 19, ptr %99, align 4
  br label %103

100:                                              ; preds = %4, %4, %4, %4
  %101 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 24
  store i32 20, ptr %101, align 4
  %102 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 18
  store i16 0, ptr %102, align 2
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 74, i32 noundef 32768, i32 noundef 0)
  store ptr @alc294_init, ptr %14, align 4
  br label %103

103:                                              ; preds = %100, %98, %95, %92, %89, %86, %83, %80, %77, %75, %73, %71, %69, %67, %65, %63, %61, %60, %4
  %104 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 3840, i32 noundef 0) #15
  %105 = icmp eq i32 %104, 283923717
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 25
  %108 = load i8, ptr %107, align 8
  %109 = or i8 %108, 1
  store i8 %109, ptr %107, align 8
  store ptr @alc5505_dsp_init, ptr %14, align 4
  br label %110

110:                                              ; preds = %106, %103
  tail call fastcc void @alc_pre_init(ptr noundef %0)
  tail call void @snd_hda_pick_fixup(ptr noundef %0, ptr noundef nonnull @alc269_fixup_models, ptr noundef nonnull @alc269_fixup_tbl, ptr noundef nonnull @alc269_fixups) #15
  %111 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 40
  %112 = load i32, ptr %111, align 8
  %113 = icmp eq i32 %112, 57
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load i32, ptr %15, align 8
  %116 = icmp eq i32 %115, 283902612
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i32 -1, ptr %111, align 8
  br label %118

118:                                              ; preds = %117, %114, %110
  tail call void @snd_hda_pick_pin_fixup(ptr noundef %0, ptr noundef nonnull @alc269_pin_fixup_tbl, ptr noundef nonnull @alc269_fixups, i1 noundef zeroext true) #15
  tail call void @snd_hda_pick_pin_fixup(ptr noundef %0, ptr noundef nonnull @alc269_fallback_pin_fixup_tbl, ptr noundef nonnull @alc269_fixups, i1 noundef zeroext false) #15
  tail call void @snd_hda_pick_fixup(ptr noundef %0, ptr noundef null, ptr noundef nonnull @alc269_fixup_vendor_tbl, ptr noundef nonnull @alc269_fixups) #15
  tail call void @snd_hda_apply_fixup(ptr noundef %0, i32 noundef 0) #15
  tail call fastcc void @alc_auto_parse_customize_define(ptr noundef %0)
  %119 = load ptr, ptr %5, align 8
  %120 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 1
  %121 = load ptr, ptr %120, align 8
  %122 = getelementptr inbounds %struct.hda_bus, ptr %121, i32 0, i32 2
  %123 = load ptr, ptr %122, align 4
  %124 = tail call ptr @snd_pci_quirk_lookup(ptr noundef %123, ptr noundef nonnull @beep_allow_list) #15
  %125 = icmp eq ptr %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %118
  %127 = getelementptr inbounds %struct.snd_pci_quirk, ptr %124, i32 0, i32 3
  %128 = load i32, ptr %127, align 4
  br label %134

129:                                              ; preds = %118
  %130 = getelementptr inbounds %struct.alc_spec, ptr %119, i32 0, i32 1, i32 5
  %131 = load i8, ptr %130, align 8
  %132 = and i8 %131, 1
  %133 = zext i8 %132 to i32
  br label %134

134:                                              ; preds = %129, %126
  %135 = phi i32 [ %128, %126 ], [ %133, %129 ]
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 67
  store i16 1, ptr %138, align 2
  br label %139

139:                                              ; preds = %137, %134
  %140 = load ptr, ptr %5, align 8
  %141 = getelementptr inbounds %struct.alc_spec, ptr %140, i32 0, i32 24
  %142 = load i32, ptr %141, align 4
  %143 = icmp ult i32 %142, 21
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = getelementptr inbounds [21 x ptr], ptr @switch.table.patch_alc269, i32 0, i32 %142
  %146 = load ptr, ptr %145, align 4
  br label %147

147:                                              ; preds = %144, %139
  %148 = phi ptr [ %146, %144 ], [ @alc269_parse_auto_config.alc269_ssids, %139 ]
  %149 = tail call fastcc i32 @alc_parse_auto_config(ptr noundef %0, ptr noundef nonnull @alc269_parse_auto_config.alc269_ignore, ptr noundef nonnull %148) #15
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %176, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 58
  %153 = load i64, ptr %152, align 4
  %154 = and i64 %153, 137438953472
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %175

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 67
  %158 = load i16, ptr %157, align 2
  %159 = icmp eq i16 %158, 0
  br i1 %159, label %175, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 18
  %162 = load i16, ptr %161, align 2
  %163 = icmp eq i16 %162, 0
  br i1 %163, label %175, label %164

164:                                              ; preds = %160
  %165 = zext i16 %162 to i32
  %166 = or i32 %165, 2293760
  %167 = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %6, ptr noundef null, ptr noundef nonnull @alc_beep_mixer) #15
  %168 = icmp eq ptr %167, null
  br i1 %168, label %176, label %169

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %167, i32 0, i32 11
  store i32 %166, ptr %170, align 4
  %171 = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %6, ptr noundef null, ptr noundef getelementptr inbounds ([2 x %struct.snd_kcontrol_new], ptr @alc_beep_mixer, i32 0, i32 1)) #15
  %172 = icmp eq ptr %171, null
  br i1 %172, label %176, label %173

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %171, i32 0, i32 11
  store i32 %166, ptr %174, align 4
  br label %175

175:                                              ; preds = %173, %160, %156, %151
  tail call void @snd_hda_apply_fixup(ptr noundef %0, i32 noundef 1) #15
  br label %178

176:                                              ; preds = %169, %164, %147, %55
  %177 = phi i32 [ %149, %147 ], [ %58, %55 ], [ -12, %164 ], [ -12, %169 ]
  tail call void @snd_hda_gen_free(ptr noundef %0) #15
  br label %178

178:                                              ; preds = %176, %175, %1
  %179 = phi i32 [ %177, %176 ], [ 0, %175 ], [ %2, %1 ]
  ret i32 %179
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @patch_alc260(ptr noundef %0) #1 {
  %2 = tail call fastcc i32 @alc_alloc_spec(ptr noundef %0, i16 noundef zeroext 7)
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 58
  %8 = load i64, ptr %7, align 4
  %9 = or i64 %8, 536870912
  store i64 %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 67
  store i16 1, ptr %10, align 2
  %11 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 22
  store ptr @alc_eapd_shutup, ptr %11, align 4
  tail call fastcc void @alc_pre_init(ptr noundef %0)
  tail call void @snd_hda_pick_fixup(ptr noundef %0, ptr noundef nonnull @alc260_fixup_models, ptr noundef nonnull @alc260_fixup_tbl, ptr noundef nonnull @alc260_fixups) #15
  tail call void @snd_hda_apply_fixup(ptr noundef %0, i32 noundef 0) #15
  %12 = tail call fastcc i32 @alc_parse_auto_config(ptr noundef %0, ptr noundef nonnull @alc260_parse_auto_config.alc260_ignore, ptr noundef nonnull @alc260_parse_auto_config.alc260_ssids) #15
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %4
  %15 = load i64, ptr %7, align 4
  %16 = and i64 %15, 137438953472
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %6, ptr noundef null, ptr noundef nonnull @alc_beep_mixer) #15
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %19, i32 0, i32 11
  store i32 2818055, ptr %22, align 4
  %23 = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %6, ptr noundef null, ptr noundef getelementptr inbounds ([2 x %struct.snd_kcontrol_new], ptr @alc_beep_mixer, i32 0, i32 1)) #15
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %23, i32 0, i32 11
  store i32 2818055, ptr %26, align 4
  br label %27

27:                                               ; preds = %25, %14
  tail call void @snd_hda_apply_fixup(ptr noundef %0, i32 noundef 1) #15
  br label %30

28:                                               ; preds = %21, %18, %4
  %29 = phi i32 [ %12, %4 ], [ -12, %18 ], [ -12, %21 ]
  tail call void @snd_hda_gen_free(ptr noundef %0) #15
  br label %30

30:                                               ; preds = %28, %27, %1
  %31 = phi i32 [ %29, %28 ], [ 0, %27 ], [ %2, %1 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @patch_alc262(ptr noundef %0) #1 {
  %2 = tail call fastcc i32 @alc_alloc_spec(ptr noundef %0, i16 noundef zeroext 11)
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %68, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 39
  store i16 24, ptr %7, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 22
  store ptr @alc_eapd_shutup, ptr %8, align 4
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds %struct.alc_spec, ptr %9, i32 0, i32 26
  store i16 32, ptr %10, align 2
  %11 = getelementptr inbounds %struct.alc_spec, ptr %9, i32 0, i32 27
  store i32 10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.alc_spec, ptr %9, i32 0, i32 28
  store i32 10, ptr %12, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds %struct.alc_spec, ptr %13, i32 0, i32 26
  %15 = load i16, ptr %14, align 2
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.alc_spec, ptr %13, i32 0, i32 27
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.alc_spec, ptr %13, i32 0, i32 28
  %21 = load i32, ptr %20, align 8
  %22 = shl nuw i32 1, %21
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext %15, i32 noundef %19, i32 noundef %22, i32 noundef 0) #15
  br label %23

23:                                               ; preds = %17, %4
  tail call fastcc void @alc_pre_init(ptr noundef %0)
  tail call void @snd_hda_pick_fixup(ptr noundef %0, ptr noundef nonnull @alc262_fixup_models, ptr noundef nonnull @alc262_fixup_tbl, ptr noundef nonnull @alc262_fixups) #15
  tail call void @snd_hda_apply_fixup(ptr noundef %0, i32 noundef 0) #15
  tail call fastcc void @alc_auto_parse_customize_define(ptr noundef %0)
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.hda_bus, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = tail call ptr @snd_pci_quirk_lookup(ptr noundef %28, ptr noundef nonnull @beep_allow_list) #15
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.snd_pci_quirk, ptr %29, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  br label %39

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.alc_spec, ptr %24, i32 0, i32 1, i32 5
  %36 = load i8, ptr %35, align 8
  %37 = and i8 %36, 1
  %38 = zext i8 %37 to i32
  br label %39

39:                                               ; preds = %34, %31
  %40 = phi i32 [ %33, %31 ], [ %38, %34 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 67
  store i16 1, ptr %43, align 2
  br label %44

44:                                               ; preds = %42, %39
  %45 = tail call fastcc i32 @alc_parse_auto_config(ptr noundef %0, ptr noundef nonnull @alc262_parse_auto_config.alc262_ignore, ptr noundef nonnull @alc262_parse_auto_config.alc262_ssids) #15
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %66, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 58
  %49 = load i64, ptr %48, align 4
  %50 = and i64 %49, 137438953472
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 67
  %54 = load i16, ptr %53, align 2
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %52
  %57 = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %6, ptr noundef null, ptr noundef nonnull @alc_beep_mixer) #15
  %58 = icmp eq ptr %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %57, i32 0, i32 11
  store i32 2818059, ptr %60, align 4
  %61 = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %6, ptr noundef null, ptr noundef getelementptr inbounds ([2 x %struct.snd_kcontrol_new], ptr @alc_beep_mixer, i32 0, i32 1)) #15
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %61, i32 0, i32 11
  store i32 2818059, ptr %64, align 4
  br label %65

65:                                               ; preds = %63, %52, %47
  tail call void @snd_hda_apply_fixup(ptr noundef %0, i32 noundef 1) #15
  br label %68

66:                                               ; preds = %59, %56, %44
  %67 = phi i32 [ %45, %44 ], [ -12, %56 ], [ -12, %59 ]
  tail call void @snd_hda_gen_free(ptr noundef %0) #15
  br label %68

68:                                               ; preds = %66, %65, %1
  %69 = phi i32 [ %67, %66 ], [ 0, %65 ], [ %2, %1 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @patch_alc268(ptr noundef %0) #1 {
  %2 = tail call fastcc i32 @alc_alloc_spec(ptr noundef %0, i16 noundef zeroext 0)
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %56, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.hda_bus, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @snd_pci_quirk_lookup(ptr noundef %10, ptr noundef nonnull @beep_allow_list) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.snd_pci_quirk, ptr %11, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  br label %21

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 1, i32 5
  %18 = load i8, ptr %17, align 8
  %19 = and i8 %18, 1
  %20 = zext i8 %19 to i32
  br label %21

21:                                               ; preds = %16, %13
  %22 = phi i32 [ %15, %13 ], [ %20, %16 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 67
  store i16 1, ptr %25, align 2
  br label %26

26:                                               ; preds = %24, %21
  %27 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 22
  store ptr @alc_eapd_shutup, ptr %27, align 4
  tail call fastcc void @alc_pre_init(ptr noundef %0)
  tail call void @snd_hda_pick_fixup(ptr noundef %0, ptr noundef nonnull @alc268_fixup_models, ptr noundef nonnull @alc268_fixup_tbl, ptr noundef nonnull @alc268_fixups) #15
  tail call void @snd_hda_apply_fixup(ptr noundef %0, i32 noundef 0) #15
  %28 = tail call fastcc i32 @alc_parse_auto_config(ptr noundef %0, ptr noundef null, ptr noundef nonnull @alc268_parse_auto_config.alc268_ssids) #15
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %54, label %30

30:                                               ; preds = %26
  %31 = icmp eq i32 %28, 0
  br i1 %31, label %53, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 58
  %34 = load i64, ptr %33, align 4
  %35 = and i64 %34, 137438953472
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 33, i32 3
  %39 = load i16, ptr %38, align 4
  %40 = icmp eq i16 %39, 29
  br i1 %40, label %53, label %41

41:                                               ; preds = %37
  %42 = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %6, ptr noundef null, ptr noundef nonnull @alc268_beep_mixer) #15
  %43 = icmp eq ptr %42, null
  br i1 %43, label %54, label %44

44:                                               ; preds = %41
  %45 = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %6, ptr noundef null, ptr noundef getelementptr inbounds ([2 x %struct.snd_kcontrol_new], ptr @alc268_beep_mixer, i32 0, i32 1)) #15
  %46 = icmp eq ptr %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %44
  %48 = tail call i32 @snd_hda_add_verbs(ptr noundef %0, ptr noundef nonnull @alc268_beep_init_verbs) #15
  %49 = tail call i32 @query_amp_caps(ptr noundef %0, i16 noundef zeroext 29, i32 noundef 0) #15
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = tail call i32 @snd_hda_override_amp_caps(ptr noundef %0, i16 noundef zeroext 29, i32 noundef 0, i32 noundef 461836) #15
  br label %53

53:                                               ; preds = %51, %47, %37, %32, %30
  tail call void @snd_hda_apply_fixup(ptr noundef %0, i32 noundef 1) #15
  br label %56

54:                                               ; preds = %44, %41, %26
  %55 = phi i32 [ %28, %26 ], [ -12, %44 ], [ -12, %41 ]
  tail call void @snd_hda_gen_free(ptr noundef %0) #15
  br label %56

56:                                               ; preds = %54, %53, %1
  %57 = phi i32 [ %55, %54 ], [ 0, %53 ], [ %2, %1 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @patch_alc662(ptr noundef %0) #1 {
  %2 = tail call fastcc i32 @alc_alloc_spec(ptr noundef %0, i16 noundef zeroext 11)
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %106, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 22
  store ptr @alc_eapd_shutup, ptr %7, align 4
  %8 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 2
  store i32 1, ptr %8, align 4
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds %struct.alc_spec, ptr %9, i32 0, i32 26
  store i16 32, ptr %10, align 2
  %11 = getelementptr inbounds %struct.alc_spec, ptr %9, i32 0, i32 27
  store i32 4, ptr %11, align 4
  %12 = getelementptr inbounds %struct.alc_spec, ptr %9, i32 0, i32 28
  store i32 15, ptr %12, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds %struct.alc_spec, ptr %13, i32 0, i32 26
  %15 = load i16, ptr %14, align 2
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.alc_spec, ptr %13, i32 0, i32 27
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.alc_spec, ptr %13, i32 0, i32 28
  %21 = load i32, ptr %20, align 8
  %22 = shl nuw i32 1, %21
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext %15, i32 noundef %19, i32 noundef %22, i32 noundef 0) #15
  br label %23

23:                                               ; preds = %17, %4
  %24 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 7
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 283903592
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 20
  store ptr @alc668_restore_default_value, ptr %28, align 4
  br label %29

29:                                               ; preds = %27, %23
  tail call fastcc void @alc_pre_init(ptr noundef %0)
  tail call void @snd_hda_pick_fixup(ptr noundef %0, ptr noundef nonnull @alc662_fixup_models, ptr noundef nonnull @alc662_fixup_tbl, ptr noundef nonnull @alc662_fixups) #15
  tail call void @snd_hda_pick_pin_fixup(ptr noundef %0, ptr noundef nonnull @alc662_pin_fixup_tbl, ptr noundef nonnull @alc662_fixups, i1 noundef zeroext true) #15
  tail call void @snd_hda_apply_fixup(ptr noundef %0, i32 noundef 0) #15
  tail call fastcc void @alc_auto_parse_customize_define(ptr noundef %0)
  %30 = load ptr, ptr %5, align 8
  %31 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.hda_bus, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = tail call ptr @snd_pci_quirk_lookup(ptr noundef %34, ptr noundef nonnull @beep_allow_list) #15
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.snd_pci_quirk, ptr %35, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  br label %45

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.alc_spec, ptr %30, i32 0, i32 1, i32 5
  %42 = load i8, ptr %41, align 8
  %43 = and i8 %42, 1
  %44 = zext i8 %43 to i32
  br label %45

45:                                               ; preds = %40, %37
  %46 = phi i32 [ %39, %37 ], [ %44, %40 ]
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 67
  store i16 1, ptr %49, align 2
  br label %50

50:                                               ; preds = %48, %45
  %51 = tail call fastcc i32 @alc_get_coef0(ptr noundef %0)
  %52 = and i32 %51, 16384
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %71, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %31, align 8
  %56 = getelementptr inbounds %struct.hda_bus, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %71, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 9
  %61 = load i16, ptr %60, align 4
  %62 = icmp eq i16 %61, 4133
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 1, i32 5
  %65 = load i8, ptr %64, align 8
  %66 = and i8 %65, 2
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = tail call i32 @snd_hda_codec_set_name(ptr noundef %0, ptr noundef nonnull @.str.494) #15
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %104, label %71

71:                                               ; preds = %68, %63, %59, %54, %50
  %72 = load i32, ptr %24, align 8
  switch i32 %72, label %73 [
    i32 283902578, label %74
    i32 283903587, label %74
    i32 283903589, label %74
    i32 283903600, label %74
    i32 283903601, label %74
  ]

73:                                               ; preds = %71
  br label %74

74:                                               ; preds = %73, %71, %71, %71, %71, %71
  %75 = phi ptr [ @alc662_parse_auto_config.alc662_ssids, %73 ], [ @alc662_parse_auto_config.alc663_ssids, %71 ], [ @alc662_parse_auto_config.alc663_ssids, %71 ], [ @alc662_parse_auto_config.alc663_ssids, %71 ], [ @alc662_parse_auto_config.alc663_ssids, %71 ], [ @alc662_parse_auto_config.alc663_ssids, %71 ]
  %76 = tail call fastcc i32 @alc_parse_auto_config(ptr noundef %0, ptr noundef nonnull @alc662_parse_auto_config.alc662_ignore, ptr noundef nonnull %75) #15
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %104, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 58
  %80 = load i64, ptr %79, align 4
  %81 = and i64 %80, 137438953472
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %103

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 67
  %85 = load i16, ptr %84, align 2
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %103, label %87

87:                                               ; preds = %83
  %88 = load i32, ptr %24, align 8
  switch i32 %88, label %103 [
    i32 283903586, label %99
    i32 283902578, label %89
    i32 283903587, label %89
    i32 283903589, label %89
    i32 283903592, label %89
    i32 283902579, label %98
  ]

89:                                               ; preds = %87, %87, %87, %87
  %90 = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %6, ptr noundef null, ptr noundef nonnull @alc_beep_mixer) #15
  %91 = icmp eq ptr %90, null
  br i1 %91, label %104, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %90, i32 0, i32 11
  store i32 2293771, ptr %93, align 4
  %94 = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %6, ptr noundef null, ptr noundef getelementptr inbounds ([2 x %struct.snd_kcontrol_new], ptr @alc_beep_mixer, i32 0, i32 1)) #15
  %95 = icmp eq ptr %94, null
  br i1 %95, label %104, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %94, i32 0, i32 11
  store i32 2293771, ptr %97, align 4
  br label %103

98:                                               ; preds = %87
  br label %99

99:                                               ; preds = %98, %87
  %100 = phi i32 [ 3, %98 ], [ 5, %87 ]
  %101 = tail call fastcc i32 @set_beep_amp(ptr noundef %6, i16 noundef zeroext 11, i32 noundef %100, i32 noundef 0)
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %99, %96, %87, %83, %78
  tail call void @snd_hda_apply_fixup(ptr noundef %0, i32 noundef 1) #15
  br label %106

104:                                              ; preds = %99, %92, %89, %74, %68
  %105 = phi i32 [ %69, %68 ], [ %76, %74 ], [ %101, %99 ], [ -12, %89 ], [ -12, %92 ]
  tail call void @snd_hda_gen_free(ptr noundef %0) #15
  br label %106

106:                                              ; preds = %104, %103, %1
  %107 = phi i32 [ %105, %104 ], [ 0, %103 ], [ %2, %1 ]
  ret i32 %107
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @patch_alc861(ptr noundef %0) #1 {
  %2 = tail call fastcc i32 @alc_alloc_spec(ptr noundef %0, i16 noundef zeroext 21)
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %47, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.hda_bus, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @snd_pci_quirk_lookup(ptr noundef %10, ptr noundef nonnull @beep_allow_list) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.snd_pci_quirk, ptr %11, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  br label %21

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 1, i32 5
  %18 = load i8, ptr %17, align 8
  %19 = and i8 %18, 1
  %20 = zext i8 %19 to i32
  br label %21

21:                                               ; preds = %16, %13
  %22 = phi i32 [ %15, %13 ], [ %20, %16 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 67
  store i16 35, ptr %25, align 2
  br label %26

26:                                               ; preds = %24, %21
  %27 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 21
  store ptr @alc_power_eapd, ptr %27, align 8
  tail call fastcc void @alc_pre_init(ptr noundef %0)
  tail call void @snd_hda_pick_fixup(ptr noundef %0, ptr noundef null, ptr noundef nonnull @alc861_fixup_tbl, ptr noundef nonnull @alc861_fixups) #15
  tail call void @snd_hda_apply_fixup(ptr noundef %0, i32 noundef 0) #15
  %28 = tail call fastcc i32 @alc_parse_auto_config(ptr noundef %0, ptr noundef nonnull @alc861_parse_auto_config.alc861_ignore, ptr noundef nonnull @alc861_parse_auto_config.alc861_ssids) #15
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 58
  %32 = load i64, ptr %31, align 4
  %33 = and i64 %32, 137438953472
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %6, ptr noundef null, ptr noundef nonnull @alc_beep_mixer) #15
  %37 = icmp eq ptr %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %36, i32 0, i32 11
  store i32 458787, ptr %39, align 4
  %40 = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %6, ptr noundef null, ptr noundef getelementptr inbounds ([2 x %struct.snd_kcontrol_new], ptr @alc_beep_mixer, i32 0, i32 1)) #15
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %40, i32 0, i32 11
  store i32 458787, ptr %43, align 4
  br label %44

44:                                               ; preds = %42, %30
  tail call void @snd_hda_apply_fixup(ptr noundef %0, i32 noundef 1) #15
  br label %47

45:                                               ; preds = %38, %35, %26
  %46 = phi i32 [ %28, %26 ], [ -12, %35 ], [ -12, %38 ]
  tail call void @snd_hda_gen_free(ptr noundef %0) #15
  br label %47

47:                                               ; preds = %45, %44, %1
  %48 = phi i32 [ %46, %45 ], [ 0, %44 ], [ %2, %1 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @patch_alc861vd(ptr noundef %0) #1 {
  %2 = tail call fastcc i32 @alc_alloc_spec(ptr noundef %0, i16 noundef zeroext 11)
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %47, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.hda_bus, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @snd_pci_quirk_lookup(ptr noundef %10, ptr noundef nonnull @beep_allow_list) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.snd_pci_quirk, ptr %11, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  br label %21

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 1, i32 5
  %18 = load i8, ptr %17, align 8
  %19 = and i8 %18, 1
  %20 = zext i8 %19 to i32
  br label %21

21:                                               ; preds = %16, %13
  %22 = phi i32 [ %15, %13 ], [ %20, %16 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 67
  store i16 35, ptr %25, align 2
  br label %26

26:                                               ; preds = %24, %21
  %27 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 22
  store ptr @alc_eapd_shutup, ptr %27, align 4
  tail call fastcc void @alc_pre_init(ptr noundef %0)
  tail call void @snd_hda_pick_fixup(ptr noundef %0, ptr noundef null, ptr noundef nonnull @alc861vd_fixup_tbl, ptr noundef nonnull @alc861vd_fixups) #15
  tail call void @snd_hda_apply_fixup(ptr noundef %0, i32 noundef 0) #15
  %28 = tail call fastcc i32 @alc_parse_auto_config(ptr noundef %0, ptr noundef nonnull @alc861vd_parse_auto_config.alc861vd_ignore, ptr noundef nonnull @alc861vd_parse_auto_config.alc861vd_ssids) #15
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 58
  %32 = load i64, ptr %31, align 4
  %33 = and i64 %32, 137438953472
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %6, ptr noundef null, ptr noundef nonnull @alc_beep_mixer) #15
  %37 = icmp eq ptr %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %36, i32 0, i32 11
  store i32 2818059, ptr %39, align 4
  %40 = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %6, ptr noundef null, ptr noundef getelementptr inbounds ([2 x %struct.snd_kcontrol_new], ptr @alc_beep_mixer, i32 0, i32 1)) #15
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %40, i32 0, i32 11
  store i32 2818059, ptr %43, align 4
  br label %44

44:                                               ; preds = %42, %30
  tail call void @snd_hda_apply_fixup(ptr noundef %0, i32 noundef 1) #15
  br label %47

45:                                               ; preds = %38, %35, %26
  %46 = phi i32 [ %28, %26 ], [ -12, %35 ], [ -12, %38 ]
  tail call void @snd_hda_gen_free(ptr noundef %0) #15
  br label %47

47:                                               ; preds = %45, %44, %1
  %48 = phi i32 [ %46, %45 ], [ 0, %44 ], [ %2, %1 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @patch_alc882(ptr noundef %0) #1 {
  %2 = tail call fastcc i32 @alc_alloc_spec(ptr noundef %0, i16 noundef zeroext 11)
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %68, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 8
  switch i32 %8, label %9 [
    i32 283904130, label %23
    i32 283904133, label %23
    i32 283904256, label %23
    i32 283904768, label %23
    i32 283906592, label %23
  ]

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 26
  store i16 32, ptr %10, align 2
  %11 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 27
  store i32 10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 28
  store i32 10, ptr %12, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds %struct.alc_spec, ptr %13, i32 0, i32 26
  %15 = load i16, ptr %14, align 2
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.alc_spec, ptr %13, i32 0, i32 27
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.alc_spec, ptr %13, i32 0, i32 28
  %21 = load i32, ptr %20, align 8
  %22 = shl nuw i32 1, %21
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext %15, i32 noundef %19, i32 noundef %22, i32 noundef 0) #15
  br label %23

23:                                               ; preds = %17, %9, %4, %4, %4, %4, %4
  tail call fastcc void @alc_pre_init(ptr noundef %0)
  tail call void @snd_hda_pick_fixup(ptr noundef %0, ptr noundef nonnull @alc882_fixup_models, ptr noundef nonnull @alc882_fixup_tbl, ptr noundef nonnull @alc882_fixups) #15
  tail call void @snd_hda_pick_pin_fixup(ptr noundef %0, ptr noundef nonnull @alc882_pin_fixup_tbl, ptr noundef nonnull @alc882_fixups, i1 noundef zeroext true) #15
  tail call void @snd_hda_apply_fixup(ptr noundef %0, i32 noundef 0) #15
  tail call fastcc void @alc_auto_parse_customize_define(ptr noundef %0)
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.hda_bus, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = tail call ptr @snd_pci_quirk_lookup(ptr noundef %28, ptr noundef nonnull @beep_allow_list) #15
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.snd_pci_quirk, ptr %29, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  br label %39

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.alc_spec, ptr %24, i32 0, i32 1, i32 5
  %36 = load i8, ptr %35, align 8
  %37 = and i8 %36, 1
  %38 = zext i8 %37 to i32
  br label %39

39:                                               ; preds = %34, %31
  %40 = phi i32 [ %33, %31 ], [ %38, %34 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 67
  store i16 1, ptr %43, align 2
  br label %44

44:                                               ; preds = %42, %39
  %45 = tail call fastcc i32 @alc_parse_auto_config(ptr noundef %0, ptr noundef nonnull @alc882_parse_auto_config.alc882_ignore, ptr noundef nonnull @alc882_parse_auto_config.alc882_ssids) #15
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %66, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 58
  %49 = load i64, ptr %48, align 4
  %50 = and i64 %49, 137438953472
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 67
  %54 = load i16, ptr %53, align 2
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %52
  %57 = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %6, ptr noundef null, ptr noundef nonnull @alc_beep_mixer) #15
  %58 = icmp eq ptr %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %57, i32 0, i32 11
  store i32 2818059, ptr %60, align 4
  %61 = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %6, ptr noundef null, ptr noundef getelementptr inbounds ([2 x %struct.snd_kcontrol_new], ptr @alc_beep_mixer, i32 0, i32 1)) #15
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %61, i32 0, i32 11
  store i32 2818059, ptr %64, align 4
  br label %65

65:                                               ; preds = %63, %52, %47
  tail call void @snd_hda_apply_fixup(ptr noundef %0, i32 noundef 1) #15
  br label %68

66:                                               ; preds = %59, %56, %44
  %67 = phi i32 [ %45, %44 ], [ -12, %56 ], [ -12, %59 ]
  tail call void @snd_hda_gen_free(ptr noundef %0) #15
  br label %68

68:                                               ; preds = %66, %65, %1
  %69 = phi i32 [ %67, %66 ], [ 0, %65 ], [ %2, %1 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @patch_alc680(ptr noundef %0) #1 {
  %2 = tail call fastcc i32 @alc_alloc_spec(ptr noundef %0, i16 noundef zeroext 0)
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 33
  %8 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @snd_hda_parse_pin_defcfg(ptr noundef %0, ptr noundef %7, ptr noundef null, i32 noundef %9) #15
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = tail call i32 @snd_hda_gen_parse_auto_config(ptr noundef %0, ptr noundef %7) #15
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %4
  %16 = phi i32 [ %10, %4 ], [ %13, %12 ]
  tail call void @snd_hda_gen_free(ptr noundef %0) #15
  br label %17

17:                                               ; preds = %15, %12, %1
  %18 = phi i32 [ %16, %15 ], [ %2, %1 ], [ 0, %12 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @patch_alc880(ptr noundef %0) #1 {
  %2 = tail call fastcc i32 @alc_alloc_spec(ptr noundef %0, i16 noundef zeroext 11)
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 58
  %8 = load i64, ptr %7, align 4
  %9 = or i64 %8, 131072
  store i64 %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 67
  store i16 1, ptr %10, align 2
  %11 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 7, i32 4
  store ptr @alc880_unsol_event, ptr %11, align 8
  tail call fastcc void @alc_pre_init(ptr noundef %0)
  tail call void @snd_hda_pick_fixup(ptr noundef %0, ptr noundef nonnull @alc880_fixup_models, ptr noundef nonnull @alc880_fixup_tbl, ptr noundef nonnull @alc880_fixups) #15
  tail call void @snd_hda_apply_fixup(ptr noundef %0, i32 noundef 0) #15
  %12 = tail call fastcc i32 @alc_parse_auto_config(ptr noundef %0, ptr noundef nonnull @alc880_parse_auto_config.alc880_ignore, ptr noundef nonnull @alc880_parse_auto_config.alc880_ssids) #15
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %4
  %15 = load i64, ptr %7, align 4
  %16 = and i64 %15, 137438953472
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %6, ptr noundef null, ptr noundef nonnull @alc_beep_mixer) #15
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %19, i32 0, i32 11
  store i32 2818059, ptr %22, align 4
  %23 = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %6, ptr noundef null, ptr noundef getelementptr inbounds ([2 x %struct.snd_kcontrol_new], ptr @alc_beep_mixer, i32 0, i32 1)) #15
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %23, i32 0, i32 11
  store i32 2818059, ptr %26, align 4
  br label %27

27:                                               ; preds = %25, %14
  tail call void @snd_hda_apply_fixup(ptr noundef %0, i32 noundef 1) #15
  br label %30

28:                                               ; preds = %21, %18, %4
  %29 = phi i32 [ %12, %4 ], [ -12, %18 ], [ -12, %21 ]
  tail call void @snd_hda_gen_free(ptr noundef %0) #15
  br label %30

30:                                               ; preds = %28, %27, %1
  %31 = phi i32 [ %29, %28 ], [ 0, %27 ], [ %2, %1 ]
  ret i32 %31
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @alc_alloc_spec(ptr noundef %0, i16 noundef zeroext %1) unnamed_addr #1 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 6056) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %78, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  store ptr %4, ptr %7, align 8
  %8 = tail call i32 @snd_hda_gen_spec_init(ptr noundef nonnull %4) #15
  %9 = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 18
  store i16 %1, ptr %9, align 2
  %10 = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 58
  %11 = load i64, ptr %10, align 4
  %12 = or i64 %11, 16777216
  store i64 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 30
  %14 = load i32, ptr %13, align 8
  %15 = or i32 %14, 4194384
  store i32 %15, ptr %13, align 8
  %16 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(40) %16, ptr noundef nonnull align 4 dereferenceable(40) @alc_patch_ops, i32 40, i1 false)
  %17 = getelementptr inbounds %struct.alc_spec, ptr %4, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %17, ptr noundef nonnull @.str.76, ptr noundef nonnull @alc_alloc_spec.__key) #15
  %18 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 7
  br label %19

19:                                               ; preds = %36, %6
  %20 = phi i32 [ 283902497, %6 ], [ %38, %36 ]
  %21 = phi ptr [ @rename_tbl, %6 ], [ %37, %36 ]
  %22 = load i32, ptr %18, align 8
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = tail call fastcc i32 @alc_get_coef0(ptr noundef %0) #15
  %26 = getelementptr inbounds %struct.alc_codec_rename_table, ptr %21, i32 0, i32 1
  %27 = load i16, ptr %26, align 4
  %28 = zext i16 %27 to i32
  %29 = and i32 %25, %28
  %30 = getelementptr inbounds %struct.alc_codec_rename_table, ptr %21, i32 0, i32 2
  %31 = load i16, ptr %30, align 2
  %32 = zext i16 %31 to i32
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.alc_codec_rename_table, ptr %21, i32 0, i32 3
  br label %72

36:                                               ; preds = %24, %19
  %37 = getelementptr %struct.alc_codec_rename_table, ptr %21, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %19

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.hda_bus, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %78, label %46

46:                                               ; preds = %40
  %47 = load i32, ptr %18, align 8
  %48 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 9
  %49 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 10
  br label %50

50:                                               ; preds = %68, %46
  %51 = phi i32 [ 283902592, %46 ], [ %70, %68 ]
  %52 = phi ptr [ @rename_pci_tbl, %46 ], [ %69, %68 ]
  %53 = icmp eq i32 %51, %47
  br i1 %53, label %54, label %68

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.alc_codec_rename_pci_table, ptr %52, i32 0, i32 1
  %56 = load i16, ptr %55, align 4
  %57 = load i16, ptr %48, align 4
  %58 = icmp eq i16 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.alc_codec_rename_pci_table, ptr %52, i32 0, i32 2
  %61 = load i16, ptr %60, align 2
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load i16, ptr %49, align 2
  %65 = icmp eq i16 %61, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %63, %59
  %67 = getelementptr inbounds %struct.alc_codec_rename_pci_table, ptr %52, i32 0, i32 3
  br label %72

68:                                               ; preds = %63, %54, %50
  %69 = getelementptr %struct.alc_codec_rename_pci_table, ptr %52, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %78, label %50

72:                                               ; preds = %66, %34
  %73 = phi ptr [ %67, %66 ], [ %35, %34 ]
  %74 = load ptr, ptr %73, align 4
  %75 = tail call i32 @snd_hda_codec_set_name(ptr noundef %0, ptr noundef %74) #15
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  tail call void @kfree(ptr noundef nonnull %4) #15
  br label %78

78:                                               ; preds = %77, %72, %68, %40, %2
  %79 = phi i32 [ %75, %77 ], [ -12, %2 ], [ 0, %72 ], [ 0, %40 ], [ 0, %68 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alc269_suspend(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @snd_hda_get_bool_hint(ptr noundef %0, ptr noundef nonnull @.str.77) #15
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = icmp eq ptr %3, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 22
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void %10(ptr noundef %0) #15
  br label %16

13:                                               ; preds = %8, %6
  tail call fastcc void @alc_shutup_pins(ptr noundef %0) #15
  br label %14

14:                                               ; preds = %13, %1
  %15 = icmp eq ptr %3, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %14, %12
  %17 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 21
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void %18(ptr noundef %0) #15
  br label %21

21:                                               ; preds = %20, %16, %14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alc269_resume(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 24
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 4, i32 noundef 2048, i32 noundef 0) #15
  %8 = load i32, ptr %4, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @alc_get_coef0(ptr noundef %0)
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, 24
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @msleep(i32 noundef 150) #15
  br label %15

15:                                               ; preds = %14, %10, %7, %1
  %16 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 7, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = tail call i32 %17(ptr noundef %0) #15
  %19 = load i32, ptr %4, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 4, i32 noundef 2048, i32 noundef 2048) #15
  %22 = load i32, ptr %4, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = tail call fastcc i32 @alc_get_coef0(ptr noundef %0)
  %26 = and i32 %25, 255
  %27 = icmp eq i32 %26, 23
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  tail call void @msleep(i32 noundef 200) #15
  br label %29

29:                                               ; preds = %28, %24, %21, %15
  tail call void @snd_hdac_regmap_sync(ptr noundef %0) #15
  %30 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 7, i32 8
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = tail call i32 %31(ptr noundef %0, i16 noundef zeroext 1) #15
  br label %35

35:                                               ; preds = %33, %29
  %36 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 5
  %37 = load i32, ptr %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %2, align 8
  %41 = getelementptr inbounds %struct.alc_spec, ptr %40, i32 0, i32 5
  %42 = load i32, ptr %41, align 8
  %43 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1813, i32 noundef %42) #15
  br label %44

44:                                               ; preds = %39, %35
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc_default_shutup(ptr noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 33, i32 6
  %6 = load i16, ptr %5, align 8
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 33, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 33, i32 1
  %14 = load i16, ptr %13, align 4
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %12, %8
  %17 = getelementptr inbounds %struct.alc_spec, ptr %4, i32 0, i32 24
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 4, i32 noundef 2048, i32 noundef 0) #15
  %21 = load i32, ptr %17, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = tail call fastcc i32 @alc_get_coef0(ptr noundef %0) #15
  %25 = and i32 %24, 255
  %26 = icmp eq i32 %25, 24
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  tail call void @msleep(i32 noundef 150) #15
  br label %28

28:                                               ; preds = %27, %23, %20, %16
  tail call fastcc void @alc_shutup_pins(ptr noundef %0) #15
  br label %82

29:                                               ; preds = %12, %1
  %30 = phi i16 [ %14, %12 ], [ %6, %1 ]
  %31 = tail call i32 @snd_hda_jack_detect_state_mst(ptr noundef %0, i16 noundef zeroext %30, i32 noundef 0) #15
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  tail call void @msleep(i32 noundef 2) #15
  %34 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %30, i32 noundef 0, i32 noundef 768, i32 noundef 45184) #15
  tail call void @msleep(i32 noundef 85) #15
  br label %37

35:                                               ; preds = %29
  %36 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %30, i32 noundef 0, i32 noundef 768, i32 noundef 45184) #15
  br label %37

37:                                               ; preds = %35, %33
  %38 = getelementptr inbounds %struct.alc_spec, ptr %4, i32 0, i32 25
  %39 = load i8, ptr %38, align 8
  %40 = and i8 %39, 8
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %30, i32 noundef 0, i32 noundef 1799, i32 noundef 0) #15
  br label %44

44:                                               ; preds = %42, %37
  br i1 %32, label %46, label %45

45:                                               ; preds = %44
  tail call void @msleep(i32 noundef 100) #15
  br label %46

46:                                               ; preds = %45, %44
  %47 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 18
  %48 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 17
  %49 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 14
  br label %50

50:                                               ; preds = %77, %46
  %51 = phi i16 [ 15, %46 ], [ %79, %77 ]
  %52 = phi ptr [ @alc_auto_setup_eapd.pins, %46 ], [ %78, %77 ]
  %53 = zext i16 %51 to i32
  %54 = load i16, ptr %47, align 4
  %55 = zext i16 %54 to i32
  %56 = icmp ugt i16 %54, %51
  br i1 %56, label %77, label %57

57:                                               ; preds = %50
  %58 = load i32, ptr %48, align 8
  %59 = add i32 %58, %55
  %60 = icmp ugt i32 %59, %53
  br i1 %60, label %61, label %77

61:                                               ; preds = %57
  %62 = load ptr, ptr %49, align 4
  %63 = sub nsw i32 %53, %55
  %64 = getelementptr i32, ptr %62, i32 %63
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 15728640
  %67 = icmp eq i32 %66, 4194304
  br i1 %67, label %68, label %77

68:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !annotation !8
  %69 = call i32 @_snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %51, i32 noundef 12, ptr noundef nonnull %2) #15
  %70 = load i32, ptr %2, align 4
  %71 = icmp sgt i32 %69, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  %72 = and i32 %70, 65536
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %77, label %75

75:                                               ; preds = %68
  %76 = call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %51, i32 noundef 0, i32 noundef 1804, i32 noundef 0) #15
  br label %77

77:                                               ; preds = %75, %68, %61, %57, %50
  %78 = getelementptr i16, ptr %52, i32 1
  %79 = load i16, ptr %78, align 2
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %81, label %50

81:                                               ; preds = %77
  call fastcc void @alc_shutup_pins(ptr noundef %0)
  br label %82

82:                                               ; preds = %81, %28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc_default_init(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 33, i32 6
  %5 = load i16, ptr %4, align 8
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 33, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 33, i32 1
  %13 = load i16, ptr %12, align 4
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %11, %1
  %16 = phi i16 [ %13, %11 ], [ %5, %1 ]
  tail call void @msleep(i32 noundef 30) #15
  %17 = tail call i32 @snd_hda_jack_detect_state_mst(ptr noundef %0, i16 noundef zeroext %16, i32 noundef 0) #15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  tail call void @msleep(i32 noundef 2) #15
  %20 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %16, i32 noundef 0, i32 noundef 768, i32 noundef 45184) #15
  tail call void @msleep(i32 noundef 85) #15
  %21 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %16, i32 noundef 0, i32 noundef 1799, i32 noundef 64) #15
  tail call void @msleep(i32 noundef 100) #15
  br label %25

22:                                               ; preds = %15
  %23 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %16, i32 noundef 0, i32 noundef 768, i32 noundef 45184) #15
  %24 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %16, i32 noundef 0, i32 noundef 1799, i32 noundef 64) #15
  br label %25

25:                                               ; preds = %22, %19, %11, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @alc_get_coef0(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 29
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %9 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %9) #15
  %10 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 0) #15
  %11 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #15
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds %struct.alc_spec, ptr %12, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %13) #15
  %14 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  store i32 %11, ptr %4, align 4
  br label %15

15:                                               ; preds = %7, %1
  %16 = phi i32 [ %11, %7 ], [ %5, %1 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_codec_set_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @alc_fix_pll_init(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.alc_spec, ptr %5, i32 0, i32 26
  store i16 32, ptr %6, align 2
  %7 = getelementptr inbounds %struct.alc_spec, ptr %5, i32 0, i32 27
  store i32 %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.alc_spec, ptr %5, i32 0, i32 28
  store i32 %2, ptr %8, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %struct.alc_spec, ptr %9, i32 0, i32 26
  %11 = load i16, ptr %10, align 2
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.alc_spec, ptr %9, i32 0, i32 27
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.alc_spec, ptr %9, i32 0, i32 28
  %17 = load i32, ptr %16, align 8
  %18 = shl nuw i32 1, %17
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext %11, i32 noundef %15, i32 noundef %18, i32 noundef 0) #15
  br label %19

19:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc269_shutup(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 24
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 4, i32 noundef 2048, i32 noundef 0) #15
  %8 = load i32, ptr %4, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @alc_get_coef0(ptr noundef %0)
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, 24
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @msleep(i32 noundef 150) #15
  br label %15

15:                                               ; preds = %14, %10, %7, %1
  tail call fastcc void @alc_shutup_pins(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc269_fill_coef(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 24
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %105

7:                                                ; preds = %1
  %8 = tail call fastcc i32 @alc_get_coef0(ptr noundef %0)
  %9 = and i32 %8, 255
  %10 = icmp ult i32 %9, 21
  br i1 %10, label %11, label %28

11:                                               ; preds = %7
  %12 = load ptr, ptr %2, align 8
  %13 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %14 = getelementptr inbounds %struct.alc_spec, ptr %12, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %14) #15
  %15 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 15) #15
  %16 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 38411) #15
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr inbounds %struct.alc_spec, ptr %17, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %18) #15
  %19 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %20 = load ptr, ptr %2, align 8
  %21 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %22 = getelementptr inbounds %struct.alc_spec, ptr %20, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %22) #15
  %23 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 14) #15
  %24 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 34839) #15
  %25 = load ptr, ptr %2, align 8
  %26 = getelementptr inbounds %struct.alc_spec, ptr %25, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %26) #15
  %27 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  br label %28

28:                                               ; preds = %11, %7
  %29 = tail call fastcc i32 @alc_get_coef0(ptr noundef %0)
  %30 = and i32 %29, 255
  %31 = icmp eq i32 %30, 22
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  %33 = load ptr, ptr %2, align 8
  %34 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %35 = getelementptr inbounds %struct.alc_spec, ptr %33, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %35) #15
  %36 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 15) #15
  %37 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 38411) #15
  %38 = load ptr, ptr %2, align 8
  %39 = getelementptr inbounds %struct.alc_spec, ptr %38, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %39) #15
  %40 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %41 = load ptr, ptr %2, align 8
  %42 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %43 = getelementptr inbounds %struct.alc_spec, ptr %41, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %43) #15
  %44 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 14) #15
  %45 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 34836) #15
  %46 = load ptr, ptr %2, align 8
  %47 = getelementptr inbounds %struct.alc_spec, ptr %46, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %47) #15
  %48 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  br label %49

49:                                               ; preds = %32, %28
  %50 = tail call fastcc i32 @alc_get_coef0(ptr noundef %0)
  %51 = and i32 %50, 255
  %52 = icmp eq i32 %51, 23
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 4, i32 noundef 0, i32 noundef 2048)
  br label %54

54:                                               ; preds = %53, %49
  %55 = tail call fastcc i32 @alc_get_coef0(ptr noundef %0)
  %56 = and i32 %55, 255
  %57 = icmp eq i32 %56, 24
  br i1 %57, label %58, label %104

58:                                               ; preds = %54
  %59 = load ptr, ptr %2, align 8
  %60 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %61 = getelementptr inbounds %struct.alc_spec, ptr %59, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %61) #15
  %62 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 13) #15
  %63 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #15
  %64 = load ptr, ptr %2, align 8
  %65 = getelementptr inbounds %struct.alc_spec, ptr %64, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %65) #15
  %66 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %67 = icmp eq i32 %63, -1
  %68 = and i32 %63, 3072
  %69 = icmp eq i32 %68, 1024
  %70 = or i1 %67, %69
  br i1 %70, label %81, label %71

71:                                               ; preds = %58
  %72 = or i32 %63, 1024
  %73 = load ptr, ptr %2, align 8
  %74 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %75 = getelementptr inbounds %struct.alc_spec, ptr %73, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %75) #15
  %76 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 13) #15
  %77 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef %72) #15
  %78 = load ptr, ptr %2, align 8
  %79 = getelementptr inbounds %struct.alc_spec, ptr %78, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %79) #15
  %80 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  br label %81

81:                                               ; preds = %71, %58
  %82 = load ptr, ptr %2, align 8
  %83 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %84 = getelementptr inbounds %struct.alc_spec, ptr %82, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %84) #15
  %85 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 23) #15
  %86 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #15
  %87 = load ptr, ptr %2, align 8
  %88 = getelementptr inbounds %struct.alc_spec, ptr %87, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %88) #15
  %89 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %90 = icmp eq i32 %86, -1
  %91 = and i32 %86, 448
  %92 = icmp eq i32 %91, 256
  %93 = or i1 %90, %92
  br i1 %93, label %104, label %94

94:                                               ; preds = %81
  %95 = or i32 %86, 128
  %96 = load ptr, ptr %2, align 8
  %97 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %98 = getelementptr inbounds %struct.alc_spec, ptr %96, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %98) #15
  %99 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 23) #15
  %100 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef %95) #15
  %101 = load ptr, ptr %2, align 8
  %102 = getelementptr inbounds %struct.alc_spec, ptr %101, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %102) #15
  %103 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  br label %104

104:                                              ; preds = %94, %81, %54
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 4, i32 noundef 0, i32 noundef 2048)
  br label %105

105:                                              ; preds = %104, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc282_shutup(ptr noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 33, i32 6
  %6 = load i16, ptr %5, align 8
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 33, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 33, i32 1
  %14 = load i16, ptr %13, align 4
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %12, %8
  %17 = getelementptr inbounds %struct.alc_spec, ptr %4, i32 0, i32 24
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 4, i32 noundef 2048, i32 noundef 0) #15
  %21 = load i32, ptr %17, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = tail call fastcc i32 @alc_get_coef0(ptr noundef %0) #15
  %25 = and i32 %24, 255
  %26 = icmp eq i32 %25, 24
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  tail call void @msleep(i32 noundef 150) #15
  br label %28

28:                                               ; preds = %27, %23, %20, %16
  tail call fastcc void @alc_shutup_pins(ptr noundef %0) #15
  br label %106

29:                                               ; preds = %12, %1
  %30 = phi i16 [ %14, %12 ], [ %6, %1 ]
  %31 = tail call i32 @snd_hda_jack_detect_state_mst(ptr noundef %0, i16 noundef zeroext %30, i32 noundef 0) #15
  %32 = icmp eq i32 %31, 0
  %33 = load ptr, ptr %3, align 8
  %34 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %35 = getelementptr inbounds %struct.alc_spec, ptr %33, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %35) #15
  %36 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 120) #15
  %37 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #15
  %38 = load ptr, ptr %3, align 8
  %39 = getelementptr inbounds %struct.alc_spec, ptr %38, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %39) #15
  %40 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %41 = load ptr, ptr %3, align 8
  %42 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %43 = getelementptr inbounds %struct.alc_spec, ptr %41, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %43) #15
  %44 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 120) #15
  %45 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 36868) #15
  %46 = load ptr, ptr %3, align 8
  %47 = getelementptr inbounds %struct.alc_spec, ptr %46, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %47) #15
  %48 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  br i1 %32, label %51, label %49

49:                                               ; preds = %29
  tail call void @msleep(i32 noundef 2) #15
  %50 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %30, i32 noundef 0, i32 noundef 768, i32 noundef 45184) #15
  tail call void @msleep(i32 noundef 85) #15
  br label %53

51:                                               ; preds = %29
  %52 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %30, i32 noundef 0, i32 noundef 768, i32 noundef 45184) #15
  br label %53

53:                                               ; preds = %51, %49
  %54 = getelementptr inbounds %struct.alc_spec, ptr %4, i32 0, i32 25
  %55 = load i8, ptr %54, align 8
  %56 = and i8 %55, 8
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %30, i32 noundef 0, i32 noundef 1799, i32 noundef 0) #15
  br label %60

60:                                               ; preds = %58, %53
  br i1 %32, label %62, label %61

61:                                               ; preds = %60
  tail call void @msleep(i32 noundef 100) #15
  br label %62

62:                                               ; preds = %61, %60
  %63 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 18
  %64 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 17
  %65 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 14
  br label %66

66:                                               ; preds = %93, %62
  %67 = phi i16 [ 15, %62 ], [ %95, %93 ]
  %68 = phi ptr [ @alc_auto_setup_eapd.pins, %62 ], [ %94, %93 ]
  %69 = zext i16 %67 to i32
  %70 = load i16, ptr %63, align 4
  %71 = zext i16 %70 to i32
  %72 = icmp ugt i16 %70, %67
  br i1 %72, label %93, label %73

73:                                               ; preds = %66
  %74 = load i32, ptr %64, align 8
  %75 = add i32 %74, %71
  %76 = icmp ugt i32 %75, %69
  br i1 %76, label %77, label %93

77:                                               ; preds = %73
  %78 = load ptr, ptr %65, align 4
  %79 = sub nsw i32 %69, %71
  %80 = getelementptr i32, ptr %78, i32 %79
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, 15728640
  %83 = icmp eq i32 %82, 4194304
  br i1 %83, label %84, label %93

84:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !annotation !8
  %85 = call i32 @_snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %67, i32 noundef 12, ptr noundef nonnull %2) #15
  %86 = load i32, ptr %2, align 4
  %87 = icmp sgt i32 %85, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  %88 = and i32 %86, 65536
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %87, i1 %89, i1 false
  br i1 %90, label %93, label %91

91:                                               ; preds = %84
  %92 = call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %67, i32 noundef 0, i32 noundef 1804, i32 noundef 0) #15
  br label %93

93:                                               ; preds = %91, %84, %77, %73, %66
  %94 = getelementptr i16, ptr %68, i32 1
  %95 = load i16, ptr %94, align 2
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %97, label %66

97:                                               ; preds = %93
  call fastcc void @alc_shutup_pins(ptr noundef %0)
  %98 = load ptr, ptr %3, align 8
  %99 = call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %100 = getelementptr inbounds %struct.alc_spec, ptr %98, i32 0, i32 15
  call void @mutex_lock(ptr noundef %100) #15
  %101 = call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 120) #15
  %102 = call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef %37) #15
  %103 = load ptr, ptr %3, align 8
  %104 = getelementptr inbounds %struct.alc_spec, ptr %103, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %104) #15
  %105 = call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  br label %106

106:                                              ; preds = %97, %28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc282_init(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 33, i32 6
  %5 = load i16, ptr %4, align 8
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc282_coefs) #15
  br label %17

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 33, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc282_coefs) #15
  br label %52

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 33, i32 1
  %15 = load i16, ptr %14, align 4
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc282_coefs) #15
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %52, label %17

17:                                               ; preds = %13, %7
  %18 = phi i16 [ %5, %7 ], [ %15, %13 ]
  %19 = tail call i32 @snd_hda_jack_detect_state_mst(ptr noundef %0, i16 noundef zeroext %18, i32 noundef 0) #15
  %20 = icmp eq i32 %19, 0
  %21 = load ptr, ptr %2, align 8
  %22 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %23 = getelementptr inbounds %struct.alc_spec, ptr %21, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %23) #15
  %24 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 120) #15
  %25 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #15
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr inbounds %struct.alc_spec, ptr %26, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %27) #15
  %28 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %29 = load ptr, ptr %2, align 8
  %30 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %31 = getelementptr inbounds %struct.alc_spec, ptr %29, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %31) #15
  %32 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 120) #15
  %33 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 36868) #15
  %34 = load ptr, ptr %2, align 8
  %35 = getelementptr inbounds %struct.alc_spec, ptr %34, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %35) #15
  %36 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  br i1 %20, label %40, label %37

37:                                               ; preds = %17
  tail call void @msleep(i32 noundef 2) #15
  %38 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %18, i32 noundef 0, i32 noundef 768, i32 noundef 45184) #15
  tail call void @msleep(i32 noundef 85) #15
  %39 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %18, i32 noundef 0, i32 noundef 1799, i32 noundef 64) #15
  tail call void @msleep(i32 noundef 100) #15
  br label %43

40:                                               ; preds = %17
  %41 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %18, i32 noundef 0, i32 noundef 768, i32 noundef 45184) #15
  %42 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %18, i32 noundef 0, i32 noundef 1799, i32 noundef 64) #15
  br label %43

43:                                               ; preds = %40, %37
  %44 = load ptr, ptr %2, align 8
  %45 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %46 = getelementptr inbounds %struct.alc_spec, ptr %44, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %46) #15
  %47 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 120) #15
  %48 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef %25) #15
  %49 = load ptr, ptr %2, align 8
  %50 = getelementptr inbounds %struct.alc_spec, ptr %49, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %50) #15
  %51 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  br label %52

52:                                               ; preds = %43, %13, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc283_shutup(ptr noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 33, i32 6
  %6 = load i16, ptr %5, align 8
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 33, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 33, i32 1
  %14 = load i16, ptr %13, align 4
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %12, %8
  %17 = getelementptr inbounds %struct.alc_spec, ptr %4, i32 0, i32 24
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 4, i32 noundef 2048, i32 noundef 0) #15
  %21 = load i32, ptr %17, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = tail call fastcc i32 @alc_get_coef0(ptr noundef %0) #15
  %25 = and i32 %24, 255
  %26 = icmp eq i32 %25, 24
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  tail call void @msleep(i32 noundef 150) #15
  br label %28

28:                                               ; preds = %27, %23, %20, %16
  tail call fastcc void @alc_shutup_pins(ptr noundef %0) #15
  br label %104

29:                                               ; preds = %12, %1
  %30 = phi i16 [ %14, %12 ], [ %6, %1 ]
  %31 = tail call i32 @snd_hda_jack_detect_state_mst(ptr noundef %0, i16 noundef zeroext %30, i32 noundef 0) #15
  %32 = icmp eq i32 %31, 0
  %33 = load ptr, ptr %3, align 8
  %34 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %35 = getelementptr inbounds %struct.alc_spec, ptr %33, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %35) #15
  %36 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 67) #15
  %37 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 36868) #15
  %38 = load ptr, ptr %3, align 8
  %39 = getelementptr inbounds %struct.alc_spec, ptr %38, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %39) #15
  %40 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %41 = load ptr, ptr %3, align 8
  %42 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %43 = getelementptr inbounds %struct.alc_spec, ptr %41, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %43) #15
  %44 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 6) #15
  %45 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 8448) #15
  %46 = load ptr, ptr %3, align 8
  %47 = getelementptr inbounds %struct.alc_spec, ptr %46, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %47) #15
  %48 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %49 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %30, i32 noundef 0, i32 noundef 768, i32 noundef 45184) #15
  br i1 %32, label %51, label %50

50:                                               ; preds = %29
  tail call void @msleep(i32 noundef 100) #15
  br label %51

51:                                               ; preds = %50, %29
  %52 = getelementptr inbounds %struct.alc_spec, ptr %4, i32 0, i32 25
  %53 = load i8, ptr %52, align 8
  %54 = and i8 %53, 8
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %30, i32 noundef 0, i32 noundef 1799, i32 noundef 0) #15
  br label %58

58:                                               ; preds = %56, %51
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 70, i32 noundef 0, i32 noundef 12288)
  br i1 %32, label %60, label %59

59:                                               ; preds = %58
  tail call void @msleep(i32 noundef 100) #15
  br label %60

60:                                               ; preds = %59, %58
  %61 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 18
  %62 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 17
  %63 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 14
  br label %64

64:                                               ; preds = %91, %60
  %65 = phi i16 [ 15, %60 ], [ %93, %91 ]
  %66 = phi ptr [ @alc_auto_setup_eapd.pins, %60 ], [ %92, %91 ]
  %67 = zext i16 %65 to i32
  %68 = load i16, ptr %61, align 4
  %69 = zext i16 %68 to i32
  %70 = icmp ugt i16 %68, %65
  br i1 %70, label %91, label %71

71:                                               ; preds = %64
  %72 = load i32, ptr %62, align 8
  %73 = add i32 %72, %69
  %74 = icmp ugt i32 %73, %67
  br i1 %74, label %75, label %91

75:                                               ; preds = %71
  %76 = load ptr, ptr %63, align 4
  %77 = sub nsw i32 %67, %69
  %78 = getelementptr i32, ptr %76, i32 %77
  %79 = load i32, ptr %78, align 4
  %80 = and i32 %79, 15728640
  %81 = icmp eq i32 %80, 4194304
  br i1 %81, label %82, label %91

82:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !annotation !8
  %83 = call i32 @_snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %65, i32 noundef 12, ptr noundef nonnull %2) #15
  %84 = load i32, ptr %2, align 4
  %85 = icmp sgt i32 %83, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  %86 = and i32 %84, 65536
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %85, i1 %87, i1 false
  br i1 %88, label %91, label %89

89:                                               ; preds = %82
  %90 = call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %65, i32 noundef 0, i32 noundef 1804, i32 noundef 0) #15
  br label %91

91:                                               ; preds = %89, %82, %75, %71, %64
  %92 = getelementptr i16, ptr %66, i32 1
  %93 = load i16, ptr %92, align 2
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %95, label %64

95:                                               ; preds = %91
  call fastcc void @alc_shutup_pins(ptr noundef %0)
  %96 = load ptr, ptr %3, align 8
  %97 = call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %98 = getelementptr inbounds %struct.alc_spec, ptr %96, i32 0, i32 15
  call void @mutex_lock(ptr noundef %98) #15
  %99 = call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 67) #15
  %100 = call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 38420) #15
  %101 = load ptr, ptr %3, align 8
  %102 = getelementptr inbounds %struct.alc_spec, ptr %101, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %102) #15
  %103 = call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  br label %104

104:                                              ; preds = %95, %28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc283_init(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 33, i32 6
  %5 = load i16, ptr %4, align 8
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc283_coefs) #15
  br label %17

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 33, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc283_coefs) #15
  br label %43

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 33, i32 1
  %15 = load i16, ptr %14, align 4
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc283_coefs) #15
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %43, label %17

17:                                               ; preds = %13, %7
  %18 = phi i16 [ %5, %7 ], [ %15, %13 ]
  tail call void @msleep(i32 noundef 30) #15
  %19 = tail call i32 @snd_hda_jack_detect_state_mst(ptr noundef %0, i16 noundef zeroext %18, i32 noundef 0) #15
  %20 = icmp eq i32 %19, 0
  %21 = load ptr, ptr %2, align 8
  %22 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %23 = getelementptr inbounds %struct.alc_spec, ptr %21, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %23) #15
  %24 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 67) #15
  %25 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 36868) #15
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr inbounds %struct.alc_spec, ptr %26, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %27) #15
  %28 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %29 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %18, i32 noundef 0, i32 noundef 768, i32 noundef 45184) #15
  br i1 %20, label %32, label %30

30:                                               ; preds = %17
  tail call void @msleep(i32 noundef 85) #15
  %31 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %18, i32 noundef 0, i32 noundef 1799, i32 noundef 64) #15
  tail call void @msleep(i32 noundef 85) #15
  br label %34

32:                                               ; preds = %17
  %33 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %18, i32 noundef 0, i32 noundef 1799, i32 noundef 64) #15
  br label %34

34:                                               ; preds = %32, %30
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 70, i32 noundef 12288, i32 noundef 0)
  %35 = load ptr, ptr %2, align 8
  %36 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %37 = getelementptr inbounds %struct.alc_spec, ptr %35, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %37) #15
  %38 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 67) #15
  %39 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 38420) #15
  %40 = load ptr, ptr %2, align 8
  %41 = getelementptr inbounds %struct.alc_spec, ptr %40, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %41) #15
  %42 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  br label %43

43:                                               ; preds = %34, %13, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc256_shutup(ptr noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 33, i32 6
  %6 = load i16, ptr %5, align 8
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 33, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 33, i32 1
  %14 = load i16, ptr %13, align 4
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %8
  br label %17

17:                                               ; preds = %16, %12, %1
  %18 = phi i16 [ 33, %16 ], [ %14, %12 ], [ %6, %1 ]
  %19 = tail call i32 @snd_hda_jack_detect_state_mst(ptr noundef %0, i16 noundef zeroext %18, i32 noundef 0) #15
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  tail call void @msleep(i32 noundef 2) #15
  %22 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %18, i32 noundef 0, i32 noundef 768, i32 noundef 45184) #15
  br label %29

23:                                               ; preds = %17
  %24 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %18, i32 noundef 0, i32 noundef 768, i32 noundef 45184) #15
  %25 = getelementptr inbounds %struct.alc_spec, ptr %4, i32 0, i32 25
  %26 = load i8, ptr %25, align 8
  %27 = and i8 %26, 16
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23, %21
  tail call void @msleep(i32 noundef 85) #15
  br label %30

30:                                               ; preds = %29, %23
  %31 = getelementptr inbounds %struct.alc_spec, ptr %4, i32 0, i32 24
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, -2
  %34 = icmp eq i32 %33, 12
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 70, i32 noundef 0, i32 noundef 12288)
  br label %36

36:                                               ; preds = %35, %30
  %37 = getelementptr inbounds %struct.alc_spec, ptr %4, i32 0, i32 25
  %38 = load i8, ptr %37, align 8
  %39 = and i8 %38, 8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %18, i32 noundef 0, i32 noundef 1799, i32 noundef 0) #15
  br label %43

43:                                               ; preds = %41, %36
  br i1 %20, label %44, label %48

44:                                               ; preds = %43
  %45 = load i8, ptr %37, align 8
  %46 = and i8 %45, 16
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44, %43
  tail call void @msleep(i32 noundef 100) #15
  br label %49

49:                                               ; preds = %48, %44
  %50 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 18
  %51 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 17
  %52 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 14
  br label %53

53:                                               ; preds = %80, %49
  %54 = phi i16 [ 15, %49 ], [ %82, %80 ]
  %55 = phi ptr [ @alc_auto_setup_eapd.pins, %49 ], [ %81, %80 ]
  %56 = zext i16 %54 to i32
  %57 = load i16, ptr %50, align 4
  %58 = zext i16 %57 to i32
  %59 = icmp ugt i16 %57, %54
  br i1 %59, label %80, label %60

60:                                               ; preds = %53
  %61 = load i32, ptr %51, align 8
  %62 = add i32 %61, %58
  %63 = icmp ugt i32 %62, %56
  br i1 %63, label %64, label %80

64:                                               ; preds = %60
  %65 = load ptr, ptr %52, align 4
  %66 = sub nsw i32 %56, %58
  %67 = getelementptr i32, ptr %65, i32 %66
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, 15728640
  %70 = icmp eq i32 %69, 4194304
  br i1 %70, label %71, label %80

71:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !annotation !8
  %72 = call i32 @_snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %54, i32 noundef 12, ptr noundef nonnull %2) #15
  %73 = load i32, ptr %2, align 4
  %74 = icmp sgt i32 %72, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  %75 = and i32 %73, 65536
  %76 = icmp eq i32 %75, 0
  %77 = select i1 %74, i1 %76, i1 false
  br i1 %77, label %80, label %78

78:                                               ; preds = %71
  %79 = call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %54, i32 noundef 0, i32 noundef 1804, i32 noundef 0) #15
  br label %80

80:                                               ; preds = %78, %71, %64, %60, %53
  %81 = getelementptr i16, ptr %55, i32 1
  %82 = load i16, ptr %81, align 2
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %53

84:                                               ; preds = %80
  call fastcc void @alc_shutup_pins(ptr noundef %0)
  %85 = load i8, ptr %37, align 8
  %86 = and i8 %85, 16
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  call void @msleep(i32 noundef 50) #15
  call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 3, i32 noundef 2, i32 noundef 0)
  call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 8, i32 noundef 112, i32 noundef 112)
  call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 8, i32 noundef 12, i32 noundef 0)
  call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 59, i32 noundef 32768, i32 noundef 32768)
  call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 14, i32 noundef 448, i32 noundef 0)
  call void @msleep(i32 noundef 30) #15
  br label %89

89:                                               ; preds = %88, %84
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc256_init(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 33, i32 6
  %5 = load i16, ptr %4, align 8
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 33, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 33, i32 1
  %13 = load i16, ptr %12, align 4
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %7
  br label %16

16:                                               ; preds = %15, %11, %1
  %17 = phi i16 [ 33, %15 ], [ %13, %11 ], [ %5, %1 ]
  tail call void @msleep(i32 noundef 30) #15
  %18 = tail call i32 @snd_hda_jack_detect_state_mst(ptr noundef %0, i16 noundef zeroext %17, i32 noundef 0) #15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @msleep(i32 noundef 2) #15
  br label %21

21:                                               ; preds = %20, %16
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 87, i32 noundef 4, i32 noundef 7, i32 noundef 1)
  %22 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 25
  %23 = load i8, ptr %22, align 8
  %24 = and i8 %23, 16
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 3, i32 noundef 2, i32 noundef 2)
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 8, i32 noundef 12, i32 noundef 12)
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 8, i32 noundef 112, i32 noundef 0)
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 59, i32 noundef 32768, i32 noundef 0)
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 14, i32 noundef 448, i32 noundef 448)
  tail call void @msleep(i32 noundef 30) #15
  br label %27

27:                                               ; preds = %26, %21
  %28 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %17, i32 noundef 0, i32 noundef 768, i32 noundef 45184) #15
  br i1 %19, label %29, label %39

29:                                               ; preds = %27
  %30 = load i8, ptr %22, align 8
  %31 = and i8 %30, 16
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @msleep(i32 noundef 85) #15
  br label %34

34:                                               ; preds = %33, %29
  %35 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %17, i32 noundef 0, i32 noundef 1799, i32 noundef 64) #15
  %36 = load i8, ptr %22, align 8
  %37 = and i8 %36, 16
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %42, label %41

39:                                               ; preds = %27
  tail call void @msleep(i32 noundef 85) #15
  %40 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %17, i32 noundef 0, i32 noundef 1799, i32 noundef 64) #15
  br label %41

41:                                               ; preds = %39, %34
  tail call void @msleep(i32 noundef 100) #15
  br label %42

42:                                               ; preds = %41, %34
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 70, i32 noundef 12288, i32 noundef 0)
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 87, i32 noundef 4, i32 noundef 7, i32 noundef 4)
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 83, i32 noundef 2, i32 noundef 32768, i32 noundef 32768)
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 83, i32 noundef 2, i32 noundef 32768, i32 noundef 0)
  %43 = load ptr, ptr %2, align 8
  %44 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %45 = getelementptr inbounds %struct.alc_spec, ptr %43, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %45) #15
  %46 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 54) #15
  %47 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 22359) #15
  %48 = load ptr, ptr %2, align 8
  %49 = getelementptr inbounds %struct.alc_spec, ptr %48, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %49) #15
  %50 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc225_shutup(ptr noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 33, i32 6
  %6 = load i16, ptr %5, align 8
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 33, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 33, i32 1
  %14 = load i16, ptr %13, align 4
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %8
  br label %17

17:                                               ; preds = %16, %12, %1
  %18 = phi i16 [ 33, %16 ], [ %14, %12 ], [ %6, %1 ]
  %19 = getelementptr inbounds %struct.alc_spec, ptr %4, i32 0, i32 25
  %20 = load i8, ptr %19, align 8
  %21 = and i8 %20, 32
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %42, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 7
  %25 = load i32, ptr %24, align 8
  switch i32 %25, label %42 [
    i32 283902485, label %26
    i32 283902501, label %26
    i32 283902597, label %26
    i32 283902599, label %26
    i32 283902613, label %26
    i32 283902601, label %26
    i32 283902617, label %26
    i32 283902512, label %34
    i32 283902518, label %34
    i32 283902550, label %34
  ]

26:                                               ; preds = %23, %23, %23, %23, %23, %23, %23
  %27 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %28 = getelementptr inbounds %struct.alc_spec, ptr %4, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %28) #15
  %29 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 72) #15
  %30 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 0) #15
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr inbounds %struct.alc_spec, ptr %31, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %32) #15
  %33 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 73, i32 noundef 69, i32 noundef 0) #15
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 68, i32 noundef 17664, i32 noundef 0) #15
  br label %42

34:                                               ; preds = %23, %23, %23
  %35 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %36 = getelementptr inbounds %struct.alc_spec, ptr %4, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %36) #15
  %37 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 72) #15
  %38 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 0) #15
  %39 = load ptr, ptr %3, align 8
  %40 = getelementptr inbounds %struct.alc_spec, ptr %39, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %40) #15
  %41 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 73, i32 noundef 69, i32 noundef 0) #15
  br label %42

42:                                               ; preds = %34, %26, %23, %17
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 74, i32 noundef 0, i32 noundef 3072)
  %43 = tail call i32 @snd_hda_jack_detect_state_mst(ptr noundef %0, i16 noundef zeroext %18, i32 noundef 0) #15
  %44 = icmp ne i32 %43, 0
  %45 = tail call i32 @snd_hda_jack_detect_state_mst(ptr noundef %0, i16 noundef zeroext 22, i32 noundef 0) #15
  %46 = icmp ne i32 %45, 0
  %47 = select i1 %44, i1 true, i1 %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  tail call void @msleep(i32 noundef 2) #15
  br label %49

49:                                               ; preds = %48, %42
  br i1 %44, label %54, label %50

50:                                               ; preds = %49
  %51 = load i8, ptr %19, align 8
  %52 = and i8 %51, 16
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50, %49
  %55 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %18, i32 noundef 0, i32 noundef 768, i32 noundef 45184) #15
  br label %56

56:                                               ; preds = %54, %50
  br i1 %46, label %57, label %59

57:                                               ; preds = %56
  %58 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 22, i32 noundef 0, i32 noundef 768, i32 noundef 45184) #15
  br label %59

59:                                               ; preds = %57, %56
  br i1 %47, label %64, label %60

60:                                               ; preds = %59
  %61 = load i8, ptr %19, align 8
  %62 = and i8 %61, 16
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60, %59
  tail call void @msleep(i32 noundef 85) #15
  br label %65

65:                                               ; preds = %64, %60
  br i1 %44, label %70, label %66

66:                                               ; preds = %65
  %67 = load i8, ptr %19, align 8
  %68 = and i8 %67, 16
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %66, %65
  %71 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %18, i32 noundef 0, i32 noundef 1799, i32 noundef 0) #15
  br label %72

72:                                               ; preds = %70, %66
  br i1 %46, label %73, label %75

73:                                               ; preds = %72
  %74 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 22, i32 noundef 0, i32 noundef 1799, i32 noundef 0) #15
  br label %75

75:                                               ; preds = %73, %72
  br i1 %47, label %80, label %76

76:                                               ; preds = %75
  %77 = load i8, ptr %19, align 8
  %78 = and i8 %77, 16
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %76, %75
  tail call void @msleep(i32 noundef 100) #15
  br label %81

81:                                               ; preds = %80, %76
  %82 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 18
  %83 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 17
  %84 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 14
  br label %85

85:                                               ; preds = %112, %81
  %86 = phi i16 [ 15, %81 ], [ %114, %112 ]
  %87 = phi ptr [ @alc_auto_setup_eapd.pins, %81 ], [ %113, %112 ]
  %88 = zext i16 %86 to i32
  %89 = load i16, ptr %82, align 4
  %90 = zext i16 %89 to i32
  %91 = icmp ugt i16 %89, %86
  br i1 %91, label %112, label %92

92:                                               ; preds = %85
  %93 = load i32, ptr %83, align 8
  %94 = add i32 %93, %90
  %95 = icmp ugt i32 %94, %88
  br i1 %95, label %96, label %112

96:                                               ; preds = %92
  %97 = load ptr, ptr %84, align 4
  %98 = sub nsw i32 %88, %90
  %99 = getelementptr i32, ptr %97, i32 %98
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, 15728640
  %102 = icmp eq i32 %101, 4194304
  br i1 %102, label %103, label %112

103:                                              ; preds = %96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !annotation !8
  %104 = call i32 @_snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %86, i32 noundef 12, ptr noundef nonnull %2) #15
  %105 = load i32, ptr %2, align 4
  %106 = icmp sgt i32 %104, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  %107 = and i32 %105, 65536
  %108 = icmp eq i32 %107, 0
  %109 = select i1 %106, i1 %108, i1 false
  br i1 %109, label %112, label %110

110:                                              ; preds = %103
  %111 = call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %86, i32 noundef 0, i32 noundef 1804, i32 noundef 0) #15
  br label %112

112:                                              ; preds = %110, %103, %96, %92, %85
  %113 = getelementptr i16, ptr %87, i32 1
  %114 = load i16, ptr %113, align 2
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %116, label %85

116:                                              ; preds = %112
  call fastcc void @alc_shutup_pins(ptr noundef %0)
  %117 = load i8, ptr %19, align 8
  %118 = and i8 %117, 16
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %116
  call void @msleep(i32 noundef 50) #15
  call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 8, i32 noundef 60, i32 noundef 48)
  call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 14, i32 noundef 448, i32 noundef 0)
  call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 51, i32 noundef 2048, i32 noundef 2048)
  call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 74, i32 noundef 48, i32 noundef 32)
  call void @msleep(i32 noundef 30) #15
  br label %121

121:                                              ; preds = %120, %116
  call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 74, i32 noundef 3072, i32 noundef 0)
  call fastcc void @alc_enable_headset_jack_key(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc225_init(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 33, i32 6
  %5 = load i16, ptr %4, align 8
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 33, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 33, i32 1
  %13 = load i16, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %7, %1
  %15 = phi i16 [ %13, %11 ], [ %5, %1 ], [ 0, %7 ]
  %16 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 24
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 16
  br i1 %18, label %136, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 25
  %21 = load i8, ptr %20, align 8
  %22 = and i8 %21, 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11
  %26 = load i32, ptr %25, align 8
  switch i32 %26, label %136 [
    i32 16, label %27
    i32 64, label %27
  ]

27:                                               ; preds = %24, %24, %19
  br i1 %6, label %28, label %35

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 33, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 33, i32 1
  %34 = load i16, ptr %33, align 4
  br label %35

35:                                               ; preds = %32, %28, %27
  %36 = phi i16 [ %34, %32 ], [ %5, %27 ], [ 0, %28 ]
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 74, i32 noundef 32768, i32 noundef 32768) #15
  %37 = load ptr, ptr %2, align 8
  %38 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %39 = getelementptr inbounds %struct.alc_spec, ptr %37, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %39) #15
  %40 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 56) #15
  %41 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #15
  %42 = load ptr, ptr %2, align 8
  %43 = getelementptr inbounds %struct.alc_spec, ptr %42, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %43) #15
  %44 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %45 = load ptr, ptr %2, align 8
  %46 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %47 = getelementptr inbounds %struct.alc_spec, ptr %45, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %47) #15
  %48 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 13) #15
  %49 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #15
  %50 = load ptr, ptr %2, align 8
  %51 = getelementptr inbounds %struct.alc_spec, ptr %50, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %51) #15
  %52 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %53 = load ptr, ptr %2, align 8
  %54 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %55 = getelementptr inbounds %struct.alc_spec, ptr %53, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %55) #15
  %56 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 54) #15
  %57 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #15
  %58 = load ptr, ptr %2, align 8
  %59 = getelementptr inbounds %struct.alc_spec, ptr %58, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %59) #15
  %60 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 56, i32 noundef 16, i32 noundef 0) #15
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 13, i32 noundef 272, i32 noundef 0) #15
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 103, i32 noundef 61440, i32 noundef 12288) #15
  %61 = icmp eq i16 %36, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %35
  %63 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %36, i32 noundef 0, i32 noundef 768, i32 noundef 45184) #15
  tail call void @msleep(i32 noundef 130) #15
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 54, i32 noundef 16384, i32 noundef 16384) #15
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 54, i32 noundef 8192, i32 noundef 0) #15
  %64 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %36, i32 noundef 0, i32 noundef 1799, i32 noundef 0) #15
  br label %66

65:                                               ; preds = %35
  tail call void @msleep(i32 noundef 130) #15
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 54, i32 noundef 16384, i32 noundef 16384) #15
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 54, i32 noundef 8192, i32 noundef 0) #15
  br label %66

66:                                               ; preds = %65, %62
  tail call void @msleep(i32 noundef 10) #15
  %67 = load ptr, ptr %2, align 8
  %68 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %69 = getelementptr inbounds %struct.alc_spec, ptr %67, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %69) #15
  %70 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 103) #15
  %71 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 0) #15
  %72 = load ptr, ptr %2, align 8
  %73 = getelementptr inbounds %struct.alc_spec, ptr %72, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %73) #15
  %74 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %75 = load ptr, ptr %2, align 8
  %76 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %77 = getelementptr inbounds %struct.alc_spec, ptr %75, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %77) #15
  %78 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 88, i32 noundef 0, i32 noundef 1280, i32 noundef 0) #15
  %79 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 88, i32 noundef 0, i32 noundef 1024, i32 noundef 30848) #15
  %80 = load ptr, ptr %2, align 8
  %81 = getelementptr inbounds %struct.alc_spec, ptr %80, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %81) #15
  %82 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %83 = load ptr, ptr %2, align 8
  %84 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %85 = getelementptr inbounds %struct.alc_spec, ptr %83, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %85) #15
  %86 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 88, i32 noundef 0, i32 noundef 1280, i32 noundef 15) #15
  %87 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 88, i32 noundef 0, i32 noundef 1024, i32 noundef 61513) #15
  %88 = load ptr, ptr %2, align 8
  %89 = getelementptr inbounds %struct.alc_spec, ptr %88, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %89) #15
  %90 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 88, i32 noundef 3, i32 noundef 240, i32 noundef 192) #15
  %91 = load ptr, ptr %2, align 8
  %92 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %93 = getelementptr inbounds %struct.alc_spec, ptr %91, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %93) #15
  %94 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 88, i32 noundef 0, i32 noundef 1280, i32 noundef 0) #15
  %95 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 88, i32 noundef 0, i32 noundef 1024, i32 noundef 63624) #15
  %96 = load ptr, ptr %2, align 8
  %97 = getelementptr inbounds %struct.alc_spec, ptr %96, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %97) #15
  %98 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %99 = load ptr, ptr %2, align 8
  %100 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %101 = getelementptr inbounds %struct.alc_spec, ptr %99, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %101) #15
  %102 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 88, i32 noundef 0, i32 noundef 1280, i32 noundef 0) #15
  %103 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext 88, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #15
  %104 = load ptr, ptr %2, align 8
  %105 = getelementptr inbounds %struct.alc_spec, ptr %104, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %105) #15
  %106 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %107 = and i32 %103, 32768
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %124, label %109

109:                                              ; preds = %109, %66
  %110 = phi i32 [ %119, %109 ], [ 0, %66 ]
  tail call void @msleep(i32 noundef 50) #15
  %111 = load ptr, ptr %2, align 8
  %112 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %113 = getelementptr inbounds %struct.alc_spec, ptr %111, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %113) #15
  %114 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 88, i32 noundef 0, i32 noundef 1280, i32 noundef 0) #15
  %115 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext 88, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #15
  %116 = load ptr, ptr %2, align 8
  %117 = getelementptr inbounds %struct.alc_spec, ptr %116, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %117) #15
  %118 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %119 = add nuw nsw i32 %110, 1
  %120 = icmp ult i32 %110, 19
  %121 = and i32 %115, 32768
  %122 = icmp ne i32 %121, 0
  %123 = select i1 %120, i1 %122, i1 false
  br i1 %123, label %109, label %124

124:                                              ; preds = %109, %66
  %125 = phi i32 [ %103, %66 ], [ %115, %109 ]
  %126 = load ptr, ptr %2, align 8
  %127 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %128 = getelementptr inbounds %struct.alc_spec, ptr %126, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %128) #15
  %129 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 88, i32 noundef 0, i32 noundef 1280, i32 noundef 0) #15
  %130 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 88, i32 noundef 0, i32 noundef 1024, i32 noundef %125) #15
  %131 = load ptr, ptr %2, align 8
  %132 = getelementptr inbounds %struct.alc_spec, ptr %131, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %132) #15
  %133 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 56, i32 noundef 16, i32 noundef %41) #15
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 13, i32 noundef 272, i32 noundef %49) #15
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 54, i32 noundef 24576, i32 noundef %57) #15
  tail call void @msleep(i32 noundef 50) #15
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 74, i32 noundef 32768, i32 noundef 0) #15
  %134 = load i8, ptr %20, align 8
  %135 = or i8 %134, 4
  store i8 %135, ptr %20, align 8
  br label %136

136:                                              ; preds = %124, %24, %14
  %137 = icmp eq i16 %15, 0
  %138 = select i1 %137, i16 33, i16 %15
  tail call void @msleep(i32 noundef 30) #15
  %139 = tail call i32 @snd_hda_jack_detect_state_mst(ptr noundef %0, i16 noundef zeroext %138, i32 noundef 0) #15
  %140 = icmp ne i32 %139, 0
  %141 = tail call i32 @snd_hda_jack_detect_state_mst(ptr noundef %0, i16 noundef zeroext 22, i32 noundef 0) #15
  %142 = icmp ne i32 %141, 0
  %143 = select i1 %140, i1 true, i1 %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %136
  tail call void @msleep(i32 noundef 2) #15
  br label %145

145:                                              ; preds = %144, %136
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 87, i32 noundef 4, i32 noundef 7, i32 noundef 1)
  %146 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 25
  %147 = load i8, ptr %146, align 8
  %148 = and i8 %147, 16
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %145
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 8, i32 noundef 60, i32 noundef 12)
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 14, i32 noundef 448, i32 noundef 448)
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 51, i32 noundef 2048, i32 noundef 0)
  tail call void @msleep(i32 noundef 30) #15
  br label %151

151:                                              ; preds = %150, %145
  br i1 %140, label %156, label %152

152:                                              ; preds = %151
  %153 = load i8, ptr %146, align 8
  %154 = and i8 %153, 16
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %152, %151
  %157 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %138, i32 noundef 0, i32 noundef 768, i32 noundef 45184) #15
  br label %158

158:                                              ; preds = %156, %152
  br i1 %142, label %159, label %161

159:                                              ; preds = %158
  %160 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 22, i32 noundef 0, i32 noundef 768, i32 noundef 45184) #15
  br label %161

161:                                              ; preds = %159, %158
  br i1 %143, label %166, label %162

162:                                              ; preds = %161
  %163 = load i8, ptr %146, align 8
  %164 = and i8 %163, 16
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %162, %161
  tail call void @msleep(i32 noundef 85) #15
  br label %167

167:                                              ; preds = %166, %162
  br i1 %140, label %172, label %168

168:                                              ; preds = %167
  %169 = load i8, ptr %146, align 8
  %170 = and i8 %169, 16
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %168, %167
  %173 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %138, i32 noundef 0, i32 noundef 1799, i32 noundef 64) #15
  br label %174

174:                                              ; preds = %172, %168
  br i1 %142, label %175, label %177

175:                                              ; preds = %174
  %176 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 22, i32 noundef 0, i32 noundef 1799, i32 noundef 64) #15
  br label %177

177:                                              ; preds = %175, %174
  br i1 %143, label %182, label %178

178:                                              ; preds = %177
  %179 = load i8, ptr %146, align 8
  %180 = and i8 %179, 16
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %178, %177
  tail call void @msleep(i32 noundef 100) #15
  br label %183

183:                                              ; preds = %182, %178
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 74, i32 noundef 3072, i32 noundef 0)
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 87, i32 noundef 4, i32 noundef 7, i32 noundef 4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 {
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %9 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %9) #15
  %10 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1280, i32 noundef %2) #15
  %11 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #15
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %19, label %13

13:                                               ; preds = %5
  %14 = xor i32 %3, -1
  %15 = and i32 %11, %14
  %16 = or i32 %15, %4
  %17 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1280, i32 noundef %2) #15
  %18 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1024, i32 noundef %16) #15
  br label %19

19:                                               ; preds = %13, %5
  %20 = load ptr, ptr %6, align 8
  %21 = getelementptr inbounds %struct.alc_spec, ptr %20, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %21) #15
  %22 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc294_init(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 25
  %5 = load i8, ptr %4, align 8
  %6 = and i8 %5, 4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 64
  br i1 %11, label %12, label %63

12:                                               ; preds = %8, %1
  %13 = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 33, i32 6
  %14 = load i16, ptr %13, align 8
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 33, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %60

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 33, i32 1
  %22 = load i16, ptr %21, align 4
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %60, label %24

24:                                               ; preds = %20, %12
  %25 = phi i16 [ %22, %20 ], [ %14, %12 ]
  %26 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %25, i32 noundef 0, i32 noundef 768, i32 noundef 45184) #15
  tail call void @msleep(i32 noundef 100) #15
  %27 = load i8, ptr %4, align 8
  %28 = and i8 %27, 8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %25, i32 noundef 0, i32 noundef 1799, i32 noundef 0) #15
  br label %32

32:                                               ; preds = %30, %24
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 111, i32 noundef 15, i32 noundef 0) #15
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 88, i32 noundef 0, i32 noundef 32768, i32 noundef 32768) #15
  %33 = load ptr, ptr %2, align 8
  %34 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %35 = getelementptr inbounds %struct.alc_spec, ptr %33, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %35) #15
  %36 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 88, i32 noundef 0, i32 noundef 1280, i32 noundef 1) #15
  %37 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext 88, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #15
  %38 = load ptr, ptr %2, align 8
  %39 = getelementptr inbounds %struct.alc_spec, ptr %38, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %39) #15
  %40 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %41 = and i32 %37, 128
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %43, %32
  %44 = phi i32 [ %53, %43 ], [ 0, %32 ]
  tail call void @msleep(i32 noundef 50) #15
  %45 = load ptr, ptr %2, align 8
  %46 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %47 = getelementptr inbounds %struct.alc_spec, ptr %45, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %47) #15
  %48 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 88, i32 noundef 0, i32 noundef 1280, i32 noundef 1) #15
  %49 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext 88, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #15
  %50 = load ptr, ptr %2, align 8
  %51 = getelementptr inbounds %struct.alc_spec, ptr %50, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %51) #15
  %52 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %53 = add nuw nsw i32 %44, 1
  %54 = icmp ult i32 %44, 19
  %55 = and i32 %49, 128
  %56 = icmp ne i32 %55, 0
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %43, label %58

58:                                               ; preds = %43, %32
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 111, i32 noundef 15, i32 noundef 11) #15
  tail call void @msleep(i32 noundef 50) #15
  %59 = load i8, ptr %4, align 8
  br label %60

60:                                               ; preds = %58, %20, %16
  %61 = phi i8 [ %5, %16 ], [ %5, %20 ], [ %59, %58 ]
  %62 = or i8 %61, 4
  store i8 %62, ptr %4, align 8
  br label %63

63:                                               ; preds = %60, %8
  tail call void @alc_default_init(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc5505_dsp_init(ptr noundef %0) #1 {
  tail call fastcc void @alc5505_dsp_halt(ptr noundef %0)
  %2 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1280, i32 noundef 12508) #15
  %3 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 13058) #15
  %4 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 1043) #15
  %5 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1280, i32 noundef 12504) #15
  %6 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 23318) #15
  %7 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 0) #15
  %8 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1280, i32 noundef 12506) #15
  %9 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 11010) #15
  %10 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 1034) #15
  %11 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1280, i32 noundef 12568) #15
  %12 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 16401) #15
  %13 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 63501) #15
  %14 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1280, i32 noundef 12560) #15
  %15 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 271) #15
  %16 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 8194) #15
  %17 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1280, i32 noundef 17414) #15
  %18 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 4) #15
  %19 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 0) #15
  %20 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1280, i32 noundef 12504) #15
  %21 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 23316) #15
  %22 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 0) #15
  %23 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1280, i32 noundef 12504) #15
  %24 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 23318) #15
  %25 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 0) #15
  %26 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1280, i32 noundef 12506) #15
  %27 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 11008) #15
  %28 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 1043) #15
  %29 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1280, i32 noundef 12506) #15
  %30 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 11010) #15
  %31 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 1043) #15
  %32 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1280, i32 noundef 12508) #15
  %33 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 13056) #15
  %34 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 1055) #15
  %35 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1280, i32 noundef 12508) #15
  %36 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 13058) #15
  %37 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 1055) #15
  %38 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 2047, i32 noundef 0) #15
  %39 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1280, i32 noundef 12508) #15
  %40 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 13058) #15
  %41 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 1051) #15
  %42 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1280, i32 noundef 12508) #15
  %43 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 13058) #15
  %44 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 1047) #15
  %45 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1280, i32 noundef 12508) #15
  %46 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 13058) #15
  %47 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 1046) #15
  %48 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1280, i32 noundef 17408) #15
  %49 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 12939) #15
  %50 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 13451) #15
  %51 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1280, i32 noundef 17412) #15
  %52 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 34) #15
  %53 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 2) #15
  %54 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1280, i32 noundef 17420) #15
  %55 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 1024) #15
  %56 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 0) #15
  %57 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1280, i32 noundef 12544) #15
  %58 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #15
  %59 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #15
  %60 = and i32 %59, 65532
  %61 = icmp eq i32 %60, 0
  %62 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1280, i32 noundef 12560) #15
  %63 = select i1 %61, i32 271, i32 399
  %64 = select i1 %61, i32 8194, i32 24578
  %65 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef %63) #15
  %66 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef %64) #15
  %67 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1280, i32 noundef 12502) #15
  %68 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 9712) #15
  %69 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 1365) #15
  %70 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1280, i32 noundef 12512) #15
  %71 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 128) #15
  %72 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 4643) #15
  %73 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1280, i32 noundef 12506) #15
  %74 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 11010) #15
  %75 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 1038) #15
  %76 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1280, i32 noundef 12510) #15
  %77 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 13560) #15
  %78 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 258) #15
  %79 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1280, i32 noundef 17414) #15
  %80 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 4) #15
  %81 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 0) #15
  %82 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1280, i32 noundef 17414) #15
  %83 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 3) #15
  %84 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 0) #15
  %85 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1280, i32 noundef 17414) #15
  %86 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 16) #15
  %87 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 0) #15
  tail call fastcc void @alc5505_dsp_halt(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @alc_pre_init(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @alc_get_coef0(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 8
  switch i32 %4, label %43 [
    i32 283902562, label %5
    i32 283902567, label %6
    i32 283902568, label %6
    i32 283902569, label %7
    i32 283902592, label %13
    i32 283902596, label %13
    i32 283902608, label %13
    i32 283902610, label %13
    i32 283902501, label %14
    i32 283902613, label %14
    i32 283902617, label %14
    i32 283902485, label %15
    i32 283902512, label %15
    i32 283902515, label %15
    i32 283902517, label %15
    i32 283902518, label %15
    i32 283902533, label %15
    i32 283902549, label %15
    i32 283902550, label %15
    i32 283902551, label %15
    i32 283902594, label %15
    i32 283902595, label %15
    i32 283902598, label %15
    i32 283902600, label %15
    i32 283902597, label %15
    i32 283902616, label %15
    i32 283902601, label %15
    i32 283902720, label %15
    i32 283902581, label %16
    i32 283902599, label %17
    i32 283902611, label %27
    i32 283902516, label %28
    i32 283902580, label %28
    i32 283902612, label %28
    i32 283903744, label %28
    i32 283903745, label %28
    i32 283903747, label %28
    i32 283903761, label %28
    i32 283903586, label %29
    i32 283902578, label %33
    i32 283902579, label %33
    i32 283903587, label %33
    i32 283903589, label %33
    i32 283903600, label %33
    i32 283903601, label %33
    i32 283903602, label %33
    i32 283902498, label %34
    i32 283903523, label %34
    i32 283903592, label %35
    i32 283904103, label %36
    i32 283904136, label %37
    i32 283904146, label %41
    i32 283904151, label %41
    i32 283904153, label %42
    i32 283904256, label %42
    i32 283904768, label %42
    i32 283906408, label %42
    i32 283906592, label %42
  ]

5:                                                ; preds = %1
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 7, i32 noundef 0, i32 noundef 32) #15
  br label %43

6:                                                ; preds = %1, %1
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 7, i32 noundef 0, i32 noundef 8192) #15
  br label %43

7:                                                ; preds = %1
  %8 = trunc i32 %2 to i8
  %9 = and i8 %8, -16
  switch i8 %9, label %43 [
    i8 16, label %10
    i8 32, label %11
    i8 48, label %12
  ]

10:                                               ; preds = %7
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 13, i32 noundef 0, i32 noundef 16384) #15
  br label %43

11:                                               ; preds = %7
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 4, i32 noundef 32768, i32 noundef 0) #15
  br label %43

12:                                               ; preds = %7
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 16, i32 noundef 512, i32 noundef 0) #15
  br label %43

13:                                               ; preds = %1, %1, %1, %1
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 4, i32 noundef 32768, i32 noundef 0) #15
  br label %43

14:                                               ; preds = %1, %1, %1
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 103, i32 noundef 61440, i32 noundef 12288) #15
  br label %15

15:                                               ; preds = %14, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 16, i32 noundef 512, i32 noundef 0) #15
  br label %43

16:                                               ; preds = %1
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 14, i32 noundef 0, i32 noundef 1) #15
  br label %43

17:                                               ; preds = %1
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 16, i32 noundef 512, i32 noundef 0) #15
  %18 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %19 = load ptr, ptr %18, align 8
  %20 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %21 = getelementptr inbounds %struct.alc_spec, ptr %19, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %21) #15
  %22 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 8) #15
  %23 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 19127) #15
  %24 = load ptr, ptr %18, align 8
  %25 = getelementptr inbounds %struct.alc_spec, ptr %24, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %25) #15
  %26 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  br label %43

27:                                               ; preds = %1
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 10, i32 noundef 8192, i32 noundef 0) #15
  br label %43

28:                                               ; preds = %1, %1, %1, %1, %1, %1, %1
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 16, i32 noundef 32768, i32 noundef 0) #15
  br label %43

29:                                               ; preds = %1
  %30 = and i32 %2, 240
  %31 = icmp eq i32 %30, 48
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 4, i32 noundef 1024, i32 noundef 0) #15
  br label %43

33:                                               ; preds = %1, %1, %1, %1, %1, %1, %1
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 13, i32 noundef 0, i32 noundef 16384) #15
  br label %43

34:                                               ; preds = %1, %1
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 25, i32 noundef 8192, i32 noundef 0) #15
  br label %43

35:                                               ; preds = %1
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 7, i32 noundef 24576, i32 noundef 0) #15
  br label %43

36:                                               ; preds = %1
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 4, i32 noundef 1024, i32 noundef 0) #15
  br label %43

37:                                               ; preds = %1
  %38 = trunc i32 %2 to i8
  %39 = and i8 %38, -16
  switch i8 %39, label %43 [
    i8 32, label %40
    i8 48, label %40
  ]

40:                                               ; preds = %37, %37
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 7, i32 noundef 32, i32 noundef 0) #15
  br label %43

41:                                               ; preds = %1, %1
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 7, i32 noundef 32, i32 noundef 0) #15
  br label %43

42:                                               ; preds = %1, %1, %1, %1, %1
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 7, i32 noundef 2, i32 noundef 0) #15
  br label %43

43:                                               ; preds = %42, %41, %40, %37, %36, %35, %34, %33, %32, %29, %28, %27, %17, %16, %15, %13, %12, %11, %10, %7, %6, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_pick_fixup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_pick_pin_fixup(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_apply_fixup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @alc_auto_parse_customize_define(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 1, i32 5
  %6 = load i8, ptr %5, align 8
  %7 = or i8 %6, 1
  store i8 %7, ptr %5, align 8
  %8 = and i8 %6, 16
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, ptr %4, align 8
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %116, label %103

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.hda_bus, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %116, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 8
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 10
  %23 = load i16, ptr %22, align 2
  %24 = trunc i32 %21 to i16
  %25 = icmp eq i16 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = and i32 %21, 65535
  %28 = and i32 %21, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %103

30:                                               ; preds = %26, %19
  %31 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 7
  %32 = load i32, ptr %31, align 8
  %33 = icmp eq i32 %32, 283902560
  %34 = select i1 %33, i16 23, i16 29
  %35 = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %0, i16 noundef zeroext %34) #15
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %86, label %38

38:                                               ; preds = %30
  %39 = lshr i32 %35, 1
  %40 = and i32 %39, 1
  %41 = lshr i32 %35, 2
  %42 = and i32 %41, 1
  %43 = add nuw nsw i32 %42, %40
  %44 = lshr i32 %35, 3
  %45 = and i32 %44, 1
  %46 = add nuw nsw i32 %45, %43
  %47 = lshr i32 %35, 4
  %48 = and i32 %47, 1
  %49 = add nuw nsw i32 %48, %46
  %50 = lshr i32 %35, 5
  %51 = and i32 %50, 1
  %52 = add nuw nsw i32 %51, %49
  %53 = lshr i32 %35, 6
  %54 = and i32 %53, 1
  %55 = add nuw nsw i32 %54, %52
  %56 = lshr i32 %35, 7
  %57 = and i32 %56, 1
  %58 = add nuw nsw i32 %57, %55
  %59 = lshr i32 %35, 8
  %60 = and i32 %59, 1
  %61 = add nuw nsw i32 %60, %58
  %62 = lshr i32 %35, 9
  %63 = and i32 %62, 1
  %64 = add nuw nsw i32 %63, %61
  %65 = lshr i32 %35, 10
  %66 = and i32 %65, 1
  %67 = add nuw nsw i32 %66, %64
  %68 = lshr i32 %35, 11
  %69 = and i32 %68, 1
  %70 = add nuw nsw i32 %69, %67
  %71 = lshr i32 %35, 12
  %72 = and i32 %71, 1
  %73 = add nuw nsw i32 %72, %70
  %74 = lshr i32 %35, 13
  %75 = and i32 %74, 1
  %76 = add nuw nsw i32 %75, %73
  %77 = lshr i32 %35, 14
  %78 = and i32 %77, 1
  %79 = add nuw nsw i32 %78, %76
  %80 = lshr i32 %35, 15
  %81 = and i32 %80, 1
  %82 = add nuw nsw i32 %81, %79
  %83 = lshr i32 %35, 16
  %84 = and i32 %83, 15
  %85 = icmp eq i32 %84, %82
  br i1 %85, label %89, label %116

86:                                               ; preds = %30
  %87 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 15
  %88 = load ptr, ptr %87, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.463, ptr noundef %88, i32 noundef %35) #17
  br label %116

89:                                               ; preds = %38
  %90 = lshr i32 %35, 30
  %91 = trunc i32 %90 to i8
  %92 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 1, i32 1
  store i8 %91, ptr %92, align 4
  %93 = lshr i32 %35, 20
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, 1
  %96 = load i8, ptr %5, align 8
  %97 = and i8 %96, -2
  %98 = or i8 %97, %95
  %99 = trunc i32 %82 to i8
  %100 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 1, i32 2
  store i8 %99, ptr %100, align 1
  %101 = trunc i32 %59 to i8
  %102 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 1, i32 3
  store i8 %101, ptr %102, align 2
  br label %103

103:                                              ; preds = %89, %26, %10
  %104 = phi i8 [ %7, %10 ], [ %7, %26 ], [ %98, %89 ]
  %105 = phi i32 [ %11, %10 ], [ %27, %26 ], [ %35, %89 ]
  store i32 %105, ptr %4, align 8
  %106 = trunc i32 %105 to i8
  %107 = lshr i8 %106, 3
  %108 = and i8 %107, 7
  %109 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 1, i32 4
  store i8 %108, ptr %109, align 1
  %110 = and i8 %104, -15
  %111 = trunc i32 %105 to i4
  %112 = call i4 @llvm.bitreverse.i4(i4 %111)
  %113 = and i4 %112, -2
  %114 = zext i4 %113 to i8
  %115 = or i8 %110, %114
  store i8 %115, ptr %5, align 8
  br label %116

116:                                              ; preds = %103, %86, %38, %13, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_beep_amp(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
  %5 = zext i16 %1 to i32
  %6 = shl i32 %3, 18
  %7 = or i32 %6, %5
  %8 = shl i32 %2, 19
  %9 = or i32 %8, %7
  %10 = or i32 %9, 196608
  %11 = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %0, ptr noundef null, ptr noundef nonnull @alc_beep_mixer) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %11, i32 0, i32 11
  store i32 %10, ptr %14, align 4
  %15 = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %0, ptr noundef null, ptr noundef getelementptr inbounds ([2 x %struct.snd_kcontrol_new], ptr @alc_beep_mixer, i32 0, i32 1)) #15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %15, i32 0, i32 11
  store i32 %10, ptr %18, align 4
  br label %19

19:                                               ; preds = %17, %13, %4
  %20 = phi i32 [ -12, %4 ], [ -12, %13 ], [ 0, %17 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_gen_free(ptr noundef) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_spec_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alc_build_controls(ptr noundef %0) #1 {
  %2 = tail call i32 @snd_hda_gen_build_controls(ptr noundef %0) #15
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @snd_hda_apply_fixup(ptr noundef %0, i32 noundef 3) #15
  br label %5

5:                                                ; preds = %4, %1
  %6 = phi i32 [ 0, %4 ], [ %2, %1 ]
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_build_pcms(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alc_init(ptr noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 64
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call fastcc void @alc_pre_init(ptr noundef %0)
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.alc_spec, ptr %4, i32 0, i32 20
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void %11(ptr noundef %0) #15
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 58
  %16 = load i64, ptr %15, align 4
  %17 = or i64 %16, 4398046511104
  store i64 %17, ptr %15, align 4
  %18 = tail call i32 @snd_hda_gen_init(ptr noundef %0) #15
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds %struct.alc_spec, ptr %19, i32 0, i32 26
  %21 = load i16, ptr %20, align 2
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.alc_spec, ptr %19, i32 0, i32 27
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.alc_spec, ptr %19, i32 0, i32 28
  %27 = load i32, ptr %26, align 8
  %28 = shl nuw i32 1, %27
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext %21, i32 noundef %25, i32 noundef %28, i32 noundef 0) #15
  br label %29

29:                                               ; preds = %23, %14
  %30 = getelementptr inbounds %struct.alc_spec, ptr %4, i32 0, i32 23
  %31 = load i32, ptr %30, align 8
  %32 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 18
  %33 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 17
  %34 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 14
  br label %35

35:                                               ; preds = %62, %29
  %36 = phi i16 [ 15, %29 ], [ %64, %62 ]
  %37 = phi ptr [ @alc_auto_setup_eapd.pins, %29 ], [ %63, %62 ]
  %38 = zext i16 %36 to i32
  %39 = load i16, ptr %32, align 4
  %40 = zext i16 %39 to i32
  %41 = icmp ugt i16 %39, %36
  br i1 %41, label %62, label %42

42:                                               ; preds = %35
  %43 = load i32, ptr %33, align 8
  %44 = add i32 %43, %40
  %45 = icmp ugt i32 %44, %38
  br i1 %45, label %46, label %62

46:                                               ; preds = %42
  %47 = load ptr, ptr %34, align 4
  %48 = sub nsw i32 %38, %40
  %49 = getelementptr i32, ptr %47, i32 %48
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 15728640
  %52 = icmp eq i32 %51, 4194304
  br i1 %52, label %53, label %62

53:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !annotation !8
  %54 = call i32 @_snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %36, i32 noundef 12, ptr noundef nonnull %2) #15
  %55 = load i32, ptr %2, align 4
  %56 = icmp sgt i32 %54, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  %57 = and i32 %55, 65536
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %56, i1 %58, i1 false
  br i1 %59, label %62, label %60

60:                                               ; preds = %53
  %61 = call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %36, i32 noundef 0, i32 noundef 1804, i32 noundef 2) #15
  br label %62

62:                                               ; preds = %60, %53, %46, %42, %35
  %63 = getelementptr i16, ptr %37, i32 1
  %64 = load i16, ptr %63, align 2
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %35

66:                                               ; preds = %62
  %67 = load ptr, ptr %3, align 8
  %68 = getelementptr inbounds %struct.alc_spec, ptr %67, i32 0, i32 3
  %69 = load i32, ptr %68, align 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %88, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 5
  %73 = load i16, ptr %72, align 4
  %74 = call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %73, i32 noundef 0, i32 noundef 1814, i32 noundef %69) #15
  %75 = load i16, ptr %72, align 4
  %76 = getelementptr inbounds %struct.alc_spec, ptr %67, i32 0, i32 4
  %77 = load i32, ptr %76, align 4
  %78 = call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %75, i32 noundef 0, i32 noundef 1815, i32 noundef %77) #15
  %79 = getelementptr inbounds %struct.alc_spec, ptr %67, i32 0, i32 6
  %80 = load i8, ptr %79, align 4, !range !9
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %71
  call void @msleep(i32 noundef 1) #15
  br label %83

83:                                               ; preds = %82, %71
  %84 = load ptr, ptr %3, align 8
  %85 = getelementptr inbounds %struct.alc_spec, ptr %84, i32 0, i32 5
  %86 = load i32, ptr %85, align 8
  %87 = call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1813, i32 noundef %86) #15
  br label %88

88:                                               ; preds = %83, %66
  %89 = icmp eq i32 %31, 2
  br i1 %89, label %90, label %100

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 7
  %92 = load i32, ptr %91, align 8
  switch i32 %92, label %100 [
    i32 283902560, label %93
    i32 283904128, label %94
    i32 283904130, label %94
    i32 283904131, label %94
    i32 283904133, label %94
    i32 283904136, label %95
  ]

93:                                               ; preds = %90
  call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 26, i32 noundef 7, i32 noundef 0, i32 noundef 8208) #15
  br label %100

94:                                               ; preds = %90, %90, %90, %90
  call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 7, i32 noundef 0, i32 noundef 8240) #15
  br label %100

95:                                               ; preds = %90
  %96 = call fastcc i32 @alc_get_coef0(ptr noundef %0) #15
  %97 = trunc i32 %96 to i8
  %98 = and i8 %97, -16
  switch i8 %98, label %100 [
    i8 0, label %99
    i8 16, label %99
  ]

99:                                               ; preds = %95, %95
  call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 7, i32 noundef 0, i32 noundef 8240) #15
  br label %100

100:                                              ; preds = %99, %95, %94, %93, %90, %88
  call void @snd_hda_apply_verbs(ptr noundef %0) #15
  call void @snd_hda_apply_fixup(ptr noundef %0, i32 noundef 2) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_jack_unsol_event(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alc_suspend(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @snd_hda_get_bool_hint(ptr noundef %0, ptr noundef nonnull @.str.77) #15
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = icmp eq ptr %3, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 22
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void %10(ptr noundef %0) #15
  br label %16

13:                                               ; preds = %8, %6
  tail call fastcc void @alc_shutup_pins(ptr noundef %0) #15
  br label %14

14:                                               ; preds = %13, %1
  %15 = icmp eq ptr %3, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %14, %12
  %17 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 21
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void %18(ptr noundef %0) #15
  br label %21

21:                                               ; preds = %20, %16, %14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alc_resume(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 25
  %5 = load i8, ptr %4, align 8
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @msleep(i32 noundef 150) #15
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 7, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 %11(ptr noundef %0) #15
  tail call void @snd_hdac_regmap_sync(ptr noundef %0) #15
  %13 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 7, i32 8
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = tail call i32 %14(ptr noundef %0, i16 noundef zeroext 1) #15
  br label %18

18:                                               ; preds = %16, %9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_check_power_status(ptr noundef, i16 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_build_controls(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_apply_verbs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_snd_hdac_read_parm(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_write(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_get_bool_hint(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @alc_shutup_pins(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 8
  switch i32 %3, label %70 [
    i32 283902518, label %4
    i32 283902550, label %4
    i32 283902595, label %4
    i32 283902598, label %4
    i32 283902600, label %4
    i32 283902616, label %4
  ]

4:                                                ; preds = %1, %1, %1, %1, %1, %1
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 33, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %26, %4
  %11 = phi i32 [ %27, %26 ], [ %8, %4 ]
  %12 = phi i32 [ %28, %26 ], [ 0, %4 ]
  %13 = getelementptr %struct.hda_gen_spec, ptr %6, i32 0, i32 33, i32 8, i32 %12, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %10
  %17 = getelementptr %struct.hda_gen_spec, ptr %6, i32 0, i32 33, i32 8, i32 %12
  %18 = load i16, ptr %17, align 4
  %19 = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %0, i16 noundef zeroext %18) #15
  %20 = tail call i32 @snd_hda_get_input_pin_attr(i32 noundef %19) #15
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, ptr %7, align 4
  br label %26

24:                                               ; preds = %16
  %25 = zext i16 %18 to i32
  br label %30

26:                                               ; preds = %22, %10
  %27 = phi i32 [ %23, %22 ], [ %11, %10 ]
  %28 = add nuw nsw i32 %12, 1
  %29 = icmp slt i32 %28, %27
  br i1 %29, label %10, label %30

30:                                               ; preds = %26, %24, %4
  %31 = phi i32 [ %25, %24 ], [ 0, %4 ], [ 0, %26 ]
  %32 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.hda_bus, ptr %33, i32 0, i32 6
  %35 = load i8, ptr %34, align 4
  %36 = and i8 %35, 2
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %78

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 23
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %66, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 23, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 23, i32 2
  br label %46

46:                                               ; preds = %58, %42
  %47 = phi i32 [ %40, %42 ], [ %59, %58 ]
  %48 = phi ptr [ %44, %42 ], [ %60, %58 ]
  %49 = phi i32 [ 0, %42 ], [ %61, %58 ]
  %50 = phi ptr [ %44, %42 ], [ %64, %58 ]
  %51 = load i16, ptr %50, align 4
  %52 = zext i16 %51 to i32
  %53 = icmp eq i32 %31, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %46
  %55 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %51, i32 noundef 0, i32 noundef 1799, i32 noundef 0) #15
  %56 = load ptr, ptr %43, align 4
  %57 = load i32, ptr %39, align 4
  br label %58

58:                                               ; preds = %54, %46
  %59 = phi i32 [ %47, %46 ], [ %57, %54 ]
  %60 = phi ptr [ %48, %46 ], [ %56, %54 ]
  %61 = add nuw i32 %49, 1
  %62 = load i32, ptr %45, align 4
  %63 = mul i32 %62, %61
  %64 = getelementptr i8, ptr %60, i32 %63
  %65 = icmp ult i32 %61, %59
  br i1 %65, label %46, label %66

66:                                               ; preds = %58, %38
  %67 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 30
  %68 = load i32, ptr %67, align 8
  %69 = or i32 %68, 256
  store i32 %69, ptr %67, align 8
  br label %78

70:                                               ; preds = %1
  %71 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %struct.alc_spec, ptr %72, i32 0, i32 25
  %74 = load i8, ptr %73, align 8
  %75 = and i8 %74, 8
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  tail call void @snd_hda_shutup_pins(ptr noundef %0) #15
  br label %78

78:                                               ; preds = %77, %70, %66, %30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_shutup_pins(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_codec_get_pincfg(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_get_input_pin_attr(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_regmap_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_jack_detect_state_mst(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @alc_read_coefex_idx(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %7 = getelementptr inbounds %struct.alc_spec, ptr %5, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %7) #15
  %8 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1280, i32 noundef %2) #15
  %9 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #15
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds %struct.alc_spec, ptr %10, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %11) #15
  %12 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_power_up_pm(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_power_down_pm(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @alc_process_coef_fw(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.alc_spec, ptr %4, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %6) #15
  %7 = load i8, ptr %1, align 2
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %41, label %9

9:                                                ; preds = %37, %2
  %10 = phi i8 [ %39, %37 ], [ %7, %2 ]
  %11 = phi ptr [ %38, %37 ], [ %1, %2 ]
  %12 = getelementptr inbounds %struct.coef_fw, ptr %11, i32 0, i32 2
  %13 = load i16, ptr %12, align 2
  %14 = icmp eq i16 %13, -1
  %15 = zext i8 %10 to i16
  %16 = getelementptr inbounds %struct.coef_fw, ptr %11, i32 0, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.coef_fw, ptr %11, i32 0, i32 3
  %20 = load i16, ptr %19, align 2
  br i1 %14, label %21, label %23

21:                                               ; preds = %9
  %22 = zext i16 %20 to i32
  br label %33

23:                                               ; preds = %9
  %24 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %15, i32 noundef 0, i32 noundef 1280, i32 noundef %18) #15
  %25 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %15, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #15
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %37, label %27

27:                                               ; preds = %23
  %28 = zext i16 %20 to i32
  %29 = zext i16 %13 to i32
  %30 = xor i32 %29, -1
  %31 = and i32 %25, %30
  %32 = or i32 %31, %28
  br label %33

33:                                               ; preds = %27, %21
  %34 = phi i32 [ %32, %27 ], [ %22, %21 ]
  %35 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %15, i32 noundef 0, i32 noundef 1280, i32 noundef %18) #15
  %36 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %15, i32 noundef 0, i32 noundef 1024, i32 noundef %34) #15
  br label %37

37:                                               ; preds = %33, %23
  %38 = getelementptr %struct.coef_fw, ptr %11, i32 1
  %39 = load i8, ptr %38, align 2
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %9

41:                                               ; preds = %37, %2
  %42 = load ptr, ptr %3, align 8
  %43 = getelementptr inbounds %struct.alc_spec, ptr %42, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %43) #15
  %44 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @alc_enable_headset_jack_key(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 25
  %5 = load i8, ptr %4, align 8
  %6 = and i8 %5, 32
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 8
  switch i32 %10, label %27 [
    i32 283902485, label %11
    i32 283902501, label %11
    i32 283902597, label %11
    i32 283902599, label %11
    i32 283902613, label %11
    i32 283902601, label %11
    i32 283902617, label %11
    i32 283902512, label %19
    i32 283902518, label %19
    i32 283902550, label %19
  ]

11:                                               ; preds = %8, %8, %8, %8, %8, %8, %8
  %12 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %13 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %13) #15
  %14 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 72) #15
  %15 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 53265) #15
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.alc_spec, ptr %16, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %17) #15
  %18 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 73, i32 noundef 127, i32 noundef 69)
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 68, i32 noundef 32512, i32 noundef 17664)
  br label %27

19:                                               ; preds = %8, %8, %8
  %20 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %21 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %21) #15
  %22 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 72) #15
  %23 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 53265) #15
  %24 = load ptr, ptr %2, align 8
  %25 = getelementptr inbounds %struct.alc_spec, ptr %24, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %25) #15
  %26 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 73, i32 noundef 127, i32 noundef 69)
  br label %27

27:                                               ; preds = %19, %11, %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_read(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @alc5505_dsp_halt(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1280, i32 noundef 6144) #15
  %3 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 12) #15
  %4 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 0) #15
  %5 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1280, i32 noundef 17414) #15
  %6 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 8) #15
  %7 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 0) #15
  %8 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1280, i32 noundef 12512) #15
  %9 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 128) #15
  %10 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 4369) #15
  %11 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1280, i32 noundef 12568) #15
  %12 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 16401) #15
  %13 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 64525) #15
  %14 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1280, i32 noundef 12506) #15
  %15 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 11011) #15
  %16 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 1034) #15
  %17 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1280, i32 noundef 12504) #15
  %18 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 23319) #15
  %19 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 0) #15
  %20 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1280, i32 noundef 12508) #15
  %21 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 13059) #15
  %22 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef 1043) #15
  %23 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1280, i32 noundef 12560) #15
  %24 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #15
  %25 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #15
  %26 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1280, i32 noundef 12560) #15
  %27 = and i32 %24, 53247
  %28 = or i32 %27, 12288
  %29 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef %28) #15
  %30 = and i32 %25, 65535
  %31 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 81, i32 noundef 0, i32 noundef 1024, i32 noundef %30) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @alc_fixup_gpio2(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = or i32 %9, 2
  store i32 %10, ptr %8, align 8
  %11 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 2
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = or i32 %15, 2
  store i32 %16, ptr %14, align 8
  br label %17

17:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @alc275_fixup_gpio4_off(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = or i32 %9, 4
  store i32 %10, ptr %8, align 8
  %11 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 4
  store i32 %13, ptr %11, align 4
  br label %14

14:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @alc_fixup_sku_ignore(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 1, i32 5
  %10 = load i8, ptr %9, align 8
  %11 = or i8 %10, 16
  store i8 %11, ptr %9, align 8
  store i32 2, ptr %8, align 8
  br label %12

12:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc269_fixup_hweq(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 2
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 30, i32 noundef 0, i32 noundef 128)
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @alc_fixup_disable_aamix(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hda_gen_spec, ptr %7, i32 0, i32 18
  store i16 0, ptr %8, align 2
  br label %9

9:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc271_fixup_dmic(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(8) @.str.74)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(9) @.str.81)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %8, %3
  %12 = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %0, i16 noundef zeroext 18) #15
  %13 = and i32 %12, -1073741824
  %14 = icmp eq i32 %13, -2147483648
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @snd_hda_sequence_write(ptr noundef %0, ptr noundef nonnull @alc271_fixup_dmic.verbs) #15
  br label %16

16:                                               ; preds = %15, %11, %8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @alc269_fixup_pcm_44k(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %2, 1
  br i1 %4, label %5, label %10

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hda_gen_spec, ptr %7, i32 0, i32 1
  store ptr @alc269_44k_pcm_analog_playback, ptr %8, align 8
  %9 = getelementptr inbounds %struct.hda_gen_spec, ptr %7, i32 0, i32 2
  store ptr @alc269_44k_pcm_analog_capture, ptr %9, align 4
  br label %10

10:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc269_fixup_stereo_dmic(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 2
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 7, i32 noundef 0, i32 noundef 128)
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @alc269_fixup_headset_mic(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, 4
  store i32 %10, ptr %8, align 4
  br label %11

11:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @alc269_fixup_quanta_mute(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %2, 1
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hda_gen_spec, ptr %7, i32 0, i32 77
  store ptr @alc269_quanta_automute, ptr %8, align 4
  br label %9

9:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @alc269_fixup_pincfg_no_hp_to_lineout(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 2
  store i32 1, ptr %8, align 4
  br label %9

9:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc269_fixup_pincfg_U7x7_headset_mic(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %0, i16 noundef zeroext 33) #15
  %5 = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %0, i16 noundef zeroext 25) #15
  %6 = icmp ne i32 %4, 0
  %7 = icmp eq i32 %5, 1091637744
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = and i32 %4, -15728641
  %11 = or i32 %10, 10485760
  %12 = tail call i32 @snd_hda_codec_set_pincfg(ptr noundef %0, i16 noundef zeroext 25, i32 noundef %11) #15
  br label %13

13:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc269_fixup_hp_mute_led(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %3
  %10 = call ptr @dmi_find_device(i32 noundef -2, ptr noundef null, ptr noundef null) #15
  %11 = icmp eq ptr %10, null
  br i1 %11, label %34, label %12

12:                                               ; preds = %31, %9
  %13 = phi ptr [ %32, %31 ], [ %10, %9 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !8
  %14 = getelementptr inbounds %struct.dmi_device, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %15, ptr noundef nonnull @.str.339, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %31

18:                                               ; preds = %12
  %19 = load i32, ptr %5, align 4
  %20 = add i32 %19, -16
  %21 = icmp ult i32 %20, -6
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = load i32, ptr %4, align 4
  %24 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 7
  store i32 %23, ptr %24, align 8
  %25 = trunc i32 %19 to i16
  %26 = add nuw nsw i16 %25, 14
  %27 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 9
  store i16 %26, ptr %27, align 8
  %28 = call i32 @snd_hda_gen_add_mute_led_cdev(ptr noundef %0, ptr noundef nonnull @vref_mute_led_set) #15
  %29 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 34
  store ptr @led_power_filter, ptr %29, align 8
  br label %30

30:                                               ; preds = %22, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  br label %34

31:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  %32 = call ptr @dmi_find_device(i32 noundef -2, ptr noundef null, ptr noundef nonnull %13) #15
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %12

34:                                               ; preds = %31, %30, %9, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc269_fixup_hp_mute_led_mic1(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 7
  store i32 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 9
  store i16 24, ptr %9, align 8
  %10 = tail call i32 @snd_hda_gen_add_mute_led_cdev(ptr noundef %0, ptr noundef nonnull @vref_mute_led_set) #15
  %11 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 34
  store ptr @led_power_filter, ptr %11, align 8
  br label %12

12:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc269_fixup_hp_mute_led_mic2(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 7
  store i32 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 9
  store i16 25, ptr %9, align 8
  %10 = tail call i32 @snd_hda_gen_add_mute_led_cdev(ptr noundef %0, ptr noundef nonnull @vref_mute_led_set) #15
  %11 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 34
  store ptr @led_power_filter, ptr %11, align 8
  br label %12

12:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc269_fixup_hp_mute_led_mic3(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 7
  store i32 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 9
  store i16 27, ptr %9, align 8
  %10 = tail call i32 @snd_hda_gen_add_mute_led_cdev(ptr noundef %0, ptr noundef nonnull @vref_mute_led_set) #15
  %11 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 34
  store ptr @led_power_filter, ptr %11, align 8
  br label %12

12:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc269_fixup_hp_gpio_led(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = or i32 %9, 24
  store i32 %10, ptr %8, align 8
  %11 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 24
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = or i32 %15, 24
  store i32 %16, ptr %14, align 8
  %17 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 11
  store i32 8, ptr %17, align 4
  %18 = tail call i32 @snd_hda_gen_add_mute_led_cdev(ptr noundef %0, ptr noundef nonnull @gpio_mute_led_set) #15
  %19 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 12
  store i32 16, ptr %19, align 8
  %20 = tail call i32 @snd_hda_gen_add_micmute_led_cdev(ptr noundef %0, ptr noundef nonnull @micmute_led_set) #15
  br label %21

21:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc269_fixup_hp_gpio_mic1_led(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %26

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = or i32 %9, 8
  store i32 %10, ptr %8, align 8
  %11 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 8
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = or i32 %15, 8
  store i32 %16, ptr %14, align 8
  %17 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 11
  store i32 8, ptr %17, align 4
  %18 = tail call i32 @snd_hda_gen_add_mute_led_cdev(ptr noundef %0, ptr noundef nonnull @gpio_mute_led_set) #15
  %19 = load i32, ptr %8, align 8
  %20 = or i32 %19, 16
  store i32 %20, ptr %8, align 8
  %21 = load i32, ptr %11, align 4
  %22 = or i32 %21, 16
  store i32 %22, ptr %11, align 4
  %23 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 10
  store i16 24, ptr %23, align 2
  %24 = tail call i32 @snd_hda_gen_add_micmute_led_cdev(ptr noundef %0, ptr noundef nonnull @vref_micmute_led_set) #15
  %25 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 34
  store ptr @led_power_filter, ptr %25, align 8
  br label %26

26:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc269_fixup_hp_line1_mic1_led(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 7
  store i32 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 9
  store i16 26, ptr %9, align 8
  %10 = tail call i32 @snd_hda_gen_add_mute_led_cdev(ptr noundef %0, ptr noundef nonnull @vref_mute_led_set) #15
  %11 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 34
  store ptr @led_power_filter, ptr %11, align 8
  %12 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 10
  store i16 24, ptr %12, align 2
  %13 = tail call i32 @snd_hda_gen_add_micmute_led_cdev(ptr noundef %0, ptr noundef nonnull @vref_micmute_led_set) #15
  br label %14

14:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @alc_fixup_inv_dmic(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.hda_gen_spec, ptr %5, i32 0, i32 58
  %7 = load i64, ptr %6, align 4
  %8 = or i64 %7, 8388608
  store i64 %8, ptr %6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc269_fixup_limit_int_mic_boost(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq i32 %2, 1
  br i1 %6, label %7, label %28

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hda_gen_spec, ptr %5, i32 0, i32 33, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %24, %7
  %12 = phi i32 [ %25, %24 ], [ 0, %7 ]
  %13 = getelementptr %struct.hda_gen_spec, ptr %5, i32 0, i32 33, i32 8, i32 %12
  %14 = load i16, ptr %13, align 4
  %15 = getelementptr %struct.hda_gen_spec, ptr %5, i32 0, i32 33, i32 8, i32 %12, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %0, i16 noundef zeroext %14) #15
  %20 = tail call i32 @snd_hda_get_input_pin_attr(i32 noundef %19) #15
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = tail call i32 @snd_hda_override_amp_caps(ptr noundef %0, i16 noundef zeroext %14, i32 noundef 0, i32 noundef 3080448) #15
  br label %24

24:                                               ; preds = %22, %18, %11
  %25 = add nuw nsw i32 %12, 1
  %26 = load i32, ptr %8, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %11, label %28

28:                                               ; preds = %24, %7, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @alc_fixup_no_shutup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 25
  %9 = load i8, ptr %8, align 8
  %10 = or i8 %9, 8
  store i8 %10, ptr %8, align 8
  br label %11

11:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc_fixup_headset_mode(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  switch i32 %2, label %57 [
    i32 0, label %6
    i32 1, label %10
    i32 2, label %50
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.alc_spec, ptr %5, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %8, 12
  store i32 %9, ptr %7, align 4
  br label %57

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.hda_gen_spec, ptr %5, i32 0, i32 33, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.alc_spec, ptr %5, i32 0, i32 16
  %16 = getelementptr inbounds %struct.alc_spec, ptr %5, i32 0, i32 17
  br label %17

17:                                               ; preds = %39, %14
  %18 = phi i32 [ 0, %14 ], [ %40, %39 ]
  %19 = getelementptr %struct.hda_gen_spec, ptr %5, i32 0, i32 33, i32 8, i32 %18
  %20 = getelementptr %struct.hda_gen_spec, ptr %5, i32 0, i32 33, i32 8, i32 %18, i32 2
  %21 = load i8, ptr %20, align 4
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %17
  %25 = load i16, ptr %15, align 8
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i16, ptr %19, align 4
  store i16 %28, ptr %15, align 8
  %29 = load i8, ptr %20, align 4
  br label %30

30:                                               ; preds = %27, %24, %17
  %31 = phi i8 [ %29, %27 ], [ %21, %24 ], [ %21, %17 ]
  %32 = and i8 %31, 2
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = load i16, ptr %16, align 2
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i16, ptr %19, align 4
  store i16 %38, ptr %16, align 2
  br label %39

39:                                               ; preds = %37, %34, %30
  %40 = add nuw nsw i32 %18, 1
  %41 = icmp eq i32 %40, %12
  br i1 %41, label %42, label %17

42:                                               ; preds = %39, %10
  %43 = getelementptr inbounds %struct.hda_gen_spec, ptr %5, i32 0, i32 78
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46, !prof !10

46:                                               ; preds = %42
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.340, i32 noundef 5709, i32 noundef 9, ptr noundef null) #15
  br label %47

47:                                               ; preds = %46, %42
  store ptr @alc_update_headset_mode_hook, ptr %43, align 8
  %48 = getelementptr inbounds %struct.hda_gen_spec, ptr %5, i32 0, i32 77
  store ptr @alc_update_headset_mode, ptr %48, align 4
  %49 = getelementptr inbounds %struct.hda_gen_spec, ptr %5, i32 0, i32 81
  store ptr @alc_update_headset_jack_cb, ptr %49, align 4
  br label %57

50:                                               ; preds = %3
  %51 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11
  %52 = load i32, ptr %51, align 8
  switch i32 %52, label %56 [
    i32 16, label %53
    i32 64, label %53
  ]

53:                                               ; preds = %50, %50
  %54 = getelementptr inbounds %struct.alc_spec, ptr %5, i32 0, i32 18
  store i32 0, ptr %54, align 4
  %55 = getelementptr inbounds %struct.alc_spec, ptr %5, i32 0, i32 19
  store i32 0, ptr %55, align 8
  br label %56

56:                                               ; preds = %53, %50
  tail call void @alc_update_headset_mode(ptr noundef %0)
  br label %57

57:                                               ; preds = %56, %47, %6, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc_fixup_headset_mode_no_hp_mic(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, 4
  store i32 %10, ptr %8, align 4
  br label %12

11:                                               ; preds = %3
  tail call void @alc_fixup_headset_mode(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  br label %12

12:                                               ; preds = %11, %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @alc269_fixup_x101_headset_mic(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, 4
  store i32 %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.hda_gen_spec, ptr %7, i32 0, i32 81
  store ptr @alc269_x101_hp_automute_hook, ptr %11, align 4
  br label %12

12:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc271_hp_gate_mic_jack(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 1
  br i1 %4, label %5, label %51

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hda_gen_spec, ptr %7, i32 0, i32 33, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %27, %5
  %12 = phi i32 [ %28, %27 ], [ %9, %5 ]
  %13 = phi i32 [ %29, %27 ], [ 0, %5 ]
  %14 = getelementptr %struct.hda_gen_spec, ptr %7, i32 0, i32 33, i32 8, i32 %13, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %11
  %18 = getelementptr %struct.hda_gen_spec, ptr %7, i32 0, i32 33, i32 8, i32 %13
  %19 = load i16, ptr %18, align 4
  %20 = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %0, i16 noundef zeroext %19) #15
  %21 = tail call i32 @snd_hda_get_input_pin_attr(i32 noundef %20) #15
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, ptr %8, align 4
  br label %27

25:                                               ; preds = %17
  %26 = zext i16 %19 to i32
  br label %31

27:                                               ; preds = %23, %11
  %28 = phi i32 [ %24, %23 ], [ %12, %11 ]
  %29 = add nuw nsw i32 %13, 1
  %30 = icmp slt i32 %29, %28
  br i1 %30, label %11, label %31

31:                                               ; preds = %27, %25, %5
  %32 = phi i32 [ %26, %25 ], [ 0, %5 ], [ 0, %27 ]
  %33 = getelementptr inbounds %struct.hda_gen_spec, ptr %7, i32 0, i32 33, i32 6
  %34 = load i16, ptr %33, align 8
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.hda_gen_spec, ptr %7, i32 0, i32 33, i32 5
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.hda_gen_spec, ptr %7, i32 0, i32 33, i32 1
  %42 = load i16, ptr %41, align 4
  br label %43

43:                                               ; preds = %40, %31
  %44 = phi i16 [ %42, %40 ], [ %34, %31 ]
  %45 = icmp eq i32 %32, 0
  %46 = icmp eq i16 %44, 0
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = trunc i32 %32 to i16
  %50 = tail call i32 @snd_hda_jack_set_gating_jack(ptr noundef %0, i16 noundef zeroext %49, i16 noundef zeroext %44) #15
  br label %51

51:                                               ; preds = %48, %43, %36, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc283_fixup_chromebook(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  switch i32 %2, label %24 [
    i32 0, label %4
    i32 2, label %23
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 18
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = icmp ugt i16 %8, 3
  br i1 %10, label %21, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 17
  %13 = load i32, ptr %12, align 8
  %14 = add i32 %13, %9
  %15 = icmp ugt i32 %14, 3
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 14
  %18 = load ptr, ptr %17, align 4
  %19 = sub nsw i32 3, %9
  %20 = getelementptr i32, ptr %18, i32 %19
  store i32 0, ptr %20, align 4
  br label %21

21:                                               ; preds = %16, %11, %4
  %22 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 18
  store i16 0, ptr %22, align 2
  br label %24

23:                                               ; preds = %3
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 6, i32 noundef 12, i32 noundef 0)
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 26, i32 noundef 0, i32 noundef 16)
  br label %24

24:                                               ; preds = %23, %21, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc283_fixup_sense_combo_jack(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  switch i32 %2, label %9 [
    i32 0, label %4
    i32 2, label %8
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 81
  store ptr @alc283_hp_automute_hook, ptr %7, align 4
  br label %9

8:                                                ; preds = %3
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 6, i32 noundef 12, i32 noundef 0)
  br label %9

9:                                                ; preds = %8, %4, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc282_fixup_asus_tx300(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  switch i32 %2, label %35 [
    i32 0, label %6
    i32 1, label %23
    i32 3, label %25
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.alc_spec, ptr %5, i32 0, i32 23
  store i32 2, ptr %7, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds %struct.alc_spec, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %9, align 8
  %11 = or i32 %10, 4
  store i32 %11, ptr %9, align 8
  %12 = getelementptr inbounds %struct.alc_spec, ptr %8, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %13, 4
  store i32 %14, ptr %12, align 4
  %15 = getelementptr inbounds %struct.alc_spec, ptr %8, i32 0, i32 5
  %16 = load i32, ptr %15, align 8
  %17 = or i32 %16, 4
  store i32 %17, ptr %15, align 8
  tail call void @snd_hda_apply_pincfgs(ptr noundef %0, ptr noundef nonnull @alc282_fixup_asus_tx300.dock_pins) #15
  %18 = getelementptr inbounds %struct.hda_gen_spec, ptr %5, i32 0, i32 58
  %19 = load i64, ptr %18, align 4
  %20 = or i64 %19, 16384
  store i64 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.hda_gen_spec, ptr %5, i32 0, i32 77
  store ptr @asus_tx300_automute, ptr %21, align 4
  %22 = tail call ptr @snd_hda_jack_detect_enable_callback_mst(ptr noundef %0, i16 noundef zeroext 27, i32 noundef 0, ptr noundef nonnull @snd_hda_gen_hp_automute) #15
  br label %35

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.alc_spec, ptr %5, i32 0, i32 23
  store i32 2, ptr %24, align 8
  br label %35

25:                                               ; preds = %3
  %26 = tail call ptr @snd_hda_find_mixer_ctl(ptr noundef %0, ptr noundef nonnull @.str.341) #15
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.snd_kcontrol, ptr %26, i32 0, i32 1, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(29) %29, ptr noundef nonnull align 1 dereferenceable(29) @.str.342, i32 29, i1 false) #15
  br label %30

30:                                               ; preds = %28, %25
  %31 = tail call ptr @snd_hda_find_mixer_ctl(ptr noundef %0, ptr noundef nonnull @.str.343) #15
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.snd_kcontrol, ptr %31, i32 0, i32 1, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(24) %34, ptr noundef nonnull align 1 dereferenceable(24) @.str.341, i32 24, i1 false) #15
  br label %35

35:                                               ; preds = %33, %30, %23, %6, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc290_fixup_mono_speakers(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = tail call i32 @snd_hda_override_conn_list(ptr noundef %0, i16 noundef zeroext 20, i32 noundef 1, ptr noundef nonnull @alc290_fixup_mono_speakers.conn1) #15
  %7 = tail call i32 @snd_hda_override_conn_list(ptr noundef %0, i16 noundef zeroext 21, i32 noundef 1, ptr noundef nonnull @alc290_fixup_mono_speakers.conn1) #15
  br label %8

8:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @alc_fixup_thinkpad_acpi(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 25
  %9 = load i8, ptr %8, align 8
  %10 = or i8 %9, 8
  store i8 %10, ptr %8, align 8
  br label %11

11:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc_fixup_headset_mode_alc255(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call fastcc void @alc255_set_default_jack_type(ptr noundef %0)
  br label %6

6:                                                ; preds = %5, %3
  tail call void @alc_fixup_headset_mode(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc_fixup_headset_mode_alc255_no_hp_mic(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, 4
  store i32 %10, ptr %8, align 4
  tail call fastcc void @alc255_set_default_jack_type(ptr noundef %0)
  br label %12

11:                                               ; preds = %3
  tail call void @alc_fixup_headset_mode(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  br label %12

12:                                               ; preds = %11, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc_fixup_tpt440_dock(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 2
  store i32 1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 30
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, -131073
  store i32 %11, ptr %9, align 8
  tail call void @snd_hda_apply_pincfgs(ptr noundef %0, ptr noundef nonnull @alc_fixup_tpt440_dock.pincfgs) #15
  br label %12

12:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc_fixup_micmute_led(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i32 @snd_hda_gen_add_micmute_led_cdev(ptr noundef %0, ptr noundef null) #15
  br label %7

7:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc269vb_fixup_aspire_e1_coef(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 2
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 13, i32 noundef 24576, i32 noundef 24576)
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc280_fixup_hp_gpio4(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %22

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = or i32 %9, 8
  store i32 %10, ptr %8, align 8
  %11 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 8
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = or i32 %15, 8
  store i32 %16, ptr %14, align 8
  %17 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 11
  store i32 8, ptr %17, align 4
  %18 = tail call i32 @snd_hda_gen_add_mute_led_cdev(ptr noundef %0, ptr noundef nonnull @gpio_mute_led_set) #15
  %19 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 10
  store i16 24, ptr %19, align 2
  %20 = tail call i32 @snd_hda_gen_add_micmute_led_cdev(ptr noundef %0, ptr noundef nonnull @vref_micmute_led_set) #15
  %21 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 34
  store ptr @led_power_filter, ptr %21, align 8
  br label %22

22:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc286_fixup_hp_gpio_led(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = or i32 %9, 34
  store i32 %10, ptr %8, align 8
  %11 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 34
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = or i32 %15, 34
  store i32 %16, ptr %14, align 8
  %17 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 11
  store i32 2, ptr %17, align 4
  %18 = tail call i32 @snd_hda_gen_add_mute_led_cdev(ptr noundef %0, ptr noundef nonnull @gpio_mute_led_set) #15
  %19 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 12
  store i32 32, ptr %19, align 8
  %20 = tail call i32 @snd_hda_gen_add_micmute_led_cdev(ptr noundef %0, ptr noundef nonnull @micmute_led_set) #15
  br label %21

21:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc280_fixup_hp_gpio2_mic_hotkey(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %7, label %39

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.alc_spec, ptr %5, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = or i32 %9, 24
  store i32 %10, ptr %8, align 8
  %11 = getelementptr inbounds %struct.alc_spec, ptr %5, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 24
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.alc_spec, ptr %5, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = or i32 %15, 24
  store i32 %16, ptr %14, align 8
  %17 = getelementptr inbounds %struct.alc_spec, ptr %5, i32 0, i32 11
  store i32 8, ptr %17, align 4
  %18 = tail call i32 @snd_hda_gen_add_mute_led_cdev(ptr noundef %0, ptr noundef nonnull @gpio_mute_led_set) #15
  %19 = getelementptr inbounds %struct.alc_spec, ptr %5, i32 0, i32 12
  store i32 16, ptr %19, align 8
  %20 = tail call i32 @snd_hda_gen_add_micmute_led_cdev(ptr noundef %0, ptr noundef nonnull @micmute_led_set) #15
  %21 = getelementptr inbounds %struct.alc_spec, ptr %5, i32 0, i32 23
  store i32 2, ptr %21, align 8
  %22 = tail call fastcc i32 @alc_register_micmute_input_device(ptr noundef %0)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %7
  %25 = load i32, ptr %8, align 8
  %26 = or i32 %25, 6
  store i32 %26, ptr %8, align 8
  %27 = load i32, ptr %11, align 4
  %28 = or i32 %27, 2
  store i32 %28, ptr %11, align 4
  %29 = load i32, ptr %14, align 8
  %30 = or i32 %29, 2
  store i32 %30, ptr %14, align 8
  %31 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 5
  %32 = load i16, ptr %31, align 4
  %33 = zext i16 %32 to i32
  %34 = shl i32 %33, 20
  %35 = or i32 %34, 989440
  %36 = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %0, i32 noundef %35, i32 noundef 4) #15
  %37 = load i16, ptr %31, align 4
  %38 = tail call ptr @snd_hda_jack_detect_enable_callback_mst(ptr noundef %0, i16 noundef zeroext %37, i32 noundef 0, ptr noundef nonnull @gpio2_mic_hotkey_event) #15
  br label %46

39:                                               ; preds = %3
  %40 = getelementptr inbounds %struct.alc_spec, ptr %5, i32 0, i32 30
  %41 = load ptr, ptr %40, align 8
  %42 = icmp ne ptr %41, null
  %43 = icmp eq i32 %2, 4
  %44 = and i1 %43, %42
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  tail call void @input_unregister_device(ptr noundef nonnull %41) #15
  store ptr null, ptr %40, align 8
  br label %46

46:                                               ; preds = %45, %39, %24, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc280_fixup_hp_9480m(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %24

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = or i32 %9, 8
  store i32 %10, ptr %8, align 8
  %11 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 8
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = or i32 %15, 8
  store i32 %16, ptr %14, align 8
  %17 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 11
  store i32 8, ptr %17, align 4
  %18 = tail call i32 @snd_hda_gen_add_mute_led_cdev(ptr noundef %0, ptr noundef nonnull @gpio_mute_led_set) #15
  %19 = load i32, ptr %8, align 8
  %20 = or i32 %19, 16
  store i32 %20, ptr %8, align 8
  %21 = load i32, ptr %11, align 4
  %22 = or i32 %21, 16
  store i32 %22, ptr %11, align 4
  %23 = getelementptr inbounds %struct.hda_gen_spec, ptr %7, i32 0, i32 81
  store ptr @alc280_hp_gpio4_automute_hook, ptr %23, align 4
  br label %24

24:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc245_fixup_hp_x360_amp(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  switch i32 %2, label %36 [
    i32 0, label %4
    i32 2, label %13
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = or i32 %8, 1
  store i32 %9, ptr %7, align 8
  %10 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %11, 1
  store i32 %12, ptr %10, align 4
  br label %36

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.alc_spec, ptr %15, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = or i32 %17, 1
  store i32 %18, ptr %16, align 8
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr %14, align 8
  %22 = getelementptr inbounds %struct.alc_spec, ptr %21, i32 0, i32 5
  %23 = load i32, ptr %22, align 8
  %24 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1813, i32 noundef %23) #15
  br label %25

25:                                               ; preds = %20, %13
  tail call void @msleep(i32 noundef 100) #15
  %26 = load ptr, ptr %14, align 8
  %27 = getelementptr inbounds %struct.alc_spec, ptr %26, i32 0, i32 5
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, -2
  store i32 %29, ptr %27, align 8
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %14, align 8
  %33 = getelementptr inbounds %struct.alc_spec, ptr %32, i32 0, i32 5
  %34 = load i32, ptr %33, align 8
  %35 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1813, i32 noundef %34) #15
  br label %36

36:                                               ; preds = %31, %25, %4, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc285_fixup_hp_spectre_x360_eb1(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  switch i32 %2, label %47 [
    i32 0, label %5
    i32 2, label %25
  ]

5:                                                ; preds = %3
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = or i32 %8, 4
  store i32 %9, ptr %7, align 8
  %10 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %11, 4
  store i32 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 5
  %14 = load i32, ptr %13, align 8
  %15 = or i32 %14, 4
  store i32 %15, ptr %13, align 8
  %16 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 12
  store i32 4, ptr %16, align 8
  %17 = tail call i32 @snd_hda_gen_add_micmute_led_cdev(ptr noundef %0, ptr noundef nonnull @micmute_led_set) #15
  %18 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 8
  store i32 1, ptr %18, align 4
  %19 = load i32, ptr %7, align 8
  %20 = or i32 %19, 1
  store i32 %20, ptr %7, align 8
  %21 = load i32, ptr %10, align 4
  %22 = or i32 %21, 1
  store i32 %22, ptr %10, align 4
  tail call void @snd_hda_apply_pincfgs(ptr noundef %0, ptr noundef nonnull @alc285_fixup_hp_spectre_x360_eb1.pincfgs) #15
  %23 = tail call i32 @snd_hda_override_conn_list(ptr noundef %0, i16 noundef zeroext 20, i32 noundef 1, ptr noundef nonnull @alc285_fixup_hp_spectre_x360_eb1.conn) #15
  %24 = tail call i32 @snd_hda_override_conn_list(ptr noundef %0, i16 noundef zeroext 23, i32 noundef 1, ptr noundef nonnull @alc285_fixup_hp_spectre_x360_eb1.conn) #15
  br label %47

25:                                               ; preds = %3
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds %struct.alc_spec, ptr %26, i32 0, i32 5
  %28 = load i32, ptr %27, align 8
  %29 = or i32 %28, 1
  store i32 %29, ptr %27, align 8
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds %struct.alc_spec, ptr %32, i32 0, i32 5
  %34 = load i32, ptr %33, align 8
  %35 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1813, i32 noundef %34) #15
  br label %36

36:                                               ; preds = %31, %25
  tail call void @msleep(i32 noundef 100) #15
  %37 = load ptr, ptr %4, align 8
  %38 = getelementptr inbounds %struct.alc_spec, ptr %37, i32 0, i32 5
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, -2
  store i32 %40, ptr %38, align 8
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = load ptr, ptr %4, align 8
  %44 = getelementptr inbounds %struct.alc_spec, ptr %43, i32 0, i32 5
  %45 = load i32, ptr %44, align 8
  %46 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1813, i32 noundef %45) #15
  br label %47

47:                                               ; preds = %42, %36, %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc_fixup_headset_mode_dell_alc288(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  tail call void @alc_fixup_headset_mode(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %4 = icmp eq i32 %2, 1
  br i1 %4, label %5, label %15

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = or i32 %9, 64
  store i32 %10, ptr %8, align 8
  %11 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 64
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.hda_gen_spec, ptr %7, i32 0, i32 81
  store ptr @alc288_update_headset_jack_cb, ptr %14, align 4
  br label %15

15:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc_fixup_dell_xps13(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  switch i32 %2, label %23 [
    i32 0, label %10
    i32 1, label %6
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hda_gen_spec, ptr %5, i32 0, i32 27
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %13

10:                                               ; preds = %3
  %11 = tail call i32 @snd_hda_codec_set_pin_target(ptr noundef %0, i16 noundef zeroext 25, i32 noundef 32) #15
  %12 = getelementptr inbounds %struct.alc_spec, ptr %5, i32 0, i32 22
  store ptr @alc_shutup_dell_xps13, ptr %12, align 4
  br label %23

13:                                               ; preds = %20, %6
  %14 = phi i32 [ %21, %20 ], [ 0, %6 ]
  %15 = getelementptr %struct.hda_gen_spec, ptr %5, i32 0, i32 36, i32 %14
  %16 = load i16, ptr %15, align 2
  %17 = icmp eq i16 %16, 18
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.hda_gen_spec, ptr %5, i32 0, i32 28
  store i32 %14, ptr %19, align 4
  br label %23

20:                                               ; preds = %13
  %21 = add nuw i32 %14, 1
  %22 = icmp eq i32 %21, %8
  br i1 %22, label %23, label %13

23:                                               ; preds = %20, %18, %10, %6, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc233_fixup_lenovo_line2_mic_hotkey(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.alc_spec, ptr %5, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = or i32 %9, 4
  store i32 %10, ptr %8, align 8
  %11 = getelementptr inbounds %struct.alc_spec, ptr %5, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 4
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.alc_spec, ptr %5, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = or i32 %15, 4
  store i32 %16, ptr %14, align 8
  %17 = getelementptr inbounds %struct.alc_spec, ptr %5, i32 0, i32 12
  store i32 4, ptr %17, align 8
  %18 = tail call i32 @snd_hda_gen_add_micmute_led_cdev(ptr noundef %0, ptr noundef nonnull @micmute_led_set) #15
  %19 = getelementptr inbounds %struct.alc_spec, ptr %5, i32 0, i32 23
  store i32 2, ptr %19, align 8
  %20 = tail call fastcc i32 @alc_register_micmute_input_device(ptr noundef %0)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %7
  %23 = tail call ptr @snd_hda_jack_detect_enable_callback_mst(ptr noundef %0, i16 noundef zeroext 27, i32 noundef 0, ptr noundef nonnull @gpio2_mic_hotkey_event) #15
  br label %31

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.alc_spec, ptr %5, i32 0, i32 30
  %26 = load ptr, ptr %25, align 8
  %27 = icmp ne ptr %26, null
  %28 = icmp eq i32 %2, 4
  %29 = and i1 %28, %27
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  tail call void @input_unregister_device(ptr noundef nonnull %26) #15
  store ptr null, ptr %25, align 8
  br label %31

31:                                               ; preds = %30, %24, %22, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc_fixup_disable_mic_vref(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i32 @snd_hda_codec_set_pin_target(ptr noundef %0, i16 noundef zeroext 25, i32 noundef 32) #15
  br label %7

7:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc295_fixup_disable_dac3(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i32 @snd_hda_override_conn_list(ptr noundef %0, i16 noundef zeroext 23, i32 noundef 2, ptr noundef nonnull @alc295_fixup_disable_dac3.conn) #15
  br label %7

7:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc285_fixup_speaker2_to_dac1(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i32 @snd_hda_override_conn_list(ptr noundef %0, i16 noundef zeroext 23, i32 noundef 1, ptr noundef nonnull @alc285_fixup_speaker2_to_dac1.conn) #15
  br label %7

7:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc298_fixup_speaker_volume(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i32 @snd_hda_override_conn_list(ptr noundef %0, i16 noundef zeroext 23, i32 noundef 1, ptr noundef nonnull @alc298_fixup_speaker_volume.conn1) #15
  br label %7

7:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @alc_fixup_auto_mute_via_amp(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hda_gen_spec, ptr %7, i32 0, i32 58
  %9 = load i64, ptr %8, align 4
  %10 = or i64 %9, 16384
  store i64 %10, ptr %8, align 4
  br label %11

11:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @alc_fixup_gpio4(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = or i32 %9, 4
  store i32 %10, ptr %8, align 8
  %11 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 4
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = or i32 %15, 4
  store i32 %16, ptr %14, align 8
  br label %17

17:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc233_alc662_fixup_lenovo_dual_codecs(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  switch i32 %2, label %36 [
    i32 0, label %4
    i32 3, label %17
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 58
  %8 = load i64, ptr %7, align 4
  %9 = or i64 %8, 34359836672
  store i64 %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 18
  store i16 0, ptr %10, align 2
  %11 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 30
  %12 = load i32, ptr %11, align 8
  %13 = or i32 %12, 524288
  store i32 %13, ptr %11, align 8
  %14 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(26) %16, ptr noundef nonnull align 1 dereferenceable(26) @.str.347, i32 26, i1 false)
  br label %36

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 8
  %20 = tail call ptr @snd_hda_find_mixer_ctl(ptr noundef %0, ptr noundef nonnull @.str.348) #15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = icmp eq i32 %19, 0
  %24 = select i1 %23, ptr @.str.349, ptr @.str.350
  %25 = getelementptr inbounds %struct.snd_kcontrol, ptr %20, i32 0, i32 1, i32 4
  %26 = tail call ptr @strcpy(ptr noundef %25, ptr noundef nonnull %24) #15
  br label %27

27:                                               ; preds = %22, %17
  %28 = load i32, ptr %18, align 8
  %29 = tail call ptr @snd_hda_find_mixer_ctl(ptr noundef %0, ptr noundef nonnull @.str.351) #15
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = icmp eq i32 %28, 0
  %33 = select i1 %32, ptr @.str.352, ptr @.str.353
  %34 = getelementptr inbounds %struct.snd_kcontrol, ptr %29, i32 0, i32 1, i32 4
  %35 = tail call ptr @strcpy(ptr noundef %34, ptr noundef nonnull %33) #15
  br label %36

36:                                               ; preds = %31, %27, %4, %3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @alc225_fixup_s3_pop_noise(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #7 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 30
  %7 = load i32, ptr %6, align 8
  %8 = or i32 %7, 131072
  store i32 %8, ptr %6, align 8
  br label %9

9:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @alc274_fixup_bind_dacs(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hda_gen_spec, ptr %7, i32 0, i32 64
  store ptr @alc274_fixup_bind_dacs.preferred_pairs, ptr %8, align 8
  %9 = getelementptr inbounds %struct.hda_gen_spec, ptr %7, i32 0, i32 58
  %10 = load i64, ptr %9, align 4
  %11 = or i64 %10, 16384
  store i64 %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 30
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, -131073
  store i32 %14, ptr %12, align 8
  br label %15

15:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc_fixup_tpt470_dock(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  switch i32 %2, label %11 [
    i32 0, label %4
    i32 2, label %8
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 2
  store i32 1, ptr %7, align 4
  tail call void @snd_hda_apply_pincfgs(ptr noundef %0, ptr noundef nonnull @alc_fixup_tpt470_dock.pincfgs) #15
  br label %11

8:                                                ; preds = %3
  %9 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 23, i32 noundef 0, i32 noundef 1823, i32 noundef 0) #15
  %10 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 25, i32 noundef 0, i32 noundef 1823, i32 noundef 0) #15
  br label %11

11:                                               ; preds = %8, %4, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @alc_fixup_tpt470_dacs(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hda_gen_spec, ptr %7, i32 0, i32 64
  store ptr @alc_fixup_tpt470_dacs.preferred_pairs, ptr %8, align 8
  br label %9

9:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc298_fixup_huawei_mbx_stereo(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 2
  br i1 %4, label %5, label %97

5:                                                ; preds = %3
  %6 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 6, i32 noundef 0, i32 noundef 1854, i32 noundef 0) #15
  %7 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 6, i32 noundef 0, i32 noundef 1854, i32 noundef 128) #15
  %8 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %11 = getelementptr inbounds %struct.alc_spec, ptr %9, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %11) #15
  %12 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 38) #15
  %13 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 61440) #15
  %14 = load ptr, ptr %8, align 8
  %15 = getelementptr inbounds %struct.alc_spec, ptr %14, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %15) #15
  %16 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %17 = load ptr, ptr %8, align 8
  %18 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %19 = getelementptr inbounds %struct.alc_spec, ptr %17, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %19) #15
  %20 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 34) #15
  %21 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 49) #15
  %22 = load ptr, ptr %8, align 8
  %23 = getelementptr inbounds %struct.alc_spec, ptr %22, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %23) #15
  %24 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %25 = load ptr, ptr %8, align 8
  %26 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %27 = getelementptr inbounds %struct.alc_spec, ptr %25, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %27) #15
  %28 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 35) #15
  %29 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 11) #15
  %30 = load ptr, ptr %8, align 8
  %31 = getelementptr inbounds %struct.alc_spec, ptr %30, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %31) #15
  %32 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %33 = load ptr, ptr %8, align 8
  %34 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %35 = getelementptr inbounds %struct.alc_spec, ptr %33, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %35) #15
  %36 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 37) #15
  %37 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 0) #15
  %38 = load ptr, ptr %8, align 8
  %39 = getelementptr inbounds %struct.alc_spec, ptr %38, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %39) #15
  %40 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %41 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 38) #15
  %42 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 45072) #15
  br label %43

43:                                               ; preds = %91, %5
  %44 = phi ptr [ @alc298_fixup_huawei_mbx_stereo.dac_init, %5 ], [ %94, %91 ]
  %45 = icmp eq ptr %44, @alc298_fixup_huawei_mbx_stereo.dac_init
  %46 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 6, i32 noundef 0, i32 noundef 1854, i32 noundef 0) #15
  %47 = load ptr, ptr %8, align 8
  %48 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %49 = getelementptr inbounds %struct.alc_spec, ptr %47, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %49) #15
  %50 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 38) #15
  %51 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 45056) #15
  %52 = load ptr, ptr %8, align 8
  %53 = getelementptr inbounds %struct.alc_spec, ptr %52, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %53) #15
  %54 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  br i1 %45, label %55, label %57

55:                                               ; preds = %43
  %56 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 33, i32 noundef 0, i32 noundef 3849, i32 noundef 0) #15
  br label %57

57:                                               ; preds = %55, %43
  %58 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 6, i32 noundef 0, i32 noundef 1854, i32 noundef 128) #15
  %59 = load ptr, ptr %8, align 8
  %60 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %61 = getelementptr inbounds %struct.alc_spec, ptr %59, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %61) #15
  %62 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 38) #15
  %63 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 61440) #15
  %64 = load ptr, ptr %8, align 8
  %65 = getelementptr inbounds %struct.alc_spec, ptr %64, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %65) #15
  %66 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %67 = load i8, ptr %44, align 1
  %68 = zext i8 %67 to i32
  %69 = load ptr, ptr %8, align 8
  %70 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %71 = getelementptr inbounds %struct.alc_spec, ptr %69, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %71) #15
  %72 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 35) #15
  %73 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef %68) #15
  %74 = load ptr, ptr %8, align 8
  %75 = getelementptr inbounds %struct.alc_spec, ptr %74, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %75) #15
  %76 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %77 = load i8, ptr %44, align 1
  %78 = icmp eq i8 %77, 30
  br i1 %78, label %91, label %79

79:                                               ; preds = %57
  %80 = getelementptr inbounds %struct.hda_alc298_mbxinit, ptr %44, i32 0, i32 1
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = load ptr, ptr %8, align 8
  %84 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %85 = getelementptr inbounds %struct.alc_spec, ptr %83, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %85) #15
  %86 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 37) #15
  %87 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef %82) #15
  %88 = load ptr, ptr %8, align 8
  %89 = getelementptr inbounds %struct.alc_spec, ptr %88, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %89) #15
  %90 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  br label %91

91:                                               ; preds = %79, %57
  %92 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 38) #15
  %93 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 45072) #15
  %94 = getelementptr %struct.hda_alc298_mbxinit, ptr %44, i32 1
  %95 = load i8, ptr %94, align 1
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %43

97:                                               ; preds = %91, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc295_fixup_hp_top_speakers(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  switch i32 %2, label %7 [
    i32 0, label %4
    i32 2, label %6
  ]

4:                                                ; preds = %3
  tail call void @snd_hda_apply_pincfgs(ptr noundef %0, ptr noundef nonnull @alc295_fixup_hp_top_speakers.pincfgs) #15
  %5 = tail call i32 @snd_hda_override_conn_list(ptr noundef %0, i16 noundef zeroext 23, i32 noundef 2, ptr noundef nonnull @alc295_fixup_disable_dac3.conn) #15
  br label %7

6:                                                ; preds = %3
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc295_fixup_hp_top_speakers.alc295_hp_speakers_coefs)
  br label %7

7:                                                ; preds = %6, %4, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @alc285_fixup_invalidate_dacs(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 18
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = icmp ugt i16 %7, 3
  br i1 %9, label %20, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 17
  %12 = load i32, ptr %11, align 8
  %13 = add i32 %12, %8
  %14 = icmp ugt i32 %13, 3
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 14
  %17 = load ptr, ptr %16, align 4
  %18 = sub nsw i32 3, %8
  %19 = getelementptr i32, ptr %17, i32 %18
  store i32 0, ptr %19, align 4
  br label %20

20:                                               ; preds = %15, %10, %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc295_fixup_chromebook(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  switch i32 %2, label %11 [
    i32 0, label %4
    i32 2, label %10
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 25
  %8 = load i8, ptr %7, align 8
  %9 = or i8 %8, 16
  store i8 %9, ptr %7, align 8
  br label %11

10:                                               ; preds = %3
  tail call fastcc void @alc_combo_jack_hp_jd_restart(ptr noundef %0)
  br label %11

11:                                               ; preds = %10, %4, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc_fixup_headset_jack(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  switch i32 %2, label %30 [
    i32 0, label %6
    i32 3, label %11
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.alc_spec, ptr %5, i32 0, i32 25
  %8 = load i8, ptr %7, align 8
  %9 = or i8 %8, 32
  store i8 %9, ptr %7, align 8
  %10 = tail call ptr @snd_hda_jack_detect_enable_callback_mst(ptr noundef %0, i16 noundef zeroext 85, i32 noundef 0, ptr noundef nonnull @alc_headset_btn_callback) #15
  br label %30

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.hda_gen_spec, ptr %5, i32 0, i32 33, i32 6
  %13 = load i16, ptr %12, align 8
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.hda_gen_spec, ptr %5, i32 0, i32 33, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.hda_gen_spec, ptr %5, i32 0, i32 33, i32 1
  %21 = load i16, ptr %20, align 4
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19, %11
  %24 = phi i16 [ %21, %19 ], [ %13, %11 ]
  %25 = tail call i32 @snd_hda_jack_bind_keymap(ptr noundef %0, i16 noundef zeroext 85, ptr noundef nonnull @alc_headset_btn_keymap, i16 noundef zeroext %24) #15
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23, %19, %15
  %28 = tail call i32 @snd_hda_jack_add_kctl_mst(ptr noundef %0, i16 noundef zeroext 85, i32 noundef 0, ptr noundef nonnull @.str.354, i1 noundef zeroext false, i32 noundef 3, ptr noundef nonnull @alc_headset_btn_keymap) #15
  br label %29

29:                                               ; preds = %27, %23
  tail call fastcc void @alc_enable_headset_jack_key(ptr noundef %0)
  br label %30

30:                                               ; preds = %29, %6, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc285_fixup_thinkpad_x1_gen7(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  switch i32 %2, label %19 [
    i32 0, label %4
    i32 3, label %9
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @snd_hda_override_conn_list(ptr noundef %0, i16 noundef zeroext 23, i32 noundef 2, ptr noundef nonnull @alc285_fixup_thinkpad_x1_gen7.conn) #15
  %8 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 64
  store ptr @alc285_fixup_thinkpad_x1_gen7.preferred_pairs, ptr %8, align 8
  br label %19

9:                                                ; preds = %3
  %10 = tail call ptr @snd_hda_find_mixer_ctl(ptr noundef %0, ptr noundef nonnull @.str.355) #15
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.snd_kcontrol, ptr %10, i32 0, i32 1, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(21) %13, ptr noundef nonnull align 1 dereferenceable(21) @.str.356, i32 21, i1 false) #15
  br label %14

14:                                               ; preds = %12, %9
  %15 = tail call ptr @snd_hda_find_mixer_ctl(ptr noundef %0, ptr noundef nonnull @.str.357) #15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.snd_kcontrol, ptr %15, i32 0, i32 1, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(21) %18, ptr noundef nonnull align 1 dereferenceable(21) @.str.358, i32 21, i1 false) #15
  br label %19

19:                                               ; preds = %17, %14, %4, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc294_fixup_gx502_hp(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = tail call zeroext i1 @is_jack_detectable(ptr noundef %0, i16 noundef zeroext 33) #15
  br i1 %4, label %5, label %21

5:                                                ; preds = %3
  switch i32 %2, label %21 [
    i32 0, label %6
    i32 2, label %8
  ]

6:                                                ; preds = %5
  %7 = tail call ptr @snd_hda_jack_detect_enable_callback_mst(ptr noundef %0, i16 noundef zeroext 33, i32 noundef 0, ptr noundef nonnull @alc294_gx502_toggle_output) #15
  br label %21

8:                                                ; preds = %5
  %9 = tail call i32 @snd_hda_jack_detect_state_mst(ptr noundef %0, i16 noundef zeroext 33, i32 noundef 0) #15
  %10 = icmp eq i32 %9, 1
  %11 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %14 = getelementptr inbounds %struct.alc_spec, ptr %12, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %14) #15
  %15 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 16) #15
  %16 = select i1 %10, i32 35360, i32 2592
  %17 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef %16) #15
  %18 = load ptr, ptr %11, align 8
  %19 = getelementptr inbounds %struct.alc_spec, ptr %18, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %19) #15
  %20 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  br label %21

21:                                               ; preds = %8, %6, %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc294_fixup_gu502_hp(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = tail call zeroext i1 @is_jack_detectable(ptr noundef %0, i16 noundef zeroext 33) #15
  br i1 %4, label %5, label %21

5:                                                ; preds = %3
  switch i32 %2, label %21 [
    i32 0, label %6
    i32 2, label %8
  ]

6:                                                ; preds = %5
  %7 = tail call ptr @snd_hda_jack_detect_enable_callback_mst(ptr noundef %0, i16 noundef zeroext 33, i32 noundef 0, ptr noundef nonnull @alc294_gu502_toggle_output) #15
  br label %21

8:                                                ; preds = %5
  %9 = tail call i32 @snd_hda_jack_detect_state_mst(ptr noundef %0, i16 noundef zeroext 33, i32 noundef 0) #15
  %10 = icmp eq i32 %9, 1
  %11 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %14 = getelementptr inbounds %struct.alc_spec, ptr %12, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %14) #15
  %15 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 16) #15
  %16 = select i1 %10, i32 33824, i32 2592
  %17 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef %16) #15
  %18 = load ptr, ptr %11, align 8
  %19 = getelementptr inbounds %struct.alc_spec, ptr %18, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %19) #15
  %20 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  br label %21

21:                                               ; preds = %8, %6, %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc285_fixup_hp_gpio_led(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = or i32 %9, 5
  store i32 %10, ptr %8, align 8
  %11 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 5
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = or i32 %15, 5
  store i32 %16, ptr %14, align 8
  %17 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 11
  store i32 4, ptr %17, align 4
  %18 = tail call i32 @snd_hda_gen_add_mute_led_cdev(ptr noundef %0, ptr noundef nonnull @gpio_mute_led_set) #15
  %19 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 12
  store i32 1, ptr %19, align 8
  %20 = tail call i32 @snd_hda_gen_add_micmute_led_cdev(ptr noundef %0, ptr noundef nonnull @micmute_led_set) #15
  br label %21

21:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc285_fixup_hp_mute_led(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 7
  store i32 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 13
  store i32 11, ptr %9, align 4
  %10 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 13, i32 1
  store i32 8, ptr %10, align 4
  %11 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 13, i32 2
  store i32 8, ptr %11, align 4
  %12 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 13, i32 3
  store i32 0, ptr %12, align 4
  %13 = tail call i32 @snd_hda_gen_add_mute_led_cdev(ptr noundef %0, ptr noundef nonnull @coef_mute_led_set) #15
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds %struct.alc_spec, ptr %14, i32 0, i32 14
  store i32 25, ptr %15, align 4
  %16 = getelementptr inbounds %struct.alc_spec, ptr %14, i32 0, i32 14, i32 1
  store i32 8192, ptr %16, align 4
  %17 = getelementptr inbounds %struct.alc_spec, ptr %14, i32 0, i32 14, i32 2
  store i32 8192, ptr %17, align 4
  %18 = getelementptr inbounds %struct.alc_spec, ptr %14, i32 0, i32 14, i32 3
  store i32 0, ptr %18, align 4
  %19 = tail call i32 @snd_hda_gen_add_micmute_led_cdev(ptr noundef %0, ptr noundef nonnull @coef_micmute_led_set) #15
  br label %20

20:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc236_fixup_hp_gpio_led(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = or i32 %9, 3
  store i32 %10, ptr %8, align 8
  %11 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 3
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = or i32 %15, 3
  store i32 %16, ptr %14, align 8
  %17 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 11
  store i32 2, ptr %17, align 4
  %18 = tail call i32 @snd_hda_gen_add_mute_led_cdev(ptr noundef %0, ptr noundef nonnull @gpio_mute_led_set) #15
  %19 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 12
  store i32 1, ptr %19, align 8
  %20 = tail call i32 @snd_hda_gen_add_micmute_led_cdev(ptr noundef %0, ptr noundef nonnull @micmute_led_set) #15
  br label %21

21:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc236_fixup_hp_mute_led(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 7
  store i32 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 13
  store i32 52, ptr %9, align 4
  %10 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 13, i32 1
  store i32 32, ptr %10, align 4
  %11 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 13, i32 2
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 13, i32 3
  store i32 32, ptr %12, align 4
  %13 = tail call i32 @snd_hda_gen_add_mute_led_cdev(ptr noundef %0, ptr noundef nonnull @coef_mute_led_set) #15
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds %struct.alc_spec, ptr %14, i32 0, i32 14
  store i32 53, ptr %15, align 4
  %16 = getelementptr inbounds %struct.alc_spec, ptr %14, i32 0, i32 14, i32 1
  store i32 12, ptr %16, align 4
  %17 = getelementptr inbounds %struct.alc_spec, ptr %14, i32 0, i32 14, i32 2
  store i32 8, ptr %17, align 4
  %18 = getelementptr inbounds %struct.alc_spec, ptr %14, i32 0, i32 14, i32 3
  store i32 4, ptr %18, align 4
  %19 = tail call i32 @snd_hda_gen_add_micmute_led_cdev(ptr noundef %0, ptr noundef nonnull @coef_micmute_led_set) #15
  br label %20

20:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc236_fixup_hp_mute_led_micmute_vref(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 7
  store i32 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 13
  store i32 52, ptr %9, align 4
  %10 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 13, i32 1
  store i32 32, ptr %10, align 4
  %11 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 13, i32 2
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 13, i32 3
  store i32 32, ptr %12, align 4
  %13 = tail call i32 @snd_hda_gen_add_mute_led_cdev(ptr noundef %0, ptr noundef nonnull @coef_mute_led_set) #15
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds %struct.alc_spec, ptr %14, i32 0, i32 10
  store i16 26, ptr %15, align 2
  %16 = tail call i32 @snd_hda_gen_add_micmute_led_cdev(ptr noundef %0, ptr noundef nonnull @vref_micmute_led_set) #15
  %17 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 34
  store ptr @led_power_filter, ptr %17, align 8
  br label %18

18:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @alc289_fixup_asus_ga401(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hda_gen_spec, ptr %7, i32 0, i32 64
  store ptr @alc289_fixup_asus_ga401.preferred_pairs, ptr %8, align 8
  %9 = getelementptr inbounds %struct.hda_gen_spec, ptr %7, i32 0, i32 58
  %10 = load i64, ptr %9, align 4
  %11 = or i64 %10, 68719476736
  store i64 %11, ptr %9, align 4
  br label %12

12:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc285_fixup_hp_gpio_amp_init(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 2
  br i1 %4, label %5, label %15

5:                                                ; preds = %3
  tail call void @msleep(i32 noundef 100) #15
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %9 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %9) #15
  %10 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 101) #15
  %11 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 0) #15
  %12 = load ptr, ptr %6, align 8
  %13 = getelementptr inbounds %struct.alc_spec, ptr %12, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %13) #15
  %14 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  br label %15

15:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc274_fixup_hp_headset_mic(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 2
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call fastcc void @alc_combo_jack_hp_jd_restart(ptr noundef %0)
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @alc274_fixup_hp_envy_gpio(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %2, 1
  br i1 %4, label %5, label %15

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = or i32 %9, 4
  store i32 %10, ptr %8, align 8
  %11 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 4
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.hda_gen_spec, ptr %7, i32 0, i32 79
  store ptr @alc274_hp_envy_pcm_hook, ptr %14, align 4
  br label %15

15:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc287_fixup_hp_gpio_led(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = or i32 %9, 16
  store i32 %10, ptr %8, align 8
  %11 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 16
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = or i32 %15, 16
  store i32 %16, ptr %14, align 8
  %17 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 11
  store i32 16, ptr %17, align 4
  %18 = tail call i32 @snd_hda_gen_add_mute_led_cdev(ptr noundef %0, ptr noundef nonnull @gpio_mute_led_set) #15
  br label %19

19:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc245_fixup_hp_gpio_led(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 8
  store i32 1, ptr %8, align 4
  %9 = load ptr, ptr %6, align 8
  %10 = getelementptr inbounds %struct.alc_spec, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 8
  %12 = or i32 %11, 4
  store i32 %12, ptr %10, align 8
  %13 = getelementptr inbounds %struct.alc_spec, ptr %9, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, 4
  store i32 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.alc_spec, ptr %9, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = or i32 %17, 4
  store i32 %18, ptr %16, align 8
  %19 = getelementptr inbounds %struct.alc_spec, ptr %9, i32 0, i32 12
  store i32 4, ptr %19, align 8
  %20 = tail call i32 @snd_hda_gen_add_micmute_led_cdev(ptr noundef %0, ptr noundef nonnull @micmute_led_set) #15
  br label %21

21:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc_fixup_no_int_mic(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  switch i32 %2, label %11 [
    i32 0, label %4
    i32 2, label %10
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 69, i32 noundef 62464, i32 noundef 20480)
  %7 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 25
  %8 = load i8, ptr %7, align 8
  %9 = or i8 %8, 64
  store i8 %9, ptr %7, align 8
  br label %11

10:                                               ; preds = %3
  tail call fastcc void @alc_combo_jack_hp_jd_restart(ptr noundef %0)
  br label %11

11:                                               ; preds = %10, %4, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc285_fixup_ideapad_s740_coef(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i32 @snd_hda_add_verbs(ptr noundef %0, ptr noundef nonnull @alc285_ideapad_s740_coefs) #15
  br label %7

7:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @alc295_fixup_asus_dacs(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hda_gen_spec, ptr %7, i32 0, i32 64
  store ptr @alc295_fixup_asus_dacs.preferred_pairs, ptr %8, align 8
  br label %9

9:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc285_fixup_hp_spectre_x360(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  tail call void @snd_hda_apply_pincfgs(ptr noundef %0, ptr noundef nonnull @alc285_fixup_hp_spectre_x360.pincfgs) #15
  %6 = tail call i32 @snd_hda_override_conn_list(ptr noundef %0, i16 noundef zeroext 23, i32 noundef 1, ptr noundef nonnull @alc285_fixup_hp_spectre_x360.conn) #15
  br label %7

7:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @alc287_fixup_legion_15imhg05_speakers(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hda_gen_spec, ptr %7, i32 0, i32 58
  %9 = load i64, ptr %8, align 4
  %10 = or i64 %9, 32768
  store i64 %10, ptr %8, align 4
  br label %11

11:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc256_fixup_set_coef_defaults(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc256_fixup_set_coef_defaults_coefs)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc233_fixup_no_audio_jack(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc233_fixup_no_audio_jack_coefs)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc256_fixup_mic_no_presence_and_resume(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 283902550
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 16, i32 noundef 512, i32 noundef 0)
  %8 = tail call i32 @snd_hda_codec_set_pincfg(ptr noundef %0, i16 noundef zeroext 25, i32 noundef 77664544) #15
  br label %11

9:                                                ; preds = %3
  %10 = tail call i32 @snd_hda_codec_set_pincfg(ptr noundef %0, i16 noundef zeroext 26, i32 noundef 77664572) #15
  br label %11

11:                                               ; preds = %9, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc287_fixup_legion_16achg6_speakers(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.alc_spec, ptr %5, i32 0, i32 32
  tail call void @component_match_add_release(ptr noundef %0, ptr noundef %8, ptr noundef null, ptr noundef nonnull @comp_match_dev_name, ptr noundef nonnull @.str.359) #15
  tail call void @component_match_add_release(ptr noundef %0, ptr noundef %8, ptr noundef null, ptr noundef nonnull @comp_match_dev_name, ptr noundef nonnull @.str.360) #15
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @component_master_add_with_match(ptr noundef %0, ptr noundef nonnull @comp_master_ops, ptr noundef %9) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.361, i32 noundef %10) #17
  br label %15

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hda_gen_spec, ptr %5, i32 0, i32 79
  store ptr @alc287_legion_16achg6_playback_hook, ptr %14, align 4
  br label %15

15:                                               ; preds = %13, %12, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cs35l41_fixup_i2c_two(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.alc_spec, ptr %5, i32 0, i32 32
  %9 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %0, i32 noundef 3264, ptr noundef nonnull @.str.364, ptr noundef nonnull @.str.362, ptr noundef nonnull @.str.363, i32 noundef 0) #15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %7
  tail call void @component_match_add_release(ptr noundef %0, ptr noundef %8, ptr noundef null, ptr noundef nonnull @comp_match_dev_name, ptr noundef nonnull %9) #15
  %12 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %0, i32 noundef 3264, ptr noundef nonnull @.str.364, ptr noundef nonnull @.str.362, ptr noundef nonnull @.str.363, i32 noundef 1) #15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  tail call void @component_match_add_release(ptr noundef %0, ptr noundef %8, ptr noundef null, ptr noundef nonnull @comp_match_dev_name, ptr noundef nonnull %12) #15
  %15 = load ptr, ptr %8, align 8
  %16 = tail call i32 @component_master_add_with_match(ptr noundef %0, ptr noundef nonnull @comp_master_ops, ptr noundef %15) #15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.361, i32 noundef %16) #17
  br label %21

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.hda_gen_spec, ptr %5, i32 0, i32 79
  store ptr @comp_generic_playback_hook, ptr %20, align 4
  br label %21

21:                                               ; preds = %19, %18, %11, %7, %3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_sequence_write(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc269_quanta_automute(ptr noundef %0) #1 {
  tail call void @snd_hda_gen_update_outputs(ptr noundef %0) #15
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %5) #15
  %6 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 12) #15
  %7 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 1664) #15
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct.alc_spec, ptr %8, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %9) #15
  %10 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %11 = load ptr, ptr %2, align 8
  %12 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %13 = getelementptr inbounds %struct.alc_spec, ptr %11, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %13) #15
  %14 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 12) #15
  %15 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 1152) #15
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.alc_spec, ptr %16, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %17) #15
  %18 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_gen_update_outputs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_codec_set_pincfg(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmi_find_device(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_add_mute_led_cdev(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vref_mute_led_set(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.hda_codec, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.alc_spec, ptr %8, i32 0, i32 9
  %10 = load i16, ptr %9, align 8
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %2
  %13 = icmp ne i32 %1, 0
  %14 = getelementptr inbounds %struct.alc_spec, ptr %8, i32 0, i32 7
  %15 = load i32, ptr %14, align 8
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %13, %16
  %18 = tail call i32 @snd_hda_codec_get_pin_target(ptr noundef %6, i16 noundef zeroext %10) #15
  %19 = and i32 %18, -8
  %20 = select i1 %17, i32 4, i32 0
  %21 = or i32 %20, %19
  %22 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %6) #15
  %23 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %6, i16 noundef zeroext %10, i32 noundef %21, i1 noundef zeroext true) #15
  %24 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %6) #15
  br label %25

25:                                               ; preds = %12, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @led_power_filter(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne i32 %2, 3
  %7 = icmp eq i16 %1, 0
  %8 = or i1 %7, %6
  br i1 %8, label %21, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.alc_spec, ptr %5, i32 0, i32 9
  %11 = load i16, ptr %10, align 8
  %12 = icmp eq i16 %11, %1
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.alc_spec, ptr %5, i32 0, i32 10
  %15 = load i16, ptr %14, align 2
  %16 = icmp eq i16 %15, %1
  br i1 %16, label %17, label %21

17:                                               ; preds = %13, %9
  %18 = tail call i32 @snd_hda_codec_get_pin_target(ptr noundef %0, i16 noundef zeroext %1) #15
  %19 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %18, i1 noundef zeroext false) #15
  %20 = tail call i32 @snd_hda_gen_path_power_filter(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 3) #15
  br label %21

21:                                               ; preds = %17, %13, %3
  %22 = phi i32 [ %20, %17 ], [ 3, %13 ], [ %2, %3 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_codec_get_pin_target(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_snd_hda_set_pin_ctl(ptr noundef, i16 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_path_power_filter(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_mute_led_set(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.hda_codec, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.alc_spec, ptr %8, i32 0, i32 11
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.alc_spec, ptr %8, i32 0, i32 7
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %1, 0
  %14 = icmp eq i32 %12, 0
  %15 = xor i1 %13, %14
  %16 = getelementptr inbounds %struct.alc_spec, ptr %8, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = xor i32 %10, -1
  %19 = and i32 %17, %18
  %20 = or i32 %17, %10
  %21 = select i1 %15, i32 %20, i32 %19
  store i32 %21, ptr %16, align 8
  %22 = icmp eq i32 %17, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load ptr, ptr %7, align 8
  %25 = getelementptr inbounds %struct.alc_spec, ptr %24, i32 0, i32 5
  %26 = load i32, ptr %25, align 8
  %27 = tail call i32 @snd_hdac_codec_write(ptr noundef %6, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1813, i32 noundef %26) #15
  br label %28

28:                                               ; preds = %23, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_add_micmute_led_cdev(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @micmute_led_set(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.hda_codec, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.alc_spec, ptr %8, i32 0, i32 12
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.alc_spec, ptr %8, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %1, 0
  %14 = icmp eq i32 %12, 0
  %15 = xor i1 %13, %14
  %16 = getelementptr inbounds %struct.alc_spec, ptr %8, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = xor i32 %10, -1
  %19 = and i32 %17, %18
  %20 = or i32 %17, %10
  %21 = select i1 %15, i32 %20, i32 %19
  store i32 %21, ptr %16, align 8
  %22 = icmp eq i32 %17, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load ptr, ptr %7, align 8
  %25 = getelementptr inbounds %struct.alc_spec, ptr %24, i32 0, i32 5
  %26 = load i32, ptr %25, align 8
  %27 = tail call i32 @snd_hdac_codec_write(ptr noundef %6, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1813, i32 noundef %26) #15
  br label %28

28:                                               ; preds = %23, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vref_micmute_led_set(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.hda_codec, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.alc_spec, ptr %8, i32 0, i32 10
  %10 = load i16, ptr %9, align 2
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %2
  %13 = icmp ne i32 %1, 0
  %14 = getelementptr inbounds %struct.alc_spec, ptr %8, i32 0, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %13, %16
  %18 = tail call i32 @snd_hda_codec_get_pin_target(ptr noundef %6, i16 noundef zeroext %10) #15
  %19 = and i32 %18, -8
  %20 = select i1 %17, i32 4, i32 0
  %21 = or i32 %20, %19
  %22 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %6) #15
  %23 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %6, i16 noundef zeroext %10, i32 noundef %21, i1 noundef zeroext true) #15
  %24 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %6) #15
  br label %25

25:                                               ; preds = %12, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_override_amp_caps(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc_update_headset_mode(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 28
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr %struct.hda_gen_spec, ptr %3, i32 0, i32 36, i32 %5
  %7 = load i16, ptr %6, align 2
  %8 = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 33, i32 6
  %9 = load i16, ptr %8, align 8
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 33, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 33, i32 1
  %17 = load i16, ptr %16, align 4
  br label %18

18:                                               ; preds = %15, %11, %1
  %19 = phi i16 [ %17, %15 ], [ %9, %1 ], [ 0, %11 ]
  %20 = tail call i32 @snd_hda_jack_detect_state_mst(ptr noundef %0, i16 noundef zeroext %19, i32 noundef 0) #15
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 16
  %24 = load i16, ptr %23, align 8
  %25 = icmp eq i16 %7, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 17
  %28 = load i16, ptr %27, align 2
  %29 = icmp eq i16 %7, %28
  %30 = select i1 %29, i32 3, i32 4
  br label %31

31:                                               ; preds = %26, %22, %18
  %32 = phi i1 [ false, %18 ], [ false, %22 ], [ %29, %26 ]
  %33 = phi i32 [ 1, %18 ], [ 2, %22 ], [ %30, %26 ]
  %34 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 18
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %470, label %37

37:                                               ; preds = %31
  switch i32 %33, label %459 [
    i32 1, label %38
    i32 2, label %64
    i32 3, label %339
    i32 4, label %426
  ]

38:                                               ; preds = %37
  %39 = load ptr, ptr %2, align 8
  %40 = getelementptr inbounds %struct.alc_spec, ptr %39, i32 0, i32 25
  %41 = load i8, ptr %40, align 8
  %42 = and i8 %41, 64
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 69, i32 noundef 62464, i32 noundef 20480) #15
  br label %59

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 7
  %47 = load i32, ptr %46, align 8
  switch i32 %47, label %59 [
    i32 283902549, label %48
    i32 283902512, label %49
    i32 283902518, label %49
    i32 283902550, label %49
    i32 283902516, label %50
    i32 283902580, label %50
    i32 283902612, label %50
    i32 283902515, label %51
    i32 283902595, label %51
    i32 283902598, label %52
    i32 283902600, label %52
    i32 283902616, label %53
    i32 283902610, label %54
    i32 283902611, label %55
    i32 283903592, label %56
    i32 283902485, label %57
    i32 283902501, label %57
    i32 283902597, label %57
    i32 283902613, label %57
    i32 283902601, label %57
    i32 283902617, label %57
    i32 283904103, label %58
  ]

48:                                               ; preds = %45
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_unplugged.coef0255) #15
  br label %59

49:                                               ; preds = %45, %45, %45
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_unplugged.coef0256) #15
  br label %59

50:                                               ; preds = %45, %45, %45
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_unplugged.coef0274) #15
  br label %59

51:                                               ; preds = %45, %45
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_unplugged.coef0233) #15
  br label %59

52:                                               ; preds = %45, %45
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_unplugged.coef0288) #15
  br label %59

53:                                               ; preds = %45
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_unplugged.coef0298) #15
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_unplugged.coef0288) #15
  br label %59

54:                                               ; preds = %45
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_unplugged.coef0292) #15
  br label %59

55:                                               ; preds = %45
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_unplugged.coef0293) #15
  br label %59

56:                                               ; preds = %45
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_unplugged.coef0668) #15
  br label %59

57:                                               ; preds = %45, %45, %45, %45, %45, %45
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc225_pre_hsmode) #15
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_unplugged.coef0225) #15
  br label %59

58:                                               ; preds = %45
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 87, i32 noundef 5, i32 noundef 16384, i32 noundef 0) #15
  br label %59

59:                                               ; preds = %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %45, %44
  store i32 0, ptr %34, align 4
  %60 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 19
  store i32 0, ptr %60, align 8
  %61 = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 58
  %62 = load i64, ptr %61, align 4
  %63 = and i64 %62, -2
  store i64 %63, ptr %61, align 4
  br label %459

64:                                               ; preds = %37
  %65 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 19
  %66 = load i32, ptr %65, align 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %266

68:                                               ; preds = %64
  %69 = load ptr, ptr %2, align 8
  %70 = getelementptr inbounds %struct.alc_spec, ptr %69, i32 0, i32 25
  %71 = load i8, ptr %70, align 8
  %72 = and i8 %71, 64
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 69, i32 noundef 62464, i32 noundef 20480) #15
  br label %264

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 7
  %77 = load i32, ptr %76, align 8
  switch i32 %77, label %261 [
    i32 283902549, label %249
    i32 283902512, label %78
    i32 283902518, label %78
    i32 283902550, label %78
    i32 283902516, label %124
    i32 283902580, label %124
    i32 283902612, label %124
    i32 283902515, label %135
    i32 283902595, label %135
    i32 283902616, label %153
    i32 283902598, label %172
    i32 283902600, label %172
    i32 283902610, label %183
    i32 283902611, label %201
    i32 283903592, label %212
    i32 283902485, label %223
    i32 283902501, label %223
    i32 283902597, label %223
    i32 283902613, label %223
    i32 283902601, label %223
    i32 283902617, label %223
    i32 283904103, label %260
  ]

78:                                               ; preds = %75, %75, %75
  %79 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %80 = getelementptr inbounds %struct.alc_spec, ptr %69, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %80) #15
  %81 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 27) #15
  %82 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 3659) #15
  %83 = load ptr, ptr %2, align 8
  %84 = getelementptr inbounds %struct.alc_spec, ptr %83, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %84) #15
  %85 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %86 = load ptr, ptr %2, align 8
  %87 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %88 = getelementptr inbounds %struct.alc_spec, ptr %86, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %88) #15
  %89 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 6) #15
  %90 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 24836) #15
  %91 = load ptr, ptr %2, align 8
  %92 = getelementptr inbounds %struct.alc_spec, ptr %91, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %92) #15
  %93 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %94 = load ptr, ptr %2, align 8
  %95 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %96 = getelementptr inbounds %struct.alc_spec, ptr %94, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %96) #15
  %97 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 87, i32 noundef 0, i32 noundef 1280, i32 noundef 3) #15
  %98 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 87, i32 noundef 0, i32 noundef 1024, i32 noundef 2467) #15
  %99 = load ptr, ptr %2, align 8
  %100 = getelementptr inbounds %struct.alc_spec, ptr %99, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %100) #15
  %101 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %102 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 33, i32 noundef 0, i32 noundef 768, i32 noundef 45184) #15
  tail call void @msleep(i32 noundef 80) #15
  %103 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 33, i32 noundef 0, i32 noundef 1799, i32 noundef 0) #15
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_determine_headset_type.coef0255) #15
  tail call void @msleep(i32 noundef 300) #15
  %104 = load ptr, ptr %2, align 8
  %105 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %106 = getelementptr inbounds %struct.alc_spec, ptr %104, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %106) #15
  %107 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 70) #15
  %108 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #15
  %109 = load ptr, ptr %2, align 8
  %110 = getelementptr inbounds %struct.alc_spec, ptr %109, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %110) #15
  %111 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %112 = and i32 %108, 112
  %113 = icmp eq i32 %112, 112
  %114 = load ptr, ptr %2, align 8
  %115 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %116 = getelementptr inbounds %struct.alc_spec, ptr %114, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %116) #15
  %117 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 87, i32 noundef 0, i32 noundef 1280, i32 noundef 3) #15
  %118 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 87, i32 noundef 0, i32 noundef 1024, i32 noundef 3491) #15
  %119 = load ptr, ptr %2, align 8
  %120 = getelementptr inbounds %struct.alc_spec, ptr %119, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %120) #15
  %121 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 87, i32 noundef 5, i32 noundef 16384, i32 noundef 0) #15
  %122 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 33, i32 noundef 0, i32 noundef 1799, i32 noundef 64) #15
  tail call void @msleep(i32 noundef 80) #15
  %123 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 33, i32 noundef 0, i32 noundef 768, i32 noundef 45056) #15
  br i1 %113, label %260, label %261

124:                                              ; preds = %75, %75, %75
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_determine_headset_type.coef0274) #15
  tail call void @msleep(i32 noundef 850) #15
  %125 = load ptr, ptr %2, align 8
  %126 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %127 = getelementptr inbounds %struct.alc_spec, ptr %125, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %127) #15
  %128 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 70) #15
  %129 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #15
  %130 = load ptr, ptr %2, align 8
  %131 = getelementptr inbounds %struct.alc_spec, ptr %130, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %131) #15
  %132 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %133 = and i32 %129, 240
  %134 = icmp eq i32 %133, 240
  br i1 %134, label %260, label %261

135:                                              ; preds = %75, %75
  %136 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %137 = getelementptr inbounds %struct.alc_spec, ptr %69, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %137) #15
  %138 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 69) #15
  %139 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 53289) #15
  %140 = load ptr, ptr %2, align 8
  %141 = getelementptr inbounds %struct.alc_spec, ptr %140, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %141) #15
  %142 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  tail call void @msleep(i32 noundef 300) #15
  %143 = load ptr, ptr %2, align 8
  %144 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %145 = getelementptr inbounds %struct.alc_spec, ptr %143, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %145) #15
  %146 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 70) #15
  %147 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #15
  %148 = load ptr, ptr %2, align 8
  %149 = getelementptr inbounds %struct.alc_spec, ptr %148, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %149) #15
  %150 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %151 = and i32 %147, 112
  %152 = icmp eq i32 %151, 112
  br i1 %152, label %260, label %261

153:                                              ; preds = %75
  %154 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 33, i32 noundef 0, i32 noundef 768, i32 noundef 45184) #15
  tail call void @msleep(i32 noundef 100) #15
  %155 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 33, i32 noundef 0, i32 noundef 1799, i32 noundef 0) #15
  tail call void @msleep(i32 noundef 200) #15
  %156 = load ptr, ptr %2, align 8
  %157 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %158 = getelementptr inbounds %struct.alc_spec, ptr %156, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %158) #15
  %159 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 80) #15
  %160 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #15
  %161 = load ptr, ptr %2, align 8
  %162 = getelementptr inbounds %struct.alc_spec, ptr %161, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %162) #15
  %163 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %164 = and i32 %160, 4096
  %165 = icmp eq i32 %164, 0
  %166 = select i1 %165, i32 16, i32 32
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 142, i32 noundef 112, i32 noundef %166) #15
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_determine_headset_type.coef0288) #15
  tail call void @msleep(i32 noundef 350) #15
  %167 = tail call fastcc i32 @alc_read_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 80) #15
  %168 = and i32 %167, 112
  %169 = icmp eq i32 %168, 112
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_determine_headset_type.coef0298) #15
  %170 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 33, i32 noundef 0, i32 noundef 1799, i32 noundef 192) #15
  tail call void @msleep(i32 noundef 75) #15
  %171 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 33, i32 noundef 0, i32 noundef 768, i32 noundef 45056) #15
  br i1 %169, label %260, label %261

172:                                              ; preds = %75, %75
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_determine_headset_type.coef0288) #15
  tail call void @msleep(i32 noundef 350) #15
  %173 = load ptr, ptr %2, align 8
  %174 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %175 = getelementptr inbounds %struct.alc_spec, ptr %173, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %175) #15
  %176 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 80) #15
  %177 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #15
  %178 = load ptr, ptr %2, align 8
  %179 = getelementptr inbounds %struct.alc_spec, ptr %178, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %179) #15
  %180 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %181 = and i32 %177, 112
  %182 = icmp eq i32 %181, 112
  br i1 %182, label %260, label %261

183:                                              ; preds = %75
  %184 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %185 = getelementptr inbounds %struct.alc_spec, ptr %69, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %185) #15
  %186 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 107) #15
  %187 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 54313) #15
  %188 = load ptr, ptr %2, align 8
  %189 = getelementptr inbounds %struct.alc_spec, ptr %188, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %189) #15
  %190 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  tail call void @msleep(i32 noundef 300) #15
  %191 = load ptr, ptr %2, align 8
  %192 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %193 = getelementptr inbounds %struct.alc_spec, ptr %191, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %193) #15
  %194 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 108) #15
  %195 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #15
  %196 = load ptr, ptr %2, align 8
  %197 = getelementptr inbounds %struct.alc_spec, ptr %196, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %197) #15
  %198 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %199 = and i32 %195, 28
  %200 = icmp eq i32 %199, 28
  br i1 %200, label %260, label %261

201:                                              ; preds = %75
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_determine_headset_type.coef0293) #15
  tail call void @msleep(i32 noundef 300) #15
  %202 = load ptr, ptr %2, align 8
  %203 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %204 = getelementptr inbounds %struct.alc_spec, ptr %202, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %204) #15
  %205 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 70) #15
  %206 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #15
  %207 = load ptr, ptr %2, align 8
  %208 = getelementptr inbounds %struct.alc_spec, ptr %207, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %208) #15
  %209 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %210 = and i32 %206, 112
  %211 = icmp eq i32 %210, 112
  br i1 %211, label %260, label %261

212:                                              ; preds = %75
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_determine_headset_type.coef0688) #15
  tail call void @msleep(i32 noundef 300) #15
  %213 = load ptr, ptr %2, align 8
  %214 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %215 = getelementptr inbounds %struct.alc_spec, ptr %213, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %215) #15
  %216 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 190) #15
  %217 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #15
  %218 = load ptr, ptr %2, align 8
  %219 = getelementptr inbounds %struct.alc_spec, ptr %218, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %219) #15
  %220 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %221 = and i32 %217, 7170
  %222 = icmp eq i32 %221, 7170
  br i1 %222, label %260, label %261

223:                                              ; preds = %75, %75, %75, %75, %75, %75
  %224 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 33, i32 noundef 0, i32 noundef 768, i32 noundef 45184) #15
  tail call void @msleep(i32 noundef 80) #15
  %225 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 33, i32 noundef 0, i32 noundef 1799, i32 noundef 0) #15
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc225_pre_hsmode) #15
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 103, i32 noundef 61440, i32 noundef 4096) #15
  %226 = load ptr, ptr %2, align 8
  %227 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %228 = getelementptr inbounds %struct.alc_spec, ptr %226, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %228) #15
  %229 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 69) #15
  %230 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #15
  %231 = load ptr, ptr %2, align 8
  %232 = getelementptr inbounds %struct.alc_spec, ptr %231, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %232) #15
  %233 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %234 = and i32 %230, 512
  %235 = icmp eq i32 %234, 0
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 69, i32 noundef 64512, i32 noundef 53248) #15
  %236 = select i1 %235, i32 256, i32 512
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 73, i32 noundef 768, i32 noundef %236) #15
  tail call void @msleep(i32 noundef 800) #15
  %237 = load ptr, ptr %2, align 8
  %238 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %239 = getelementptr inbounds %struct.alc_spec, ptr %237, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %239) #15
  %240 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 70) #15
  %241 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #15
  %242 = load ptr, ptr %2, align 8
  %243 = getelementptr inbounds %struct.alc_spec, ptr %242, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %243) #15
  %244 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %245 = and i32 %241, 240
  %246 = icmp eq i32 %245, 240
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 74, i32 noundef 448, i32 noundef 448) #15
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 74, i32 noundef 48, i32 noundef 48) #15
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 103, i32 noundef 61440, i32 noundef 12288) #15
  %247 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 33, i32 noundef 0, i32 noundef 1799, i32 noundef 64) #15
  tail call void @msleep(i32 noundef 80) #15
  %248 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 33, i32 noundef 0, i32 noundef 768, i32 noundef 45056) #15
  br i1 %246, label %260, label %261

249:                                              ; preds = %75
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_determine_headset_type.coef0255) #15
  tail call void @msleep(i32 noundef 300) #15
  %250 = load ptr, ptr %2, align 8
  %251 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %252 = getelementptr inbounds %struct.alc_spec, ptr %250, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %252) #15
  %253 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 70) #15
  %254 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #15
  %255 = load ptr, ptr %2, align 8
  %256 = getelementptr inbounds %struct.alc_spec, ptr %255, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %256) #15
  %257 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %258 = and i32 %254, 112
  %259 = icmp eq i32 %258, 112
  br i1 %259, label %260, label %261

260:                                              ; preds = %249, %223, %212, %201, %183, %172, %153, %135, %124, %78, %75
  br label %261

261:                                              ; preds = %260, %249, %223, %212, %201, %183, %172, %153, %135, %124, %78, %75
  %262 = phi i32 [ 1, %260 ], [ 2, %249 ], [ 2, %223 ], [ 2, %212 ], [ 2, %201 ], [ 2, %183 ], [ 2, %172 ], [ 2, %153 ], [ 2, %135 ], [ 2, %124 ], [ 2, %78 ], [ 2, %75 ]
  %263 = getelementptr inbounds %struct.alc_spec, ptr %69, i32 0, i32 19
  store i32 %262, ptr %263, align 8
  br label %264

264:                                              ; preds = %261, %74
  %265 = load i32, ptr %65, align 8
  br label %266

266:                                              ; preds = %264, %64
  %267 = phi i32 [ %265, %264 ], [ %66, %64 ]
  switch i32 %267, label %335 [
    i32 1, label %268
    i32 2, label %314
  ]

268:                                              ; preds = %266
  %269 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 7
  %270 = load i32, ptr %269, align 8
  switch i32 %270, label %335 [
    i32 283902549, label %271
    i32 283902512, label %272
    i32 283902518, label %272
    i32 283902550, label %272
    i32 283902516, label %273
    i32 283902580, label %273
    i32 283902612, label %273
    i32 283902515, label %282
    i32 283902595, label %282
    i32 283902616, label %283
    i32 283902598, label %296
    i32 283902600, label %296
    i32 283902610, label %297
    i32 283902611, label %298
    i32 283903592, label %299
    i32 283902485, label %300
    i32 283902501, label %300
    i32 283902597, label %300
    i32 283902613, label %300
    i32 283902601, label %300
    i32 283902617, label %300
    i32 283904103, label %313
  ]

271:                                              ; preds = %268
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_ctia.coef0255) #15
  br label %335

272:                                              ; preds = %268, %268, %268
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_ctia.coef0256) #15
  br label %335

273:                                              ; preds = %268, %268, %268
  %274 = load ptr, ptr %2, align 8
  %275 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %276 = getelementptr inbounds %struct.alc_spec, ptr %274, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %276) #15
  %277 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 69) #15
  %278 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 54921) #15
  %279 = load ptr, ptr %2, align 8
  %280 = getelementptr inbounds %struct.alc_spec, ptr %279, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %280) #15
  %281 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  br label %335

282:                                              ; preds = %268, %268
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_ctia.coef0233) #15
  br label %335

283:                                              ; preds = %268
  %284 = load ptr, ptr %2, align 8
  %285 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %286 = getelementptr inbounds %struct.alc_spec, ptr %284, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %286) #15
  %287 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 80) #15
  %288 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #15
  %289 = load ptr, ptr %2, align 8
  %290 = getelementptr inbounds %struct.alc_spec, ptr %289, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %290) #15
  %291 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %292 = and i32 %288, 4096
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %295, label %294

294:                                              ; preds = %283
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 142, i32 noundef 112, i32 noundef 32) #15
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 79, i32 noundef 64704, i32 noundef 54272) #15
  tail call void @msleep(i32 noundef 300) #15
  br label %335

295:                                              ; preds = %283
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 142, i32 noundef 112, i32 noundef 16) #15
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 79, i32 noundef 64704, i32 noundef 54272) #15
  tail call void @msleep(i32 noundef 300) #15
  br label %335

296:                                              ; preds = %268, %268
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 79, i32 noundef 64704, i32 noundef 54272) #15
  tail call void @msleep(i32 noundef 300) #15
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_ctia.coef0288) #15
  br label %335

297:                                              ; preds = %268
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_ctia.coef0292) #15
  br label %335

298:                                              ; preds = %268
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_ctia.coef0293) #15
  br label %335

299:                                              ; preds = %268
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_ctia.coef0688) #15
  br label %335

300:                                              ; preds = %268, %268, %268, %268, %268, %268
  %301 = load ptr, ptr %2, align 8
  %302 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %303 = getelementptr inbounds %struct.alc_spec, ptr %301, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %303) #15
  %304 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 69) #15
  %305 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #15
  %306 = load ptr, ptr %2, align 8
  %307 = getelementptr inbounds %struct.alc_spec, ptr %306, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %307) #15
  %308 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %309 = and i32 %305, 512
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %312, label %311

311:                                              ; preds = %300
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_ctia.coef0225_2) #15
  br label %335

312:                                              ; preds = %300
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_ctia.coef0225_1) #15
  br label %335

313:                                              ; preds = %268
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 87, i32 noundef 5, i32 noundef 16384, i32 noundef 0) #15
  br label %335

314:                                              ; preds = %266
  %315 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 7
  %316 = load i32, ptr %315, align 8
  switch i32 %316, label %335 [
    i32 283902549, label %317
    i32 283902512, label %318
    i32 283902518, label %318
    i32 283902550, label %318
    i32 283902516, label %319
    i32 283902580, label %319
    i32 283902612, label %319
    i32 283902515, label %328
    i32 283902595, label %328
    i32 283902616, label %329
    i32 283902598, label %330
    i32 283902600, label %330
    i32 283902610, label %331
    i32 283902611, label %332
    i32 283903592, label %333
    i32 283902485, label %334
    i32 283902501, label %334
    i32 283902597, label %334
    i32 283902613, label %334
    i32 283902601, label %334
    i32 283902617, label %334
  ]

317:                                              ; preds = %314
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_omtp.coef0255) #15
  br label %335

318:                                              ; preds = %314, %314, %314
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_omtp.coef0256) #15
  br label %335

319:                                              ; preds = %314, %314, %314
  %320 = load ptr, ptr %2, align 8
  %321 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %322 = getelementptr inbounds %struct.alc_spec, ptr %320, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %322) #15
  %323 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 69) #15
  %324 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 59017) #15
  %325 = load ptr, ptr %2, align 8
  %326 = getelementptr inbounds %struct.alc_spec, ptr %325, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %326) #15
  %327 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  br label %335

328:                                              ; preds = %314, %314
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_omtp.coef0233) #15
  br label %335

329:                                              ; preds = %314
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 142, i32 noundef 112, i32 noundef 16) #15
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 79, i32 noundef 64704, i32 noundef 58368) #15
  tail call void @msleep(i32 noundef 300) #15
  br label %335

330:                                              ; preds = %314, %314
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 79, i32 noundef 64704, i32 noundef 58368) #15
  tail call void @msleep(i32 noundef 300) #15
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_omtp.coef0288) #15
  br label %335

331:                                              ; preds = %314
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_omtp.coef0292) #15
  br label %335

332:                                              ; preds = %314
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_omtp.coef0293) #15
  br label %335

333:                                              ; preds = %314
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_omtp.coef0688) #15
  br label %335

334:                                              ; preds = %314, %314, %314, %314, %314, %314
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_omtp.coef0225) #15
  br label %335

335:                                              ; preds = %334, %333, %332, %331, %330, %329, %328, %319, %318, %317, %314, %313, %312, %311, %299, %298, %297, %296, %295, %294, %282, %273, %272, %271, %268, %266
  %336 = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 58
  %337 = load i64, ptr %336, align 4
  %338 = or i64 %337, 1
  store i64 %338, ptr %336, align 4
  br label %459

339:                                              ; preds = %37
  %340 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 17
  %341 = load i16, ptr %340, align 2
  %342 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 7
  %343 = load i32, ptr %342, align 8
  switch i32 %343, label %422 [
    i32 283902549, label %344
    i32 283902512, label %355
    i32 283902518, label %355
    i32 283902550, label %355
    i32 283902516, label %366
    i32 283902580, label %366
    i32 283902612, label %366
    i32 283902515, label %377
    i32 283902595, label %377
    i32 283902598, label %388
    i32 283902600, label %388
    i32 283902616, label %388
    i32 283902610, label %391
    i32 283902611, label %393
    i32 283904103, label %404
    i32 283902497, label %405
    i32 283903586, label %405
    i32 283903592, label %408
    i32 283902485, label %419
    i32 283902501, label %419
    i32 283902597, label %419
    i32 283902613, label %419
    i32 283902601, label %419
    i32 283902617, label %419
  ]

344:                                              ; preds = %339
  %345 = load ptr, ptr %2, align 8
  %346 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %347 = getelementptr inbounds %struct.alc_spec, ptr %345, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %347) #15
  %348 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 69) #15
  %349 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 50313) #15
  %350 = load ptr, ptr %2, align 8
  %351 = getelementptr inbounds %struct.alc_spec, ptr %350, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %351) #15
  %352 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %353 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext %19, i32 noundef 0, i1 noundef zeroext true) #15
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_mic_in.coef0255) #15
  %354 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext %341, i32 noundef 33, i1 noundef zeroext true) #15
  br label %422

355:                                              ; preds = %339, %339, %339
  %356 = load ptr, ptr %2, align 8
  %357 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %358 = getelementptr inbounds %struct.alc_spec, ptr %356, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %358) #15
  %359 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 69) #15
  %360 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 50313) #15
  %361 = load ptr, ptr %2, align 8
  %362 = getelementptr inbounds %struct.alc_spec, ptr %361, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %362) #15
  %363 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %364 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext %19, i32 noundef 0, i1 noundef zeroext true) #15
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_mic_in.coef0256) #15
  %365 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext %341, i32 noundef 33, i1 noundef zeroext true) #15
  br label %422

366:                                              ; preds = %339, %339, %339
  %367 = load ptr, ptr %2, align 8
  %368 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %369 = getelementptr inbounds %struct.alc_spec, ptr %367, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %369) #15
  %370 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 69) #15
  %371 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 18057) #15
  %372 = load ptr, ptr %2, align 8
  %373 = getelementptr inbounds %struct.alc_spec, ptr %372, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %373) #15
  %374 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %375 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext %19, i32 noundef 0, i1 noundef zeroext true) #15
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_mic_in.coef0274) #15
  %376 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext %341, i32 noundef 33, i1 noundef zeroext true) #15
  br label %422

377:                                              ; preds = %339, %339
  %378 = load ptr, ptr %2, align 8
  %379 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %380 = getelementptr inbounds %struct.alc_spec, ptr %378, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %380) #15
  %381 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 69) #15
  %382 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 50217) #15
  %383 = load ptr, ptr %2, align 8
  %384 = getelementptr inbounds %struct.alc_spec, ptr %383, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %384) #15
  %385 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %386 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext %19, i32 noundef 0, i1 noundef zeroext true) #15
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_mic_in.coef0233) #15
  %387 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext %341, i32 noundef 33, i1 noundef zeroext true) #15
  br label %422

388:                                              ; preds = %339, %339, %339
  %389 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext %19, i32 noundef 0, i1 noundef zeroext true) #15
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_mic_in.coef0288) #15
  %390 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext %341, i32 noundef 33, i1 noundef zeroext true) #15
  br label %422

391:                                              ; preds = %339
  %392 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext %19, i32 noundef 0, i1 noundef zeroext true) #15
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_mic_in.coef0292) #15
  br label %422

393:                                              ; preds = %339
  %394 = load ptr, ptr %2, align 8
  %395 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %396 = getelementptr inbounds %struct.alc_spec, ptr %394, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %396) #15
  %397 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 69) #15
  %398 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 50217) #15
  %399 = load ptr, ptr %2, align 8
  %400 = getelementptr inbounds %struct.alc_spec, ptr %399, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %400) #15
  %401 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %402 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext %19, i32 noundef 0, i1 noundef zeroext true) #15
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_mic_in.coef0293) #15
  %403 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext %341, i32 noundef 33, i1 noundef zeroext true) #15
  br label %422

404:                                              ; preds = %339
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 87, i32 noundef 5, i32 noundef 0, i32 noundef 16384) #15
  br label %405

405:                                              ; preds = %404, %339, %339
  %406 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext %19, i32 noundef 0, i1 noundef zeroext true) #15
  %407 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext %341, i32 noundef 33, i1 noundef zeroext true) #15
  br label %422

408:                                              ; preds = %339
  %409 = load ptr, ptr %2, align 8
  %410 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %411 = getelementptr inbounds %struct.alc_spec, ptr %409, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %411) #15
  %412 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 17) #15
  %413 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 1) #15
  %414 = load ptr, ptr %2, align 8
  %415 = getelementptr inbounds %struct.alc_spec, ptr %414, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %415) #15
  %416 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %417 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext %19, i32 noundef 0, i1 noundef zeroext true) #15
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_mic_in.coef0688) #15
  %418 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext %341, i32 noundef 33, i1 noundef zeroext true) #15
  br label %422

419:                                              ; preds = %339, %339, %339, %339, %339, %339
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc225_pre_hsmode) #15
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 69, i32 noundef 64512, i32 noundef 50176) #15
  %420 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext %19, i32 noundef 0, i1 noundef zeroext true) #15
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_mic_in.coef0225) #15
  %421 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext %341, i32 noundef 33, i1 noundef zeroext true) #15
  br label %422

422:                                              ; preds = %419, %408, %405, %393, %391, %388, %377, %366, %355, %344, %339
  %423 = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 58
  %424 = load i64, ptr %423, align 4
  %425 = and i64 %424, -2
  store i64 %425, ptr %423, align 4
  br label %459

426:                                              ; preds = %37
  %427 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 7
  %428 = load i32, ptr %427, align 8
  switch i32 %428, label %455 [
    i32 283902485, label %429
    i32 283902501, label %429
    i32 283902597, label %429
    i32 283902613, label %429
    i32 283902601, label %429
    i32 283902617, label %429
    i32 283902549, label %430
    i32 283902512, label %431
    i32 283902518, label %431
    i32 283902550, label %431
    i32 283902516, label %448
    i32 283902580, label %448
    i32 283902612, label %448
    i32 283902515, label %449
    i32 283902595, label %449
    i32 283902598, label %450
    i32 283902600, label %450
    i32 283902616, label %450
    i32 283902610, label %451
    i32 283902611, label %452
    i32 283903592, label %453
    i32 283904103, label %454
  ]

429:                                              ; preds = %426, %426, %426, %426, %426, %426
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc225_pre_hsmode) #15
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_default.coef0225) #15
  br label %455

430:                                              ; preds = %426
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_default.coef0255) #15
  br label %455

431:                                              ; preds = %426, %426, %426
  %432 = load ptr, ptr %2, align 8
  %433 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %434 = getelementptr inbounds %struct.alc_spec, ptr %432, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %434) #15
  %435 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 27) #15
  %436 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 3659) #15
  %437 = load ptr, ptr %2, align 8
  %438 = getelementptr inbounds %struct.alc_spec, ptr %437, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %438) #15
  %439 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  %440 = load ptr, ptr %2, align 8
  %441 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %442 = getelementptr inbounds %struct.alc_spec, ptr %440, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %442) #15
  %443 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 69) #15
  %444 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 49289) #15
  %445 = load ptr, ptr %2, align 8
  %446 = getelementptr inbounds %struct.alc_spec, ptr %445, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %446) #15
  %447 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  tail call void @msleep(i32 noundef 50) #15
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_default.coef0256) #15
  br label %455

448:                                              ; preds = %426, %426, %426
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_default.coef0274) #15
  br label %455

449:                                              ; preds = %426, %426
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_default.coef0233) #15
  br label %455

450:                                              ; preds = %426, %426, %426
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_default.coef0288) #15
  br label %455

451:                                              ; preds = %426
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_default.coef0292) #15
  br label %455

452:                                              ; preds = %426
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_default.coef0293) #15
  br label %455

453:                                              ; preds = %426
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc_headset_mode_default.coef0688) #15
  br label %455

454:                                              ; preds = %426
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 87, i32 noundef 5, i32 noundef 16384, i32 noundef 0) #15
  br label %455

455:                                              ; preds = %454, %453, %452, %451, %450, %449, %448, %431, %430, %429, %426
  %456 = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 58
  %457 = load i64, ptr %456, align 4
  %458 = or i64 %457, 1
  store i64 %458, ptr %456, align 4
  br label %459

459:                                              ; preds = %455, %422, %335, %59, %37
  br i1 %32, label %469, label %460

460:                                              ; preds = %459
  %461 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext %19, i32 noundef 192, i1 noundef zeroext true) #15
  %462 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 17
  %463 = load i16, ptr %462, align 2
  %464 = icmp eq i16 %463, 0
  %465 = icmp eq i16 %463, %19
  %466 = or i1 %464, %465
  br i1 %466, label %469, label %467

467:                                              ; preds = %460
  %468 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext %463, i32 noundef 32, i1 noundef zeroext true) #15
  br label %469

469:                                              ; preds = %467, %460, %459
  store i32 %33, ptr %34, align 4
  br label %470

470:                                              ; preds = %469, %31
  tail call void @snd_hda_gen_update_outputs(ptr noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc_update_headset_mode_hook(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #1 {
  tail call void @alc_update_headset_mode(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc_update_headset_jack_cb(ptr noundef %0, ptr noundef %1) #1 {
  tail call void @snd_hda_gen_hp_automute(ptr noundef %0, ptr noundef %1) #15
  tail call void @alc_update_headset_mode(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_gen_hp_automute(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc269_x101_hp_automute_hook(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void @msleep(i32 noundef 200) #15
  tail call void @snd_hda_gen_hp_automute(ptr noundef %0, ptr noundef %1) #15
  %5 = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 58
  %6 = load i64, ptr %5, align 4
  %7 = and i64 %6, 1
  %8 = icmp eq i64 %7, 0
  %9 = select i1 %8, i32 0, i32 36
  tail call void @msleep(i32 noundef 100) #15
  %10 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 24, i32 noundef 0, i32 noundef 1799, i32 noundef %9) #15
  tail call void @msleep(i32 noundef 500) #15
  %11 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 24, i32 noundef 0, i32 noundef 1799, i32 noundef %9) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_jack_set_gating_jack(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc283_hp_automute_hook(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void @msleep(i32 noundef 200) #15
  tail call void @snd_hda_gen_hp_automute(ptr noundef %0, ptr noundef %1) #15
  %5 = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 58
  %6 = load i64, ptr %5, align 4
  %7 = and i64 %6, 1
  %8 = icmp eq i64 %7, 0
  %9 = select i1 %8, i32 0, i32 36
  tail call void @msleep(i32 noundef 600) #15
  %10 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 25, i32 noundef 0, i32 noundef 1799, i32 noundef %9) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_apply_pincfgs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @asus_tx300_automute(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  tail call void @snd_hda_gen_update_outputs(ptr noundef %0) #15
  %4 = tail call i32 @snd_hda_jack_detect_state_mst(ptr noundef %0, i16 noundef zeroext 27, i32 noundef 0) #15
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 60
  %8 = load i64, ptr %7, align 8
  %9 = or i64 %8, 1048576
  store i64 %9, ptr %7, align 8
  br label %10

10:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_hda_jack_detect_enable_callback_mst(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_hda_find_mixer_ctl(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_override_conn_list(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @alc255_set_default_jack_type(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 8
  switch i32 %3, label %7 [
    i32 283902549, label %5
    i32 283902512, label %4
    i32 283902518, label %4
    i32 283902550, label %4
  ]

4:                                                ; preds = %1, %1, %1
  br label %5

5:                                                ; preds = %4, %1
  %6 = phi ptr [ @alc255_set_default_jack_type.alc256fw, %4 ], [ @alc255_set_default_jack_type.alc255fw, %1 ]
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull %6)
  br label %7

7:                                                ; preds = %5, %1
  tail call void @msleep(i32 noundef 30) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @alc_register_micmute_input_device(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @input_allocate_device() #15
  %5 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 30
  store ptr %4, ptr %5, align 8
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.344) #17
  br label %27

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 31
  store i8 -8, ptr %9, align 4
  store ptr @.str.345, ptr %4, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds %struct.input_dev, ptr %10, i32 0, i32 5
  store i32 2, ptr %11, align 8
  %12 = load ptr, ptr %5, align 8
  %13 = getelementptr inbounds %struct.input_dev, ptr %12, i32 0, i32 16
  store i32 1, ptr %13, align 8
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 15
  store i32 1, ptr %15, align 4
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds %struct.input_dev, ptr %16, i32 0, i32 17
  store ptr %9, ptr %17, align 4
  %18 = load i8, ptr %9, align 1
  %19 = zext i8 %18 to i32
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds %struct.input_dev, ptr %20, i32 0, i32 6
  tail call void @_set_bit(i32 noundef %19, ptr noundef %21) #15
  %22 = load ptr, ptr %5, align 8
  %23 = tail call i32 @input_register_device(ptr noundef %22) #15
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.346) #17
  %26 = load ptr, ptr %5, align 8
  tail call void @input_free_device(ptr noundef %26) #15
  store ptr null, ptr %5, align 8
  br label %27

27:                                               ; preds = %25, %8, %7
  %28 = phi i32 [ -12, %25 ], [ -12, %7 ], [ 0, %8 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpio2_mic_hotkey_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #1 {
  %3 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.alc_spec, ptr %4, i32 0, i32 30
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.alc_spec, ptr %4, i32 0, i32 31
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  tail call void @input_event(ptr noundef %6, i32 noundef 1, i32 noundef %9, i32 noundef 1) #15
  %10 = load ptr, ptr %5, align 8
  tail call void @input_event(ptr noundef %10, i32 noundef 0, i32 noundef 0, i32 noundef 0) #15
  %11 = load ptr, ptr %5, align 8
  %12 = load i8, ptr %7, align 4
  %13 = zext i8 %12 to i32
  tail call void @input_event(ptr noundef %11, i32 noundef 1, i32 noundef %13, i32 noundef 0) #15
  %14 = load ptr, ptr %5, align 8
  tail call void @input_event(ptr noundef %14, i32 noundef 0, i32 noundef 0, i32 noundef 0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_regmap_write_raw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc280_hp_gpio4_automute_hook(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void @snd_hda_gen_hp_automute(ptr noundef %0, ptr noundef %1) #15
  %5 = getelementptr inbounds %struct.alc_spec, ptr %4, i32 0, i32 7
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 58
  %8 = load i64, ptr %7, align 4
  %9 = and i64 %8, 1
  %10 = icmp eq i64 %9, 0
  %11 = icmp eq i32 %6, 0
  %12 = xor i1 %11, %10
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds %struct.alc_spec, ptr %13, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, -17
  %17 = select i1 %12, i32 16, i32 0
  %18 = or i32 %17, %16
  store i32 %18, ptr %14, align 8
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.alc_spec, ptr %21, i32 0, i32 5
  %23 = load i32, ptr %22, align 8
  %24 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1813, i32 noundef %23) #15
  br label %25

25:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc288_update_headset_jack_cb(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void @snd_hda_gen_hp_automute(ptr noundef %0, ptr noundef %1) #15
  tail call void @alc_update_headset_mode(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 58
  %6 = load i64, ptr %5, align 4
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, -65
  %11 = trunc i64 %6 to i32
  %12 = shl i32 %11, 6
  %13 = and i32 %12, 64
  %14 = or i32 %10, %13
  store i32 %14, ptr %8, align 8
  %15 = icmp eq i32 %9, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.alc_spec, ptr %17, i32 0, i32 5
  %19 = load i32, ptr %18, align 8
  %20 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1813, i32 noundef %19) #15
  br label %21

21:                                               ; preds = %16, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_codec_set_pin_target(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc_shutup_dell_xps13(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 33, i32 6
  %5 = load i16, ptr %4, align 8
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 33, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 33, i32 1
  %13 = load i16, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %7, %1
  %15 = phi i16 [ %13, %11 ], [ %5, %1 ], [ 0, %7 ]
  %16 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %15, i32 noundef 0, i32 noundef 768, i32 noundef 45184) #15
  tail call void @msleep(i32 noundef 20) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @alc_combo_jack_hp_jd_restart(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 8
  switch i32 %3, label %7 [
    i32 283902580, label %5
    i32 283902612, label %5
    i32 283902501, label %5
    i32 283902613, label %5
    i32 283902617, label %5
    i32 283902512, label %4
    i32 283902517, label %4
    i32 283902518, label %4
    i32 283902549, label %4
    i32 283902550, label %4
  ]

4:                                                ; preds = %1, %1, %1, %1, %1
  br label %5

5:                                                ; preds = %4, %1, %1, %1, %1, %1
  %6 = phi i32 [ 27, %4 ], [ 74, %1 ], [ 74, %1 ], [ 74, %1 ], [ 74, %1 ], [ 74, %1 ]
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef %6, i32 noundef 32768, i32 noundef 32768)
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef %6, i32 noundef 32768, i32 noundef 0)
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc_headset_btn_callback(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.hda_jack_callback, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 57344
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 0, i32 16384
  %8 = and i32 %4, 66304
  %9 = icmp eq i32 %8, 0
  %10 = or i32 %7, 8192
  %11 = select i1 %9, i32 %7, i32 %10
  %12 = and i32 %4, 58720256
  %13 = icmp eq i32 %12, 0
  %14 = or i32 %11, 4096
  %15 = select i1 %13, i32 %11, i32 %14
  %16 = and i32 %4, 7168
  %17 = icmp eq i32 %16, 0
  %18 = or i32 %15, 2048
  %19 = select i1 %17, i32 %15, i32 %18
  %20 = load i16, ptr %1, align 4
  tail call void @snd_hda_jack_set_button_state(ptr noundef %0, i16 noundef zeroext %20, i32 noundef %19) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_jack_bind_keymap(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_jack_set_button_state(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_jack_add_kctl_mst(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_jack_detectable(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc294_gx502_toggle_output(ptr noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = tail call i32 @snd_hda_jack_detect_state_mst(ptr noundef %0, i16 noundef zeroext 33, i32 noundef 0) #15
  %4 = icmp eq i32 %3, 1
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %8 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %8) #15
  %9 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 16) #15
  %10 = select i1 %4, i32 35360, i32 2592
  %11 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef %10) #15
  %12 = load ptr, ptr %5, align 8
  %13 = getelementptr inbounds %struct.alc_spec, ptr %12, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %13) #15
  %14 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc294_gu502_toggle_output(ptr noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = tail call i32 @snd_hda_jack_detect_state_mst(ptr noundef %0, i16 noundef zeroext 33, i32 noundef 0) #15
  %4 = icmp eq i32 %3, 1
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %8 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %8) #15
  %9 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 16) #15
  %10 = select i1 %4, i32 33824, i32 2592
  %11 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef %10) #15
  %12 = load ptr, ptr %5, align 8
  %13 = getelementptr inbounds %struct.alc_spec, ptr %12, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %13) #15
  %14 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @coef_mute_led_set(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.hda_codec, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.alc_spec, ptr %8, i32 0, i32 13
  %10 = getelementptr inbounds %struct.alc_spec, ptr %8, i32 0, i32 7
  %11 = load i32, ptr %10, align 8
  %12 = icmp ne i32 %11, 0
  %13 = icmp ne i32 %1, 0
  %14 = xor i1 %13, %12
  %15 = load i32, ptr %9, align 4
  %16 = getelementptr inbounds %struct.alc_spec, ptr %8, i32 0, i32 13, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.alc_spec, ptr %8, i32 0, i32 13, i32 2
  %19 = getelementptr inbounds %struct.alc_spec, ptr %8, i32 0, i32 13, i32 3
  %20 = select i1 %14, ptr %18, ptr %19
  %21 = load i32, ptr %20, align 4
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %6, i16 noundef zeroext 32, i32 noundef %15, i32 noundef %17, i32 noundef %21) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @coef_micmute_led_set(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.hda_codec, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.alc_spec, ptr %8, i32 0, i32 14
  %10 = getelementptr inbounds %struct.alc_spec, ptr %8, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = icmp ne i32 %1, 0
  %14 = xor i1 %13, %12
  %15 = load i32, ptr %9, align 4
  %16 = getelementptr inbounds %struct.alc_spec, ptr %8, i32 0, i32 14, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.alc_spec, ptr %8, i32 0, i32 14, i32 2
  %19 = getelementptr inbounds %struct.alc_spec, ptr %8, i32 0, i32 14, i32 3
  %20 = select i1 %14, ptr %18, ptr %19
  %21 = load i32, ptr %20, align 4
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %6, i16 noundef zeroext 32, i32 noundef %15, i32 noundef %17, i32 noundef %21) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc274_hp_envy_pcm_hook(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2, i32 noundef %3) #1 {
  switch i32 %3, label %25 [
    i32 1, label %5
    i32 2, label %12
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %8, align 8
  %10 = or i32 %9, 4
  store i32 %10, ptr %8, align 8
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %25, label %19

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.alc_spec, ptr %14, i32 0, i32 5
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, -5
  store i32 %17, ptr %15, align 8
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %12, %5
  %20 = phi ptr [ %6, %5 ], [ %13, %12 ]
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.alc_spec, ptr %21, i32 0, i32 5
  %23 = load i32, ptr %22, align 8
  %24 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1813, i32 noundef %23) #15
  br label %25

25:                                               ; preds = %19, %12, %5, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_add_verbs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @comp_match_dev_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi ptr [ %7, %6 ], [ %4, %2 ]
  %10 = tail call i32 @strcmp(ptr noundef %9, ptr noundef %1)
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_master_add_with_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc287_legion_16achg6_playback_hook(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, i32 noundef %3) #1 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = icmp eq i32 %3, 1
  br i1 %8, label %9, label %54

9:                                                ; preds = %4
  %10 = getelementptr %struct.alc_spec, ptr %7, i32 0, i32 33, i32 0, i32 1
  %11 = tail call i32 @strcmp(ptr noundef %10, ptr noundef nonnull dereferenceable(30) @.str.359) #15
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = getelementptr %struct.alc_spec, ptr %7, i32 0, i32 33, i32 1, i32 1
  %15 = tail call i32 @strcmp(ptr noundef %14, ptr noundef nonnull dereferenceable(30) @.str.359) #15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = getelementptr %struct.alc_spec, ptr %7, i32 0, i32 33, i32 2, i32 1
  %19 = tail call i32 @strcmp(ptr noundef %18, ptr noundef nonnull dereferenceable(30) @.str.359) #15
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr %struct.alc_spec, ptr %7, i32 0, i32 33, i32 3, i32 1
  %23 = tail call i32 @strcmp(ptr noundef %22, ptr noundef nonnull dereferenceable(30) @.str.359) #15
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21, %17, %13, %9
  %26 = phi i32 [ 2, %17 ], [ 1, %13 ], [ 0, %9 ], [ 3, %21 ]
  %27 = getelementptr %struct.alc_spec, ptr %7, i32 0, i32 33, i32 %26
  %28 = getelementptr %struct.alc_spec, ptr %7, i32 0, i32 33, i32 %26, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %27, align 4
  %31 = call i32 %29(ptr noundef %30, i32 noundef 0, ptr noundef null, i32 noundef 1, ptr noundef nonnull %5) #15
  br label %32

32:                                               ; preds = %25, %21
  store i32 1, ptr %5, align 4
  %33 = call i32 @strcmp(ptr noundef %10, ptr noundef nonnull dereferenceable(30) @.str.360) #15
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %32
  %36 = getelementptr %struct.alc_spec, ptr %7, i32 0, i32 33, i32 1, i32 1
  %37 = call i32 @strcmp(ptr noundef %36, ptr noundef nonnull dereferenceable(30) @.str.360) #15
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = getelementptr %struct.alc_spec, ptr %7, i32 0, i32 33, i32 2, i32 1
  %41 = call i32 @strcmp(ptr noundef %40, ptr noundef nonnull dereferenceable(30) @.str.360) #15
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = getelementptr %struct.alc_spec, ptr %7, i32 0, i32 33, i32 3, i32 1
  %45 = call i32 @strcmp(ptr noundef %44, ptr noundef nonnull dereferenceable(30) @.str.360) #15
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43, %39, %35, %32
  %48 = phi i32 [ 2, %39 ], [ 1, %35 ], [ 0, %32 ], [ 3, %43 ]
  %49 = getelementptr %struct.alc_spec, ptr %7, i32 0, i32 33, i32 %48
  %50 = getelementptr %struct.alc_spec, ptr %7, i32 0, i32 33, i32 %48, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = load ptr, ptr %49, align 4
  %53 = call i32 %51(ptr noundef %52, i32 noundef 0, ptr noundef null, i32 noundef 1, ptr noundef nonnull %5) #15
  br label %54

54:                                               ; preds = %47, %43, %4
  %55 = load ptr, ptr %6, align 8
  %56 = getelementptr %struct.alc_spec, ptr %55, i32 0, i32 33, i32 0
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = getelementptr %struct.alc_spec, ptr %55, i32 0, i32 33, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  call void %61(ptr noundef nonnull %57, i32 noundef %3) #15
  br label %62

62:                                               ; preds = %59, %54
  %63 = getelementptr %struct.alc_spec, ptr %55, i32 0, i32 33, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = getelementptr %struct.alc_spec, ptr %55, i32 0, i32 33, i32 1, i32 2
  %68 = load ptr, ptr %67, align 4
  call void %68(ptr noundef nonnull %64, i32 noundef %3) #15
  br label %69

69:                                               ; preds = %66, %62
  %70 = getelementptr %struct.alc_spec, ptr %55, i32 0, i32 33, i32 2
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = getelementptr %struct.alc_spec, ptr %55, i32 0, i32 33, i32 2, i32 2
  %75 = load ptr, ptr %74, align 4
  call void %75(ptr noundef nonnull %71, i32 noundef %3) #15
  br label %76

76:                                               ; preds = %73, %69
  %77 = getelementptr %struct.alc_spec, ptr %55, i32 0, i32 33, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = getelementptr %struct.alc_spec, ptr %55, i32 0, i32 33, i32 3, i32 2
  %82 = load ptr, ptr %81, align 4
  call void %82(ptr noundef nonnull %78, i32 noundef %3) #15
  br label %83

83:                                               ; preds = %80, %76
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_match_add_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @comp_bind(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 33
  %5 = tail call i32 @component_bind_all(ptr noundef %0, ptr noundef %4) #15
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @comp_unbind(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 33
  tail call void @component_unbind_all(ptr noundef %0, ptr noundef %4) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_bind_all(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_unbind_all(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @comp_generic_playback_hook(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, i32 noundef %3) #1 {
  %5 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr %struct.alc_spec, ptr %6, i32 0, i32 33, i32 0
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr %struct.alc_spec, ptr %6, i32 0, i32 33, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  tail call void %12(ptr noundef nonnull %8, i32 noundef %3) #15
  br label %13

13:                                               ; preds = %10, %4
  %14 = getelementptr %struct.alc_spec, ptr %6, i32 0, i32 33, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr %struct.alc_spec, ptr %6, i32 0, i32 33, i32 1, i32 2
  %19 = load ptr, ptr %18, align 4
  tail call void %19(ptr noundef nonnull %15, i32 noundef %3) #15
  br label %20

20:                                               ; preds = %17, %13
  %21 = getelementptr %struct.alc_spec, ptr %6, i32 0, i32 33, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = getelementptr %struct.alc_spec, ptr %6, i32 0, i32 33, i32 2, i32 2
  %26 = load ptr, ptr %25, align 4
  tail call void %26(ptr noundef nonnull %22, i32 noundef %3) #15
  br label %27

27:                                               ; preds = %24, %20
  %28 = getelementptr %struct.alc_spec, ptr %6, i32 0, i32 33, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = getelementptr %struct.alc_spec, ptr %6, i32 0, i32 33, i32 3, i32 2
  %33 = load ptr, ptr %32, align 4
  tail call void %33(ptr noundef nonnull %29, i32 noundef %3) #15
  br label %34

34:                                               ; preds = %31, %27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_pci_quirk_lookup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @alc_parse_auto_config(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.hda_gen_spec, ptr %5, i32 0, i32 33
  %7 = getelementptr inbounds %struct.alc_spec, ptr %5, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @snd_hda_parse_pin_defcfg(ptr noundef %0, ptr noundef %6, ptr noundef %1, i32 noundef %8) #15
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %181, label %11

11:                                               ; preds = %3
  %12 = icmp eq ptr %2, null
  br i1 %12, label %177, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds %struct.alc_spec, ptr %14, i32 0, i32 1, i32 5
  %16 = load i8, ptr %15, align 8
  %17 = and i8 %16, 16
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.alc_spec, ptr %14, i32 0, i32 1
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %171, label %96

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.hda_bus, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 65535
  %33 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 10
  %34 = load i16, ptr %33, align 2
  %35 = trunc i32 %31 to i16
  %36 = icmp eq i16 %34, %35
  %37 = and i32 %31, 1
  %38 = icmp eq i32 %37, 0
  %39 = or i1 %36, %38
  br i1 %39, label %40, label %96

40:                                               ; preds = %29, %23
  %41 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 7
  %42 = load i32, ptr %41, align 8
  %43 = icmp eq i32 %42, 283902560
  %44 = select i1 %43, i16 23, i16 29
  %45 = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %0, i16 noundef zeroext %44) #15
  %46 = and i32 %45, -1073741823
  %47 = icmp eq i32 %46, 1073741825
  br i1 %47, label %48, label %171

48:                                               ; preds = %40
  %49 = lshr i32 %45, 1
  %50 = and i32 %49, 1
  %51 = lshr i32 %45, 2
  %52 = and i32 %51, 1
  %53 = add nuw nsw i32 %52, %50
  %54 = lshr i32 %45, 3
  %55 = and i32 %54, 1
  %56 = add nuw nsw i32 %53, %55
  %57 = lshr i32 %45, 4
  %58 = and i32 %57, 1
  %59 = add nuw nsw i32 %56, %58
  %60 = lshr i32 %45, 5
  %61 = and i32 %60, 1
  %62 = add nuw nsw i32 %59, %61
  %63 = lshr i32 %45, 6
  %64 = and i32 %63, 1
  %65 = add nuw nsw i32 %62, %64
  %66 = lshr i32 %45, 7
  %67 = and i32 %66, 1
  %68 = add nuw nsw i32 %65, %67
  %69 = lshr i32 %45, 8
  %70 = and i32 %69, 1
  %71 = add nuw nsw i32 %68, %70
  %72 = lshr i32 %45, 9
  %73 = and i32 %72, 1
  %74 = add nuw nsw i32 %71, %73
  %75 = lshr i32 %45, 10
  %76 = and i32 %75, 1
  %77 = add nuw nsw i32 %74, %76
  %78 = lshr i32 %45, 11
  %79 = and i32 %78, 1
  %80 = add nuw nsw i32 %77, %79
  %81 = lshr i32 %45, 12
  %82 = and i32 %81, 1
  %83 = add nuw nsw i32 %80, %82
  %84 = lshr i32 %45, 13
  %85 = and i32 %84, 1
  %86 = add nuw nsw i32 %83, %85
  %87 = lshr i32 %45, 14
  %88 = and i32 %87, 1
  %89 = add nuw nsw i32 %86, %88
  %90 = lshr i32 %45, 15
  %91 = and i32 %90, 1
  %92 = add nuw nsw i32 %89, %91
  %93 = lshr i32 %45, 16
  %94 = and i32 %93, 15
  %95 = icmp eq i32 %94, %92
  br i1 %95, label %96, label %171

96:                                               ; preds = %48, %29, %19
  %97 = phi i32 [ %21, %19 ], [ %45, %48 ], [ %32, %29 ]
  %98 = getelementptr inbounds %struct.alc_spec, ptr %14, i32 0, i32 23
  %99 = load i32, ptr %98, align 8
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %138

101:                                              ; preds = %96
  %102 = lshr i32 %97, 3
  %103 = and i32 %102, 7
  switch i32 %103, label %137 [
    i32 1, label %104
    i32 3, label %115
    i32 7, label %126
  ]

104:                                              ; preds = %101
  %105 = load ptr, ptr %4, align 8
  %106 = getelementptr inbounds %struct.alc_spec, ptr %105, i32 0, i32 3
  %107 = load i32, ptr %106, align 8
  %108 = or i32 %107, 1
  store i32 %108, ptr %106, align 8
  %109 = getelementptr inbounds %struct.alc_spec, ptr %105, i32 0, i32 4
  %110 = load i32, ptr %109, align 4
  %111 = or i32 %110, 1
  store i32 %111, ptr %109, align 4
  %112 = getelementptr inbounds %struct.alc_spec, ptr %105, i32 0, i32 5
  %113 = load i32, ptr %112, align 8
  %114 = or i32 %113, 1
  store i32 %114, ptr %112, align 8
  br label %138

115:                                              ; preds = %101
  %116 = load ptr, ptr %4, align 8
  %117 = getelementptr inbounds %struct.alc_spec, ptr %116, i32 0, i32 3
  %118 = load i32, ptr %117, align 8
  %119 = or i32 %118, 2
  store i32 %119, ptr %117, align 8
  %120 = getelementptr inbounds %struct.alc_spec, ptr %116, i32 0, i32 4
  %121 = load i32, ptr %120, align 4
  %122 = or i32 %121, 2
  store i32 %122, ptr %120, align 4
  %123 = getelementptr inbounds %struct.alc_spec, ptr %116, i32 0, i32 5
  %124 = load i32, ptr %123, align 8
  %125 = or i32 %124, 2
  store i32 %125, ptr %123, align 8
  br label %138

126:                                              ; preds = %101
  %127 = load ptr, ptr %4, align 8
  %128 = getelementptr inbounds %struct.alc_spec, ptr %127, i32 0, i32 3
  %129 = load i32, ptr %128, align 8
  %130 = or i32 %129, 3
  store i32 %130, ptr %128, align 8
  %131 = getelementptr inbounds %struct.alc_spec, ptr %127, i32 0, i32 4
  %132 = load i32, ptr %131, align 4
  %133 = or i32 %132, 3
  store i32 %133, ptr %131, align 4
  %134 = getelementptr inbounds %struct.alc_spec, ptr %127, i32 0, i32 5
  %135 = load i32, ptr %134, align 8
  %136 = or i32 %135, 3
  store i32 %136, ptr %134, align 8
  br label %138

137:                                              ; preds = %101
  store i32 2, ptr %98, align 8
  br label %138

138:                                              ; preds = %137, %126, %115, %104, %96
  %139 = and i32 %97, 32768
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %177, label %141

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.hda_gen_spec, ptr %14, i32 0, i32 33, i32 6
  %143 = load i16, ptr %142, align 8
  %144 = icmp eq i16 %143, 0
  br i1 %144, label %145, label %177

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.hda_gen_spec, ptr %14, i32 0, i32 33, i32 5
  %147 = load i32, ptr %146, align 4
  %148 = icmp eq i32 %147, 2
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.hda_gen_spec, ptr %14, i32 0, i32 33, i32 1
  %151 = load i16, ptr %150, align 4
  %152 = icmp eq i16 %151, 0
  br i1 %152, label %153, label %177

153:                                              ; preds = %149, %145
  %154 = lshr i32 %97, 11
  %155 = and i32 %154, 3
  %156 = getelementptr i16, ptr %2, i32 %155
  %157 = load i16, ptr %156, align 2
  %158 = getelementptr inbounds %struct.hda_gen_spec, ptr %14, i32 0, i32 33
  %159 = getelementptr inbounds %struct.hda_gen_spec, ptr %14, i32 0, i32 33, i32 1
  %160 = load i32, ptr %158, align 8
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %167, %153
  %163 = phi i32 [ %168, %167 ], [ 0, %153 ]
  %164 = getelementptr i16, ptr %159, i32 %163
  %165 = load i16, ptr %164, align 2
  %166 = icmp eq i16 %165, %157
  br i1 %166, label %177, label %167

167:                                              ; preds = %162
  %168 = add nuw nsw i32 %163, 1
  %169 = icmp eq i32 %168, %160
  br i1 %169, label %170, label %162

170:                                              ; preds = %167, %153
  store i16 %157, ptr %142, align 8
  br label %177

171:                                              ; preds = %48, %40, %19
  %172 = load ptr, ptr %4, align 8
  %173 = getelementptr inbounds %struct.alc_spec, ptr %172, i32 0, i32 23
  %174 = load i32, ptr %173, align 8
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  store i32 2, ptr %173, align 8
  br label %177

177:                                              ; preds = %176, %171, %170, %162, %149, %141, %138, %11
  %178 = tail call i32 @snd_hda_gen_parse_auto_config(ptr noundef %0, ptr noundef %6) #15
  %179 = icmp slt i32 %178, 0
  %180 = select i1 %179, i32 %178, i32 1
  br label %181

181:                                              ; preds = %177, %3
  %182 = phi i32 [ %9, %3 ], [ %180, %177 ]
  ret i32 %182
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_parse_pin_defcfg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_parse_auto_config(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_hda_gen_add_kctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_volume_info(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_volume_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_volume_put(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_tlv(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_switch_info(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_switch_get_beep(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_switch_put_beep(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc_eapd_shutup(ptr noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 18
  %6 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 17
  %7 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 14
  br label %8

8:                                                ; preds = %35, %1
  %9 = phi i16 [ 15, %1 ], [ %37, %35 ]
  %10 = phi ptr [ @alc_auto_setup_eapd.pins, %1 ], [ %36, %35 ]
  %11 = zext i16 %9 to i32
  %12 = load i16, ptr %5, align 4
  %13 = zext i16 %12 to i32
  %14 = icmp ugt i16 %12, %9
  br i1 %14, label %35, label %15

15:                                               ; preds = %8
  %16 = load i32, ptr %6, align 8
  %17 = add i32 %16, %13
  %18 = icmp ugt i32 %17, %11
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = load ptr, ptr %7, align 4
  %21 = sub nsw i32 %11, %13
  %22 = getelementptr i32, ptr %20, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 15728640
  %25 = icmp eq i32 %24, 4194304
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !annotation !8
  %27 = call i32 @_snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %9, i32 noundef 12, ptr noundef nonnull %2) #15
  %28 = load i32, ptr %2, align 4
  %29 = icmp sgt i32 %27, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  %30 = and i32 %28, 65536
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %9, i32 noundef 0, i32 noundef 1804, i32 noundef 0) #15
  br label %35

35:                                               ; preds = %33, %26, %19, %15, %8
  %36 = getelementptr i16, ptr %10, i32 1
  %37 = load i16, ptr %36, align 2
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %8

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.alc_spec, ptr %4, i32 0, i32 25
  %41 = load i8, ptr %40, align 8
  %42 = and i8 %41, 2
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  call void @msleep(i32 noundef 200) #15
  br label %45

45:                                               ; preds = %44, %39
  call fastcc void @alc_shutup_pins(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @alc_fixup_gpio1(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = or i32 %9, 1
  store i32 %10, ptr %8, align 8
  %11 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 1
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = or i32 %15, 1
  store i32 %16, ptr %14, align 8
  br label %17

17:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc260_fixup_gpio1_toggle(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 1
  br i1 %4, label %5, label %24

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hda_gen_spec, ptr %7, i32 0, i32 77
  store ptr @alc260_gpio1_automute, ptr %8, align 4
  %9 = getelementptr inbounds %struct.hda_gen_spec, ptr %7, i32 0, i32 58
  %10 = load i64, ptr %9, align 4
  %11 = or i64 %10, 160
  store i64 %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.hda_gen_spec, ptr %7, i32 0, i32 33, i32 6
  store i16 15, ptr %12, align 8
  %13 = tail call ptr @snd_hda_jack_detect_enable_callback_mst(ptr noundef %0, i16 noundef zeroext 15, i32 noundef 0, ptr noundef nonnull @snd_hda_gen_hp_automute) #15
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds %struct.alc_spec, ptr %14, i32 0, i32 3
  %16 = load i32, ptr %15, align 8
  %17 = or i32 %16, 1
  store i32 %17, ptr %15, align 8
  %18 = getelementptr inbounds %struct.alc_spec, ptr %14, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = or i32 %19, 1
  store i32 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.alc_spec, ptr %14, i32 0, i32 5
  %22 = load i32, ptr %21, align 8
  %23 = or i32 %22, 1
  store i32 %23, ptr %21, align 8
  br label %24

24:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc260_fixup_kn1(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  tail call void @snd_hda_apply_pincfgs(ptr noundef %0, ptr noundef nonnull @alc260_fixup_kn1.pincfgs) #15
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 23
  store i32 1, ptr %8, align 8
  br label %9

9:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @alc260_fixup_fsc_s7020(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 23
  store i32 1, ptr %8, align 8
  br label %9

9:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @alc260_fixup_fsc_s7020_jwse(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hda_gen_spec, ptr %7, i32 0, i32 58
  %9 = load i64, ptr %8, align 4
  %10 = or i64 %9, 4295229440
  store i64 %10, ptr %8, align 4
  br label %11

11:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc260_gpio1_automute(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 58
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %struct.alc_spec, ptr %3, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, -2
  %9 = trunc i64 %5 to i32
  %10 = and i32 %9, 1
  %11 = or i32 %8, %10
  store i32 %11, ptr %6, align 8
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct.alc_spec, ptr %14, i32 0, i32 5
  %16 = load i32, ptr %15, align 8
  %17 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1813, i32 noundef %16) #15
  br label %18

18:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @alc_fixup_no_depop_delay(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %2, 1
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 25
  %9 = load i8, ptr %8, align 8
  %10 = or i8 %9, 2
  store i8 %10, ptr %8, align 8
  %11 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 39
  store i32 0, ptr %11, align 4
  br label %12

12:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @query_amp_caps(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_switch_get(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alc268_beep_switch_put(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.hda_codec, ptr %4, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %5) #15
  %6 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, -256
  %9 = or i32 %8, 15
  store i32 %9, ptr %6, align 4
  %10 = tail call i32 @snd_hda_mixer_amp_switch_put(ptr noundef %0, ptr noundef %1) #15
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = or i32 %8, 16
  store i32 %13, ptr %6, align 4
  %14 = tail call i32 @snd_hda_mixer_amp_switch_put(ptr noundef %0, ptr noundef %1) #15
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi i32 [ %14, %12 ], [ %10, %2 ]
  store i32 %7, ptr %6, align 4
  tail call void @mutex_unlock(ptr noundef %5) #15
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_switch_put(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc668_restore_default_value(ptr noundef %0) #1 {
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc668_coefs)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc662_fixup_led_gpio1(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = or i32 %9, 1
  store i32 %10, ptr %8, align 8
  %11 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 1
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = or i32 %15, 1
  store i32 %16, ptr %14, align 8
  %17 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 11
  store i32 1, ptr %17, align 4
  %18 = tail call i32 @snd_hda_gen_add_mute_led_cdev(ptr noundef %0, ptr noundef nonnull @gpio_mute_led_set) #15
  %19 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 7
  store i32 1, ptr %19, align 8
  %20 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 34
  store ptr @gpio_led_power_filter, ptr %20, align 8
  br label %21

21:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc272_fixup_mario(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = tail call i32 @snd_hda_override_amp_caps(ptr noundef %0, i16 noundef zeroext 2, i32 noundef 1, i32 noundef 211771) #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.555) #17
  br label %9

9:                                                ; preds = %8, %5, %3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @alc_fixup_no_jack_detect(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #7 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 30
  %7 = load i32, ptr %6, align 8
  %8 = or i32 %7, 1024
  store i32 %8, ptr %6, align 8
  br label %9

9:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc_fixup_headset_mode_alc662(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %33

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, 4
  store i32 %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.hda_gen_spec, ptr %7, i32 0, i32 58
  %12 = load i64, ptr %11, align 4
  %13 = or i64 %12, 262144
  store i64 %13, ptr %11, align 4
  %14 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 27, i32 noundef 0, i32 noundef 768, i32 noundef 28672) #15
  %15 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 18
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  %18 = icmp ugt i16 %16, 27
  br i1 %18, label %34, label %19

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 17
  %21 = load i32, ptr %20, align 8
  %22 = add i32 %21, %17
  %23 = icmp ugt i32 %22, 27
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 14
  %26 = load ptr, ptr %25, align 4
  %27 = sub nsw i32 27, %17
  %28 = getelementptr i32, ptr %26, i32 %27
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, -3
  %31 = sub nsw i32 27, %17
  %32 = getelementptr i32, ptr %26, i32 %31
  store i32 %30, ptr %32, align 4
  br label %34

33:                                               ; preds = %3
  tail call void @alc_fixup_headset_mode(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  br label %34

34:                                               ; preds = %33, %24, %19, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc_fixup_headset_mode_alc668(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %9 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %9) #15
  %10 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 196) #15
  %11 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 32768) #15
  %12 = load ptr, ptr %6, align 8
  %13 = getelementptr inbounds %struct.alc_spec, ptr %12, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %13) #15
  %14 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 194, i32 noundef -255, i32 noundef 0)
  %15 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext 24, i32 noundef 0, i1 noundef zeroext true) #15
  br label %16

16:                                               ; preds = %5, %3
  tail call void @alc_fixup_headset_mode(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @alc_fixup_bass_chmap(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %2, 3
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hda_gen_spec, ptr %7, i32 0, i32 32
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.hda_pcm, ptr %9, i32 0, i32 1, i32 0, i32 7
  store ptr @asus_pcm_2_1_chmaps, ptr %10, align 4
  br label %11

11:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @alc662_fixup_usi_headset_mic(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, 4
  store i32 %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.hda_gen_spec, ptr %7, i32 0, i32 81
  store ptr @alc662_usi_automute_hook, ptr %11, align 4
  br label %12

12:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc662_fixup_aspire_ethos_hp(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = tail call zeroext i1 @is_jack_detectable(ptr noundef %0, i16 noundef zeroext 27) #15
  br i1 %4, label %5, label %25

5:                                                ; preds = %3
  switch i32 %2, label %25 [
    i32 0, label %6
    i32 2, label %19
  ]

6:                                                ; preds = %5
  %7 = tail call ptr @snd_hda_jack_detect_enable_callback_mst(ptr noundef %0, i16 noundef zeroext 27, i32 noundef 0, ptr noundef nonnull @alc662_aspire_ethos_mute_speakers) #15
  %8 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.alc_spec, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 8
  %12 = or i32 %11, 2
  store i32 %12, ptr %10, align 8
  %13 = getelementptr inbounds %struct.alc_spec, ptr %9, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, 2
  store i32 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.alc_spec, ptr %9, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = or i32 %17, 2
  store i32 %18, ptr %16, align 8
  br label %25

19:                                               ; preds = %5
  %20 = tail call i32 @snd_hda_jack_detect_state_mst(ptr noundef %0, i16 noundef zeroext 27, i32 noundef 0) #15
  %21 = icmp eq i32 %20, 1
  %22 = select i1 %21, i32 0, i32 64
  %23 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext 21, i32 noundef %22, i1 noundef zeroext true) #15
  %24 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext 24, i32 noundef %22, i1 noundef zeroext true) #15
  br label %25

25:                                               ; preds = %19, %6, %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc671_fixup_hp_headset_mic2(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  switch i32 %2, label %21 [
    i32 0, label %4
    i32 2, label %11
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 18
  store i16 0, ptr %7, align 2
  %8 = getelementptr inbounds %struct.alc_spec, ptr %6, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, 4
  store i32 %10, ptr %8, align 4
  tail call void @snd_hda_apply_pincfgs(ptr noundef %0, ptr noundef nonnull @alc671_fixup_hp_headset_mic2.pincfgs) #15
  br label %21

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %13 = load ptr, ptr %12, align 8
  %14 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #15
  %15 = getelementptr inbounds %struct.alc_spec, ptr %13, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %15) #15
  %16 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1280, i32 noundef 25) #15
  %17 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 0, i32 noundef 1024, i32 noundef 41044) #15
  %18 = load ptr, ptr %12, align 8
  %19 = getelementptr inbounds %struct.alc_spec, ptr %18, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %19) #15
  %20 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #15
  br label %21

21:                                               ; preds = %11, %4, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @alc897_fixup_lenovo_headset_mic(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hda_gen_spec, ptr %7, i32 0, i32 81
  store ptr @alc897_hp_automute_hook, ptr %8, align 4
  br label %9

9:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @gpio_led_power_filter(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i32 noundef %2) #13 {
  %4 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 5
  %5 = load i16, ptr %4, align 4
  %6 = icmp eq i16 %5, %1
  %7 = icmp eq i32 %2, 3
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.alc_spec, ptr %11, i32 0, i32 5
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %3
  br label %16

16:                                               ; preds = %15, %9
  %17 = phi i32 [ %2, %15 ], [ 0, %9 ]
  ret i32 %17
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc662_usi_automute_hook(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void @msleep(i32 noundef 200) #15
  tail call void @snd_hda_gen_hp_automute(ptr noundef %0, ptr noundef %1) #15
  %5 = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 58
  %6 = load i64, ptr %5, align 4
  %7 = and i64 %6, 1
  %8 = icmp eq i64 %7, 0
  %9 = select i1 %8, i32 0, i32 36
  tail call void @msleep(i32 noundef 100) #15
  %10 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 25, i32 noundef 0, i32 noundef 1799, i32 noundef %9) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc662_aspire_ethos_mute_speakers(ptr noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = tail call i32 @snd_hda_jack_detect_state_mst(ptr noundef %0, i16 noundef zeroext 27, i32 noundef 0) #15
  %4 = icmp eq i32 %3, 1
  %5 = select i1 %4, i32 0, i32 64
  %6 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext 21, i32 noundef %5, i1 noundef zeroext true) #15
  %7 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext 24, i32 noundef %5, i1 noundef zeroext true) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc897_hp_automute_hook(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void @snd_hda_gen_hp_automute(ptr noundef %0, ptr noundef %1) #15
  %5 = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 58
  %6 = load i64, ptr %5, align 4
  %7 = and i64 %6, 1
  %8 = icmp eq i64 %7, 0
  %9 = select i1 %8, i32 192, i32 197
  %10 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext 27, i32 noundef 0, i32 noundef 1799, i32 noundef %9) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc_power_eapd(ptr noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 18
  %4 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 17
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 14
  br label %6

6:                                                ; preds = %33, %1
  %7 = phi i16 [ 15, %1 ], [ %35, %33 ]
  %8 = phi ptr [ @alc_auto_setup_eapd.pins, %1 ], [ %34, %33 ]
  %9 = zext i16 %7 to i32
  %10 = load i16, ptr %3, align 4
  %11 = zext i16 %10 to i32
  %12 = icmp ugt i16 %10, %7
  br i1 %12, label %33, label %13

13:                                               ; preds = %6
  %14 = load i32, ptr %4, align 8
  %15 = add i32 %14, %11
  %16 = icmp ugt i32 %15, %9
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = load ptr, ptr %5, align 4
  %19 = sub nsw i32 %9, %11
  %20 = getelementptr i32, ptr %18, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 15728640
  %23 = icmp eq i32 %22, 4194304
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !annotation !8
  %25 = call i32 @_snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %7, i32 noundef 12, ptr noundef nonnull %2) #15
  %26 = load i32, ptr %2, align 4
  %27 = icmp sgt i32 %25, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  %28 = and i32 %26, 65536
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %7, i32 noundef 0, i32 noundef 1804, i32 noundef 0) #15
  br label %33

33:                                               ; preds = %31, %24, %17, %13, %6
  %34 = getelementptr i16, ptr %8, i32 1
  %35 = load i16, ptr %34, align 2
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc861_fixup_asus_amp_vref_0f(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 2
  br i1 %4, label %5, label %18

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @snd_hda_codec_get_pin_target(ptr noundef %0, i16 noundef zeroext 15) #15
  %9 = and i32 %8, 96
  %10 = icmp eq i32 %9, 0
  %11 = or i32 %8, 32
  %12 = select i1 %10, i32 %11, i32 %8
  %13 = or i32 %12, 1
  %14 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext 15, i32 noundef %13, i1 noundef zeroext false) #15
  %15 = getelementptr inbounds %struct.hda_gen_spec, ptr %7, i32 0, i32 58
  %16 = load i64, ptr %15, align 4
  %17 = or i64 %16, 4096
  store i64 %17, ptr %15, align 4
  br label %18

18:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @alc660vd_fixup_asus_gpio1(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = or i32 %9, 2
  store i32 %10, ptr %8, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr inbounds %struct.alc_spec, ptr %11, i32 0, i32 3
  %13 = load i32, ptr %12, align 8
  %14 = or i32 %13, 1
  store i32 %14, ptr %12, align 8
  %15 = getelementptr inbounds %struct.alc_spec, ptr %11, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %16, 1
  store i32 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.alc_spec, ptr %11, i32 0, i32 5
  %19 = load i32, ptr %18, align 8
  %20 = or i32 %19, 1
  store i32 %20, ptr %18, align 8
  br label %21

21:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc861vd_fixup_dallas(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = tail call i32 @snd_hdac_override_parm(ptr noundef %0, i16 noundef zeroext 24, i32 noundef 12, i32 noundef 1844) #15
  %7 = tail call i32 @snd_hdac_override_parm(ptr noundef %0, i16 noundef zeroext 25, i32 noundef 12, i32 noundef 1852) #15
  br label %8

8:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_override_parm(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @alc_fixup_gpio3(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = or i32 %9, 3
  store i32 %10, ptr %8, align 8
  %11 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 3
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.alc_spec, ptr %7, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = or i32 %15, 3
  store i32 %16, ptr %14, align 8
  br label %17

17:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc889_fixup_coef(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 2
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 7, i32 noundef 0, i32 noundef 8240)
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @alc885_fixup_macpro_gpio(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.alc_spec, ptr %5, i32 0, i32 6
  store i8 1, ptr %6, align 4
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %struct.alc_spec, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 8
  %12 = or i32 %11, 3
  store i32 %12, ptr %10, align 8
  %13 = getelementptr inbounds %struct.alc_spec, ptr %9, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, 3
  store i32 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.alc_spec, ptr %9, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = or i32 %17, 3
  store i32 %18, ptr %16, align 8
  br label %19

19:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc889_fixup_dac_route(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  switch i32 %2, label %14 [
    i32 0, label %4
    i32 1, label %9
  ]

4:                                                ; preds = %3
  %5 = tail call i32 @snd_hda_override_conn_list(ptr noundef %0, i16 noundef zeroext 20, i32 noundef 2, ptr noundef nonnull @alc889_fixup_dac_route.conn1) #15
  %6 = tail call i32 @snd_hda_override_conn_list(ptr noundef %0, i16 noundef zeroext 21, i32 noundef 2, ptr noundef nonnull @alc889_fixup_dac_route.conn1) #15
  %7 = tail call i32 @snd_hda_override_conn_list(ptr noundef %0, i16 noundef zeroext 24, i32 noundef 2, ptr noundef nonnull @alc889_fixup_dac_route.conn2) #15
  %8 = tail call i32 @snd_hda_override_conn_list(ptr noundef %0, i16 noundef zeroext 26, i32 noundef 2, ptr noundef nonnull @alc889_fixup_dac_route.conn2) #15
  br label %14

9:                                                ; preds = %3
  %10 = tail call i32 @snd_hda_override_conn_list(ptr noundef %0, i16 noundef zeroext 20, i32 noundef 5, ptr noundef nonnull @alc889_fixup_dac_route.conn) #15
  %11 = tail call i32 @snd_hda_override_conn_list(ptr noundef %0, i16 noundef zeroext 21, i32 noundef 5, ptr noundef nonnull @alc889_fixup_dac_route.conn) #15
  %12 = tail call i32 @snd_hda_override_conn_list(ptr noundef %0, i16 noundef zeroext 24, i32 noundef 5, ptr noundef nonnull @alc889_fixup_dac_route.conn) #15
  %13 = tail call i32 @snd_hda_override_conn_list(ptr noundef %0, i16 noundef zeroext 26, i32 noundef 5, ptr noundef nonnull @alc889_fixup_dac_route.conn) #15
  br label %14

14:                                               ; preds = %9, %4, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc889_fixup_mbp_vref(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq i32 %2, 2
  br i1 %6, label %7, label %27

7:                                                ; preds = %3
  %8 = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %0, i16 noundef zeroext 20) #15
  %9 = and i32 %8, 15728640
  %10 = icmp eq i32 %9, 2097152
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %0, i16 noundef zeroext 21) #15
  %13 = and i32 %12, 15728640
  %14 = icmp eq i32 %13, 2097152
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %0, i16 noundef zeroext 25) #15
  %17 = and i32 %16, 15728640
  %18 = icmp eq i32 %17, 2097152
  br i1 %18, label %19, label %27

19:                                               ; preds = %15, %11, %7
  %20 = phi i16 [ 20, %7 ], [ 21, %11 ], [ 25, %15 ]
  %21 = tail call i32 @snd_hda_codec_get_pin_target(ptr noundef %0, i16 noundef zeroext %20) #15
  %22 = or i32 %21, 4
  %23 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext %20, i32 noundef %22, i1 noundef zeroext false) #15
  %24 = getelementptr inbounds %struct.hda_gen_spec, ptr %5, i32 0, i32 58
  %25 = load i64, ptr %24, align 4
  %26 = or i64 %25, 4096
  store i64 %26, ptr %24, align 4
  br label %27

27:                                               ; preds = %19, %15, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc889_fixup_imac91_vref(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 2
  br i1 %4, label %5, label %17

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @snd_hda_codec_get_pin_target(ptr noundef %0, i16 noundef zeroext 24) #15
  %9 = or i32 %8, 1
  %10 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext 24, i32 noundef %9, i1 noundef zeroext false) #15
  %11 = tail call i32 @snd_hda_codec_get_pin_target(ptr noundef %0, i16 noundef zeroext 26) #15
  %12 = or i32 %11, 1
  %13 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext 26, i32 noundef %12, i1 noundef zeroext false) #15
  %14 = getelementptr inbounds %struct.hda_gen_spec, ptr %7, i32 0, i32 58
  %15 = load i64, ptr %14, align 4
  %16 = or i64 %15, 4096
  store i64 %16, ptr %14, align 4
  br label %17

17:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc889_fixup_mba11_vref(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 2
  br i1 %4, label %5, label %14

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @snd_hda_codec_get_pin_target(ptr noundef %0, i16 noundef zeroext 24) #15
  %9 = or i32 %8, 1
  %10 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext 24, i32 noundef %9, i1 noundef zeroext false) #15
  %11 = getelementptr inbounds %struct.hda_gen_spec, ptr %7, i32 0, i32 58
  %12 = load i64, ptr %11, align 4
  %13 = or i64 %12, 4096
  store i64 %13, ptr %11, align 4
  br label %14

14:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc889_fixup_mba21_vref(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 2
  br i1 %4, label %5, label %17

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @snd_hda_codec_get_pin_target(ptr noundef %0, i16 noundef zeroext 24) #15
  %9 = or i32 %8, 1
  %10 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext 24, i32 noundef %9, i1 noundef zeroext false) #15
  %11 = tail call i32 @snd_hda_codec_get_pin_target(ptr noundef %0, i16 noundef zeroext 25) #15
  %12 = or i32 %11, 1
  %13 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext 25, i32 noundef %12, i1 noundef zeroext false) #15
  %14 = getelementptr inbounds %struct.hda_gen_spec, ptr %7, i32 0, i32 58
  %15 = load i64, ptr %14, align 4
  %16 = or i64 %15, 4096
  store i64 %16, ptr %14, align 4
  br label %17

17:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @alc882_fixup_no_primary_hp(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hda_gen_spec, ptr %7, i32 0, i32 58
  %9 = load i64, ptr %8, align 4
  %10 = or i64 %9, 3145728
  store i64 %10, ptr %8, align 4
  br label %11

11:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc1220_fixup_gb_dual_codecs(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  switch i32 %2, label %36 [
    i32 0, label %4
    i32 3, label %17
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 58
  %8 = load i64, ptr %7, align 4
  %9 = or i64 %8, 34359836672
  store i64 %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.hda_gen_spec, ptr %6, i32 0, i32 18
  store i16 0, ptr %10, align 2
  %11 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 30
  %12 = load i32, ptr %11, align 8
  %13 = or i32 %12, 524288
  store i32 %13, ptr %11, align 8
  %14 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(35) %16, ptr noundef nonnull align 1 dereferenceable(35) @.str.617, i32 35, i1 false)
  br label %36

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 8
  %20 = tail call ptr @snd_hda_find_mixer_ctl(ptr noundef %0, ptr noundef nonnull @.str.348) #15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = icmp eq i32 %19, 0
  %24 = select i1 %23, ptr @.str.349, ptr @.str.350
  %25 = getelementptr inbounds %struct.snd_kcontrol, ptr %20, i32 0, i32 1, i32 4
  %26 = tail call ptr @strcpy(ptr noundef %25, ptr noundef nonnull %24) #15
  br label %27

27:                                               ; preds = %22, %17
  %28 = load i32, ptr %18, align 8
  %29 = tail call ptr @snd_hda_find_mixer_ctl(ptr noundef %0, ptr noundef nonnull @.str.351) #15
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = icmp eq i32 %28, 0
  %33 = select i1 %32, ptr @.str.352, ptr @.str.353
  %34 = getelementptr inbounds %struct.snd_kcontrol, ptr %29, i32 0, i32 1, i32 4
  %35 = tail call ptr @strcpy(ptr noundef %34, ptr noundef nonnull %33) #15
  br label %36

36:                                               ; preds = %31, %27, %4, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc1220_fixup_gb_x570(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  switch i32 %2, label %8 [
    i32 0, label %4
    i32 2, label %7
  ]

4:                                                ; preds = %3
  %5 = tail call i32 @snd_hda_override_conn_list(ptr noundef %0, i16 noundef zeroext 20, i32 noundef 1, ptr noundef nonnull @alc1220_fixup_gb_x570.conn1) #15
  %6 = tail call i32 @snd_hda_override_conn_list(ptr noundef %0, i16 noundef zeroext 27, i32 noundef 1, ptr noundef nonnull @alc1220_fixup_gb_x570.conn1) #15
  br label %8

7:                                                ; preds = %3
  tail call fastcc void @alc_process_coef_fw(ptr noundef %0, ptr noundef nonnull @alc1220_fixup_gb_x570.gb_x570_coefs)
  br label %8

8:                                                ; preds = %7, %4, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc1220_fixup_clevo_p950(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 7, i32 noundef 0, i32 noundef 963)
  %6 = tail call i32 @snd_hda_override_conn_list(ptr noundef %0, i16 noundef zeroext 20, i32 noundef 1, ptr noundef nonnull @alc1220_fixup_clevo_p950.conn1) #15
  %7 = tail call i32 @snd_hda_override_conn_list(ptr noundef %0, i16 noundef zeroext 27, i32 noundef 1, ptr noundef nonnull @alc1220_fixup_clevo_p950.conn1) #15
  br label %8

8:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc1220_fixup_clevo_pb51ed(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  tail call fastcc void @alc_update_coefex_idx(ptr noundef %0, i16 noundef zeroext 32, i32 noundef 7, i32 noundef 0, i32 noundef 963) #15
  %6 = tail call i32 @snd_hda_override_conn_list(ptr noundef %0, i16 noundef zeroext 20, i32 noundef 1, ptr noundef nonnull @alc1220_fixup_clevo_p950.conn1) #15
  %7 = tail call i32 @snd_hda_override_conn_list(ptr noundef %0, i16 noundef zeroext 27, i32 noundef 1, ptr noundef nonnull @alc1220_fixup_clevo_p950.conn1) #15
  %8 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.alc_spec, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %11, 4
  store i32 %12, ptr %10, align 4
  br label %14

13:                                               ; preds = %3
  tail call void @alc_fixup_headset_mode(ptr noundef %0, ptr noundef %1, i32 noundef %2) #15
  br label %14

14:                                               ; preds = %13, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc887_fixup_asus_jack(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 1
  br i1 %4, label %5, label %10

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext 27, i32 noundef 192, i1 noundef zeroext true) #15
  %9 = getelementptr inbounds %struct.hda_gen_spec, ptr %7, i32 0, i32 81
  store ptr @alc887_asus_hp_automute_hook, ptr %9, align 4
  br label %10

10:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc887_asus_hp_automute_hook(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void @snd_hda_gen_hp_automute(ptr noundef %0, ptr noundef %1) #15
  %5 = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 58
  %6 = load i64, ptr %5, align 4
  %7 = and i64 %6, 1
  %8 = icmp eq i64 %7, 0
  %9 = select i1 %8, i32 192, i32 196
  %10 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext 25, i32 noundef %9, i1 noundef zeroext false) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc880_unsol_event(ptr noundef %0, i32 noundef %1) #1 {
  %3 = lshr i32 %1, 2
  tail call void @snd_hda_jack_unsol_event(ptr noundef %0, i32 noundef %3) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc880_fixup_vol_knob(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call ptr @snd_hda_jack_detect_enable_callback_mst(ptr noundef %0, i16 noundef zeroext 33, i32 noundef 0, ptr noundef nonnull @alc_update_knob_master) #15
  br label %7

7:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alc_update_knob_master(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @snd_hda_find_mixer_ctl(ptr noundef %0, ptr noundef nonnull @.str.649) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 712) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = load i16, ptr %1, align 4
  %11 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %10, i32 noundef 0, i32 noundef 3855, i32 noundef 0) #15
  %12 = and i32 %11, 127
  %13 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %7, i32 0, i32 2
  store i32 %12, ptr %13, align 8
  %14 = getelementptr [128 x i32], ptr %13, i32 0, i32 1
  store i32 %12, ptr %14, align 4
  %15 = getelementptr inbounds %struct.snd_kcontrol, ptr %3, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef nonnull %3, ptr noundef nonnull %7) #15
  tail call void @kfree(ptr noundef nonnull %7) #15
  br label %18

18:                                               ; preds = %9, %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hda_codec_driver_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hda_codec_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i4 @llvm.bitreverse.i4(i4) #14

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 2000, i32 1}
