; ModuleID = '/llk/IR/sound/usb/card.c_pt.bc'
source_filename = "../sound/usb/card.c"
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
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.60 }
%union.anon.60 = type { ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.snd_usb_audio_quirk = type { ptr, ptr, i16, i16, ptr }
%struct.audioformat = type { %struct.list_head, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, ptr, i8, ptr, i8, i8, i8 }
%struct.snd_usb_midi_endpoint_info = type { i8, i8, i8, i8, i16, i16, [16 x i16], [16 x i16] }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.usb_audio_device_name = type { i32, ptr, ptr, ptr }
%struct.snd_usb_audio = type { i32, ptr, ptr, [16 x ptr], i32, i16, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i8, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.list_head, i32, i8, i8, i8, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.uac1_ac_header_descriptor = type <{ i8, i8, i8, i16, i16, i8, [0 x i8] }>
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }

@__UNIQUE_ID_author237 = internal constant [36 x i8] c"author=Takashi Iwai <tiwai@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [22 x i8] c"description=USB Audio\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@snd_usb_use_vmalloc = dso_local global i8 1, align 1
@__param_str_index = internal constant [6 x i8] c"index\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.60 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype240 = internal constant [28 x i8] c"parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index241 = internal constant [50 x i8] c"parm=index:Index value for the USB audio adapter.\00", section ".modinfo", align 1
@__param_str_id = internal constant [3 x i8] c"id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.60 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype242 = internal constant [27 x i8] c"parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id243 = internal constant [45 x i8] c"parm=id:ID string for the USB audio adapter.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [7 x i8] c"enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.60 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype244 = internal constant [30 x i8] c"parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable245 = internal constant [38 x i8] c"parm=enable:Enable USB audio adapter.\00", section ".modinfo", align 1
@__param_str_vid = internal constant [4 x i8] c"vid\00", align 1
@__param_arr_vid = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @vid }, align 4
@__param_vid = internal constant %struct.kernel_param { ptr @__param_str_vid, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.60 { ptr @__param_arr_vid } }, section "__param", align 4
@__UNIQUE_ID_vidtype246 = internal constant [26 x i8] c"parmtype=vid:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_vid247 = internal constant [45 x i8] c"parm=vid:Vendor ID for the USB audio device.\00", section ".modinfo", align 1
@__param_str_pid = internal constant [4 x i8] c"pid\00", align 1
@__param_arr_pid = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @pid }, align 4
@__param_pid = internal constant %struct.kernel_param { ptr @__param_str_pid, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.60 { ptr @__param_arr_pid } }, section "__param", align 4
@__UNIQUE_ID_pidtype248 = internal constant [26 x i8] c"parmtype=pid:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_pid249 = internal constant [46 x i8] c"parm=pid:Product ID for the USB audio device.\00", section ".modinfo", align 1
@__param_str_device_setup = internal constant [13 x i8] c"device_setup\00", align 1
@__param_arr_device_setup = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @device_setup }, align 4
@__param_device_setup = internal constant %struct.kernel_param { ptr @__param_str_device_setup, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.60 { ptr @__param_arr_device_setup } }, section "__param", align 4
@__UNIQUE_ID_device_setuptype250 = internal constant [35 x i8] c"parmtype=device_setup:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_device_setup251 = internal constant [53 x i8] c"parm=device_setup:Specific device setup (if needed).\00", section ".modinfo", align 1
@__param_str_ignore_ctl_error = internal constant [17 x i8] c"ignore_ctl_error\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@ignore_ctl_error = internal global i8 0, align 1
@__param_ignore_ctl_error = internal constant %struct.kernel_param { ptr @__param_str_ignore_ctl_error, ptr @__this_module, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.60 { ptr @ignore_ctl_error } }, section "__param", align 4
@__UNIQUE_ID_ignore_ctl_errortype252 = internal constant [31 x i8] c"parmtype=ignore_ctl_error:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_ignore_ctl_error253 = internal constant [78 x i8] c"parm=ignore_ctl_error:Ignore errors from USB controller for mixer interfaces.\00", section ".modinfo", align 1
@__param_str_autoclock = internal constant [10 x i8] c"autoclock\00", align 1
@autoclock = internal global i8 1, align 1
@__param_autoclock = internal constant %struct.kernel_param { ptr @__param_str_autoclock, ptr @__this_module, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.60 { ptr @autoclock } }, section "__param", align 4
@__UNIQUE_ID_autoclocktype254 = internal constant [24 x i8] c"parmtype=autoclock:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_autoclock255 = internal constant [76 x i8] c"parm=autoclock:Enable auto-clock selection for UAC2 devices (default: yes).\00", section ".modinfo", align 1
@__param_str_lowlatency = internal constant [11 x i8] c"lowlatency\00", align 1
@lowlatency = internal global i8 1, align 1
@__param_lowlatency = internal constant %struct.kernel_param { ptr @__param_str_lowlatency, ptr @__this_module, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.60 { ptr @lowlatency } }, section "__param", align 4
@__UNIQUE_ID_lowlatencytype256 = internal constant [25 x i8] c"parmtype=lowlatency:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_lowlatency257 = internal constant [60 x i8] c"parm=lowlatency:Enable low latency playback (default: yes).\00", section ".modinfo", align 1
@__param_str_quirk_alias = internal constant [12 x i8] c"quirk_alias\00", align 1
@__param_arr_quirk_alias = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @quirk_alias }, align 4
@__param_quirk_alias = internal constant %struct.kernel_param { ptr @__param_str_quirk_alias, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.60 { ptr @__param_arr_quirk_alias } }, section "__param", align 4
@__UNIQUE_ID_quirk_aliastype258 = internal constant [36 x i8] c"parmtype=quirk_alias:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_quirk_alias259 = internal constant [56 x i8] c"parm=quirk_alias:Quirk aliases, e.g. 0123abcd:5678beef.\00", section ".modinfo", align 1
@__param_str_delayed_register = internal constant [17 x i8] c"delayed_register\00", align 1
@__param_arr_delayed_register = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @delayed_register }, align 4
@__param_delayed_register = internal constant %struct.kernel_param { ptr @__param_str_delayed_register, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.60 { ptr @__param_arr_delayed_register } }, section "__param", align 4
@__UNIQUE_ID_delayed_registertype260 = internal constant [41 x i8] c"parmtype=delayed_register:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_delayed_register261 = internal constant [90 x i8] c"parm=delayed_register:Quirk for delayed registration, given by id:iface, e.g. 0123abcd:4.\00", section ".modinfo", align 1
@__param_str_implicit_fb = internal constant [12 x i8] c"implicit_fb\00", align 1
@__param_arr_implicit_fb = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @implicit_fb }, align 4
@__param_implicit_fb = internal constant %struct.kernel_param { ptr @__param_str_implicit_fb, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.60 { ptr @__param_arr_implicit_fb } }, section "__param", align 4
@__UNIQUE_ID_implicit_fbtype262 = internal constant [35 x i8] c"parmtype=implicit_fb:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_implicit_fb263 = internal constant [60 x i8] c"parm=implicit_fb:Apply generic implicit feedback sync mode.\00", section ".modinfo", align 1
@__param_str_quirk_flags = internal constant [12 x i8] c"quirk_flags\00", align 1
@__param_arr_quirk_flags = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_uint, ptr @quirk_flags }, align 4
@__param_quirk_flags = internal constant %struct.kernel_param { ptr @__param_str_quirk_flags, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.60 { ptr @__param_arr_quirk_flags } }, section "__param", align 4
@__UNIQUE_ID_quirk_flagstype264 = internal constant [35 x i8] c"parmtype=quirk_flags:array of uint\00", section ".modinfo", align 1
@__UNIQUE_ID_quirk_flags265 = internal constant [41 x i8] c"parm=quirk_flags:Driver quirk bit flags.\00", section ".modinfo", align 1
@__param_str_use_vmalloc = internal constant [12 x i8] c"use_vmalloc\00", align 1
@__param_use_vmalloc = internal constant %struct.kernel_param { ptr @__param_str_use_vmalloc, ptr @__this_module, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.60 { ptr @snd_usb_use_vmalloc } }, section "__param", align 4
@__UNIQUE_ID_use_vmalloctype266 = internal constant [26 x i8] c"parmtype=use_vmalloc:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_vmalloc267 = internal constant [74 x i8] c"parm=use_vmalloc:Use vmalloc for PCM intermediate buffers (default: yes).\00", section ".modinfo", align 1
@__param_str_skip_validation = internal constant [16 x i8] c"skip_validation\00", align 1
@snd_usb_skip_validation = dso_local global i8 0, align 1
@__param_skip_validation = internal constant %struct.kernel_param { ptr @__param_str_skip_validation, ptr @__this_module, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.60 { ptr @snd_usb_skip_validation } }, section "__param", align 4
@__UNIQUE_ID_skip_validationtype268 = internal constant [30 x i8] c"parmtype=skip_validation:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_skip_validation269 = internal constant [68 x i8] c"parm=skip_validation:Skip unit descriptor validation (default: no).\00", section ".modinfo", align 1
@usb_audio_ids = internal constant [253 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1027, i16 -18216, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.usb_device_id { i16 3, i16 1054, i16 5, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.2 to i32) }, %struct.usb_device_id { i16 131, i16 1054, i16 16130, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 131, i16 1054, i16 16132, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 131, i16 1054, i16 16138, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 131, i16 1054, i16 16153, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 387, i16 1054, i16 16533, i16 0, i16 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.6 to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 -18382, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.9 to i32) }, %struct.usb_device_id { i16 387, i16 1133, i16 2128, i16 0, i16 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 387, i16 1133, i16 2222, i16 0, i16 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 387, i16 1133, i16 2246, i16 0, i16 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 387, i16 1133, i16 2288, i16 0, i16 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 387, i16 1133, i16 2293, i16 0, i16 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 387, i16 1133, i16 2294, i16 0, i16 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 387, i16 1133, i16 2448, i16 0, i16 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1177, i16 4096, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.12 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4097, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.14 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4098, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.16 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4099, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.18 to i32) }, %struct.usb_device_id { i16 131, i16 1177, i16 4100, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.20 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4101, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.22 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4102, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.24 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4103, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4104, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4105, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }, %struct.usb_device_id { i16 131, i16 1177, i16 4106, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.32 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4108, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.34 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4109, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.36 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4110, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.38 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4111, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.40 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4112, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.42 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4113, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.44 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4114, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.46 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4115, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.48 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4116, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4117, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.52 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4118, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.54 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4119, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.56 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4120, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.58 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4121, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.60 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4122, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.62 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4123, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.64 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4124, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.66 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4125, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.68 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4126, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.70 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4127, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.72 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4128, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.74 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4129, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.76 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4130, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.78 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4131, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.80 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4132, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.82 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4133, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.84 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4134, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.86 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4135, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.88 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4136, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.90 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4137, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.92 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4138, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.94 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4139, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.96 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4142, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.98 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4144, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.100 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4145, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.102 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4146, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.104 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4147, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.106 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4148, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.107 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4149, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.108 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4150, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.109 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4151, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.110 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4152, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.111 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4153, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.112 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4154, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.113 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4155, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.114 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4156, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.115 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4157, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.116 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4158, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.117 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4159, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.118 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4160, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.119 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4161, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.120 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4162, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.121 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4163, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.122 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4164, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.123 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4165, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.124 to i32) }, %struct.usb_device_id { i16 131, i16 1177, i16 4174, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.125 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4175, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.126 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4176, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.127 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4177, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.128 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4178, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.129 to i32) }, %struct.usb_device_id { i16 131, i16 1177, i16 4179, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.130 to i32) }, %struct.usb_device_id { i16 131, i16 1177, i16 4180, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.131 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4181, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.132 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4182, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.133 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4183, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.134 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4184, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.135 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4185, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.136 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4186, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.137 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4187, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.138 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4188, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.139 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4189, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.140 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 5379, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.142 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 5383, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.144 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 5385, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.146 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 5386, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.148 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 5388, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.150 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 8192, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.152 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 8193, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.154 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 8194, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.155 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 8195, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.156 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 20480, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.158 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 20481, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.160 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 20482, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.162 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 20483, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.164 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 20484, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.166 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 20485, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.168 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 20486, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.170 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 20487, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.172 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 20488, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.174 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 20489, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.176 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 20490, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.178 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 20491, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.180 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 20492, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.182 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 20493, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.183 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 20494, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.184 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 20495, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.185 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 28672, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.187 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 28688, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.189 to i32) }, %struct.usb_device_id { i16 129, i16 1177, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.190 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.197 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.202 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 3, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.206 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.210 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 5, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.214 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 7, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.218 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 8, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.222 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 9, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.226 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 11, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.230 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 12, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.234 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.237 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 18, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.240 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 20, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.243 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 22, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.247 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 27, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.251 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 29, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.254 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 35, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.257 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 37, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.263 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 39, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.266 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 41, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.269 to i32) }, %struct.usb_device_id { i16 131, i16 1410, i16 43, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.272 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 45, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.275 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 47, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.278 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 51, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.281 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 55, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.284 to i32) }, %struct.usb_device_id { i16 131, i16 1410, i16 59, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.288 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 64, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.291 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 66, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.294 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 71, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.296 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 72, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.298 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 76, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.301 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 77, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.303 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 80, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.306 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 82, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.308 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 96, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.310 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 100, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.312 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 101, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.314 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 109, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.317 to i32) }, %struct.usb_device_id { i16 131, i16 1410, i16 116, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.320 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 117, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.323 to i32) }, %struct.usb_device_id { i16 131, i16 1410, i16 122, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.325 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 128, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.328 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 139, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.331 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 163, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.334 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 196, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.337 to i32) }, %struct.usb_device_id { i16 131, i16 1410, i16 230, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.340 to i32) }, %struct.usb_device_id { i16 131, i16 1410, i16 264, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.342 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 275, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.345 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 288, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.352 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 303, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.359 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 345, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.362 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 68, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.363 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 125, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.364 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 141, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.365 to i32) }, %struct.usb_device_id { i16 129, i16 1410, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.366 to i32) }, %struct.usb_device_id { i16 131, i16 1784, i16 -20480, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.370 to i32) }, %struct.usb_device_id { i16 131, i16 1891, i16 4098, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.374 to i32) }, %struct.usb_device_id { i16 131, i16 1891, i16 4113, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.377 to i32) }, %struct.usb_device_id { i16 131, i16 1891, i16 4117, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.380 to i32) }, %struct.usb_device_id { i16 131, i16 1891, i16 4129, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.383 to i32) }, %struct.usb_device_id { i16 15, i16 1891, i16 4145, i16 256, i16 265, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.386 to i32) }, %struct.usb_device_id { i16 131, i16 1891, i16 4147, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.388 to i32) }, %struct.usb_device_id { i16 131, i16 1891, i16 4161, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.391 to i32) }, %struct.usb_device_id { i16 131, i16 1891, i16 8193, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.395 to i32) }, %struct.usb_device_id { i16 131, i16 1891, i16 8195, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.398 to i32) }, %struct.usb_device_id { i16 131, i16 1891, i16 8200, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.401 to i32) }, %struct.usb_device_id { i16 131, i16 1891, i16 8205, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.405 to i32) }, %struct.usb_device_id { i16 3, i16 1891, i16 8217, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.408 to i32) }, %struct.usb_device_id { i16 131, i16 1891, i16 8240, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.414 to i32) }, %struct.usb_device_id { i16 131, i16 1891, i16 8241, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.420 to i32) }, %struct.usb_device_id { i16 131, i16 1891, i16 8320, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.426 to i32) }, %struct.usb_device_id { i16 131, i16 1891, i16 8321, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.432 to i32) }, %struct.usb_device_id { i16 3, i16 1999, i16 26625, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.435 to i32) }, %struct.usb_device_id { i16 3, i16 1999, i16 26626, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.437 to i32) }, %struct.usb_device_id { i16 35, i16 2045, i16 1, i16 0, i16 0, i8 0, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.441 to i32) }, %struct.usb_device_id { i16 3, i16 2154, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.445 to i32) }, %struct.usb_device_id { i16 3, i16 2154, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.447 to i32) }, %struct.usb_device_id { i16 3, i16 2154, i16 3, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.449 to i32) }, %struct.usb_device_id { i16 131, i16 2372, i16 512, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.451 to i32) }, %struct.usb_device_id { i16 131, i16 2372, i16 513, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.452 to i32) }, %struct.usb_device_id { i16 131, i16 2372, i16 516, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.453 to i32) }, %struct.usb_device_id { i16 3, i16 2536, i16 98, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.456 to i32) }, %struct.usb_device_id { i16 3, i16 2536, i16 33, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.458 to i32) }, %struct.usb_device_id { i16 131, i16 2638, i16 8256, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.461 to i32) }, %struct.usb_device_id { i16 131, i16 2638, i16 16448, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.464 to i32) }, %struct.usb_device_id { i16 131, i16 3277, i16 18, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.467 to i32) }, %struct.usb_device_id { i16 131, i16 3277, i16 19, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.468 to i32) }, %struct.usb_device_id { i16 131, i16 3277, i16 20, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.469 to i32) }, %struct.usb_device_id { i16 3, i16 3277, i16 53, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.472 to i32) }, %struct.usb_device_id { i16 131, i16 4661, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.475 to i32) }, %struct.usb_device_id { i16 131, i16 4661, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.477 to i32) }, %struct.usb_device_id { i16 3, i16 4661, i16 10, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.478 to i32) }, %struct.usb_device_id { i16 3, i16 4661, i16 14, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.479 to i32) }, %struct.usb_device_id { i16 3, i16 4661, i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.487 to i32) }, %struct.usb_device_id { i16 3, i16 4661, i16 24, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.492 to i32) }, %struct.usb_device_id { i16 131, i16 4661, i16 18017, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.494 to i32) }, %struct.usb_device_id { i16 131, i16 4926, i16 2069, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.497 to i32) }, %struct.usb_device_id { i16 3, i16 6092, i16 4096, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6092, i16 4112, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6092, i16 4128, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6790, i16 29997, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.500 to i32) }, %struct.usb_device_id { i16 3, i16 7992, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 18258, i16 17, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.502 to i32) }, %struct.usb_device_id { i16 3, i16 28932, i16 8706, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.503 to i32) }, %struct.usb_device_id { i16 3, i16 3514, i16 4096, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.511 to i32) }, %struct.usb_device_id { i16 3, i16 3514, i16 12288, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.519 to i32) }, %struct.usb_device_id { i16 131, i16 1604, i16 -32735, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.525 to i32) }, %struct.usb_device_id { i16 387, i16 5454, i16 20494, i16 0, i16 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.533 to i32) }, %struct.usb_device_id { i16 3, i16 1118, i16 643, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.539 to i32) }, %struct.usb_device_id { i16 3, i16 8204, i16 4107, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.543 to i32) }, %struct.usb_device_id { i16 3, i16 5766, i16 221, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.545 to i32) }, %struct.usb_device_id { i16 384, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 1, i8 3, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.546 to i32) }, %struct.usb_device_id { i16 3, i16 6581, i16 33, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.550 to i32) }, %struct.usb_device_id { i16 131, i16 2045, i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.557 to i32) }, %struct.usb_device_id { i16 131, i16 11123, i16 35, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.563 to i32) }, %struct.usb_device_id { i16 131, i16 11123, i16 23, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.569 to i32) }, %struct.usb_device_id { i16 131, i16 11123, i16 14, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.575 to i32) }, %struct.usb_device_id { i16 131, i16 11123, i16 13, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.581 to i32) }, %struct.usb_device_id { i16 131, i16 11123, i16 30, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.587 to i32) }, %struct.usb_device_id { i16 131, i16 11123, i16 10, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.593 to i32) }, %struct.usb_device_id { i16 387, i16 21325, i16 8457, i16 0, i16 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.598 to i32) }, %struct.usb_device_id { i16 131, i16 2276, i16 383, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.604 to i32) }, %struct.usb_device_id { i16 131, i16 11123, i16 27, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.610 to i32) }, %struct.usb_device_id { i16 131, i16 2276, i16 355, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.616 to i32) }, %struct.usb_device_id { i16 131, i16 11123, i16 19, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.622 to i32) }, %struct.usb_device_id { i16 3, i16 5013, i16 768, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.624 to i32) }, %struct.usb_device_id { i16 384, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global [32 x ptr] zeroinitializer, align 4
@enable = internal global [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", align 1
@vid = internal global [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@pid = internal global [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@device_setup = internal global [32 x i32] zeroinitializer, align 4
@quirk_alias = internal global [32 x ptr] zeroinitializer, align 4
@delayed_register = internal global [32 x ptr] zeroinitializer, align 4
@implicit_fb = internal global [32 x i8] zeroinitializer, align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@quirk_flags = internal global [32 x i32] zeroinitializer, align 4
@.compoundliteral = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 14, ptr null }, align 4
@.compoundliteral.1 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4, i32 2, i32 0, i32 0, i32 0, i8 1, i8 1, i8 0, i8 1, i8 0, i8 3, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1073741824, i32 48000, i32 48000, i32 0, ptr null, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.2 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 17, ptr @.compoundliteral.1 }, align 4
@.compoundliteral.3 = internal global [1 x i32] [i32 48000], align 4
@.compoundliteral.4 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4, i32 2, i32 0, i32 16, i32 0, i8 3, i8 4, i8 0, i8 4, i8 0, i8 -126, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 128, i32 48000, i32 48000, i32 1, ptr @.compoundliteral.3, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.5 = internal constant [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 19, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 17, ptr @.compoundliteral.4 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.6 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.5 }, align 4
@.str = private unnamed_addr constant [28 x i8] c"Standard Microsystems Corp.\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"HP Wireless Audio\00", align 1
@.compoundliteral.8 = internal constant [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk zeroinitializer, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.9 = internal constant %struct.snd_usb_audio_quirk { ptr @.str, ptr @.str.7, i16 -1, i16 1, ptr @.compoundliteral.8 }, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"Yamaha\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"UX256\00", align 1
@.compoundliteral.12 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.11, i16 -1, i16 5, ptr null }, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"MU1000\00", align 1
@.compoundliteral.14 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.13, i16 -1, i16 5, ptr null }, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"MU2000\00", align 1
@.compoundliteral.16 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.15, i16 -1, i16 5, ptr null }, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"MU500\00", align 1
@.compoundliteral.18 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.17, i16 -1, i16 5, ptr null }, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"UW500\00", align 1
@.compoundliteral.20 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.19, i16 3, i16 5, ptr null }, align 4
@.str.21 = private unnamed_addr constant [7 x i8] c"MOTIF6\00", align 1
@.compoundliteral.22 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.21, i16 -1, i16 5, ptr null }, align 4
@.str.23 = private unnamed_addr constant [7 x i8] c"MOTIF7\00", align 1
@.compoundliteral.24 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.23, i16 -1, i16 5, ptr null }, align 4
@.str.25 = private unnamed_addr constant [7 x i8] c"MOTIF8\00", align 1
@.compoundliteral.26 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.25, i16 -1, i16 5, ptr null }, align 4
@.str.27 = private unnamed_addr constant [5 x i8] c"UX96\00", align 1
@.compoundliteral.28 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.27, i16 -1, i16 5, ptr null }, align 4
@.str.29 = private unnamed_addr constant [5 x i8] c"UX16\00", align 1
@.compoundliteral.30 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.29, i16 -1, i16 5, ptr null }, align 4
@.str.31 = private unnamed_addr constant [7 x i8] c"EOS BX\00", align 1
@.compoundliteral.32 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.31, i16 3, i16 5, ptr null }, align 4
@.str.33 = private unnamed_addr constant [6 x i8] c"UC-MX\00", align 1
@.compoundliteral.34 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.33, i16 -1, i16 5, ptr null }, align 4
@.str.35 = private unnamed_addr constant [6 x i8] c"UC-KX\00", align 1
@.compoundliteral.36 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.35, i16 -1, i16 5, ptr null }, align 4
@.str.37 = private unnamed_addr constant [4 x i8] c"S08\00", align 1
@.compoundliteral.38 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.37, i16 -1, i16 5, ptr null }, align 4
@.str.39 = private unnamed_addr constant [8 x i8] c"CLP-150\00", align 1
@.compoundliteral.40 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.39, i16 -1, i16 5, ptr null }, align 4
@.str.41 = private unnamed_addr constant [8 x i8] c"CLP-170\00", align 1
@.compoundliteral.42 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.41, i16 -1, i16 5, ptr null }, align 4
@.str.43 = private unnamed_addr constant [6 x i8] c"P-250\00", align 1
@.compoundliteral.44 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.43, i16 -1, i16 5, ptr null }, align 4
@.str.45 = private unnamed_addr constant [6 x i8] c"TYROS\00", align 1
@.compoundliteral.46 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.45, i16 -1, i16 5, ptr null }, align 4
@.str.47 = private unnamed_addr constant [7 x i8] c"PF-500\00", align 1
@.compoundliteral.48 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.47, i16 -1, i16 5, ptr null }, align 4
@.str.49 = private unnamed_addr constant [4 x i8] c"S90\00", align 1
@.compoundliteral.50 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.49, i16 -1, i16 5, ptr null }, align 4
@.str.51 = private unnamed_addr constant [8 x i8] c"MOTIF-R\00", align 1
@.compoundliteral.52 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.51, i16 -1, i16 5, ptr null }, align 4
@.str.53 = private unnamed_addr constant [6 x i8] c"MDP-5\00", align 1
@.compoundliteral.54 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.53, i16 -1, i16 5, ptr null }, align 4
@.str.55 = private unnamed_addr constant [8 x i8] c"CVP-204\00", align 1
@.compoundliteral.56 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.55, i16 -1, i16 5, ptr null }, align 4
@.str.57 = private unnamed_addr constant [8 x i8] c"CVP-206\00", align 1
@.compoundliteral.58 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.57, i16 -1, i16 5, ptr null }, align 4
@.str.59 = private unnamed_addr constant [8 x i8] c"CVP-208\00", align 1
@.compoundliteral.60 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.59, i16 -1, i16 5, ptr null }, align 4
@.str.61 = private unnamed_addr constant [8 x i8] c"CVP-210\00", align 1
@.compoundliteral.62 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.61, i16 -1, i16 5, ptr null }, align 4
@.str.63 = private unnamed_addr constant [9 x i8] c"PSR-1100\00", align 1
@.compoundliteral.64 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.63, i16 -1, i16 5, ptr null }, align 4
@.str.65 = private unnamed_addr constant [9 x i8] c"PSR-2100\00", align 1
@.compoundliteral.66 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.65, i16 -1, i16 5, ptr null }, align 4
@.str.67 = private unnamed_addr constant [8 x i8] c"CLP-175\00", align 1
@.compoundliteral.68 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.67, i16 -1, i16 5, ptr null }, align 4
@.str.69 = private unnamed_addr constant [7 x i8] c"PSR-K1\00", align 1
@.compoundliteral.70 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.69, i16 -1, i16 5, ptr null }, align 4
@.str.71 = private unnamed_addr constant [7 x i8] c"EZ-J24\00", align 1
@.compoundliteral.72 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.71, i16 -1, i16 5, ptr null }, align 4
@.str.73 = private unnamed_addr constant [8 x i8] c"EZ-250i\00", align 1
@.compoundliteral.74 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.73, i16 -1, i16 5, ptr null }, align 4
@.str.75 = private unnamed_addr constant [11 x i8] c"MOTIF ES 6\00", align 1
@.compoundliteral.76 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.75, i16 -1, i16 5, ptr null }, align 4
@.str.77 = private unnamed_addr constant [11 x i8] c"MOTIF ES 7\00", align 1
@.compoundliteral.78 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.77, i16 -1, i16 5, ptr null }, align 4
@.str.79 = private unnamed_addr constant [11 x i8] c"MOTIF ES 8\00", align 1
@.compoundliteral.80 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.79, i16 -1, i16 5, ptr null }, align 4
@.str.81 = private unnamed_addr constant [8 x i8] c"CVP-301\00", align 1
@.compoundliteral.82 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.81, i16 -1, i16 5, ptr null }, align 4
@.str.83 = private unnamed_addr constant [8 x i8] c"CVP-303\00", align 1
@.compoundliteral.84 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.83, i16 -1, i16 5, ptr null }, align 4
@.str.85 = private unnamed_addr constant [8 x i8] c"CVP-305\00", align 1
@.compoundliteral.86 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.85, i16 -1, i16 5, ptr null }, align 4
@.str.87 = private unnamed_addr constant [8 x i8] c"CVP-307\00", align 1
@.compoundliteral.88 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.87, i16 -1, i16 5, ptr null }, align 4
@.str.89 = private unnamed_addr constant [8 x i8] c"CVP-309\00", align 1
@.compoundliteral.90 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.89, i16 -1, i16 5, ptr null }, align 4
@.str.91 = private unnamed_addr constant [10 x i8] c"CVP-309GP\00", align 1
@.compoundliteral.92 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.91, i16 -1, i16 5, ptr null }, align 4
@.str.93 = private unnamed_addr constant [9 x i8] c"PSR-1500\00", align 1
@.compoundliteral.94 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.93, i16 -1, i16 5, ptr null }, align 4
@.str.95 = private unnamed_addr constant [9 x i8] c"PSR-3000\00", align 1
@.compoundliteral.96 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.95, i16 -1, i16 5, ptr null }, align 4
@.str.97 = private unnamed_addr constant [11 x i8] c"ELS-01/01C\00", align 1
@.compoundliteral.98 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.97, i16 -1, i16 5, ptr null }, align 4
@.str.99 = private unnamed_addr constant [12 x i8] c"PSR-295/293\00", align 1
@.compoundliteral.100 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.99, i16 -1, i16 5, ptr null }, align 4
@.str.101 = private unnamed_addr constant [12 x i8] c"DGX-205/203\00", align 1
@.compoundliteral.102 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.101, i16 -1, i16 5, ptr null }, align 4
@.str.103 = private unnamed_addr constant [8 x i8] c"DGX-305\00", align 1
@.compoundliteral.104 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.103, i16 -1, i16 5, ptr null }, align 4
@.str.105 = private unnamed_addr constant [8 x i8] c"DGX-505\00", align 1
@.compoundliteral.106 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.105, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.107 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.108 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.109 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.110 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.111 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.112 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.113 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.114 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.115 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.116 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.117 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.118 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.119 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.120 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.121 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.122 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.123 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.124 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.125 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 0, i16 5, ptr null }, align 4
@.compoundliteral.126 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.127 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.128 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.129 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.130 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 0, i16 5, ptr null }, align 4
@.compoundliteral.131 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 0, i16 5, ptr null }, align 4
@.compoundliteral.132 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.133 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.134 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.135 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.136 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.137 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.138 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.139 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.140 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.141 = internal constant [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 5, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.142 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.141 }, align 4
@.compoundliteral.143 = internal constant [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 5, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.144 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.143 }, align 4
@.compoundliteral.145 = internal constant [5 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 5, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 4, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.146 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.145 }, align 4
@.compoundliteral.147 = internal constant [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 5, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.148 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.147 }, align 4
@.compoundliteral.149 = internal constant [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 5, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.150 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.149 }, align 4
@.str.151 = private unnamed_addr constant [6 x i8] c"DGP-7\00", align 1
@.compoundliteral.152 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.151, i16 -1, i16 5, ptr null }, align 4
@.str.153 = private unnamed_addr constant [6 x i8] c"DGP-5\00", align 1
@.compoundliteral.154 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.153, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.155 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.156 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 -1, i16 5, ptr null }, align 4
@.str.157 = private unnamed_addr constant [5 x i8] c"CS1D\00", align 1
@.compoundliteral.158 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.157, i16 -1, i16 5, ptr null }, align 4
@.str.159 = private unnamed_addr constant [6 x i8] c"DSP1D\00", align 1
@.compoundliteral.160 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.159, i16 -1, i16 5, ptr null }, align 4
@.str.161 = private unnamed_addr constant [6 x i8] c"DME32\00", align 1
@.compoundliteral.162 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.161, i16 -1, i16 5, ptr null }, align 4
@.str.163 = private unnamed_addr constant [7 x i8] c"DM2000\00", align 1
@.compoundliteral.164 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.163, i16 -1, i16 5, ptr null }, align 4
@.str.165 = private unnamed_addr constant [6 x i8] c"02R96\00", align 1
@.compoundliteral.166 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.165, i16 -1, i16 5, ptr null }, align 4
@.str.167 = private unnamed_addr constant [8 x i8] c"ACU16-C\00", align 1
@.compoundliteral.168 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.167, i16 -1, i16 5, ptr null }, align 4
@.str.169 = private unnamed_addr constant [8 x i8] c"NHB32-C\00", align 1
@.compoundliteral.170 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.169, i16 -1, i16 5, ptr null }, align 4
@.str.171 = private unnamed_addr constant [7 x i8] c"DM1000\00", align 1
@.compoundliteral.172 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.171, i16 -1, i16 5, ptr null }, align 4
@.str.173 = private unnamed_addr constant [6 x i8] c"01V96\00", align 1
@.compoundliteral.174 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.173, i16 -1, i16 5, ptr null }, align 4
@.str.175 = private unnamed_addr constant [8 x i8] c"SPX2000\00", align 1
@.compoundliteral.176 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.175, i16 -1, i16 5, ptr null }, align 4
@.str.177 = private unnamed_addr constant [5 x i8] c"PM5D\00", align 1
@.compoundliteral.178 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.177, i16 -1, i16 5, ptr null }, align 4
@.str.179 = private unnamed_addr constant [7 x i8] c"DME64N\00", align 1
@.compoundliteral.180 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.179, i16 -1, i16 5, ptr null }, align 4
@.str.181 = private unnamed_addr constant [7 x i8] c"DME24N\00", align 1
@.compoundliteral.182 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.181, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.183 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.184 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.185 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr null, i16 -1, i16 5, ptr null }, align 4
@.str.186 = private unnamed_addr constant [4 x i8] c"DTX\00", align 1
@.compoundliteral.187 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.186, i16 -1, i16 5, ptr null }, align 4
@.str.188 = private unnamed_addr constant [5 x i8] c"UB99\00", align 1
@.compoundliteral.189 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.10, ptr @.str.188, i16 -1, i16 5, ptr null }, align 4
@.compoundliteral.190 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 2, ptr null }, align 4
@.str.191 = private unnamed_addr constant [7 x i8] c"Roland\00", align 1
@.str.192 = private unnamed_addr constant [7 x i8] c"UA-100\00", align 1
@.compoundliteral.193 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4, i32 4, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 1, i8 9, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1073741824, i32 44100, i32 44100, i32 0, ptr null, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.194 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4, i32 2, i32 0, i32 0, i32 0, i8 1, i8 1, i8 0, i8 1, i8 -128, i8 -127, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1073741824, i32 44100, i32 44100, i32 0, ptr null, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.195 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 7, i16 7, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.196 = internal constant [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.193 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 17, ptr @.compoundliteral.194 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 4, ptr @.compoundliteral.195 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.197 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.191, ptr @.str.192, i16 -1, i16 1, ptr @.compoundliteral.196 }, align 4
@.str.198 = private unnamed_addr constant [7 x i8] c"EDIROL\00", align 1
@.str.199 = private unnamed_addr constant [5 x i8] c"UM-4\00", align 1
@.compoundliteral.200 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 15, i16 15, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.201 = internal constant [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk zeroinitializer, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 4, ptr @.compoundliteral.200 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.202 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.198, ptr @.str.199, i16 -1, i16 1, ptr @.compoundliteral.201 }, align 4
@.str.203 = private unnamed_addr constant [8 x i8] c"SC-8850\00", align 1
@.compoundliteral.204 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 63, i16 63, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.205 = internal constant [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk zeroinitializer, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 4, ptr @.compoundliteral.204 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.206 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.191, ptr @.str.203, i16 -1, i16 1, ptr @.compoundliteral.205 }, align 4
@.str.207 = private unnamed_addr constant [4 x i8] c"U-8\00", align 1
@.compoundliteral.208 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 5, i16 5, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.209 = internal constant [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk zeroinitializer, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 4, ptr @.compoundliteral.208 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.210 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.191, ptr @.str.207, i16 -1, i16 1, ptr @.compoundliteral.209 }, align 4
@.str.211 = private unnamed_addr constant [5 x i8] c"UM-2\00", align 1
@.compoundliteral.212 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 3, i16 3, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.213 = internal constant [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk zeroinitializer, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 4, ptr @.compoundliteral.212 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.214 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.198, ptr @.str.211, i16 -1, i16 1, ptr @.compoundliteral.213 }, align 4
@.str.215 = private unnamed_addr constant [8 x i8] c"SC-8820\00", align 1
@.compoundliteral.216 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 19, i16 19, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.217 = internal constant [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk zeroinitializer, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 4, ptr @.compoundliteral.216 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.218 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.191, ptr @.str.215, i16 -1, i16 1, ptr @.compoundliteral.217 }, align 4
@.str.219 = private unnamed_addr constant [7 x i8] c"PC-300\00", align 1
@.compoundliteral.220 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.221 = internal constant [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk zeroinitializer, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 4, ptr @.compoundliteral.220 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.222 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.191, ptr @.str.219, i16 -1, i16 1, ptr @.compoundliteral.221 }, align 4
@.str.223 = private unnamed_addr constant [5 x i8] c"UM-1\00", align 1
@.compoundliteral.224 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.225 = internal constant [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk zeroinitializer, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 4, ptr @.compoundliteral.224 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.226 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.198, ptr @.str.223, i16 -1, i16 1, ptr @.compoundliteral.225 }, align 4
@.str.227 = private unnamed_addr constant [7 x i8] c"SK-500\00", align 1
@.compoundliteral.228 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 19, i16 19, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.229 = internal constant [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk zeroinitializer, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 4, ptr @.compoundliteral.228 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.230 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.191, ptr @.str.227, i16 -1, i16 1, ptr @.compoundliteral.229 }, align 4
@.str.231 = private unnamed_addr constant [7 x i8] c"SC-D70\00", align 1
@.compoundliteral.232 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 7, i16 7, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.233 = internal constant [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 4, ptr @.compoundliteral.232 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.234 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.191, ptr @.str.231, i16 -1, i16 1, ptr @.compoundliteral.233 }, align 4
@.str.235 = private unnamed_addr constant [5 x i8] c"UA-5\00", align 1
@.compoundliteral.236 = internal constant [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.237 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.198, ptr @.str.235, i16 -1, i16 1, ptr @.compoundliteral.236 }, align 4
@.str.238 = private unnamed_addr constant [8 x i8] c"XV-5050\00", align 1
@.compoundliteral.239 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.240 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.191, ptr @.str.238, i16 0, i16 4, ptr @.compoundliteral.239 }, align 4
@.str.241 = private unnamed_addr constant [7 x i8] c"UM-880\00", align 1
@.compoundliteral.242 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 511, i16 511, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.243 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.198, ptr @.str.241, i16 0, i16 4, ptr @.compoundliteral.242 }, align 4
@.str.244 = private unnamed_addr constant [6 x i8] c"SD-90\00", align 1
@.compoundliteral.245 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 15, i16 15, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.246 = internal constant [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 4, ptr @.compoundliteral.245 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.247 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.198, ptr @.str.244, i16 -1, i16 1, ptr @.compoundliteral.246 }, align 4
@.str.248 = private unnamed_addr constant [6 x i8] c"MMP-2\00", align 1
@.compoundliteral.249 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.250 = internal constant [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk zeroinitializer, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 4, ptr @.compoundliteral.249 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.251 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.191, ptr @.str.248, i16 -1, i16 1, ptr @.compoundliteral.250 }, align 4
@.str.252 = private unnamed_addr constant [8 x i8] c"V-SYNTH\00", align 1
@.compoundliteral.253 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.254 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.191, ptr @.str.252, i16 0, i16 4, ptr @.compoundliteral.253 }, align 4
@.str.255 = private unnamed_addr constant [7 x i8] c"UM-550\00", align 1
@.compoundliteral.256 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 63, i16 63, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.257 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.198, ptr @.str.255, i16 0, i16 4, ptr @.compoundliteral.256 }, align 4
@.str.258 = private unnamed_addr constant [6 x i8] c"UA-20\00", align 1
@.compoundliteral.259 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 2, i32 0, i32 0, i32 0, i8 1, i8 1, i8 0, i8 1, i8 0, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1073741824, i32 44100, i32 44100, i32 0, ptr null, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.260 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 2, i32 0, i32 0, i32 0, i8 2, i8 1, i8 0, i8 1, i8 0, i8 -126, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1073741824, i32 44100, i32 44100, i32 0, ptr null, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.261 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.262 = internal constant [5 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk zeroinitializer, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 17, ptr @.compoundliteral.259 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 17, ptr @.compoundliteral.260 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 4, ptr @.compoundliteral.261 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.263 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.198, ptr @.str.258, i16 -1, i16 1, ptr @.compoundliteral.262 }, align 4
@.str.264 = private unnamed_addr constant [6 x i8] c"SD-20\00", align 1
@.compoundliteral.265 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 3, i16 7, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.266 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.198, ptr @.str.264, i16 0, i16 4, ptr @.compoundliteral.265 }, align 4
@.str.267 = private unnamed_addr constant [6 x i8] c"SD-80\00", align 1
@.compoundliteral.268 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 15, i16 15, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.269 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.198, ptr @.str.267, i16 0, i16 4, ptr @.compoundliteral.268 }, align 4
@.str.270 = private unnamed_addr constant [7 x i8] c"UA-700\00", align 1
@.compoundliteral.271 = internal constant [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 18, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 18, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 18, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.272 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.198, ptr @.str.270, i16 -1, i16 1, ptr @.compoundliteral.271 }, align 4
@.str.273 = private unnamed_addr constant [8 x i8] c"XV-2020\00", align 1
@.compoundliteral.274 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.275 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.191, ptr @.str.273, i16 0, i16 4, ptr @.compoundliteral.274 }, align 4
@.str.276 = private unnamed_addr constant [7 x i8] c"VariOS\00", align 1
@.compoundliteral.277 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 7, i16 7, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.278 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.191, ptr @.str.276, i16 0, i16 4, ptr @.compoundliteral.277 }, align 4
@.str.279 = private unnamed_addr constant [4 x i8] c"PCR\00", align 1
@.compoundliteral.280 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 3, i16 7, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.281 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.198, ptr @.str.279, i16 0, i16 4, ptr @.compoundliteral.280 }, align 4
@.str.282 = private unnamed_addr constant [14 x i8] c"Digital Piano\00", align 1
@.compoundliteral.283 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.284 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.191, ptr @.str.282, i16 0, i16 4, ptr @.compoundliteral.283 }, align 4
@.str.285 = private unnamed_addr constant [5 x i8] c"BOSS\00", align 1
@.str.286 = private unnamed_addr constant [6 x i8] c"GS-10\00", align 1
@.compoundliteral.287 = internal constant [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 3, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.288 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.285, ptr @.str.286, i16 -1, i16 1, ptr @.compoundliteral.287 }, align 4
@.str.289 = private unnamed_addr constant [6 x i8] c"GI-20\00", align 1
@.compoundliteral.290 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.291 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.191, ptr @.str.289, i16 0, i16 4, ptr @.compoundliteral.290 }, align 4
@.str.292 = private unnamed_addr constant [6 x i8] c"RS-70\00", align 1
@.compoundliteral.293 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.294 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.191, ptr @.str.292, i16 0, i16 4, ptr @.compoundliteral.293 }, align 4
@.compoundliteral.295 = internal constant [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.296 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.295 }, align 4
@.compoundliteral.297 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 3, i16 7, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.298 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 4, ptr @.compoundliteral.297 }, align 4
@.str.299 = private unnamed_addr constant [6 x i8] c"PCR-A\00", align 1
@.compoundliteral.300 = internal constant [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.301 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.198, ptr @.str.299, i16 -1, i16 1, ptr @.compoundliteral.300 }, align 4
@.compoundliteral.302 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 3, i16 7, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.303 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.198, ptr @.str.299, i16 0, i16 4, ptr @.compoundliteral.302 }, align 4
@.str.304 = private unnamed_addr constant [7 x i8] c"UA-3FX\00", align 1
@.compoundliteral.305 = internal constant [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.306 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.198, ptr @.str.304, i16 -1, i16 1, ptr @.compoundliteral.305 }, align 4
@.str.307 = private unnamed_addr constant [7 x i8] c"UM-1SX\00", align 1
@.compoundliteral.308 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.198, ptr @.str.307, i16 0, i16 3, ptr null }, align 4
@.str.309 = private unnamed_addr constant [11 x i8] c"EXR Series\00", align 1
@.compoundliteral.310 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.191, ptr @.str.309, i16 0, i16 3, ptr null }, align 4
@.compoundliteral.311 = internal constant [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.312 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.311 }, align 4
@.compoundliteral.313 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 3, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.314 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 4, ptr @.compoundliteral.313 }, align 4
@.str.315 = private unnamed_addr constant [9 x i8] c"FANTOM-X\00", align 1
@.compoundliteral.316 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.317 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.191, ptr @.str.315, i16 0, i16 4, ptr @.compoundliteral.316 }, align 4
@.str.318 = private unnamed_addr constant [6 x i8] c"UA-25\00", align 1
@.compoundliteral.319 = internal constant [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 18, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 18, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 18, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.320 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.198, ptr @.str.318, i16 -1, i16 1, ptr @.compoundliteral.319 }, align 4
@.str.321 = private unnamed_addr constant [7 x i8] c"DR-880\00", align 1
@.compoundliteral.322 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.323 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.285, ptr @.str.321, i16 0, i16 4, ptr @.compoundliteral.322 }, align 4
@.compoundliteral.324 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 3, i16 3, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.325 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.191, ptr null, i16 0, i16 4, ptr @.compoundliteral.324 }, align 4
@.str.326 = private unnamed_addr constant [5 x i8] c"G-70\00", align 1
@.compoundliteral.327 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.328 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.191, ptr @.str.326, i16 0, i16 4, ptr @.compoundliteral.327 }, align 4
@.str.329 = private unnamed_addr constant [6 x i8] c"PC-50\00", align 1
@.compoundliteral.330 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.331 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.198, ptr @.str.329, i16 0, i16 4, ptr @.compoundliteral.330 }, align 4
@.str.332 = private unnamed_addr constant [7 x i8] c"UA-4FX\00", align 1
@.compoundliteral.333 = internal constant [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 18, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 18, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 18, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.334 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.198, ptr @.str.332, i16 -1, i16 1, ptr @.compoundliteral.333 }, align 4
@.compoundliteral.335 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.336 = internal constant [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 4, ptr @.compoundliteral.335 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.337 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.336 }, align 4
@.str.338 = private unnamed_addr constant [8 x i8] c"UA-25EX\00", align 1
@.compoundliteral.339 = internal constant [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 18, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 18, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 18, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.340 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.198, ptr @.str.338, i16 -1, i16 1, ptr @.compoundliteral.339 }, align 4
@.compoundliteral.341 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 7, i16 7, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.342 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 4, ptr @.compoundliteral.341 }, align 4
@.compoundliteral.343 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.344 = internal constant [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 4, ptr @.compoundliteral.343 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.345 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.344 }, align 4
@.compoundliteral.346 = internal global [1 x i32] [i32 44100], align 4
@.compoundliteral.347 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 1024, i32 10, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 5, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 64, i32 44100, i32 44100, i32 1, ptr @.compoundliteral.346, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.348 = internal global [1 x i32] [i32 44100], align 4
@.compoundliteral.349 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 1024, i32 12, i32 0, i32 0, i32 0, i8 1, i8 1, i8 0, i8 1, i8 0, i8 -123, i8 37, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 64, i32 44100, i32 44100, i32 1, ptr @.compoundliteral.348, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.350 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.351 = internal constant [6 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.347 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 17, ptr @.compoundliteral.349 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 4, ptr @.compoundliteral.350 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 4, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.352 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.351 }, align 4
@.compoundliteral.353 = internal global [1 x i32] [i32 44100], align 4
@.compoundliteral.354 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 1024, i32 4, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 5, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 64, i32 44100, i32 44100, i32 1, ptr @.compoundliteral.353, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.355 = internal global [1 x i32] [i32 44100], align 4
@.compoundliteral.356 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 1024, i32 6, i32 0, i32 0, i32 0, i8 1, i8 1, i8 0, i8 1, i8 0, i8 -123, i8 37, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 64, i32 44100, i32 44100, i32 1, ptr @.compoundliteral.355, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.357 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.358 = internal constant [6 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.354 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 17, ptr @.compoundliteral.356 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 4, ptr @.compoundliteral.357 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 4, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.359 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.358 }, align 4
@.compoundliteral.360 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.361 = internal constant [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 4, ptr @.compoundliteral.360 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.362 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.361 }, align 4
@.compoundliteral.363 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -3, i16 0, ptr null }, align 4
@.compoundliteral.364 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -3, i16 0, ptr null }, align 4
@.compoundliteral.365 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -3, i16 0, ptr null }, align 4
@.compoundliteral.366 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 2, ptr null }, align 4
@.str.367 = private unnamed_addr constant [9 x i8] c"Hercules\00", align 1
@.str.368 = private unnamed_addr constant [16 x i8] c"DJ Console (WE)\00", align 1
@.compoundliteral.369 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.370 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.367, ptr @.str.368, i16 4, i16 4, ptr @.compoundliteral.369 }, align 4
@.str.371 = private unnamed_addr constant [8 x i8] c"M-Audio\00", align 1
@.str.372 = private unnamed_addr constant [14 x i8] c"MidiSport 2x2\00", align 1
@.compoundliteral.373 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 3, i16 3, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.374 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.371, ptr @.str.372, i16 -1, i16 7, ptr @.compoundliteral.373 }, align 4
@.str.375 = private unnamed_addr constant [14 x i8] c"MidiSport 1x1\00", align 1
@.compoundliteral.376 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.377 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.371, ptr @.str.375, i16 -1, i16 7, ptr @.compoundliteral.376 }, align 4
@.str.378 = private unnamed_addr constant [11 x i8] c"Keystation\00", align 1
@.compoundliteral.379 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.380 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.371, ptr @.str.378, i16 -1, i16 7, ptr @.compoundliteral.379 }, align 4
@.str.381 = private unnamed_addr constant [14 x i8] c"MidiSport 4x4\00", align 1
@.compoundliteral.382 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 15, i16 15, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.383 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.371, ptr @.str.381, i16 -1, i16 7, ptr @.compoundliteral.382 }, align 4
@.str.384 = private unnamed_addr constant [14 x i8] c"MidiSport 8x8\00", align 1
@.compoundliteral.385 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 511, i16 511, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.386 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.371, ptr @.str.384, i16 -1, i16 7, ptr @.compoundliteral.385 }, align 4
@.compoundliteral.387 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 511, i16 511, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.388 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.371, ptr @.str.384, i16 -1, i16 7, ptr @.compoundliteral.387 }, align 4
@.str.389 = private unnamed_addr constant [14 x i8] c"MidiSport 2x4\00", align 1
@.compoundliteral.390 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 15, i16 3, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.391 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.371, ptr @.str.389, i16 -1, i16 7, ptr @.compoundliteral.390 }, align 4
@.str.392 = private unnamed_addr constant [8 x i8] c"Quattro\00", align 1
@.compoundliteral.393 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.394 = internal constant [11 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk zeroinitializer, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 4, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 5, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 6, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 7, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 8, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 9, i16 7, ptr @.compoundliteral.393 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.395 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.371, ptr @.str.392, i16 -1, i16 1, ptr @.compoundliteral.394 }, align 4
@.str.396 = private unnamed_addr constant [11 x i8] c"AudioPhile\00", align 1
@.compoundliteral.397 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.398 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.371, ptr @.str.396, i16 6, i16 7, ptr @.compoundliteral.397 }, align 4
@.str.399 = private unnamed_addr constant [6 x i8] c"Ozone\00", align 1
@.compoundliteral.400 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.401 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.371, ptr @.str.399, i16 3, i16 7, ptr @.compoundliteral.400 }, align 4
@.str.402 = private unnamed_addr constant [11 x i8] c"OmniStudio\00", align 1
@.compoundliteral.403 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.404 = internal constant [11 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk zeroinitializer, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 4, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 5, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 6, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 7, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 8, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 9, i16 7, ptr @.compoundliteral.403 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.405 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.371, ptr @.str.402, i16 -1, i16 1, ptr @.compoundliteral.404 }, align 4
@.compoundliteral.406 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.407 = internal constant [5 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 7, ptr @.compoundliteral.406 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.408 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.407 }, align 4
@.compoundliteral.409 = internal global [4 x i32] [i32 44100, i32 48000, i32 88200, i32 96000], align 4
@.compoundliteral.410 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 6, i32 0, i32 0, i32 0, i8 2, i8 1, i8 0, i8 1, i8 1, i8 1, i8 9, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1728, i32 44100, i32 96000, i32 4, ptr @.compoundliteral.409, i8 -128, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.411 = internal global [4 x i32] [i32 44100, i32 48000, i32 88200, i32 96000], align 4
@.compoundliteral.412 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 4, i32 0, i32 0, i32 0, i8 3, i8 1, i8 0, i8 1, i8 1, i8 -127, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1728, i32 44100, i32 96000, i32 4, ptr @.compoundliteral.411, i8 -128, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.413 = internal constant [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 19, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 17, ptr @.compoundliteral.410 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 17, ptr @.compoundliteral.412 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.414 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.413 }, align 4
@.compoundliteral.415 = internal global [4 x i32] [i32 44100, i32 48000, i32 88200, i32 96000], align 4
@.compoundliteral.416 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 8, i32 0, i32 0, i32 0, i8 2, i8 1, i8 0, i8 1, i8 1, i8 1, i8 9, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1728, i32 44100, i32 96000, i32 4, ptr @.compoundliteral.415, i8 -128, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.417 = internal global [4 x i32] [i32 44100, i32 48000, i32 88200, i32 96000], align 4
@.compoundliteral.418 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 6, i32 0, i32 0, i32 0, i8 3, i8 1, i8 0, i8 1, i8 1, i8 -127, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1728, i32 44100, i32 96000, i32 4, ptr @.compoundliteral.417, i8 -128, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.419 = internal constant [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 19, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 17, ptr @.compoundliteral.416 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 17, ptr @.compoundliteral.418 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.420 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.419 }, align 4
@.compoundliteral.421 = internal global [4 x i32] [i32 44100, i32 48000, i32 88200, i32 96000], align 4
@.compoundliteral.422 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 8, i32 0, i32 0, i32 0, i8 1, i8 1, i8 0, i8 1, i8 1, i8 1, i8 9, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1728, i32 44100, i32 96000, i32 4, ptr @.compoundliteral.421, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.423 = internal global [4 x i32] [i32 44100, i32 48000, i32 88200, i32 96000], align 4
@.compoundliteral.424 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 8, i32 0, i32 0, i32 0, i8 2, i8 1, i8 0, i8 1, i8 1, i8 -127, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1728, i32 44100, i32 96000, i32 4, ptr @.compoundliteral.423, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.425 = internal constant [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 19, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 17, ptr @.compoundliteral.422 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 17, ptr @.compoundliteral.424 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.426 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.425 }, align 4
@.compoundliteral.427 = internal global [4 x i32] [i32 44100, i32 48000, i32 88200, i32 96000], align 4
@.compoundliteral.428 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 8, i32 0, i32 0, i32 0, i8 1, i8 1, i8 0, i8 1, i8 1, i8 1, i8 9, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1728, i32 44100, i32 96000, i32 4, ptr @.compoundliteral.427, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.429 = internal global [4 x i32] [i32 44100, i32 48000, i32 88200, i32 96000], align 4
@.compoundliteral.430 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 8, i32 0, i32 0, i32 0, i8 2, i8 1, i8 0, i8 1, i8 1, i8 -127, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1728, i32 44100, i32 96000, i32 4, ptr @.compoundliteral.429, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.431 = internal constant [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 19, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 17, ptr @.compoundliteral.428 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 17, ptr @.compoundliteral.430 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.432 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.431 }, align 4
@.str.433 = private unnamed_addr constant [6 x i8] c"Casio\00", align 1
@.str.434 = private unnamed_addr constant [7 x i8] c"PL-40R\00", align 1
@.compoundliteral.435 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.433, ptr @.str.434, i16 0, i16 5, ptr null }, align 4
@.str.436 = private unnamed_addr constant [9 x i8] c"Keyboard\00", align 1
@.compoundliteral.437 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.433, ptr @.str.436, i16 0, i16 5, ptr null }, align 4
@.str.438 = private unnamed_addr constant [5 x i8] c"MOTU\00", align 1
@.str.439 = private unnamed_addr constant [9 x i8] c"Fastlane\00", align 1
@.compoundliteral.440 = internal constant [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 9, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.441 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.438, ptr @.str.439, i16 -1, i16 1, ptr @.compoundliteral.440 }, align 4
@.str.442 = private unnamed_addr constant [7 x i8] c"Emagic\00", align 1
@.str.443 = private unnamed_addr constant [8 x i8] c"Unitor8\00", align 1
@.compoundliteral.444 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 -32513, i16 -32513, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.445 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.442, ptr @.str.443, i16 2, i16 10, ptr @.compoundliteral.444 }, align 4
@.compoundliteral.446 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 -32513, i16 -32513, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.447 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.442, ptr null, i16 2, i16 10, ptr @.compoundliteral.446 }, align 4
@.compoundliteral.448 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 -32753, i16 -32765, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.449 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.442, ptr null, i16 2, i16 10, ptr @.compoundliteral.448 }, align 4
@.str.450 = private unnamed_addr constant [11 x i8] c"KORG, Inc.\00", align 1
@.compoundliteral.451 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.450, ptr null, i16 3, i16 3, ptr null }, align 4
@.compoundliteral.452 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.450, ptr null, i16 3, i16 3, ptr null }, align 4
@.compoundliteral.453 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.450, ptr null, i16 3, i16 3, ptr null }, align 4
@.str.454 = private unnamed_addr constant [5 x i8] c"AKAI\00", align 1
@.str.455 = private unnamed_addr constant [6 x i8] c"MPD16\00", align 1
@.compoundliteral.456 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.454, ptr @.str.455, i16 0, i16 12, ptr null }, align 4
@.compoundliteral.457 = internal constant [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk zeroinitializer, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 3, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.458 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.457 }, align 4
@.compoundliteral.459 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.460 = internal constant [5 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 4, ptr @.compoundliteral.459 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.461 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.460 }, align 4
@.compoundliteral.462 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.463 = internal constant [5 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 4, ptr @.compoundliteral.462 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.464 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.463 }, align 4
@.str.465 = private unnamed_addr constant [9 x i8] c"TerraTec\00", align 1
@.str.466 = private unnamed_addr constant [9 x i8] c"PHASE 26\00", align 1
@.compoundliteral.467 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.465, ptr @.str.466, i16 3, i16 3, ptr null }, align 4
@.compoundliteral.468 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.465, ptr @.str.466, i16 3, i16 3, ptr null }, align 4
@.compoundliteral.469 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.465, ptr @.str.466, i16 3, i16 3, ptr null }, align 4
@.str.470 = private unnamed_addr constant [9 x i8] c"Miditech\00", align 1
@.str.471 = private unnamed_addr constant [12 x i8] c"Play'n Roll\00", align 1
@.compoundliteral.472 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.470, ptr @.str.471, i16 0, i16 11, ptr null }, align 4
@.str.473 = private unnamed_addr constant [9 x i8] c"Novation\00", align 1
@.str.474 = private unnamed_addr constant [22 x i8] c"ReMOTE Audio/XStation\00", align 1
@.compoundliteral.475 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.473, ptr @.str.474, i16 4, i16 8, ptr null }, align 4
@.str.476 = private unnamed_addr constant [8 x i8] c"Speedio\00", align 1
@.compoundliteral.477 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.473, ptr @.str.476, i16 3, i16 8, ptr null }, align 4
@.compoundliteral.478 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 9, ptr null }, align 4
@.compoundliteral.479 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 9, ptr null }, align 4
@.str.480 = private unnamed_addr constant [10 x i8] c"Focusrite\00", align 1
@.str.481 = private unnamed_addr constant [14 x i8] c"Saffire 6 USB\00", align 1
@.compoundliteral.482 = internal global [2 x i32] [i32 44100, i32 48000], align 4
@.compoundliteral.483 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 4, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 1, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i32 588, i32 192, i32 44100, i32 48000, i32 2, ptr @.compoundliteral.482, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.484 = internal global [2 x i32] [i32 44100, i32 48000], align 4
@.compoundliteral.485 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 2, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 -126, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i32 294, i32 192, i32 44100, i32 48000, i32 2, ptr @.compoundliteral.484, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.486 = internal constant [5 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 19, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.483 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.485 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 9, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.487 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.480, ptr @.str.481, i16 -1, i16 1, ptr @.compoundliteral.486 }, align 4
@.str.488 = private unnamed_addr constant [7 x i8] c"Twitch\00", align 1
@.compoundliteral.489 = internal global [2 x i32] [i32 44100, i32 48000], align 4
@.compoundliteral.490 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 4, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 1, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 192, i32 44100, i32 48000, i32 2, ptr @.compoundliteral.489, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.491 = internal constant [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.490 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 9, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.492 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.473, ptr @.str.488, i16 -1, i16 1, ptr @.compoundliteral.491 }, align 4
@.str.493 = private unnamed_addr constant [9 x i8] c"ReMOTE25\00", align 1
@.compoundliteral.494 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.473, ptr @.str.493, i16 0, i16 8, ptr null }, align 4
@.compoundliteral.495 = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 3, i16 3, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.496 = internal constant [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 4, ptr @.compoundliteral.495 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 4, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.497 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.496 }, align 4
@.str.498 = private unnamed_addr constant [8 x i8] c"QinHeng\00", align 1
@.str.499 = private unnamed_addr constant [6 x i8] c"CH345\00", align 1
@.compoundliteral.500 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.498, ptr @.str.499, i16 1, i16 15, ptr null }, align 4
@.str.501 = private unnamed_addr constant [12 x i8] c"Midistart-2\00", align 1
@.compoundliteral.502 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.470, ptr @.str.501, i16 0, i16 11, ptr null }, align 4
@.compoundliteral.503 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 11, ptr null }, align 4
@.str.504 = private unnamed_addr constant [11 x i8] c"Digidesign\00", align 1
@.str.505 = private unnamed_addr constant [5 x i8] c"MBox\00", align 1
@.compoundliteral.506 = internal global [1 x i32] [i32 48000], align 4
@.compoundliteral.507 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 8589934592, i32 2, i32 0, i32 0, i32 0, i8 1, i8 1, i8 0, i8 1, i8 4, i8 2, i8 13, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 304, i32 128, i32 48000, i32 48000, i32 1, ptr @.compoundliteral.506, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.508 = internal global [1 x i32] [i32 48000], align 4
@.compoundliteral.509 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 8589934592, i32 2, i32 0, i32 0, i32 0, i8 1, i8 1, i8 0, i8 1, i8 4, i8 -127, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 304, i32 128, i32 48000, i32 48000, i32 1, ptr @.compoundliteral.508, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.510 = internal constant [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 19, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 17, ptr @.compoundliteral.507 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 17, ptr @.compoundliteral.509 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.511 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.504, ptr @.str.505, i16 -1, i16 1, ptr @.compoundliteral.510 }, align 4
@.str.512 = private unnamed_addr constant [7 x i8] c"Mbox 2\00", align 1
@.compoundliteral.513 = internal global [1 x i32] [i32 48000], align 4
@.compoundliteral.514 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 8589934592, i32 2, i32 0, i32 0, i32 0, i8 2, i8 2, i8 0, i8 1, i8 0, i8 3, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 128, i32 48000, i32 48000, i32 1, ptr @.compoundliteral.513, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.515 = internal global [1 x i32] [i32 48000], align 4
@.compoundliteral.516 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 8589934592, i32 2, i32 0, i32 0, i32 0, i8 4, i8 2, i8 0, i8 1, i8 1, i8 -123, i8 12, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 128, i32 48000, i32 48000, i32 1, ptr @.compoundliteral.515, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.517 = internal constant %struct.snd_usb_midi_endpoint_info { i8 2, i8 0, i8 -127, i8 1, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@.compoundliteral.518 = internal constant [8 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk zeroinitializer, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 17, ptr @.compoundliteral.514 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 4, i16 17, ptr @.compoundliteral.516 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 5, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 6, i16 7, ptr @.compoundliteral.517 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.519 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.504, ptr @.str.512, i16 -1, i16 1, ptr @.compoundliteral.518 }, align 4
@.str.520 = private unnamed_addr constant [7 x i8] c"TASCAM\00", align 1
@.str.521 = private unnamed_addr constant [11 x i8] c"US122 MKII\00", align 1
@.compoundliteral.522 = internal global [4 x i32] [i32 44100, i32 48000, i32 88200, i32 96000], align 4
@.compoundliteral.523 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 2, i32 0, i32 0, i32 0, i8 1, i8 1, i8 0, i8 1, i8 1, i8 2, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1728, i32 44100, i32 96000, i32 4, ptr @.compoundliteral.522, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.524 = internal constant [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk zeroinitializer, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 17, ptr @.compoundliteral.523 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.525 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.520, ptr @.str.521, i16 -1, i16 1, ptr @.compoundliteral.524 }, align 4
@.str.526 = private unnamed_addr constant [6 x i8] c"Denon\00", align 1
@.str.527 = private unnamed_addr constant [9 x i8] c"DN-X1600\00", align 1
@.compoundliteral.528 = internal global [1 x i32] [i32 48000], align 4
@.compoundliteral.529 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 8, i32 0, i32 0, i32 0, i8 1, i8 1, i8 0, i8 1, i8 0, i8 1, i8 9, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 312, i32 128, i32 48000, i32 48000, i32 1, ptr @.compoundliteral.528, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.530 = internal global [1 x i32] [i32 48000], align 4
@.compoundliteral.531 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 8, i32 0, i32 0, i32 0, i8 2, i8 1, i8 0, i8 1, i8 0, i8 -123, i8 9, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 312, i32 128, i32 48000, i32 48000, i32 1, ptr @.compoundliteral.530, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.532 = internal constant [5 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk zeroinitializer, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 17, ptr @.compoundliteral.529 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 17, ptr @.compoundliteral.531 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 4, i16 3, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.533 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.526, ptr @.str.527, i16 -1, i16 1, ptr @.compoundliteral.532 }, align 4
@.str.534 = private unnamed_addr constant [10 x i8] c"Microsoft\00", align 1
@.str.535 = private unnamed_addr constant [35 x i8] c"XboxLive Headset/Xbox Communicator\00", align 1
@.compoundliteral.536 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4, i32 1, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1073741824, i32 22050, i32 22050, i32 0, ptr null, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.537 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4, i32 1, i32 0, i32 0, i32 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 -123, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1073741824, i32 16000, i32 16000, i32 0, ptr null, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.538 = internal constant [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.536 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 17, ptr @.compoundliteral.537 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.539 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.534, ptr @.str.535, i16 -1, i16 1, ptr @.compoundliteral.538 }, align 4
@.compoundliteral.540 = internal global [2 x i32] [i32 44100, i32 48000], align 4
@.compoundliteral.541 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 4, i32 0, i32 0, i32 0, i8 1, i8 1, i8 0, i8 1, i8 1, i8 1, i8 8, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 192, i32 44100, i32 48000, i32 2, ptr @.compoundliteral.540, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.542 = internal constant [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 19, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 17, ptr @.compoundliteral.541 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.543 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.542 }, align 4
@.compoundliteral.544 = internal constant [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 3, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.545 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.544 }, align 4
@.compoundliteral.546 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 3, ptr null }, align 4
@.compoundliteral.547 = internal global [1 x i32] [i32 48000], align 4
@.compoundliteral.548 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4, i32 2, i32 0, i32 0, i32 0, i8 1, i8 1, i8 0, i8 1, i8 -127, i8 3, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 128, i32 48000, i32 48000, i32 1, ptr @.compoundliteral.547, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.549 = internal constant [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 19, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 17, ptr @.compoundliteral.548 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.550 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.549 }, align 4
@.str.551 = private unnamed_addr constant [12 x i8] c"MicroBookII\00", align 1
@.compoundliteral.552 = internal global [1 x i32] [i32 96000], align 4
@.compoundliteral.553 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 8589934592, i32 6, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 -124, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 216, i32 1024, i32 96000, i32 96000, i32 1, ptr @.compoundliteral.552, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.554 = internal global [1 x i32] [i32 96000], align 4
@.compoundliteral.555 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 8589934592, i32 8, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 3, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 288, i32 1024, i32 96000, i32 96000, i32 1, ptr @.compoundliteral.554, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.556 = internal constant [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 19, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.553 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.555 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.557 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.438, ptr @.str.551, i16 -1, i16 1, ptr @.compoundliteral.556 }, align 4
@.compoundliteral.558 = internal global [1 x i32] [i32 44100], align 4
@.compoundliteral.559 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 1024, i32 12, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 5, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 64, i32 44100, i32 44100, i32 1, ptr @.compoundliteral.558, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.560 = internal global [1 x i32] [i32 44100], align 4
@.compoundliteral.561 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 1024, i32 10, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 1, i8 0, i8 -122, i8 37, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 64, i32 44100, i32 44100, i32 1, ptr @.compoundliteral.560, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.562 = internal constant [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.559 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.561 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.563 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.562 }, align 4
@.compoundliteral.564 = internal global [1 x i32] [i32 48000], align 4
@.compoundliteral.565 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 8, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 1, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 128, i32 48000, i32 48000, i32 1, ptr @.compoundliteral.564, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.566 = internal global [1 x i32] [i32 48000], align 4
@.compoundliteral.567 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 8, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 1, i8 0, i8 -126, i8 37, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 128, i32 48000, i32 48000, i32 1, ptr @.compoundliteral.566, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.568 = internal constant [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.565 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.567 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.569 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.568 }, align 4
@.compoundliteral.570 = internal global [1 x i32] [i32 44100], align 4
@.compoundliteral.571 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 4, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 1, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 64, i32 44100, i32 44100, i32 1, ptr @.compoundliteral.570, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.572 = internal global [1 x i32] [i32 44100], align 4
@.compoundliteral.573 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 2, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 1, i8 0, i8 -126, i8 37, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 64, i32 44100, i32 44100, i32 1, ptr @.compoundliteral.572, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.574 = internal constant [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.571 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.573 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.575 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.574 }, align 4
@.compoundliteral.576 = internal global [1 x i32] [i32 44100], align 4
@.compoundliteral.577 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 6, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 1, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 64, i32 44100, i32 44100, i32 1, ptr @.compoundliteral.576, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.578 = internal global [1 x i32] [i32 44100], align 4
@.compoundliteral.579 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 4, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 1, i8 0, i8 -126, i8 37, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 64, i32 44100, i32 44100, i32 1, ptr @.compoundliteral.578, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.580 = internal constant [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.577 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.579 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.581 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.580 }, align 4
@.compoundliteral.582 = internal global [1 x i32] [i32 44100], align 4
@.compoundliteral.583 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 4, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 1, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 64, i32 44100, i32 44100, i32 1, ptr @.compoundliteral.582, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.584 = internal global [1 x i32] [i32 44100], align 4
@.compoundliteral.585 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 6, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 1, i8 0, i8 -126, i8 37, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 64, i32 44100, i32 44100, i32 1, ptr @.compoundliteral.584, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.586 = internal constant [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.583 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.585 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.587 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.586 }, align 4
@.compoundliteral.588 = internal global [3 x i32] [i32 44100, i32 48000, i32 96000], align 4
@.compoundliteral.589 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 10, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 1, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1216, i32 44100, i32 96000, i32 3, ptr @.compoundliteral.588, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.590 = internal global [3 x i32] [i32 44100, i32 48000, i32 96000], align 4
@.compoundliteral.591 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 12, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 1, i8 0, i8 -126, i8 37, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1216, i32 44100, i32 96000, i32 3, ptr @.compoundliteral.590, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.592 = internal constant [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.589 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.591 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.593 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.592 }, align 4
@.str.594 = private unnamed_addr constant [13 x i8] c"MacroSilicon\00", align 1
@.str.595 = private unnamed_addr constant [7 x i8] c"MS2109\00", align 1
@.compoundliteral.596 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4, i32 2, i32 0, i32 0, i32 0, i8 3, i8 1, i8 0, i8 1, i8 0, i8 -126, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1073741824, i32 48000, i32 48000, i32 0, ptr null, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.597 = internal constant [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 19, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 17, ptr @.compoundliteral.596 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.598 = internal constant %struct.snd_usb_audio_quirk { ptr @.str.594, ptr @.str.595, i16 -1, i16 1, ptr @.compoundliteral.597 }, align 4
@.compoundliteral.599 = internal global [3 x i32] [i32 44100, i32 48000, i32 96000], align 4
@.compoundliteral.600 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 8, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 5, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1216, i32 44100, i32 96000, i32 3, ptr @.compoundliteral.599, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.601 = internal global [3 x i32] [i32 44100, i32 48000, i32 96000], align 4
@.compoundliteral.602 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 8, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 1, i8 0, i8 -122, i8 37, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1216, i32 44100, i32 96000, i32 3, ptr @.compoundliteral.601, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.603 = internal constant [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.600 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.602 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.604 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.603 }, align 4
@.compoundliteral.605 = internal global [1 x i32] [i32 48000], align 4
@.compoundliteral.606 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 10, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 1, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 128, i32 48000, i32 48000, i32 1, ptr @.compoundliteral.605, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.607 = internal global [1 x i32] [i32 48000], align 4
@.compoundliteral.608 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 12, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 1, i8 0, i8 -126, i8 37, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 128, i32 48000, i32 48000, i32 1, ptr @.compoundliteral.607, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.609 = internal constant [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.606 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.608 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.610 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.609 }, align 4
@.compoundliteral.611 = internal global [3 x i32] [i32 44100, i32 48000, i32 96000], align 4
@.compoundliteral.612 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 8, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 5, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1216, i32 44100, i32 96000, i32 3, ptr @.compoundliteral.611, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.613 = internal global [3 x i32] [i32 44100, i32 48000, i32 96000], align 4
@.compoundliteral.614 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 8, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 1, i8 0, i8 -122, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1216, i32 44100, i32 96000, i32 3, ptr @.compoundliteral.613, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.615 = internal constant [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.612 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.614 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.616 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.615 }, align 4
@.compoundliteral.617 = internal global [1 x i32] [i32 48000], align 4
@.compoundliteral.618 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 8, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 1, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 128, i32 48000, i32 48000, i32 1, ptr @.compoundliteral.617, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.619 = internal global [1 x i32] [i32 48000], align 4
@.compoundliteral.620 = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 8, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 1, i8 0, i8 -126, i8 37, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 128, i32 48000, i32 48000, i32 1, ptr @.compoundliteral.619, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@.compoundliteral.621 = internal constant [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.618 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.620 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.622 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.621 }, align 4
@.compoundliteral.623 = internal constant [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 4, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], align 4
@.compoundliteral.624 = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.623 }, align 4
@usb_audio_driver = internal global %struct.usb_driver { ptr @.str.626, ptr @usb_audio_probe, ptr @usb_audio_disconnect, ptr null, ptr @usb_audio_suspend, ptr @usb_audio_resume, ptr @usb_audio_resume, ptr null, ptr null, ptr @usb_audio_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 2 }, align 4
@.str.625 = private unnamed_addr constant [14 x i8] c"snd_usb_audio\00", align 1
@.str.626 = private unnamed_addr constant [14 x i8] c"snd-usb-audio\00", align 1
@register_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @register_mutex, i64 12), ptr getelementptr (i8, ptr @register_mutex, i64 12) } }, align 4
@usb_chip = internal unnamed_addr global [32 x ptr] zeroinitializer, align 4
@.str.627 = private unnamed_addr constant [68 x i8] c"USB device is in the shutdown state, cannot create a card instance\0A\00", align 1
@.str.628 = private unnamed_addr constant [32 x i8] c"device (%04x:%04x) is disabled\0A\00", align 1
@.str.629 = private unnamed_addr constant [31 x i8] c"no available usb audio device\0A\00", align 1
@.str.630 = private unnamed_addr constant [59 x i8] c"Too many interfaces assigned to the single USB-audio card\0A\00", align 1
@.str.631 = private unnamed_addr constant [54 x i8] c"Found post-registration device assignment: %08x:%02x\0A\00", align 1
@.str.632 = private unnamed_addr constant [6 x i8] c"%x:%x\00", align 1
@.str.633 = private unnamed_addr constant [52 x i8] c"device (%04x:%04x): applying quirk alias %04x:%04x\0A\00", align 1
@.str.634 = private unnamed_addr constant [25 x i8] c"unknown device speed %d\0A\00", align 1
@.str.635 = private unnamed_addr constant [32 x i8] c"cannot create card instance %d\0A\00", align 1
@snd_usb_audio_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.636 = private unnamed_addr constant [13 x i8] c"&chip->mutex\00", align 1
@snd_usb_audio_create.__key.637 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.638 = private unnamed_addr constant [21 x i8] c"&chip->shutdown_wait\00", align 1
@.str.639 = private unnamed_addr constant [10 x i8] c"USB-Audio\00", align 1
@.str.640 = private unnamed_addr constant [13 x i8] c"USB%04x:%04x\00", align 1
@.str.641 = private unnamed_addr constant [23 x i8] c"USB Device %#04x:%#04x\00", align 1
@lookup_device_name.p = internal unnamed_addr global ptr null, align 4
@usb_audio_names = internal constant [42 x %struct.usb_audio_device_name] [%struct.usb_audio_device_name { i32 66060905, ptr @.str.642, ptr @.str.643, ptr @.str.644 }, %struct.usb_audio_device_name { i32 66061671, ptr @.str.642, ptr @.str.645, ptr @.str.646 }, %struct.usb_audio_device_name { i32 68460544, ptr @.str.647, ptr @.str.648, ptr @.str.649 }, %struct.usb_audio_device_name { i32 68460545, ptr @.str.647, ptr @.str.650, ptr @.str.651 }, %struct.usb_audio_device_name { i32 68460546, ptr @.str.652, ptr @.str.653, ptr @.str.654 }, %struct.usb_audio_device_name { i32 69087248, ptr @.str.655, ptr @.str.656, ptr null }, %struct.usb_audio_device_name { i32 69087304, ptr @.str.657, ptr @.str.658, ptr null }, %struct.usb_audio_device_name { i32 74254736, ptr @.str.659, ptr @.str.660, ptr null }, %struct.usb_audio_device_name { i32 98632712, ptr @.str.661, ptr @.str.662, ptr null }, %struct.usb_audio_device_name { i32 98632832, ptr @.str.663, ptr @.str.664, ptr null }, %struct.usb_audio_device_name { i32 184883479, ptr @.str.652, ptr @.str.653, ptr @.str.654 }, %struct.usb_audio_device_name { i32 184883480, ptr @.str.652, ptr @.str.653, ptr @.str.654 }, %struct.usb_audio_device_name { i32 198852628, ptr @.str.665, ptr @.str.666, ptr @.str.667 }, %struct.usb_audio_device_name { i32 198852654, ptr @.str.665, ptr @.str.668, ptr @.str.667 }, %struct.usb_audio_device_name { i32 214761512, ptr @.str.465, ptr @.str.669, ptr null }, %struct.usb_audio_device_name { i32 227279106, ptr null, ptr @.str.670, ptr null }, %struct.usb_audio_device_name { i32 227279107, ptr null, ptr @.str.671, ptr null }, %struct.usb_audio_device_name { i32 229641572, ptr @.str.652, ptr @.str.653, ptr @.str.654 }, %struct.usb_audio_device_name { i32 229659709, ptr @.str.652, ptr @.str.653, ptr @.str.654 }, %struct.usb_audio_device_name { i32 265879560, ptr @.str.663, ptr @.str.672, ptr null }, %struct.usb_audio_device_name { i32 272433408, ptr @.str.673, ptr @.str.674, ptr null }, %struct.usb_audio_device_name { i32 272433409, ptr @.str.673, ptr @.str.674, ptr null }, %struct.usb_audio_device_name { i32 333774849, ptr @.str.675, ptr @.str.676, ptr null }, %struct.usb_audio_device_name { i32 397021254, ptr @.str.677, ptr @.str.678, ptr @.str.679 }, %struct.usb_audio_device_name { i32 397021261, ptr @.str.677, ptr @.str.680, ptr @.str.681 }, %struct.usb_audio_device_name { i32 651037185, ptr @.str.652, ptr @.str.653, ptr @.str.654 }, %struct.usb_audio_device_name { i32 541094400, ptr @.str.663, ptr @.str.672, ptr null }, %struct.usb_audio_device_name { i32 541094401, ptr @.str.663, ptr @.str.682, ptr null }, %struct.usb_audio_device_name { i32 541094416, ptr @.str.663, ptr @.str.672, ptr null }, %struct.usb_audio_device_name { i32 541094417, ptr @.str.663, ptr @.str.682, ptr null }, %struct.usb_audio_device_name { i32 541094419, ptr @.str.663, ptr @.str.672, ptr null }, %struct.usb_audio_device_name { i32 541094423, ptr @.str.663, ptr @.str.672, ptr null }, %struct.usb_audio_device_name { i32 541094427, ptr @.str.663, ptr @.str.672, ptr null }, %struct.usb_audio_device_name { i32 541094430, ptr @.str.663, ptr @.str.672, ptr null }, %struct.usb_audio_device_name { i32 541094431, ptr @.str.663, ptr @.str.672, ptr null }, %struct.usb_audio_device_name { i32 541094464, ptr @.str.663, ptr @.str.683, ptr null }, %struct.usb_audio_device_name { i32 541094496, ptr @.str.663, ptr @.str.672, ptr null }, %struct.usb_audio_device_name { i32 541094512, ptr @.str.663, ptr @.str.672, ptr null }, %struct.usb_audio_device_name { i32 541094528, ptr @.str.663, ptr @.str.672, ptr null }, %struct.usb_audio_device_name { i32 541094529, ptr @.str.663, ptr @.str.682, ptr null }, %struct.usb_audio_device_name { i32 541098496, ptr @.str.663, ptr @.str.664, ptr null }, %struct.usb_audio_device_name zeroinitializer], align 4
@.str.642 = private unnamed_addr constant [3 x i8] c"HP\00", align 1
@.str.643 = private unnamed_addr constant [31 x i8] c"Thunderbolt Dock Audio Headset\00", align 1
@.str.644 = private unnamed_addr constant [34 x i8] c"HP-Thunderbolt-Dock-Audio-Headset\00", align 1
@.str.645 = private unnamed_addr constant [30 x i8] c"Thunderbolt Dock Audio Module\00", align 1
@.str.646 = private unnamed_addr constant [33 x i8] c"HP-Thunderbolt-Dock-Audio-Module\00", align 1
@.str.647 = private unnamed_addr constant [9 x i8] c"Gigabyte\00", align 1
@.str.648 = private unnamed_addr constant [29 x i8] c"Aorus Master Front Headphone\00", align 1
@.str.649 = private unnamed_addr constant [38 x i8] c"Gigabyte-Aorus-Master-Front-Headphone\00", align 1
@.str.650 = private unnamed_addr constant [24 x i8] c"Aorus Master Main Audio\00", align 1
@.str.651 = private unnamed_addr constant [33 x i8] c"Gigabyte-Aorus-Master-Main-Audio\00", align 1
@.str.652 = private unnamed_addr constant [8 x i8] c"Realtek\00", align 1
@.str.653 = private unnamed_addr constant [14 x i8] c"ALC1220-VB-DT\00", align 1
@.str.654 = private unnamed_addr constant [27 x i8] c"Realtek-ALC1220-VB-Desktop\00", align 1
@.str.655 = private unnamed_addr constant [14 x i8] c"Creative Labs\00", align 1
@.str.656 = private unnamed_addr constant [19 x i8] c"Sound Blaster MP3+\00", align 1
@.str.657 = private unnamed_addr constant [8 x i8] c"Toshiba\00", align 1
@.str.658 = private unnamed_addr constant [8 x i8] c"SB-0500\00", align 1
@.str.659 = private unnamed_addr constant [15 x i8] c"Logitech, Inc.\00", align 1
@.str.660 = private unnamed_addr constant [18 x i8] c"QuickCam Pro 9000\00", align 1
@.str.661 = private unnamed_addr constant [7 x i8] c"Syntek\00", align 1
@.str.662 = private unnamed_addr constant [8 x i8] c"STK1160\00", align 1
@.str.663 = private unnamed_addr constant [10 x i8] c"Hauppauge\00", align 1
@.str.664 = private unnamed_addr constant [9 x i8] c"Woodbury\00", align 1
@.str.665 = private unnamed_addr constant [5 x i8] c"Dell\00", align 1
@.str.666 = private unnamed_addr constant [10 x i8] c"WD15 Dock\00", align 1
@.str.667 = private unnamed_addr constant [15 x i8] c"Dell-WD15-Dock\00", align 1
@.str.668 = private unnamed_addr constant [10 x i8] c"WD19 Dock\00", align 1
@.str.669 = private unnamed_addr constant [14 x i8] c"Aureon5.1MkII\00", align 1
@.str.670 = private unnamed_addr constant [13 x i8] c"ICUSBAUDIO7D\00", align 1
@.str.671 = private unnamed_addr constant [24 x i8] c"Audio Advantage MicroII\00", align 1
@.str.672 = private unnamed_addr constant [9 x i8] c"HVR-950Q\00", align 1
@.str.673 = private unnamed_addr constant [8 x i8] c"Stanton\00", align 1
@.str.674 = private unnamed_addr constant [11 x i8] c"ScratchAmp\00", align 1
@.str.675 = private unnamed_addr constant [5 x i8] c"Rane\00", align 1
@.str.676 = private unnamed_addr constant [5 x i8] c"SL-1\00", align 1
@.str.677 = private unnamed_addr constant [7 x i8] c"Lenovo\00", align 1
@.str.678 = private unnamed_addr constant [23 x i8] c"ThinkStation P620 Rear\00", align 1
@.str.679 = private unnamed_addr constant [30 x i8] c"Lenovo-ThinkStation-P620-Rear\00", align 1
@.str.680 = private unnamed_addr constant [23 x i8] c"ThinkStation P620 Main\00", align 1
@.str.681 = private unnamed_addr constant [30 x i8] c"Lenovo-ThinkStation-P620-Main\00", align 1
@.str.682 = private unnamed_addr constant [13 x i8] c"HVR-950Q-MXL\00", align 1
@.str.683 = private unnamed_addr constant [8 x i8] c"HVR-850\00", align 1
@.str.684 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.685 = private unnamed_addr constant [5 x i8] c" at \00", align 1
@.str.686 = private unnamed_addr constant [12 x i8] c", low speed\00", align 1
@.str.687 = private unnamed_addr constant [13 x i8] c", full speed\00", align 1
@.str.688 = private unnamed_addr constant [13 x i8] c", high speed\00", align 1
@.str.689 = private unnamed_addr constant [14 x i8] c", super speed\00", align 1
@.str.690 = private unnamed_addr constant [19 x i8] c", super speed plus\00", align 1
@.str.691 = private unnamed_addr constant [10 x i8] c"usb-%s-%s\00", align 1
@.str.692 = private unnamed_addr constant [47 x i8] c"unknown interface protocol %#02x, assuming v1\0A\00", align 1
@.str.693 = private unnamed_addr constant [24 x i8] c"cannot find UAC_HEADER\0A\00", align 1
@.str.694 = private unnamed_addr constant [24 x i8] c"invalid control header\0A\00", align 1
@.str.695 = private unnamed_addr constant [32 x i8] c"too short v1 buffer descriptor\0A\00", align 1
@.str.696 = private unnamed_addr constant [37 x i8] c"skipping empty audio interface (v1)\0A\00", align 1
@.str.697 = private unnamed_addr constant [28 x i8] c"invalid buffer length (v1)\0A\00", align 1
@.str.698 = private unnamed_addr constant [25 x i8] c"invalid UAC_HEADER (v1)\0A\00", align 1
@.str.699 = private unnamed_addr constant [60 x i8] c"Audio class v2/v3 interfaces need an interface association\0A\00", align 1
@.str.700 = private unnamed_addr constant [31 x i8] c"Unsupported UAC3 BADD profile\0A\00", align 1
@.str.701 = private unnamed_addr constant [24 x i8] c"%u:%d : does not exist\0A\00", align 1
@.str.702 = private unnamed_addr constant [39 x i8] c"%u:%d: cannot create sequencer device\0A\00", align 1
@.str.703 = private unnamed_addr constant [41 x i8] c"low speed audio streaming not supported\0A\00", align 1
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_autoclock255, ptr @__UNIQUE_ID_autoclocktype254, ptr @__UNIQUE_ID_delayed_register261, ptr @__UNIQUE_ID_delayed_registertype260, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_device_setup251, ptr @__UNIQUE_ID_device_setuptype250, ptr @__UNIQUE_ID_enable245, ptr @__UNIQUE_ID_enabletype244, ptr @__UNIQUE_ID_id243, ptr @__UNIQUE_ID_idtype242, ptr @__UNIQUE_ID_ignore_ctl_error253, ptr @__UNIQUE_ID_ignore_ctl_errortype252, ptr @__UNIQUE_ID_implicit_fb263, ptr @__UNIQUE_ID_implicit_fbtype262, ptr @__UNIQUE_ID_index241, ptr @__UNIQUE_ID_indextype240, ptr @__UNIQUE_ID_license239, ptr @__UNIQUE_ID_lowlatency257, ptr @__UNIQUE_ID_lowlatencytype256, ptr @__UNIQUE_ID_pid249, ptr @__UNIQUE_ID_pidtype248, ptr @__UNIQUE_ID_quirk_alias259, ptr @__UNIQUE_ID_quirk_aliastype258, ptr @__UNIQUE_ID_quirk_flags265, ptr @__UNIQUE_ID_quirk_flagstype264, ptr @__UNIQUE_ID_skip_validation269, ptr @__UNIQUE_ID_skip_validationtype268, ptr @__UNIQUE_ID_use_vmalloc267, ptr @__UNIQUE_ID_use_vmalloctype266, ptr @__UNIQUE_ID_vid247, ptr @__UNIQUE_ID_vidtype246, ptr @__param_autoclock, ptr @__param_delayed_register, ptr @__param_device_setup, ptr @__param_enable, ptr @__param_id, ptr @__param_ignore_ctl_error, ptr @__param_implicit_fb, ptr @__param_index, ptr @__param_lowlatency, ptr @__param_pid, ptr @__param_quirk_alias, ptr @__param_quirk_flags, ptr @__param_skip_validation, ptr @__param_use_vmalloc, ptr @__param_vid], section "llvm.metadata"

