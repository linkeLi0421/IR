; ModuleID = '/llk/IR/sound/pci/hda/hda_proc.c_pt.bc'
source_filename = "../sound/pci/hda/hda_proc.c"
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.snd_array = type { i32, i32, i32, i32, ptr }
%struct.hda_codec = type { %struct.hdac_device, ptr, ptr, i32, i32, ptr, ptr, %struct.hda_codec_ops, %struct.list_head, %struct.refcount_struct, %struct.wait_queue_head, ptr, ptr, i32, ptr, %struct.snd_array, %struct.snd_array, %struct.list_head, %struct.mutex, %struct.mutex, %struct.snd_array, i32, ptr, %struct.snd_array, %struct.snd_array, %struct.snd_array, %struct.mutex, %struct.snd_array, %struct.snd_array, %struct.snd_array, i24, i32, i32, i32, ptr, ptr, %struct.snd_array, i32, %struct.delayed_work, i32, i32, ptr, ptr, %struct.snd_array }
%struct.hda_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.66, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.66 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8 }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, ptr, ptr, %struct.device }
%struct.hda_nid_item = type { ptr, i32, i16, i16 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.77, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.77 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }

@__param_str_dump_coef = internal constant [10 x i8] c"dump_coef\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dump_coef = internal global i32 -1, align 4
@__param_dump_coef = internal constant %struct.kernel_param { ptr @__param_str_dump_coef, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.60 { ptr @dump_coef } }, section "__param", align 4
@__UNIQUE_ID_dump_coeftype231 = internal constant [23 x i8] c"parmtype=dump_coef:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dump_coef232 = internal constant [94 x i8] c"parm=dump_coef:Dump processing coefficients in codec proc file (-1=auto, 0=disable, 1=enable)\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"codec#%d\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Default PCM:\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Default Amp-In caps: \00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Default Amp-Out caps: \00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"State of AFG node 0x%02x:\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Invalid AFG subtree\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Node 0x%02x [%s] wcaps 0x%x:\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c" Stereo\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c" %d-Channels\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c" Mono\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c" Digital\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c" Amp-In\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c" Amp-Out\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c" Stripe\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c" R/L\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c" CP\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"  Amp-In caps: \00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"  Amp-In vals: \00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"  Amp-Out caps: \00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"  Amp-Out vals: \00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"  PCM:\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"  Delay: %d samples\0A\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"Codec: \00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"Not Set\0A\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"Address: %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"AFG Function Id: 0x%x (unsol %u)\0A\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"MFG Function Id: 0x%x (unsol %u)\0A\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"Vendor Id: 0x%08x\0A\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"Subsystem Id: 0x%08x\0A\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"Revision Id: 0x%x\0A\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"Modem Function Group: 0x%x\0A\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"No Modem Function Group found\0A\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"N/A\0A\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"    rates [0x%x]:\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"    bits [0x%x]:\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"    formats [0x%x]:\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c" PCM\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c" FLOAT\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c" AC3\00", align 1
@.str.43 = private unnamed_addr constant [53 x i8] c"ofs=0x%02x, nsteps=0x%02x, stepsize=0x%02x, mute=%x\0A\00", align 1
@print_power_state.names = internal unnamed_addr constant [32 x ptr] [ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.49, ptr @.str.50, ptr @.str.51], align 4
@.str.44 = private unnamed_addr constant [3 x i8] c"D0\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"D1\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"D2\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"D3\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"D3cold\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"S3D3cold\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"CLKSTOP\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"EPSS\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"  Power states: \00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.54 = private unnamed_addr constant [31 x i8] c"  Power: setting=%s, actual=%s\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c", Error\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c", Clock-stop-OK\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c", Setting-reset\00", align 1
@get_pwr_state.buf = internal unnamed_addr constant [5 x ptr] [ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], align 4
@.str.58 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.59 = private unnamed_addr constant [50 x i8] c"GPIO: io=%d, o=%d, i=%d, unsolicited=%d, wake=%d\0A\00", align 1
@.str.60 = private unnamed_addr constant [68 x i8] c"  IO[%d]: enable=%d, dir=%d, wake=%d, sticky=%d, data=%d, unsol=%d\0A\00", align 1
@get_wid_type_name.names = internal unnamed_addr constant [16 x ptr] [ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.69], align 4
@.str.61 = private unnamed_addr constant [13 x i8] c"Audio Output\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"Audio Input\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"Audio Mixer\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"Audio Selector\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"Pin Complex\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"Power Widget\00", align 1
@.str.67 = private unnamed_addr constant [19 x i8] c"Volume Knob Widget\00", align 1
@.str.68 = private unnamed_addr constant [22 x i8] c"Beep Generator Widget\00", align 1
@.str.69 = private unnamed_addr constant [22 x i8] c"Vendor Defined Widget\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"UNKNOWN Widget\00", align 1
@.str.71 = private unnamed_addr constant [43 x i8] c"  Control: name=\22%s\22, index=%i, device=%i\0A\00", align 1
@.str.72 = private unnamed_addr constant [51 x i8] c"    ControlAmp: chs=%lu, dir=%s, idx=%lu, ofs=%lu\0A\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"Out\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"In\00", align 1
@.str.75 = private unnamed_addr constant [43 x i8] c"  Device: name=\22%s\22, type=\22%s\22, device=%i\0A\00", align 1
@snd_hda_pcm_type_name = external dso_local local_unnamed_addr global [0 x ptr], align 4
@.str.76 = private unnamed_addr constant [3 x i8] c" [\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"0x%02x\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c" 0x%02x\00", align 1
@.str.79 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@print_pin_caps.jack_conns = internal unnamed_addr constant [4 x ptr] [ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83], align 4
@.str.80 = private unnamed_addr constant [5 x i8] c"Jack\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"Fixed\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"Both\00", align 1
@.str.84 = private unnamed_addr constant [17 x i8] c"  Pincap 0x%08x:\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c" IN\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c" OUT\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c" HP\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c" EAPD\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c" Detect\00", align 1
@.str.90 = private unnamed_addr constant [10 x i8] c" Balanced\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c" HBR\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c" HDMI\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c" DP\00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c" Trigger\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c" ImpSense\00", align 1
@.str.96 = private unnamed_addr constant [15 x i8] c"    Vref caps:\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c" HIZ\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c" 50\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c" GRD\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c" 80\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c" 100\00", align 1
@.str.102 = private unnamed_addr constant [13 x i8] c"  EAPD 0x%x:\00", align 1
@.str.103 = private unnamed_addr constant [10 x i8] c" BALANCED\00", align 1
@.str.104 = private unnamed_addr constant [40 x i8] c"  Pin Default 0x%08x: [%s] %s at %s %s\0A\00", align 1
@.str.105 = private unnamed_addr constant [27 x i8] c"    Conn = %s, Color = %s\0A\00", align 1
@.str.106 = private unnamed_addr constant [44 x i8] c"    DefAssociation = 0x%x, Sequence = 0x%x\0A\00", align 1
@.str.107 = private unnamed_addr constant [24 x i8] c"    Misc = NO_PRESENCE\0A\00", align 1
@get_jack_type.jack_types = internal unnamed_addr constant [16 x ptr] [ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123], align 4
@.str.108 = private unnamed_addr constant [9 x i8] c"Line Out\00", align 1
@.str.109 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@.str.110 = private unnamed_addr constant [7 x i8] c"HP Out\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"CD\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"SPDIF Out\00", align 1
@.str.113 = private unnamed_addr constant [12 x i8] c"Digital Out\00", align 1
@.str.114 = private unnamed_addr constant [11 x i8] c"Modem Line\00", align 1
@.str.115 = private unnamed_addr constant [11 x i8] c"Modem Hand\00", align 1
@.str.116 = private unnamed_addr constant [8 x i8] c"Line In\00", align 1
@.str.117 = private unnamed_addr constant [4 x i8] c"Aux\00", align 1
@.str.118 = private unnamed_addr constant [4 x i8] c"Mic\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"Telephony\00", align 1
@.str.120 = private unnamed_addr constant [9 x i8] c"SPDIF In\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"Digital In\00", align 1
@.str.122 = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@.str.123 = private unnamed_addr constant [6 x i8] c"Other\00", align 1
@get_jack_connectivity.jack_locations = internal unnamed_addr constant [4 x ptr] [ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127], align 4
@.str.124 = private unnamed_addr constant [4 x i8] c"Ext\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c"Int\00", align 1
@.str.126 = private unnamed_addr constant [4 x i8] c"Sep\00", align 1
@.str.127 = private unnamed_addr constant [4 x i8] c"Oth\00", align 1
@get_jack_location.bases = internal unnamed_addr constant [7 x ptr] [ptr @.str.81, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133], align 4
@.str.128 = private unnamed_addr constant [5 x i8] c"Rear\00", align 1
@.str.129 = private unnamed_addr constant [6 x i8] c"Front\00", align 1
@.str.130 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.132 = private unnamed_addr constant [4 x i8] c"Top\00", align 1
@.str.133 = private unnamed_addr constant [7 x i8] c"Bottom\00", align 1
@get_jack_location.specials = internal unnamed_addr constant [7 x ptr] [ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140], align 4
@.str.134 = private unnamed_addr constant [11 x i8] c"Rear Panel\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"Drive Bar\00", align 1
@.str.136 = private unnamed_addr constant [6 x i8] c"Riser\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c"HDMI\00", align 1
@.str.138 = private unnamed_addr constant [6 x i8] c"ATAPI\00", align 1
@.str.139 = private unnamed_addr constant [10 x i8] c"Mobile-In\00", align 1
@.str.140 = private unnamed_addr constant [11 x i8] c"Mobile-Out\00", align 1
@get_jack_connection.names = internal unnamed_addr constant [16 x ptr] [ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.138, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr null, ptr null, ptr null, ptr @.str.123], align 4
@.str.141 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.142 = private unnamed_addr constant [4 x i8] c"1/8\00", align 1
@.str.143 = private unnamed_addr constant [4 x i8] c"1/4\00", align 1
@.str.144 = private unnamed_addr constant [4 x i8] c"RCA\00", align 1
@.str.145 = private unnamed_addr constant [8 x i8] c"Optical\00", align 1
@.str.146 = private unnamed_addr constant [8 x i8] c"Digital\00", align 1
@.str.147 = private unnamed_addr constant [7 x i8] c"Analog\00", align 1
@.str.148 = private unnamed_addr constant [4 x i8] c"DIN\00", align 1
@.str.149 = private unnamed_addr constant [4 x i8] c"XLR\00", align 1
@.str.150 = private unnamed_addr constant [5 x i8] c"RJ11\00", align 1
@.str.151 = private unnamed_addr constant [5 x i8] c"Comb\00", align 1
@get_jack_color.names = internal unnamed_addr constant [16 x ptr] [ptr @.str.141, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr null, ptr null, ptr null, ptr null, ptr @.str.161, ptr @.str.123], align 4
@.str.152 = private unnamed_addr constant [6 x i8] c"Black\00", align 1
@.str.153 = private unnamed_addr constant [5 x i8] c"Grey\00", align 1
@.str.154 = private unnamed_addr constant [5 x i8] c"Blue\00", align 1
@.str.155 = private unnamed_addr constant [6 x i8] c"Green\00", align 1
@.str.156 = private unnamed_addr constant [4 x i8] c"Red\00", align 1
@.str.157 = private unnamed_addr constant [7 x i8] c"Orange\00", align 1
@.str.158 = private unnamed_addr constant [7 x i8] c"Yellow\00", align 1
@.str.159 = private unnamed_addr constant [7 x i8] c"Purple\00", align 1
@.str.160 = private unnamed_addr constant [5 x i8] c"Pink\00", align 1
@.str.161 = private unnamed_addr constant [6 x i8] c"White\00", align 1
@.str.162 = private unnamed_addr constant [20 x i8] c"  Pin-ctls: 0x%02x:\00", align 1
@.str.163 = private unnamed_addr constant [10 x i8] c" VREF_HIZ\00", align 1
@.str.164 = private unnamed_addr constant [9 x i8] c" VREF_50\00", align 1
@.str.165 = private unnamed_addr constant [10 x i8] c" VREF_GRD\00", align 1
@.str.166 = private unnamed_addr constant [9 x i8] c" VREF_80\00", align 1
@.str.167 = private unnamed_addr constant [10 x i8] c" VREF_100\00", align 1
@.str.168 = private unnamed_addr constant [36 x i8] c"  Volume-Knob: delta=%d, steps=%d, \00", align 1
@.str.169 = private unnamed_addr constant [19 x i8] c"direct=%d, val=%d\0A\00", align 1
@.str.170 = private unnamed_addr constant [36 x i8] c"  Converter: stream=%d, channel=%d\0A\00", align 1
@.str.171 = private unnamed_addr constant [18 x i8] c"  SDI-Select: %d\0A\00", align 1
@.str.172 = private unnamed_addr constant [11 x i8] c"  Digital:\00", align 1
@.str.173 = private unnamed_addr constant [9 x i8] c" Enabled\00", align 1
@.str.174 = private unnamed_addr constant [10 x i8] c" Validity\00", align 1
@.str.175 = private unnamed_addr constant [13 x i8] c" ValidityCfg\00", align 1
@.str.176 = private unnamed_addr constant [13 x i8] c" Preemphasis\00", align 1
@.str.177 = private unnamed_addr constant [15 x i8] c" Non-Copyright\00", align 1
@.str.178 = private unnamed_addr constant [11 x i8] c" Non-Audio\00", align 1
@.str.179 = private unnamed_addr constant [5 x i8] c" Pro\00", align 1
@.str.180 = private unnamed_addr constant [10 x i8] c" GenLevel\00", align 1
@.str.181 = private unnamed_addr constant [5 x i8] c" KAE\00", align 1
@.str.182 = private unnamed_addr constant [26 x i8] c"  Digital category: 0x%x\0A\00", align 1
@.str.183 = private unnamed_addr constant [25 x i8] c"  IEC Coding Type: 0x%x\0A\00", align 1
@.str.184 = private unnamed_addr constant [37 x i8] c"  Unsolicited: tag=%02x, enabled=%d\0A\00", align 1
@.str.185 = private unnamed_addr constant [15 x i8] c"  Devices: %d\0A\00", align 1
@.str.186 = private unnamed_addr constant [6 x i8] c"    *\00", align 1
@.str.187 = private unnamed_addr constant [6 x i8] c"     \00", align 1
@.str.188 = private unnamed_addr constant [53 x i8] c"Dev %02d: PD = %d, ELDV = %d, IA = %d, Connections [\00", align 1
@.str.189 = private unnamed_addr constant [4 x i8] c" ]\0A\00", align 1
@.str.190 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.191 = private unnamed_addr constant [18 x i8] c"  Connection: %d\0A\00", align 1
@.str.192 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.193 = private unnamed_addr constant [28 x i8] c"  In-driver Connection: %d\0A\00", align 1
@.str.194 = private unnamed_addr constant [41 x i8] c"  Processing caps: benign=%d, ncoeff=%d\0A\00", align 1
@.str.195 = private unnamed_addr constant [26 x i8] c"    Coeff 0x%02x: 0x%04x\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_dump_coef232, ptr @__UNIQUE_ID_dump_coeftype231, ptr @__param_dump_coef], section "llvm.metadata"
@switch.table.print_codec_info = private unnamed_addr constant [6 x ptr] [ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.163, ptr @.str.166, ptr @.str.167], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hda_codec_proc_new(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !8
  %3 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 8
  %5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str, i32 noundef %4)
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @snd_card_rw_proc_new(ptr noundef %7, ptr noundef nonnull %2, ptr noundef %0, ptr noundef nonnull @print_codec_info, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #7
  ret i32 %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @print_codec_info(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca [64 x i8], align 1
  %5 = alloca i16, align 2
  %6 = getelementptr inbounds %struct.snd_info_entry, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #7
  store i16 0, ptr %5, align 2, !annotation !8
  %8 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %8, ptr noundef nonnull @.str.23) #7
  %9 = getelementptr inbounds %struct.hdac_device, ptr %7, i32 0, i32 14
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.hdac_device, ptr %7, i32 0, i32 15
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %17, ptr noundef nonnull @.str.24, ptr noundef nonnull %10, ptr noundef nonnull %14) #7
  br label %20

