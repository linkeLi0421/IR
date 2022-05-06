; ModuleID = '/llk/IR/sound/pci/hda/hda_controller.c_pt.bc'
source_filename = "../sound/pci/hda/hda_controller.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_azx_get_pos_lpib:\09\09\09\09\09"
module asm "\09.asciz \09\22azx_get_pos_lpib\22\09\09\09\09\09"
module asm "__kstrtabns_azx_get_pos_lpib:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_azx_get_pos_posbuf:\09\09\09\09\09"
module asm "\09.asciz \09\22azx_get_pos_posbuf\22\09\09\09\09\09"
module asm "__kstrtabns_azx_get_pos_posbuf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_azx_get_position:\09\09\09\09\09"
module asm "\09.asciz \09\22azx_get_position\22\09\09\09\09\09"
module asm "__kstrtabns_azx_get_position:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_azx_init_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22azx_init_chip\22\09\09\09\09\09"
module asm "__kstrtabns_azx_init_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_azx_stop_all_streams:\09\09\09\09\09"
module asm "\09.asciz \09\22azx_stop_all_streams\22\09\09\09\09\09"
module asm "__kstrtabns_azx_stop_all_streams:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_azx_stop_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22azx_stop_chip\22\09\09\09\09\09"
module asm "__kstrtabns_azx_stop_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_azx_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22azx_interrupt\22\09\09\09\09\09"
module asm "__kstrtabns_azx_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_azx_bus_init:\09\09\09\09\09"
module asm "\09.asciz \09\22azx_bus_init\22\09\09\09\09\09"
module asm "__kstrtabns_azx_bus_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_azx_probe_codecs:\09\09\09\09\09"
module asm "\09.asciz \09\22azx_probe_codecs\22\09\09\09\09\09"
module asm "__kstrtabns_azx_probe_codecs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_azx_codec_configure:\09\09\09\09\09"
module asm "\09.asciz \09\22azx_codec_configure\22\09\09\09\09\09"
module asm "__kstrtabns_azx_codec_configure:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_azx_init_streams:\09\09\09\09\09"
module asm "\09.asciz \09\22azx_init_streams\22\09\09\09\09\09"
module asm "__kstrtabns_azx_init_streams:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_azx_free_streams:\09\09\09\09\09"
module asm "\09.asciz \09\22azx_free_streams\22\09\09\09\09\09"
module asm "__kstrtabns_azx_free_streams:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.101 }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.103, %struct.trace_event, ptr, ptr, %union.anon.104, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.103 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.104 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.hdac_bus_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.cpumask = type { [1 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.azx = type { %struct.hda_bus, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [2 x ptr], [2 x ptr], %struct.mutex, %struct.list_head, i32, i32, ptr, i32, i16 }
%struct.hda_bus = type { %struct.hdac_bus, ptr, ptr, ptr, %struct.mutex, [8 x i32], i8, i32, i32 }
%struct.hdac_bus = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, [16 x ptr], [128 x i32], i32, i32, %struct.work_struct, i32, i32, %struct.hdac_rb, %struct.hdac_rb, [8 x i32], %struct.wait_queue_head, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.list_head, i16, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, i32, %struct.list_head, i8, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.hdac_rb = type { ptr, i32, i16, i16, [8 x i32], [8 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.trace_event_raw_azx_pcm_trigger = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.hdac_stream = type { ptr, %struct.snd_dma_buffer, ptr, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i8, i64, i32, i32, %struct.timecounter, %struct.cyclecounter, i32, %struct.list_head }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.trace_event_raw_azx_get_position = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_azx_pcm = type { %struct.trace_entry, i8, [0 x i8] }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.azx_pcm = type { ptr, ptr, ptr, ptr, %struct.list_head }
%struct.hda_pcm = type { ptr, [2 x %struct.hda_pcm_stream], i32, i32, ptr, i8, ptr, %struct.list_head, i8 }
%struct.hda_pcm_stream = type { i32, i32, i32, i16, i32, i64, i32, ptr, %struct.hda_pcm_ops }
%struct.hda_pcm_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64 }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8 }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, ptr, ptr, %struct.device }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.hda_controller_ops = type { ptr, ptr, ptr }
%struct.hda_codec = type { %struct.hdac_device, ptr, ptr, i32, i32, ptr, ptr, %struct.hda_codec_ops, %struct.list_head, %struct.refcount_struct, %struct.wait_queue_head, ptr, ptr, i32, ptr, %struct.snd_array, %struct.snd_array, %struct.list_head, %struct.mutex, %struct.mutex, %struct.snd_array, i32, ptr, %struct.snd_array, %struct.snd_array, %struct.snd_array, %struct.mutex, %struct.snd_array, %struct.snd_array, %struct.snd_array, i24, i32, i32, i32, ptr, ptr, %struct.snd_array, i32, %struct.delayed_work, i32, i32, ptr, ptr, %struct.snd_array }
%struct.hdac_device = type { %struct.device, i32, ptr, i32, %struct.list_head, i16, i16, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i32, i16, i16, %struct.atomic_t, %struct.mutex, ptr, ptr, %struct.mutex, %struct.snd_array, i8 }
%struct.hda_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.snd_array = type { i32, i32, i32, i32, ptr }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.hda_spdif_out = type { i16, i32, i16 }
%struct.azx_dev = type { %struct.hdac_stream, i8 }
%struct.system_device_crosststamp = type { i64, i64, i64 }