@__mod_usb__usb_audio_ids_device_table = dso_local alias [253 x %struct.usb_device_id], ptr @usb_audio_ids

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_usb_lock_shutdown(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #9, !srcloc !8
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #9, !srcloc !9
  %4 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 9
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = tail call i32 @snd_usb_autoresume(ptr noundef %0)
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %7, %1
  %11 = phi i32 [ %8, %7 ], [ -5, %1 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #9, !srcloc !8
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #9, !srcloc !11
  %13 = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %16, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %17

17:                                               ; preds = %15, %10, %7
  %18 = phi i32 [ 0, %7 ], [ %11, %15 ], [ %11, %10 ]
  ret i32 %18
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_usb_autoresume(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 9
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %34

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #9, !srcloc !8
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #9, !srcloc !14
  %8 = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %34

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 14
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %30, %10
  %15 = phi i32 [ %31, %30 ], [ 0, %10 ]
  %16 = getelementptr %struct.snd_usb_audio, ptr %0, i32 0, i32 3, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @usb_autopm_get_interface(ptr noundef %17) #9
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %14
  %21 = icmp eq i32 %15, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %22, %20
  %23 = phi i32 [ %24, %22 ], [ %15, %20 ]
  %24 = add nsw i32 %23, -1
  %25 = getelementptr %struct.snd_usb_audio, ptr %0, i32 0, i32 3, i32 %24
  %26 = load ptr, ptr %25, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %26) #9
  %27 = icmp sgt i32 %23, 1
  br i1 %27, label %22, label %28

28:                                               ; preds = %22, %20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #9, !srcloc !8
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #9, !srcloc !16
  br label %34

30:                                               ; preds = %14
  %31 = add nuw nsw i32 %15, 1
  %32 = load i32, ptr %11, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %14, label %34

34:                                               ; preds = %30, %28, %10, %5, %1
  %35 = phi i32 [ %18, %28 ], [ -5, %1 ], [ 0, %5 ], [ 0, %10 ], [ 0, %30 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_usb_unlock_shutdown(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 9
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #9, !srcloc !8
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #9, !srcloc !11
  %8 = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 14
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %14, %10
  %15 = phi i32 [ %18, %14 ], [ 0, %10 ]
  %16 = getelementptr %struct.snd_usb_audio, ptr %0, i32 0, i32 3, i32 %15
  %17 = load ptr, ptr %16, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %17) #9
  %18 = add nuw nsw i32 %15, 1
  %19 = load i32, ptr %11, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %14, label %21

21:                                               ; preds = %14, %10, %5, %1
  %22 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #9, !srcloc !8
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #9, !srcloc !11
  %24 = extractvalue { i32, i32 } %23, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %27, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %28

28:                                               ; preds = %26, %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_usb_autosuspend(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 9
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #9, !srcloc !8
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #9, !srcloc !11
  %8 = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 14
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %14, %10
  %15 = phi i32 [ %18, %14 ], [ 0, %10 ]
  %16 = getelementptr %struct.snd_usb_audio, ptr %0, i32 0, i32 3, i32 %15
  %17 = load ptr, ptr %16, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %17) #9
  %18 = add nuw nsw i32 %15, 1
  %19 = load i32, ptr %11, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %14, label %21

21:                                               ; preds = %14, %10, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #3 section ".init.text" {
  %1 = tail call i32 @usb_register_driver(ptr noundef nonnull @usb_audio_driver, ptr noundef nonnull @__this_module, ptr noundef nonnull @.str.625) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #3 section ".exit.text" {
  tail call void @usb_deregister(ptr noundef nonnull @usb_audio_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_audio_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 -128
  %11 = getelementptr inbounds %struct.usb_device_id, ptr %1, i32 0, i32 12
  %12 = load i32, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store ptr null, ptr %7, align 4, !annotation !17
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %13, i32 0, i32 2
  %15 = load i8, ptr %14, align 2
  %16 = zext i8 %15 to i32
  %17 = getelementptr i8, ptr %9, i32 480
  %18 = load i16, ptr %17, align 8
  %19 = zext i16 %18 to i32
  %20 = shl nuw i32 %19, 16
  %21 = getelementptr i8, ptr %9, i32 482
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = or i32 %20, %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !17
  br label %25

25:                                               ; preds = %42, %2
  %26 = phi i1 [ true, %2 ], [ %44, %42 ]
  %27 = phi i32 [ 0, %2 ], [ %43, %42 ]
  %28 = getelementptr [32 x ptr], ptr @quirk_alias, i32 0, i32 %27
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %42, label %31

31:                                               ; preds = %25
  %32 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %29, ptr noundef nonnull @.str.632, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %33 = icmp eq i32 %32, 2
  %34 = load i32, ptr %5, align 4
  %35 = icmp eq i32 %34, %24
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load i32, ptr %6, align 4
  %39 = lshr i32 %38, 16
  %40 = and i32 %38, 65535
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.633, i32 noundef %19, i32 noundef %23, i32 noundef %39, i32 noundef %40) #10
  %41 = load i32, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  br i1 %26, label %47, label %71

42:                                               ; preds = %31, %25
  %43 = add nuw nsw i32 %27, 1
  %44 = icmp ult i32 %27, 31
  %45 = icmp eq i32 %43, 32
  br i1 %45, label %46, label %25

46:                                               ; preds = %42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  br label %71

47:                                               ; preds = %37
  %48 = lshr i32 %41, 16
  %49 = trunc i32 %41 to i16
  br label %50

50:                                               ; preds = %67, %47
  %51 = phi i16 [ 3, %47 ], [ %69, %67 ]
  %52 = phi ptr [ @usb_audio_ids, %47 ], [ %68, %67 ]
  %53 = and i16 %51, 3
  %54 = icmp eq i16 %53, 3
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.usb_device_id, ptr %52, i32 0, i32 1
  %57 = load i16, ptr %56, align 2
  %58 = zext i16 %57 to i32
  %59 = icmp eq i32 %48, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.usb_device_id, ptr %52, i32 0, i32 2
  %62 = load i16, ptr %61, align 4
  %63 = icmp eq i16 %62, %49
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.usb_device_id, ptr %52, i32 0, i32 12
  %66 = load i32, ptr %65, align 4
  br label %71

67:                                               ; preds = %60, %55, %50
  %68 = getelementptr %struct.usb_device_id, ptr %52, i32 1
  %69 = load i16, ptr %68, align 4
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %85, label %50

71:                                               ; preds = %64, %46, %37
  %72 = phi i32 [ %24, %46 ], [ %41, %37 ], [ %41, %64 ]
  %73 = phi i32 [ %12, %46 ], [ %12, %37 ], [ %66, %64 ]
  %74 = inttoptr i32 %73 to ptr
  %75 = icmp eq i32 %73, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.snd_usb_audio_quirk, ptr %74, i32 0, i32 2
  %78 = load i16, ptr %77, align 4
  %79 = icmp slt i16 %78, 0
  %80 = sext i16 %78 to i32
  %81 = icmp eq i32 %16, %80
  %82 = select i1 %79, i1 true, i1 %81
  br i1 %82, label %83, label %407

83:                                               ; preds = %76
  %84 = icmp eq i16 %78, -3
  br i1 %84, label %407, label %85

85:                                               ; preds = %83, %71, %67
  %86 = phi i1 [ true, %71 ], [ false, %83 ], [ true, %67 ]
  %87 = phi ptr [ null, %71 ], [ %74, %83 ], [ null, %67 ]
  %88 = phi i32 [ %72, %71 ], [ %72, %83 ], [ %41, %67 ]
  %89 = call i32 @snd_usb_apply_boot_quirk(ptr noundef %10, ptr noundef %0, ptr noundef %87, i32 noundef %88) #9
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %407, label %91

91:                                               ; preds = %85
  store ptr null, ptr %7, align 4
  call void @mutex_lock(ptr noundef nonnull @register_mutex) #9
  br label %92

92:                                               ; preds = %109, %91
  %93 = phi i32 [ 0, %91 ], [ %110, %109 ]
  %94 = getelementptr [32 x ptr], ptr @usb_chip, i32 0, i32 %93
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %109, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.snd_usb_audio, ptr %95, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, %10
  br i1 %100, label %101, label %109

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.snd_usb_audio, ptr %95, i32 0, i32 9
  %103 = load volatile i32, ptr %102, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.627) #10
  br label %390

106:                                              ; preds = %101
  store ptr %95, ptr %7, align 4
  %107 = getelementptr inbounds %struct.snd_usb_audio, ptr %95, i32 0, i32 8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %107) #9, !srcloc !8
  %108 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %107, ptr %107, i32 1, ptr elementtype(i32) %107) #9, !srcloc !9
  br label %112