18:                                               ; preds = %12, %2
  %19 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %19, ptr noundef nonnull @.str.25) #7
  br label %20

20:                                               ; preds = %18, %16
  %21 = load ptr, ptr %1, align 4
  %22 = getelementptr inbounds %struct.hdac_device, ptr %7, i32 0, i32 3
  %23 = load i32, ptr %22, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %21, ptr noundef nonnull @.str.26, i32 noundef %23) #7
  %24 = getelementptr inbounds %struct.hdac_device, ptr %7, i32 0, i32 5
  %25 = load i16, ptr %24, align 4
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %1, align 4
  %29 = getelementptr inbounds %struct.hdac_device, ptr %7, i32 0, i32 10
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.hdac_device, ptr %7, i32 0, i32 12
  %32 = load i8, ptr %31, align 4
  %33 = and i8 %32, 1
  %34 = zext i8 %33 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %28, ptr noundef nonnull @.str.27, i32 noundef %30, i32 noundef %34) #7
  br label %35

35:                                               ; preds = %27, %20
  %36 = getelementptr inbounds %struct.hdac_device, ptr %7, i32 0, i32 6
  %37 = load i16, ptr %36, align 2
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %1, align 4
  %41 = getelementptr inbounds %struct.hdac_device, ptr %7, i32 0, i32 11
  %42 = load i32, ptr %41, align 8
  %43 = getelementptr inbounds %struct.hdac_device, ptr %7, i32 0, i32 12
  %44 = load i8, ptr %43, align 4
  %45 = lshr i8 %44, 1
  %46 = and i8 %45, 1
  %47 = zext i8 %46 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %40, ptr noundef nonnull @.str.28, i32 noundef %42, i32 noundef %47) #7
  br label %48

48:                                               ; preds = %39, %35
  %49 = load ptr, ptr %1, align 4
  %50 = getelementptr inbounds %struct.hdac_device, ptr %7, i32 0, i32 7
  %51 = load i32, ptr %50, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %49, ptr noundef nonnull @.str.29, i32 noundef %51) #7
  %52 = load ptr, ptr %1, align 4
  %53 = getelementptr inbounds %struct.hdac_device, ptr %7, i32 0, i32 8
  %54 = load i32, ptr %53, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %52, ptr noundef nonnull @.str.30, i32 noundef %54) #7
  %55 = load ptr, ptr %1, align 4
  %56 = getelementptr inbounds %struct.hdac_device, ptr %7, i32 0, i32 9
  %57 = load i32, ptr %56, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %55, ptr noundef nonnull @.str.31, i32 noundef %57) #7
  %58 = load i16, ptr %36, align 2
  %59 = icmp eq i16 %58, 0
  %60 = load ptr, ptr %1, align 4
  br i1 %59, label %63, label %61

61:                                               ; preds = %48
  %62 = zext i16 %58 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %60, ptr noundef nonnull @.str.32, i32 noundef %62) #7
  br label %64

63:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %60, ptr noundef nonnull @.str.33) #7
  br label %64

64:                                               ; preds = %63, %61
  %65 = load i16, ptr %24, align 4
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %826, label %67

67:                                               ; preds = %64
  %68 = tail call i32 @snd_hdac_power_up(ptr noundef %7) #7
  %69 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %69, ptr noundef nonnull @.str.1) #7
  tail call fastcc void @print_pcm_caps(ptr noundef %1, ptr noundef %7, i16 noundef zeroext %65)
  %70 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %70, ptr noundef nonnull @.str.2) #7
  %71 = tail call i32 @snd_hdac_read_parm_uncached(ptr noundef %7, i16 noundef zeroext %65, i32 noundef 13) #7
  %72 = add i32 %71, 1
  %73 = icmp ult i32 %72, 2
  %74 = load ptr, ptr %1, align 4
  br i1 %73, label %75, label %76

75:                                               ; preds = %67
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %74, ptr noundef nonnull @.str.34) #7
  br label %83