@__tpstrtab_azx_pcm_trigger = internal constant [16 x i8] c"azx_pcm_trigger\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_azx_pcm_trigger = dso_local global %struct.static_call_key { ptr @__traceiter_azx_pcm_trigger }, align 4
@__tracepoint_azx_pcm_trigger = dso_local global %struct.tracepoint { ptr @__tpstrtab_azx_pcm_trigger, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_azx_pcm_trigger, ptr null, ptr @__traceiter_azx_pcm_trigger, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_azx_pcm_trigger = internal constant ptr @__tracepoint_azx_pcm_trigger, section "__tracepoints_ptrs", align 4
@__tpstrtab_azx_get_position = internal constant [17 x i8] c"azx_get_position\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_azx_get_position = dso_local global %struct.static_call_key { ptr @__traceiter_azx_get_position }, align 4
@__tracepoint_azx_get_position = dso_local global %struct.tracepoint { ptr @__tpstrtab_azx_get_position, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_azx_get_position, ptr null, ptr @__traceiter_azx_get_position, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_azx_get_position = internal constant ptr @__tracepoint_azx_get_position, section "__tracepoints_ptrs", align 4
@__tpstrtab_azx_pcm_open = internal constant [13 x i8] c"azx_pcm_open\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_azx_pcm_open = dso_local global %struct.static_call_key { ptr @__traceiter_azx_pcm_open }, align 4
@__tracepoint_azx_pcm_open = dso_local global %struct.tracepoint { ptr @__tpstrtab_azx_pcm_open, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_azx_pcm_open, ptr null, ptr @__traceiter_azx_pcm_open, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_azx_pcm_open = internal constant ptr @__tracepoint_azx_pcm_open, section "__tracepoints_ptrs", align 4
@__tpstrtab_azx_pcm_close = internal constant [14 x i8] c"azx_pcm_close\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_azx_pcm_close = dso_local global %struct.static_call_key { ptr @__traceiter_azx_pcm_close }, align 4
@__tracepoint_azx_pcm_close = dso_local global %struct.tracepoint { ptr @__tpstrtab_azx_pcm_close, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_azx_pcm_close, ptr null, ptr @__traceiter_azx_pcm_close, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_azx_pcm_close = internal constant ptr @__tracepoint_azx_pcm_close, section "__tracepoints_ptrs", align 4
@__tpstrtab_azx_pcm_hw_params = internal constant [18 x i8] c"azx_pcm_hw_params\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_azx_pcm_hw_params = dso_local global %struct.static_call_key { ptr @__traceiter_azx_pcm_hw_params }, align 4
@__tracepoint_azx_pcm_hw_params = dso_local global %struct.tracepoint { ptr @__tpstrtab_azx_pcm_hw_params, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_azx_pcm_hw_params, ptr null, ptr @__traceiter_azx_pcm_hw_params, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_azx_pcm_hw_params = internal constant ptr @__tracepoint_azx_pcm_hw_params, section "__tracepoints_ptrs", align 4
@__tpstrtab_azx_pcm_prepare = internal constant [16 x i8] c"azx_pcm_prepare\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_azx_pcm_prepare = dso_local global %struct.static_call_key { ptr @__traceiter_azx_pcm_prepare }, align 4
@__tracepoint_azx_pcm_prepare = dso_local global %struct.tracepoint { ptr @__tpstrtab_azx_pcm_prepare, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_azx_pcm_prepare, ptr null, ptr @__traceiter_azx_pcm_prepare, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_azx_pcm_prepare = internal constant ptr @__tracepoint_azx_pcm_prepare, section "__tracepoints_ptrs", align 4
@str__hda_controller__trace_system_name = internal constant [15 x i8] c"hda_controller\00", align 1
@trace_event_fields_azx_pcm_trigger = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon.101 { %struct.anon.102 { ptr @.str.6, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.101 { %struct.anon.102 { ptr @.str.7, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.101 { %struct.anon.102 { ptr @.str.8, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_azx_pcm_trigger = internal global %struct.trace_event_class { ptr @str__hda_controller__trace_system_name, ptr @trace_event_raw_event_azx_pcm_trigger, ptr @perf_trace_azx_pcm_trigger, ptr @trace_event_reg, ptr @trace_event_fields_azx_pcm_trigger, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_azx_pcm_trigger, i64 24), ptr getelementptr (i8, ptr @event_class_azx_pcm_trigger, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_azx_pcm_trigger = internal global %struct.trace_event_functions { ptr @trace_raw_output_azx_pcm_trigger, ptr null, ptr null, ptr null }, align 4
@print_fmt_azx_pcm_trigger = internal global [48 x i8] c"\22[%d:%d] cmd=%d\22, REC->card, REC->idx, REC->cmd\00", align 1
@event_azx_pcm_trigger = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_azx_pcm_trigger, %union.anon.103 { ptr @__tracepoint_azx_pcm_trigger }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_azx_pcm_trigger }, ptr @print_fmt_azx_pcm_trigger, ptr null, %union.anon.104 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_azx_pcm_trigger = internal global ptr @event_azx_pcm_trigger, section "_ftrace_events", align 4
@trace_event_fields_azx_get_position = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon.101 { %struct.anon.102 { ptr @.str.6, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.101 { %struct.anon.102 { ptr @.str.7, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon.101 { %struct.anon.102 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon.101 { %struct.anon.102 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_azx_get_position = internal global %struct.trace_event_class { ptr @str__hda_controller__trace_system_name, ptr @trace_event_raw_event_azx_get_position, ptr @perf_trace_azx_get_position, ptr @trace_event_reg, ptr @trace_event_fields_azx_get_position, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_azx_get_position, i64 24), ptr getelementptr (i8, ptr @event_class_azx_get_position, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_azx_get_position = internal global %struct.trace_event_functions { ptr @trace_raw_output_azx_get_position, ptr null, ptr null, ptr null }, align 4
@print_fmt_azx_get_position = internal global [70 x i8] c"\22[%d:%d] pos=%u, delay=%u\22, REC->card, REC->idx, REC->pos, REC->delay\00", align 1
@event_azx_get_position = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_azx_get_position, %union.anon.103 { ptr @__tracepoint_azx_get_position }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_azx_get_position }, ptr @print_fmt_azx_get_position, ptr null, %union.anon.104 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_azx_get_position = internal global ptr @event_azx_get_position, section "_ftrace_events", align 4
@trace_event_fields_azx_pcm = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.14, %union.anon.101 { %struct.anon.102 { ptr @.str.15, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_azx_pcm = internal global %struct.trace_event_class { ptr @str__hda_controller__trace_system_name, ptr @trace_event_raw_event_azx_pcm, ptr @perf_trace_azx_pcm, ptr @trace_event_reg, ptr @trace_event_fields_azx_pcm, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_azx_pcm, i64 24), ptr getelementptr (i8, ptr @event_class_azx_pcm, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_azx_pcm = internal global %struct.trace_event_functions { ptr @trace_raw_output_azx_pcm, ptr null, ptr null, ptr null }, align 4
@print_fmt_azx_pcm = internal global [34 x i8] c"\22stream_tag: %d\22, REC->stream_tag\00", align 1
@event_azx_pcm_open = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_azx_pcm, %union.anon.103 { ptr @__tracepoint_azx_pcm_open }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_azx_pcm }, ptr @print_fmt_azx_pcm, ptr null, %union.anon.104 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_azx_pcm_open = internal global ptr @event_azx_pcm_open, section "_ftrace_events", align 4
@event_azx_pcm_close = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_azx_pcm, %union.anon.103 { ptr @__tracepoint_azx_pcm_close }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_azx_pcm }, ptr @print_fmt_azx_pcm, ptr null, %union.anon.104 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_azx_pcm_close = internal global ptr @event_azx_pcm_close, section "_ftrace_events", align 4
@event_azx_pcm_hw_params = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_azx_pcm, %union.anon.103 { ptr @__tracepoint_azx_pcm_hw_params }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_azx_pcm }, ptr @print_fmt_azx_pcm, ptr null, %union.anon.104 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_azx_pcm_hw_params = internal global ptr @event_azx_pcm_hw_params, section "_ftrace_events", align 4
@event_azx_pcm_prepare = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_azx_pcm, %union.anon.103 { ptr @__tracepoint_azx_pcm_prepare }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_azx_pcm }, ptr @print_fmt_azx_pcm, ptr null, %union.anon.104 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_azx_pcm_prepare = internal global ptr @event_azx_pcm_prepare, section "_ftrace_events", align 4
@__kstrtab_azx_get_pos_lpib = external dso_local constant [0 x i8], align 1
@__kstrtabns_azx_get_pos_lpib = external dso_local constant [0 x i8], align 1
@__ksymtab_azx_get_pos_lpib = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @azx_get_pos_lpib to i32), ptr @__kstrtab_azx_get_pos_lpib, ptr @__kstrtabns_azx_get_pos_lpib }, section "___ksymtab_gpl+azx_get_pos_lpib", align 4
@__kstrtab_azx_get_pos_posbuf = external dso_local constant [0 x i8], align 1
@__kstrtabns_azx_get_pos_posbuf = external dso_local constant [0 x i8], align 1
@__ksymtab_azx_get_pos_posbuf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @azx_get_pos_posbuf to i32), ptr @__kstrtab_azx_get_pos_posbuf, ptr @__kstrtabns_azx_get_pos_posbuf }, section "___ksymtab_gpl+azx_get_pos_posbuf", align 4
@__kstrtab_azx_get_position = external dso_local constant [0 x i8], align 1
@__kstrtabns_azx_get_position = external dso_local constant [0 x i8], align 1
@__ksymtab_azx_get_position = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @azx_get_position to i32), ptr @__kstrtab_azx_get_position, ptr @__kstrtabns_azx_get_position }, section "___ksymtab_gpl+azx_get_position", align 4
@.str = private unnamed_addr constant [23 x i8] c"PCM %d already exists\0A\00", align 1
@azx_pcm_ops = internal constant %struct.snd_pcm_ops { ptr @azx_pcm_open, ptr @azx_pcm_close, ptr null, ptr @azx_pcm_hw_params, ptr @azx_pcm_hw_free, ptr @azx_pcm_prepare, ptr @azx_pcm_trigger, ptr null, ptr @azx_pcm_pointer, ptr @azx_get_time_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_azx_init_chip = external dso_local constant [0 x i8], align 1
@__kstrtabns_azx_init_chip = external dso_local constant [0 x i8], align 1
@__ksymtab_azx_init_chip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @azx_init_chip to i32), ptr @__kstrtab_azx_init_chip, ptr @__kstrtabns_azx_init_chip }, section "___ksymtab_gpl+azx_init_chip", align 4
@__kstrtab_azx_stop_all_streams = external dso_local constant [0 x i8], align 1
@__kstrtabns_azx_stop_all_streams = external dso_local constant [0 x i8], align 1
@__ksymtab_azx_stop_all_streams = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @azx_stop_all_streams to i32), ptr @__kstrtab_azx_stop_all_streams, ptr @__kstrtabns_azx_stop_all_streams }, section "___ksymtab_gpl+azx_stop_all_streams", align 4
@__kstrtab_azx_stop_chip = external dso_local constant [0 x i8], align 1
@__kstrtabns_azx_stop_chip = external dso_local constant [0 x i8], align 1
@__ksymtab_azx_stop_chip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @azx_stop_chip to i32), ptr @__kstrtab_azx_stop_chip, ptr @__kstrtabns_azx_stop_chip }, section "___ksymtab_gpl+azx_stop_chip", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__kstrtab_azx_interrupt = external dso_local constant [0 x i8], align 1
@__kstrtabns_azx_interrupt = external dso_local constant [0 x i8], align 1
@__ksymtab_azx_interrupt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @azx_interrupt to i32), ptr @__kstrtab_azx_interrupt, ptr @__kstrtabns_azx_interrupt }, section "___ksymtab_gpl+azx_interrupt", align 4
@bus_core_ops = internal constant %struct.hdac_bus_ops { ptr @azx_send_cmd, ptr @azx_get_response, ptr null }, align 4
@azx_bus_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"&bus->prepare_mutex\00", align 1
@__kstrtab_azx_bus_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_azx_bus_init = external dso_local constant [0 x i8], align 1
@__ksymtab_azx_bus_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @azx_bus_init to i32), ptr @__kstrtab_azx_bus_init, ptr @__kstrtabns_azx_bus_init }, section "___ksymtab_gpl+azx_bus_init", align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Codec #%d probe error; disabling it...\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"no codecs initialized\0A\00", align 1
@__kstrtab_azx_probe_codecs = external dso_local constant [0 x i8], align 1
@__kstrtabns_azx_probe_codecs = external dso_local constant [0 x i8], align 1
@__ksymtab_azx_probe_codecs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @azx_probe_codecs to i32), ptr @__kstrtab_azx_probe_codecs, ptr @__kstrtabns_azx_probe_codecs }, section "___ksymtab_gpl+azx_probe_codecs", align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Unable to configure, disabling\0A\00", align 1
@__kstrtab_azx_codec_configure = external dso_local constant [0 x i8], align 1
@__kstrtabns_azx_codec_configure = external dso_local constant [0 x i8], align 1
@__ksymtab_azx_codec_configure = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @azx_codec_configure to i32), ptr @__kstrtab_azx_codec_configure, ptr @__kstrtabns_azx_codec_configure }, section "___ksymtab_gpl+azx_codec_configure", align 4
@__kstrtab_azx_init_streams = external dso_local constant [0 x i8], align 1
@__kstrtabns_azx_init_streams = external dso_local constant [0 x i8], align 1
@__ksymtab_azx_init_streams = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @azx_init_streams to i32), ptr @__kstrtab_azx_init_streams, ptr @__kstrtabns_azx_init_streams }, section "___ksymtab_gpl+azx_init_streams", align 4
@__kstrtab_azx_free_streams = external dso_local constant [0 x i8], align 1
@__kstrtabns_azx_free_streams = external dso_local constant [0 x i8], align 1
@__ksymtab_azx_free_streams = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @azx_free_streams to i32), ptr @__kstrtab_azx_free_streams, ptr @__kstrtabns_azx_free_streams }, section "___ksymtab_gpl+azx_free_streams", align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"card\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"idx\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"[%d:%d] cmd=%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"pos\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"delay\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"[%d:%d] pos=%u, delay=%u\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"stream_tag\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"stream_tag: %d\0A\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@azx_pcm_hw = internal unnamed_addr constant %struct.snd_pcm_hardware { i32 29950211, i64 4, i32 128, i32 48000, i32 48000, i32 2, i32 2, i32 4194304, i32 128, i32 2097152, i32 2, i32 32, i32 0 }, align 8
@.str.18 = private unnamed_addr constant [47 x i8] c"invalid format_val, rate=%d, ch=%d, format=%d\0A\00", align 1
@__func__.azx_single_send_cmd = private unnamed_addr constant [20 x i8] c"azx_single_send_cmd\00", align 1
@__func__.azx_single_wait_for_response = private unnamed_addr constant [29 x i8] c"azx_single_wait_for_response\00", align 1
@.str.19 = private unnamed_addr constant [70 x i8] c"azx_get_response timeout, switching to polling mode: last cmd=0x%08x\0A\00", align 1
@.str.20 = private unnamed_addr constant [56 x i8] c"No response from codec, disabling MSI: last cmd=0x%08x\0A\00", align 1
@.str.21 = private unnamed_addr constant [56 x i8] c"No response from codec, resetting bus: last cmd=0x%08x\0A\00", align 1
@.str.22 = private unnamed_addr constant [73 x i8] c"azx_get_response timeout, switching to single_cmd mode: last cmd=0x%08x\0A\00", align 1
@llvm.compiler.used = appending global [39 x ptr] [ptr @__event_azx_get_position, ptr @__event_azx_pcm_close, ptr @__event_azx_pcm_hw_params, ptr @__event_azx_pcm_open, ptr @__event_azx_pcm_prepare, ptr @__event_azx_pcm_trigger, ptr @__ksymtab_azx_bus_init, ptr @__ksymtab_azx_codec_configure, ptr @__ksymtab_azx_free_streams, ptr @__ksymtab_azx_get_pos_lpib, ptr @__ksymtab_azx_get_pos_posbuf, ptr @__ksymtab_azx_get_position, ptr @__ksymtab_azx_init_chip, ptr @__ksymtab_azx_init_streams, ptr @__ksymtab_azx_interrupt, ptr @__ksymtab_azx_probe_codecs, ptr @__ksymtab_azx_stop_all_streams, ptr @__ksymtab_azx_stop_chip, ptr @__tracepoint_azx_get_position, ptr @__tracepoint_azx_pcm_close, ptr @__tracepoint_azx_pcm_hw_params, ptr @__tracepoint_azx_pcm_open, ptr @__tracepoint_azx_pcm_prepare, ptr @__tracepoint_azx_pcm_trigger, ptr @__tracepoint_ptr_azx_get_position, ptr @__tracepoint_ptr_azx_pcm_close, ptr @__tracepoint_ptr_azx_pcm_hw_params, ptr @__tracepoint_ptr_azx_pcm_open, ptr @__tracepoint_ptr_azx_pcm_prepare, ptr @__tracepoint_ptr_azx_pcm_trigger, ptr @event_azx_get_position, ptr @event_azx_pcm_close, ptr @event_azx_pcm_hw_params, ptr @event_azx_pcm_open, ptr @event_azx_pcm_prepare, ptr @event_azx_pcm_trigger, ptr @event_class_azx_get_position, ptr @event_class_azx_pcm, ptr @event_class_azx_pcm_trigger], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_azx_pcm_trigger(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_azx_pcm_trigger, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3) #12
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_azx_get_position(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_azx_get_position, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #12
  %13 = getelementptr %struct.tracepoint_func, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_azx_pcm_open(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_azx_pcm_open, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #12
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_azx_pcm_close(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_azx_pcm_close, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #12
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_azx_pcm_hw_params(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_azx_pcm_hw_params, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #12
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_azx_pcm_prepare(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_azx_pcm_prepare, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #12
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_azx_pcm_trigger(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #12
  br i1 %14, label %28, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.azx, ptr %1, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.trace_event_raw_azx_pcm_trigger, ptr %16, i32 0, i32 1
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.hdac_stream, ptr %2, i32 0, i32 14
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = getelementptr inbounds %struct.trace_event_raw_azx_pcm_trigger, ptr %16, i32 0, i32 2
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_azx_pcm_trigger, ptr %16, i32 0, i32 3
  store i32 %3, ptr %27, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #12
  br label %28

28:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_azx_pcm_trigger(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #6, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %46, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %46, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #12
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #12
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.azx, ptr %1, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load i32, ptr %36, align 8
  %38 = getelementptr inbounds %struct.trace_event_raw_azx_pcm_trigger, ptr %22, i32 0, i32 1
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.hdac_stream, ptr %2, i32 0, i32 14
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds %struct.trace_event_raw_azx_pcm_trigger, ptr %22, i32 0, i32 2
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_azx_pcm_trigger, ptr %22, i32 0, i32 3
  store i32 %3, ptr %43, align 4
  %44 = load i32, ptr %6, align 4
  %45 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %44, ptr noundef %0, i64 noundef 1, ptr noundef %45, ptr noundef %14, ptr noundef null) #12
  br label %46

46:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_azx_get_position(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 704
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !10

11:                                               ; preds = %5
  %12 = and i32 %8, 256
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16, !prof !11

14:                                               ; preds = %11
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #12
  br i1 %15, label %30, label %16

16:                                               ; preds = %14, %11, %5
  %17 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %6, ptr noundef %0, i32 noundef 24) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.azx, ptr %1, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.trace_event_raw_azx_get_position, ptr %17, i32 0, i32 1
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.hdac_stream, ptr %2, i32 0, i32 14
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds %struct.trace_event_raw_azx_get_position, ptr %17, i32 0, i32 2
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_azx_get_position, ptr %17, i32 0, i32 3
  store i32 %3, ptr %28, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_azx_get_position, ptr %17, i32 0, i32 4
  store i32 %4, ptr %29, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %6) #12
  br label %30

30:                                               ; preds = %19, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_azx_get_position(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store ptr null, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #6, !srcloc !12
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load volatile ptr, ptr %15, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %48, label %22

22:                                               ; preds = %19, %5
  %23 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %6, ptr noundef nonnull %7) #12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %48, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %6, align 4
  %27 = call ptr @llvm.returnaddress(i32 0) #12
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %26, i32 0, i32 15
  store i32 %28, ptr %29, align 4
  %30 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [18 x i32], ptr %26, i32 0, i32 11
  store i32 %31, ptr %32, align 4
  %33 = call i32 @llvm.read_register.i32(metadata !0) #12
  %34 = getelementptr [18 x i32], ptr %26, i32 0, i32 13
  store i32 %33, ptr %34, align 4
  %35 = getelementptr [18 x i32], ptr %26, i32 0, i32 16
  store i32 19, ptr %35, align 4
  %36 = getelementptr inbounds %struct.azx, ptr %1, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = load i32, ptr %37, align 8
  %39 = getelementptr inbounds %struct.trace_event_raw_azx_get_position, ptr %23, i32 0, i32 1
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.hdac_stream, ptr %2, i32 0, i32 14
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = getelementptr inbounds %struct.trace_event_raw_azx_get_position, ptr %23, i32 0, i32 2
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_azx_get_position, ptr %23, i32 0, i32 3
  store i32 %3, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_azx_get_position, ptr %23, i32 0, i32 4
  store i32 %4, ptr %45, align 4
  %46 = load i32, ptr %7, align 4
  %47 = load ptr, ptr %6, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %23, i32 noundef 28, i32 noundef %46, ptr noundef %0, i64 noundef 1, ptr noundef %47, ptr noundef %15, ptr noundef null) #12
  br label %48

48:                                               ; preds = %25, %22, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_azx_pcm(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #12
  br i1 %13, label %21, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 12) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.hdac_stream, ptr %2, i32 0, i32 13
  %19 = load i8, ptr %18, align 8
  %20 = getelementptr inbounds %struct.trace_event_raw_azx_pcm, ptr %15, i32 0, i32 1
  store i8 %19, ptr %20, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #12
  br label %21

21:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_azx_pcm(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #6, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %39, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %39, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #12
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #12
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.hdac_stream, ptr %2, i32 0, i32 13
  %35 = load i8, ptr %34, align 8
  %36 = getelementptr inbounds %struct.trace_event_raw_azx_pcm, ptr %21, i32 0, i32 1
  store i8 %35, ptr %36, align 4
  %37 = load i32, ptr %5, align 4
  %38 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 12, i32 noundef %37, ptr noundef %0, i64 noundef 1, ptr noundef %38, ptr noundef %13, ptr noundef null) #12
  br label %39

39:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @azx_get_pos_lpib(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.hdac_stream, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #12, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !14
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @azx_get_pos_posbuf(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.hdac_stream, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @azx_get_position(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.hdac_stream, ptr %1, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_substream, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.azx, ptr %0, i32 0, i32 13, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 %8(ptr noundef %0, ptr noundef %1) #12
  br label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.hdac_stream, ptr %1, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %12, %10
  %17 = phi i32 [ %11, %10 ], [ %15, %12 ]
  %18 = getelementptr inbounds %struct.hdac_stream, ptr %1, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %17, %19
  %21 = select i1 %20, i32 %17, i32 0
  %22 = getelementptr inbounds %struct.snd_pcm_substream, ptr %4, i32 0, i32 11
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %51, label %25

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.snd_pcm_substream, ptr %4, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.azx_pcm, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = load i32, ptr %5, align 4
  %31 = getelementptr %struct.hda_pcm, ptr %29, i32 0, i32 1, i32 %30
  %32 = getelementptr %struct.azx, ptr %0, i32 0, i32 14, i32 %6
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %25
  %36 = tail call i32 %33(ptr noundef %0, ptr noundef %1, i32 noundef %21) #12
  br label %37

37:                                               ; preds = %35, %25
  %38 = phi i32 [ %36, %35 ], [ 0, %25 ]
  %39 = getelementptr %struct.hda_pcm, ptr %29, i32 0, i32 1, i32 %30, i32 8, i32 4
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.azx_pcm, ptr %27, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 %40(ptr noundef %31, ptr noundef %44, ptr noundef %4) #12
  %46 = add i32 %45, %38
  br label %47

47:                                               ; preds = %42, %37
  %48 = phi i32 [ %46, %42 ], [ %38, %37 ]
  %49 = load ptr, ptr %22, align 4
  %50 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %49, i32 0, i32 9
  store i32 %48, ptr %50, align 4
  br label %51

51:                                               ; preds = %47, %16
  %52 = phi i32 [ %48, %47 ], [ 0, %16 ]
  %53 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_azx_get_position, i32 0, i32 1), align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %51
  %56 = tail call ptr @llvm.thread.pointer() #12
  %57 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %58 = load i32, ptr %57, align 8
  %59 = lshr i32 %58, 5
  %60 = getelementptr i32, ptr @__cpu_online_mask, i32 %59
  %61 = load volatile i32, ptr %60, align 4
  %62 = and i32 %58, 31
  %63 = shl nuw i32 1, %62
  %64 = and i32 %63, %61
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %55
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  %67 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_azx_get_position, i32 0, i32 7), align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %77, label %69

69:                                               ; preds = %69, %66
  %70 = phi ptr [ %74, %69 ], [ %67, %66 ]
  %71 = load volatile ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.tracepoint_func, ptr %70, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  tail call void %71(ptr noundef %73, ptr noundef %0, ptr noundef %1, i32 noundef %21, i32 noundef %52) #12
  %74 = getelementptr %struct.tracepoint_func, ptr %70, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %69

77:                                               ; preds = %69, %66
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  br label %78

78:                                               ; preds = %77, %55, %51
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hda_attach_pcm_stream(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store ptr null, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.hda_pcm, ptr %2, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.azx, ptr %0, i32 0, i32 16
  br label %8

8:                                                ; preds = %12, %3
  %9 = phi ptr [ %7, %3 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %7
  br i1 %11, label %23, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %10, i32 -12
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.snd_pcm, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, %6
  br i1 %17, label %18, label %8

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.azx, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.snd_card, ptr %20, i32 0, i32 27
  %22 = load ptr, ptr %21, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str, i32 noundef %6) #13
  br label %82

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.azx, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr %struct.hda_pcm, ptr %2, i32 0, i32 1
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr %struct.hda_pcm, ptr %2, i32 0, i32 1, i32 1
  %30 = load i32, ptr %29, align 8
  %31 = call i32 @snd_pcm_new(ptr noundef %25, ptr noundef %26, i32 noundef %6, i32 noundef %28, i32 noundef %30, ptr noundef nonnull %4) #12
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %82, label %33

33:                                               ; preds = %23
  %34 = load ptr, ptr %4, align 4
  %35 = getelementptr inbounds %struct.snd_pcm, ptr %34, i32 0, i32 7
  %36 = load ptr, ptr %2, align 8
  %37 = call i32 @strscpy(ptr noundef %35, ptr noundef %36, i32 noundef 80) #12
  %38 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %39 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3520, i32 noundef 24) #14
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load ptr, ptr %24, align 4
  %43 = load ptr, ptr %4, align 4
  call void @snd_device_free(ptr noundef %42, ptr noundef %43) #12
  br label %82

44:                                               ; preds = %33
  store ptr %0, ptr %39, align 8
  %45 = load ptr, ptr %4, align 4
  %46 = getelementptr inbounds %struct.azx_pcm, ptr %39, i32 0, i32 1
  store ptr %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.azx_pcm, ptr %39, i32 0, i32 2
  store ptr %1, ptr %47, align 8
  %48 = getelementptr inbounds %struct.azx_pcm, ptr %39, i32 0, i32 3
  store ptr %2, ptr %48, align 4
  %49 = getelementptr inbounds %struct.snd_pcm, ptr %45, i32 0, i32 11
  store ptr %39, ptr %49, align 8
  %50 = getelementptr inbounds %struct.snd_pcm, ptr %45, i32 0, i32 12
  store ptr @azx_pcm_free, ptr %50, align 4
  %51 = getelementptr inbounds %struct.hda_pcm, ptr %2, i32 0, i32 2
  %52 = load i32, ptr %51, align 8
  %53 = icmp eq i32 %52, 3
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.snd_pcm, ptr %45, i32 0, i32 4
  store i16 2, ptr %55, align 4
  br label %56

56:                                               ; preds = %54, %44
  %57 = getelementptr inbounds %struct.azx_pcm, ptr %39, i32 0, i32 4
  %58 = getelementptr inbounds %struct.azx, ptr %0, i32 0, i32 16, i32 1
  %59 = load ptr, ptr %58, align 4
  store ptr %57, ptr %58, align 4
  store ptr %7, ptr %57, align 8
  %60 = getelementptr inbounds %struct.azx_pcm, ptr %39, i32 0, i32 4, i32 1
  store ptr %59, ptr %60, align 4
  store volatile ptr %57, ptr %59, align 4
  %61 = load ptr, ptr %4, align 4
  %62 = getelementptr inbounds %struct.hda_pcm, ptr %2, i32 0, i32 4
  store ptr %61, ptr %62, align 8
  %63 = load i32, ptr %27, align 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %56
  call void @snd_pcm_set_ops(ptr noundef %61, i32 noundef 0, ptr noundef nonnull @azx_pcm_ops) #12
  br label %66

66:                                               ; preds = %65, %56
  %67 = load i32, ptr %29, align 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr %4, align 4
  call void @snd_pcm_set_ops(ptr noundef %70, i32 noundef 1, ptr noundef nonnull @azx_pcm_ops) #12
  br label %71

71:                                               ; preds = %69, %66
  %72 = getelementptr inbounds %struct.azx, ptr %0, i32 0, i32 21
  %73 = load i16, ptr %72, align 4
  %74 = and i16 %73, 64
  %75 = icmp eq i16 %74, 0
  %76 = select i1 %75, i32 2, i32 5
  %77 = load ptr, ptr %4, align 4
  %78 = load ptr, ptr %24, align 4
  %79 = getelementptr inbounds %struct.snd_card, ptr %78, i32 0, i32 27
  %80 = load ptr, ptr %79, align 8
  %81 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %77, i32 noundef %76, ptr noundef %80, i32 noundef 65536, i32 noundef 33554432) #12
  br label %82

82:                                               ; preds = %71, %41, %23, %18
  %83 = phi i32 [ -16, %18 ], [ -12, %41 ], [ 0, %71 ], [ %31, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %83
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_device_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @azx_pcm_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_pcm, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.azx_pcm, ptr %3, i32 0, i32 4
  %7 = getelementptr inbounds %struct.azx_pcm, ptr %3, i32 0, i32 4, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  %11 = getelementptr inbounds %struct.azx_pcm, ptr %3, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.hda_pcm, ptr %12, i32 0, i32 4
  store ptr null, ptr %13, align 8
  tail call void @kfree(ptr noundef nonnull %3) #12
  br label %14

14:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @azx_init_chip(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = tail call zeroext i1 @snd_hdac_bus_init_chip(ptr noundef %0, i1 noundef zeroext %1) #12
  br i1 %3, label %4, label %19

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.azx, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 32768
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 90
  %13 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 28
  %14 = load i16, ptr %13, align 4
  %15 = and i16 %14, 2
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %9
  tail call void @snd_hdac_aligned_write(i32 noundef 192, ptr noundef %12, i32 noundef 65535) #12
  br label %19

18:                                               ; preds = %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !17
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %12, i16 192) #12, !srcloc !18
  br label %19

19:                                               ; preds = %18, %17, %4, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_hdac_bus_init_chip(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @azx_stop_all_streams(ptr noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %10, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -180
  tail call void @snd_hdac_stream_stop(ptr noundef %7) #12
  %8 = load ptr, ptr %6, align 4
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %10, label %5

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_stream_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @azx_stop_chip(ptr noundef %0) #0 {
  tail call void @snd_hdac_bus_stop_chip(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_bus_stop_chip(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @azx_interrupt(i32 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.azx, ptr %1, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 67108864
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.azx, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 11, i32 18
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 11, i32 15
  %17 = load i16, ptr %16, align 8
  %18 = and i16 %17, 7
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %90, label %20

20:                                               ; preds = %15, %7, %2
  %21 = getelementptr inbounds %struct.hdac_bus, ptr %1, i32 0, i32 32
  tail call void @_raw_spin_lock(ptr noundef %21) #12
  %22 = getelementptr inbounds %struct.azx, ptr %1, i32 0, i32 21
  %23 = load i16, ptr %22, align 4
  %24 = and i16 %23, 256
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %86

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.hdac_bus, ptr %1, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 36
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #12, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !19
  %31 = add i32 %30, 1
  %32 = icmp ult i32 %31, 2
  br i1 %32, label %86, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.hdac_bus, ptr %1, i32 0, i32 28
  br label %35

35:                                               ; preds = %79, %33
  %36 = phi i32 [ %30, %33 ], [ %83, %79 ]
  %37 = phi i32 [ 0, %33 ], [ %80, %79 ]
  %38 = tail call i32 @snd_hdac_bus_handle_stream_irq(ptr noundef %1, i32 noundef %36, ptr noundef nonnull @stream_update) #12
  %39 = icmp ne i32 %38, 0
  %40 = load ptr, ptr %27, align 4
  %41 = getelementptr i8, ptr %40, i32 93
  %42 = load i16, ptr %34, align 4
  %43 = and i16 %42, 2
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %35
  %46 = tail call i32 @snd_hdac_aligned_read(ptr noundef %41, i32 noundef 255) #12
  br label %50

47:                                               ; preds = %35
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %41) #12, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !21
  %49 = zext i8 %48 to i32
  br label %50

50:                                               ; preds = %47, %45
  %51 = phi i32 [ %46, %45 ], [ %49, %47 ]
  %52 = and i32 %51, 5
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %72, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %27, align 4
  %56 = getelementptr i8, ptr %55, i32 93
  %57 = load i16, ptr %34, align 4
  %58 = and i16 %57, 2
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  tail call void @snd_hdac_aligned_write(i32 noundef 5, ptr noundef %56, i32 noundef 255) #12
  br label %62

61:                                               ; preds = %54
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !22
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %56, i8 5) #12, !srcloc !23
  br label %62

62:                                               ; preds = %61, %60
  %63 = and i32 %51, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %62
  %66 = load i32, ptr %3, align 4
  %67 = and i32 %66, 32768
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 17179840) #12
  br label %71

71:                                               ; preds = %69, %65
  tail call void @snd_hdac_bus_update_rirb(ptr noundef %1) #12
  br label %76

72:                                               ; preds = %50
  %73 = add i32 %37, 1
  %74 = icmp slt i32 %73, 10
  %75 = select i1 %39, i1 %74, i1 false
  br i1 %75, label %79, label %86

76:                                               ; preds = %71, %62
  %77 = add i32 %37, 1
  %78 = icmp slt i32 %77, 10
  br i1 %78, label %79, label %86

79:                                               ; preds = %76, %72
  %80 = phi i32 [ %77, %76 ], [ %73, %72 ]
  %81 = load ptr, ptr %27, align 4
  %82 = getelementptr i8, ptr %81, i32 36
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #12, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !19
  %84 = add i32 %83, 1
  %85 = icmp ult i32 %84, 2
  br i1 %85, label %86, label %35

86:                                               ; preds = %79, %76, %72, %26, %20
  %87 = phi i32 [ 0, %20 ], [ 0, %26 ], [ 1, %72 ], [ 1, %76 ], [ 1, %79 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !24
  %88 = load i16, ptr %21, align 4
  %89 = add i16 %88, 1
  store i16 %89, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !27
  br label %90

90:                                               ; preds = %86, %15
  %91 = phi i32 [ %87, %86 ], [ 0, %15 ]
  ret i32 %91
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_bus_handle_stream_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stream_update(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.azx, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.hda_controller_ops, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = tail call i32 %6(ptr noundef %0, ptr noundef %1) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8, %2
  %12 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !24
  %13 = load i16, ptr %12, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !27
  %15 = getelementptr inbounds %struct.hdac_stream, ptr %1, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %16) #12
  tail call void @_raw_spin_lock(ptr noundef %12) #12
  br label %17

17:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_bus_update_rirb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hda_bus_reset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hda_bus, ptr %0, i32 0, i32 6
  %3 = load i8, ptr %2, align 4
  %4 = or i8 %3, 8
  store i8 %4, ptr %2, align 4
  tail call void @snd_hdac_bus_stop_chip(ptr noundef %0) #12
  %5 = tail call zeroext i1 @snd_hdac_bus_init_chip(ptr noundef %0, i1 noundef zeroext true) #12
  br i1 %5, label %6, label %21

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.azx, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 32768
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 90
  %15 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 28
  %16 = load i16, ptr %15, align 4
  %17 = and i16 %16, 2
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  tail call void @snd_hdac_aligned_write(i32 noundef 192, ptr noundef %14, i32 noundef 65535) #12
  br label %21

20:                                               ; preds = %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !17
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %14, i16 192) #12, !srcloc !18
  br label %21

21:                                               ; preds = %20, %19, %6, %1
  %22 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 28
  %23 = load i16, ptr %22, align 4
  %24 = and i16 %23, 1
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call void @snd_hda_bus_reset_codecs(ptr noundef %0) #12
  br label %27

27:                                               ; preds = %26, %21
  %28 = load i8, ptr %2, align 4
  %29 = and i8 %28, -9
  store i8 %29, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_bus_reset_codecs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @azx_bus_init(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.azx, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @snd_hdac_bus_init(ptr noundef %0, ptr noundef %6, ptr noundef nonnull @bus_core_ops) #12
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.hda_bus, ptr %0, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.hda_bus, ptr %0, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %12, ptr noundef nonnull @.str.1, ptr noundef nonnull @azx_bus_init.__key) #12
  %13 = getelementptr inbounds %struct.azx, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.hda_bus, ptr %0, i32 0, i32 2
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.hda_bus, ptr %0, i32 0, i32 3
  store ptr %1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.hda_bus, ptr %0, i32 0, i32 8
  store i32 -1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 28
  %19 = load i16, ptr %18, align 4
  %20 = getelementptr inbounds %struct.azx, ptr %0, i32 0, i32 13
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, @azx_get_pos_lpib
  br i1 %22, label %23, label %28

23:                                               ; preds = %9
  %24 = or i16 %19, 16
  %25 = getelementptr %struct.azx, ptr %0, i32 0, i32 13, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, @azx_get_pos_lpib
  br i1 %27, label %30, label %28

28:                                               ; preds = %23, %9
  %29 = or i16 %19, 24
  br label %30

30:                                               ; preds = %28, %23
  %31 = phi i16 [ %29, %28 ], [ %24, %23 ]
  %32 = getelementptr inbounds %struct.azx, ptr %0, i32 0, i32 20
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 30
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.azx, ptr %0, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = lshr i32 %36, 21
  %38 = trunc i32 %37 to i16
  %39 = and i16 %38, 128
  %40 = or i16 %39, %31
  %41 = lshr i32 %36, 18
  %42 = trunc i32 %41 to i16
  %43 = and i16 %42, 32
  %44 = or i16 %43, %40
  %45 = or i16 %44, 4
  store i16 %45, ptr %18, align 4
  br label %46

46:                                               ; preds = %30, %2
  %47 = phi i32 [ 0, %30 ], [ %7, %2 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_bus_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @azx_probe_codecs(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = icmp eq i32 %1, 0
  %6 = select i1 %5, i32 4, i32 %1
  %7 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 18
  %8 = getelementptr inbounds %struct.azx, ptr %0, i32 0, i32 17
  %9 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 33
  %10 = getelementptr inbounds %struct.azx, ptr %0, i32 0, i32 21
  %11 = getelementptr inbounds %struct.azx, ptr %0, i32 0, i32 1
  %12 = getelementptr inbounds %struct.azx, ptr %0, i32 0, i32 5
  %13 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 4
  %14 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 28
  br label %22

15:                                               ; preds = %63
  %16 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 18
  %17 = getelementptr inbounds %struct.azx, ptr %0, i32 0, i32 17
  %18 = getelementptr inbounds %struct.azx, ptr %0, i32 0, i32 1
  %19 = getelementptr inbounds %struct.azx, ptr %0, i32 0, i32 11
  %20 = getelementptr inbounds %struct.azx, ptr %0, i32 0, i32 18
  %21 = call i32 @llvm.umax.i32(i32 %6, i32 1)
  br label %66

22:                                               ; preds = %63, %2
  %23 = phi i32 [ 0, %2 ], [ %64, %63 ]
  %24 = load i32, ptr %7, align 4
  %25 = shl nuw i32 1, %23
  %26 = and i32 %24, %25
  %27 = load i32, ptr %8, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %63, label %30

30:                                               ; preds = %22
  %31 = shl i32 %23, 28
  %32 = or i32 %31, 983040
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 -1, ptr %3, align 4
  call void @mutex_lock(ptr noundef %9) #12
  %33 = load i16, ptr %10, align 4
  %34 = or i16 %33, 16
  store i16 %34, ptr %10, align 4
  %35 = call i32 @azx_send_cmd(ptr noundef %0, i32 noundef %32) #12
  %36 = call i32 @azx_get_response(ptr noundef %0, i32 noundef %23, ptr noundef nonnull %3) #12
  %37 = load i16, ptr %10, align 4
  %38 = and i16 %37, -17
  store i16 %38, ptr %10, align 4
  call void @mutex_unlock(ptr noundef %9) #12
  %39 = icmp slt i32 %36, 0
  %40 = load i32, ptr %3, align 4
  %41 = icmp eq i32 %40, -1
  %42 = select i1 %39, i1 true, i1 %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br i1 %42, label %43, label %63

43:                                               ; preds = %30
  %44 = load ptr, ptr %11, align 4
  %45 = getelementptr inbounds %struct.snd_card, ptr %44, i32 0, i32 27
  %46 = load ptr, ptr %45, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %46, ptr noundef nonnull @.str.2, i32 noundef %23) #13
  %47 = xor i32 %25, -1
  %48 = load i32, ptr %7, align 4
  %49 = and i32 %48, %47
  store i32 %49, ptr %7, align 4
  call void @snd_hdac_bus_stop_chip(ptr noundef %0) #12
  %50 = call zeroext i1 @snd_hdac_bus_init_chip(ptr noundef %0, i1 noundef zeroext true) #12
  br i1 %50, label %51, label %63

51:                                               ; preds = %43
  %52 = load i32, ptr %12, align 4
  %53 = and i32 %52, 32768
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr %13, align 4
  %57 = getelementptr i8, ptr %56, i32 90
  %58 = load i16, ptr %14, align 4
  %59 = and i16 %58, 2
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  call void @snd_hdac_aligned_write(i32 noundef 192, ptr noundef %57, i32 noundef 65535) #12
  br label %63

62:                                               ; preds = %55
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !17
  call void @arm_heavy_mb() #12
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %57, i16 192) #12, !srcloc !18
  br label %63

63:                                               ; preds = %62, %61, %51, %43, %30, %22
  %64 = add nuw i32 %23, 1
  %65 = icmp eq i32 %64, %6
  br i1 %65, label %15, label %22

66:                                               ; preds = %88, %15
  %67 = phi i32 [ 0, %15 ], [ %89, %88 ]
  %68 = phi i32 [ 0, %15 ], [ %90, %88 ]
  %69 = load i32, ptr %16, align 4
  %70 = shl nuw i32 1, %68
  %71 = and i32 %69, %70
  %72 = load i32, ptr %17, align 4
  %73 = and i32 %71, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %88, label %75

75:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store ptr null, ptr %4, align 4, !annotation !9
  %76 = load ptr, ptr %18, align 4
  %77 = call i32 @snd_hda_codec_new(ptr noundef %0, ptr noundef %76, i32 noundef %68, ptr noundef nonnull %4) #12
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %75
  %80 = load i32, ptr %19, align 4
  %81 = load ptr, ptr %4, align 4
  %82 = getelementptr inbounds %struct.hda_codec, ptr %81, i32 0, i32 37
  store i32 %80, ptr %82, align 4
  %83 = load i32, ptr %20, align 4
  %84 = getelementptr inbounds %struct.hda_codec, ptr %81, i32 0, i32 13
  store i32 %83, ptr %84, align 8
  %85 = add i32 %67, 1
  br label %86

86:                                               ; preds = %79, %75
  %87 = phi i32 [ %85, %79 ], [ %67, %75 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %88

88:                                               ; preds = %86, %66
  %89 = phi i32 [ %87, %86 ], [ %67, %66 ]
  %90 = add nuw i32 %68, 1
  %91 = icmp eq i32 %90, %21
  br i1 %91, label %92, label %66

92:                                               ; preds = %88
  %93 = icmp eq i32 %89, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct.azx, ptr %0, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.snd_card, ptr %96, i32 0, i32 27
  %98 = load ptr, ptr %97, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.3) #13
  br label %99

99:                                               ; preds = %94, %92
  %100 = phi i32 [ -6, %94 ], [ 0, %92 ]
  ret i32 %100
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_codec_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @azx_codec_configure(ptr noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %31, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %13, %5 ], [ %3, %1 ]
  %7 = phi i32 [ %12, %5 ], [ 0, %1 ]
  %8 = getelementptr i8, ptr %6, i32 -484
  %9 = tail call i32 @snd_hda_codec_configure(ptr noundef %8) #12
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = add i32 %7, %11
  %13 = load ptr, ptr %6, align 4
  %14 = icmp eq ptr %13, %2
  br i1 %14, label %15, label %5

15:                                               ; preds = %5
  %16 = icmp eq i32 %12, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr %2, align 4
  %19 = icmp eq ptr %18, %2
  br i1 %19, label %31, label %20

20:                                               ; preds = %29, %17
  %21 = phi ptr [ %22, %29 ], [ %18, %17 ]
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %21, i32 500
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = getelementptr i8, ptr %21, i32 -484
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.4) #13
  tail call void @snd_hdac_device_unregister(ptr noundef %28) #12
  br label %29

29:                                               ; preds = %27, %20
  %30 = icmp eq ptr %22, %2
  br i1 %30, label %31, label %20

31:                                               ; preds = %29, %17, %15, %1
  %32 = phi i32 [ -19, %15 ], [ 0, %17 ], [ -19, %1 ], [ 0, %29 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_codec_configure(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @azx_init_streams(ptr noundef %0) #0 {
  %2 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store i64 0, ptr %2, align 8
  %3 = getelementptr inbounds %struct.azx, ptr %0, i32 0, i32 10
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %41

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.azx, ptr %0, i32 0, i32 9
  %8 = getelementptr inbounds %struct.azx, ptr %0, i32 0, i32 8
  %9 = getelementptr inbounds %struct.azx, ptr %0, i32 0, i32 5
  br label %10

10:                                               ; preds = %36, %6
  %11 = phi i32 [ 0, %6 ], [ %37, %36 ]
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 200) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %41, label %15

15:                                               ; preds = %10
  %16 = and i32 %11, 255
  %17 = load i32, ptr %7, align 4
  %18 = icmp sgt i32 %17, %16
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i32, ptr %8, align 4
  %21 = add i32 %20, %17
  %22 = icmp sgt i32 %21, %16
  br i1 %22, label %24, label %23

23:                                               ; preds = %19, %15
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i32 [ 0, %23 ], [ 1, %19 ]
  %26 = load i32, ptr %9, align 4
  %27 = and i32 %26, 1073741824
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = getelementptr [2 x i32], ptr %2, i32 0, i32 %25
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 4
  %33 = add nuw nsw i32 %11, 1
  br label %36

34:                                               ; preds = %24
  %35 = add nuw nsw i32 %11, 1
  br label %36

36:                                               ; preds = %34, %29
  %37 = phi i32 [ %35, %34 ], [ %33, %29 ]
  %38 = phi i32 [ %35, %34 ], [ %32, %29 ]
  tail call void @snd_hdac_stream_init(ptr noundef %0, ptr noundef nonnull %13, i32 noundef %11, i32 noundef %25, i32 noundef %38) #12
  %39 = load i32, ptr %3, align 4
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %10, label %41

41:                                               ; preds = %36, %10, %1
  %42 = phi i32 [ 0, %1 ], [ -12, %10 ], [ 0, %36 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret i32 %42
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_stream_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @azx_free_streams(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 27
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %14, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %12, %5 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -180
  %8 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  tail call void @kfree(ptr noundef %7) #12
  %12 = load volatile ptr, ptr %2, align 4
  %13 = icmp eq ptr %12, %2
  br i1 %13, label %14, label %5

14:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_azx_pcm_trigger(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #12
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_azx_pcm_trigger, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_azx_pcm_trigger, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_azx_pcm_trigger, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #12
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #12
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_azx_get_position(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #12
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_azx_get_position, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_azx_get_position, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_azx_get_position, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_azx_get_position, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #12
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #12
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_azx_pcm(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #12
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_azx_pcm, ptr %5, i32 0, i32 1
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %12) #12
  %13 = tail call i32 @trace_handle_return(ptr noundef %9) #12
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %13, %8 ], [ %6, %3 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @azx_pcm_open(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.azx_pcm, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr %struct.hda_pcm, ptr %5, i32 0, i32 1, i32 %7
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.hda_pcm, ptr %5, i32 0, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.hda_codec, ptr %13, i32 0, i32 9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #12, !srcloc !28
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #12, !srcloc !29
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18, !prof !11

18:                                               ; preds = %1
  %19 = add i32 %16, 1
  %20 = or i32 %19, %16
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %24, label %22, !prof !10

22:                                               ; preds = %18, %1
  %23 = phi i32 [ 2, %1 ], [ 1, %18 ]
  tail call void @refcount_warn_saturate(ptr noundef %14, i32 noundef %23) #12
  br label %24

24:                                               ; preds = %22, %18
  %25 = getelementptr inbounds %struct.azx, ptr %9, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %25) #12
  %26 = tail call ptr @snd_hdac_stream_assign(ptr noundef %9, ptr noundef %0) #12
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_azx_pcm_open, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %24
  %30 = tail call ptr @llvm.thread.pointer() #12
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 5
  %34 = getelementptr i32, ptr @__cpu_online_mask, i32 %33
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %32, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %29
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !30
  %41 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_azx_pcm_open, i32 0, i32 7), align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %43, %40
  %44 = phi ptr [ %48, %43 ], [ %41, %40 ]
  %45 = load volatile ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.tracepoint_func, ptr %44, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  tail call void %45(ptr noundef %47, ptr noundef %9, ptr noundef %26) #12
  %48 = getelementptr %struct.tracepoint_func, ptr %44, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %43

51:                                               ; preds = %43, %40
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !31
  br label %52

52:                                               ; preds = %51, %29, %24
  %53 = icmp eq ptr %26, null
  br i1 %53, label %127, label %54

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 44
  store ptr %26, ptr %55, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 46
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(64) %56, ptr noundef nonnull align 8 dereferenceable(64) @azx_pcm_hw, i32 64, i1 false)
  %57 = getelementptr inbounds %struct.azx, ptr %9, i32 0, i32 21
  %58 = load i16, ptr %57, align 4
  %59 = and i16 %58, 1024
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  store i32 164167939, ptr %56, align 8
  br label %62

62:                                               ; preds = %61, %54
  %63 = getelementptr %struct.hda_pcm, ptr %5, i32 0, i32 1, i32 %7, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 46, i32 5
  store i32 %64, ptr %65, align 4
  %66 = getelementptr %struct.hda_pcm, ptr %5, i32 0, i32 1, i32 %7, i32 2
  %67 = load i32, ptr %66, align 8
  %68 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 46, i32 6
  store i32 %67, ptr %68, align 8
  %69 = getelementptr %struct.hda_pcm, ptr %5, i32 0, i32 1, i32 %7, i32 5
  %70 = load i64, ptr %69, align 8
  %71 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 46, i32 1
  store i64 %70, ptr %71, align 8
  %72 = getelementptr %struct.hda_pcm, ptr %5, i32 0, i32 1, i32 %7, i32 4
  %73 = load i32, ptr %72, align 8
  %74 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 46, i32 2
  store i32 %73, ptr %74, align 8
  %75 = tail call i32 @snd_pcm_hw_limit_rates(ptr noundef %56) #12
  %76 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %11, i32 noundef 15) #12
  %77 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %11, i32 noundef 16, i32 noundef 20, i32 noundef 178000000) #12
  %78 = load i16, ptr %57, align 4
  %79 = and i16 %78, 128
  %80 = icmp eq i16 %79, 0
  %81 = select i1 %80, i32 4, i32 128
  %82 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %11, i32 noundef 0, i32 noundef 18, i32 noundef %81) #12
  %83 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %11, i32 noundef 0, i32 noundef 14, i32 noundef %81) #12
  %84 = getelementptr inbounds %struct.azx_pcm, ptr %3, i32 0, i32 2
  %85 = load ptr, ptr %84, align 4
  %86 = tail call i32 @snd_hdac_power_up(ptr noundef %85) #12
  %87 = getelementptr %struct.hda_pcm, ptr %5, i32 0, i32 1, i32 %7, i32 8
  %88 = load ptr, ptr %87, align 8
  %89 = icmp eq ptr %88, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %62
  %91 = load ptr, ptr %84, align 4
  %92 = tail call i32 %88(ptr noundef %8, ptr noundef %91, ptr noundef %0) #12
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %90, %62
  %95 = phi i32 [ %92, %90 ], [ -19, %62 ]
  tail call void @snd_hdac_stream_release(ptr noundef nonnull %26) #12
  br label %123

96:                                               ; preds = %90
  %97 = tail call i32 @snd_pcm_hw_limit_rates(ptr noundef %56) #12
  %98 = load i32, ptr %65, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %96
  %101 = load i32, ptr %68, align 8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %100
  %104 = load i64, ptr %71, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load i32, ptr %74, align 8
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %106, %103, %100, %96
  tail call void @snd_hdac_stream_release(ptr noundef nonnull %26) #12
  %110 = getelementptr %struct.hda_pcm, ptr %5, i32 0, i32 1, i32 %7, i32 8, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %123, label %113

113:                                              ; preds = %109
  %114 = load ptr, ptr %84, align 4
  %115 = tail call i32 %111(ptr noundef %8, ptr noundef %114, ptr noundef %0) #12
  br label %123

116:                                              ; preds = %106
  %117 = load i32, ptr %6, align 4
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i32, ptr %56, align 8
  %121 = and i32 %120, -16777217
  store i32 %121, ptr %56, align 8
  br label %122

122:                                              ; preds = %119, %116
  tail call void @snd_pcm_set_sync(ptr noundef %0) #12
  tail call void @mutex_unlock(ptr noundef %25) #12
  br label %130

123:                                              ; preds = %113, %109, %94
  %124 = phi i32 [ %95, %94 ], [ -22, %113 ], [ -22, %109 ]
  %125 = load ptr, ptr %84, align 4
  %126 = tail call i32 @snd_hdac_power_down(ptr noundef %125) #12
  br label %127

127:                                              ; preds = %123, %52
  %128 = phi i32 [ %124, %123 ], [ -16, %52 ]
  tail call void @mutex_unlock(ptr noundef %25) #12
  %129 = load ptr, ptr %4, align 4
  tail call void @snd_hda_codec_pcm_put(ptr noundef %129) #12
  br label %130

130:                                              ; preds = %127, %122
  %131 = phi i32 [ %128, %127 ], [ 0, %122 ]
  ret i32 %131
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @azx_pcm_close(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.azx_pcm, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr %struct.hda_pcm, ptr %5, i32 0, i32 1, i32 %7
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 44
  %13 = load ptr, ptr %12, align 8
  %14 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_azx_pcm_close, i32 0, i32 1), align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %1
  %17 = tail call ptr @llvm.thread.pointer() #12
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = lshr i32 %19, 5
  %21 = getelementptr i32, ptr @__cpu_online_mask, i32 %20
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %19, 31
  %24 = shl nuw i32 1, %23
  %25 = and i32 %24, %22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %16
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !32
  %28 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_azx_pcm_close, i32 0, i32 7), align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %30, %27
  %31 = phi ptr [ %35, %30 ], [ %28, %27 ]
  %32 = load volatile ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.tracepoint_func, ptr %31, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  tail call void %32(ptr noundef %34, ptr noundef %9, ptr noundef %13) #12
  %35 = getelementptr %struct.tracepoint_func, ptr %31, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %30

38:                                               ; preds = %30, %27
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !33
  br label %39

39:                                               ; preds = %38, %16, %1
  %40 = getelementptr inbounds %struct.azx, ptr %9, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %40) #12
  tail call void @snd_hdac_stream_release(ptr noundef %13) #12
  %41 = getelementptr %struct.hda_pcm, ptr %5, i32 0, i32 1, i32 %7, i32 8, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.azx_pcm, ptr %3, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 %42(ptr noundef %8, ptr noundef %46, ptr noundef %0) #12
  br label %48

48:                                               ; preds = %44, %39
  %49 = getelementptr inbounds %struct.azx_pcm, ptr %3, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 @snd_hdac_power_down(ptr noundef %50) #12
  tail call void @mutex_unlock(ptr noundef %40) #12
  %52 = load ptr, ptr %4, align 4
  tail call void @snd_hda_codec_pcm_put(ptr noundef %52) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @azx_pcm_hw_params(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 44
  %9 = load ptr, ptr %8, align 8
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_azx_pcm_hw_params, i32 0, i32 1), align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %2
  %13 = tail call ptr @llvm.thread.pointer() #12
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 5
  %17 = getelementptr i32, ptr @__cpu_online_mask, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %15, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, %18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !34
  %24 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_azx_pcm_hw_params, i32 0, i32 7), align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %26, %23
  %27 = phi ptr [ %31, %26 ], [ %24, %23 ]
  %28 = load volatile ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.tracepoint_func, ptr %27, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  tail call void %28(ptr noundef %30, ptr noundef %5, ptr noundef %9) #12
  %31 = getelementptr %struct.tracepoint_func, ptr %27, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %26

34:                                               ; preds = %26, %23
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !35
  br label %35

35:                                               ; preds = %34, %12, %2
  %36 = getelementptr inbounds %struct.hdac_stream, ptr %9, i32 0, i32 4
  store i32 0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.hdac_stream, ptr %9, i32 0, i32 5
  store i32 0, ptr %37, align 8
  %38 = getelementptr inbounds %struct.hdac_stream, ptr %9, i32 0, i32 12
  store i32 0, ptr %38, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @azx_pcm_hw_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 44
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.azx_pcm, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr %struct.hda_pcm, ptr %9, i32 0, i32 1, i32 %11
  tail call void @snd_hdac_stream_cleanup(ptr noundef %7) #12
  %13 = getelementptr inbounds %struct.azx_pcm, ptr %3, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  tail call void @snd_hda_codec_cleanup(ptr noundef %14, ptr noundef %12, ptr noundef %0) #12
  %15 = getelementptr inbounds %struct.hdac_stream, ptr %7, i32 0, i32 16
  %16 = load i8, ptr %15, align 8
  %17 = and i8 %16, -5
  store i8 %17, ptr %15, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @azx_pcm_prepare(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 44
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.azx_pcm, ptr %3, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr %struct.hda_pcm, ptr %10, i32 0, i32 1, i32 %12
  %14 = getelementptr inbounds %struct.azx_pcm, ptr %3, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr %struct.hda_pcm, ptr %10, i32 0, i32 1, i32 %12, i32 3
  %17 = load i16, ptr %16, align 4
  %18 = tail call ptr @snd_hda_spdif_out_of_nid(ptr noundef %15, i16 noundef zeroext %17) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.hda_spdif_out, ptr %18, i32 0, i32 2
  %22 = load i16, ptr %21, align 4
  br label %23

23:                                               ; preds = %20, %1
  %24 = phi i16 [ %22, %20 ], [ 0, %1 ]
  %25 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_azx_pcm_prepare, i32 0, i32 1), align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %23
  %28 = tail call ptr @llvm.thread.pointer() #12
  %29 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %30 = load i32, ptr %29, align 8
  %31 = lshr i32 %30, 5
  %32 = getelementptr i32, ptr @__cpu_online_mask, i32 %31
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %30, 31
  %35 = shl nuw i32 1, %34
  %36 = and i32 %35, %33
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %27
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !36
  %39 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_azx_pcm_prepare, i32 0, i32 7), align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %41, %38
  %42 = phi ptr [ %46, %41 ], [ %39, %38 ]
  %43 = load volatile ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.tracepoint_func, ptr %42, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  tail call void %43(ptr noundef %45, ptr noundef %4, ptr noundef %8) #12
  %46 = getelementptr %struct.tracepoint_func, ptr %42, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %41

49:                                               ; preds = %41, %38
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !37
  br label %50

50:                                               ; preds = %49, %27, %23
  tail call void @snd_hdac_stream_reset(ptr noundef %8) #12
  %51 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 14
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 15
  %54 = load i32, ptr %53, align 8
  %55 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 12
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr %struct.hda_pcm, ptr %10, i32 0, i32 1, i32 %12, i32 6
  %58 = load i32, ptr %57, align 8
  %59 = tail call i32 @snd_hdac_calc_stream_format(i32 noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef %58, i16 noundef zeroext %24) #12
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.azx, ptr %4, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.snd_card, ptr %63, i32 0, i32 27
  %65 = load ptr, ptr %64, align 8
  %66 = load i32, ptr %51, align 4
  %67 = load i32, ptr %53, align 8
  %68 = load i32, ptr %55, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.18, i32 noundef %66, i32 noundef %67, i32 noundef %68) #13
  br label %98