109:                                              ; preds = %97, %92
  %110 = add nuw nsw i32 %93, 1
  %111 = icmp eq i32 %110, 32
  br i1 %111, label %112, label %92

112:                                              ; preds = %109, %106
  %113 = load ptr, ptr %7, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %155

115:                                              ; preds = %112
  %116 = call i32 @snd_usb_apply_boot_quirk_once(ptr noundef %10, ptr noundef %0, ptr noundef %87, i32 noundef %88) #9
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %390, label %118

118:                                              ; preds = %115
  %119 = lshr i32 %88, 16
  %120 = and i32 %88, 65535
  br label %121

121:                                              ; preds = %148, %118
  %122 = phi i32 [ 0, %118 ], [ %149, %148 ]
  %123 = getelementptr [32 x ptr], ptr @usb_chip, i32 0, i32 %122
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %148

126:                                              ; preds = %121
  %127 = getelementptr [32 x i32], ptr @vid, i32 0, i32 %122
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %128, -1
  %130 = icmp eq i32 %128, %119
  %131 = or i1 %129, %130
  br i1 %131, label %132, label %148

132:                                              ; preds = %126
  %133 = getelementptr [32 x i32], ptr @pid, i32 0, i32 %122
  %134 = load i32, ptr %133, align 4
  %135 = icmp eq i32 %134, -1
  %136 = icmp eq i32 %134, %120
  %137 = or i1 %135, %136
  br i1 %137, label %138, label %148