76:                                               ; preds = %67
  %77 = and i32 %71, 127
  %78 = lshr i32 %71, 8
  %79 = and i32 %78, 127
  %80 = lshr i32 %71, 16
  %81 = and i32 %80, 127
  %82 = lshr i32 %71, 31
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %74, ptr noundef nonnull @.str.43, i32 noundef %77, i32 noundef %79, i32 noundef %81, i32 noundef %82) #7
  br label %83

83:                                               ; preds = %76, %75
  %84 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %84, ptr noundef nonnull @.str.3) #7
  %85 = tail call i32 @snd_hdac_read_parm_uncached(ptr noundef %7, i16 noundef zeroext %65, i32 noundef 18) #7
  %86 = add i32 %85, 1
  %87 = icmp ult i32 %86, 2
  %88 = load ptr, ptr %1, align 4
  br i1 %87, label %89, label %90

89:                                               ; preds = %83
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %88, ptr noundef nonnull @.str.34) #7
  br label %97

90:                                               ; preds = %83
  %91 = and i32 %85, 127
  %92 = lshr i32 %85, 8
  %93 = and i32 %92, 127
  %94 = lshr i32 %85, 16
  %95 = and i32 %94, 127
  %96 = lshr i32 %85, 31
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %88, ptr noundef nonnull @.str.43, i32 noundef %91, i32 noundef %93, i32 noundef %95, i32 noundef %96) #7
  br label %97

97:                                               ; preds = %90, %89
  %98 = load ptr, ptr %1, align 4
  %99 = zext i16 %65 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %98, ptr noundef nonnull @.str.4, i32 noundef %99) #7
  tail call fastcc void @print_power_state(ptr noundef %1, ptr noundef %7, i16 noundef zeroext %65)
  %100 = call i32 @snd_hdac_get_sub_nodes(ptr noundef %7, i16 noundef zeroext %65, ptr noundef nonnull %5) #7
  %101 = load i16, ptr %5, align 2
  %102 = icmp eq i16 %101, 0
  %103 = icmp slt i32 %100, 0
  %104 = select i1 %102, i1 true, i1 %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %97
  %106 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %106, ptr noundef nonnull @.str.5) #7
  br label %824

107:                                              ; preds = %97
  %108 = load i16, ptr %24, align 4
  %109 = call i32 @snd_hdac_read_parm_uncached(ptr noundef %7, i16 noundef zeroext %108, i32 noundef 17) #7
  %110 = load ptr, ptr %1, align 4
  %111 = and i32 %109, 255
  %112 = lshr i32 %109, 8
  %113 = and i32 %112, 255
  %114 = lshr i32 %109, 16
  %115 = and i32 %114, 255
  %116 = lshr i32 %109, 30
  %117 = and i32 %116, 1
  %118 = lshr i32 %109, 31
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %110, ptr noundef nonnull @.str.59, i32 noundef %111, i32 noundef %113, i32 noundef %115, i32 noundef %117, i32 noundef %118) #7
  %119 = add nsw i32 %111, -9
  %120 = icmp ult i32 %119, -8
  br i1 %120, label %148, label %121

121:                                              ; preds = %107
  %122 = call i32 @snd_hdac_codec_read(ptr noundef %7, i16 noundef zeroext %65, i32 noundef 0, i32 noundef 3862, i32 noundef 0) #7
  %123 = call i32 @snd_hdac_codec_read(ptr noundef %7, i16 noundef zeroext %65, i32 noundef 0, i32 noundef 3863, i32 noundef 0) #7
  %124 = call i32 @snd_hdac_codec_read(ptr noundef %7, i16 noundef zeroext %65, i32 noundef 0, i32 noundef 3864, i32 noundef 0) #7
  %125 = call i32 @snd_hdac_codec_read(ptr noundef %7, i16 noundef zeroext %65, i32 noundef 0, i32 noundef 3865, i32 noundef 0) #7
  %126 = call i32 @snd_hdac_codec_read(ptr noundef %7, i16 noundef zeroext %65, i32 noundef 0, i32 noundef 3866, i32 noundef 0) #7
  %127 = call i32 @snd_hdac_codec_read(ptr noundef %7, i16 noundef zeroext %65, i32 noundef 0, i32 noundef 3861, i32 noundef 0) #7
  br label %128

128:                                              ; preds = %128, %121
  %129 = phi i32 [ %143, %128 ], [ 0, %121 ]
  %130 = load ptr, ptr %1, align 4
  %131 = lshr i32 %122, %129
  %132 = and i32 %131, 1
  %133 = lshr i32 %123, %129
  %134 = and i32 %133, 1
  %135 = lshr i32 %124, %129
  %136 = and i32 %135, 1
  %137 = lshr i32 %126, %129
  %138 = and i32 %137, 1
  %139 = lshr i32 %127, %129
  %140 = and i32 %139, 1
  %141 = lshr i32 %125, %129
  %142 = and i32 %141, 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %130, ptr noundef nonnull @.str.60, i32 noundef %129, i32 noundef %132, i32 noundef %134, i32 noundef %136, i32 noundef %138, i32 noundef %140, i32 noundef %142) #7
  %143 = add nuw nsw i32 %129, 1
  %144 = icmp eq i32 %143, %111
  br i1 %144, label %145, label %128

145:                                              ; preds = %128
  %146 = getelementptr inbounds %struct.hda_codec, ptr %7, i32 0, i32 15
  call fastcc void @print_nid_array(ptr noundef %1, i16 noundef zeroext %65, ptr noundef %146) #7
  %147 = getelementptr inbounds %struct.hda_codec, ptr %7, i32 0, i32 16
  call fastcc void @print_nid_array(ptr noundef %1, i16 noundef zeroext %65, ptr noundef %147) #7
  br label %148

148:                                              ; preds = %145, %107
  %149 = getelementptr inbounds %struct.hda_codec, ptr %7, i32 0, i32 35
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %148
  call void %150(ptr noundef %1, ptr noundef %7, i16 noundef zeroext %65) #7
  br label %153

153:                                              ; preds = %152, %148
  %154 = icmp sgt i32 %100, 0
  br i1 %154, label %155, label %824

155:                                              ; preds = %153
  %156 = getelementptr inbounds %struct.hda_codec, ptr %7, i32 0, i32 15
  %157 = getelementptr inbounds %struct.hda_codec, ptr %7, i32 0, i32 16
  %158 = getelementptr inbounds %struct.hda_codec, ptr %7, i32 0, i32 8
  %159 = getelementptr inbounds %struct.hda_codec, ptr %7, i32 0, i32 30
  %160 = load i16, ptr %5, align 2
  br label %161

161:                                              ; preds = %819, %155
  %162 = phi i16 [ %160, %155 ], [ %822, %819 ]
  %163 = phi i32 [ 0, %155 ], [ %820, %819 ]
  %164 = call i32 @snd_hdac_read_parm_uncached(ptr noundef %7, i16 noundef zeroext %162, i32 noundef 9) #7
  %165 = icmp eq i32 %164, 0
  %166 = lshr i32 %164, 20
  %167 = and i32 %166, 15
  %168 = select i1 %165, i32 -1, i32 %167
  %169 = load ptr, ptr %1, align 4
  %170 = load i16, ptr %5, align 2
  %171 = zext i16 %170 to i32
  br i1 %165, label %172, label %173

172:                                              ; preds = %161
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %169, ptr noundef nonnull @.str.6, i32 noundef %171, ptr noundef nonnull @.str.70, i32 noundef 0) #7
  br label %193

173:                                              ; preds = %161
  %174 = and i32 %168, 15
  %175 = add nsw i32 %174, -8
  %176 = icmp ult i32 %175, 7
  br i1 %176, label %180, label %177

177:                                              ; preds = %173
  %178 = getelementptr [16 x ptr], ptr @get_wid_type_name.names, i32 0, i32 %174
  %179 = load ptr, ptr %178, align 4
  br label %180

180:                                              ; preds = %177, %173
  %181 = phi ptr [ %179, %177 ], [ @.str.70, %173 ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %169, ptr noundef nonnull @.str.6, i32 noundef %171, ptr noundef %181, i32 noundef %164) #7
  %182 = and i32 %164, 1
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %193, label %184

184:                                              ; preds = %180
  %185 = lshr i32 %164, 12
  %186 = and i32 %185, 14
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %184
  %189 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %189, ptr noundef nonnull @.str.7) #7
  br label %195

190:                                              ; preds = %184
  %191 = add nuw nsw i32 %186, 2
  %192 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %192, ptr noundef nonnull @.str.8, i32 noundef %191) #7
  br label %195

193:                                              ; preds = %180, %172
  %194 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %194, ptr noundef nonnull @.str.9) #7
  br label %195

195:                                              ; preds = %193, %190, %188
  %196 = and i32 %164, 512
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %195
  %199 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %199, ptr noundef nonnull @.str.10) #7
  br label %200

200:                                              ; preds = %198, %195
  %201 = and i32 %164, 2
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %200
  %204 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %204, ptr noundef nonnull @.str.11) #7
  br label %205

205:                                              ; preds = %203, %200
  %206 = and i32 %164, 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %210, label %208

208:                                              ; preds = %205
  %209 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %209, ptr noundef nonnull @.str.12) #7
  br label %210

210:                                              ; preds = %208, %205
  %211 = and i32 %164, 32
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %215, label %213

213:                                              ; preds = %210
  %214 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %214, ptr noundef nonnull @.str.13) #7
  br label %215

215:                                              ; preds = %213, %210
  %216 = and i32 %164, 2048
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %220, label %218

218:                                              ; preds = %215
  %219 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %219, ptr noundef nonnull @.str.14) #7
  br label %220

220:                                              ; preds = %218, %215
  %221 = and i32 %164, 4096
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %225, label %223

223:                                              ; preds = %220
  %224 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %224, ptr noundef nonnull @.str.15) #7
  br label %225