69:                                               ; preds = %50
  %70 = tail call i32 @snd_hdac_stream_set_params(ptr noundef %8, i32 noundef %59) #12
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %98, label %72

72:                                               ; preds = %69
  %73 = tail call i32 @snd_hdac_stream_setup(ptr noundef %8) #12
  %74 = getelementptr inbounds %struct.hdac_stream, ptr %8, i32 0, i32 13
  %75 = load i8, ptr %74, align 8
  %76 = zext i8 %75 to i32
  %77 = getelementptr inbounds %struct.azx, ptr %4, i32 0, i32 5
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 32768
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %72
  %82 = getelementptr inbounds %struct.azx, ptr %4, i32 0, i32 8
  %83 = load i32, ptr %82, align 4
  %84 = icmp ult i32 %83, %76
  %85 = select i1 %84, i32 %83, i32 0
  %86 = sub i32 %76, %85
  br label %87

87:                                               ; preds = %81, %72
  %88 = phi i32 [ %76, %72 ], [ %86, %81 ]
  %89 = load ptr, ptr %14, align 4
  %90 = getelementptr inbounds %struct.hdac_stream, ptr %8, i32 0, i32 12
  %91 = load i32, ptr %90, align 4
  %92 = tail call i32 @snd_hda_codec_prepare(ptr noundef %89, ptr noundef %13, i32 noundef %88, i32 noundef %91, ptr noundef %0) #12
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.hdac_stream, ptr %8, i32 0, i32 16
  %96 = load i8, ptr %95, align 8
  %97 = or i8 %96, 4
  store i8 %97, ptr %95, align 8
  br label %98