138:                                              ; preds = %132
  %139 = getelementptr [32 x i8], ptr @enable, i32 0, i32 %122
  %140 = load i8, ptr %139, align 1, !range !18
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %138
  %143 = call fastcc i32 @snd_usb_audio_create(ptr noundef %0, ptr noundef %10, i32 noundef %122, ptr noundef %87, i32 noundef %88, ptr noundef nonnull %7)
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %390, label %151

145:                                              ; preds = %138
  %146 = select i1 %129, i1 %135, i1 false
  br i1 %146, label %148, label %147

147:                                              ; preds = %145
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.628, i32 noundef %119, i32 noundef %120) #10
  br label %390

148:                                              ; preds = %145, %132, %126, %121
  %149 = add nuw nsw i32 %122, 1
  %150 = icmp eq i32 %149, 32
  br i1 %150, label %151, label %121

151:                                              ; preds = %148, %142
  %152 = load ptr, ptr %7, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.629) #10
  br label %390

155:                                              ; preds = %151, %112
  %156 = phi ptr [ %152, %151 ], [ %113, %112 ]
  %157 = getelementptr inbounds %struct.snd_usb_audio, ptr %156, i32 0, i32 14
  %158 = load i32, ptr %157, align 4
  %159 = icmp sgt i32 %158, 15
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.630) #10
  br label %390

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  store ptr %156, ptr %162, align 8
  %163 = load i8, ptr @ignore_ctl_error, align 1, !range !18
  %164 = icmp eq i8 %163, 0
  %165 = getelementptr inbounds %struct.snd_usb_audio, ptr %156, i32 0, i32 12
  %166 = load i32, ptr %165, align 4
  br i1 %164, label %169, label %167