225:                                              ; preds = %223, %220
  %226 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %226, ptr noundef nonnull @.str.16) #7
  %227 = load i16, ptr %5, align 2
  call fastcc void @print_nid_array(ptr noundef %1, i16 noundef zeroext %227, ptr noundef %156)
  %228 = load i16, ptr %5, align 2
  call fastcc void @print_nid_array(ptr noundef %1, i16 noundef zeroext %228, ptr noundef %157)
  %229 = load i16, ptr %5, align 2
  %230 = load ptr, ptr %158, align 4
  %231 = icmp eq ptr %230, %158
  br i1 %231, label %269, label %232

232:                                              ; preds = %266, %225
  %233 = phi ptr [ %267, %266 ], [ %230, %225 ]
  %234 = getelementptr i8, ptr %233, i32 -156
  %235 = getelementptr i8, ptr %233, i32 -12
  %236 = getelementptr i8, ptr %233, i32 -20
  %237 = getelementptr i8, ptr %233, i32 -136
  %238 = load i16, ptr %237, align 4
  %239 = icmp eq i16 %238, %229
  br i1 %239, label %240, label %251

240:                                              ; preds = %232
  %241 = load ptr, ptr %235, align 8
  %242 = icmp eq ptr %241, null
  br i1 %242, label %251, label %243

243:                                              ; preds = %240
  %244 = load ptr, ptr %1, align 4
  %245 = load ptr, ptr %234, align 8
  %246 = load i32, ptr %236, align 8
  %247 = getelementptr [0 x ptr], ptr @snd_hda_pcm_type_name, i32 0, i32 %246
  %248 = load ptr, ptr %247, align 4
  %249 = getelementptr inbounds %struct.snd_pcm, ptr %241, i32 0, i32 2
  %250 = load i32, ptr %249, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %244, ptr noundef nonnull @.str.75, ptr noundef %245, ptr noundef %248, i32 noundef %250) #7
  br label %251

251:                                              ; preds = %243, %240, %232
  %252 = getelementptr i8, ptr %233, i32 -72
  %253 = load i16, ptr %252, align 4
  %254 = icmp eq i16 %253, %229
  br i1 %254, label %255, label %266

255:                                              ; preds = %251
  %256 = load ptr, ptr %235, align 8
  %257 = icmp eq ptr %256, null
  br i1 %257, label %266, label %258

258:                                              ; preds = %255
  %259 = load ptr, ptr %1, align 4
  %260 = load ptr, ptr %234, align 8
  %261 = load i32, ptr %236, align 8
  %262 = getelementptr [0 x ptr], ptr @snd_hda_pcm_type_name, i32 0, i32 %261
  %263 = load ptr, ptr %262, align 4
  %264 = getelementptr inbounds %struct.snd_pcm, ptr %256, i32 0, i32 2
  %265 = load i32, ptr %264, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %259, ptr noundef nonnull @.str.75, ptr noundef %260, ptr noundef %263, i32 noundef %265) #7
  br label %266

266:                                              ; preds = %258, %255, %251
  %267 = load ptr, ptr %233, align 4
  %268 = icmp eq ptr %267, %158
  br i1 %268, label %269, label %232

269:                                              ; preds = %266, %225
  %270 = icmp eq i32 %168, 6
  %271 = or i32 %164, 256
  %272 = select i1 %270, i32 %271, i32 %164
  %273 = and i32 %272, 256
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %288, label %275

275:                                              ; preds = %269
  %276 = load i16, ptr %5, align 2
  %277 = call i32 @snd_hdac_get_connections(ptr noundef %7, i16 noundef zeroext %276, ptr noundef null, i32 noundef 0) #7
  %278 = icmp sgt i32 %277, 0
  br i1 %278, label %279, label %288

279:                                              ; preds = %275
  %280 = shl nuw i32 %277, 1
  %281 = call noalias align 64 ptr @__kmalloc(i32 noundef %280, i32 noundef 3264) #8
  %282 = icmp eq ptr %281, null
  br i1 %282, label %826, label %283

283:                                              ; preds = %279
  %284 = load i16, ptr %5, align 2
  %285 = call i32 @snd_hdac_get_connections(ptr noundef %7, i16 noundef zeroext %284, ptr noundef nonnull %281, i32 noundef %277) #7
  %286 = icmp slt i32 %285, 0
  %287 = select i1 %286, i32 0, i32 %277
  br label %288

288:                                              ; preds = %283, %275, %269
  %289 = phi ptr [ null, %275 ], [ null, %269 ], [ %281, %283 ]
  %290 = phi i32 [ %277, %275 ], [ 0, %269 ], [ %287, %283 ]
  %291 = and i32 %272, 2
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %321, label %293

293:                                              ; preds = %288
  %294 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %294, ptr noundef nonnull @.str.17) #7
  %295 = load i16, ptr %5, align 2
  %296 = call i32 @snd_hdac_read_parm_uncached(ptr noundef %7, i16 noundef zeroext %295, i32 noundef 13) #7
  %297 = add i32 %296, 1
  %298 = icmp ult i32 %297, 2
  %299 = load ptr, ptr %1, align 4
  br i1 %298, label %300, label %301

300:                                              ; preds = %293
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %299, ptr noundef nonnull @.str.34) #7
  br label %308

301:                                              ; preds = %293
  %302 = and i32 %296, 127
  %303 = lshr i32 %296, 8
  %304 = and i32 %303, 127
  %305 = lshr i32 %296, 16
  %306 = and i32 %305, 127
  %307 = lshr i32 %296, 31
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %299, ptr noundef nonnull @.str.43, i32 noundef %302, i32 noundef %304, i32 noundef %306, i32 noundef %307) #7
  br label %308

308:                                              ; preds = %301, %300
  %309 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %309, ptr noundef nonnull @.str.18) #7
  %310 = icmp eq i32 %168, 4
  br i1 %310, label %317, label %311

311:                                              ; preds = %308
  %312 = load i32, ptr %159, align 8
  %313 = and i32 %312, 64
  %314 = icmp ne i32 %313, 0
  %315 = icmp eq i32 %168, 1
  %316 = and i1 %315, %314
  br i1 %316, label %317, label %319

317:                                              ; preds = %311, %308
  %318 = load i16, ptr %5, align 2
  call fastcc void @print_amp_vals(ptr noundef %1, ptr noundef %7, i16 noundef zeroext %318, i32 noundef 0, i32 noundef %272, i32 noundef 1)
  br label %321

319:                                              ; preds = %311
  %320 = load i16, ptr %5, align 2
  call fastcc void @print_amp_vals(ptr noundef %1, ptr noundef %7, i16 noundef zeroext %320, i32 noundef 0, i32 noundef %272, i32 noundef %290)
  br label %321

321:                                              ; preds = %319, %317, %288
  %322 = and i32 %272, 4
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %350, label %324

324:                                              ; preds = %321
  %325 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %325, ptr noundef nonnull @.str.19) #7
  %326 = load i16, ptr %5, align 2
  %327 = call i32 @snd_hdac_read_parm_uncached(ptr noundef %7, i16 noundef zeroext %326, i32 noundef 18) #7
  %328 = add i32 %327, 1
  %329 = icmp ult i32 %328, 2
  %330 = load ptr, ptr %1, align 4
  br i1 %329, label %331, label %332

331:                                              ; preds = %324
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %330, ptr noundef nonnull @.str.34) #7
  br label %339

332:                                              ; preds = %324
  %333 = and i32 %327, 127
  %334 = lshr i32 %327, 8
  %335 = and i32 %334, 127
  %336 = lshr i32 %327, 16
  %337 = and i32 %336, 127
  %338 = lshr i32 %327, 31
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %330, ptr noundef nonnull @.str.43, i32 noundef %333, i32 noundef %335, i32 noundef %337, i32 noundef %338) #7
  br label %339

339:                                              ; preds = %332, %331
  %340 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %340, ptr noundef nonnull @.str.20) #7
  %341 = icmp eq i32 %168, 4
  br i1 %341, label %342, label %348

342:                                              ; preds = %339
  %343 = load i32, ptr %159, align 8
  %344 = and i32 %343, 32
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %348, label %346

346:                                              ; preds = %342
  %347 = load i16, ptr %5, align 2
  call fastcc void @print_amp_vals(ptr noundef %1, ptr noundef %7, i16 noundef zeroext %347, i32 noundef 1, i32 noundef %272, i32 noundef %290)
  br label %351

348:                                              ; preds = %342, %339
  %349 = load i16, ptr %5, align 2
  call fastcc void @print_amp_vals(ptr noundef %1, ptr noundef %7, i16 noundef zeroext %349, i32 noundef 1, i32 noundef %272, i32 noundef 1)
  br label %350

350:                                              ; preds = %348, %321
  switch i32 %168, label %652 [
    i32 4, label %351
    i32 6, label %561
    i32 0, label %573
    i32 1, label %573
  ]

351:                                              ; preds = %350, %346
  %352 = load i16, ptr %5, align 2
  %353 = call i32 @snd_hdac_read_parm_uncached(ptr noundef %7, i16 noundef zeroext %352, i32 noundef 12) #7
  %354 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %354, ptr noundef nonnull @.str.84, i32 noundef %353) #7
  %355 = and i32 %353, 32
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %359, label %357

357:                                              ; preds = %351
  %358 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %358, ptr noundef nonnull @.str.85) #7
  br label %359

359:                                              ; preds = %357, %351
  %360 = and i32 %353, 16
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %364, label %362

362:                                              ; preds = %359
  %363 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %363, ptr noundef nonnull @.str.86) #7
  br label %364

364:                                              ; preds = %362, %359
  %365 = and i32 %353, 8
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %369, label %367

367:                                              ; preds = %364
  %368 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %368, ptr noundef nonnull @.str.87) #7
  br label %369

369:                                              ; preds = %367, %364
  %370 = and i32 %353, 65536
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %374, label %372

372:                                              ; preds = %369
  %373 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %373, ptr noundef nonnull @.str.88) #7
  br label %374

374:                                              ; preds = %372, %369
  %375 = and i32 %353, 4
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %379, label %377

377:                                              ; preds = %374
  %378 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %378, ptr noundef nonnull @.str.89) #7
  br label %379

379:                                              ; preds = %377, %374
  %380 = and i32 %353, 64
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %384, label %382

382:                                              ; preds = %379
  %383 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %383, ptr noundef nonnull @.str.90) #7
  br label %384