98:                                               ; preds = %94, %87, %69, %61
  %99 = phi i32 [ %92, %87 ], [ 0, %94 ], [ -22, %61 ], [ %70, %69 ]
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @azx_pcm_trigger(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 44
  %9 = load ptr, ptr %8, align 8
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_azx_pcm_trigger, i32 0, i32 1), align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %2
  %13 = tail call ptr @llvm.thread.pointer() #12
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 5
  %17 = getelementptr i32, ptr @__cpu_online_mask, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %15, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, %18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !38
  %24 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_azx_pcm_trigger, i32 0, i32 7), align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %26, %23
  %27 = phi ptr [ %31, %26 ], [ %24, %23 ]
  %28 = load volatile ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.tracepoint_func, ptr %27, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  tail call void %28(ptr noundef %30, ptr noundef %5, ptr noundef %9, i32 noundef %1) #12
  %31 = getelementptr %struct.tracepoint_func, ptr %27, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %26

34:                                               ; preds = %26, %23
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !39
  br label %35

35:                                               ; preds = %34, %12, %2
  %36 = getelementptr inbounds %struct.azx, ptr %5, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 1048576
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 56, i32 52
  %41 = getelementptr inbounds %struct.hdac_stream, ptr %9, i32 0, i32 16
  %42 = load i8, ptr %41, align 8
  %43 = and i8 %42, 4
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %126, label %45