167:                                              ; preds = %161
  %168 = or i32 %166, 16384
  store i32 %168, ptr %165, align 4
  br label %169

169:                                              ; preds = %167, %161
  %170 = phi i32 [ %168, %167 ], [ %166, %161 ]
  %171 = and i32 %170, 8192
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %169
  %174 = load ptr, ptr %8, align 4
  %175 = getelementptr i8, ptr %174, i32 -128
  call void @usb_disable_autosuspend(ptr noundef %175) #9
  %176 = load ptr, ptr %7, align 4
  br label %177

177:                                              ; preds = %173, %169
  %178 = phi ptr [ %176, %173 ], [ %156, %169 ]
  %179 = getelementptr inbounds %struct.snd_usb_audio, ptr %178, i32 0, i32 28
  %180 = load ptr, ptr %179, align 4
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %183

182:                                              ; preds = %177
  store ptr %13, ptr %179, align 4
  br label %183

183:                                              ; preds = %182, %177
  br i1 %86, label %195, label %184

184:                                              ; preds = %183
  %185 = getelementptr inbounds %struct.snd_usb_audio_quirk, ptr %87, i32 0, i32 2
  %186 = load i16, ptr %185, align 4
  %187 = icmp eq i16 %186, -2
  br i1 %187, label %195, label %188