384:                                              ; preds = %382, %379
  %385 = and i32 %353, 128
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %399, label %387

387:                                              ; preds = %384
  %388 = load i32, ptr %50, align 8
  %389 = and i32 %388, -65536
  %390 = icmp eq i32 %389, 283901952
  br i1 %390, label %396, label %391

391:                                              ; preds = %387
  %392 = and i32 %353, 134217728
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %396, label %394

394:                                              ; preds = %391
  %395 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %395, ptr noundef nonnull @.str.91) #7
  br label %396

396:                                              ; preds = %394, %391, %387
  %397 = phi ptr [ @.str.14, %387 ], [ @.str.92, %394 ], [ @.str.92, %391 ]
  %398 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %398, ptr noundef nonnull %397) #7
  br label %399

399:                                              ; preds = %396, %384
  %400 = and i32 %353, 16777216
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %404, label %402

402:                                              ; preds = %399
  %403 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %403, ptr noundef nonnull @.str.93) #7
  br label %404

404:                                              ; preds = %402, %399
  %405 = and i32 %353, 2
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %409, label %407

407:                                              ; preds = %404
  %408 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %408, ptr noundef nonnull @.str.94) #7
  br label %409

409:                                              ; preds = %407, %404
  %410 = and i32 %353, 1
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %414, label %412

412:                                              ; preds = %409
  %413 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %413, ptr noundef nonnull @.str.95) #7
  br label %414

414:                                              ; preds = %412, %409
  %415 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %415, ptr noundef nonnull @.str.16) #7
  %416 = and i32 %353, 14080
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %446, label %418

418:                                              ; preds = %414
  %419 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %419, ptr noundef nonnull @.str.96) #7
  %420 = and i32 %353, 256
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %424, label %422

422:                                              ; preds = %418
  %423 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %423, ptr noundef nonnull @.str.97) #7
  br label %424

424:                                              ; preds = %422, %418
  %425 = and i32 %353, 512
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %429, label %427

427:                                              ; preds = %424
  %428 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %428, ptr noundef nonnull @.str.98) #7
  br label %429

429:                                              ; preds = %427, %424
  %430 = and i32 %353, 1024
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %434, label %432

432:                                              ; preds = %429
  %433 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %433, ptr noundef nonnull @.str.99) #7
  br label %434

434:                                              ; preds = %432, %429
  %435 = and i32 %353, 4096
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %439, label %437

437:                                              ; preds = %434
  %438 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %438, ptr noundef nonnull @.str.100) #7
  br label %439

439:                                              ; preds = %437, %434
  %440 = and i32 %353, 8192
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %444, label %442

442:                                              ; preds = %439
  %443 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %443, ptr noundef nonnull @.str.101) #7
  br label %444

444:                                              ; preds = %442, %439
  %445 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %445, ptr noundef nonnull @.str.16) #7
  br label %446

446:                                              ; preds = %444, %414
  br i1 %371, label %466, label %447

447:                                              ; preds = %446
  %448 = call i32 @snd_hdac_codec_read(ptr noundef %7, i16 noundef zeroext %352, i32 noundef 0, i32 noundef 3852, i32 noundef 0) #7
  %449 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %449, ptr noundef nonnull @.str.102, i32 noundef %448) #7
  %450 = and i32 %448, 1
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %454, label %452

452:                                              ; preds = %447
  %453 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %453, ptr noundef nonnull @.str.103) #7
  br label %454

454:                                              ; preds = %452, %447
  %455 = and i32 %448, 2
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %459, label %457

457:                                              ; preds = %454
  %458 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %458, ptr noundef nonnull @.str.88) #7
  br label %459

459:                                              ; preds = %457, %454
  %460 = and i32 %448, 4
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %464, label %462

462:                                              ; preds = %459
  %463 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %463, ptr noundef nonnull @.str.14) #7
  br label %464

464:                                              ; preds = %462, %459
  %465 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %465, ptr noundef nonnull @.str.16) #7
  br label %466

466:                                              ; preds = %464, %446
  %467 = call i32 @snd_hdac_codec_read(ptr noundef %7, i16 noundef zeroext %352, i32 noundef 0, i32 noundef 3868, i32 noundef 0) #7
  %468 = load ptr, ptr %1, align 4
  %469 = lshr i32 %467, 30
  %470 = getelementptr [4 x ptr], ptr @print_pin_caps.jack_conns, i32 0, i32 %469
  %471 = load ptr, ptr %470, align 4
  %472 = lshr i32 %467, 20
  %473 = and i32 %472, 15
  %474 = getelementptr [16 x ptr], ptr @get_jack_type.jack_types, i32 0, i32 %473
  %475 = load ptr, ptr %474, align 4
  %476 = lshr i32 %467, 28
  %477 = and i32 %476, 3
  %478 = getelementptr [4 x ptr], ptr @get_jack_connectivity.jack_locations, i32 0, i32 %477
  %479 = load ptr, ptr %478, align 4
  %480 = lshr i32 %467, 24
  %481 = and i32 %480, 15
  %482 = icmp ult i32 %481, 7
  br i1 %482, label %485, label %483

483:                                              ; preds = %466
  %484 = and i32 %480, 63
  switch i32 %484, label %499 [
    i32 7, label %493
    i32 8, label %487
    i32 23, label %488
    i32 24, label %489
    i32 25, label %490
    i32 55, label %491
    i32 56, label %492
  ]

485:                                              ; preds = %466
  %486 = getelementptr [7 x ptr], ptr @get_jack_location.bases, i32 0, i32 %481
  br label %496

487:                                              ; preds = %483
  br label %493

488:                                              ; preds = %483
  br label %493

489:                                              ; preds = %483
  br label %493

490:                                              ; preds = %483
  br label %493

491:                                              ; preds = %483
  br label %493

492:                                              ; preds = %483
  br label %493

493:                                              ; preds = %492, %491, %490, %489, %488, %487, %483
  %494 = phi i32 [ 0, %483 ], [ 1, %487 ], [ 2, %488 ], [ 3, %489 ], [ 4, %490 ], [ 5, %491 ], [ 6, %492 ]
  %495 = getelementptr [7 x ptr], ptr @get_jack_location.specials, i32 0, i32 %494
  br label %496

496:                                              ; preds = %493, %485
  %497 = phi ptr [ %495, %493 ], [ %486, %485 ]
  %498 = load ptr, ptr %497, align 4
  br label %499

499:                                              ; preds = %496, %483
  %500 = phi ptr [ @.str.58, %483 ], [ %498, %496 ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %468, ptr noundef nonnull @.str.104, i32 noundef %467, ptr noundef %471, ptr noundef %475, ptr noundef %479, ptr noundef %500) #7
  %501 = load ptr, ptr %1, align 4
  %502 = lshr i32 %467, 16
  %503 = and i32 %502, 15
  %504 = add nsw i32 %503, -12
  %505 = icmp ult i32 %504, 3
  br i1 %505, label %509, label %506

506:                                              ; preds = %499
  %507 = getelementptr [16 x ptr], ptr @get_jack_connection.names, i32 0, i32 %503
  %508 = load ptr, ptr %507, align 4
  br label %509

509:                                              ; preds = %506, %499
  %510 = phi ptr [ %508, %506 ], [ @.str.58, %499 ]
  %511 = lshr i32 %467, 12
  %512 = and i32 %511, 15
  %513 = add nsw i32 %512, -10
  %514 = icmp ult i32 %513, 4
  br i1 %514, label %518, label %515

515:                                              ; preds = %509
  %516 = getelementptr [16 x ptr], ptr @get_jack_color.names, i32 0, i32 %512
  %517 = load ptr, ptr %516, align 4
  br label %518

518:                                              ; preds = %515, %509
  %519 = phi ptr [ %517, %515 ], [ @.str.58, %509 ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %501, ptr noundef nonnull @.str.105, ptr noundef %510, ptr noundef %519) #7
  %520 = load ptr, ptr %1, align 4
  %521 = lshr i32 %467, 4
  %522 = and i32 %521, 15
  %523 = and i32 %467, 15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %520, ptr noundef nonnull @.str.106, i32 noundef %522, i32 noundef %523) #7
  %524 = and i32 %467, 256
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %528, label %526

526:                                              ; preds = %518
  %527 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %527, ptr noundef nonnull @.str.107) #7
  br label %528

528:                                              ; preds = %526, %518
  %529 = load i16, ptr %5, align 2
  %530 = call i32 @snd_hdac_codec_read(ptr noundef %7, i16 noundef zeroext %529, i32 noundef 0, i32 noundef 3847, i32 noundef 0) #7
  %531 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %531, ptr noundef nonnull @.str.162, i32 noundef %530) #7
  %532 = and i32 %530, 32
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %536, label %534

534:                                              ; preds = %528
  %535 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %535, ptr noundef nonnull @.str.85) #7
  br label %536

536:                                              ; preds = %534, %528
  %537 = and i32 %530, 64
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %541, label %539

539:                                              ; preds = %536
  %540 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %540, ptr noundef nonnull @.str.86) #7
  br label %541

541:                                              ; preds = %539, %536
  %542 = and i32 %530, 128
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %546, label %544

544:                                              ; preds = %541
  %545 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %545, ptr noundef nonnull @.str.87) #7
  br label %546

546:                                              ; preds = %544, %541
  br i1 %417, label %559, label %547

547:                                              ; preds = %546
  %548 = and i32 %530, 7
  %549 = icmp ult i32 %548, 6
  br i1 %549, label %550, label %559

550:                                              ; preds = %547
  %551 = trunc i32 %548 to i8
  %552 = lshr i8 55, %551
  %553 = and i8 %552, 1
  %554 = icmp eq i8 %553, 0
  br i1 %554, label %559, label %555

555:                                              ; preds = %550
  %556 = getelementptr inbounds [6 x ptr], ptr @switch.table.print_codec_info, i32 0, i32 %548
  %557 = load ptr, ptr %556, align 4
  %558 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %558, ptr noundef nonnull %557) #7
  br label %559

559:                                              ; preds = %555, %550, %547, %546
  %560 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %560, ptr noundef nonnull @.str.16) #7
  br label %652