45:                                               ; preds = %35
  %46 = icmp ult i32 %1, 7
  br i1 %46, label %47, label %126

47:                                               ; preds = %45
  %48 = trunc i32 %1 to i8
  %49 = lshr i8 123, %48
  %50 = and i8 %49, 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %126, label %52

52:                                               ; preds = %47
  %53 = trunc i32 %1 to i7
  %54 = lshr i7 -42, %53
  %55 = and i7 %54, 1
  %56 = icmp ne i7 %55, 0
  %57 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 18
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.snd_pcm_group, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, %59
  br i1 %61, label %89, label %62

62:                                               ; preds = %83, %52
  %63 = phi ptr [ %84, %83 ], [ %58, %52 ]
  %64 = phi ptr [ %86, %83 ], [ %60, %52 ]
  %65 = phi i32 [ %85, %83 ], [ 0, %52 ]
  %66 = getelementptr i8, ptr %64, i32 -140
  %67 = load ptr, ptr %66, align 4
  %68 = load ptr, ptr %67, align 8
  %69 = load ptr, ptr %0, align 4
  %70 = load ptr, ptr %69, align 8
  %71 = icmp eq ptr %68, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %62
  %73 = getelementptr i8, ptr %64, i32 -20
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %74, i32 0, i32 44
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds %struct.hdac_stream, ptr %76, i32 0, i32 14
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i32
  %80 = shl nuw i32 1, %79
  %81 = or i32 %80, %65
  store ptr %0, ptr %74, align 8
  %82 = load ptr, ptr %57, align 4
  br label %83