188:                                              ; preds = %184
  %189 = call i32 @snd_usb_create_quirk(ptr noundef %178, ptr noundef %0, ptr noundef nonnull @usb_audio_driver, ptr noundef nonnull %87) #9
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %390, label %191

191:                                              ; preds = %188
  %192 = icmp eq i32 %189, 0
  br i1 %192, label %316, label %193

193:                                              ; preds = %191
  %194 = load ptr, ptr %7, align 4
  br label %195

195:                                              ; preds = %193, %184, %183
  %196 = phi ptr [ %194, %193 ], [ %178, %183 ], [ %178, %184 ]
  %197 = getelementptr inbounds %struct.snd_usb_audio, ptr %196, i32 0, i32 1
  %198 = load ptr, ptr %197, align 4
  %199 = call ptr @usb_ifnum_to_if(ptr noundef %198, i32 noundef %16) #9
  %200 = load ptr, ptr %199, align 8
  %201 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %200, i32 0, i32 7
  %202 = load i8, ptr %201, align 1
  switch i8 %202, label %203 [
    i8 0, label %206
    i8 32, label %258
    i8 48, label %258
  ]

203:                                              ; preds = %195
  %204 = zext i8 %202 to i32
  %205 = getelementptr inbounds %struct.usb_device, ptr %198, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %205, ptr noundef nonnull @.str.692, i32 noundef %204) #10
  br label %206

206:                                              ; preds = %203, %195
  %207 = getelementptr inbounds %struct.usb_host_interface, ptr %200, i32 0, i32 2
  %208 = load ptr, ptr %207, align 4
  %209 = getelementptr inbounds %struct.usb_host_interface, ptr %200, i32 0, i32 1
  %210 = load i32, ptr %209, align 4
  %211 = call ptr @snd_usb_find_csint_desc(ptr noundef %208, i32 noundef %210, ptr noundef null, i8 noundef zeroext 1) #9
  %212 = icmp eq ptr %211, null
  br i1 %212, label %217, label %213

213:                                              ; preds = %206
  %214 = load i8, ptr %211, align 1
  %215 = zext i8 %214 to i32
  %216 = icmp ult i8 %214, 8
  br i1 %216, label %217, label %219

217:                                              ; preds = %213, %206
  %218 = getelementptr inbounds %struct.usb_device, ptr %198, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %218, ptr noundef nonnull @.str.693) #10
  br label %390

219:                                              ; preds = %213
  %220 = load ptr, ptr %207, align 4
  %221 = load i32, ptr %209, align 4
  %222 = getelementptr i8, ptr %220, i32 %221
  %223 = ptrtoint ptr %222 to i32
  %224 = ptrtoint ptr %211 to i32
  %225 = sub i32 %223, %224
  %226 = icmp slt i32 %225, 1
  br i1 %226, label %227, label %229

227:                                              ; preds = %219
  %228 = getelementptr inbounds %struct.usb_device, ptr %198, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %228, ptr noundef nonnull @.str.694) #10
  br label %390

229:                                              ; preds = %219
  %230 = icmp ult i32 %225, 8
  br i1 %230, label %231, label %233

231:                                              ; preds = %229
  %232 = getelementptr inbounds %struct.usb_device, ptr %198, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %232, ptr noundef nonnull @.str.695) #10
  br label %390

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.uac1_ac_header_descriptor, ptr %211, i32 0, i32 5
  %235 = load i8, ptr %234, align 1
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %233
  %238 = getelementptr inbounds %struct.usb_device, ptr %198, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %238, ptr noundef nonnull @.str.696) #10
  br label %390

239:                                              ; preds = %233
  %240 = icmp ult i32 %225, %215
  br i1 %240, label %241, label %243

241:                                              ; preds = %239
  %242 = getelementptr inbounds %struct.usb_device, ptr %198, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %242, ptr noundef nonnull @.str.697) #10
  br label %390

243:                                              ; preds = %239
  %244 = zext i8 %235 to i32
  %245 = add nuw nsw i32 %244, 8
  %246 = icmp ugt i32 %245, %215
  br i1 %246, label %247, label %249

247:                                              ; preds = %243
  %248 = getelementptr inbounds %struct.usb_device, ptr %198, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %248, ptr noundef nonnull @.str.698) #10
  br label %390

249:                                              ; preds = %249, %243
  %250 = phi i32 [ %254, %249 ], [ 0, %243 ]
  %251 = getelementptr %struct.uac1_ac_header_descriptor, ptr %211, i32 0, i32 6, i32 %250
  %252 = load i8, ptr %251, align 1
  %253 = zext i8 %252 to i32
  call fastcc void @snd_usb_create_stream(ptr noundef %196, i32 noundef %16, i32 noundef %253) #9
  %254 = add nuw nsw i32 %250, 1
  %255 = load i8, ptr %234, align 1
  %256 = zext i8 %255 to i32
  %257 = icmp ult i32 %254, %256
  br i1 %257, label %249, label %312

258:                                              ; preds = %195, %195
  %259 = call ptr @usb_ifnum_to_if(ptr noundef %198, i32 noundef %16) #9
  %260 = getelementptr inbounds %struct.usb_interface, ptr %259, i32 0, i32 3
  %261 = load ptr, ptr %260, align 4
  %262 = icmp eq ptr %261, null
  br i1 %262, label %263, label %281

263:                                              ; preds = %258
  %264 = add nuw nsw i32 %16, 1
  %265 = call ptr @usb_ifnum_to_if(ptr noundef %198, i32 noundef %264) #9
  %266 = icmp eq ptr %265, null
  br i1 %266, label %279, label %267

267:                                              ; preds = %263
  %268 = getelementptr inbounds %struct.usb_interface, ptr %265, i32 0, i32 3
  %269 = load ptr, ptr %268, align 4
  %270 = icmp eq ptr %269, null
  br i1 %270, label %279, label %271

271:                                              ; preds = %267
  %272 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %269, i32 0, i32 4
  %273 = load i8, ptr %272, align 1
  %274 = icmp eq i8 %273, 1
  br i1 %274, label %275, label %279

275:                                              ; preds = %271
  %276 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %269, i32 0, i32 6
  %277 = load i8, ptr %276, align 1
  %278 = icmp eq i8 %277, 32
  br i1 %278, label %281, label %279

279:                                              ; preds = %275, %271, %267, %263
  %280 = getelementptr inbounds %struct.usb_device, ptr %198, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %280, ptr noundef nonnull @.str.699) #10
  br label %390

281:                                              ; preds = %275, %258
  %282 = phi ptr [ %261, %258 ], [ %269, %275 ]
  %283 = icmp eq i8 %202, 48
  br i1 %283, label %284, label %292

284:                                              ; preds = %281
  %285 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %282, i32 0, i32 5
  %286 = load i8, ptr %285, align 1
  switch i8 %286, label %287 [
    i8 38, label %289
    i8 37, label %289
    i8 36, label %289
    i8 35, label %289
    i8 34, label %289
    i8 33, label %289
    i8 32, label %289
    i8 1, label %289
  ]

287:                                              ; preds = %284
  %288 = getelementptr inbounds %struct.usb_device, ptr %198, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %288, ptr noundef nonnull @.str.700) #10
  br label %390

289:                                              ; preds = %284, %284, %284, %284, %284, %284, %284, %284
  %290 = zext i8 %286 to i32
  %291 = getelementptr inbounds %struct.snd_usb_audio, ptr %196, i32 0, i32 17
  store i32 %290, ptr %291, align 4
  br label %292

292:                                              ; preds = %289, %281
  %293 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %282, i32 0, i32 3
  %294 = load i8, ptr %293, align 1
  %295 = icmp eq i8 %294, 0
  br i1 %295, label %312, label %296

296:                                              ; preds = %292
  %297 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %282, i32 0, i32 2
  br label %298

298:                                              ; preds = %307, %296
  %299 = phi i8 [ %294, %296 ], [ %308, %307 ]
  %300 = phi i32 [ 0, %296 ], [ %309, %307 ]
  %301 = load i8, ptr %297, align 1
  %302 = zext i8 %301 to i32
  %303 = add nuw i32 %300, %302
  %304 = icmp eq i32 %303, %16
  br i1 %304, label %307, label %305

305:                                              ; preds = %298
  call fastcc void @snd_usb_create_stream(ptr noundef %196, i32 noundef %16, i32 noundef %303) #9
  %306 = load i8, ptr %293, align 1
  br label %307

307:                                              ; preds = %305, %298
  %308 = phi i8 [ %306, %305 ], [ %299, %298 ]
  %309 = add nuw nsw i32 %300, 1
  %310 = zext i8 %308 to i32
  %311 = icmp ult i32 %309, %310
  br i1 %311, label %298, label %312