561:                                              ; preds = %350
  %562 = load i16, ptr %5, align 2
  %563 = call i32 @snd_hdac_read_parm_uncached(ptr noundef %7, i16 noundef zeroext %562, i32 noundef 19) #7
  %564 = load ptr, ptr %1, align 4
  %565 = lshr i32 %563, 7
  %566 = and i32 %565, 1
  %567 = and i32 %563, 127
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %564, ptr noundef nonnull @.str.168, i32 noundef %566, i32 noundef %567) #7
  %568 = call i32 @snd_hdac_codec_read(ptr noundef %7, i16 noundef zeroext %562, i32 noundef 0, i32 noundef 3855, i32 noundef 0) #7
  %569 = load ptr, ptr %1, align 4
  %570 = lshr i32 %568, 7
  %571 = and i32 %570, 1
  %572 = and i32 %568, 127
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %569, ptr noundef nonnull @.str.169, i32 noundef %571, i32 noundef %572) #7
  br label %652

573:                                              ; preds = %350, %350
  %574 = load i16, ptr %5, align 2
  %575 = call i32 @snd_hdac_codec_read(ptr noundef %7, i16 noundef zeroext %574, i32 noundef 0, i32 noundef 3846, i32 noundef 0) #7
  %576 = load ptr, ptr %1, align 4
  %577 = lshr i32 %575, 4
  %578 = and i32 %577, 15
  %579 = and i32 %575, 15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %576, ptr noundef nonnull @.str.170, i32 noundef %578, i32 noundef %579) #7
  %580 = icmp eq i32 %168, 1
  %581 = icmp eq i32 %579, 0
  %582 = and i1 %580, %581
  br i1 %582, label %583, label %587

583:                                              ; preds = %573
  %584 = call i32 @snd_hdac_codec_read(ptr noundef %7, i16 noundef zeroext %574, i32 noundef 0, i32 noundef 3844, i32 noundef 0) #7
  %585 = load ptr, ptr %1, align 4
  %586 = and i32 %584, 15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %585, ptr noundef nonnull @.str.171, i32 noundef %586) #7
  br label %587

587:                                              ; preds = %583, %573
  %588 = and i32 %272, 512
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %646, label %590

590:                                              ; preds = %587
  %591 = load i16, ptr %5, align 2
  %592 = call i32 @snd_hdac_codec_read(ptr noundef %7, i16 noundef zeroext %591, i32 noundef 0, i32 noundef 3853, i32 noundef 0) #7
  %593 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %593, ptr noundef nonnull @.str.172) #7
  %594 = and i32 %592, 1
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %598, label %596

596:                                              ; preds = %590
  %597 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %597, ptr noundef nonnull @.str.173) #7
  br label %598

598:                                              ; preds = %596, %590
  %599 = and i32 %592, 2
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %603, label %601

601:                                              ; preds = %598
  %602 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %602, ptr noundef nonnull @.str.174) #7
  br label %603

603:                                              ; preds = %601, %598
  %604 = and i32 %592, 4
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %608, label %606

606:                                              ; preds = %603
  %607 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %607, ptr noundef nonnull @.str.175) #7
  br label %608

608:                                              ; preds = %606, %603
  %609 = and i32 %592, 8
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %613, label %611

611:                                              ; preds = %608
  %612 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %612, ptr noundef nonnull @.str.176) #7
  br label %613

613:                                              ; preds = %611, %608
  %614 = and i32 %592, 16
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %618, label %616

616:                                              ; preds = %613
  %617 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %617, ptr noundef nonnull @.str.177) #7
  br label %618

618:                                              ; preds = %616, %613
  %619 = and i32 %592, 32
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %623, label %621

621:                                              ; preds = %618
  %622 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %622, ptr noundef nonnull @.str.178) #7
  br label %623

623:                                              ; preds = %621, %618
  %624 = and i32 %592, 64
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %628, label %626

626:                                              ; preds = %623
  %627 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %627, ptr noundef nonnull @.str.179) #7
  br label %628

628:                                              ; preds = %626, %623
  %629 = and i32 %592, 128
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %633, label %631

631:                                              ; preds = %628
  %632 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %632, ptr noundef nonnull @.str.180) #7
  br label %633

633:                                              ; preds = %631, %628
  %634 = and i32 %592, 8388608
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %638, label %636

636:                                              ; preds = %633
  %637 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %637, ptr noundef nonnull @.str.181) #7
  br label %638

638:                                              ; preds = %636, %633
  %639 = lshr i32 %592, 16
  %640 = lshr i32 %592, 8
  %641 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %641, ptr noundef nonnull @.str.16) #7
  %642 = load ptr, ptr %1, align 4
  %643 = and i32 %640, 127
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %642, ptr noundef nonnull @.str.182, i32 noundef %643) #7
  %644 = load ptr, ptr %1, align 4
  %645 = and i32 %639, 15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %644, ptr noundef nonnull @.str.183, i32 noundef %645) #7
  br label %646

646:                                              ; preds = %638, %587
  %647 = and i32 %272, 16
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %652, label %649

649:                                              ; preds = %646
  %650 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %650, ptr noundef nonnull @.str.21) #7
  %651 = load i16, ptr %5, align 2
  call fastcc void @print_pcm_caps(ptr noundef %1, ptr noundef %7, i16 noundef zeroext %651)
  br label %652

652:                                              ; preds = %649, %646, %561, %559, %350
  %653 = and i32 %272, 128
  %654 = icmp eq i32 %653, 0
  br i1 %654, label %662, label %655

655:                                              ; preds = %652
  %656 = load i16, ptr %5, align 2
  %657 = call i32 @snd_hdac_codec_read(ptr noundef %7, i16 noundef zeroext %656, i32 noundef 0, i32 noundef 3848, i32 noundef 0) #7
  %658 = load ptr, ptr %1, align 4
  %659 = and i32 %657, 63
  %660 = lshr i32 %657, 7
  %661 = and i32 %660, 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %658, ptr noundef nonnull @.str.184, i32 noundef %659, i32 noundef %661) #7
  br label %662

662:                                              ; preds = %655, %652
  %663 = and i32 %272, 1024
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %667, label %665

665:                                              ; preds = %662
  %666 = load i16, ptr %5, align 2
  call fastcc void @print_power_state(ptr noundef %1, ptr noundef %7, i16 noundef zeroext %666)
  br label %667

667:                                              ; preds = %665, %662
  %668 = and i32 %272, 983040
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %673, label %670

670:                                              ; preds = %667
  %671 = load ptr, ptr %1, align 4
  %672 = lshr exact i32 %668, 16
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %671, ptr noundef nonnull @.str.22, i32 noundef %672) #7
  br label %673

673:                                              ; preds = %670, %667
  %674 = icmp eq i32 %168, 4
  br i1 %674, label %675, label %731

675:                                              ; preds = %673
  %676 = load i32, ptr %159, align 8
  %677 = and i32 %676, 32768
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %731, label %679

679:                                              ; preds = %675
  %680 = load i16, ptr %5, align 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %4, i8 0, i32 64, i1 false) #7, !annotation !8
  %681 = call i32 @snd_hda_get_devices(ptr noundef %7, i16 noundef zeroext %680, ptr noundef nonnull %4, i32 noundef 64) #7
  %682 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %682, ptr noundef nonnull @.str.185, i32 noundef %681) #7
  %683 = icmp slt i32 %681, 1
  br i1 %683, label %730, label %684

684:                                              ; preds = %679
  %685 = call i32 @snd_hdac_codec_read(ptr noundef %7, i16 noundef zeroext %680, i32 noundef 0, i32 noundef 3893, i32 noundef 0) #7
  br label %686

686:                                              ; preds = %726, %684
  %687 = phi i32 [ %728, %726 ], [ 0, %684 ]
  %688 = icmp eq i32 %687, %685
  %689 = load ptr, ptr %1, align 4
  %690 = select i1 %688, ptr @.str.186, ptr @.str.187
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %689, ptr noundef nonnull %690) #7
  %691 = load ptr, ptr %1, align 4
  %692 = getelementptr [64 x i8], ptr %4, i32 0, i32 %687
  %693 = load i8, ptr %692, align 1
  %694 = zext i8 %693 to i32
  %695 = and i32 %694, 1
  %696 = lshr i32 %694, 1
  %697 = and i32 %696, 1
  %698 = lshr i32 %694, 2
  %699 = and i32 %698, 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %691, ptr noundef nonnull @.str.188, i32 noundef %687, i32 noundef %695, i32 noundef %697, i32 noundef %699) #7
  %700 = call i32 @snd_hdac_get_connections(ptr noundef %7, i16 noundef zeroext %680, ptr noundef null, i32 noundef 0) #7
  %701 = icmp slt i32 %700, 1
  br i1 %701, label %726, label %702

702:                                              ; preds = %686
  %703 = shl nuw i32 %700, 1
  %704 = call noalias align 64 ptr @__kmalloc(i32 noundef %703, i32 noundef 3264) #8
  %705 = icmp eq ptr %704, null
  br i1 %705, label %726, label %706

706:                                              ; preds = %702
  %707 = call i32 @snd_hda_get_dev_select(ptr noundef %7, i16 noundef zeroext %680) #7
  %708 = call i32 @snd_hda_set_dev_select(ptr noundef %7, i16 noundef zeroext %680, i32 noundef %687) #7
  %709 = call i32 @snd_hdac_codec_read(ptr noundef %7, i16 noundef zeroext %680, i32 noundef 0, i32 noundef 3841, i32 noundef 0) #7
  %710 = call i32 @snd_hdac_get_connections(ptr noundef %7, i16 noundef zeroext %680, ptr noundef nonnull %704, i32 noundef %700) #7
  %711 = icmp sgt i32 %710, -1
  br i1 %711, label %712, label %724

712:                                              ; preds = %721, %706
  %713 = phi i32 [ %722, %721 ], [ 0, %706 ]
  %714 = load ptr, ptr %1, align 4
  %715 = getelementptr i16, ptr %704, i32 %713
  %716 = load i16, ptr %715, align 2
  %717 = zext i16 %716 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %714, ptr noundef nonnull @.str.78, i32 noundef %717) #7
  %718 = icmp eq i32 %713, %709
  br i1 %718, label %719, label %721

