; ModuleID = '/llk/IR/sound/core/pcm_lib.c_pt.bc'
source_filename = "../sound/core/pcm_lib.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_set_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_set_ops\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_set_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_set_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_set_sync\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_set_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_interval_refine:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_interval_refine\22\09\09\09\09\09"
module asm "__kstrtabns_snd_interval_refine:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_interval_ratnum:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_interval_ratnum\22\09\09\09\09\09"
module asm "__kstrtabns_snd_interval_ratnum:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_interval_list:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_interval_list\22\09\09\09\09\09"
module asm "__kstrtabns_snd_interval_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_interval_ranges:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_interval_ranges\22\09\09\09\09\09"
module asm "__kstrtabns_snd_interval_ranges:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_hw_rule_add:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_hw_rule_add\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_hw_rule_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_hw_constraint_mask64:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_hw_constraint_mask64\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_hw_constraint_mask64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_hw_constraint_integer:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_hw_constraint_integer\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_hw_constraint_integer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_hw_constraint_minmax:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_hw_constraint_minmax\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_hw_constraint_minmax:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_hw_constraint_list:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_hw_constraint_list\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_hw_constraint_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_hw_constraint_ranges:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_hw_constraint_ranges\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_hw_constraint_ranges:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_hw_constraint_ratnums:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_hw_constraint_ratnums\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_hw_constraint_ratnums:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_hw_constraint_ratdens:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_hw_constraint_ratdens\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_hw_constraint_ratdens:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_hw_constraint_msbits:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_hw_constraint_msbits\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_hw_constraint_msbits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_hw_constraint_step:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_hw_constraint_step\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_hw_constraint_step:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_hw_constraint_pow2:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_hw_constraint_pow2\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_hw_constraint_pow2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_hw_rule_noresample:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_hw_rule_noresample\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_hw_rule_noresample:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__snd_pcm_hw_params_any:\09\09\09\09\09"
module asm "\09.asciz \09\22_snd_pcm_hw_params_any\22\09\09\09\09\09"
module asm "__kstrtabns__snd_pcm_hw_params_any:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_hw_param_value:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_hw_param_value\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_hw_param_value:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__snd_pcm_hw_param_setempty:\09\09\09\09\09"
module asm "\09.asciz \09\22_snd_pcm_hw_param_setempty\22\09\09\09\09\09"
module asm "__kstrtabns__snd_pcm_hw_param_setempty:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_hw_param_first:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_hw_param_first\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_hw_param_first:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_hw_param_last:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_hw_param_last\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_hw_param_last:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_lib_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_lib_ioctl\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_lib_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_period_elapsed_under_stream_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_period_elapsed_under_stream_lock\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_period_elapsed_under_stream_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_period_elapsed:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_period_elapsed\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_period_elapsed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___snd_pcm_lib_xfer:\09\09\09\09\09"
module asm "\09.asciz \09\22__snd_pcm_lib_xfer\22\09\09\09\09\09"
module asm "__kstrtabns___snd_pcm_lib_xfer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_std_chmaps:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_std_chmaps\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_std_chmaps:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_alt_chmaps:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_alt_chmaps\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_alt_chmaps:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_add_chmap_ctls:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_add_chmap_ctls\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_add_chmap_ctls:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_pcm_chmap_elem = type { i8, [15 x i8] }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.77, i32 }
%union.anon.77 = type { ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64 }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_mmap_control = type { [0 x i8], i32, [0 x i8], [0 x i8], i32, [4 x i8] }
%struct.snd_pcm_mmap_status = type { i32, i32, [0 x i8], i32, [4 x i8], %struct.__kernel_timespec, i32, i32, %struct.__kernel_timespec }
%struct.__kernel_timespec = type { i64, i64 }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8 }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, ptr, ptr, %struct.device }
%struct.snd_ratnum = type { i32, i32, i32, i32 }
%struct.__va_list = type { ptr }
%struct.snd_pcm_hw_rule = type { i32, i32, [5 x i32], ptr, ptr }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.snd_pcm_hw_constraint_ranges = type { i32, ptr, i32 }
%struct.snd_pcm_hw_constraint_ratnums = type { i32, ptr }
%struct.snd_pcm_hw_constraint_ratdens = type { i32, ptr }
%struct.snd_ratden = type { i32, i32, i32, i32 }
%struct.snd_pcm_channel_info = type { i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.48, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.48 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.snd_pcm_chmap = type { ptr, i32, ptr, ptr, i32, i32, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.76, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.76 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.67, [64 x i8] }
%union.anon.67 = type { %struct.anon.70, [40 x i8] }
%struct.anon.70 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.71, [128 x i8] }
%union.anon.71 = type { %union.anon.73 }
%union.anon.73 = type { [64 x i64] }