83:                                               ; preds = %72, %62
  %84 = phi ptr [ %63, %62 ], [ %82, %72 ]
  %85 = phi i32 [ %65, %62 ], [ %81, %72 ]
  %86 = load ptr, ptr %64, align 4
  %87 = getelementptr inbounds %struct.snd_pcm_group, ptr %84, i32 0, i32 2
  %88 = icmp eq ptr %86, %87
  br i1 %88, label %89, label %62

89:                                               ; preds = %83, %52
  %90 = phi i32 [ 0, %52 ], [ %85, %83 ]
  %91 = getelementptr inbounds %struct.hdac_bus, ptr %5, i32 0, i32 32
  tail call void @_raw_spin_lock(ptr noundef %91) #12
  tail call void @snd_hdac_stream_sync_trigger(ptr noundef %9, i1 noundef zeroext true, i32 noundef %90, i32 noundef %40) #12
  %92 = load ptr, ptr %57, align 4
  %93 = getelementptr inbounds %struct.snd_pcm_group, ptr %92, i32 0, i32 2
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, %93
  br i1 %95, label %119, label %96

96:                                               ; preds = %114, %89
  %97 = phi ptr [ %115, %114 ], [ %94, %89 ]
  %98 = getelementptr i8, ptr %97, i32 -140
  %99 = load ptr, ptr %98, align 4
  %100 = load ptr, ptr %99, align 8
  %101 = load ptr, ptr %0, align 4
  %102 = load ptr, ptr %101, align 8
  %103 = icmp eq ptr %100, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %96
  %105 = getelementptr i8, ptr %97, i32 -20
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %106, i32 0, i32 44
  %108 = load ptr, ptr %107, align 8
  br i1 %56, label %109, label %113

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.azx_dev, ptr %108, i32 0, i32 1
  %111 = load i8, ptr %110, align 8
  %112 = or i8 %111, 2
  store i8 %112, ptr %110, align 8
  tail call void @snd_hdac_stream_start(ptr noundef %108, i1 noundef zeroext true) #12
  br label %114