719:                                              ; preds = %712
  %720 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %720, ptr noundef nonnull @.str.190) #7
  br label %721

721:                                              ; preds = %719, %712
  %722 = add nuw nsw i32 %713, 1
  %723 = icmp eq i32 %722, %700
  br i1 %723, label %724, label %712

724:                                              ; preds = %721, %706
  call void @kfree(ptr noundef nonnull %704) #7
  %725 = call i32 @snd_hda_set_dev_select(ptr noundef %7, i16 noundef zeroext %680, i32 noundef %707) #7
  br label %726

726:                                              ; preds = %724, %702, %686
  %727 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %727, ptr noundef nonnull @.str.189) #7
  %728 = add nuw nsw i32 %687, 1
  %729 = icmp eq i32 %728, %681
  br i1 %729, label %730, label %686

730:                                              ; preds = %726, %679
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  br label %731

731:                                              ; preds = %730, %675, %673
  br i1 %274, label %787, label %732

732:                                              ; preds = %731
  %733 = load i16, ptr %5, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store ptr null, ptr %3, align 4, !annotation !8
  %734 = icmp sgt i32 %290, 1
  br i1 %734, label %735, label %741

735:                                              ; preds = %732
  switch i32 %168, label %736 [
    i32 6, label %738
    i32 5, label %738
    i32 2, label %738
  ]

736:                                              ; preds = %735
  %737 = call i32 @snd_hdac_codec_read(ptr noundef %7, i16 noundef zeroext %733, i32 noundef 0, i32 noundef 3841, i32 noundef 0) #7
  br label %738

738:                                              ; preds = %736, %735, %735, %735
  %739 = phi i32 [ -1, %735 ], [ -1, %735 ], [ -1, %735 ], [ %737, %736 ]
  %740 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %740, ptr noundef nonnull @.str.191, i32 noundef %290) #7
  br label %744

741:                                              ; preds = %732
  %742 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %742, ptr noundef nonnull @.str.191, i32 noundef %290) #7
  %743 = icmp eq i32 %290, 1
  br i1 %743, label %744, label %761

744:                                              ; preds = %741, %738
  %745 = phi i32 [ %739, %738 ], [ -1, %741 ]
  %746 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %746, ptr noundef nonnull @.str.192) #7
  br label %747

747:                                              ; preds = %756, %744
  %748 = phi i32 [ %757, %756 ], [ 0, %744 ]
  %749 = load ptr, ptr %1, align 4
  %750 = getelementptr i16, ptr %289, i32 %748
  %751 = load i16, ptr %750, align 2
  %752 = zext i16 %751 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %749, ptr noundef nonnull @.str.78, i32 noundef %752) #7
  %753 = icmp eq i32 %748, %745
  br i1 %753, label %754, label %756

754:                                              ; preds = %747
  %755 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %755, ptr noundef nonnull @.str.190) #7
  br label %756

756:                                              ; preds = %754, %747
  %757 = add nuw nsw i32 %748, 1
  %758 = icmp eq i32 %757, %290
  br i1 %758, label %759, label %747

759:                                              ; preds = %756
  %760 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %760, ptr noundef nonnull @.str.16) #7
  br label %761

761:                                              ; preds = %759, %741
  %762 = call i32 @snd_hda_get_conn_list(ptr noundef %7, i16 noundef zeroext %733, ptr noundef nonnull %3) #7
  %763 = icmp sgt i32 %762, -1
  br i1 %763, label %764, label %786

764:                                              ; preds = %761
  %765 = icmp eq i32 %762, %290
  br i1 %765, label %766, label %770

766:                                              ; preds = %764
  %767 = load ptr, ptr %3, align 4
  %768 = call i32 @bcmp(ptr %767, ptr %289, i32 %290) #7
  %769 = icmp eq i32 %768, 0
  br i1 %769, label %786, label %770

770:                                              ; preds = %766, %764
  %771 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %771, ptr noundef nonnull @.str.193, i32 noundef %762) #7
  %772 = icmp eq i32 %762, 0
  br i1 %772, label %786, label %773

773:                                              ; preds = %770
  %774 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %774, ptr noundef nonnull @.str.192) #7
  br label %775

775:                                              ; preds = %775, %773
  %776 = phi i32 [ %782, %775 ], [ 0, %773 ]
  %777 = load ptr, ptr %1, align 4
  %778 = load ptr, ptr %3, align 4
  %779 = getelementptr i16, ptr %778, i32 %776
  %780 = load i16, ptr %779, align 2
  %781 = zext i16 %780 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %777, ptr noundef nonnull @.str.78, i32 noundef %781) #7
  %782 = add nuw nsw i32 %776, 1
  %783 = icmp eq i32 %782, %762
  br i1 %783, label %784, label %775

784:                                              ; preds = %775
  %785 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %785, ptr noundef nonnull @.str.16) #7
  br label %786

786:                                              ; preds = %784, %770, %766, %761
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %787

787:                                              ; preds = %786, %731
  %788 = and i32 %272, 64
  %789 = icmp eq i32 %788, 0
  br i1 %789, label %814, label %790

790:                                              ; preds = %787
  %791 = load i16, ptr %5, align 2
  %792 = call i32 @snd_hdac_read_parm_uncached(ptr noundef %7, i16 noundef zeroext %791, i32 noundef 16) #7
  %793 = lshr i32 %792, 8
  %794 = and i32 %793, 255
  %795 = load ptr, ptr %1, align 4
  %796 = and i32 %792, 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %795, ptr noundef nonnull @.str.194, i32 noundef %796, i32 noundef %794) #7
  %797 = load i32, ptr @dump_coef, align 4
  switch i32 %797, label %798 [
    i32 0, label %814
    i32 1, label %802
  ]

798:                                              ; preds = %790
  %799 = load i32, ptr %159, align 8
  %800 = and i32 %799, 65536
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %814, label %802

802:                                              ; preds = %798, %790
  %803 = call i32 @snd_hdac_codec_read(ptr noundef %7, i16 noundef zeroext %791, i32 noundef 0, i32 noundef 3328, i32 noundef 0) #7
  %804 = icmp eq i32 %794, 0
  br i1 %804, label %812, label %805

805:                                              ; preds = %805, %802
  %806 = phi i32 [ %810, %805 ], [ 0, %802 ]
  %807 = call i32 @snd_hdac_codec_write(ptr noundef %7, i16 noundef zeroext %791, i32 noundef 0, i32 noundef 1280, i32 noundef %806) #7
  %808 = call i32 @snd_hdac_codec_read(ptr noundef %7, i16 noundef zeroext %791, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #7
  %809 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %809, ptr noundef nonnull @.str.195, i32 noundef %806, i32 noundef %808) #7
  %810 = add nuw nsw i32 %806, 1
  %811 = icmp eq i32 %810, %794
  br i1 %811, label %812, label %805

812:                                              ; preds = %805, %802
  %813 = call i32 @snd_hdac_codec_write(ptr noundef %7, i16 noundef zeroext %791, i32 noundef 0, i32 noundef 1280, i32 noundef %803) #7
  br label %814

814:                                              ; preds = %812, %798, %790, %787
  %815 = load ptr, ptr %149, align 4
  %816 = icmp eq ptr %815, null
  br i1 %816, label %819, label %817

817:                                              ; preds = %814
  %818 = load i16, ptr %5, align 2
  call void %815(ptr noundef %1, ptr noundef %7, i16 noundef zeroext %818) #7
  br label %819

819:                                              ; preds = %817, %814
  call void @kfree(ptr noundef %289) #7
  %820 = add nuw nsw i32 %163, 1
  %821 = load i16, ptr %5, align 2
  %822 = add i16 %821, 1
  store i16 %822, ptr %5, align 2
  %823 = icmp eq i32 %820, %100
  br i1 %823, label %824, label %161

824:                                              ; preds = %819, %153, %105
  %825 = call i32 @snd_hdac_power_down(ptr noundef %7) #7
  br label %826

826:                                              ; preds = %824, %279, %64
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_power_up(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @print_pcm_caps(ptr noundef readonly %0, ptr noundef %1, i16 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [16 x i8], align 1
  %5 = tail call i32 @snd_hdac_read_parm_uncached(ptr noundef %1, i16 noundef zeroext %2, i32 noundef 10) #7
  %6 = tail call i32 @snd_hdac_read_parm_uncached(ptr noundef %1, i16 noundef zeroext %2, i32 noundef 11) #7
  %7 = icmp eq i32 %5, -1
  %8 = icmp eq i32 %6, -1
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef nonnull @.str.34) #7
  br label %98

12:                                               ; preds = %3
  %13 = and i32 %5, 4095
  %14 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %14, ptr noundef nonnull @.str.35, i32 noundef %13) #7
  %15 = and i32 %5, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %18, ptr noundef nonnull @.str.36, i32 noundef 8000) #7
  br label %19

19:                                               ; preds = %17, %12
  %20 = and i32 %5, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %23, ptr noundef nonnull @.str.36, i32 noundef 11025) #7
  br label %24

24:                                               ; preds = %22, %19
  %25 = and i32 %5, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %28, ptr noundef nonnull @.str.36, i32 noundef 16000) #7
  br label %29

29:                                               ; preds = %27, %24
  %30 = and i32 %5, 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %33, ptr noundef nonnull @.str.36, i32 noundef 22050) #7
  br label %34

34:                                               ; preds = %32, %29
  %35 = and i32 %5, 16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %38, ptr noundef nonnull @.str.36, i32 noundef 32000) #7
  br label %39

39:                                               ; preds = %37, %34
  %40 = and i32 %5, 32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %43, ptr noundef nonnull @.str.36, i32 noundef 44100) #7
  br label %44

44:                                               ; preds = %42, %39
  %45 = and i32 %5, 64
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %48, ptr noundef nonnull @.str.36, i32 noundef 48000) #7
  br label %49

49:                                               ; preds = %47, %44
  %50 = and i32 %5, 128
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %53, ptr noundef nonnull @.str.36, i32 noundef 88200) #7
  br label %54