312:                                              ; preds = %307, %292, %249
  %313 = load ptr, ptr %7, align 4
  %314 = call i32 @snd_usb_create_mixer(ptr noundef %313, i32 noundef %16) #9
  %315 = icmp slt i32 %314, 0
  br i1 %315, label %390, label %316

316:                                              ; preds = %312, %191
  %317 = load ptr, ptr %7, align 4
  %318 = getelementptr inbounds %struct.snd_usb_audio, ptr %317, i32 0, i32 13
  %319 = load i8, ptr %318, align 4
  %320 = and i8 %319, 1
  %321 = icmp eq i8 %320, 0
  br i1 %321, label %329, label %322

322:                                              ; preds = %316
  %323 = getelementptr inbounds %struct.snd_usb_audio, ptr %317, i32 0, i32 4
  %324 = load i32, ptr %323, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.631, i32 noundef %324, i32 noundef %16) #10
  %325 = load ptr, ptr %7, align 4
  %326 = getelementptr inbounds %struct.snd_usb_audio, ptr %325, i32 0, i32 13
  %327 = load i8, ptr %326, align 4
  %328 = and i8 %327, -2
  store i8 %328, ptr %326, align 4
  br label %329

329:                                              ; preds = %322, %316
  %330 = phi ptr [ %325, %322 ], [ %317, %316 ]
  %331 = call zeroext i1 @snd_usb_registration_quirk(ptr noundef %330, i32 noundef %16) #9
  br i1 %331, label %360, label %332

332:                                              ; preds = %329
  %333 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !17
  %334 = getelementptr inbounds %struct.snd_usb_audio, ptr %333, i32 0, i32 4
  br label %335

335:                                              ; preds = %347, %332
  %336 = phi i32 [ 0, %332 ], [ %348, %347 ]
  %337 = getelementptr [32 x ptr], ptr @delayed_register, i32 0, i32 %336
  %338 = load ptr, ptr %337, align 4
  %339 = icmp eq ptr %338, null
  br i1 %339, label %347, label %340

340:                                              ; preds = %335
  %341 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %338, ptr noundef nonnull @.str.632, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %342 = icmp eq i32 %341, 2
  br i1 %342, label %343, label %347

343:                                              ; preds = %340
  %344 = load i32, ptr %3, align 4
  %345 = load i32, ptr %334, align 4
  %346 = icmp eq i32 %344, %345
  br i1 %346, label %351, label %347

347:                                              ; preds = %343, %340, %335
  %348 = add nuw nsw i32 %336, 1
  %349 = icmp eq i32 %348, 32
  br i1 %349, label %350, label %335

350:                                              ; preds = %347
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %354

351:                                              ; preds = %343
  %352 = load i32, ptr %4, align 4
  %353 = icmp eq i32 %352, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br i1 %353, label %354, label %360

354:                                              ; preds = %351, %350
  %355 = load ptr, ptr %7, align 4
  %356 = getelementptr inbounds %struct.snd_usb_audio, ptr %355, i32 0, i32 2
  %357 = load ptr, ptr %356, align 4
  %358 = call i32 @snd_card_register(ptr noundef %357) #9
  %359 = icmp slt i32 %358, 0
  br i1 %359, label %390, label %360

360:                                              ; preds = %354, %351, %329
  %361 = load ptr, ptr %7, align 4
  %362 = getelementptr inbounds %struct.snd_usb_audio, ptr %361, i32 0, i32 12
  %363 = load i32, ptr %362, align 4
  %364 = and i32 %363, 2
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %368, label %366

366:                                              ; preds = %360
  %367 = call i32 @snd_media_device_create(ptr noundef %361, ptr noundef %0) #9
  br label %368

368:                                              ; preds = %366, %360
  br i1 %86, label %369, label %371

369:                                              ; preds = %368
  %370 = load ptr, ptr %7, align 4
  br label %376

371:                                              ; preds = %368
  %372 = getelementptr inbounds %struct.snd_usb_audio_quirk, ptr %87, i32 0, i32 3
  %373 = load i16, ptr %372, align 2
  %374 = load ptr, ptr %7, align 4
  %375 = getelementptr inbounds %struct.snd_usb_audio, ptr %374, i32 0, i32 5
  store i16 %373, ptr %375, align 4
  br label %376

376:                                              ; preds = %371, %369
  %377 = phi ptr [ %370, %369 ], [ %374, %371 ]
  %378 = load i32, ptr %377, align 4
  %379 = getelementptr [32 x ptr], ptr @usb_chip, i32 0, i32 %378
  store ptr %377, ptr %379, align 4
  %380 = getelementptr inbounds %struct.snd_usb_audio, ptr %377, i32 0, i32 14
  %381 = load i32, ptr %380, align 4
  %382 = getelementptr %struct.snd_usb_audio, ptr %377, i32 0, i32 3, i32 %381
  store ptr %0, ptr %382, align 4
  %383 = load ptr, ptr %7, align 4
  %384 = getelementptr inbounds %struct.snd_usb_audio, ptr %383, i32 0, i32 14
  %385 = load i32, ptr %384, align 4
  %386 = add i32 %385, 1
  store i32 %386, ptr %384, align 4
  %387 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  store ptr %383, ptr %387, align 8
  %388 = getelementptr inbounds %struct.snd_usb_audio, ptr %383, i32 0, i32 8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %388) #9, !srcloc !8
  %389 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %388, ptr %388, i32 1, ptr elementtype(i32) %388) #9, !srcloc !16
  br label %405

390:                                              ; preds = %354, %312, %287, %279, %247, %241, %237, %231, %227, %217, %188, %160, %154, %147, %142, %115, %105
  %391 = phi i32 [ -5, %105 ], [ -22, %160 ], [ %189, %188 ], [ %314, %312 ], [ %358, %354 ], [ %116, %115 ], [ %143, %142 ], [ -19, %154 ], [ -2, %147 ], [ -22, %247 ], [ -22, %241 ], [ -22, %237 ], [ -22, %231 ], [ -22, %227 ], [ -22, %217 ], [ -22, %287 ], [ -22, %279 ]
  %392 = load ptr, ptr %7, align 4
  %393 = icmp eq ptr %392, null
  br i1 %393, label %405, label %394

394:                                              ; preds = %390
  %395 = getelementptr inbounds %struct.snd_usb_audio, ptr %392, i32 0, i32 8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %395) #9, !srcloc !8
  %396 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %395, ptr %395, i32 1, ptr elementtype(i32) %395) #9, !srcloc !16
  %397 = load ptr, ptr %7, align 4
  %398 = getelementptr inbounds %struct.snd_usb_audio, ptr %397, i32 0, i32 14
  %399 = load i32, ptr %398, align 4
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %405

401:                                              ; preds = %394
  %402 = getelementptr inbounds %struct.snd_usb_audio, ptr %397, i32 0, i32 2
  %403 = load ptr, ptr %402, align 4
  %404 = call i32 @snd_card_free(ptr noundef %403) #9
  br label %405

405:                                              ; preds = %401, %394, %390, %376
  %406 = phi i32 [ 0, %376 ], [ %391, %394 ], [ %391, %401 ], [ %391, %390 ]
  call void @mutex_unlock(ptr noundef nonnull @register_mutex) #9
  br label %407