113:                                              ; preds = %104
  tail call void @snd_hdac_stream_stop(ptr noundef %108) #12
  br label %114

114:                                              ; preds = %113, %109, %96
  %115 = load ptr, ptr %97, align 4
  %116 = load ptr, ptr %57, align 4
  %117 = getelementptr inbounds %struct.snd_pcm_group, ptr %116, i32 0, i32 2
  %118 = icmp eq ptr %115, %117
  br i1 %118, label %119, label %96

119:                                              ; preds = %114, %89
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !24
  %120 = load i16, ptr %91, align 4
  %121 = add i16 %120, 1
  store i16 %121, ptr %91, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !27
  tail call void @snd_hdac_stream_sync(ptr noundef %9, i1 noundef zeroext %56, i32 noundef %90) #12
  tail call void @_raw_spin_lock(ptr noundef %91) #12
  tail call void @snd_hdac_stream_sync_trigger(ptr noundef %9, i1 noundef zeroext false, i32 noundef %90, i32 noundef %40) #12
  br i1 %56, label %122, label %123

122:                                              ; preds = %119
  tail call void @snd_hdac_stream_timecounter_init(ptr noundef %9, i32 noundef %90) #12
  br label %123

123:                                              ; preds = %122, %119
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !24
  %124 = load i16, ptr %91, align 4
  %125 = add i16 %124, 1
  store i16 %125, ptr %91, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !27
  br label %126

126:                                              ; preds = %123, %47, %45, %35
  %127 = phi i32 [ 0, %123 ], [ -32, %35 ], [ -22, %45 ], [ -22, %47 ]
  ret i32 %127
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @azx_pcm_pointer(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 44
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @azx_get_position(ptr noundef %4, ptr noundef %8)
  %10 = shl i32 %9, 3
  %11 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 21
  %12 = load i32, ptr %11, align 8
  %13 = udiv i32 %10, %12
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @azx_get_time_info(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4) #0 {
  %6 = alloca %struct.system_device_crosststamp, align 8
  %7 = alloca %struct.timespec64, align 8
  %8 = alloca %struct.timespec64, align 8
  %9 = alloca %struct.timespec64, align 8
  %10 = alloca %struct.timespec64, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %12, i32 0, i32 44
  %14 = load ptr, ptr %13, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !9
  %15 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %12, i32 0, i32 46
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 16777216
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %77, label %19

19:                                               ; preds = %5
  %20 = load i8, ptr %3, align 4
  %21 = and i8 %20, 15
  %22 = icmp eq i8 %21, 2
  br i1 %22, label %23, label %77

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %12, i32 0, i32 49
  %25 = load i32, ptr %24, align 8
  switch i32 %25, label %28 [
    i32 1, label %26
    i32 2, label %27
  ]

26:                                               ; preds = %23
  tail call void @ktime_get_ts64(ptr noundef %1) #12
  br label %29

27:                                               ; preds = %23
  tail call void @ktime_get_raw_ts64(ptr noundef %1) #12
  br label %29

28:                                               ; preds = %23
  tail call void @ktime_get_real_ts64(ptr noundef %1) #12
  br label %29

29:                                               ; preds = %28, %27, %26
  %30 = getelementptr inbounds %struct.hdac_stream, ptr %14, i32 0, i32 20
  %31 = tail call i64 @timecounter_read(ptr noundef %30) #12
  %32 = load i8, ptr %3, align 4
  %33 = and i8 %32, 16
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %71, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.azx_pcm, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr %struct.hda_pcm, ptr %39, i32 0, i32 1, i32 %41, i32 8, i32 4
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %71, label %45

45:                                               ; preds = %35
  %46 = getelementptr %struct.hda_pcm, ptr %39, i32 0, i32 1, i32 %41
  %47 = getelementptr inbounds %struct.azx_pcm, ptr %37, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 %43(ptr noundef %46, ptr noundef %48, ptr noundef %0) #12
  %50 = zext i32 %49 to i64
  %51 = mul nuw nsw i64 %50, 1000000000
  %52 = load ptr, ptr %11, align 4
  %53 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %52, i32 0, i32 14
  %54 = load i32, ptr %53, align 4
  %55 = icmp ult i64 %51, 4294967296
  br i1 %55, label %56, label %60, !prof !10

56:                                               ; preds = %45
  %57 = trunc i64 %51 to i32
  %58 = udiv i32 %57, %54
  %59 = zext i32 %58 to i64
  br label %63

60:                                               ; preds = %45
  %61 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %54, i64 %51) #15, !srcloc !40
  %62 = extractvalue { i64, i64 } %61, 1
  br label %63

63:                                               ; preds = %60, %56
  %64 = phi i64 [ %59, %56 ], [ %62, %60 ]
  %65 = load i32, ptr %40, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = add i64 %64, %31
  br label %71

69:                                               ; preds = %63
  %70 = tail call i64 @llvm.usub.sat.i64(i64 %31, i64 %64) #12
  br label %71

71:                                               ; preds = %69, %67, %35, %29
  %72 = phi i64 [ %31, %29 ], [ %68, %67 ], [ %70, %69 ], [ %31, %35 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #12
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %7, i64 noundef %72) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #12
  %73 = load i8, ptr %4, align 4
  %74 = and i8 %73, -63
  %75 = or i8 %74, 36
  store i8 %75, ptr %4, align 4
  %76 = getelementptr inbounds %struct.snd_pcm_audio_tstamp_report, ptr %4, i32 0, i32 1
  store i32 42, ptr %76, align 4
  br label %106

77:                                               ; preds = %19, %5
  %78 = and i32 %16, 134217728
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %102, label %80

80:                                               ; preds = %77
  %81 = load i8, ptr %3, align 4
  %82 = and i8 %81, 15
  %83 = icmp eq i8 %82, 5
  br i1 %83, label %84, label %102

84:                                               ; preds = %80
  %85 = call i32 @get_device_system_crosststamp(ptr noundef nonnull @azx_get_sync_time, ptr noundef %0, ptr noundef null, ptr noundef nonnull %6) #12
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %106

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %12, i32 0, i32 49
  %89 = load i32, ptr %88, align 8
  switch i32 %89, label %93 [
    i32 1, label %106
    i32 2, label %90
  ]

90:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #12
  %91 = getelementptr inbounds %struct.system_device_crosststamp, ptr %6, i32 0, i32 2
  %92 = load i64, ptr %91, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %8, i64 noundef %92) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #12
  br label %96

93:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #12
  %94 = getelementptr inbounds %struct.system_device_crosststamp, ptr %6, i32 0, i32 1
  %95 = load i64, ptr %94, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %9, i64 noundef %95) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %9, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #12
  br label %96

96:                                               ; preds = %93, %90
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #12
  %97 = load i64, ptr %6, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %10, i64 noundef %97) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %10, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #12
  %98 = load i8, ptr %4, align 4
  %99 = and i8 %98, -63
  %100 = or i8 %99, 42
  store i8 %100, ptr %4, align 4
  %101 = getelementptr inbounds %struct.snd_pcm_audio_tstamp_report, ptr %4, i32 0, i32 1
  store i32 42, ptr %101, align 4
  br label %106

102:                                              ; preds = %80, %77
  %103 = load i8, ptr %4, align 4
  %104 = and i8 %103, -31
  %105 = or i8 %104, 2
  store i8 %105, ptr %4, align 4
  br label %106