54:                                               ; preds = %52, %49
  %55 = and i32 %5, 256
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %58, ptr noundef nonnull @.str.36, i32 noundef 96000) #7
  br label %59

59:                                               ; preds = %57, %54
  %60 = and i32 %5, 512
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %63, ptr noundef nonnull @.str.36, i32 noundef 176400) #7
  br label %64

64:                                               ; preds = %62, %59
  %65 = and i32 %5, 1024
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %68, ptr noundef nonnull @.str.36, i32 noundef 192000) #7
  br label %69

69:                                               ; preds = %67, %64
  %70 = and i32 %5, 2048
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %73, ptr noundef nonnull @.str.36, i32 noundef 384000) #7
  br label %74

74:                                               ; preds = %72, %69
  %75 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %75, ptr noundef nonnull @.str.16) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, i8 0, i32 16, i1 false) #7, !annotation !8
  %76 = load ptr, ptr %0, align 4
  %77 = lshr i32 %5, 16
  %78 = and i32 %77, 255
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %76, ptr noundef nonnull @.str.37, i32 noundef %78) #7
  call void @snd_print_pcm_bits(i32 noundef %5, ptr noundef nonnull %4, i32 noundef 16) #7
  %79 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %79, ptr noundef nonnull @.str.38, ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  %80 = load ptr, ptr %0, align 4
  %81 = and i32 %6, 15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %80, ptr noundef nonnull @.str.39, i32 noundef %81) #7
  %82 = and i32 %6, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %74
  %85 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %85, ptr noundef nonnull @.str.40) #7
  br label %86

86:                                               ; preds = %84, %74
  %87 = and i32 %6, 2
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %90, ptr noundef nonnull @.str.41) #7
  br label %91

91:                                               ; preds = %89, %86
  %92 = and i32 %6, 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %95, ptr noundef nonnull @.str.42) #7
  br label %96

96:                                               ; preds = %94, %91
  %97 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %97, ptr noundef nonnull @.str.16) #7
  br label %98

98:                                               ; preds = %96, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @print_power_state(ptr nocapture noundef readonly %0, ptr noundef %1, i16 noundef zeroext %2) unnamed_addr #0 {
  %4 = tail call i32 @snd_hdac_read_parm_uncached(ptr noundef %1, i16 noundef zeroext %2, i32 noundef 15) #7
  %5 = tail call i32 @snd_hdac_codec_read(ptr noundef %1, i16 noundef zeroext %2, i32 noundef 0, i32 noundef 3845, i32 noundef 0) #7
  %6 = icmp eq i32 %4, -1
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %8, ptr noundef nonnull @.str.52) #7
  br label %9

9:                                                ; preds = %18, %7
  %10 = phi i32 [ 0, %7 ], [ %19, %18 ]
  %11 = shl nuw i32 1, %10
  %12 = and i32 %11, %4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr [32 x ptr], ptr @print_power_state.names, i32 0, i32 %10
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %15, ptr noundef nonnull @.str.53, ptr noundef %17) #7
  br label %18

18:                                               ; preds = %14, %9
  %19 = add nuw nsw i32 %10, 1
  %20 = icmp eq i32 %19, 32
  br i1 %20, label %21, label %9

21:                                               ; preds = %18
  %22 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %22, ptr noundef nonnull @.str.16) #7
  br label %23

23:                                               ; preds = %21, %3
  %24 = load ptr, ptr %0, align 4
  %25 = and i32 %5, 15
  %26 = icmp ult i32 %25, 5
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = getelementptr [5 x ptr], ptr @get_pwr_state.buf, i32 0, i32 %25
  %29 = load ptr, ptr %28, align 4
  br label %30

30:                                               ; preds = %27, %23
  %31 = phi ptr [ %29, %27 ], [ @.str.58, %23 ]
  %32 = lshr i32 %5, 4
  %33 = and i32 %32, 15
  %34 = icmp ult i32 %33, 5
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = getelementptr [5 x ptr], ptr @get_pwr_state.buf, i32 0, i32 %33
  %37 = load ptr, ptr %36, align 4
  br label %38

38:                                               ; preds = %35, %30
  %39 = phi ptr [ %37, %35 ], [ @.str.58, %30 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %24, ptr noundef nonnull @.str.54, ptr noundef %31, ptr noundef %39) #7
  %40 = and i32 %5, 256
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %43, ptr noundef nonnull @.str.55) #7
  br label %44

44:                                               ; preds = %42, %38
  %45 = and i32 %5, 512
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %48, ptr noundef nonnull @.str.56) #7
  br label %49

49:                                               ; preds = %47, %44
  %50 = and i32 %5, 1024
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %53, ptr noundef nonnull @.str.57) #7
  br label %54

54:                                               ; preds = %52, %49
  %55 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %55, ptr noundef nonnull @.str.16) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_get_sub_nodes(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_power_down(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_read_parm_uncached(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @print_nid_array(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.snd_array, ptr %2, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %2, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %46, label %8

8:                                                ; preds = %42, %3
  %9 = phi i32 [ %43, %42 ], [ 0, %3 ]
  %10 = getelementptr %struct.hda_nid_item, ptr %5, i32 %9, i32 2
  %11 = load i16, ptr %10, align 4
  %12 = icmp eq i16 %11, %1
  br i1 %12, label %13, label %42

13:                                               ; preds = %8
  %14 = getelementptr %struct.hda_nid_item, ptr %5, i32 %9
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.snd_kcontrol, ptr %15, i32 0, i32 1, i32 4
  %18 = getelementptr inbounds %struct.snd_kcontrol, ptr %15, i32 0, i32 1, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr %struct.hda_nid_item, ptr %5, i32 %9, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, %19
  %23 = getelementptr inbounds %struct.snd_kcontrol, ptr %15, i32 0, i32 1, i32 2
  %24 = load i32, ptr %23, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %16, ptr noundef nonnull @.str.71, ptr noundef %17, i32 noundef %22, i32 noundef %24) #7
  %25 = getelementptr %struct.hda_nid_item, ptr %5, i32 %9, i32 3
  %26 = load i16, ptr %25, align 2
  %27 = and i16 %26, 1
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %13
  %30 = load ptr, ptr %0, align 4
  %31 = getelementptr inbounds %struct.snd_kcontrol, ptr %15, i32 0, i32 7
  %32 = load i32, ptr %31, align 4
  %33 = lshr i32 %32, 16
  %34 = and i32 %33, 3
  %35 = and i32 %32, 262144
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, ptr @.str.74, ptr @.str.73
  %38 = lshr i32 %32, 19
  %39 = and i32 %38, 15
  %40 = lshr i32 %32, 23
  %41 = and i32 %40, 63
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %30, ptr noundef nonnull @.str.72, i32 noundef %34, ptr noundef nonnull %37, i32 noundef %39, i32 noundef %41) #7
  br label %42

42:                                               ; preds = %29, %13, %8
  %43 = add nuw i32 %9, 1
  %44 = load i32, ptr %2, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %8, label %46

46:                                               ; preds = %42, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_get_connections(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @print_amp_vals(ptr nocapture noundef readonly %0, ptr noundef %1, i16 noundef zeroext %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #7
  store i16 0, ptr %8, align 2, !annotation !8
  %9 = and i32 %4, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %6
  %12 = icmp eq i32 %5, 1
  %13 = icmp eq i32 %3, 0
  %14 = and i1 %13, %12
  %15 = and i32 %4, 15728640
  %16 = icmp eq i32 %15, 2097152
  %17 = and i1 %16, %14
  br i1 %17, label %18, label %31

18:                                               ; preds = %11
  %19 = call i32 @snd_hdac_get_connections(ptr noundef %1, i16 noundef zeroext %2, ptr noundef nonnull %8, i32 noundef 1) #7
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %18
  %22 = load i16, ptr %8, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4, !annotation !8
  %23 = call i32 @_snd_hdac_read_parm(ptr noundef %1, i16 noundef zeroext %22, i32 noundef 9, ptr noundef nonnull %7) #7
  %24 = load i32, ptr %7, align 4
  %25 = icmp slt i32 %23, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  %26 = and i32 %24, 1
  %27 = icmp ne i32 %26, 0
  %28 = select i1 %25, i1 true, i1 %27
  br label %29

29:                                               ; preds = %21, %18
  %30 = phi i1 [ false, %18 ], [ %28, %21 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #7
  br label %36

31:                                               ; preds = %11, %6
  %32 = xor i1 %10, true
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #7
  %33 = icmp eq i32 %3, 1
  %34 = select i1 %33, i32 32768, i32 0
  %35 = icmp sgt i32 %5, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %31, %29
  %37 = phi i32 [ 0, %29 ], [ %34, %31 ]
  %38 = phi i1 [ %30, %29 ], [ %32, %31 ]
  br label %39

39:                                               ; preds = %49, %36
  %40 = phi i32 [ %51, %49 ], [ 0, %36 ]
  %41 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %41, ptr noundef nonnull @.str.76) #7
  %42 = or i32 %40, %37
  %43 = or i32 %42, 8192
  %44 = call i32 @snd_hdac_codec_read(ptr noundef %1, i16 noundef zeroext %2, i32 noundef 0, i32 noundef 2816, i32 noundef %43) #7
  %45 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %45, ptr noundef nonnull @.str.77, i32 noundef %44) #7
  br i1 %38, label %46, label %49

46:                                               ; preds = %39
  %47 = call i32 @snd_hdac_codec_read(ptr noundef %1, i16 noundef zeroext %2, i32 noundef 0, i32 noundef 2816, i32 noundef %42) #7
  %48 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %48, ptr noundef nonnull @.str.78, i32 noundef %47) #7
  br label %49

49:                                               ; preds = %46, %39
  %50 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %50, ptr noundef nonnull @.str.79) #7
  %51 = add nuw nsw i32 %40, 1
  %52 = icmp eq i32 %51, %5
  br i1 %52, label %53, label %39

53:                                               ; preds = %49, %31
  %54 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %54, ptr noundef nonnull @.str.16) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_print_pcm_bits(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_read(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_snd_hdac_read_parm(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_get_devices(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_get_dev_select(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_set_dev_select(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_get_conn_list(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_write(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

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