407:                                              ; preds = %405, %85, %83, %76
  %408 = phi i32 [ -6, %76 ], [ -19, %83 ], [ %89, %85 ], [ %406, %405 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  ret i32 %408
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usb_audio_disconnect(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, inttoptr (i32 -1 to ptr)
  br i1 %5, label %95, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.snd_usb_audio, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  tail call void @mutex_lock(ptr noundef nonnull @register_mutex) #9
  %9 = getelementptr inbounds %struct.snd_usb_audio, ptr %4, i32 0, i32 9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #9, !srcloc !8
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #9, !srcloc !14
  %11 = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %76

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.snd_usb_audio, ptr %4, i32 0, i32 10
  %15 = load volatile i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !17
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #9
  %18 = getelementptr inbounds %struct.snd_usb_audio, ptr %4, i32 0, i32 11
  %19 = call i32 @prepare_to_wait_event(ptr noundef %18, ptr noundef nonnull %2, i32 noundef 2) #9
  %20 = load volatile i32, ptr %14, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %22, %17
  call void @schedule() #9
  %23 = call i32 @prepare_to_wait_event(ptr noundef %18, ptr noundef nonnull %2, i32 noundef 2) #9
  %24 = load volatile i32, ptr %14, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %22

26:                                               ; preds = %22, %17
  call void @finish_wait(ptr noundef %18, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #9
  br label %27

27:                                               ; preds = %26, %13
  %28 = call i32 @snd_card_disconnect(ptr noundef %8) #9
  %29 = getelementptr inbounds %struct.snd_usb_audio, ptr %4, i32 0, i32 18
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %50, label %32

32:                                               ; preds = %47, %27
  %33 = phi ptr [ %48, %47 ], [ %30, %27 ]
  %34 = getelementptr i8, ptr %33, i32 -184
  %35 = load i32, ptr %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = getelementptr i8, ptr %33, i32 -208
  store ptr null, ptr %38, align 8
  %39 = getelementptr i8, ptr %33, i32 -204
  store ptr null, ptr %39, align 4
  br label %40

40:                                               ; preds = %37, %32
  %41 = getelementptr i8, ptr %33, i32 -40
  %42 = load i32, ptr %41, align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = getelementptr i8, ptr %33, i32 -64
  store ptr null, ptr %45, align 8
  %46 = getelementptr i8, ptr %33, i32 -60
  store ptr null, ptr %46, align 4
  br label %47

47:                                               ; preds = %44, %40
  %48 = load ptr, ptr %33, align 4
  %49 = icmp eq ptr %48, %29
  br i1 %49, label %50, label %32

50:                                               ; preds = %47, %27
  %51 = getelementptr inbounds %struct.snd_usb_audio, ptr %4, i32 0, i32 19
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, %51
  br i1 %53, label %59, label %54

54:                                               ; preds = %54, %50
  %55 = phi ptr [ %57, %54 ], [ %52, %50 ]
  %56 = getelementptr i8, ptr %55, i32 -5316
  call void @snd_usb_endpoint_release(ptr noundef %56) #9
  %57 = load ptr, ptr %55, align 4
  %58 = icmp eq ptr %57, %51
  br i1 %58, label %59, label %54

59:                                               ; preds = %54, %50
  %60 = getelementptr inbounds %struct.snd_usb_audio, ptr %4, i32 0, i32 22
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %67, label %63

63:                                               ; preds = %63, %59
  %64 = phi ptr [ %65, %63 ], [ %61, %59 ]
  call void @snd_usbmidi_disconnect(ptr noundef %64) #9
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, %60
  br i1 %66, label %67, label %63

67:                                               ; preds = %63, %59
  call void @snd_media_device_delete(ptr noundef %4) #9
  %68 = getelementptr inbounds %struct.snd_usb_audio, ptr %4, i32 0, i32 23
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, %68
  br i1 %70, label %76, label %71

71:                                               ; preds = %71, %67
  %72 = phi ptr [ %74, %71 ], [ %69, %67 ]
  %73 = getelementptr i8, ptr %72, i32 -8
  call void @snd_usb_mixer_disconnect(ptr noundef %73) #9
  %74 = load ptr, ptr %72, align 4
  %75 = icmp eq ptr %74, %68
  br i1 %75, label %76, label %71

76:                                               ; preds = %71, %67, %6
  %77 = getelementptr inbounds %struct.snd_usb_audio, ptr %4, i32 0, i32 12
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 8192
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr i8, ptr %83, i32 -128
  call void @usb_enable_autosuspend(ptr noundef %84) #9
  br label %85

85:                                               ; preds = %81, %76
  %86 = getelementptr inbounds %struct.snd_usb_audio, ptr %4, i32 0, i32 14
  %87 = load i32, ptr %86, align 4
  %88 = add i32 %87, -1
  store i32 %88, ptr %86, align 4
  %89 = icmp slt i32 %88, 1
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i32, ptr %4, align 4
  %92 = getelementptr [32 x ptr], ptr @usb_chip, i32 0, i32 %91
  store ptr null, ptr %92, align 4
  call void @mutex_unlock(ptr noundef nonnull @register_mutex) #9
  %93 = call i32 @snd_card_free_when_closed(ptr noundef %8) #9
  br label %95

94:                                               ; preds = %85
  call void @mutex_unlock(ptr noundef nonnull @register_mutex) #9
  br label %95

95:                                               ; preds = %94, %90, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_audio_suspend(ptr nocapture noundef readonly %0, [1 x i32] %1) #0 {
  %3 = extractvalue [1 x i32] %1, 0
  %4 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, inttoptr (i32 -1 to ptr)
  br i1 %6, label %62, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 15
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 4
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %12, label %49

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 18
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %22, label %16

16:                                               ; preds = %16, %12
  %17 = phi ptr [ %20, %16 ], [ %14, %12 ]
  %18 = getelementptr i8, ptr %17, i32 -304
  %19 = tail call i32 @snd_usb_pcm_suspend(ptr noundef %18) #9
  %20 = load ptr, ptr %17, align 4
  %21 = icmp eq ptr %20, %13
  br i1 %21, label %22, label %16

22:                                               ; preds = %16, %12
  %23 = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 19
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %23
  br i1 %25, label %31, label %26

26:                                               ; preds = %26, %22
  %27 = phi ptr [ %29, %26 ], [ %24, %22 ]
  %28 = getelementptr i8, ptr %27, i32 -5316
  tail call void @snd_usb_endpoint_suspend(ptr noundef %28) #9
  %29 = load ptr, ptr %27, align 4
  %30 = icmp eq ptr %29, %23
  br i1 %30, label %31, label %26

31:                                               ; preds = %26, %22
  %32 = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 22
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %32
  br i1 %34, label %39, label %35

35:                                               ; preds = %35, %31
  %36 = phi ptr [ %37, %35 ], [ %33, %31 ]
  tail call void @snd_usbmidi_suspend(ptr noundef %36) #9
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %32
  br i1 %38, label %39, label %35

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 23
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %40
  br i1 %42, label %49, label %43

43:                                               ; preds = %43, %39
  %44 = phi ptr [ %47, %43 ], [ %41, %39 ]
  %45 = getelementptr i8, ptr %44, i32 -8
  %46 = tail call i32 @snd_usb_mixer_suspend(ptr noundef %45) #9
  %47 = load ptr, ptr %44, align 4
  %48 = icmp eq ptr %47, %40
  br i1 %48, label %49, label %43

49:                                               ; preds = %43, %39, %7
  %50 = and i32 %3, 1024
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 7
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.snd_card, ptr %58, i32 0, i32 37
  store volatile i32 768, ptr %59, align 4
  %60 = getelementptr inbounds %struct.snd_card, ptr %58, i32 0, i32 39
  tail call void @__wake_up(ptr noundef %60, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  %61 = load i32, ptr %8, align 4
  store i32 %61, ptr %53, align 4
  br label %62

62:                                               ; preds = %56, %52, %49, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_audio_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, inttoptr (i32 -1 to ptr)
  br i1 %4, label %63, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.snd_usb_audio, ptr %3, i32 0, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #9, !srcloc !8
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #9, !srcloc !9
  %8 = getelementptr inbounds %struct.snd_usb_audio, ptr %3, i32 0, i32 15
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %45, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.snd_usb_audio, ptr %3, i32 0, i32 18
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %23, label %18

15:                                               ; preds = %18
  %16 = load ptr, ptr %19, align 4
  %17 = icmp eq ptr %16, %12
  br i1 %17, label %23, label %18

18:                                               ; preds = %15, %11
  %19 = phi ptr [ %16, %15 ], [ %13, %11 ]
  %20 = getelementptr i8, ptr %19, i32 -304
  %21 = tail call i32 @snd_usb_pcm_resume(ptr noundef %20) #9
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %60, label %15

23:                                               ; preds = %15, %11
  %24 = phi i32 [ 0, %11 ], [ %21, %15 ]
  %25 = getelementptr inbounds %struct.snd_usb_audio, ptr %3, i32 0, i32 23
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %36, label %31

28:                                               ; preds = %31
  %29 = load ptr, ptr %32, align 4
  %30 = icmp eq ptr %29, %25
  br i1 %30, label %36, label %31

31:                                               ; preds = %28, %23
  %32 = phi ptr [ %29, %28 ], [ %26, %23 ]
  %33 = getelementptr i8, ptr %32, i32 -8
  %34 = tail call i32 @snd_usb_mixer_resume(ptr noundef %33) #9
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %60, label %28

36:                                               ; preds = %28, %23
  %37 = phi i32 [ %24, %23 ], [ %34, %28 ]
  %38 = getelementptr inbounds %struct.snd_usb_audio, ptr %3, i32 0, i32 22
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, %38
  br i1 %40, label %45, label %41

41:                                               ; preds = %41, %36
  %42 = phi ptr [ %43, %41 ], [ %39, %36 ]
  tail call void @snd_usbmidi_resume(ptr noundef %42) #9
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %38
  br i1 %44, label %45, label %41

45:                                               ; preds = %41, %36, %5
  %46 = phi i32 [ 0, %5 ], [ %37, %36 ], [ %37, %41 ]
  %47 = load i32, ptr %8, align 4
  %48 = getelementptr inbounds %struct.snd_usb_audio, ptr %3, i32 0, i32 7
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.snd_usb_audio, ptr %3, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.snd_card, ptr %53, i32 0, i32 37
  store volatile i32 0, ptr %54, align 4
  %55 = getelementptr inbounds %struct.snd_card, ptr %53, i32 0, i32 39
  tail call void @__wake_up(ptr noundef %55, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  store i32 0, ptr %48, align 4
  %56 = load i32, ptr %8, align 4
  br label %57

57:                                               ; preds = %51, %45
  %58 = phi i32 [ %56, %51 ], [ %47, %45 ]
  %59 = add i32 %58, -1
  store i32 %59, ptr %8, align 4
  br label %60

60:                                               ; preds = %57, %31, %18
  %61 = phi i32 [ %46, %57 ], [ %34, %31 ], [ %21, %18 ]
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #9, !srcloc !8
  %62 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #9, !srcloc !16
  br label %63

63:                                               ; preds = %60, %1
  %64 = phi i32 [ %61, %60 ], [ 0, %1 ]
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_apply_boot_quirk(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_apply_boot_quirk_once(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_usb_audio_create(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5) unnamed_addr #0 {
  %7 = alloca ptr, align 4
  %8 = alloca [14 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store ptr null, ptr %7, align 4, !annotation !17
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %8) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(14) %8, i8 0, i32 14, i1 false), !annotation !17
  store ptr null, ptr %5, align 4
  %9 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -1
  %12 = icmp ult i32 %11, 6
  br i1 %12, label %15, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.634, i32 noundef %10) #10
  br label %216

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7
  %17 = getelementptr [32 x i32], ptr @index, i32 0, i32 %2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr [32 x ptr], ptr @id, i32 0, i32 %2
  %20 = load ptr, ptr %19, align 4
  %21 = call i32 @snd_card_new(ptr noundef %16, i32 noundef %18, ptr noundef %20, ptr noundef nonnull @__this_module, i32 noundef 220, ptr noundef nonnull %7) #9
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.635, i32 noundef %2) #10
  br label %216

25:                                               ; preds = %15
  %26 = load ptr, ptr %7, align 4
  %27 = getelementptr inbounds %struct.snd_card, ptr %26, i32 0, i32 9
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.snd_usb_audio, ptr %28, i32 0, i32 6
  call void @__mutex_init(ptr noundef %29, ptr noundef nonnull @.str.636, ptr noundef nonnull @snd_usb_audio_create.__key) #9
  %30 = getelementptr inbounds %struct.snd_usb_audio, ptr %28, i32 0, i32 11
  call void @__init_waitqueue_head(ptr noundef %30, ptr noundef nonnull @.str.638, ptr noundef nonnull @snd_usb_audio_create.__key.637) #9
  store i32 %2, ptr %28, align 4
  %31 = getelementptr inbounds %struct.snd_usb_audio, ptr %28, i32 0, i32 1
  store ptr %1, ptr %31, align 4
  %32 = load ptr, ptr %7, align 4
  %33 = getelementptr inbounds %struct.snd_usb_audio, ptr %28, i32 0, i32 2
  store ptr %32, ptr %33, align 4
  %34 = getelementptr [32 x i32], ptr @device_setup, i32 0, i32 %2
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.snd_usb_audio, ptr %28, i32 0, i32 24
  store i32 %35, ptr %36, align 4
  %37 = getelementptr [32 x i8], ptr @implicit_fb, i32 0, i32 %2
  %38 = load i8, ptr %37, align 1, !range !18
  %39 = getelementptr inbounds %struct.snd_usb_audio, ptr %28, i32 0, i32 25
  store i8 %38, ptr %39, align 4
  %40 = load i8, ptr @autoclock, align 1, !range !18
  %41 = getelementptr inbounds %struct.snd_usb_audio, ptr %28, i32 0, i32 26
  store i8 %40, ptr %41, align 1
  %42 = load i8, ptr @lowlatency, align 1, !range !18
  %43 = getelementptr inbounds %struct.snd_usb_audio, ptr %28, i32 0, i32 27
  store i8 %42, ptr %43, align 2
  %44 = getelementptr inbounds %struct.snd_usb_audio, ptr %28, i32 0, i32 8
  store volatile i32 1, ptr %44, align 4
  %45 = getelementptr inbounds %struct.snd_usb_audio, ptr %28, i32 0, i32 10
  store volatile i32 0, ptr %45, align 4
  %46 = getelementptr inbounds %struct.snd_usb_audio, ptr %28, i32 0, i32 9
  store volatile i32 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.snd_usb_audio, ptr %28, i32 0, i32 4
  store i32 %4, ptr %47, align 4
  %48 = getelementptr inbounds %struct.snd_usb_audio, ptr %28, i32 0, i32 18
  store volatile ptr %48, ptr %48, align 4
  %49 = getelementptr inbounds %struct.snd_usb_audio, ptr %28, i32 0, i32 18, i32 1
  store ptr %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.snd_usb_audio, ptr %28, i32 0, i32 19
  store volatile ptr %50, ptr %50, align 4
  %51 = getelementptr inbounds %struct.snd_usb_audio, ptr %28, i32 0, i32 19, i32 1
  store ptr %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.snd_usb_audio, ptr %28, i32 0, i32 20
  store volatile ptr %52, ptr %52, align 4
  %53 = getelementptr inbounds %struct.snd_usb_audio, ptr %28, i32 0, i32 20, i32 1
  store ptr %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.snd_usb_audio, ptr %28, i32 0, i32 22
  store volatile ptr %54, ptr %54, align 4
  %55 = getelementptr inbounds %struct.snd_usb_audio, ptr %28, i32 0, i32 22, i32 1
  store ptr %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.snd_usb_audio, ptr %28, i32 0, i32 23
  store volatile ptr %56, ptr %56, align 4
  %57 = getelementptr inbounds %struct.snd_usb_audio, ptr %28, i32 0, i32 23, i32 1
  store ptr %56, ptr %57, align 4
  %58 = getelementptr [32 x i32], ptr @quirk_flags, i32 0, i32 %2
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %25
  %62 = getelementptr inbounds %struct.snd_usb_audio, ptr %28, i32 0, i32 12
  store i32 %59, ptr %62, align 4
  br label %65

63:                                               ; preds = %25
  call void @snd_usb_init_quirk_flags(ptr noundef %28) #9
  %64 = load ptr, ptr %7, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi ptr [ %64, %63 ], [ %32, %61 ]
  %67 = getelementptr inbounds %struct.snd_card, ptr %66, i32 0, i32 10
  store ptr @snd_usb_audio_free, ptr %67, align 4
  %68 = getelementptr inbounds %struct.snd_card, ptr %66, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(10) %68, ptr noundef nonnull align 1 dereferenceable(10) @.str.639, i32 10, i1 false)
  %69 = load i32, ptr %47, align 4
  %70 = lshr i32 %69, 16
  %71 = and i32 %69, 65535
  %72 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %8, ptr noundef nonnull @.str.640, i32 noundef %70, i32 noundef %71)
  %73 = load ptr, ptr %7, align 4
  %74 = call i32 @snd_component_add(ptr noundef %73, ptr noundef nonnull %8) #9
  %75 = load ptr, ptr %33, align 4
  %76 = load i32, ptr %47, align 4
  br label %77

77:                                               ; preds = %81, %65
  %78 = phi i32 [ 66060905, %65 ], [ %83, %81 ]
  %79 = phi ptr [ @usb_audio_names, %65 ], [ %82, %81 ]
  %80 = icmp eq i32 %78, %76
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = getelementptr %struct.usb_audio_device_name, ptr %79, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %91, label %77

85:                                               ; preds = %77
  store ptr %79, ptr @lookup_device_name.p, align 4
  %86 = icmp eq ptr %79, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.usb_audio_device_name, ptr %79, i32 0, i32 2
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %87, %85, %81
  %92 = icmp eq ptr %3, null
  br i1 %92, label %104, label %93

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.snd_usb_audio_quirk, ptr %3, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %104, label %97

97:                                               ; preds = %93, %87
  %98 = phi ptr [ %95, %93 ], [ %89, %87 ]
  %99 = load i8, ptr %98, align 1
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.snd_card, ptr %75, i32 0, i32 3
  %103 = call i32 @strscpy(ptr noundef %102, ptr noundef nonnull %98, i32 noundef 32) #9
  br label %124

104:                                              ; preds = %97, %93, %91
  %105 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 11
  %106 = load i8, ptr %105, align 1
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %104
  %109 = zext i8 %106 to i32
  %110 = getelementptr inbounds %struct.snd_card, ptr %75, i32 0, i32 3
  %111 = call i32 @usb_string(ptr noundef %1, i32 noundef %109, ptr noundef %110, i32 noundef 32) #9
  %112 = icmp slt i32 %111, 1
  br i1 %112, label %113, label %121

113:                                              ; preds = %108
  %114 = load i32, ptr %47, align 4
  br label %115

115:                                              ; preds = %113, %104
  %116 = phi i32 [ %114, %113 ], [ %76, %104 ]
  %117 = getelementptr inbounds %struct.snd_card, ptr %75, i32 0, i32 3
  %118 = lshr i32 %116, 16
  %119 = and i32 %116, 65535
  %120 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %117, ptr noundef nonnull @.str.641, i32 noundef %118, i32 noundef %119) #9
  br label %121

121:                                              ; preds = %115, %108
  %122 = getelementptr inbounds %struct.snd_card, ptr %75, i32 0, i32 3
  %123 = call ptr @strim(ptr noundef %122) #9
  br label %124

124:                                              ; preds = %121, %101
  %125 = load ptr, ptr %33, align 4
  %126 = load i32, ptr %47, align 4
  br label %127

127:                                              ; preds = %131, %124
  %128 = phi i32 [ 66060905, %124 ], [ %133, %131 ]
  %129 = phi ptr [ @usb_audio_names, %124 ], [ %132, %131 ]
  %130 = icmp eq i32 %128, %126
  br i1 %130, label %135, label %131

131:                                              ; preds = %127
  %132 = getelementptr %struct.usb_audio_device_name, ptr %129, i32 1
  %133 = load i32, ptr %132, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %153, label %127

135:                                              ; preds = %127
  store ptr %129, ptr @lookup_device_name.p, align 4
  %136 = icmp eq ptr %129, null
  br i1 %136, label %153, label %137

137:                                              ; preds = %135
  %138 = getelementptr inbounds %struct.usb_audio_device_name, ptr %129, i32 0, i32 3
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %147, label %141

141:                                              ; preds = %137
  %142 = load i8, ptr %139, align 1
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.snd_card, ptr %125, i32 0, i32 4
  %146 = call i32 @strscpy(ptr noundef %145, ptr noundef nonnull %139, i32 noundef 80) #9
  br label %215

147:                                              ; preds = %141, %137
  %148 = getelementptr inbounds %struct.usb_audio_device_name, ptr %129, i32 0, i32 1
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %153, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.snd_card, ptr %125, i32 0, i32 4
  store i8 0, ptr %152, align 4
  br label %164

153:                                              ; preds = %147, %135, %131
  %154 = phi ptr [ %139, %147 ], [ null, %135 ], [ null, %131 ]
  %155 = icmp eq ptr %3, null
  br i1 %155, label %160, label %156

156:                                              ; preds = %153
  %157 = load ptr, ptr %3, align 4
  %158 = icmp eq ptr %157, null
  %159 = select i1 %158, ptr %154, ptr %157
  br label %160

160:                                              ; preds = %156, %153
  %161 = phi ptr [ %154, %153 ], [ %159, %156 ]
  %162 = getelementptr inbounds %struct.snd_card, ptr %125, i32 0, i32 4
  store i8 0, ptr %162, align 4
  %163 = icmp eq ptr %161, null
  br i1 %163, label %171, label %164

164:                                              ; preds = %160, %151
  %165 = phi ptr [ %152, %151 ], [ %162, %160 ]
  %166 = phi ptr [ %149, %151 ], [ %161, %160 ]
  %167 = load i8, ptr %166, align 1
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %164
  %170 = call i32 @strscpy(ptr noundef %165, ptr noundef nonnull %166, i32 noundef 80) #9
  br label %179

171:                                              ; preds = %164, %160
  %172 = phi ptr [ %165, %164 ], [ %162, %160 ]
  %173 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 10
  %174 = load i8, ptr %173, align 2
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %171
  %177 = zext i8 %174 to i32
  %178 = call i32 @usb_string(ptr noundef %1, i32 noundef %177, ptr noundef %172, i32 noundef 80) #9
  br label %179

179:                                              ; preds = %176, %171, %169
  %180 = phi ptr [ %172, %171 ], [ %172, %176 ], [ %165, %169 ]
  %181 = load i8, ptr %180, align 4
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %189, label %183

183:                                              ; preds = %179
  %184 = call ptr @strim(ptr noundef %180) #9
  %185 = load i8, ptr %180, align 4
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %183
  %188 = call i32 @strlcat(ptr noundef %180, ptr noundef nonnull @.str.684, i32 noundef 80) #9
  br label %189

189:                                              ; preds = %187, %183, %179
  %190 = getelementptr inbounds %struct.snd_card, ptr %125, i32 0, i32 3
  %191 = call i32 @strlcat(ptr noundef %180, ptr noundef %190, i32 noundef 80) #9
  %192 = call i32 @strlcat(ptr noundef %180, ptr noundef nonnull @.str.685, i32 noundef 80) #9
  %193 = icmp ult i32 %192, 80
  br i1 %193, label %194, label %203

194:                                              ; preds = %189
  %195 = getelementptr i8, ptr %180, i32 %192
  %196 = sub nuw nsw i32 80, %192
  %197 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 12
  %198 = load ptr, ptr %197, align 8
  %199 = getelementptr inbounds %struct.usb_bus, ptr %198, i32 0, i32 3
  %200 = load ptr, ptr %199, align 4
  %201 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 1
  %202 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %195, i32 noundef %196, ptr noundef nonnull @.str.691, ptr noundef %200, ptr noundef %201) #9
  br label %203

203:                                              ; preds = %194, %189
  %204 = load i32, ptr %9, align 4
  switch i32 %204, label %215 [
    i32 1, label %205
    i32 2, label %207
    i32 3, label %209
    i32 5, label %211
    i32 6, label %213
  ]

205:                                              ; preds = %203
  %206 = call i32 @strlcat(ptr noundef %180, ptr noundef nonnull @.str.686, i32 noundef 80) #9
  br label %215

207:                                              ; preds = %203
  %208 = call i32 @strlcat(ptr noundef %180, ptr noundef nonnull @.str.687, i32 noundef 80) #9
  br label %215

209:                                              ; preds = %203
  %210 = call i32 @strlcat(ptr noundef %180, ptr noundef nonnull @.str.688, i32 noundef 80) #9
  br label %215

211:                                              ; preds = %203
  %212 = call i32 @strlcat(ptr noundef %180, ptr noundef nonnull @.str.689, i32 noundef 80) #9
  br label %215

213:                                              ; preds = %203
  %214 = call i32 @strlcat(ptr noundef %180, ptr noundef nonnull @.str.690, i32 noundef 80) #9
  br label %215

215:                                              ; preds = %213, %211, %209, %207, %205, %203, %144
  call void @snd_usb_audio_create_proc(ptr noundef %28) #9
  store ptr %28, ptr %5, align 4
  br label %216

216:                                              ; preds = %215, %23, %13
  %217 = phi i32 [ -6, %13 ], [ %21, %23 ], [ 0, %215 ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  ret i32 %217
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_disable_autosuspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_create_quirk(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_create_mixer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_usb_registration_quirk(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_media_device_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_init_quirk_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_usb_audio_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  tail call void @snd_usb_endpoint_free_all(ptr noundef %3) #9
  %4 = getelementptr inbounds %struct.snd_usb_audio, ptr %3, i32 0, i32 9
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.snd_usb_audio, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15, i32 8
  store ptr null, ptr %10, align 8
  br label %11

11:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_audio_create_proc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_endpoint_free_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_usb_find_csint_desc(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @snd_usb_create_stream(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @usb_ifnum_to_if(ptr noundef %5, i32 noundef %2) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.701, i32 noundef %1, i32 noundef %2) #10
  br label %74

10:                                               ; preds = %3
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 416361732
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = icmp eq i32 %13, 416361733
  %17 = icmp eq i32 %2, 0
  %18 = and i1 %17, %16
  br i1 %18, label %21, label %34

19:                                               ; preds = %10
  %20 = icmp eq i32 %2, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %19, %15
  %22 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %11, i32 0, i32 5
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, -1
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %11, i32 0, i32 6
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, -1
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = tail call ptr @usb_ifnum_to_if(ptr noundef %5, i32 noundef 2) #9
  %31 = icmp eq ptr %30, null
  br i1 %31, label %74, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %30, align 8
  br label %34

34:                                               ; preds = %32, %25, %21, %19, %15
  %35 = phi i32 [ 2, %32 ], [ 0, %25 ], [ 0, %21 ], [ %2, %19 ], [ %2, %15 ]
  %36 = phi ptr [ %33, %32 ], [ %11, %25 ], [ %11, %21 ], [ %11, %19 ], [ %11, %15 ]
  %37 = phi ptr [ %30, %32 ], [ %6, %25 ], [ %6, %21 ], [ %6, %19 ], [ %6, %15 ]
  %38 = getelementptr inbounds %struct.usb_interface, ptr %37, i32 0, i32 7, i32 6
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %74

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %36, i32 0, i32 5
  %43 = load i8, ptr %42, align 1
  switch i8 %43, label %74 [
    i8 1, label %44
    i8 -1, label %44
  ]

44:                                               ; preds = %41, %41
  %45 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %36, i32 0, i32 6
  %46 = load i8, ptr %45, align 1
  %47 = icmp eq i8 %46, 3
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 22
  %52 = load i32, ptr %12, align 4
  %53 = tail call i32 @__snd_usbmidi_create(ptr noundef %50, ptr noundef nonnull %37, ptr noundef %51, ptr noundef null, i32 noundef %52) #9
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.702, i32 noundef %1, i32 noundef %35) #10
  br label %74

57:                                               ; preds = %48
  %58 = tail call i32 @usb_driver_claim_interface(ptr noundef nonnull @usb_audio_driver, ptr noundef nonnull %37, ptr noundef nonnull inttoptr (i32 -1 to ptr)) #9
  br label %74

59:                                               ; preds = %44
  switch i8 %43, label %74 [
    i8 1, label %60
    i8 -1, label %60
  ]

60:                                               ; preds = %59, %59
  %61 = icmp eq i8 %46, 2
  br i1 %61, label %62, label %74

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 4
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.703) #10
  br label %74

68:                                               ; preds = %62
  %69 = tail call i32 @snd_usb_parse_audio_interface(ptr noundef %0, i32 noundef %35) #9
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = tail call i32 @usb_set_interface(ptr noundef %5, i32 noundef %35, i32 noundef 0) #9
  %73 = tail call i32 @usb_driver_claim_interface(ptr noundef nonnull @usb_audio_driver, ptr noundef nonnull %37, ptr noundef nonnull inttoptr (i32 -1 to ptr)) #9
  br label %74

74:                                               ; preds = %71, %68, %66, %60, %59, %57, %55, %41, %34, %29, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__snd_usbmidi_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_driver_claim_interface(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_parse_audio_interface(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_endpoint_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usbmidi_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_media_device_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_mixer_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_enable_autosuspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free_when_closed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_pcm_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_endpoint_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usbmidi_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_mixer_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_pcm_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_mixer_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usbmidi_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn }
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
!8 = !{i64 393362, i64 2147883333, i64 2147883359, i64 2147883406, i64 2147883428, i64 2147883456, i64 2147883476}
!9 = !{i64 2147895545, i64 2147895571, i64 2147895600, i64 2147895634, i64 2147895665, i64 2147895688}
!10 = !{i64 2147996200}
!11 = !{i64 2147898586, i64 2147898618, i64 2147898647, i64 2147898681, i64 2147898712, i64 2147898735}
!12 = !{i64 2147996403}
!13 = !{i64 2147993367}
!14 = !{i64 2147896229, i64 2147896261, i64 2147896290, i64 2147896324, i64 2147896355, i64 2147896378}
!15 = !{i64 2147993570}
!16 = !{i64 2147897902, i64 2147897928, i64 2147897957, i64 2147897991, i64 2147898022, i64 2147898045}
!17 = !{!"auto-init"}
!18 = !{i8 0, i8 2}