106:                                              ; preds = %102, %96, %87, %84, %71
  %107 = phi i32 [ %85, %84 ], [ -22, %87 ], [ 0, %96 ], [ 0, %102 ], [ 0, %71 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #12
  ret i32 %107
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_power_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_power_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_codec_pcm_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_hdac_stream_assign(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_limit_rates(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_stream_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_stream_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_codec_cleanup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_hda_spdif_out_of_nid(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_stream_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_calc_stream_format(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_stream_set_params(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_stream_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_codec_prepare(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_stream_sync_trigger(ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_stream_start(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_stream_sync(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_stream_timecounter_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_raw_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_device_system_crosststamp(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @azx_get_sync_time(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #10 {
  ret i32 -6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_aligned_write(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_aligned_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @azx_send_cmd(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.azx, ptr %0, i32 0, i32 21
  %4 = load i16, ptr %3, align 4
  %5 = and i16 %4, 256
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %116

7:                                                ; preds = %2
  %8 = and i16 %4, 4
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %114, label %10

10:                                               ; preds = %7
  %11 = lshr i32 %1, 28
  %12 = icmp slt i32 %1, 0
  %13 = select i1 %12, i32 0, i32 %11
  %14 = getelementptr %struct.hdac_bus, ptr %0, i32 0, i32 22, i32 %13
  store i32 %1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 4
  %16 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 28
  br label %17

17:                                               ; preds = %108, %10
  %18 = phi i32 [ 49, %10 ], [ %110, %108 ]
  %19 = load ptr, ptr %15, align 4
  %20 = getelementptr i8, ptr %19, i32 104
  %21 = load i16, ptr %16, align 4
  %22 = and i16 %21, 2
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = tail call i32 @snd_hdac_aligned_read(ptr noundef %20, i32 noundef 65535) #12
  br label %29

26:                                               ; preds = %17
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %20) #12, !srcloc !41
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !42
  %28 = zext i16 %27 to i32
  br label %29

29:                                               ; preds = %26, %24
  %30 = phi i32 [ %25, %24 ], [ %28, %26 ]
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %108

33:                                               ; preds = %29
  %34 = load ptr, ptr %15, align 4
  %35 = getelementptr i8, ptr %34, i32 104
  %36 = load i16, ptr %16, align 4
  %37 = and i16 %36, 2
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = tail call i32 @snd_hdac_aligned_read(ptr noundef %35, i32 noundef 65535) #12
  br label %44

41:                                               ; preds = %33
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %35) #12, !srcloc !41
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !42
  %43 = zext i16 %42 to i32
  br label %44

44:                                               ; preds = %41, %39
  %45 = phi i32 [ %40, %39 ], [ %43, %41 ]
  %46 = trunc i32 %45 to i16
  %47 = or i16 %46, 2
  %48 = load i16, ptr %16, align 4
  %49 = and i16 %48, 2
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %44
  %52 = zext i16 %47 to i32
  tail call void @snd_hdac_aligned_write(i32 noundef %52, ptr noundef %35, i32 noundef 65535) #12
  br label %54

53:                                               ; preds = %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !17
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %35, i16 %47) #12, !srcloc !18
  br label %54

54:                                               ; preds = %53, %51
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !43
  tail call void @arm_heavy_mb() #12
  %55 = load ptr, ptr %15, align 4
  %56 = getelementptr i8, ptr %55, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %1) #12, !srcloc !44
  %57 = load ptr, ptr %15, align 4
  %58 = getelementptr i8, ptr %57, i32 104
  %59 = load i16, ptr %16, align 4
  %60 = and i16 %59, 2
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %54
  %63 = tail call i32 @snd_hdac_aligned_read(ptr noundef %58, i32 noundef 65535) #12
  br label %67

64:                                               ; preds = %54
  %65 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %58) #12, !srcloc !41
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !42
  %66 = zext i16 %65 to i32
  br label %67

67:                                               ; preds = %64, %62
  %68 = phi i32 [ %63, %62 ], [ %66, %64 ]
  %69 = trunc i32 %68 to i16
  %70 = or i16 %69, 1
  %71 = load i16, ptr %16, align 4
  %72 = and i16 %71, 2
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %67
  %75 = zext i16 %70 to i32
  tail call void @snd_hdac_aligned_write(i32 noundef %75, ptr noundef %58, i32 noundef 65535) #12
  br label %77

76:                                               ; preds = %67
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !17
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %58, i16 %70) #12, !srcloc !18
  br label %77

77:                                               ; preds = %76, %74
  br label %78

78:                                               ; preds = %98, %77
  %79 = phi i32 [ %100, %98 ], [ 49, %77 ]
  %80 = load ptr, ptr %15, align 4
  %81 = getelementptr i8, ptr %80, i32 104
  %82 = load i16, ptr %16, align 4
  %83 = and i16 %82, 2
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %78
  %86 = tail call i32 @snd_hdac_aligned_read(ptr noundef %81, i32 noundef 65535) #12
  br label %90

87:                                               ; preds = %78
  %88 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %81) #12, !srcloc !41
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !42
  %89 = zext i16 %88 to i32
  br label %90

90:                                               ; preds = %87, %85
  %91 = phi i32 [ %86, %85 ], [ %89, %87 ]
  %92 = and i32 %91, 2
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = load ptr, ptr %15, align 4
  %96 = getelementptr i8, ptr %95, i32 100
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #12, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !45
  br label %104

98:                                               ; preds = %90
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %99(i32 noundef 214748) #12
  %100 = add nsw i32 %79, -1
  %101 = icmp eq i32 %79, 0
  br i1 %101, label %102, label %78

102:                                              ; preds = %98
  %103 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.azx_single_wait_for_response) #12
  br label %104

104:                                              ; preds = %102, %94
  %105 = phi i32 [ -1, %102 ], [ %97, %94 ]
  %106 = phi i32 [ -5, %102 ], [ 0, %94 ]
  %107 = getelementptr %struct.hdac_bus, ptr %0, i32 0, i32 21, i32 5, i32 %13
  store i32 %105, ptr %107, align 4
  br label %116

108:                                              ; preds = %29
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %109(i32 noundef 214748) #12
  %110 = add nsw i32 %18, -1
  %111 = icmp eq i32 %18, 0
  br i1 %111, label %112, label %17

112:                                              ; preds = %108
  %113 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.azx_single_send_cmd) #12
  br label %116

114:                                              ; preds = %7
  %115 = tail call i32 @snd_hdac_bus_send_cmd(ptr noundef %0, i32 noundef %1) #12
  br label %116

116:                                              ; preds = %114, %112, %104, %2
  %117 = phi i32 [ %115, %114 ], [ 0, %2 ], [ %106, %104 ], [ -5, %112 ]
  ret i32 %117
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @azx_get_response(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.azx, ptr %0, i32 0, i32 21
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 256
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %79

8:                                                ; preds = %3
  %9 = and i16 %5, 4
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = icmp eq ptr %2, null
  br i1 %12, label %79, label %13

13:                                               ; preds = %11
  %14 = getelementptr %struct.hdac_bus, ptr %0, i32 0, i32 21, i32 5, i32 %1
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %2, align 4
  br label %79

16:                                               ; preds = %8
  %17 = tail call i32 @snd_hdac_bus_get_response(ptr noundef %0, i32 noundef %1, ptr noundef %2) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %79, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.hda_bus, ptr %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 28
  %22 = getelementptr inbounds %struct.azx, ptr %0, i32 0, i32 1
  %23 = getelementptr %struct.hdac_bus, ptr %0, i32 0, i32 22, i32 %1
  %24 = getelementptr inbounds %struct.azx, ptr %0, i32 0, i32 12
  br label %25

25:                                               ; preds = %40, %19
  %26 = load i8, ptr %20, align 4
  %27 = and i8 %26, 16
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %79

29:                                               ; preds = %25
  %30 = load i16, ptr %21, align 4
  %31 = and i16 %30, 256
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load ptr, ptr %22, align 4
  %35 = getelementptr inbounds %struct.snd_card, ptr %34, i32 0, i32 27
  %36 = load ptr, ptr %35, align 8
  %37 = load i32, ptr %23, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.19, i32 noundef %37) #13
  %38 = load i16, ptr %21, align 4
  %39 = or i16 %38, 256
  store i16 %39, ptr %21, align 4
  br label %40

40:                                               ; preds = %55, %47, %33
  %41 = tail call i32 @snd_hdac_bus_get_response(ptr noundef %0, i32 noundef %1, ptr noundef %2) #12
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %79, label %25

43:                                               ; preds = %29
  %44 = load i16, ptr %4, align 4
  %45 = and i16 %44, 8
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %22, align 4
  %49 = getelementptr inbounds %struct.snd_card, ptr %48, i32 0, i32 27
  %50 = load ptr, ptr %49, align 8
  %51 = load i32, ptr %23, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.20, i32 noundef %51) #13
  %52 = load ptr, ptr %24, align 4
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %40, label %55

55:                                               ; preds = %47
  %56 = tail call i32 %53(ptr noundef %0) #12
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %79, label %40

58:                                               ; preds = %43
  %59 = and i16 %44, 18
  %60 = icmp eq i16 %59, 2
  br i1 %60, label %61, label %79

61:                                               ; preds = %58
  %62 = and i8 %26, 13
  %63 = icmp eq i8 %62, 1
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = or i8 %26, 4
  store i8 %65, ptr %20, align 4
  %66 = load ptr, ptr %22, align 4
  %67 = getelementptr inbounds %struct.snd_card, ptr %66, i32 0, i32 27
  %68 = load ptr, ptr %67, align 8
  %69 = load i32, ptr %23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.21, i32 noundef %69) #13
  br label %79

70:                                               ; preds = %61
  %71 = load ptr, ptr %22, align 4
  %72 = getelementptr inbounds %struct.snd_card, ptr %71, i32 0, i32 27
  %73 = load ptr, ptr %72, align 8
  %74 = load i32, ptr %23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.22, i32 noundef %74) #13
  %75 = load i16, ptr %4, align 4
  %76 = or i16 %75, 4
  store i16 %76, ptr %4, align 4
  %77 = load i8, ptr %20, align 4
  %78 = and i8 %77, -5
  store i8 %78, ptr %20, align 4
  tail call void @snd_hdac_bus_stop_cmd_io(ptr noundef %0) #12
  br label %79

79:                                               ; preds = %70, %64, %58, %55, %40, %25, %16, %13, %11, %3
  %80 = phi i32 [ 0, %3 ], [ 0, %11 ], [ 0, %13 ], [ -5, %70 ], [ -11, %64 ], [ -5, %58 ], [ 0, %16 ], [ -5, %55 ], [ -5, %25 ], [ 0, %40 ]
  ret i32 %80
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_bus_send_cmd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_bus_get_response(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_bus_stop_cmd_io(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 372831}
!13 = !{i64 2822918}
!14 = !{i64 2153349638}
!15 = !{i64 2153472033}
!16 = !{i64 2153472219}
!17 = !{i64 2153249019}
!18 = !{i64 2821880}
!19 = !{i64 2154629345}
!20 = !{i64 2822698}
!21 = !{i64 2153249505}
!22 = !{i64 2153248612}
!23 = !{i64 2822303}
!24 = !{i64 2148951634}
!25 = !{i64 2148947458}
!26 = !{i64 2148947533, i64 2148947560, i64 2148947607, i64 2148947629, i64 2148947657, i64 2148947677}
!27 = !{i64 2148974637}
!28 = !{i64 458892, i64 2147948863, i64 2147948889, i64 2147948936, i64 2147948958, i64 2147948986, i64 2147949006}
!29 = !{i64 2147961736, i64 2147961768, i64 2147961797, i64 2147961831, i64 2147961862, i64 2147961885}
!30 = !{i64 2153484989}
!31 = !{i64 2153485151}
!32 = !{i64 2153497783}
!33 = !{i64 2153497947}
!34 = !{i64 2153510775}
!35 = !{i64 2153510947}
!36 = !{i64 2153527936}
!37 = !{i64 2153528104}
!38 = !{i64 2153458437}
!39 = !{i64 2153458607}
!40 = !{i64 2147757120, i64 2147757400, i64 2147757734, i64 2147758068}
!41 = !{i64 2822080}
!42 = !{i64 2153249993}
!43 = !{i64 2154613994}
!44 = !{i64 2822500}
!45 = !{i64 2154609579}