@__kstrtab_snd_pcm_set_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_set_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_set_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_set_ops to i32), ptr @__kstrtab_snd_pcm_set_ops, ptr @__kstrtabns_snd_pcm_set_ops }, section "___ksymtab+snd_pcm_set_ops", align 4
@__kstrtab_snd_pcm_set_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_set_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_set_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_set_sync to i32), ptr @__kstrtab_snd_pcm_set_sync, ptr @__kstrtabns_snd_pcm_set_sync }, section "___ksymtab+snd_pcm_set_sync", align 4
@__kstrtab_snd_interval_refine = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_interval_refine = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_interval_refine = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_interval_refine to i32), ptr @__kstrtab_snd_interval_refine, ptr @__kstrtabns_snd_interval_refine }, section "___ksymtab+snd_interval_refine", align 4
@__kstrtab_snd_interval_ratnum = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_interval_ratnum = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_interval_ratnum = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_interval_ratnum to i32), ptr @__kstrtab_snd_interval_ratnum, ptr @__kstrtabns_snd_interval_ratnum }, section "___ksymtab+snd_interval_ratnum", align 4
@__kstrtab_snd_interval_list = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_interval_list = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_interval_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_interval_list to i32), ptr @__kstrtab_snd_interval_list, ptr @__kstrtabns_snd_interval_list }, section "___ksymtab+snd_interval_list", align 4
@__kstrtab_snd_interval_ranges = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_interval_ranges = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_interval_ranges = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_interval_ranges to i32), ptr @__kstrtab_snd_interval_ranges, ptr @__kstrtabns_snd_interval_ranges }, section "___ksymtab+snd_interval_ranges", align 4
@__kstrtab_snd_pcm_hw_rule_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_hw_rule_add = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_hw_rule_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_hw_rule_add to i32), ptr @__kstrtab_snd_pcm_hw_rule_add, ptr @__kstrtabns_snd_pcm_hw_rule_add }, section "___ksymtab+snd_pcm_hw_rule_add", align 4
@__kstrtab_snd_pcm_hw_constraint_mask64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_hw_constraint_mask64 = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_hw_constraint_mask64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_hw_constraint_mask64 to i32), ptr @__kstrtab_snd_pcm_hw_constraint_mask64, ptr @__kstrtabns_snd_pcm_hw_constraint_mask64 }, section "___ksymtab+snd_pcm_hw_constraint_mask64", align 4
@__kstrtab_snd_pcm_hw_constraint_integer = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_hw_constraint_integer = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_hw_constraint_integer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_hw_constraint_integer to i32), ptr @__kstrtab_snd_pcm_hw_constraint_integer, ptr @__kstrtabns_snd_pcm_hw_constraint_integer }, section "___ksymtab+snd_pcm_hw_constraint_integer", align 4
@__kstrtab_snd_pcm_hw_constraint_minmax = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_hw_constraint_minmax = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_hw_constraint_minmax = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_hw_constraint_minmax to i32), ptr @__kstrtab_snd_pcm_hw_constraint_minmax, ptr @__kstrtabns_snd_pcm_hw_constraint_minmax }, section "___ksymtab+snd_pcm_hw_constraint_minmax", align 4
@__kstrtab_snd_pcm_hw_constraint_list = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_hw_constraint_list = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_hw_constraint_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_hw_constraint_list to i32), ptr @__kstrtab_snd_pcm_hw_constraint_list, ptr @__kstrtabns_snd_pcm_hw_constraint_list }, section "___ksymtab+snd_pcm_hw_constraint_list", align 4
@__kstrtab_snd_pcm_hw_constraint_ranges = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_hw_constraint_ranges = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_hw_constraint_ranges = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_hw_constraint_ranges to i32), ptr @__kstrtab_snd_pcm_hw_constraint_ranges, ptr @__kstrtabns_snd_pcm_hw_constraint_ranges }, section "___ksymtab+snd_pcm_hw_constraint_ranges", align 4
@__kstrtab_snd_pcm_hw_constraint_ratnums = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_hw_constraint_ratnums = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_hw_constraint_ratnums = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_hw_constraint_ratnums to i32), ptr @__kstrtab_snd_pcm_hw_constraint_ratnums, ptr @__kstrtabns_snd_pcm_hw_constraint_ratnums }, section "___ksymtab+snd_pcm_hw_constraint_ratnums", align 4
@__kstrtab_snd_pcm_hw_constraint_ratdens = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_hw_constraint_ratdens = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_hw_constraint_ratdens = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_hw_constraint_ratdens to i32), ptr @__kstrtab_snd_pcm_hw_constraint_ratdens, ptr @__kstrtabns_snd_pcm_hw_constraint_ratdens }, section "___ksymtab+snd_pcm_hw_constraint_ratdens", align 4
@__kstrtab_snd_pcm_hw_constraint_msbits = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_hw_constraint_msbits = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_hw_constraint_msbits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_hw_constraint_msbits to i32), ptr @__kstrtab_snd_pcm_hw_constraint_msbits, ptr @__kstrtabns_snd_pcm_hw_constraint_msbits }, section "___ksymtab+snd_pcm_hw_constraint_msbits", align 4
@__kstrtab_snd_pcm_hw_constraint_step = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_hw_constraint_step = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_hw_constraint_step = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_hw_constraint_step to i32), ptr @__kstrtab_snd_pcm_hw_constraint_step, ptr @__kstrtabns_snd_pcm_hw_constraint_step }, section "___ksymtab+snd_pcm_hw_constraint_step", align 4
@__kstrtab_snd_pcm_hw_constraint_pow2 = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_hw_constraint_pow2 = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_hw_constraint_pow2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_hw_constraint_pow2 to i32), ptr @__kstrtab_snd_pcm_hw_constraint_pow2, ptr @__kstrtabns_snd_pcm_hw_constraint_pow2 }, section "___ksymtab+snd_pcm_hw_constraint_pow2", align 4
@__kstrtab_snd_pcm_hw_rule_noresample = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_hw_rule_noresample = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_hw_rule_noresample = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_hw_rule_noresample to i32), ptr @__kstrtab_snd_pcm_hw_rule_noresample, ptr @__kstrtabns_snd_pcm_hw_rule_noresample }, section "___ksymtab+snd_pcm_hw_rule_noresample", align 4
@__kstrtab__snd_pcm_hw_params_any = external dso_local constant [0 x i8], align 1
@__kstrtabns__snd_pcm_hw_params_any = external dso_local constant [0 x i8], align 1
@__ksymtab__snd_pcm_hw_params_any = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_snd_pcm_hw_params_any to i32), ptr @__kstrtab__snd_pcm_hw_params_any, ptr @__kstrtabns__snd_pcm_hw_params_any }, section "___ksymtab+_snd_pcm_hw_params_any", align 4
@__kstrtab_snd_pcm_hw_param_value = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_hw_param_value = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_hw_param_value = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_hw_param_value to i32), ptr @__kstrtab_snd_pcm_hw_param_value, ptr @__kstrtabns_snd_pcm_hw_param_value }, section "___ksymtab+snd_pcm_hw_param_value", align 4
@__kstrtab__snd_pcm_hw_param_setempty = external dso_local constant [0 x i8], align 1
@__kstrtabns__snd_pcm_hw_param_setempty = external dso_local constant [0 x i8], align 1
@__ksymtab__snd_pcm_hw_param_setempty = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_snd_pcm_hw_param_setempty to i32), ptr @__kstrtab__snd_pcm_hw_param_setempty, ptr @__kstrtabns__snd_pcm_hw_param_setempty }, section "___ksymtab+_snd_pcm_hw_param_setempty", align 4
@__kstrtab_snd_pcm_hw_param_first = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_hw_param_first = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_hw_param_first = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_hw_param_first to i32), ptr @__kstrtab_snd_pcm_hw_param_first, ptr @__kstrtabns_snd_pcm_hw_param_first }, section "___ksymtab+snd_pcm_hw_param_first", align 4
@__kstrtab_snd_pcm_hw_param_last = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_hw_param_last = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_hw_param_last = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_hw_param_last to i32), ptr @__kstrtab_snd_pcm_hw_param_last, ptr @__kstrtabns_snd_pcm_hw_param_last }, section "___ksymtab+snd_pcm_hw_param_last", align 4
@__kstrtab_snd_pcm_lib_ioctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_lib_ioctl = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_lib_ioctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_lib_ioctl to i32), ptr @__kstrtab_snd_pcm_lib_ioctl, ptr @__kstrtabns_snd_pcm_lib_ioctl }, section "___ksymtab+snd_pcm_lib_ioctl", align 4
@__kstrtab_snd_pcm_period_elapsed_under_stream_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_period_elapsed_under_stream_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_period_elapsed_under_stream_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_period_elapsed_under_stream_lock to i32), ptr @__kstrtab_snd_pcm_period_elapsed_under_stream_lock, ptr @__kstrtabns_snd_pcm_period_elapsed_under_stream_lock }, section "___ksymtab+snd_pcm_period_elapsed_under_stream_lock", align 4
@__kstrtab_snd_pcm_period_elapsed = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_period_elapsed = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_period_elapsed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_period_elapsed to i32), ptr @__kstrtab_snd_pcm_period_elapsed, ptr @__kstrtabns_snd_pcm_period_elapsed }, section "___ksymtab+snd_pcm_period_elapsed", align 4
@__kstrtab___snd_pcm_lib_xfer = external dso_local constant [0 x i8], align 1
@__kstrtabns___snd_pcm_lib_xfer = external dso_local constant [0 x i8], align 1
@__ksymtab___snd_pcm_lib_xfer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__snd_pcm_lib_xfer to i32), ptr @__kstrtab___snd_pcm_lib_xfer, ptr @__kstrtabns___snd_pcm_lib_xfer }, section "___ksymtab+__snd_pcm_lib_xfer", align 4
@snd_pcm_std_chmaps = dso_local constant <{ { i8, <{ i8, [14 x i8] }> }, { i8, <{ i8, i8, [13 x i8] }> }, { i8, <{ i8, i8, i8, i8, [11 x i8] }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> }, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem }> <{ { i8, <{ i8, [14 x i8] }> } { i8 1, <{ i8, [14 x i8] }> <{ i8 2, [14 x i8] zeroinitializer }> }, { i8, <{ i8, i8, [13 x i8] }> } { i8 2, <{ i8, i8, [13 x i8] }> <{ i8 3, i8 4, [13 x i8] zeroinitializer }> }, { i8, <{ i8, i8, i8, i8, [11 x i8] }> } { i8 4, <{ i8, i8, i8, i8, [11 x i8] }> <{ i8 3, i8 4, i8 5, i8 6, [11 x i8] zeroinitializer }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> } { i8 6, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, [9 x i8] zeroinitializer }> }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\05\06\07\08\09\0A\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem zeroinitializer }>, align 1
@__kstrtab_snd_pcm_std_chmaps = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_std_chmaps = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_std_chmaps = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_std_chmaps to i32), ptr @__kstrtab_snd_pcm_std_chmaps, ptr @__kstrtabns_snd_pcm_std_chmaps }, section "___ksymtab_gpl+snd_pcm_std_chmaps", align 4
@snd_pcm_alt_chmaps = dso_local constant <{ { i8, <{ i8, [14 x i8] }> }, { i8, <{ i8, i8, [13 x i8] }> }, { i8, <{ i8, i8, i8, i8, [11 x i8] }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> }, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem }> <{ { i8, <{ i8, [14 x i8] }> } { i8 1, <{ i8, [14 x i8] }> <{ i8 2, [14 x i8] zeroinitializer }> }, { i8, <{ i8, i8, [13 x i8] }> } { i8 2, <{ i8, i8, [13 x i8] }> <{ i8 3, i8 4, [13 x i8] zeroinitializer }> }, { i8, <{ i8, i8, i8, i8, [11 x i8] }> } { i8 4, <{ i8, i8, i8, i8, [11 x i8] }> <{ i8 3, i8 4, i8 5, i8 6, [11 x i8] zeroinitializer }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> } { i8 6, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 3, i8 4, i8 7, i8 8, i8 5, i8 6, [9 x i8] zeroinitializer }> }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\07\08\05\06\09\0A\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem zeroinitializer }>, align 1
@__kstrtab_snd_pcm_alt_chmaps = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_alt_chmaps = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_alt_chmaps = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_alt_chmaps to i32), ptr @__kstrtab_snd_pcm_alt_chmaps, ptr @__kstrtabns_snd_pcm_alt_chmaps }, section "___ksymtab_gpl+snd_pcm_alt_chmaps", align 4
@__const.snd_pcm_add_chmap_ctls.knew = private unnamed_addr constant %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr null, i32 0, i32 268435473, i32 0, ptr @pcm_chmap_ctl_info, ptr @pcm_chmap_ctl_get, ptr null, %union.anon.77 { ptr @pcm_chmap_ctl_tlv }, i32 0 }, align 4
@.str = private unnamed_addr constant [21 x i8] c"sound/core/pcm_lib.c\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Playback Channel Map\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Capture Channel Map\00", align 1
@__kstrtab_snd_pcm_add_chmap_ctls = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_add_chmap_ctls = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_add_chmap_ctls = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_add_chmap_ctls to i32), ptr @__kstrtab_snd_pcm_add_chmap_ctls, ptr @__kstrtabns_snd_pcm_add_chmap_ctls }, section "___ksymtab_gpl+snd_pcm_add_chmap_ctls", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__func__.snd_pcm_update_hw_ptr0 = private unnamed_addr constant [23 x i8] c"snd_pcm_update_hw_ptr0\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"invalid position: %s, pos = %ld, buffer size = %ld, period size = %ld\0A\00", align 1
@snd_pcm_hw_rule_pow2.pow2_sizes = internal unnamed_addr constant [31 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768, i32 65536, i32 131072, i32 262144, i32 524288, i32 1048576, i32 2097152, i32 4194304, i32 8388608, i32 16777216, i32 33554432, i32 67108864, i32 134217728, i32 268435456, i32 536870912, i32 1073741824], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [30 x ptr] [ptr @__ksymtab___snd_pcm_lib_xfer, ptr @__ksymtab__snd_pcm_hw_param_setempty, ptr @__ksymtab__snd_pcm_hw_params_any, ptr @__ksymtab_snd_interval_list, ptr @__ksymtab_snd_interval_ranges, ptr @__ksymtab_snd_interval_ratnum, ptr @__ksymtab_snd_interval_refine, ptr @__ksymtab_snd_pcm_add_chmap_ctls, ptr @__ksymtab_snd_pcm_alt_chmaps, ptr @__ksymtab_snd_pcm_hw_constraint_integer, ptr @__ksymtab_snd_pcm_hw_constraint_list, ptr @__ksymtab_snd_pcm_hw_constraint_mask64, ptr @__ksymtab_snd_pcm_hw_constraint_minmax, ptr @__ksymtab_snd_pcm_hw_constraint_msbits, ptr @__ksymtab_snd_pcm_hw_constraint_pow2, ptr @__ksymtab_snd_pcm_hw_constraint_ranges, ptr @__ksymtab_snd_pcm_hw_constraint_ratdens, ptr @__ksymtab_snd_pcm_hw_constraint_ratnums, ptr @__ksymtab_snd_pcm_hw_constraint_step, ptr @__ksymtab_snd_pcm_hw_param_first, ptr @__ksymtab_snd_pcm_hw_param_last, ptr @__ksymtab_snd_pcm_hw_param_value, ptr @__ksymtab_snd_pcm_hw_rule_add, ptr @__ksymtab_snd_pcm_hw_rule_noresample, ptr @__ksymtab_snd_pcm_lib_ioctl, ptr @__ksymtab_snd_pcm_period_elapsed, ptr @__ksymtab_snd_pcm_period_elapsed_under_stream_lock, ptr @__ksymtab_snd_pcm_set_ops, ptr @__ksymtab_snd_pcm_set_sync, ptr @__ksymtab_snd_pcm_std_chmaps], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_pcm_playback_silence(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 32
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 33
  %8 = load i32, ptr %7, align 8
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %56

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 38
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %12, i32 0, i32 1
  %14 = load volatile i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 34
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 35
  %20 = load i32, ptr %19, align 8
  br label %29

21:                                               ; preds = %10
  %22 = sub i32 %14, %16
  %23 = icmp slt i32 %22, 0
  %24 = select i1 %23, i32 %8, i32 0
  %25 = add i32 %24, %22
  %26 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 35
  %27 = load i32, ptr %26, align 8
  %28 = tail call i32 @llvm.usub.sat.i32(i32 %27, i32 %25)
  store i32 %28, ptr %26, align 8
  store i32 %14, ptr %15, align 4
  br label %29

29:                                               ; preds = %21, %18
  %30 = phi i32 [ %20, %18 ], [ %28, %21 ]
  %31 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 18
  %32 = load i32, ptr %31, align 4
  %33 = icmp ult i32 %30, %32
  br i1 %33, label %34, label %220

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 37
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %36, i32 0, i32 3
  %38 = load i32, ptr %37, align 8
  %39 = add i32 %38, %32
  %40 = load i32, ptr %13, align 4
  %41 = sub i32 %39, %40
  %42 = icmp slt i32 %41, 0
  %43 = icmp ult i32 %41, %8
  %44 = select i1 %43, i32 0, i32 %8
  %45 = sub i32 0, %44
  %46 = select i1 %42, i32 %8, i32 %45
  %47 = add i32 %32, %30
  %48 = add i32 %41, %46
  %49 = sub i32 %47, %48
  %50 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 31
  %51 = load i32, ptr %50, align 8
  %52 = icmp sgt i32 %51, %49
  br i1 %52, label %53, label %220

53:                                               ; preds = %34
  %54 = sub i32 %51, %49
  %55 = tail call i32 @llvm.umin.i32(i32 %54, i32 %6)
  br label %107

56:                                               ; preds = %2
  %57 = icmp eq i32 %1, -1
  br i1 %57, label %58, label %84

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 18
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 37
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %62, i32 0, i32 3
  %64 = load i32, ptr %63, align 8
  %65 = add i32 %64, %60
  %66 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 38
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %67, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = sub i32 %65, %69
  %71 = icmp slt i32 %70, 0
  %72 = icmp ult i32 %70, %8
  %73 = select i1 %72, i32 0, i32 %8
  %74 = sub i32 0, %73
  %75 = select i1 %71, i32 %8, i32 %74
  %76 = add i32 %70, %75
  %77 = sub i32 %60, %76
  %78 = tail call i32 @llvm.umin.i32(i32 %77, i32 %60)
  %79 = tail call i32 @llvm.smax.i32(i32 %78, i32 0)
  %80 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 35
  store i32 %79, ptr %80, align 8
  %81 = load i32, ptr %63, align 8
  %82 = add i32 %79, %81
  %83 = urem i32 %82, %8
  br label %100

84:                                               ; preds = %56
  %85 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 37
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %86, i32 0, i32 3
  %88 = load i32, ptr %87, align 8
  %89 = sub i32 %1, %88
  %90 = icmp slt i32 %89, 0
  %91 = select i1 %90, i32 %8, i32 0
  %92 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 35
  %93 = load i32, ptr %92, align 8
  %94 = add i32 %89, %91
  %95 = sub i32 %93, %94
  %96 = icmp slt i32 %95, 0
  %97 = call i32 @llvm.smax.i32(i32 %95, i32 0)
  store i32 %97, ptr %92, align 8
  %98 = select i1 %96, i32 %1, i32 %88
  %99 = call i32 @llvm.smax.i32(i32 %95, i32 0)
  br label %100

100:                                              ; preds = %84, %58
  %101 = phi i32 [ %83, %58 ], [ %98, %84 ]
  %102 = phi i32 [ %79, %58 ], [ %99, %84 ]
  %103 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 34
  store i32 %101, ptr %103, align 4
  %104 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 18
  %105 = load i32, ptr %104, align 4
  %106 = sub i32 %105, %102
  br label %107

107:                                              ; preds = %100, %53
  %108 = phi i32 [ %14, %53 ], [ %101, %100 ]
  %109 = phi i32 [ %32, %53 ], [ %105, %100 ]
  %110 = phi i32 [ %55, %53 ], [ %106, %100 ]
  %111 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 18
  %112 = add i32 %110, -1
  %113 = icmp ult i32 %112, %109
  br i1 %113, label %114, label %220

114:                                              ; preds = %107
  %115 = urem i32 %108, %109
  %116 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %117 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 10
  %118 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 35
  br label %119

119:                                              ; preds = %209, %114
  %120 = phi i32 [ %109, %114 ], [ %210, %209 ]
  %121 = phi i32 [ %110, %114 ], [ %207, %209 ]
  %122 = phi i32 [ %115, %114 ], [ 0, %209 ]
  %123 = add i32 %121, %122
  %124 = icmp ugt i32 %123, %120
  %125 = sub i32 %120, %122
  %126 = select i1 %124, i32 %125, i32 %121
  %127 = load ptr, ptr %3, align 4
  %128 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %127, i32 0, i32 11
  %129 = load i32, ptr %128, align 8
  switch i32 %129, label %157 [
    i32 3, label %130
    i32 0, label %130
  ]

130:                                              ; preds = %119, %119
  %131 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %127, i32 0, i32 21
  %132 = load i32, ptr %131, align 8
  %133 = mul i32 %132, %122
  %134 = lshr i32 %133, 3
  %135 = mul i32 %132, %126
  %136 = lshr i32 %135, 3
  %137 = load i32, ptr %116, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %204

139:                                              ; preds = %130
  %140 = load ptr, ptr %117, align 4
  %141 = getelementptr inbounds %struct.snd_pcm_ops, ptr %140, i32 0, i32 10
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %146, label %144

144:                                              ; preds = %139
  %145 = tail call i32 %142(ptr noundef %0, i32 noundef 0, i32 noundef %134, i32 noundef %136) #19
  br label %204

146:                                              ; preds = %139
  %147 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %127, i32 0, i32 12
  %148 = load i32, ptr %147, align 4
  %149 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %127, i32 0, i32 50
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr i8, ptr %150, i32 %134
  %152 = and i32 %135, -8
  %153 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %127, i32 0, i32 22
  %154 = load i32, ptr %153, align 4
  %155 = udiv i32 %152, %154
  %156 = tail call i32 @snd_pcm_format_set_silence(i32 noundef %148, ptr noundef %151, i32 noundef %155) #19
  br label %204

157:                                              ; preds = %119
  %158 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %127, i32 0, i32 15
  %159 = load i32, ptr %158, align 8
  %160 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %127, i32 0, i32 22
  %161 = load i32, ptr %160, align 4
  %162 = mul i32 %161, %126
  %163 = lshr i32 %162, 3
  %164 = mul i32 %161, %122
  %165 = lshr i32 %164, 3
  %166 = icmp sgt i32 %159, 0
  br i1 %166, label %167, label %204

167:                                              ; preds = %157
  %168 = and i32 %162, -8
  br label %169

169:                                              ; preds = %202, %167
  %170 = phi ptr [ %127, %167 ], [ %203, %202 ]
  %171 = phi i32 [ 0, %167 ], [ %200, %202 ]
  %172 = load i32, ptr %116, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %199

174:                                              ; preds = %169
  %175 = load ptr, ptr %117, align 4
  %176 = getelementptr inbounds %struct.snd_pcm_ops, ptr %175, i32 0, i32 10
  %177 = load ptr, ptr %176, align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %182, label %179

179:                                              ; preds = %174
  %180 = tail call i32 %177(ptr noundef %0, i32 noundef %171, i32 noundef %165, i32 noundef %163) #19
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %204, label %199

182:                                              ; preds = %174
  %183 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %170, i32 0, i32 12
  %184 = load i32, ptr %183, align 4
  %185 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %170, i32 0, i32 50
  %186 = load ptr, ptr %185, align 4
  %187 = getelementptr i8, ptr %186, i32 %165
  %188 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %170, i32 0, i32 52
  %189 = load i32, ptr %188, align 4
  %190 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %170, i32 0, i32 15
  %191 = load i32, ptr %190, align 8
  %192 = udiv i32 %189, %191
  %193 = mul i32 %192, %171
  %194 = getelementptr i8, ptr %187, i32 %193
  %195 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %170, i32 0, i32 22
  %196 = load i32, ptr %195, align 4
  %197 = udiv i32 %168, %196
  %198 = tail call i32 @snd_pcm_format_set_silence(i32 noundef %184, ptr noundef %194, i32 noundef %197) #19
  br label %199

199:                                              ; preds = %182, %179, %169
  %200 = add nuw nsw i32 %171, 1
  %201 = icmp eq i32 %200, %159
  br i1 %201, label %204, label %202

202:                                              ; preds = %199
  %203 = load ptr, ptr %3, align 4
  br label %169

204:                                              ; preds = %199, %179, %157, %146, %144, %130
  %205 = load i32, ptr %118, align 8
  %206 = add i32 %205, %126
  store i32 %206, ptr %118, align 8
  %207 = sub i32 %121, %126
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %211, label %209

209:                                              ; preds = %204
  %210 = load i32, ptr %111, align 4
  br label %119

211:                                              ; preds = %204
  %212 = load ptr, ptr %3, align 4
  %213 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %212, i32 0, i32 23
  %214 = load i32, ptr %213, align 8
  %215 = and i32 %214, 268435456
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %220, label %217

217:                                              ; preds = %211
  %218 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %212, i32 0, i32 53
  %219 = load ptr, ptr %218, align 8
  tail call void @snd_dma_buffer_sync(ptr noundef %219, i32 noundef 1) #19
  br label %220

220:                                              ; preds = %217, %211, %107, %34, %29
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__snd_pcm_xrun(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.timespec64, align 8
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 27
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !8
  %9 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 49
  %10 = load i32, ptr %9, align 8
  switch i32 %10, label %13 [
    i32 1, label %11
    i32 2, label %12
  ]

11:                                               ; preds = %8
  call void @ktime_get_ts64(ptr noundef nonnull %2) #19
  br label %14

12:                                               ; preds = %8
  call void @ktime_get_raw_ts64(ptr noundef nonnull %2) #19
  br label %14

13:                                               ; preds = %8
  call void @ktime_get_real_ts64(ptr noundef nonnull %2) #19
  br label %14

14:                                               ; preds = %13, %12, %11
  %15 = load i64, ptr %2, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 37
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %17, i32 0, i32 5
  store i64 %15, ptr %18, align 8
  %19 = getelementptr inbounds %struct.timespec64, ptr %2, i32 0, i32 1
  %20 = load i32, ptr %19, align 8
  %21 = sext i32 %20 to i64
  %22 = load ptr, ptr %16, align 4
  %23 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %22, i32 0, i32 5, i32 1
  store i64 %21, ptr %23, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #19
  br label %24

24:                                               ; preds = %14, %1
  %25 = call i32 @snd_pcm_stop(ptr noundef %0, i32 noundef 4) #19
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_update_state(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 37
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %10, i32 0, i32 3
  %12 = load i32, ptr %11, align 8
  br i1 %6, label %13, label %30

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 18
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %12
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 38
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = sub i32 %16, %20
  %22 = icmp slt i32 %21, 0
  %23 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 33
  %24 = load i32, ptr %23, align 8
  %25 = icmp ult i32 %21, %24
  %26 = select i1 %25, i32 0, i32 %24
  %27 = sub i32 0, %26
  %28 = select i1 %22, i32 %24, i32 %27
  %29 = add i32 %28, %21
  br label %41

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 38
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %32, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = sub i32 %12, %34
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 33
  %39 = load i32, ptr %38, align 8
  %40 = add i32 %39, %35
  br label %41

41:                                               ; preds = %37, %30, %13
  %42 = phi i32 [ %29, %13 ], [ %40, %37 ], [ %35, %30 ]
  %43 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 4
  %44 = load i32, ptr %43, align 8
  %45 = icmp ugt i32 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 %42, ptr %43, align 8
  br label %47

47:                                               ; preds = %46, %41
  %48 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 37
  %49 = load ptr, ptr %48, align 4
  %50 = load i32, ptr %49, align 8
  %51 = icmp eq i32 %50, 5
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 18
  %54 = load i32, ptr %53, align 4
  %55 = icmp ult i32 %42, %54
  br i1 %55, label %85, label %56

56:                                               ; preds = %52
  %57 = tail call i32 @snd_pcm_drain_done(ptr noundef %0) #19
  br label %101

58:                                               ; preds = %47
  %59 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 30
  %60 = load i32, ptr %59, align 4
  %61 = icmp ult i32 %42, %60
  br i1 %61, label %85, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %7, align 4
  %64 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %63, i32 0, i32 27
  %65 = load i32, ptr %64, align 8
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %83

67:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #19, !annotation !8
  %68 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %63, i32 0, i32 49
  %69 = load i32, ptr %68, align 8
  switch i32 %69, label %72 [
    i32 1, label %70
    i32 2, label %71
  ]

70:                                               ; preds = %67
  call void @ktime_get_ts64(ptr noundef nonnull %3) #19
  br label %73

71:                                               ; preds = %67
  call void @ktime_get_raw_ts64(ptr noundef nonnull %3) #19
  br label %73

72:                                               ; preds = %67
  call void @ktime_get_real_ts64(ptr noundef nonnull %3) #19
  br label %73

73:                                               ; preds = %72, %71, %70
  %74 = load i64, ptr %3, align 8
  %75 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %63, i32 0, i32 37
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %76, i32 0, i32 5
  store i64 %74, ptr %77, align 8
  %78 = getelementptr inbounds %struct.timespec64, ptr %3, i32 0, i32 1
  %79 = load i32, ptr %78, align 8
  %80 = sext i32 %79 to i64
  %81 = load ptr, ptr %75, align 4
  %82 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %81, i32 0, i32 5, i32 1
  store i64 %80, ptr %82, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  br label %83

83:                                               ; preds = %73, %62
  %84 = call i32 @snd_pcm_stop(ptr noundef %0, i32 noundef 4) #19
  br label %101

85:                                               ; preds = %58, %52
  %86 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 39
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = icmp ult i32 %42, %87
  br i1 %90, label %101, label %91

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 41
  tail call void @__wake_up(ptr noundef %92, i32 noundef 3, i32 noundef 1, ptr noundef null) #19
  br label %101

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 38
  %95 = load ptr, ptr %94, align 8
  %96 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %95, i32 0, i32 4
  %97 = load i32, ptr %96, align 4
  %98 = icmp ult i32 %42, %97
  br i1 %98, label %101, label %99

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %100, i32 noundef 3, i32 noundef 1, ptr noundef null) #19
  br label %101

101:                                              ; preds = %99, %93, %91, %89, %83, %56
  %102 = phi i32 [ -32, %56 ], [ -32, %83 ], [ 0, %93 ], [ 0, %99 ], [ 0, %89 ], [ 0, %91 ]
  ret i32 %102
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_drain_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_update_hw_ptr(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @snd_pcm_update_hw_ptr0(ptr noundef %0, i32 noundef 0)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_update_hw_ptr0(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = alloca %struct.timespec64, align 8
  %5 = alloca %struct.timespec64, align 8
  %6 = alloca [16 x i8], align 1
  %7 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !8
  %9 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 37
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %10, i32 0, i32 3
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.snd_pcm_ops, ptr %14, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %0) #19
  %18 = load volatile i32, ptr @jiffies, align 64
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 27
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %50

22:                                               ; preds = %2
  %23 = load ptr, ptr %13, align 4
  %24 = getelementptr inbounds %struct.snd_pcm_ops, ptr %23, i32 0, i32 9
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %44, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 56
  %29 = load i8, ptr %28, align 8
  %30 = and i8 %29, 15
  %31 = icmp eq i8 %30, 1
  br i1 %31, label %44, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 57
  %34 = call i32 %25(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %28, ptr noundef %33) #19
  %35 = load i8, ptr %33, align 4
  %36 = and i8 %35, 30
  %37 = icmp eq i8 %36, 2
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 49
  %40 = load i32, ptr %39, align 8
  switch i32 %40, label %43 [
    i32 1, label %41
    i32 2, label %42
  ]

41:                                               ; preds = %38
  call void @ktime_get_ts64(ptr noundef nonnull %4) #19
  br label %50

42:                                               ; preds = %38
  call void @ktime_get_raw_ts64(ptr noundef nonnull %4) #19
  br label %50

43:                                               ; preds = %38
  call void @ktime_get_real_ts64(ptr noundef nonnull %4) #19
  br label %50

44:                                               ; preds = %27, %22
  %45 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 49
  %46 = load i32, ptr %45, align 8
  switch i32 %46, label %49 [
    i32 1, label %47
    i32 2, label %48
  ]

47:                                               ; preds = %44
  call void @ktime_get_ts64(ptr noundef nonnull %4) #19
  br label %50

48:                                               ; preds = %44
  call void @ktime_get_raw_ts64(ptr noundef nonnull %4) #19
  br label %50

49:                                               ; preds = %44
  call void @ktime_get_real_ts64(ptr noundef nonnull %4) #19
  br label %50

50:                                               ; preds = %49, %48, %47, %43, %42, %41, %32, %2
  %51 = icmp eq i32 %17, -1
  br i1 %51, label %52, label %75

52:                                               ; preds = %50
  %53 = load ptr, ptr %7, align 4
  %54 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %53, i32 0, i32 27
  %55 = load i32, ptr %54, align 8
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %73

57:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #19, !annotation !8
  %58 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %53, i32 0, i32 49
  %59 = load i32, ptr %58, align 8
  switch i32 %59, label %62 [
    i32 1, label %60
    i32 2, label %61
  ]

60:                                               ; preds = %57
  call void @ktime_get_ts64(ptr noundef nonnull %3) #19
  br label %63

61:                                               ; preds = %57
  call void @ktime_get_raw_ts64(ptr noundef nonnull %3) #19
  br label %63

62:                                               ; preds = %57
  call void @ktime_get_real_ts64(ptr noundef nonnull %3) #19
  br label %63

63:                                               ; preds = %62, %61, %60
  %64 = load i64, ptr %3, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %53, i32 0, i32 37
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %66, i32 0, i32 5
  store i64 %64, ptr %67, align 8
  %68 = getelementptr inbounds %struct.timespec64, ptr %3, i32 0, i32 1
  %69 = load i32, ptr %68, align 8
  %70 = sext i32 %69 to i64
  %71 = load ptr, ptr %65, align 4
  %72 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %71, i32 0, i32 5, i32 1
  store i64 %70, ptr %72, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  br label %73

73:                                               ; preds = %63, %52
  %74 = call i32 @snd_pcm_stop(ptr noundef %0, i32 noundef 4) #19
  br label %244

75:                                               ; preds = %50
  %76 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 18
  %77 = load i32, ptr %76, align 4
  %78 = icmp ult i32 %17, %77
  br i1 %78, label %90, label %79

79:                                               ; preds = %75
  %80 = call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.snd_pcm_update_hw_ptr0) #19
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %79
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %83 = load ptr, ptr %0, align 4
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.snd_card, ptr %84, i32 0, i32 27
  %86 = load ptr, ptr %85, align 8
  %87 = load i32, ptr %76, align 4
  %88 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 16
  %89 = load i32, ptr %88, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.3, ptr noundef nonnull %6, i32 noundef %17, i32 noundef %87, i32 noundef %89) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  br label %90

90:                                               ; preds = %82, %79, %75
  %91 = phi i32 [ %17, %75 ], [ 0, %82 ], [ 0, %79 ]
  %92 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 19
  %93 = load i32, ptr %92, align 8
  %94 = urem i32 %91, %93
  %95 = sub i32 %91, %94
  %96 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 5
  %97 = load i32, ptr %96, align 4
  %98 = add i32 %97, %95
  %99 = icmp eq i32 %1, 0
  br i1 %99, label %125, label %100

100:                                              ; preds = %90
  %101 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 6
  %102 = load i32, ptr %101, align 8
  %103 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 16
  %104 = load i32, ptr %103, align 4
  %105 = add i32 %104, %102
  %106 = icmp ugt i32 %105, %98
  br i1 %106, label %107, label %125

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 7
  %109 = load i32, ptr %108, align 4
  %110 = sub i32 %18, %109
  %111 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 8
  %112 = load i32, ptr %111, align 8
  %113 = lshr i32 %112, 1
  %114 = add nuw i32 %113, 1
  %115 = icmp ugt i32 %110, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %107
  %117 = load i32, ptr %76, align 4
  %118 = add i32 %117, %97
  %119 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 33
  %120 = load i32, ptr %119, align 8
  %121 = icmp ult i32 %118, %120
  %122 = select i1 %121, i32 %118, i32 0
  %123 = xor i1 %121, true
  %124 = add i32 %122, %95
  br label %136

125:                                              ; preds = %107, %100, %90
  %126 = icmp ult i32 %98, %12
  br i1 %126, label %127, label %136

127:                                              ; preds = %125
  %128 = load i32, ptr %76, align 4
  %129 = add i32 %128, %97
  %130 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 33
  %131 = load i32, ptr %130, align 8
  %132 = icmp ult i32 %129, %131
  %133 = select i1 %132, i32 %129, i32 0
  %134 = xor i1 %132, true
  %135 = add i32 %133, %95
  br label %136

136:                                              ; preds = %127, %125, %116
  %137 = phi i32 [ %124, %116 ], [ %135, %127 ], [ %98, %125 ]
  %138 = phi i32 [ %122, %116 ], [ %133, %127 ], [ %97, %125 ]
  %139 = phi i1 [ %123, %116 ], [ %134, %127 ], [ false, %125 ]
  %140 = zext i1 %139 to i32
  %141 = sub i32 %137, %12
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %136
  %144 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 33
  %145 = load i32, ptr %144, align 8
  %146 = add i32 %145, %141
  br label %147

147:                                              ; preds = %143, %136
  %148 = phi i32 [ %146, %143 ], [ %141, %136 ]
  %149 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 26
  %150 = load i8, ptr %149, align 4
  %151 = and i8 %150, 1
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %185, label %153

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 7
  %155 = load i32, ptr %154, align 4
  %156 = sub i32 %18, %155
  %157 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 8
  %158 = load i32, ptr %157, align 8
  %159 = lshr i32 %158, 1
  %160 = icmp ult i32 %156, %159
  br i1 %160, label %193, label %161

161:                                              ; preds = %153
  %162 = mul i32 %148, 100
  %163 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 14
  %164 = load i32, ptr %163, align 4
  %165 = udiv i32 %162, %164
  %166 = sub i32 %156, %165
  %167 = add nuw i32 %159, 1
  %168 = icmp sgt i32 %166, %167
  br i1 %168, label %169, label %193

169:                                              ; preds = %161
  %170 = load i32, ptr %76, align 4
  %171 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 33
  %172 = load i32, ptr %171, align 8
  br label %173

173:                                              ; preds = %173, %169
  %174 = phi i32 [ %140, %169 ], [ %182, %173 ]
  %175 = phi i32 [ %166, %169 ], [ %183, %173 ]
  %176 = phi i32 [ %138, %169 ], [ %179, %173 ]
  %177 = add i32 %170, %176
  %178 = icmp ult i32 %177, %172
  %179 = select i1 %178, i32 %177, i32 0
  %180 = xor i1 %178, true
  %181 = zext i1 %180 to i32
  %182 = add i32 %174, %181
  %183 = sub i32 %175, %158
  %184 = icmp sgt i32 %183, %167
  br i1 %184, label %173, label %191

185:                                              ; preds = %147
  %186 = load i32, ptr %76, align 4
  %187 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 16
  %188 = load i32, ptr %187, align 4
  %189 = add i32 %188, %186
  %190 = icmp ult i32 %148, %189
  br i1 %190, label %193, label %244

191:                                              ; preds = %173
  %192 = add i32 %179, %95
  br label %193

193:                                              ; preds = %191, %185, %161, %153
  %194 = phi i32 [ %137, %153 ], [ %137, %185 ], [ %192, %191 ], [ %137, %161 ]
  %195 = phi i32 [ %138, %153 ], [ %138, %185 ], [ %179, %191 ], [ %138, %161 ]
  %196 = phi i32 [ %140, %153 ], [ %140, %185 ], [ %182, %191 ], [ %140, %161 ]
  %197 = load ptr, ptr %9, align 4
  %198 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %197, i32 0, i32 3
  %199 = load i32, ptr %198, align 8
  %200 = icmp eq i32 %199, %194
  br i1 %200, label %201, label %203

201:                                              ; preds = %193
  %202 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 7
  store i32 %18, ptr %202, align 4
  call fastcc void @update_audio_tstamp(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %244

203:                                              ; preds = %193
  %204 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %205 = load i32, ptr %204, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 32
  %209 = load i32, ptr %208, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %207
  call void @snd_pcm_playback_silence(ptr noundef %0, i32 noundef %194)
  br label %212

212:                                              ; preds = %211, %207, %203
  br i1 %99, label %230, label %213

213:                                              ; preds = %212
  %214 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 6
  %215 = load i32, ptr %214, align 8
  %216 = sub i32 %194, %215
  %217 = icmp slt i32 %216, 0
  %218 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 33
  %219 = load i32, ptr %218, align 8
  %220 = select i1 %217, i32 %219, i32 0
  %221 = add i32 %216, %220
  %222 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 16
  %223 = load i32, ptr %222, align 4
  %224 = urem i32 %221, %223
  %225 = sub i32 %221, %224
  %226 = add i32 %225, %215
  store i32 %226, ptr %214, align 8
  %227 = icmp ult i32 %226, %219
  br i1 %227, label %230, label %228

228:                                              ; preds = %213
  %229 = sub i32 %226, %219
  store i32 %229, ptr %214, align 8
  br label %230

230:                                              ; preds = %228, %213, %212
  store i32 %195, ptr %96, align 4
  %231 = load ptr, ptr %9, align 4
  %232 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %231, i32 0, i32 3
  store i32 %194, ptr %232, align 8
  %233 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 7
  store i32 %18, ptr %233, align 4
  %234 = icmp eq i32 %196, 0
  br i1 %234, label %242, label %235

235:                                              ; preds = %230
  %236 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 33
  %237 = load i32, ptr %236, align 8
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 10
  %240 = load i64, ptr %239, align 8
  %241 = add i64 %240, %238
  store i64 %241, ptr %239, align 8
  br label %242

242:                                              ; preds = %235, %230
  call fastcc void @update_audio_tstamp(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %243 = call i32 @snd_pcm_update_state(ptr noundef %0, ptr noundef %8)
  br label %244

244:                                              ; preds = %242, %201, %185, %73
  %245 = phi i32 [ -32, %73 ], [ 0, %201 ], [ %243, %242 ], [ 0, %185 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  ret i32 %245
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_pcm_set_ops(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #4 {
  %4 = getelementptr %struct.snd_pcm, ptr %0, i32 0, i32 8, i32 %1, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %7, %3
  %8 = phi ptr [ %11, %7 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %8, i32 0, i32 10
  store ptr %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.snd_pcm_substream, ptr %8, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %7

13:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @snd_pcm_set_sync(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 36
  store i32 %6, ptr %7, align 4
  %8 = getelementptr %struct.snd_pcm_runtime, ptr %3, i32 0, i32 36, i32 0, i32 1
  store i32 -1, ptr %8, align 4
  %9 = getelementptr %struct.snd_pcm_runtime, ptr %3, i32 0, i32 36, i32 0, i32 2
  store i32 -1, ptr %9, align 4
  %10 = getelementptr %struct.snd_pcm_runtime, ptr %3, i32 0, i32 36, i32 0, i32 3
  store i32 -1, ptr %10, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_interval_refine(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.snd_interval, ptr %0, i32 0, i32 2
  %4 = load i8, ptr %3, align 4
  %5 = and i8 %4, 8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %115

7:                                                ; preds = %2
  %8 = load i32, ptr %0, align 4
  %9 = load i32, ptr %1, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  store i32 %9, ptr %0, align 4
  %12 = getelementptr inbounds %struct.snd_interval, ptr %1, i32 0, i32 2
  %13 = load i8, ptr %12, align 4
  %14 = and i8 %13, 1
  %15 = and i8 %4, -2
  %16 = or i8 %14, %15
  br label %29

17:                                               ; preds = %7
  %18 = icmp eq i32 %8, %9
  %19 = and i8 %4, 1
  %20 = icmp eq i8 %19, 0
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.snd_interval, ptr %1, i32 0, i32 2
  %24 = load i8, ptr %23, align 4
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = or i8 %4, 1
  br label %29

29:                                               ; preds = %27, %11
  %30 = phi i8 [ %28, %27 ], [ %16, %11 ]
  %31 = phi i32 [ %8, %27 ], [ %9, %11 ]
  store i8 %30, ptr %3, align 4
  br label %32

32:                                               ; preds = %29, %22, %17
  %33 = phi i32 [ %8, %22 ], [ %8, %17 ], [ %31, %29 ]
  %34 = phi i8 [ %4, %22 ], [ %4, %17 ], [ %30, %29 ]
  %35 = phi i32 [ 0, %22 ], [ 0, %17 ], [ 1, %29 ]
  %36 = getelementptr inbounds %struct.snd_interval, ptr %0, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.snd_interval, ptr %1, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp ugt i32 %37, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  store i32 %39, ptr %36, align 4
  %42 = getelementptr inbounds %struct.snd_interval, ptr %1, i32 0, i32 2
  %43 = load i8, ptr %42, align 4
  %44 = and i8 %43, 2
  %45 = and i8 %34, -3
  %46 = or i8 %45, %44
  br label %59

47:                                               ; preds = %32
  %48 = icmp eq i32 %37, %39
  %49 = and i8 %34, 2
  %50 = icmp eq i8 %49, 0
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.snd_interval, ptr %1, i32 0, i32 2
  %54 = load i8, ptr %53, align 4
  %55 = and i8 %54, 2
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = or i8 %34, 2
  br label %59

59:                                               ; preds = %57, %41
  %60 = phi i8 [ %58, %57 ], [ %46, %41 ]
  %61 = phi i32 [ %37, %57 ], [ %39, %41 ]
  store i8 %60, ptr %3, align 4
  br label %62

62:                                               ; preds = %59, %52, %47
  %63 = phi i32 [ %37, %52 ], [ %37, %47 ], [ %61, %59 ]
  %64 = phi i8 [ %34, %52 ], [ %34, %47 ], [ %60, %59 ]
  %65 = phi i32 [ %35, %52 ], [ %35, %47 ], [ 1, %59 ]
  %66 = and i8 %64, 4
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.snd_interval, ptr %1, i32 0, i32 2
  %70 = load i8, ptr %69, align 4
  %71 = and i8 %70, 4
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  %74 = or i8 %64, 4
  store i8 %74, ptr %3, align 4
  br label %75

75:                                               ; preds = %73, %68, %62
  %76 = phi i8 [ %64, %62 ], [ %74, %73 ], [ %64, %68 ]
  %77 = phi i32 [ %65, %62 ], [ 1, %73 ], [ %65, %68 ]
  %78 = and i8 %76, 4
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %94, label %80

80:                                               ; preds = %75
  %81 = and i8 %76, 1
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = add i32 %33, 1
  store i32 %84, ptr %0, align 4
  %85 = and i8 %76, -2
  store i8 %85, ptr %3, align 4
  br label %86

86:                                               ; preds = %83, %80
  %87 = phi i32 [ %84, %83 ], [ %33, %80 ]
  %88 = phi i8 [ %85, %83 ], [ %76, %80 ]
  %89 = and i8 %88, 2
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %86
  %92 = add i32 %63, -1
  store i32 %92, ptr %36, align 4
  %93 = and i8 %88, -3
  store i8 %93, ptr %3, align 4
  br label %101

94:                                               ; preds = %75
  %95 = and i8 %76, 3
  %96 = icmp eq i8 %95, 0
  %97 = icmp eq i32 %33, %63
  %98 = select i1 %96, i1 %97, i1 false
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = or i8 %76, 4
  store i8 %100, ptr %3, align 4
  br label %108

101:                                              ; preds = %94, %91, %86
  %102 = phi i8 [ %76, %94 ], [ %88, %86 ], [ %93, %91 ]
  %103 = phi i32 [ %63, %94 ], [ %63, %86 ], [ %92, %91 ]
  %104 = phi i32 [ %33, %94 ], [ %87, %86 ], [ %87, %91 ]
  %105 = icmp ugt i32 %104, %103
  br i1 %105, label %112, label %106

106:                                              ; preds = %101
  %107 = icmp eq i32 %104, %103
  br i1 %107, label %108, label %115

108:                                              ; preds = %106, %99
  %109 = phi i8 [ %100, %99 ], [ %102, %106 ]
  %110 = and i8 %109, 3
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %108, %101
  %113 = phi i8 [ %109, %108 ], [ %102, %101 ]
  %114 = or i8 %113, 8
  store i8 %114, ptr %3, align 4
  br label %115

115:                                              ; preds = %112, %108, %106, %2
  %116 = phi i32 [ -22, %112 ], [ -22, %2 ], [ %77, %106 ], [ %77, %108 ]
  ret i32 %116
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @snd_interval_mul(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.snd_interval, ptr %0, i32 0, i32 2
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.snd_interval, ptr %1, i32 0, i32 2
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8, %3
  %14 = getelementptr inbounds %struct.snd_interval, ptr %2, i32 0, i32 2
  %15 = load i8, ptr %14, align 4
  %16 = or i8 %15, 8
  store i8 %16, ptr %14, align 4
  br label %76

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.snd_interval, ptr %2, i32 0, i32 2
  %19 = load i8, ptr %18, align 4
  %20 = and i8 %19, -9
  store i8 %20, ptr %18, align 4
  %21 = load i32, ptr %0, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load i32, ptr %1, align 4
  %25 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %21, i32 %24) #19
  %26 = extractvalue { i32, i1 } %25, 1
  %27 = mul i32 %24, %21
  %28 = select i1 %26, i32 -1, i32 %27
  br label %29

29:                                               ; preds = %23, %17
  %30 = phi i32 [ 0, %17 ], [ %28, %23 ]
  store i32 %30, ptr %2, align 4
  %31 = load i8, ptr %4, align 4
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i8, ptr %9, align 4
  %36 = and i8 %35, 1
  %37 = icmp ne i8 %36, 0
  br label %38

38:                                               ; preds = %34, %29
  %39 = phi i1 [ true, %29 ], [ %37, %34 ]
  %40 = zext i1 %39 to i8
  %41 = and i8 %19, -10
  %42 = or i8 %41, %40
  store i8 %42, ptr %18, align 4
  %43 = getelementptr inbounds %struct.snd_interval, ptr %0, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.snd_interval, ptr %1, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %44, i32 %48) #19
  %50 = extractvalue { i32, i1 } %49, 1
  %51 = mul i32 %48, %44
  %52 = select i1 %50, i32 -1, i32 %51
  br label %53

53:                                               ; preds = %46, %38
  %54 = phi i32 [ 0, %38 ], [ %52, %46 ]
  %55 = getelementptr inbounds %struct.snd_interval, ptr %2, i32 0, i32 1
  store i32 %54, ptr %55, align 4
  %56 = load i8, ptr %4, align 4
  %57 = and i8 %56, 2
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i8, ptr %9, align 4
  %61 = and i8 %60, 2
  br label %62

62:                                               ; preds = %59, %53
  %63 = phi i8 [ 2, %53 ], [ %61, %59 ]
  %64 = and i8 %42, -11
  %65 = or i8 %63, %64
  store i8 %65, ptr %18, align 4
  %66 = load i8, ptr %4, align 4
  %67 = and i8 %66, 4
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %62
  %70 = load i8, ptr %9, align 4
  %71 = and i8 %70, 4
  br label %72

72:                                               ; preds = %69, %62
  %73 = phi i8 [ 0, %62 ], [ %71, %69 ]
  %74 = and i8 %65, -13
  %75 = or i8 %73, %74
  store i8 %75, ptr %18, align 4
  br label %76

76:                                               ; preds = %72, %13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @snd_interval_div(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.snd_interval, ptr %0, i32 0, i32 2
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.snd_interval, ptr %1, i32 0, i32 2
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8, %3
  %14 = getelementptr inbounds %struct.snd_interval, ptr %2, i32 0, i32 2
  %15 = load i8, ptr %14, align 4
  %16 = or i8 %15, 8
  store i8 %16, ptr %14, align 4
  br label %79

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.snd_interval, ptr %2, i32 0, i32 2
  %19 = load i8, ptr %18, align 4
  %20 = and i8 %19, -9
  store i8 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.snd_interval, ptr %1, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 -1, ptr %2, align 4
  br label %33

25:                                               ; preds = %17
  %26 = load i32, ptr %0, align 4
  %27 = freeze i32 %26
  %28 = freeze i32 %22
  %29 = udiv i32 %27, %28
  %30 = mul i32 %29, %28
  %31 = sub i32 %27, %30
  store i32 %29, ptr %2, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %25, %24
  %34 = load i8, ptr %4, align 4
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i8, ptr %9, align 4
  %39 = and i8 %38, 2
  %40 = icmp ne i8 %39, 0
  br label %41

41:                                               ; preds = %37, %33, %25
  %42 = phi i1 [ true, %33 ], [ true, %25 ], [ %40, %37 ]
  %43 = zext i1 %42 to i8
  %44 = and i8 %19, -10
  %45 = or i8 %44, %43
  store i8 %45, ptr %18, align 4
  %46 = load i32, ptr %1, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %73, label %48

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.snd_interval, ptr %0, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = freeze i32 %50
  %52 = freeze i32 %46
  %53 = udiv i32 %51, %52
  %54 = mul i32 %53, %52
  %55 = sub i32 %51, %54
  %56 = getelementptr inbounds %struct.snd_interval, ptr %2, i32 0, i32 1
  store i32 %53, ptr %56, align 4
  %57 = icmp eq i32 %55, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %48
  %59 = add i32 %53, 1
  store i32 %59, ptr %56, align 4
  %60 = or i8 %45, 2
  br label %76

61:                                               ; preds = %48
  %62 = load i8, ptr %4, align 4
  %63 = and i8 %62, 2
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i8, ptr %9, align 4
  %67 = shl i8 %66, 1
  %68 = and i8 %67, 2
  br label %69

69:                                               ; preds = %65, %61
  %70 = phi i8 [ 2, %61 ], [ %68, %65 ]
  %71 = and i8 %45, -11
  %72 = or i8 %70, %71
  br label %76

73:                                               ; preds = %41
  %74 = getelementptr inbounds %struct.snd_interval, ptr %2, i32 0, i32 1
  store i32 -1, ptr %74, align 4
  %75 = and i8 %45, -11
  br label %76

76:                                               ; preds = %73, %69, %58
  %77 = phi i8 [ %60, %58 ], [ %72, %69 ], [ %75, %73 ]
  %78 = and i8 %77, -5
  store i8 %78, ptr %18, align 4
  br label %79

79:                                               ; preds = %76, %13
  ret void
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_interval_muldivk(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #8 {
  %5 = getelementptr inbounds %struct.snd_interval, ptr %0, i32 0, i32 2
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.snd_interval, ptr %1, i32 0, i32 2
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, 8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9, %4
  %15 = getelementptr inbounds %struct.snd_interval, ptr %3, i32 0, i32 2
  %16 = load i8, ptr %15, align 4
  %17 = or i8 %16, 8
  store i8 %17, ptr %15, align 4
  br label %119

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.snd_interval, ptr %3, i32 0, i32 2
  %20 = load i8, ptr %19, align 4
  %21 = and i8 %20, -9
  store i8 %21, ptr %19, align 4
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %47, label %23

23:                                               ; preds = %18
  %24 = load i32, ptr %1, align 4
  %25 = load i32, ptr %0, align 4
  %26 = zext i32 %25 to i64
  %27 = zext i32 %24 to i64
  %28 = mul nuw i64 %26, %27
  %29 = icmp ult i64 %28, 4294967296
  br i1 %29, label %30, label %37, !prof !9

30:                                               ; preds = %23
  %31 = trunc i64 %28 to i32
  %32 = freeze i32 %31
  %33 = udiv i32 %32, %2
  %34 = mul i32 %33, %2
  %35 = sub i32 %32, %34
  %36 = zext i32 %33 to i64
  br label %43

37:                                               ; preds = %23
  %38 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %2, i64 %28) #21, !srcloc !10
  %39 = extractvalue { i64, i64 } %38, 0
  %40 = extractvalue { i64, i64 } %38, 1
  %41 = lshr i64 %39, 32
  %42 = trunc i64 %41 to i32
  br label %43

43:                                               ; preds = %37, %30
  %44 = phi i64 [ %36, %30 ], [ %40, %37 ]
  %45 = phi i32 [ %35, %30 ], [ %42, %37 ]
  %46 = icmp ugt i64 %44, 4294967294
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %18
  store i32 -1, ptr %3, align 4
  br label %54

48:                                               ; preds = %43
  %49 = trunc i64 %44 to i32
  store i32 %49, ptr %3, align 4
  %50 = icmp eq i32 %45, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = and i8 %20, -10
  %53 = or i8 %52, 1
  store i8 %53, ptr %19, align 4
  br label %67

54:                                               ; preds = %48, %47
  %55 = load i8, ptr %5, align 4
  %56 = and i8 %55, 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i8, ptr %10, align 4
  %60 = and i8 %59, 1
  %61 = icmp ne i8 %60, 0
  br label %62

62:                                               ; preds = %58, %54
  %63 = phi i1 [ true, %54 ], [ %61, %58 ]
  %64 = zext i1 %63 to i8
  %65 = and i8 %20, -10
  %66 = or i8 %65, %64
  store i8 %66, ptr %19, align 4
  br i1 %22, label %94, label %67

67:                                               ; preds = %62, %51
  %68 = phi i8 [ %53, %51 ], [ %66, %62 ]
  %69 = getelementptr inbounds %struct.snd_interval, ptr %0, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.snd_interval, ptr %1, i32 0, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = zext i32 %70 to i64
  %74 = zext i32 %72 to i64
  %75 = mul nuw i64 %74, %73
  %76 = icmp ult i64 %75, 4294967296
  br i1 %76, label %77, label %84, !prof !9

77:                                               ; preds = %67
  %78 = trunc i64 %75 to i32
  %79 = freeze i32 %78
  %80 = udiv i32 %79, %2
  %81 = mul i32 %80, %2
  %82 = sub i32 %79, %81
  %83 = zext i32 %80 to i64
  br label %90

84:                                               ; preds = %67
  %85 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %2, i64 %75) #21, !srcloc !10
  %86 = extractvalue { i64, i64 } %85, 0
  %87 = extractvalue { i64, i64 } %85, 1
  %88 = lshr i64 %86, 32
  %89 = trunc i64 %88 to i32
  br label %90

90:                                               ; preds = %84, %77
  %91 = phi i64 [ %83, %77 ], [ %87, %84 ]
  %92 = phi i32 [ %82, %77 ], [ %89, %84 ]
  %93 = icmp ugt i64 %91, 4294967294
  br i1 %93, label %94, label %97

94:                                               ; preds = %90, %62
  %95 = phi i8 [ %68, %90 ], [ %66, %62 ]
  %96 = getelementptr inbounds %struct.snd_interval, ptr %3, i32 0, i32 1
  store i32 -1, ptr %96, align 4
  br label %104

97:                                               ; preds = %90
  %98 = trunc i64 %91 to i32
  %99 = getelementptr inbounds %struct.snd_interval, ptr %3, i32 0, i32 1
  store i32 %98, ptr %99, align 4
  %100 = icmp eq i32 %92, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = add nuw i32 %98, 1
  store i32 %102, ptr %99, align 4
  %103 = or i8 %68, 2
  br label %116

104:                                              ; preds = %97, %94
  %105 = phi i8 [ %95, %94 ], [ %68, %97 ]
  %106 = load i8, ptr %5, align 4
  %107 = and i8 %106, 2
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i8, ptr %10, align 4
  %111 = and i8 %110, 2
  br label %112

112:                                              ; preds = %109, %104
  %113 = phi i8 [ 2, %104 ], [ %111, %109 ]
  %114 = and i8 %105, -3
  %115 = or i8 %113, %114
  br label %116

116:                                              ; preds = %112, %101
  %117 = phi i8 [ %115, %112 ], [ %103, %101 ]
  %118 = and i8 %117, -5
  store i8 %118, ptr %19, align 4
  br label %119

119:                                              ; preds = %116, %14
  ret void
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_interval_mulkdiv(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) local_unnamed_addr #8 {
  %5 = getelementptr inbounds %struct.snd_interval, ptr %0, i32 0, i32 2
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.snd_interval, ptr %2, i32 0, i32 2
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, 8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9, %4
  %15 = getelementptr inbounds %struct.snd_interval, ptr %3, i32 0, i32 2
  %16 = load i8, ptr %15, align 4
  %17 = or i8 %16, 8
  store i8 %17, ptr %15, align 4
  br label %120

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.snd_interval, ptr %3, i32 0, i32 2
  %20 = load i8, ptr %19, align 4
  %21 = and i8 %20, -9
  store i8 %21, ptr %19, align 4
  %22 = getelementptr inbounds %struct.snd_interval, ptr %2, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %49, label %25

25:                                               ; preds = %18
  %26 = load i32, ptr %0, align 4
  %27 = zext i32 %26 to i64
  %28 = zext i32 %1 to i64
  %29 = mul nuw i64 %27, %28
  %30 = icmp ult i64 %29, 4294967296
  br i1 %30, label %31, label %39, !prof !9

31:                                               ; preds = %25
  %32 = trunc i64 %29 to i32
  %33 = freeze i32 %32
  %34 = freeze i32 %23
  %35 = udiv i32 %33, %34
  %36 = mul i32 %35, %34
  %37 = sub i32 %33, %36
  %38 = zext i32 %35 to i64
  br label %45

39:                                               ; preds = %25
  %40 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %23, i64 %29) #21, !srcloc !10
  %41 = extractvalue { i64, i64 } %40, 0
  %42 = extractvalue { i64, i64 } %40, 1
  %43 = lshr i64 %41, 32
  %44 = trunc i64 %43 to i32
  br label %45

45:                                               ; preds = %39, %31
  %46 = phi i64 [ %38, %31 ], [ %42, %39 ]
  %47 = phi i32 [ %37, %31 ], [ %44, %39 ]
  %48 = icmp ugt i64 %46, 4294967294
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %18
  store i32 -1, ptr %3, align 4
  br label %53

50:                                               ; preds = %45
  %51 = trunc i64 %46 to i32
  store i32 %51, ptr %3, align 4
  %52 = icmp eq i32 %47, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %50, %49
  %54 = load i8, ptr %5, align 4
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i8, ptr %10, align 4
  %59 = and i8 %58, 2
  %60 = icmp ne i8 %59, 0
  br label %61

61:                                               ; preds = %57, %53, %50
  %62 = phi i1 [ true, %53 ], [ true, %50 ], [ %60, %57 ]
  %63 = zext i1 %62 to i8
  %64 = and i8 %20, -10
  %65 = or i8 %64, %63
  store i8 %65, ptr %19, align 4
  %66 = load i32, ptr %2, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %114, label %68

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.snd_interval, ptr %0, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = zext i32 %70 to i64
  %72 = zext i32 %1 to i64
  %73 = mul nuw i64 %71, %72
  %74 = icmp ult i64 %73, 4294967296
  br i1 %74, label %75, label %83, !prof !9

75:                                               ; preds = %68
  %76 = trunc i64 %73 to i32
  %77 = freeze i32 %76
  %78 = freeze i32 %66
  %79 = udiv i32 %77, %78
  %80 = mul i32 %79, %78
  %81 = sub i32 %77, %80
  %82 = zext i32 %79 to i64
  br label %89

83:                                               ; preds = %68
  %84 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %66, i64 %73) #21, !srcloc !10
  %85 = extractvalue { i64, i64 } %84, 0
  %86 = extractvalue { i64, i64 } %84, 1
  %87 = lshr i64 %85, 32
  %88 = trunc i64 %87 to i32
  br label %89

89:                                               ; preds = %83, %75
  %90 = phi i64 [ %82, %75 ], [ %86, %83 ]
  %91 = phi i32 [ %81, %75 ], [ %88, %83 ]
  %92 = icmp ugt i64 %90, 4294967294
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.snd_interval, ptr %3, i32 0, i32 1
  store i32 -1, ptr %94, align 4
  br label %102

95:                                               ; preds = %89
  %96 = trunc i64 %90 to i32
  %97 = getelementptr inbounds %struct.snd_interval, ptr %3, i32 0, i32 1
  store i32 %96, ptr %97, align 4
  %98 = icmp eq i32 %91, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = add nuw i32 %96, 1
  store i32 %100, ptr %97, align 4
  %101 = or i8 %65, 2
  br label %117

102:                                              ; preds = %95, %93
  %103 = load i8, ptr %5, align 4
  %104 = and i8 %103, 2
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i8, ptr %10, align 4
  %108 = shl i8 %107, 1
  %109 = and i8 %108, 2
  br label %110

110:                                              ; preds = %106, %102
  %111 = phi i8 [ 2, %102 ], [ %109, %106 ]
  %112 = and i8 %65, -11
  %113 = or i8 %111, %112
  br label %117

114:                                              ; preds = %61
  %115 = getelementptr inbounds %struct.snd_interval, ptr %3, i32 0, i32 1
  store i32 -1, ptr %115, align 4
  %116 = and i8 %65, -11
  br label %117

117:                                              ; preds = %114, %110, %99
  %118 = phi i8 [ %101, %99 ], [ %113, %110 ], [ %116, %114 ]
  %119 = and i8 %118, -5
  store i8 %119, ptr %19, align 4
  br label %120

120:                                              ; preds = %117, %14
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_interval_ratnum(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4) #9 {
  %6 = alloca %struct.snd_interval, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #19
  %7 = getelementptr inbounds i8, ptr %6, i32 8
  store i32 0, ptr %7, align 4, !annotation !8
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %60, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %0, align 4
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 1, i32 %10
  br label %13

13:                                               ; preds = %52, %9
  %14 = phi i32 [ 0, %9 ], [ %56, %52 ]
  %15 = phi i32 [ 0, %9 ], [ %55, %52 ]
  %16 = phi i32 [ 0, %9 ], [ %54, %52 ]
  %17 = phi i32 [ 0, %9 ], [ %53, %52 ]
  %18 = getelementptr %struct.snd_ratnum, ptr %2, i32 %14
  %19 = load i32, ptr %18, align 4
  %20 = freeze i32 %19
  %21 = freeze i32 %12
  %22 = udiv i32 %20, %21
  %23 = mul i32 %22, %21
  %24 = sub i32 %20, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = add i32 %22, %26
  %28 = getelementptr %struct.snd_ratnum, ptr %2, i32 %14, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp ult i32 %27, %29
  br i1 %30, label %52, label %31

31:                                               ; preds = %13
  %32 = getelementptr %struct.snd_ratnum, ptr %2, i32 %14, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = icmp ugt i32 %27, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = sub i32 %27, %29
  %37 = getelementptr %struct.snd_ratnum, ptr %2, i32 %14, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = urem i32 %36, %38
  %40 = sub i32 %27, %39
  br label %41

41:                                               ; preds = %35, %31
  %42 = phi i32 [ %40, %35 ], [ %33, %31 ]
  %43 = mul i32 %42, %12
  %44 = sub i32 %19, %43
  %45 = tail call i32 @llvm.abs.i32(i32 %44, i1 false)
  %46 = icmp eq i32 %17, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %41
  %48 = mul i32 %45, %16
  %49 = mul i32 %42, %15
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %41
  br label %52

52:                                               ; preds = %51, %47, %13
  %53 = phi i32 [ %17, %13 ], [ %19, %51 ], [ %17, %47 ]
  %54 = phi i32 [ %16, %13 ], [ %42, %51 ], [ %16, %47 ]
  %55 = phi i32 [ %15, %13 ], [ %45, %51 ], [ %15, %47 ]
  %56 = add nuw i32 %14, 1
  %57 = icmp eq i32 %56, %1
  br i1 %57, label %58, label %13

58:                                               ; preds = %52
  %59 = icmp eq i32 %54, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %58, %5
  %61 = getelementptr inbounds %struct.snd_interval, ptr %0, i32 0, i32 2
  %62 = load i8, ptr %61, align 4
  %63 = or i8 %62, 8
  store i8 %63, ptr %61, align 4
  br label %167

64:                                               ; preds = %58
  %65 = freeze i32 %53
  %66 = freeze i32 %54
  %67 = udiv i32 %65, %66
  store i32 %67, ptr %6, align 4
  %68 = mul i32 %67, %66
  %69 = sub i32 %65, %68
  %70 = icmp ne i32 %69, 0
  %71 = getelementptr inbounds %struct.snd_interval, ptr %6, i32 0, i32 2
  %72 = zext i1 %70 to i8
  br i1 %8, label %124, label %73

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.snd_interval, ptr %0, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %112, label %77

77:                                               ; preds = %116, %73
  %78 = phi i32 [ %120, %116 ], [ 0, %73 ]
  %79 = phi i32 [ %119, %116 ], [ 0, %73 ]
  %80 = phi i32 [ %118, %116 ], [ 0, %73 ]
  %81 = phi i32 [ %117, %116 ], [ 0, %73 ]
  %82 = getelementptr %struct.snd_ratnum, ptr %2, i32 %78
  %83 = load i32, ptr %82, align 4
  %84 = udiv i32 %83, %75
  %85 = getelementptr %struct.snd_ratnum, ptr %2, i32 %78, i32 2
  %86 = load i32, ptr %85, align 4
  %87 = icmp ugt i32 %84, %86
  br i1 %87, label %116, label %88

88:                                               ; preds = %77
  %89 = getelementptr %struct.snd_ratnum, ptr %2, i32 %78, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = icmp ult i32 %84, %90
  br i1 %91, label %101, label %92

92:                                               ; preds = %88
  %93 = sub i32 %84, %90
  %94 = getelementptr %struct.snd_ratnum, ptr %2, i32 %78, i32 3
  %95 = load i32, ptr %94, align 4
  %96 = urem i32 %93, %95
  %97 = icmp eq i32 %96, 0
  %98 = sub i32 %95, %96
  %99 = select i1 %97, i32 0, i32 %98
  %100 = add i32 %99, %84
  br label %101

101:                                              ; preds = %92, %88
  %102 = phi i32 [ %100, %92 ], [ %90, %88 ]
  %103 = mul i32 %102, %75
  %104 = sub i32 %103, %83
  %105 = tail call i32 @llvm.abs.i32(i32 %104, i1 false)
  %106 = icmp eq i32 %81, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %101
  %108 = mul i32 %105, %80
  %109 = mul i32 %102, %79
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %107, %101
  br label %116

112:                                              ; preds = %73
  %113 = getelementptr inbounds %struct.snd_interval, ptr %0, i32 0, i32 2
  %114 = load i8, ptr %113, align 4
  %115 = or i8 %114, 8
  store i8 %115, ptr %113, align 4
  br label %167

116:                                              ; preds = %111, %107, %77
  %117 = phi i32 [ %81, %107 ], [ %83, %111 ], [ %81, %77 ]
  %118 = phi i32 [ %80, %107 ], [ %102, %111 ], [ %80, %77 ]
  %119 = phi i32 [ %79, %107 ], [ %105, %111 ], [ %79, %77 ]
  %120 = add nuw i32 %78, 1
  %121 = icmp eq i32 %120, %1
  br i1 %121, label %122, label %77

122:                                              ; preds = %116
  %123 = icmp eq i32 %118, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %122, %64
  %125 = getelementptr inbounds %struct.snd_interval, ptr %0, i32 0, i32 2
  %126 = load i8, ptr %125, align 4
  %127 = or i8 %126, 8
  store i8 %127, ptr %125, align 4
  br label %167

128:                                              ; preds = %122
  %129 = freeze i32 %117
  %130 = freeze i32 %118
  %131 = udiv i32 %129, %130
  %132 = mul i32 %131, %130
  %133 = sub i32 %129, %132
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i32
  %136 = add i32 %131, %135
  %137 = getelementptr inbounds %struct.snd_interval, ptr %6, i32 0, i32 1
  store i32 %136, ptr %137, align 4
  %138 = icmp eq i32 %133, 0
  %139 = select i1 %138, i8 0, i8 2
  %140 = or i8 %139, %72
  store i8 %140, ptr %71, align 4
  %141 = call i32 @snd_interval_refine(ptr noundef %0, ptr noundef nonnull %6)
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %167, label %143

143:                                              ; preds = %128
  %144 = load i32, ptr %0, align 4
  %145 = getelementptr inbounds %struct.snd_interval, ptr %0, i32 0, i32 1
  %146 = load i32, ptr %145, align 4
  %147 = icmp eq i32 %144, %146
  br i1 %147, label %156, label %148

148:                                              ; preds = %143
  %149 = add i32 %144, 1
  %150 = icmp eq i32 %149, %146
  br i1 %150, label %151, label %167

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.snd_interval, ptr %0, i32 0, i32 2
  %153 = load i8, ptr %152, align 4
  %154 = and i8 %153, 3
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %167, label %156

156:                                              ; preds = %151, %143
  %157 = mul i32 %119, %54
  %158 = mul i32 %118, %55
  %159 = icmp ult i32 %157, %158
  %160 = select i1 %159, i32 %118, i32 %54
  %161 = icmp eq ptr %3, null
  br i1 %161, label %164, label %162

162:                                              ; preds = %156
  %163 = select i1 %159, i32 %117, i32 %53
  store i32 %163, ptr %3, align 4
  br label %164

164:                                              ; preds = %162, %156
  %165 = icmp eq ptr %4, null
  br i1 %165, label %167, label %166

166:                                              ; preds = %164
  store i32 %160, ptr %4, align 4
  br label %167

167:                                              ; preds = %166, %164, %151, %148, %128, %124, %112, %60
  %168 = phi i32 [ -22, %60 ], [ -22, %112 ], [ -22, %124 ], [ %141, %128 ], [ %141, %164 ], [ %141, %166 ], [ %141, %148 ], [ %141, %151 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #19
  ret i32 %168
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_interval_list(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #9 {
  %5 = alloca %struct.snd_interval, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  %6 = getelementptr inbounds i8, ptr %5, i32 8
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.snd_interval, ptr %0, i32 0, i32 2
  %10 = load i8, ptr %9, align 4
  %11 = or i8 %10, 8
  store i8 %11, ptr %9, align 4
  br label %55

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.snd_interval, ptr %5, i32 0, i32 1
  %14 = icmp eq i32 %3, 0
  %15 = getelementptr inbounds %struct.snd_interval, ptr %0, i32 0, i32 2
  %16 = getelementptr inbounds %struct.snd_interval, ptr %0, i32 0, i32 1
  br label %17

17:                                               ; preds = %48, %12
  %18 = phi i32 [ 0, %12 ], [ %51, %48 ]
  %19 = phi i32 [ -1, %12 ], [ %50, %48 ]
  %20 = phi i32 [ 0, %12 ], [ %49, %48 ]
  br i1 %14, label %25, label %21

21:                                               ; preds = %17
  %22 = shl nuw i32 1, %18
  %23 = and i32 %22, %3
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %48, label %25

25:                                               ; preds = %21, %17
  %26 = getelementptr i32, ptr %2, i32 %18
  %27 = load i32, ptr %26, align 4
  %28 = load i32, ptr %0, align 4
  %29 = icmp ugt i32 %28, %27
  br i1 %29, label %48, label %30

30:                                               ; preds = %25
  %31 = icmp eq i32 %28, %27
  br i1 %31, label %32, label %36

32:                                               ; preds = %30
  %33 = load i8, ptr %15, align 4
  %34 = and i8 %33, 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %32, %30
  %37 = load i32, ptr %16, align 4
  %38 = icmp ult i32 %37, %27
  br i1 %38, label %48, label %39

39:                                               ; preds = %36
  %40 = icmp eq i32 %37, %27
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  %42 = load i8, ptr %15, align 4
  %43 = and i8 %42, 2
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41, %39
  %46 = tail call i32 @llvm.umin.i32(i32 %19, i32 %27)
  %47 = tail call i32 @llvm.umax.i32(i32 %20, i32 %27)
  br label %48

48:                                               ; preds = %45, %41, %36, %32, %25, %21
  %49 = phi i32 [ %20, %25 ], [ %20, %32 ], [ %20, %36 ], [ %20, %41 ], [ %20, %21 ], [ %47, %45 ]
  %50 = phi i32 [ %19, %25 ], [ %19, %32 ], [ %19, %36 ], [ %19, %41 ], [ %19, %21 ], [ %46, %45 ]
  %51 = add nuw i32 %18, 1
  %52 = icmp eq i32 %51, %1
  br i1 %52, label %53, label %17

53:                                               ; preds = %48
  store i32 %50, ptr %5, align 4
  store i32 %49, ptr %13, align 4
  %54 = call i32 @snd_interval_refine(ptr noundef %0, ptr noundef nonnull %5)
  br label %55

55:                                               ; preds = %53, %8
  %56 = phi i32 [ %54, %53 ], [ -22, %8 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  ret i32 %56
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_interval_ranges(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #9 {
  %5 = alloca %struct.snd_interval, align 4
  %6 = alloca %struct.snd_interval, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  %7 = getelementptr inbounds i8, ptr %5, i32 8
  store i32 0, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #19
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.snd_interval, ptr %0, i32 0, i32 2
  %11 = load i8, ptr %10, align 4
  %12 = or i8 %11, 8
  store i8 %12, ptr %10, align 4
  br label %67

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.snd_interval, ptr %5, i32 0, i32 2
  %15 = getelementptr inbounds %struct.snd_interval, ptr %5, i32 0, i32 1
  %16 = icmp eq i32 %3, 0
  %17 = getelementptr inbounds %struct.snd_interval, ptr %6, i32 0, i32 2
  %18 = getelementptr inbounds %struct.snd_interval, ptr %6, i32 0, i32 1
  br label %19

19:                                               ; preds = %59, %13
  %20 = phi i32 [ 0, %13 ], [ %63, %59 ]
  %21 = phi i32 [ -1, %13 ], [ %62, %59 ]
  %22 = phi i8 [ 0, %13 ], [ %61, %59 ]
  %23 = phi i32 [ 0, %13 ], [ %60, %59 ]
  br i1 %16, label %28, label %24

24:                                               ; preds = %19
  %25 = shl nuw i32 1, %20
  %26 = and i32 %25, %3
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %59, label %28

28:                                               ; preds = %24, %19
  %29 = getelementptr %struct.snd_interval, ptr %2, i32 %20
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef align 4 dereferenceable(12) %29, i32 12, i1 false) #19
  %30 = call i32 @snd_interval_refine(ptr noundef nonnull %6, ptr noundef %0)
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %59, label %32

32:                                               ; preds = %28
  %33 = load i8, ptr %17, align 4
  %34 = and i8 %33, 8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %32
  %37 = load i32, ptr %6, align 4
  %38 = icmp ult i32 %37, %21
  %39 = zext i1 %38 to i8
  %40 = or i8 %22, %39
  %41 = call i32 @llvm.umin.i32(i32 %37, i32 %21)
  %42 = icmp ule i32 %37, %21
  %43 = and i8 %33, 1
  %44 = icmp eq i8 %43, 0
  %45 = select i1 %42, i1 %44, i1 false
  %46 = and i8 %22, -2
  %47 = select i1 %45, i8 %46, i8 %40
  %48 = load i32, ptr %18, align 4
  %49 = icmp ugt i32 %48, %23
  %50 = or i8 %47, 2
  %51 = call i32 @llvm.umax.i32(i32 %48, i32 %23)
  %52 = select i1 %49, i8 %50, i8 %47
  %53 = icmp uge i32 %48, %23
  %54 = and i8 %33, 2
  %55 = icmp eq i8 %54, 0
  %56 = select i1 %53, i1 %55, i1 false
  %57 = and i8 %52, -3
  %58 = select i1 %56, i8 %57, i8 %52
  br label %59

59:                                               ; preds = %36, %32, %28, %24
  %60 = phi i32 [ %23, %32 ], [ %23, %28 ], [ %23, %24 ], [ %51, %36 ]
  %61 = phi i8 [ %22, %32 ], [ %22, %28 ], [ %22, %24 ], [ %58, %36 ]
  %62 = phi i32 [ %21, %32 ], [ %21, %28 ], [ %21, %24 ], [ %41, %36 ]
  %63 = add nuw i32 %20, 1
  %64 = icmp eq i32 %63, %1
  br i1 %64, label %65, label %19

65:                                               ; preds = %59
  store i32 %62, ptr %5, align 4
  store i8 %61, ptr %14, align 4
  store i32 %60, ptr %15, align 4
  %66 = call i32 @snd_interval_refine(ptr noundef %0, ptr noundef nonnull %5)
  br label %67

67:                                               ; preds = %65, %9
  %68 = phi i32 [ %66, %65 ], [ -22, %9 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_hw_rule_add(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ...) #0 {
  %7 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  store i32 0, ptr %7, align 4, !annotation !8
  call void @llvm.va_start(ptr nonnull %7)
  %8 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %0, i32 0, i32 47, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %0, i32 0, i32 47, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %0, i32 0, i32 47, i32 4
  %15 = load ptr, ptr %14, align 4
  br label %28

16:                                               ; preds = %6
  %17 = add i32 %11, 16
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %0, i32 0, i32 47, i32 4
  %19 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 36) #19
  %20 = extractvalue { i32, i1 } %19, 1
  br i1 %20, label %67, label %21, !prof !11

21:                                               ; preds = %16
  %22 = load ptr, ptr %18, align 4
  %23 = extractvalue { i32, i1 } %19, 0
  %24 = call noalias ptr @krealloc(ptr noundef %22, i32 noundef %23, i32 noundef 3264) #22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %67, label %26

26:                                               ; preds = %21
  store ptr %24, ptr %18, align 4
  store i32 %17, ptr %10, align 4
  %27 = load i32, ptr %8, align 4
  br label %28

28:                                               ; preds = %26, %13
  %29 = phi i32 [ %9, %13 ], [ %27, %26 ]
  %30 = phi ptr [ %15, %13 ], [ %24, %26 ]
  %31 = getelementptr %struct.snd_pcm_hw_rule, ptr %30, i32 %29
  store i32 %1, ptr %31, align 4
  %32 = getelementptr %struct.snd_pcm_hw_rule, ptr %30, i32 %29, i32 3
  store ptr %3, ptr %32, align 4
  %33 = getelementptr %struct.snd_pcm_hw_rule, ptr %30, i32 %29, i32 1
  store i32 %2, ptr %33, align 4
  %34 = getelementptr %struct.snd_pcm_hw_rule, ptr %30, i32 %29, i32 4
  store ptr %4, ptr %34, align 4
  %35 = getelementptr %struct.snd_pcm_hw_rule, ptr %30, i32 %29, i32 2, i32 0
  store i32 %5, ptr %35, align 4
  %36 = icmp slt i32 %5, 0
  br i1 %36, label %64, label %37

37:                                               ; preds = %28
  %38 = load ptr, ptr %7, align 4
  %39 = getelementptr inbounds i8, ptr %38, i32 4
  store ptr %39, ptr %7, align 4
  %40 = load i32, ptr %38, align 4
  %41 = getelementptr %struct.snd_pcm_hw_rule, ptr %30, i32 %29, i32 2, i32 1
  store i32 %40, ptr %41, align 4
  %42 = icmp slt i32 %40, 0
  br i1 %42, label %64, label %43

43:                                               ; preds = %37
  %44 = load ptr, ptr %7, align 4
  %45 = getelementptr inbounds i8, ptr %44, i32 4
  store ptr %45, ptr %7, align 4
  %46 = load i32, ptr %44, align 4
  %47 = getelementptr %struct.snd_pcm_hw_rule, ptr %30, i32 %29, i32 2, i32 2
  store i32 %46, ptr %47, align 4
  %48 = icmp slt i32 %46, 0
  br i1 %48, label %64, label %49

49:                                               ; preds = %43
  %50 = load ptr, ptr %7, align 4
  %51 = getelementptr inbounds i8, ptr %50, i32 4
  store ptr %51, ptr %7, align 4
  %52 = load i32, ptr %50, align 4
  %53 = getelementptr %struct.snd_pcm_hw_rule, ptr %30, i32 %29, i32 2, i32 3
  store i32 %52, ptr %53, align 4
  %54 = icmp slt i32 %52, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %49
  %56 = load ptr, ptr %7, align 4
  %57 = getelementptr inbounds i8, ptr %56, i32 4
  store ptr %57, ptr %7, align 4
  %58 = load i32, ptr %56, align 4
  %59 = getelementptr %struct.snd_pcm_hw_rule, ptr %30, i32 %29, i32 2, i32 4
  store i32 %58, ptr %59, align 4
  %60 = icmp slt i32 %58, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %55
  %62 = load ptr, ptr %7, align 4
  %63 = getelementptr inbounds i8, ptr %62, i32 4
  store ptr %63, ptr %7, align 4
  br label %67

64:                                               ; preds = %55, %49, %43, %37, %28
  %65 = load i32, ptr %8, align 4
  %66 = add i32 %65, 1
  store i32 %66, ptr %8, align 4
  br label %67

67:                                               ; preds = %64, %61, %21, %16
  %68 = phi i32 [ -22, %61 ], [ 0, %64 ], [ -12, %16 ], [ -12, %21 ]
  call void @llvm.va_end(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  ret i32 %68
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #10

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_pcm_hw_constraint_mask(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %0, i32 0, i32 47
  %5 = getelementptr [3 x %struct.snd_mask], ptr %4, i32 0, i32 %1
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, %2
  store i32 %7, ptr %5, align 4
  %8 = getelementptr i32, ptr %5, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(28) %8, i8 0, i32 28, i1 false)
  %9 = icmp eq i32 %7, 0
  %10 = select i1 %9, i32 -22, i32 0
  ret i32 %10
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_pcm_hw_constraint_mask64(ptr nocapture noundef %0, i32 noundef %1, i64 noundef %2) #7 {
  %4 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %0, i32 0, i32 47
  %5 = getelementptr [3 x %struct.snd_mask], ptr %4, i32 0, i32 %1
  %6 = trunc i64 %2 to i32
  %7 = load i32, ptr %5, align 4
  %8 = and i32 %7, %6
  store i32 %8, ptr %5, align 4
  %9 = lshr i64 %2, 32
  %10 = trunc i64 %9 to i32
  %11 = getelementptr [8 x i32], ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, %10
  store i32 %13, ptr %11, align 4
  %14 = getelementptr i32, ptr %5, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(24) %14, i8 0, i32 24, i1 false)
  %15 = icmp eq i32 %8, 0
  %16 = icmp eq i32 %13, 0
  %17 = select i1 %15, i1 %16, i1 false
  %18 = select i1 %17, i32 -22, i32 0
  ret i32 %18
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_pcm_hw_constraint_integer(ptr nocapture noundef %0, i32 noundef %1) #6 {
  %3 = add i32 %1, -8
  %4 = getelementptr %struct.snd_pcm_runtime, ptr %0, i32 0, i32 47, i32 1, i32 %3
  %5 = getelementptr %struct.snd_pcm_runtime, ptr %0, i32 0, i32 47, i32 1, i32 %3, i32 2
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = and i8 %6, 3
  %11 = icmp eq i8 %10, 3
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = getelementptr %struct.snd_pcm_runtime, ptr %0, i32 0, i32 47, i32 1, i32 %3, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %19, label %17

17:                                               ; preds = %12, %9
  %18 = or i8 %6, 4
  store i8 %18, ptr %5, align 4
  br label %19

19:                                               ; preds = %17, %12, %2
  %20 = phi i32 [ 1, %17 ], [ 0, %2 ], [ -22, %12 ]
  ret i32 %20
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_pcm_hw_constraint_minmax(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7 {
  %5 = alloca %struct.snd_interval, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  %6 = getelementptr inbounds i8, ptr %5, i32 8
  store i32 0, ptr %6, align 4, !annotation !8
  store i32 %2, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_interval, ptr %5, i32 0, i32 1
  store i32 %3, ptr %7, align 4
  %8 = add i32 %1, -8
  %9 = getelementptr %struct.snd_pcm_runtime, ptr %0, i32 0, i32 47, i32 1, i32 %8
  %10 = call i32 @snd_interval_refine(ptr noundef %9, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_hw_constraint_list(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @snd_pcm_hw_rule_list, ptr noundef %3, i32 noundef %2, i32 noundef -1)
  ret i32 %5
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_hw_rule_list(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #11 {
  %3 = alloca %struct.snd_interval, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, -8
  %9 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %8
  %10 = getelementptr inbounds %struct.snd_pcm_hw_constraint_list, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr inbounds %struct.snd_pcm_hw_constraint_list, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  %15 = getelementptr inbounds i8, ptr %3, i32 8
  store i32 0, ptr %15, align 4, !annotation !8
  %16 = icmp eq i32 %11, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %8, i32 2
  %19 = load i8, ptr %18, align 4
  %20 = or i8 %19, 8
  store i8 %20, ptr %18, align 4
  br label %64

21:                                               ; preds = %2
  %22 = icmp eq i32 %14, 0
  %23 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %8, i32 2
  %24 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %8, i32 1
  br label %25

25:                                               ; preds = %56, %21
  %26 = phi i32 [ 0, %21 ], [ %59, %56 ]
  %27 = phi i32 [ -1, %21 ], [ %58, %56 ]
  %28 = phi i32 [ 0, %21 ], [ %57, %56 ]
  br i1 %22, label %33, label %29

29:                                               ; preds = %25
  %30 = shl nuw i32 1, %26
  %31 = and i32 %30, %14
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %56, label %33

33:                                               ; preds = %29, %25
  %34 = getelementptr i32, ptr %12, i32 %26
  %35 = load i32, ptr %34, align 4
  %36 = load i32, ptr %9, align 4
  %37 = icmp ugt i32 %36, %35
  br i1 %37, label %56, label %38

38:                                               ; preds = %33
  %39 = icmp eq i32 %36, %35
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = load i8, ptr %23, align 4
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %40, %38
  %45 = load i32, ptr %24, align 4
  %46 = icmp ult i32 %45, %35
  br i1 %46, label %56, label %47

47:                                               ; preds = %44
  %48 = icmp eq i32 %45, %35
  br i1 %48, label %49, label %53

49:                                               ; preds = %47
  %50 = load i8, ptr %23, align 4
  %51 = and i8 %50, 2
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49, %47
  %54 = tail call i32 @llvm.umin.i32(i32 %27, i32 %35) #19
  %55 = tail call i32 @llvm.umax.i32(i32 %28, i32 %35) #19
  br label %56

56:                                               ; preds = %53, %49, %44, %40, %33, %29
  %57 = phi i32 [ %28, %33 ], [ %28, %40 ], [ %28, %44 ], [ %28, %49 ], [ %28, %29 ], [ %55, %53 ]
  %58 = phi i32 [ %27, %33 ], [ %27, %40 ], [ %27, %44 ], [ %27, %49 ], [ %27, %29 ], [ %54, %53 ]
  %59 = add nuw i32 %26, 1
  %60 = icmp eq i32 %59, %11
  br i1 %60, label %61, label %25

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.snd_interval, ptr %3, i32 0, i32 1
  store i32 %58, ptr %3, align 4
  store i32 %57, ptr %62, align 4
  %63 = call i32 @snd_interval_refine(ptr noundef %9, ptr noundef nonnull %3) #19
  br label %64

64:                                               ; preds = %61, %17
  %65 = phi i32 [ %63, %61 ], [ -22, %17 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_hw_constraint_ranges(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @snd_pcm_hw_rule_ranges, ptr noundef %3, i32 noundef %2, i32 noundef -1)
  ret i32 %5
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_hw_rule_ranges(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #11 {
  %3 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -8
  %8 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %7
  %9 = load i32, ptr %4, align 4
  %10 = getelementptr inbounds %struct.snd_pcm_hw_constraint_ranges, ptr %4, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.snd_pcm_hw_constraint_ranges, ptr %4, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @snd_interval_ranges(ptr noundef %8, i32 noundef %9, ptr noundef %11, i32 noundef %13)
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_hw_constraint_ratnums(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @snd_pcm_hw_rule_ratnums, ptr noundef %3, i32 noundef %2, i32 noundef -1)
  ret i32 %5
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_hw_rule_ratnums(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #11 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  store i32 0, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  store i32 0, ptr %4, align 4
  %7 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -8
  %10 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %9
  %11 = load i32, ptr %6, align 4
  %12 = getelementptr inbounds %struct.snd_pcm_hw_constraint_ratnums, ptr %6, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 @snd_interval_ratnum(ptr noundef %10, i32 noundef %11, ptr noundef %13, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %15 = icmp sgt i32 %14, -1
  %16 = load i32, ptr %4, align 4
  %17 = icmp ne i32 %16, 0
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load i32, ptr %7, align 4
  %21 = icmp eq i32 %20, 11
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, ptr %3, align 4
  %24 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 9
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 10
  store i32 %16, ptr %25, align 4
  br label %26

26:                                               ; preds = %22, %19, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_hw_constraint_ratdens(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @snd_pcm_hw_rule_ratdens, ptr noundef %3, i32 noundef %2, i32 noundef -1)
  ret i32 %5
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_hw_rule_ratdens(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #11 {
  %3 = alloca %struct.snd_interval, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, -8
  %9 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %8
  %10 = load i32, ptr %5, align 4
  %11 = getelementptr inbounds %struct.snd_pcm_hw_constraint_ratdens, ptr %5, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  %13 = getelementptr inbounds i8, ptr %3, i32 8
  store i32 0, ptr %13, align 4, !annotation !8
  %14 = icmp eq i32 %10, 0
  br i1 %14, label %152, label %15

15:                                               ; preds = %2
  %16 = load i32, ptr %9, align 4
  %17 = icmp eq i32 %16, 0
  br label %18

18:                                               ; preds = %61, %15
  %19 = phi i32 [ 0, %15 ], [ %65, %61 ]
  %20 = phi i32 [ 0, %15 ], [ %64, %61 ]
  %21 = phi i32 [ 0, %15 ], [ %63, %61 ]
  %22 = phi i32 [ 0, %15 ], [ %62, %61 ]
  %23 = getelementptr %struct.snd_ratden, ptr %12, i32 %19, i32 3
  %24 = load i32, ptr %23, align 4
  br i1 %17, label %25, label %28

25:                                               ; preds = %18
  %26 = getelementptr %struct.snd_ratden, ptr %12, i32 %19, i32 1
  %27 = load i32, ptr %26, align 4
  br label %36

28:                                               ; preds = %18
  %29 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %16, i32 %24) #19
  %30 = extractvalue { i32, i1 } %29, 1
  %31 = mul i32 %24, %16
  %32 = select i1 %30, i32 -1, i32 %31
  %33 = getelementptr %struct.snd_ratden, ptr %12, i32 %19, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = icmp ugt i32 %32, %34
  br i1 %35, label %61, label %36

36:                                               ; preds = %28, %25
  %37 = phi i32 [ %27, %25 ], [ %34, %28 ]
  %38 = phi i32 [ 0, %25 ], [ %32, %28 ]
  %39 = getelementptr %struct.snd_ratden, ptr %12, i32 %19
  %40 = load i32, ptr %39, align 4
  %41 = icmp ult i32 %38, %40
  br i1 %41, label %51, label %42

42:                                               ; preds = %36
  %43 = sub i32 %38, %40
  %44 = getelementptr %struct.snd_ratden, ptr %12, i32 %19, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = urem i32 %43, %45
  %47 = icmp eq i32 %46, 0
  %48 = sub i32 %45, %46
  %49 = select i1 %47, i32 0, i32 %48
  %50 = add i32 %49, %38
  br label %51

51:                                               ; preds = %42, %36
  %52 = phi i32 [ %50, %42 ], [ %37, %36 ]
  %53 = mul i32 %24, %16
  %54 = sub i32 %52, %53
  %55 = icmp eq i32 %22, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = mul i32 %54, %20
  %58 = mul i32 %24, %21
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56, %51
  br label %61

61:                                               ; preds = %60, %56, %28
  %62 = phi i32 [ %22, %28 ], [ %52, %60 ], [ %22, %56 ]
  %63 = phi i32 [ %21, %28 ], [ %54, %60 ], [ %21, %56 ]
  %64 = phi i32 [ %20, %28 ], [ %24, %60 ], [ %20, %56 ]
  %65 = add nuw i32 %19, 1
  %66 = icmp eq i32 %65, %10
  br i1 %66, label %67, label %18

67:                                               ; preds = %61
  %68 = icmp eq i32 %64, 0
  br i1 %68, label %152, label %69

69:                                               ; preds = %67
  %70 = freeze i32 %62
  %71 = freeze i32 %64
  %72 = udiv i32 %70, %71
  store i32 %72, ptr %3, align 4
  %73 = mul i32 %72, %71
  %74 = sub i32 %70, %73
  %75 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %8, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  br label %78

78:                                               ; preds = %115, %69
  %79 = phi i32 [ 0, %69 ], [ %119, %115 ]
  %80 = phi i32 [ 0, %69 ], [ %118, %115 ]
  %81 = phi i32 [ 0, %69 ], [ %117, %115 ]
  %82 = phi i32 [ 0, %69 ], [ %116, %115 ]
  %83 = getelementptr %struct.snd_ratden, ptr %12, i32 %79
  %84 = getelementptr %struct.snd_ratden, ptr %12, i32 %79, i32 3
  %85 = load i32, ptr %84, align 4
  br i1 %77, label %91, label %86

86:                                               ; preds = %78
  %87 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %76, i32 %85) #19
  %88 = extractvalue { i32, i1 } %87, 1
  %89 = mul i32 %85, %76
  %90 = select i1 %88, i32 -1, i32 %89
  br label %91

91:                                               ; preds = %86, %78
  %92 = phi i32 [ 0, %78 ], [ %90, %86 ]
  %93 = load i32, ptr %83, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %115, label %95

95:                                               ; preds = %91
  %96 = getelementptr %struct.snd_ratden, ptr %12, i32 %79, i32 1
  %97 = load i32, ptr %96, align 4
  %98 = icmp ugt i32 %92, %97
  br i1 %98, label %105, label %99

99:                                               ; preds = %95
  %100 = sub i32 %92, %93
  %101 = getelementptr %struct.snd_ratden, ptr %12, i32 %79, i32 2
  %102 = load i32, ptr %101, align 4
  %103 = urem i32 %100, %102
  %104 = sub i32 %92, %103
  br label %105

105:                                              ; preds = %99, %95
  %106 = phi i32 [ %104, %99 ], [ %97, %95 ]
  %107 = mul i32 %85, %76
  %108 = sub i32 %107, %106
  %109 = icmp eq i32 %82, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %105
  %111 = mul i32 %108, %80
  %112 = mul i32 %85, %81
  %113 = icmp ult i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %110, %105
  br label %115

115:                                              ; preds = %114, %110, %91
  %116 = phi i32 [ %82, %91 ], [ %106, %114 ], [ %82, %110 ]
  %117 = phi i32 [ %81, %91 ], [ %108, %114 ], [ %81, %110 ]
  %118 = phi i32 [ %80, %91 ], [ %85, %114 ], [ %80, %110 ]
  %119 = add nuw i32 %79, 1
  %120 = icmp eq i32 %119, %10
  br i1 %120, label %121, label %78

121:                                              ; preds = %115
  %122 = icmp eq i32 %118, 0
  br i1 %122, label %152, label %123

123:                                              ; preds = %121
  %124 = icmp ne i32 %74, 0
  %125 = zext i1 %124 to i8
  %126 = freeze i32 %116
  %127 = freeze i32 %118
  %128 = udiv i32 %126, %127
  %129 = mul i32 %128, %127
  %130 = sub i32 %126, %129
  %131 = icmp ne i32 %130, 0
  %132 = zext i1 %131 to i32
  %133 = add i32 %128, %132
  %134 = getelementptr inbounds %struct.snd_interval, ptr %3, i32 0, i32 1
  store i32 %133, ptr %134, align 4
  %135 = icmp eq i32 %130, 0
  %136 = select i1 %135, i8 0, i8 2
  %137 = or i8 %136, %125
  store i8 %137, ptr %13, align 4
  %138 = call i32 @snd_interval_refine(ptr noundef %9, ptr noundef nonnull %3) #19
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %156, label %140

140:                                              ; preds = %123
  %141 = load i32, ptr %9, align 4
  %142 = load i32, ptr %75, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %158, label %144

144:                                              ; preds = %140
  %145 = add i32 %141, 1
  %146 = icmp eq i32 %145, %142
  br i1 %146, label %147, label %156

147:                                              ; preds = %144
  %148 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %8, i32 2
  %149 = load i8, ptr %148, align 4
  %150 = and i8 %149, 3
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %156, label %158

152:                                              ; preds = %121, %67, %2
  %153 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %8, i32 2
  %154 = load i8, ptr %153, align 4
  %155 = or i8 %154, 8
  store i8 %155, ptr %153, align 4
  br label %156

156:                                              ; preds = %152, %147, %144, %123
  %157 = phi i32 [ %138, %147 ], [ %138, %144 ], [ %138, %123 ], [ -22, %152 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  br label %164

158:                                              ; preds = %147, %140
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  %159 = load i32, ptr %6, align 4
  %160 = icmp eq i32 %159, 11
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 9
  store i32 %116, ptr %162, align 4
  %163 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 10
  store i32 %118, ptr %163, align 4
  br label %164

164:                                              ; preds = %161, %158, %156
  %165 = phi i32 [ %157, %156 ], [ %138, %161 ], [ %138, %158 ]
  ret i32 %165
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_hw_constraint_msbits(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = shl i32 %3, 16
  %6 = or i32 %5, %2
  %7 = inttoptr i32 %6 to ptr
  %8 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %0, i32 noundef %1, i32 noundef -1, ptr noundef nonnull @snd_pcm_hw_rule_msbits, ptr noundef %7, i32 noundef 8, i32 noundef -1)
  ret i32 %8
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @snd_pcm_hw_rule_msbits(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #12 {
  %3 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = and i32 %5, 65535
  %7 = lshr i32 %5, 16
  %8 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 0
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 0, i32 2
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 3
  br label %25

17:                                               ; preds = %2
  %18 = add i32 %9, 1
  %19 = icmp eq i32 %18, %11
  br i1 %19, label %20, label %43

20:                                               ; preds = %17
  %21 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 0, i32 2
  %22 = load i8, ptr %21, align 4
  %23 = and i8 %22, 3
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %20, %13
  %26 = phi i8 [ %16, %13 ], [ %23, %20 ]
  %27 = icmp eq i8 %26, 1
  %28 = select i1 %27, ptr %10, ptr %8
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, %6
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = icmp eq i32 %6, 0
  %33 = icmp ugt i32 %29, %7
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %35, label %43

35:                                               ; preds = %31, %25
  %36 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 8
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  %39 = icmp ult ptr %4, inttoptr (i32 65536 to ptr)
  %40 = tail call i32 @llvm.umin.i32(i32 %37, i32 %7)
  %41 = select i1 %39, i32 %37, i32 %40
  %42 = select i1 %38, i32 %7, i32 %41
  store i32 %42, ptr %36, align 4
  br label %43

43:                                               ; preds = %35, %31, %20, %17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_hw_constraint_step(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = inttoptr i32 %3 to ptr
  %6 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @snd_pcm_hw_rule_step, ptr noundef %5, i32 noundef %2, i32 noundef -1)
  ret i32 %6
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @snd_pcm_hw_rule_step(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, -8
  %9 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = urem i32 %10, %5
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %8, i32 2
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %12, i1 %16, i1 false
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = add i32 %10, %5
  %20 = sub i32 %19, %11
  store i32 %20, ptr %9, align 4
  %21 = and i8 %14, -2
  store i8 %21, ptr %13, align 4
  br label %22

22:                                               ; preds = %18, %2
  %23 = phi i32 [ %20, %18 ], [ %10, %2 ]
  %24 = phi i8 [ %21, %18 ], [ %14, %2 ]
  %25 = phi i32 [ 1, %18 ], [ 0, %2 ]
  %26 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %8, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = urem i32 %27, %5
  %29 = icmp eq i32 %28, 0
  %30 = and i8 %24, 2
  %31 = icmp eq i8 %30, 0
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %36, label %33

33:                                               ; preds = %22
  %34 = sub i32 %27, %28
  store i32 %34, ptr %26, align 4
  %35 = and i8 %24, -3
  store i8 %35, ptr %13, align 4
  br label %36

36:                                               ; preds = %33, %22
  %37 = phi i8 [ %35, %33 ], [ %24, %22 ]
  %38 = phi i32 [ %34, %33 ], [ %27, %22 ]
  %39 = phi i32 [ 1, %33 ], [ %25, %22 ]
  %40 = icmp ugt i32 %23, %38
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = icmp ne i32 %23, %38
  %43 = and i8 %37, 3
  %44 = icmp eq i8 %43, 0
  %45 = select i1 %42, i1 true, i1 %44
  br i1 %45, label %48, label %46

46:                                               ; preds = %41, %36
  %47 = or i8 %37, 8
  store i8 %47, ptr %13, align 4
  br label %48

48:                                               ; preds = %46, %41
  %49 = phi i32 [ -22, %46 ], [ %39, %41 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_hw_constraint_pow2(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @snd_pcm_hw_rule_pow2, ptr noundef null, i32 noundef %2, i32 noundef -1)
  ret i32 %4
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_hw_rule_pow2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #9 {
  %3 = alloca %struct.snd_interval, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -8
  %7 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  %8 = getelementptr inbounds i8, ptr %3, i32 8
  store i32 0, ptr %8, align 4, !annotation !8
  %9 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %6, i32 2
  %10 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %6, i32 1
  %11 = load i32, ptr %7, align 4
  br label %12

12:                                               ; preds = %37, %2
  %13 = phi i32 [ 0, %2 ], [ %40, %37 ]
  %14 = phi i32 [ -1, %2 ], [ %39, %37 ]
  %15 = phi i32 [ 0, %2 ], [ %38, %37 ]
  %16 = getelementptr i32, ptr @snd_pcm_hw_rule_pow2.pow2_sizes, i32 %13
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %11, %17
  br i1 %18, label %37, label %19

19:                                               ; preds = %12
  %20 = icmp eq i32 %11, %17
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  %22 = load i8, ptr %9, align 4
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %21, %19
  %26 = load i32, ptr %10, align 4
  %27 = icmp ult i32 %26, %17
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  %29 = icmp eq i32 %26, %17
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  %31 = load i8, ptr %9, align 4
  %32 = and i8 %31, 2
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30, %28
  %35 = tail call i32 @llvm.umin.i32(i32 %14, i32 %17) #19
  %36 = tail call i32 @llvm.umax.i32(i32 %15, i32 %17) #19
  br label %37

37:                                               ; preds = %34, %30, %25, %21, %12
  %38 = phi i32 [ %15, %12 ], [ %15, %21 ], [ %15, %25 ], [ %15, %30 ], [ %36, %34 ]
  %39 = phi i32 [ %14, %12 ], [ %14, %21 ], [ %14, %25 ], [ %14, %30 ], [ %35, %34 ]
  %40 = add nuw nsw i32 %13, 1
  %41 = icmp eq i32 %40, 31
  br i1 %41, label %42, label %12

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.snd_interval, ptr %3, i32 0, i32 1
  store i32 %39, ptr %3, align 4
  store i32 %38, ptr %43, align 4
  %44 = call i32 @snd_interval_refine(ptr noundef %7, ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_hw_rule_noresample(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = inttoptr i32 %1 to ptr
  %4 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %0, i32 noundef 1, i32 noundef 11, ptr noundef nonnull @snd_pcm_hw_rule_noresample_func, ptr noundef %3, i32 noundef 11, i32 noundef -1)
  ret i32 %4
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_hw_rule_noresample_func(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #9 {
  %3 = alloca %struct.snd_interval, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  %8 = getelementptr inbounds i8, ptr %3, i32 8
  store i32 0, ptr %8, align 4, !annotation !8
  %9 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 3, i32 2
  %10 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 3, i32 1
  %11 = load i32, ptr %7, align 4
  %12 = icmp ugt i32 %11, %6
  br i1 %12, label %29, label %13

13:                                               ; preds = %2
  %14 = icmp eq i32 %11, %6
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = load i8, ptr %9, align 4
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %15, %13
  %20 = load i32, ptr %10, align 4
  %21 = icmp ult i32 %20, %6
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = icmp eq i32 %20, %6
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = load i8, ptr %9, align 4
  %26 = and i8 %25, 2
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %22
  br label %29

29:                                               ; preds = %28, %24, %19, %15, %2
  %30 = phi i32 [ 0, %2 ], [ 0, %15 ], [ 0, %19 ], [ 0, %24 ], [ %6, %28 ]
  %31 = phi i32 [ -1, %2 ], [ -1, %15 ], [ -1, %19 ], [ -1, %24 ], [ %6, %28 ]
  %32 = getelementptr inbounds %struct.snd_interval, ptr %3, i32 0, i32 1
  store i32 %31, ptr %3, align 4
  store i32 %30, ptr %32, align 4
  %33 = call i32 @snd_interval_refine(ptr noundef %7, ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  ret i32 %33
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @_snd_pcm_hw_params_any(ptr nocapture noundef %0) #9 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(604) %0, i8 0, i32 604, i1 false)
  %2 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 5
  %4 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 1, i32 0
  store i64 -1, ptr %4, align 4
  %5 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 1, i32 1
  store i64 -1, ptr %5, align 4
  %6 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 1, i32 2
  store i64 -1, ptr %6, align 4
  store i32 7, ptr %2, align 4
  store i32 7, ptr %3, align 4
  br label %7

7:                                                ; preds = %7, %1
  %8 = phi i32 [ 8, %1 ], [ %20, %7 ]
  %9 = add nsw i32 %8, -8
  %10 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %9
  store i32 0, ptr %10, align 4
  %11 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %9, i32 2
  %12 = load i8, ptr %11, align 4
  %13 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %9, i32 1
  store i32 -1, ptr %13, align 4
  %14 = and i8 %12, -16
  store i8 %14, ptr %11, align 4
  %15 = load i32, ptr %2, align 4
  %16 = load i32, ptr %3, align 4
  %17 = shl nuw nsw i32 1, %8
  %18 = or i32 %15, %17
  store i32 %18, ptr %2, align 4
  %19 = or i32 %16, %17
  store i32 %19, ptr %3, align 4
  %20 = add nuw nsw i32 %8, 1
  %21 = icmp eq i32 %20, 20
  br i1 %21, label %22, label %7

22:                                               ; preds = %7
  %23 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 7
  store i32 -1, ptr %23, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_pcm_hw_param_value(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef writeonly %2) #12 {
  %4 = icmp ugt i32 %1, 2
  br i1 %4, label %35, label %5

5:                                                ; preds = %3
  %6 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 1, i32 %1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7) #19, !range !12
  %10 = icmp ult i32 %9, 2
  %11 = or i1 %8, %10
  br i1 %11, label %12, label %66

12:                                               ; preds = %5
  %13 = getelementptr [8 x i32], ptr %6, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @llvm.ctpop.i32(i32 %14) #19, !range !12
  %18 = icmp ult i32 %17, 2
  %19 = select i1 %18, i1 %8, i1 false
  br i1 %19, label %20, label %66

20:                                               ; preds = %16, %12
  %21 = icmp eq ptr %2, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %20
  store i32 0, ptr %2, align 4
  %23 = load i32, ptr %6, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %23, %22 ], [ %7, %20 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %32, %24
  %28 = phi i32 [ 0, %24 ], [ 32, %32 ]
  %29 = phi i32 [ %25, %24 ], [ %33, %32 ]
  %30 = tail call i32 @llvm.cttz.i32(i32 %29, i1 true) #19, !range !12
  %31 = or i32 %30, %28
  br label %66

32:                                               ; preds = %24
  %33 = load i32, ptr %13, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %66, label %27

35:                                               ; preds = %3
  %36 = add i32 %1, -8
  %37 = icmp ugt i32 %36, 11
  br i1 %37, label %66, label %38

38:                                               ; preds = %35
  %39 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %36
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %36, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %38
  %45 = add i32 %40, 1
  %46 = icmp eq i32 %45, %42
  br i1 %46, label %47, label %66

47:                                               ; preds = %44
  %48 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %36, i32 2
  %49 = load i8, ptr %48, align 4
  %50 = and i8 %49, 3
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %66, label %52

52:                                               ; preds = %47, %38
  %53 = icmp eq ptr %2, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %52
  %55 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %36, i32 2
  %56 = load i8, ptr %55, align 4
  %57 = and i8 %56, 1
  %58 = zext i8 %57 to i32
  store i32 %58, ptr %2, align 4
  br label %59

59:                                               ; preds = %54, %52
  %60 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %36, i32 2
  %61 = load i8, ptr %60, align 4
  %62 = and i8 %61, 3
  %63 = icmp eq i8 %62, 1
  %64 = select i1 %63, ptr %41, ptr %39
  %65 = load i32, ptr %64, align 4
  br label %66

66:                                               ; preds = %59, %47, %44, %35, %32, %27, %16, %5
  %67 = phi i32 [ %65, %59 ], [ -22, %35 ], [ %31, %27 ], [ 0, %32 ], [ -22, %16 ], [ -22, %5 ], [ -22, %44 ], [ -22, %47 ]
  ret i32 %67
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @_snd_pcm_hw_param_setempty(ptr nocapture noundef %0, i32 noundef %1) #7 {
  %3 = icmp ugt i32 %1, 2
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 1, i32 %1
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false) #19
  br label %13

6:                                                ; preds = %2
  %7 = add i32 %1, -8
  %8 = icmp ugt i32 %7, 11
  br i1 %8, label %21, label %9

9:                                                ; preds = %6
  %10 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %7, i32 2
  %11 = load i8, ptr %10, align 4
  %12 = or i8 %11, 8
  store i8 %12, ptr %10, align 4
  br label %13

13:                                               ; preds = %9, %4
  %14 = shl nuw nsw i32 1, %1
  %15 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %16, %14
  store i32 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = or i32 %19, %14
  store i32 %20, ptr %18, align 4
  br label %21

21:                                               ; preds = %13, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_hw_param_first(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = icmp ugt i32 %2, 2
  br i1 %5, label %39, label %6

6:                                                ; preds = %4
  %7 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 %2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = tail call i32 @llvm.ctpop.i32(i32 %8) #19, !range !12
  %11 = icmp ult i32 %10, 2
  %12 = or i1 %9, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %6
  %14 = getelementptr [8 x i32], ptr %7, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %78, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @llvm.ctpop.i32(i32 %15) #19, !range !12
  %19 = icmp ult i32 %18, 2
  %20 = select i1 %19, i1 %9, i1 false
  br i1 %20, label %78, label %21

21:                                               ; preds = %17, %6
  br i1 %9, label %27, label %22

22:                                               ; preds = %27, %21
  %23 = phi i32 [ 0, %21 ], [ 32, %27 ]
  %24 = phi i32 [ %8, %21 ], [ %29, %27 ]
  %25 = tail call i32 @llvm.cttz.i32(i32 %24, i1 true) #19, !range !12
  %26 = or i32 %25, %23
  br label %31

27:                                               ; preds = %21
  %28 = getelementptr [8 x i32], ptr %7, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %22

31:                                               ; preds = %27, %22
  %32 = phi i32 [ %26, %22 ], [ 0, %27 ]
  %33 = lshr i32 %32, 5
  %34 = getelementptr [8 x i32], ptr %7, i32 0, i32 %33
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %32, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %35
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %7, i8 0, i32 32, i1 false) #19
  store i32 %38, ptr %34, align 4
  br label %70

39:                                               ; preds = %4
  %40 = add i32 %2, -8
  %41 = icmp ugt i32 %40, 11
  br i1 %41, label %87, label %42

42:                                               ; preds = %39
  %43 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 %40, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 %40, i32 2
  %46 = load i8, ptr %45, align 4
  %47 = and i8 %46, 8
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %87

49:                                               ; preds = %42
  %50 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 %40
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, %44
  br i1 %52, label %78, label %53

53:                                               ; preds = %49
  %54 = add i32 %51, 1
  %55 = icmp ne i32 %54, %44
  %56 = and i8 %46, 3
  %57 = icmp eq i8 %56, 0
  %58 = select i1 %55, i1 true, i1 %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %53
  %60 = and i8 %46, 1
  %61 = zext i8 %60 to i32
  %62 = add i32 %51, %61
  store i32 %62, ptr %43, align 4
  %63 = and i8 %46, 2
  %64 = icmp eq i8 %63, 0
  %65 = icmp ult i32 %62, %44
  %66 = select i1 %64, i1 true, i1 %65
  %67 = select i1 %66, i8 0, i8 2
  %68 = and i8 %46, -3
  %69 = or i8 %67, %68
  store i8 %69, ptr %45, align 4
  br label %70

70:                                               ; preds = %59, %31
  %71 = shl nuw nsw i32 1, %2
  %72 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 6
  %73 = load i32, ptr %72, align 4
  %74 = or i32 %73, %71
  store i32 %74, ptr %72, align 4
  %75 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 5
  %76 = load i32, ptr %75, align 4
  %77 = or i32 %76, %71
  store i32 %77, ptr %75, align 4
  br label %78

78:                                               ; preds = %70, %53, %49, %17, %13
  %79 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 5
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  %83 = tail call i32 @snd_pcm_hw_refine(ptr noundef %0, ptr noundef %1) #19
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %82, %78
  %86 = tail call i32 @snd_pcm_hw_param_value(ptr noundef %1, i32 noundef %2, ptr noundef %3)
  br label %87

87:                                               ; preds = %85, %82, %42, %39
  %88 = phi i32 [ %86, %85 ], [ %83, %82 ], [ -22, %39 ], [ -22, %42 ]
  ret i32 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_refine(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_hw_param_last(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = icmp ugt i32 %2, 2
  br i1 %5, label %37, label %6

6:                                                ; preds = %4
  %7 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 %2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = tail call i32 @llvm.ctpop.i32(i32 %8) #19, !range !12
  %11 = icmp ult i32 %10, 2
  %12 = or i1 %9, %11
  %13 = getelementptr [8 x i32], ptr %7, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  br i1 %12, label %15, label %21

15:                                               ; preds = %6
  %16 = icmp eq i32 %14, 0
  br i1 %16, label %77, label %17

17:                                               ; preds = %15
  %18 = tail call i32 @llvm.ctpop.i32(i32 %14) #19, !range !12
  %19 = icmp ult i32 %18, 2
  %20 = select i1 %19, i1 %9, i1 false
  br i1 %20, label %77, label %21

21:                                               ; preds = %17, %6
  %22 = icmp ne i32 %14, 0
  %23 = xor i1 %9, true
  %24 = select i1 %22, i1 true, i1 %23
  %25 = select i1 %22, i32 32, i32 0
  %26 = select i1 %22, i32 %14, i32 %8
  %27 = tail call i32 @llvm.ctlz.i32(i32 %26, i1 true) #19, !range !12
  %28 = or i32 %27, %25
  %29 = xor i32 %28, 31
  %30 = select i1 %24, i32 %29, i32 0
  %31 = lshr i32 %30, 5
  %32 = getelementptr [8 x i32], ptr %7, i32 0, i32 %31
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %30, 31
  %35 = shl nuw i32 1, %34
  %36 = and i32 %33, %35
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %7, i8 0, i32 32, i1 false) #19
  store i32 %36, ptr %32, align 4
  br label %69

37:                                               ; preds = %4
  %38 = add i32 %2, -8
  %39 = icmp ugt i32 %38, 11
  br i1 %39, label %86, label %40

40:                                               ; preds = %37
  %41 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 %38
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 %38, i32 2
  %44 = load i8, ptr %43, align 4
  %45 = and i8 %44, 8
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %86

47:                                               ; preds = %40
  %48 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 %38, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %42, %49
  br i1 %50, label %77, label %51

51:                                               ; preds = %47
  %52 = add i32 %42, 1
  %53 = icmp ne i32 %52, %49
  %54 = and i8 %44, 3
  %55 = icmp eq i8 %54, 0
  %56 = select i1 %53, i1 true, i1 %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %51
  %58 = shl i8 %44, 6
  %59 = ashr i8 %58, 7
  %60 = sext i8 %59 to i32
  %61 = add i32 %49, %60
  store i32 %61, ptr %41, align 4
  %62 = and i8 %44, 1
  %63 = icmp ne i8 %62, 0
  %64 = icmp ule i32 %61, %42
  %65 = select i1 %63, i1 %64, i1 false
  %66 = zext i1 %65 to i8
  %67 = and i8 %44, -2
  %68 = or i8 %67, %66
  store i8 %68, ptr %43, align 4
  br label %69

69:                                               ; preds = %57, %21
  %70 = shl nuw nsw i32 1, %2
  %71 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 6
  %72 = load i32, ptr %71, align 4
  %73 = or i32 %72, %70
  store i32 %73, ptr %71, align 4
  %74 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 5
  %75 = load i32, ptr %74, align 4
  %76 = or i32 %75, %70
  store i32 %76, ptr %74, align 4
  br label %77

77:                                               ; preds = %69, %51, %47, %17, %15
  %78 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 5
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = tail call i32 @snd_pcm_hw_refine(ptr noundef %0, ptr noundef %1) #19
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %81, %77
  %85 = tail call i32 @snd_pcm_hw_param_value(ptr noundef %1, i32 noundef %2, ptr noundef %3)
  br label %86

86:                                               ; preds = %84, %81, %40, %37
  %87 = phi i32 [ %85, %84 ], [ %82, %81 ], [ -22, %37 ], [ -22, %40 ]
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_lib_ioctl(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  switch i32 %1, label %102 [
    i32 0, label %4
    i32 2, label %33
    i32 4, label %70
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @_snd_pcm_stream_lock_irqsave(ptr noundef %0) #19
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 37
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 8
  switch i32 %11, label %27 [
    i32 3, label %16
    i32 5, label %12
  ]

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %12, %4
  %17 = tail call fastcc i32 @snd_pcm_update_hw_ptr0(ptr noundef %0, i32 noundef 0) #19
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 18
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 37
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %23, i32 0, i32 3
  %25 = load i32, ptr %24, align 8
  %26 = urem i32 %25, %21
  store i32 %26, ptr %24, align 8
  br label %32

27:                                               ; preds = %16, %12, %4
  %28 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 37
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %29, i32 0, i32 3
  store i32 0, ptr %30, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 10
  store i64 0, ptr %31, align 8
  br label %32

32:                                               ; preds = %27, %19
  tail call void @snd_pcm_stream_unlock_irqrestore(ptr noundef %0, i32 noundef %7) #19
  br label %102

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %35, i32 0, i32 23
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.snd_pcm_channel_info, ptr %2, i32 0, i32 1
  store i32 -1, ptr %41, align 4
  br label %102

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %35, i32 0, i32 12
  %44 = load i32, ptr %43, align 4
  %45 = tail call i32 @snd_pcm_format_physical_width(i32 noundef %44) #19
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %102, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.snd_pcm_channel_info, ptr %2, i32 0, i32 1
  store i32 0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %35, i32 0, i32 11
  %50 = load i32, ptr %49, align 8
  switch i32 %50, label %102 [
    i32 0, label %51
    i32 3, label %51
    i32 1, label %59
    i32 4, label %59
  ]

51:                                               ; preds = %47, %47
  %52 = load i32, ptr %2, align 4
  %53 = mul i32 %52, %45
  %54 = getelementptr inbounds %struct.snd_pcm_channel_info, ptr %2, i32 0, i32 2
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %35, i32 0, i32 15
  %56 = load i32, ptr %55, align 8
  %57 = mul i32 %56, %45
  %58 = getelementptr inbounds %struct.snd_pcm_channel_info, ptr %2, i32 0, i32 3
  store i32 %57, ptr %58, align 4
  br label %102

59:                                               ; preds = %47, %47
  %60 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %35, i32 0, i32 52
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %35, i32 0, i32 15
  %63 = load i32, ptr %62, align 8
  %64 = udiv i32 %61, %63
  %65 = load i32, ptr %2, align 4
  %66 = shl i32 %64, 3
  %67 = mul i32 %66, %65
  %68 = getelementptr inbounds %struct.snd_pcm_channel_info, ptr %2, i32 0, i32 2
  store i32 %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.snd_pcm_channel_info, ptr %2, i32 0, i32 3
  store i32 %45, ptr %69, align 4
  br label %102

70:                                               ; preds = %3
  %71 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %72, i32 0, i32 46, i32 12
  %74 = load i32, ptr %73, align 8
  %75 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %2, i32 0, i32 11
  store i32 %74, ptr %75, align 4
  %76 = load ptr, ptr %71, align 4
  %77 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %76, i32 0, i32 46
  %78 = load i32, ptr %77, align 8
  %79 = icmp sgt i32 %78, -1
  br i1 %79, label %80, label %102

80:                                               ; preds = %70
  %81 = getelementptr %struct.snd_pcm_hw_params, ptr %2, i32 0, i32 1, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %89, %80
  %85 = phi i32 [ 0, %80 ], [ 32, %89 ]
  %86 = phi i32 [ %82, %80 ], [ %91, %89 ]
  %87 = tail call i32 @llvm.cttz.i32(i32 %86, i1 true) #19, !range !12
  %88 = or i32 %87, %85
  br label %93

89:                                               ; preds = %80
  %90 = getelementptr %struct.snd_pcm_hw_params, ptr %2, i32 0, i32 1, i32 1, i32 0, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %84

93:                                               ; preds = %89, %84
  %94 = phi i32 [ %88, %84 ], [ 0, %89 ]
  %95 = getelementptr %struct.snd_pcm_hw_params, ptr %2, i32 0, i32 3, i32 2
  %96 = load i32, ptr %95, align 4
  %97 = tail call i32 @snd_pcm_format_size(i32 noundef %94, i32 noundef %96) #19
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i32, ptr %75, align 4
  %101 = udiv i32 %100, %97
  store i32 %101, ptr %75, align 4
  br label %102

102:                                              ; preds = %99, %93, %70, %59, %51, %47, %42, %40, %32, %3
  %103 = phi i32 [ 0, %32 ], [ -6, %3 ], [ 0, %40 ], [ %45, %42 ], [ 0, %47 ], [ 0, %59 ], [ 0, %51 ], [ 0, %70 ], [ 0, %93 ], [ 0, %99 ]
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_pcm_period_elapsed_under_stream_lock(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %28, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 37
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 8
  switch i32 %10, label %26 [
    i32 3, label %15
    i32 5, label %11
  ]

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %11, %7
  %16 = tail call fastcc i32 @snd_pcm_update_hw_ptr0(ptr noundef nonnull %0, i32 noundef 1)
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 13
  %20 = load i8, ptr %19, align 4
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 12
  %25 = load ptr, ptr %24, align 4
  tail call void @snd_timer_interrupt(ptr noundef %25, i32 noundef 1) #19
  br label %26

26:                                               ; preds = %23, %18, %15, %11, %7
  %27 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 42
  tail call void @kill_fasync(ptr noundef %27, i32 noundef 29, i32 noundef 1) #19
  br label %28

28:                                               ; preds = %26, %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_timer_interrupt(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_pcm_period_elapsed(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @_snd_pcm_stream_lock_irqsave(ptr noundef nonnull %0) #19
  %5 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %29, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 37
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 8
  switch i32 %11, label %27 [
    i32 3, label %16
    i32 5, label %12
  ]

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %12, %8
  %17 = tail call fastcc i32 @snd_pcm_update_hw_ptr0(ptr noundef nonnull %0, i32 noundef 1) #19
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 13
  %21 = load i8, ptr %20, align 4
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 12
  %26 = load ptr, ptr %25, align 4
  tail call void @snd_timer_interrupt(ptr noundef %26, i32 noundef 1) #19
  br label %27

27:                                               ; preds = %24, %19, %16, %12, %8
  %28 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 42
  tail call void @kill_fasync(ptr noundef %28, i32 noundef 29, i32 noundef 1) #19
  br label %29

29:                                               ; preds = %27, %3
  tail call void @snd_pcm_stream_unlock_irqrestore(ptr noundef nonnull %0, i32 noundef %4) #19
  br label %30

30:                                               ; preds = %29, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_snd_pcm_stream_lock_irqsave(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_stream_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pcm_lib_apply_appl_ptr(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 38
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, %1
  br i1 %9, label %43, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 33
  %12 = load i32, ptr %11, align 8
  %13 = icmp ugt i32 %12, %1
  br i1 %13, label %14, label %43

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 23
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 536870912
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %14
  %20 = sub i32 %1, %8
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 18
  %24 = load i32, ptr %23, align 4
  %25 = icmp ugt i32 %20, %24
  br i1 %25, label %43, label %31

26:                                               ; preds = %19
  %27 = add i32 %12, %20
  %28 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 18
  %29 = load i32, ptr %28, align 4
  %30 = icmp ugt i32 %27, %29
  br i1 %30, label %43, label %31

31:                                               ; preds = %26, %22, %14
  store i32 %1, ptr %7, align 4
  %32 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 10
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.snd_pcm_ops, ptr %33, i32 0, i32 15
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = tail call i32 %35(ptr noundef %0) #19
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load ptr, ptr %5, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %41, i32 0, i32 1
  store i32 %8, ptr %42, align 4
  br label %43

43:                                               ; preds = %40, %37, %31, %26, %22, %10, %2
  %44 = phi i32 [ %38, %40 ], [ 0, %2 ], [ -22, %10 ], [ -22, %22 ], [ -22, %26 ], [ 0, %37 ], [ 0, %31 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__snd_pcm_lib_xfer(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i1 noundef zeroext %4) #0 {
  %6 = alloca %struct.wait_queue_entry, align 4
  %7 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %0, null
  %10 = icmp eq ptr %8, null
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %404, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.snd_pcm_ops, ptr %14, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 50
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %404, label %22

22:                                               ; preds = %18, %12
  %23 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 37
  %24 = load ptr, ptr %23, align 4
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %404, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 11
  %32 = load i32, ptr %31, align 8
  br i1 %2, label %33, label %39

33:                                               ; preds = %27
  %34 = icmp eq i32 %32, 3
  br i1 %34, label %41, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 15
  %37 = load i32, ptr %36, align 8
  %38 = icmp ugt i32 %37, 1
  br i1 %38, label %404, label %41

39:                                               ; preds = %27
  %40 = icmp eq i32 %32, 4
  br i1 %40, label %41, label %404

41:                                               ; preds = %39, %35, %33
  %42 = phi ptr [ @interleaved_copy, %35 ], [ @interleaved_copy, %33 ], [ @noninterleaved_copy, %39 ]
  %43 = icmp eq ptr %1, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br i1 %30, label %55, label %404

45:                                               ; preds = %41
  br i1 %4, label %46, label %52

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.snd_pcm_ops, ptr %14, i32 0, i32 12
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  %50 = select i1 %30, ptr @default_write_copy_kernel, ptr @default_read_copy_kernel
  %51 = select i1 %49, ptr %50, ptr %48
  br label %55

52:                                               ; preds = %45
  %53 = select i1 %30, ptr @default_write_copy, ptr @default_read_copy
  %54 = select i1 %17, ptr %53, ptr %16
  br label %55

55:                                               ; preds = %52, %46, %44
  %56 = phi ptr [ @fill_silence, %44 ], [ %51, %46 ], [ %54, %52 ]
  %57 = icmp eq i32 %3, 0
  br i1 %57, label %404, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 21
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 2048
  %62 = icmp eq i32 %61, 0
  tail call void @snd_pcm_stream_lock_irq(ptr noundef nonnull %0) #19
  %63 = load ptr, ptr %23, align 4
  %64 = load i32, ptr %63, align 8
  switch i32 %64, label %66 [
    i32 2, label %67
    i32 3, label %67
    i32 6, label %67
    i32 4, label %384
    i32 7, label %65
  ]

65:                                               ; preds = %58
  br label %384

66:                                               ; preds = %58
  br label %384

67:                                               ; preds = %58, %58, %58
  %68 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 38
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %69, i32 0, i32 4
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  %73 = select i1 %72, i32 1, i32 %71
  %74 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 39
  store i32 %73, ptr %74, align 4
  %75 = load i32, ptr %63, align 8
  %76 = icmp eq i32 %75, 3
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  %78 = tail call fastcc i32 @snd_pcm_update_hw_ptr0(ptr noundef nonnull %0, i32 noundef 0) #19
  br label %79

79:                                               ; preds = %77, %67
  br i1 %30, label %91, label %80

80:                                               ; preds = %79
  %81 = load ptr, ptr %23, align 4
  %82 = load i32, ptr %81, align 8
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %84, label %91

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 29
  %86 = load i32, ptr %85, align 8
  %87 = icmp ugt i32 %86, %3
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = tail call i32 @snd_pcm_start(ptr noundef nonnull %0) #19
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %384, label %91

91:                                               ; preds = %88, %84, %80, %79
  %92 = phi i32 [ 0, %79 ], [ %89, %88 ], [ 0, %84 ], [ 0, %80 ]
  %93 = load i32, ptr %28, align 4
  %94 = icmp eq i32 %93, 0
  %95 = load ptr, ptr %7, align 4
  %96 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %95, i32 0, i32 37
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %97, i32 0, i32 3
  %99 = load i32, ptr %98, align 8
  br i1 %94, label %100, label %117

100:                                              ; preds = %91
  %101 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %95, i32 0, i32 18
  %102 = load i32, ptr %101, align 4
  %103 = add i32 %102, %99
  %104 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %95, i32 0, i32 38
  %105 = load ptr, ptr %104, align 8
  %106 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %105, i32 0, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = sub i32 %103, %107
  %109 = icmp slt i32 %108, 0
  %110 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %95, i32 0, i32 33
  %111 = load i32, ptr %110, align 8
  %112 = icmp ult i32 %108, %111
  %113 = select i1 %112, i32 0, i32 %111
  %114 = sub i32 0, %113
  %115 = select i1 %109, i32 %111, i32 %114
  %116 = add i32 %115, %108
  br label %128

117:                                              ; preds = %91
  %118 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %95, i32 0, i32 38
  %119 = load ptr, ptr %118, align 8
  %120 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %119, i32 0, i32 1
  %121 = load i32, ptr %120, align 4
  %122 = sub i32 %99, %121
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %95, i32 0, i32 33
  %126 = load i32, ptr %125, align 8
  %127 = add i32 %126, %122
  br label %128

128:                                              ; preds = %124, %117, %100
  %129 = phi i32 [ %116, %100 ], [ %127, %124 ], [ %122, %117 ]
  %130 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 1
  %131 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 2
  %132 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 14
  %133 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 18
  %134 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 33
  %135 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 29
  br label %136

136:                                              ; preds = %377, %128
  %137 = phi i32 [ %3, %128 ], [ %382, %377 ]
  %138 = phi i32 [ 0, %128 ], [ %381, %377 ]
  %139 = phi i32 [ 0, %128 ], [ %380, %377 ]
  %140 = phi i32 [ %92, %128 ], [ %379, %377 ]
  %141 = phi i32 [ %129, %128 ], [ %378, %377 ]
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %262

143:                                              ; preds = %136
  br i1 %30, label %150, label %144

144:                                              ; preds = %143
  %145 = load ptr, ptr %23, align 4
  %146 = load i32, ptr %145, align 8
  %147 = icmp eq i32 %146, 5
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = call i32 @snd_pcm_stop(ptr noundef %0, i32 noundef 1) #19
  br label %395

150:                                              ; preds = %144, %143
  br i1 %62, label %151, label %387

151:                                              ; preds = %150
  %152 = load ptr, ptr %68, align 8
  %153 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %152, i32 0, i32 4
  %154 = load i32, ptr %153, align 4
  %155 = icmp eq i32 %154, 0
  %156 = select i1 %155, i32 1, i32 %154
  %157 = call i32 @llvm.umin.i32(i32 %137, i32 %156)
  store i32 %157, ptr %74, align 4
  %158 = load ptr, ptr %7, align 4
  %159 = load i32, ptr %28, align 4
  %160 = icmp eq i32 %159, 0
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #19
  %161 = tail call ptr @llvm.thread.pointer() #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i64 20, i1 false) #19
  store ptr %161, ptr %130, align 4
  store ptr @default_wake_function, ptr %131, align 4
  %162 = getelementptr inbounds %struct.task_struct, ptr %161, i32 0, i32 1
  store volatile i32 1, ptr %162, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %163 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %158, i32 0, i32 41
  call void @add_wait_queue(ptr noundef %163, ptr noundef nonnull %6) #19
  %164 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %158, i32 0, i32 26
  %165 = load i8, ptr %164, align 4
  %166 = and i8 %165, 1
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %168, label %185

168:                                              ; preds = %151
  %169 = load i32, ptr %132, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %185

171:                                              ; preds = %168
  %172 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %158, i32 0, i32 14
  %173 = load i32, ptr %172, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %182, label %175

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %158, i32 0, i32 16
  %177 = load i32, ptr %176, align 4
  %178 = shl i32 %177, 1
  %179 = udiv i32 %178, %173
  %180 = call i32 @llvm.smax.i32(i32 %179, i32 10) #19
  %181 = mul i32 %180, 1000
  br label %182

182:                                              ; preds = %175, %171
  %183 = phi i32 [ %181, %175 ], [ 10000, %171 ]
  %184 = call i32 @__msecs_to_jiffies(i32 noundef %183) #19
  br label %185

185:                                              ; preds = %182, %168, %151
  %186 = phi i32 [ 2147483647, %151 ], [ %169, %168 ], [ %184, %182 ]
  %187 = load volatile i32, ptr %161, align 4
  %188 = and i32 %187, 256
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %256, !prof !9

190:                                              ; preds = %185
  %191 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %158, i32 0, i32 39
  %192 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %158, i32 0, i32 37
  %193 = load volatile i32, ptr %161, align 4
  %194 = and i32 %193, 1
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %200, label %256

196:                                              ; preds = %244
  %197 = load volatile i32, ptr %161, align 4
  %198 = and i32 %197, 1
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %253

200:                                              ; preds = %196, %190
  %201 = load i32, ptr %28, align 4
  %202 = icmp eq i32 %201, 0
  %203 = load ptr, ptr %7, align 4
  %204 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %203, i32 0, i32 37
  %205 = load ptr, ptr %204, align 4
  %206 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %205, i32 0, i32 3
  %207 = load i32, ptr %206, align 8
  br i1 %202, label %208, label %225

208:                                              ; preds = %200
  %209 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %203, i32 0, i32 18
  %210 = load i32, ptr %209, align 4
  %211 = add i32 %210, %207
  %212 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %203, i32 0, i32 38
  %213 = load ptr, ptr %212, align 8
  %214 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %213, i32 0, i32 1
  %215 = load i32, ptr %214, align 4
  %216 = sub i32 %211, %215
  %217 = icmp slt i32 %216, 0
  %218 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %203, i32 0, i32 33
  %219 = load i32, ptr %218, align 8
  %220 = icmp ult i32 %216, %219
  %221 = select i1 %220, i32 0, i32 %219
  %222 = sub i32 0, %221
  %223 = select i1 %217, i32 %219, i32 %222
  %224 = add i32 %223, %216
  br label %236

225:                                              ; preds = %200
  %226 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %203, i32 0, i32 38
  %227 = load ptr, ptr %226, align 8
  %228 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %227, i32 0, i32 1
  %229 = load i32, ptr %228, align 4
  %230 = sub i32 %207, %229
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %225
  %233 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %203, i32 0, i32 33
  %234 = load i32, ptr %233, align 8
  %235 = add i32 %234, %230
  br label %236

236:                                              ; preds = %232, %225, %208
  %237 = phi i32 [ %224, %208 ], [ %235, %232 ], [ %230, %225 ]
  %238 = load i32, ptr %191, align 4
  %239 = icmp ult i32 %237, %238
  br i1 %239, label %240, label %253

240:                                              ; preds = %236
  call void @snd_pcm_stream_unlock_irq(ptr noundef %0) #19
  %241 = call i32 @schedule_timeout(i32 noundef %186) #19
  call void @snd_pcm_stream_lock_irq(ptr noundef %0) #19
  store volatile i32 1, ptr %162, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !14
  %242 = load ptr, ptr %192, align 4
  %243 = load i32, ptr %242, align 8
  switch i32 %243, label %251 [
    i32 7, label %253
    i32 4, label %255
    i32 5, label %248
    i32 0, label %256
    i32 1, label %256
    i32 8, label %256
    i32 6, label %244
  ]

244:                                              ; preds = %251, %240
  %245 = load volatile i32, ptr %161, align 4
  %246 = and i32 %245, 256
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %196, label %253, !prof !9

248:                                              ; preds = %240
  %249 = select i1 %160, i32 %237, i32 0
  %250 = select i1 %160, i32 -32, i32 0
  br label %256

251:                                              ; preds = %240
  %252 = icmp eq i32 %241, 0
  br i1 %252, label %253, label %244

253:                                              ; preds = %251, %244, %240, %236, %196
  %254 = phi i32 [ -512, %196 ], [ 0, %236 ], [ -86, %240 ], [ -512, %244 ], [ -5, %251 ]
  br label %256

255:                                              ; preds = %240
  br label %256

256:                                              ; preds = %255, %253, %248, %240, %240, %240, %190, %185
  %257 = phi i32 [ 0, %185 ], [ 0, %190 ], [ %249, %248 ], [ %237, %253 ], [ %237, %255 ], [ %237, %240 ], [ %237, %240 ], [ %237, %240 ]
  %258 = phi i32 [ -512, %185 ], [ -512, %190 ], [ %250, %248 ], [ %254, %253 ], [ -32, %255 ], [ -77, %240 ], [ -77, %240 ], [ -77, %240 ]
  store volatile i32 0, ptr %162, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !15
  call void @remove_wait_queue(ptr noundef %163, ptr noundef nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #19
  %259 = icmp slt i32 %258, 0
  br i1 %259, label %387, label %260

260:                                              ; preds = %256
  %261 = icmp eq i32 %257, 0
  br i1 %261, label %377, label %262

262:                                              ; preds = %260, %136
  %263 = phi i32 [ %257, %260 ], [ %141, %136 ]
  %264 = call i32 @llvm.umin.i32(i32 %137, i32 %263)
  %265 = load ptr, ptr %68, align 8
  %266 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %265, i32 0, i32 1
  %267 = load volatile i32, ptr %266, align 4
  %268 = load i32, ptr %133, align 4
  %269 = urem i32 %267, %268
  %270 = sub i32 %268, %269
  %271 = call i32 @llvm.umin.i32(i32 %264, i32 %270)
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %387, label %273

273:                                              ; preds = %262
  call void @snd_pcm_stream_unlock_irq(ptr noundef %0) #19
  br i1 %30, label %285, label %274

274:                                              ; preds = %273
  %275 = load ptr, ptr %7, align 4
  %276 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %275, i32 0, i32 23
  %277 = load i32, ptr %276, align 8
  %278 = and i32 %277, 268435456
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %283, label %280

280:                                              ; preds = %274
  %281 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %275, i32 0, i32 53
  %282 = load ptr, ptr %281, align 8
  call void @snd_dma_buffer_sync(ptr noundef %282, i32 noundef 0) #19
  br label %283

283:                                              ; preds = %280, %274
  %284 = call i32 %42(ptr noundef %0, i32 noundef %269, ptr noundef %1, i32 noundef %139, i32 noundef %271, ptr noundef nonnull %56) #19, !callees !16
  br label %295

285:                                              ; preds = %273
  %286 = call i32 %42(ptr noundef %0, i32 noundef %269, ptr noundef %1, i32 noundef %139, i32 noundef %271, ptr noundef nonnull %56) #19, !callees !16
  %287 = load ptr, ptr %7, align 4
  %288 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %287, i32 0, i32 23
  %289 = load i32, ptr %288, align 8
  %290 = and i32 %289, 268435456
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %295, label %292

292:                                              ; preds = %285
  %293 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %287, i32 0, i32 53
  %294 = load ptr, ptr %293, align 8
  call void @snd_dma_buffer_sync(ptr noundef %294, i32 noundef 1) #19
  br label %295

295:                                              ; preds = %292, %285, %283
  %296 = phi i32 [ %284, %283 ], [ %286, %285 ], [ %286, %292 ]
  call void @snd_pcm_stream_lock_irq(ptr noundef %0) #19
  %297 = icmp slt i32 %296, 0
  br i1 %297, label %387, label %298

298:                                              ; preds = %295
  %299 = load ptr, ptr %23, align 4
  %300 = load i32, ptr %299, align 8
  switch i32 %300, label %391 [
    i32 2, label %301
    i32 3, label %301
    i32 6, label %301
    i32 4, label %387
    i32 7, label %390
  ]

301:                                              ; preds = %298, %298, %298
  %302 = add i32 %271, %267
  %303 = load i32, ptr %134, align 8
  %304 = icmp ult i32 %302, %303
  %305 = select i1 %304, i32 0, i32 %303
  %306 = sub i32 %302, %305
  %307 = load ptr, ptr %7, align 4
  %308 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %307, i32 0, i32 38
  %309 = load ptr, ptr %308, align 8
  %310 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %309, i32 0, i32 1
  %311 = load i32, ptr %310, align 4
  %312 = icmp eq i32 %306, %311
  br i1 %312, label %346, label %313

313:                                              ; preds = %301
  %314 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %307, i32 0, i32 33
  %315 = load i32, ptr %314, align 8
  %316 = icmp ugt i32 %315, %306
  br i1 %316, label %317, label %387

317:                                              ; preds = %313
  %318 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %307, i32 0, i32 23
  %319 = load i32, ptr %318, align 8
  %320 = and i32 %319, 536870912
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %334, label %322

322:                                              ; preds = %317
  %323 = sub i32 %306, %311
  %324 = icmp sgt i32 %323, -1
  br i1 %324, label %325, label %329

325:                                              ; preds = %322
  %326 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %307, i32 0, i32 18
  %327 = load i32, ptr %326, align 4
  %328 = icmp ugt i32 %323, %327
  br i1 %328, label %387, label %334

329:                                              ; preds = %322
  %330 = add i32 %315, %323
  %331 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %307, i32 0, i32 18
  %332 = load i32, ptr %331, align 4
  %333 = icmp ugt i32 %330, %332
  br i1 %333, label %387, label %334

334:                                              ; preds = %329, %325, %317
  store i32 %306, ptr %310, align 4
  %335 = load ptr, ptr %13, align 4
  %336 = getelementptr inbounds %struct.snd_pcm_ops, ptr %335, i32 0, i32 15
  %337 = load ptr, ptr %336, align 4
  %338 = icmp eq ptr %337, null
  br i1 %338, label %346, label %339

339:                                              ; preds = %334
  %340 = call i32 %337(ptr noundef %0) #19
  %341 = icmp slt i32 %340, 0
  br i1 %341, label %342, label %346

342:                                              ; preds = %339
  %343 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %307, i32 0, i32 38
  %344 = load ptr, ptr %343, align 8
  %345 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %344, i32 0, i32 1
  store i32 %311, ptr %345, align 4
  br label %391

346:                                              ; preds = %339, %334, %301
  %347 = add i32 %271, %139
  %348 = sub i32 %137, %271
  %349 = add i32 %271, %138
  %350 = sub i32 %263, %271
  br i1 %30, label %351, label %377

351:                                              ; preds = %346
  %352 = load ptr, ptr %23, align 4
  %353 = load i32, ptr %352, align 8
  %354 = icmp eq i32 %353, 2
  br i1 %354, label %355, label %377

355:                                              ; preds = %351
  %356 = load i32, ptr %133, align 4
  %357 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %352, i32 0, i32 3
  %358 = load i32, ptr %357, align 8
  %359 = add i32 %358, %356
  %360 = load ptr, ptr %68, align 8
  %361 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %360, i32 0, i32 1
  %362 = load i32, ptr %361, align 4
  %363 = sub i32 %359, %362
  %364 = icmp slt i32 %363, 0
  %365 = load i32, ptr %134, align 8
  %366 = icmp ult i32 %363, %365
  %367 = select i1 %366, i32 0, i32 %365
  %368 = sub i32 0, %367
  %369 = select i1 %364, i32 %365, i32 %368
  %370 = add i32 %363, %369
  %371 = sub i32 %356, %370
  %372 = load i32, ptr %135, align 8
  %373 = icmp slt i32 %371, %372
  br i1 %373, label %377, label %374

374:                                              ; preds = %355
  %375 = call i32 @snd_pcm_start(ptr noundef %0) #19
  %376 = icmp slt i32 %375, 0
  br i1 %376, label %387, label %377

377:                                              ; preds = %374, %355, %351, %346, %260
  %378 = phi i32 [ 0, %260 ], [ %350, %374 ], [ %350, %355 ], [ %350, %351 ], [ %350, %346 ]
  %379 = phi i32 [ 0, %260 ], [ %375, %374 ], [ 0, %355 ], [ 0, %351 ], [ 0, %346 ]
  %380 = phi i32 [ %139, %260 ], [ %347, %374 ], [ %347, %355 ], [ %347, %351 ], [ %347, %346 ]
  %381 = phi i32 [ %138, %260 ], [ %349, %374 ], [ %349, %355 ], [ %349, %351 ], [ %349, %346 ]
  %382 = phi i32 [ %137, %260 ], [ %348, %374 ], [ %348, %355 ], [ %348, %351 ], [ %348, %346 ]
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %395, label %136

384:                                              ; preds = %88, %66, %65, %58
  %385 = phi i32 [ %89, %88 ], [ -86, %65 ], [ -77, %66 ], [ -32, %58 ]
  %386 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 39
  store i32 0, ptr %386, align 4
  tail call void @snd_pcm_stream_unlock_irq(ptr noundef nonnull %0) #19
  br label %404

387:                                              ; preds = %374, %329, %325, %313, %298, %295, %262, %256, %150
  %388 = phi i32 [ -22, %313 ], [ -22, %325 ], [ -22, %329 ], [ -32, %298 ], [ -11, %150 ], [ %258, %256 ], [ -22, %262 ], [ %296, %295 ], [ %375, %374 ]
  %389 = phi i32 [ %138, %313 ], [ %138, %325 ], [ %138, %329 ], [ %138, %298 ], [ %138, %150 ], [ %138, %256 ], [ %138, %262 ], [ %138, %295 ], [ %349, %374 ]
  br label %391

390:                                              ; preds = %298
  br label %391

391:                                              ; preds = %390, %387, %342, %298
  %392 = phi i32 [ %340, %342 ], [ %388, %387 ], [ -86, %390 ], [ -77, %298 ]
  %393 = phi i32 [ %138, %342 ], [ %389, %387 ], [ %138, %390 ], [ %138, %298 ]
  store i32 0, ptr %74, align 4
  %394 = icmp eq i32 %393, 0
  call void @snd_pcm_stream_unlock_irq(ptr noundef %0) #19
  br i1 %394, label %404, label %402

395:                                              ; preds = %377, %148
  %396 = phi i32 [ %140, %148 ], [ %379, %377 ]
  %397 = phi i32 [ %138, %148 ], [ %381, %377 ]
  store i32 0, ptr %74, align 4
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %401, label %399

399:                                              ; preds = %395
  %400 = call i32 @snd_pcm_update_state(ptr noundef %0, ptr noundef %8)
  call void @snd_pcm_stream_unlock_irq(ptr noundef %0) #19
  br label %402

401:                                              ; preds = %395
  call void @snd_pcm_stream_unlock_irq(ptr noundef %0) #19
  br label %404

402:                                              ; preds = %399, %391
  %403 = phi i32 [ %397, %399 ], [ %393, %391 ]
  br label %404

404:                                              ; preds = %402, %401, %391, %384, %55, %44, %39, %35, %22, %18, %5
  %405 = phi i32 [ -22, %35 ], [ -22, %39 ], [ -22, %44 ], [ 0, %55 ], [ %403, %402 ], [ %396, %401 ], [ %385, %384 ], [ -6, %5 ], [ -22, %18 ], [ -77, %22 ], [ %392, %391 ]
  ret i32 %405
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @interleaved_copy(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 21
  %10 = load i32, ptr %9, align 8
  %11 = mul i32 %10, %1
  %12 = lshr i32 %11, 3
  %13 = mul i32 %10, %3
  %14 = lshr i32 %13, 3
  %15 = mul i32 %10, %4
  %16 = lshr i32 %15, 3
  %17 = getelementptr i8, ptr %2, i32 %14
  %18 = tail call i32 %5(ptr noundef %0, i32 noundef 0, i32 noundef %12, ptr noundef %17, i32 noundef %16) #19
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @noninterleaved_copy(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 15
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 22
  %12 = load i32, ptr %11, align 4
  %13 = mul i32 %12, %3
  %14 = lshr i32 %13, 3
  %15 = mul i32 %12, %4
  %16 = lshr i32 %15, 3
  %17 = mul i32 %12, %1
  %18 = lshr i32 %17, 3
  %19 = icmp sgt i32 %10, 0
  br i1 %19, label %20, label %69

20:                                               ; preds = %6
  %21 = icmp eq ptr %2, null
  %22 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %23 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 10
  %24 = and i32 %15, -8
  br label %25

25:                                               ; preds = %65, %20
  %26 = phi i32 [ 0, %20 ], [ %66, %65 ]
  %27 = phi ptr [ %2, %20 ], [ %67, %65 ]
  br i1 %21, label %31, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %27, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %59

31:                                               ; preds = %28, %25
  %32 = load ptr, ptr %7, align 4
  %33 = load i32, ptr %22, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %65

35:                                               ; preds = %31
  %36 = load ptr, ptr %23, align 4
  %37 = getelementptr inbounds %struct.snd_pcm_ops, ptr %36, i32 0, i32 10
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = tail call i32 %38(ptr noundef %0, i32 noundef %26, i32 noundef %18, i32 noundef %16) #19
  br label %62

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %32, i32 0, i32 12
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %32, i32 0, i32 50
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 %18
  %48 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %32, i32 0, i32 52
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %32, i32 0, i32 15
  %51 = load i32, ptr %50, align 8
  %52 = udiv i32 %49, %51
  %53 = mul i32 %52, %26
  %54 = getelementptr i8, ptr %47, i32 %53
  %55 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %32, i32 0, i32 22
  %56 = load i32, ptr %55, align 4
  %57 = udiv i32 %24, %56
  %58 = tail call i32 @snd_pcm_format_set_silence(i32 noundef %44, ptr noundef %54, i32 noundef %57) #19
  br label %65

59:                                               ; preds = %28
  %60 = getelementptr i8, ptr %29, i32 %14
  %61 = tail call i32 %5(ptr noundef %0, i32 noundef %26, i32 noundef %18, ptr noundef %60, i32 noundef %16) #19
  br label %62

62:                                               ; preds = %59, %40
  %63 = phi i32 [ %61, %59 ], [ %41, %40 ]
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62, %42, %31
  %66 = add nuw nsw i32 %26, 1
  %67 = getelementptr ptr, ptr %27, i32 1
  %68 = icmp eq i32 %66, %10
  br i1 %68, label %69, label %25

69:                                               ; preds = %65, %62, %6
  %70 = phi i32 [ 0, %6 ], [ 0, %65 ], [ %63, %62 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fill_silence(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.snd_pcm_ops, ptr %13, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = tail call i32 %15(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %4) #19
  br label %37

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 12
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 50
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 %2
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 52
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 15
  %28 = load i32, ptr %27, align 8
  %29 = udiv i32 %26, %28
  %30 = mul i32 %29, %1
  %31 = getelementptr i8, ptr %24, i32 %30
  %32 = shl i32 %4, 3
  %33 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 22
  %34 = load i32, ptr %33, align 4
  %35 = udiv i32 %32, %34
  %36 = tail call i32 @snd_pcm_format_set_silence(i32 noundef %21, ptr noundef %31, i32 noundef %35) #19
  br label %37

37:                                               ; preds = %19, %17, %5
  %38 = phi i32 [ %18, %17 ], [ 0, %19 ], [ 0, %5 ]
  ret i32 %38
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @default_write_copy_kernel(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) #12 {
  %6 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 50
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 %2
  %11 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 52
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 15
  %14 = load i32, ptr %13, align 8
  %15 = udiv i32 %12, %14
  %16 = mul i32 %15, %1
  %17 = getelementptr i8, ptr %10, i32 %16
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %17, ptr align 1 %3, i32 %4, i1 false)
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @default_read_copy_kernel(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) #12 {
  %6 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 50
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 %2
  %11 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 52
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 15
  %14 = load i32, ptr %13, align 8
  %15 = udiv i32 %12, %14
  %16 = mul i32 %15, %1
  %17 = getelementptr i8, ptr %10, i32 %16
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %3, ptr align 1 %17, i32 %4, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @default_write_copy(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 50
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 %2
  %11 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 52
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 15
  %14 = load i32, ptr %13, align 8
  %15 = udiv i32 %12, %14
  %16 = mul i32 %15, %1
  %17 = getelementptr i8, ptr %10, i32 %16
  %18 = icmp slt i32 %4, 0
  %19 = load i1, ptr @check_copy_size.__already_done, align 1
  %20 = xor i1 %19, true
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %23, !prof !11

22:                                               ; preds = %5
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 230, i32 noundef 9, ptr noundef null) #19
  br label %23

23:                                               ; preds = %22, %5
  br i1 %18, label %41, label %24, !prof !11

24:                                               ; preds = %23
  %25 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %4, i32 -1090519040) #21, !srcloc !17
  %26 = extractvalue { i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %35, !prof !9

28:                                               ; preds = %24
  %29 = tail call ptr @llvm.thread.pointer() #19
  %30 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 3
  %31 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %30) #23, !srcloc !18
  %32 = and i32 %31, -13
  %33 = or i32 %32, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #19, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !20
  %34 = tail call i32 @arm_copy_from_user(ptr noundef %17, ptr noundef %3, i32 noundef %4) #19
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #19, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !20
  br label %35

35:                                               ; preds = %28, %24
  %36 = phi i32 [ %34, %28 ], [ %4, %24 ]
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38, !prof !9

38:                                               ; preds = %35
  %39 = sub i32 %4, %36
  %40 = getelementptr i8, ptr %17, i32 %39
  tail call void @llvm.memset.p0.i32(ptr align 1 %40, i8 0, i32 %36, i1 false) #19
  br label %41

41:                                               ; preds = %38, %35, %23
  %42 = phi i32 [ 0, %35 ], [ -14, %23 ], [ -14, %38 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @default_read_copy(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 50
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 %2
  %11 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 52
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 15
  %14 = load i32, ptr %13, align 8
  %15 = udiv i32 %12, %14
  %16 = mul i32 %15, %1
  %17 = getelementptr i8, ptr %10, i32 %16
  %18 = icmp slt i32 %4, 0
  %19 = load i1, ptr @check_copy_size.__already_done, align 1
  %20 = xor i1 %19, true
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %23, !prof !11

22:                                               ; preds = %5
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 230, i32 noundef 9, ptr noundef null) #19
  br label %23

23:                                               ; preds = %22, %5
  br i1 %18, label %39, label %24, !prof !11

24:                                               ; preds = %23
  %25 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %4, i32 -1090519040) #21, !srcloc !21
  %26 = extractvalue { i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = tail call ptr @llvm.thread.pointer() #19
  %30 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 3
  %31 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %30) #23, !srcloc !18
  %32 = and i32 %31, -13
  %33 = or i32 %32, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #19, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !20
  %34 = tail call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef %17, i32 noundef %4) #19
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #19, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !20
  br label %35

35:                                               ; preds = %28, %24
  %36 = phi i32 [ %34, %28 ], [ %4, %24 ]
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 0, i32 -14
  br label %39

39:                                               ; preds = %35, %23
  %40 = phi i32 [ -14, %23 ], [ %38, %35 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_stream_lock_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_stream_unlock_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_add_chmap_ctls(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef writeonly %5) #0 {
  %7 = alloca %struct.snd_kcontrol_new, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #19
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %7, ptr noundef nonnull align 4 dereferenceable(48) @__const.snd_pcm_add_chmap_ctls.knew, i32 44, i1 false)
  %8 = getelementptr %struct.snd_pcm, ptr %0, i32 0, i32 8, i32 %1, i32 6
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !9

11:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2499, i32 noundef 9, ptr noundef null) #19
  br label %44

12:                                               ; preds = %6
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 28) #24
  %15 = icmp eq ptr %14, null
  br i1 %15, label %44, label %16

16:                                               ; preds = %12
  store ptr %0, ptr %14, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %14, i32 0, i32 1
  store i32 %1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %14, i32 0, i32 3
  store ptr %2, ptr %18, align 4
  %19 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %14, i32 0, i32 4
  store i32 %3, ptr %19, align 8
  %20 = icmp eq i32 %1, 0
  %21 = select i1 %20, ptr @.str.1, ptr @.str.2
  %22 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %7, i32 0, i32 3
  store ptr %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.snd_pcm, ptr %0, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %7, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  %26 = getelementptr %struct.snd_pcm, ptr %0, i32 0, i32 8, i32 %1, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %7, i32 0, i32 6
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %7, i32 0, i32 11
  store i32 %4, ptr %29, align 4
  %30 = call ptr @snd_ctl_new1(ptr noundef nonnull %7, ptr noundef nonnull %14) #19
  %31 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %14, i32 0, i32 2
  store ptr %30, ptr %31, align 8
  %32 = icmp eq ptr %30, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %16
  call void @kfree(ptr noundef nonnull %14) #19
  br label %44

34:                                               ; preds = %16
  %35 = getelementptr inbounds %struct.snd_kcontrol, ptr %30, i32 0, i32 9
  store ptr @pcm_chmap_ctl_private_free, ptr %35, align 4
  %36 = load ptr, ptr %0, align 8
  %37 = load ptr, ptr %31, align 8
  %38 = call i32 @snd_ctl_add(ptr noundef %36, ptr noundef %37) #19
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr %31, align 8
  store ptr %41, ptr %8, align 8
  %42 = icmp eq ptr %5, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  store ptr %14, ptr %5, align 4
  br label %44

44:                                               ; preds = %43, %40, %34, %33, %12, %11
  %45 = phi i32 [ -16, %11 ], [ -12, %33 ], [ -12, %12 ], [ %38, %34 ], [ 0, %43 ], [ 0, %40 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #19
  ret i32 %45
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @pcm_chmap_ctl_info(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 2, ptr %5, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %4, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 %7, ptr %8, align 8
  %9 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5
  store i32 0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 1
  store i32 36, ptr %10, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcm_chmap_ctl_get(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 1, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = sub i32 %6, %8
  %10 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %9, i32 %11) #19, !srcloc !22
  %13 = and i32 %12, %9
  %14 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %4, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %78, label %17

17:                                               ; preds = %2
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %4, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr %struct.snd_pcm, ptr %18, i32 0, i32 8, i32 %20, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %78, label %24

24:                                               ; preds = %29, %17
  %25 = phi ptr [ %31, %29 ], [ %22, %17 ]
  %26 = getelementptr inbounds %struct.snd_pcm_substream, ptr %25, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, %13
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.snd_pcm_substream, ptr %25, i32 0, i32 15
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %78, label %24

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %35 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %4, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = shl i32 %36, 2
  tail call void @llvm.memset.p0.i32(ptr align 8 %34, i8 0, i32 %37, i1 false)
  %38 = getelementptr inbounds %struct.snd_pcm_substream, ptr %25, i32 0, i32 11
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %78, label %41

41:                                               ; preds = %33
  %42 = load ptr, ptr %14, align 4
  %43 = load i8, ptr %42, align 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %78, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %39, i32 0, i32 15
  %47 = load i32, ptr %46, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %4, i32 0, i32 5
  %49 = shl nuw i32 1, %47
  br label %50

50:                                               ; preds = %74, %45
  %51 = phi i8 [ %43, %45 ], [ %76, %74 ]
  %52 = phi ptr [ %42, %45 ], [ %75, %74 ]
  %53 = zext i8 %51 to i32
  %54 = icmp eq i32 %47, %53
  br i1 %54, label %55, label %74

55:                                               ; preds = %50
  %56 = load i32, ptr %35, align 4
  %57 = icmp ult i32 %56, %47
  br i1 %57, label %74, label %58

58:                                               ; preds = %55
  %59 = load i32, ptr %48, align 4
  %60 = icmp eq i32 %59, 0
  %61 = and i32 %59, %49
  %62 = icmp ne i32 %61, 0
  %63 = select i1 %60, i1 true, i1 %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %64, %58
  %65 = phi i32 [ %70, %64 ], [ 0, %58 ]
  %66 = getelementptr %struct.snd_pcm_chmap_elem, ptr %52, i32 0, i32 1, i32 %65
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = getelementptr [128 x i32], ptr %34, i32 0, i32 %65
  store i32 %68, ptr %69, align 4
  %70 = add nuw nsw i32 %65, 1
  %71 = load i8, ptr %52, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp ult i32 %70, %72
  br i1 %73, label %64, label %78

74:                                               ; preds = %58, %55, %50
  %75 = getelementptr %struct.snd_pcm_chmap_elem, ptr %52, i32 1
  %76 = load i8, ptr %75, align 1
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %50

78:                                               ; preds = %74, %64, %41, %33, %29, %17, %2
  %79 = phi i32 [ -22, %2 ], [ 0, %33 ], [ -19, %17 ], [ -22, %41 ], [ 0, %64 ], [ -22, %74 ], [ -19, %29 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcm_chmap_ctl_tlv(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %104, label %10

10:                                               ; preds = %4
  %11 = icmp ult i32 %2, 8
  br i1 %11, label %104, label %12

12:                                               ; preds = %10
  %13 = tail call ptr @llvm.thread.pointer() #19
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #23, !srcloc !18
  %16 = and i32 %15, -13
  %17 = or i32 %16, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #19, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !20
  %18 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i32 0, i32 -1090519041) #19, !srcloc !23
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #19, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !20
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %104

20:                                               ; preds = %12
  %21 = load ptr, ptr %7, align 4
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %95, label %24

24:                                               ; preds = %20
  %25 = getelementptr i32, ptr %3, i32 2
  %26 = add i32 %2, -8
  %27 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %6, i32 0, i32 4
  %28 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %6, i32 0, i32 5
  br label %29

29:                                               ; preds = %88, %24
  %30 = phi i8 [ %22, %24 ], [ %93, %88 ]
  %31 = phi i32 [ %26, %24 ], [ %91, %88 ]
  %32 = phi ptr [ %21, %24 ], [ %92, %88 ]
  %33 = phi ptr [ %25, %24 ], [ %90, %88 ]
  %34 = phi i32 [ 0, %24 ], [ %89, %88 ]
  %35 = zext i8 %30 to i32
  %36 = shl nuw nsw i32 %35, 2
  %37 = load i32, ptr %27, align 4
  %38 = icmp ult i32 %37, %35
  br i1 %38, label %88, label %39

39:                                               ; preds = %29
  %40 = load i32, ptr %28, align 4
  %41 = icmp eq i32 %40, 0
  %42 = shl nuw i32 1, %35
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  %45 = select i1 %41, i1 true, i1 %44
  br i1 %45, label %46, label %88

46:                                               ; preds = %39
  %47 = icmp ult i32 %31, 8
  br i1 %47, label %104, label %48

48:                                               ; preds = %46
  %49 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #23, !srcloc !18
  %50 = and i32 %49, -13
  %51 = or i32 %50, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %51) #19, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !20
  %52 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %33, i32 257, i32 -1090519041) #19, !srcloc !24
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #19, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !20
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %104

54:                                               ; preds = %48
  %55 = getelementptr i32, ptr %33, i32 1
  %56 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #23, !srcloc !18
  %57 = and i32 %56, -13
  %58 = or i32 %57, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %58) #19, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !20
  %59 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %55, i32 %36, i32 -1090519041) #19, !srcloc !25
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %56) #19, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !20
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %104

61:                                               ; preds = %54
  %62 = add i32 %31, -8
  %63 = icmp ult i32 %62, %36
  br i1 %63, label %104, label %64

64:                                               ; preds = %61
  %65 = add i32 %34, 8
  %66 = getelementptr i32, ptr %33, i32 2
  %67 = sub i32 %62, %36
  %68 = add i32 %65, %36
  %69 = load i8, ptr %32, align 1
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %88, label %71

71:                                               ; preds = %82, %64
  %72 = phi ptr [ %83, %82 ], [ %66, %64 ]
  %73 = phi i32 [ %84, %82 ], [ 0, %64 ]
  %74 = getelementptr %struct.snd_pcm_chmap_elem, ptr %32, i32 0, i32 1, i32 %73
  %75 = load i8, ptr %74, align 1
  %76 = zext i8 %75 to i32
  %77 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #23, !srcloc !18
  %78 = and i32 %77, -13
  %79 = or i32 %78, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %79) #19, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !20
  %80 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %72, i32 %76, i32 -1090519041) #19, !srcloc !26
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %77) #19, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !20
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %104

82:                                               ; preds = %71
  %83 = getelementptr i32, ptr %72, i32 1
  %84 = add nuw nsw i32 %73, 1
  %85 = load i8, ptr %32, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp ult i32 %84, %86
  br i1 %87, label %71, label %88

88:                                               ; preds = %82, %64, %39, %29
  %89 = phi i32 [ %34, %39 ], [ %34, %29 ], [ %68, %64 ], [ %68, %82 ]
  %90 = phi ptr [ %33, %39 ], [ %33, %29 ], [ %66, %64 ], [ %83, %82 ]
  %91 = phi i32 [ %31, %39 ], [ %31, %29 ], [ %67, %64 ], [ %67, %82 ]
  %92 = getelementptr %struct.snd_pcm_chmap_elem, ptr %32, i32 1
  %93 = load i8, ptr %92, align 1
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %29

95:                                               ; preds = %88, %20
  %96 = phi i32 [ 0, %20 ], [ %89, %88 ]
  %97 = getelementptr i32, ptr %3, i32 1
  %98 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #23, !srcloc !18
  %99 = and i32 %98, -13
  %100 = or i32 %99, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %100) #19, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !20
  %101 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %97, i32 %96, i32 -1090519041) #19, !srcloc !27
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %98) #19, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !20
  %102 = icmp eq i32 %101, 0
  %103 = select i1 %102, i32 0, i32 -14
  br label %104

104:                                              ; preds = %95, %71, %61, %54, %48, %46, %12, %10, %4
  %105 = phi i32 [ -22, %4 ], [ -12, %10 ], [ -14, %12 ], [ %103, %95 ], [ -14, %71 ], [ -12, %46 ], [ -14, %54 ], [ -14, %48 ], [ -12, %61 ]
  ret i32 %105
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pcm_chmap_ctl_private_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %3, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.snd_pcm, ptr %4, i32 0, i32 8, i32 %6, i32 6
  store ptr null, ptr %7, align 8
  tail call void @kfree(ptr noundef %3) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dma_buffer_sync(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_raw_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #14

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @update_audio_tstamp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = alloca %struct.timespec64, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 27
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %98

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.snd_pcm_ops, ptr %13, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 57
  %19 = load i8, ptr %18, align 4
  %20 = and i8 %19, 30
  %21 = icmp eq i8 %20, 2
  br i1 %21, label %22, label %61

22:                                               ; preds = %17, %11
  %23 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 10
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 37
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %26, i32 0, i32 3
  %28 = load i32, ptr %27, align 8
  %29 = zext i32 %28 to i64
  %30 = add i64 %24, %29
  %31 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 56
  %32 = load i8, ptr %31, align 8
  %33 = and i8 %32, 16
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 9
  %40 = load i32, ptr %39, align 4
  %41 = sext i32 %40 to i64
  br i1 %38, label %42, label %44

42:                                               ; preds = %35
  %43 = sub i64 %30, %41
  br label %46

44:                                               ; preds = %35
  %45 = add i64 %30, %41
  br label %46

46:                                               ; preds = %44, %42, %22
  %47 = phi i64 [ %43, %42 ], [ %45, %44 ], [ %30, %22 ]
  %48 = mul i64 %47, 1000000000
  %49 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 14
  %50 = load i32, ptr %49, align 4
  %51 = icmp ult i64 %48, 4294967296
  br i1 %51, label %52, label %56, !prof !9

52:                                               ; preds = %46
  %53 = trunc i64 %48 to i32
  %54 = udiv i32 %53, %50
  %55 = zext i32 %54 to i64
  br label %59

56:                                               ; preds = %46
  %57 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %50, i64 %48) #21, !srcloc !10
  %58 = extractvalue { i64, i64 } %57, 1
  br label %59

59:                                               ; preds = %56, %52
  %60 = phi i64 [ %55, %52 ], [ %58, %56 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %5, i64 noundef %60) #19
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  br label %61

61:                                               ; preds = %59, %17
  %62 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 37
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %63, i32 0, i32 8
  %65 = load i64, ptr %64, align 8
  %66 = load i64, ptr %2, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %63, i32 0, i32 8, i32 1
  %70 = load i64, ptr %69, align 8
  %71 = getelementptr inbounds %struct.timespec64, ptr %2, i32 0, i32 1
  %72 = load i32, ptr %71, align 8
  %73 = sext i32 %72 to i64
  %74 = icmp eq i64 %70, %73
  br i1 %74, label %89, label %75

75:                                               ; preds = %68, %61
  store i64 %66, ptr %64, align 8
  %76 = getelementptr inbounds %struct.timespec64, ptr %2, i32 0, i32 1
  %77 = load i32, ptr %76, align 8
  %78 = sext i32 %77 to i64
  %79 = load ptr, ptr %62, align 4
  %80 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %79, i32 0, i32 8, i32 1
  store i64 %78, ptr %80, align 8
  %81 = load i64, ptr %1, align 8
  %82 = load ptr, ptr %62, align 4
  %83 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %82, i32 0, i32 5
  store i64 %81, ptr %83, align 8
  %84 = getelementptr inbounds %struct.timespec64, ptr %1, i32 0, i32 1
  %85 = load i32, ptr %84, align 8
  %86 = sext i32 %85 to i64
  %87 = load ptr, ptr %62, align 4
  %88 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %87, i32 0, i32 5, i32 1
  store i64 %86, ptr %88, align 8
  br label %89

89:                                               ; preds = %75, %68
  %90 = load ptr, ptr %6, align 4
  %91 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %90, i32 0, i32 49
  %92 = load i32, ptr %91, align 8
  switch i32 %92, label %95 [
    i32 1, label %93
    i32 2, label %94
  ]

93:                                               ; preds = %89
  call void @ktime_get_ts64(ptr noundef nonnull %4) #19
  br label %96

94:                                               ; preds = %89
  call void @ktime_get_raw_ts64(ptr noundef nonnull %4) #19
  br label %96

95:                                               ; preds = %89
  call void @ktime_get_real_ts64(ptr noundef nonnull %4) #19
  br label %96

96:                                               ; preds = %95, %94, %93
  %97 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 58
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %97, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 16, i1 false)
  br label %98

98:                                               ; preds = %96, %3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #15

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_physical_width(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_size(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_set_silence(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #17

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #15

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #15

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind willreturn }
attributes #11 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly nofree nounwind willreturn }
attributes #14 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #18 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { nounwind }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind readnone }
attributes #22 = { nounwind allocsize(1) }
attributes #23 = { nounwind readonly }
attributes #24 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148175462, i64 2148175742, i64 2148176076, i64 2148176410}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i32 0, i32 33}
!13 = !{i64 2153141410}
!14 = !{i64 2153145587}
!15 = !{i64 2153149544}
!16 = !{ptr @interleaved_copy, ptr @noninterleaved_copy}
!17 = !{i64 2150774275, i64 2150774300}
!18 = !{i64 3270387}
!19 = !{i64 3270584}
!20 = !{i64 2150755863}
!21 = !{i64 2150774853, i64 2150774878}
!22 = !{i64 589694, i64 589711, i64 2148073781}
!23 = !{i64 2153169513, i64 2153169793, i64 2153170127, i64 2153170461}
!24 = !{i64 2153177644, i64 2153177924, i64 2153178258, i64 2153178592}
!25 = !{i64 2153185791, i64 2153186071, i64 2153186405, i64 2153186739}
!26 = !{i64 2153193928, i64 2153194208, i64 2153194542, i64 2153194876}
!27 = !{i64 2153202070, i64 2153202350, i64 2153202684, i64 2153203018}
